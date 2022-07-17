//! Implementation of [`TaskManager`]
//!
//! It is only used to manage processes and schedule process based on ready queue.
//! Other CPU process monitoring functions are in Processor.

use super::TaskControlBlock;
use crate::sync::UPSafeCell;
use crate::{config, task};
use alloc::collections::VecDeque;
use alloc::sync::Arc;
use lazy_static::*;

pub struct TaskManager {
    ready_queue: VecDeque<Arc<TaskControlBlock>>,
}

// YOUR JOB: FIFO->Stride
/// A simple FIFO scheduler.
impl TaskManager {
    pub fn new() -> Self {
        Self {
            ready_queue: VecDeque::new(),
        }
    }
    /// Add process back to ready queue
    pub fn add(&mut self, task: Arc<TaskControlBlock>) {
        self.ready_queue.push_back(task);
    }
    /// Take a process out of the ready queue
    pub fn fetch(&mut self) -> Option<Arc<TaskControlBlock>> {
        let task_enum = self
            .ready_queue
            .range(..)
            .enumerate()
            .min_by_key(|(_, x)| x.inner_exclusive_access().stride);
        let task = task_enum.unwrap().1;
        let index = task_enum.unwrap().0;

        let pass = config::BIG_STRIDE / task.inner_exclusive_access().get_priority();
        task.inner_exclusive_access().stride += pass;

        self.ready_queue.remove(index)
    }
}

lazy_static! {
    /// TASK_MANAGER instance through lazy_static!
    pub static ref TASK_MANAGER: UPSafeCell<TaskManager> =
        unsafe { UPSafeCell::new(TaskManager::new()) };
}

pub fn add_task(task: Arc<TaskControlBlock>) {
    TASK_MANAGER.exclusive_access().add(task);
}

pub fn fetch_task() -> Option<Arc<TaskControlBlock>> {
    TASK_MANAGER.exclusive_access().fetch()
}

/// Spawn a new task
pub fn spawn(data: &[u8]) -> isize {
    let current_task = task::current_task().unwrap();
    let task = current_task.spawn(data);
    let id = task.pid.0 as isize;
    add_task(task);

    println!("[debug] Task added.");

    return id;
}
