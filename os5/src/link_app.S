
    .align 3
    .section .data
    .global _num_app
_num_app:
    .quad 21
    .quad app_0_start
    .quad app_1_start
    .quad app_2_start
    .quad app_3_start
    .quad app_4_start
    .quad app_5_start
    .quad app_6_start
    .quad app_7_start
    .quad app_8_start
    .quad app_9_start
    .quad app_10_start
    .quad app_11_start
    .quad app_12_start
    .quad app_13_start
    .quad app_14_start
    .quad app_15_start
    .quad app_16_start
    .quad app_17_start
    .quad app_18_start
    .quad app_19_start
    .quad app_20_start
    .quad app_20_end

    .global _app_names
_app_names:
    .string "ch3_taskinfo"
    .string "ch4_mmap0"
    .string "ch4_mmap1"
    .string "ch4_mmap2"
    .string "ch4_mmap3"
    .string "ch4_unmap"
    .string "ch4_unmap2"
    .string "ch5_exit0"
    .string "ch5_exit1"
    .string "ch5_getpid"
    .string "ch5_setprio"
    .string "ch5_spawn0"
    .string "ch5_spawn1"
    .string "ch5_stride"
    .string "ch5_stride0"
    .string "ch5_stride1"
    .string "ch5_stride2"
    .string "ch5_stride3"
    .string "ch5_stride4"
    .string "ch5_stride5"
    .string "ch5_usertest"

    .section .data
    .global app_0_start
    .global app_0_end
    .align 3
app_0_start:
    .incbin "../user/build/elf/ch3_taskinfo.elf"
app_0_end:

    .section .data
    .global app_1_start
    .global app_1_end
    .align 3
app_1_start:
    .incbin "../user/build/elf/ch4_mmap0.elf"
app_1_end:

    .section .data
    .global app_2_start
    .global app_2_end
    .align 3
app_2_start:
    .incbin "../user/build/elf/ch4_mmap1.elf"
app_2_end:

    .section .data
    .global app_3_start
    .global app_3_end
    .align 3
app_3_start:
    .incbin "../user/build/elf/ch4_mmap2.elf"
app_3_end:

    .section .data
    .global app_4_start
    .global app_4_end
    .align 3
app_4_start:
    .incbin "../user/build/elf/ch4_mmap3.elf"
app_4_end:

    .section .data
    .global app_5_start
    .global app_5_end
    .align 3
app_5_start:
    .incbin "../user/build/elf/ch4_unmap.elf"
app_5_end:

    .section .data
    .global app_6_start
    .global app_6_end
    .align 3
app_6_start:
    .incbin "../user/build/elf/ch4_unmap2.elf"
app_6_end:

    .section .data
    .global app_7_start
    .global app_7_end
    .align 3
app_7_start:
    .incbin "../user/build/elf/ch5_exit0.elf"
app_7_end:

    .section .data
    .global app_8_start
    .global app_8_end
    .align 3
app_8_start:
    .incbin "../user/build/elf/ch5_exit1.elf"
app_8_end:

    .section .data
    .global app_9_start
    .global app_9_end
    .align 3
app_9_start:
    .incbin "../user/build/elf/ch5_getpid.elf"
app_9_end:

    .section .data
    .global app_10_start
    .global app_10_end
    .align 3
app_10_start:
    .incbin "../user/build/elf/ch5_setprio.elf"
app_10_end:

    .section .data
    .global app_11_start
    .global app_11_end
    .align 3
app_11_start:
    .incbin "../user/build/elf/ch5_spawn0.elf"
app_11_end:

    .section .data
    .global app_12_start
    .global app_12_end
    .align 3
app_12_start:
    .incbin "../user/build/elf/ch5_spawn1.elf"
app_12_end:

    .section .data
    .global app_13_start
    .global app_13_end
    .align 3
app_13_start:
    .incbin "../user/build/elf/ch5_stride.elf"
app_13_end:

    .section .data
    .global app_14_start
    .global app_14_end
    .align 3
app_14_start:
    .incbin "../user/build/elf/ch5_stride0.elf"
app_14_end:

    .section .data
    .global app_15_start
    .global app_15_end
    .align 3
app_15_start:
    .incbin "../user/build/elf/ch5_stride1.elf"
app_15_end:

    .section .data
    .global app_16_start
    .global app_16_end
    .align 3
app_16_start:
    .incbin "../user/build/elf/ch5_stride2.elf"
app_16_end:

    .section .data
    .global app_17_start
    .global app_17_end
    .align 3
app_17_start:
    .incbin "../user/build/elf/ch5_stride3.elf"
app_17_end:

    .section .data
    .global app_18_start
    .global app_18_end
    .align 3
app_18_start:
    .incbin "../user/build/elf/ch5_stride4.elf"
app_18_end:

    .section .data
    .global app_19_start
    .global app_19_end
    .align 3
app_19_start:
    .incbin "../user/build/elf/ch5_stride5.elf"
app_19_end:

    .section .data
    .global app_20_start
    .global app_20_end
    .align 3
app_20_start:
    .incbin "../user/build/elf/ch5_usertest.elf"
app_20_end:
