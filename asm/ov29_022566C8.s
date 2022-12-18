	.include "macros/function.inc"
	.include "include/ov29_022566C8.inc"

	

	.text


	thumb_func_start ov29_022566C8
ov29_022566C8: ; 0x022566C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x74
	bl sub_02018144
	add r4, r0, #0
	beq _02256722
	mov r0, #7
	bl sub_0201833C
	cmp r0, #0
	bne _022566E8
	bl sub_02022974
_022566E8:
	add r0, r4, #0
	add r0, #8
	mov r1, #0x10
	bl ov25_02255090
	mov r0, #7
	bl sub_0201833C
	cmp r0, #0
	bne _02256700
	bl sub_02022974
_02256700:
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x50]
	mov r0, #7
	bl sub_0201833C
	cmp r0, #0
	bne _0225671C
	bl sub_02022974
_0225671C:
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256722:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov29_022566C8

	thumb_func_start ov29_02256728
ov29_02256728: ; 0x02256728
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #0x70]
	add r1, r0, #0
	beq _02256764
	ldr r0, [r4, #4]
	ldr r2, _02256768 ; =0x02256B50
	bl sub_0201A8D4
	mov r2, #0xbe
	ldr r1, [r4, #0]
	ldr r0, _0225676C ; =0x000016E8
	lsl r2, r2, #6
	ldr r0, [r1, r0]
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #0xc]
	bl sub_02099DD0
	cmp r0, #0
	bne _02256760
	ldr r0, [r4, #0x70]
	mov r1, #4
	bl sub_0201ADA4
_02256760:
	mov r0, #1
	pop {r4, pc}
_02256764:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02256768: .word 0x02256B50
_0225676C: .word 0x000016E8
	thumb_func_end ov29_02256728

	thumb_func_start ov29_02256770
ov29_02256770: ; 0x02256770
	push {r4, lr}
	add r4, r0, #0
	beq _022567AC
	mov r0, #7
	bl sub_0201833C
	cmp r0, #0
	bne _02256784
	bl sub_02022974
_02256784:
	ldr r2, [r4, #0x70]
	cmp r2, #0
	beq _022567A6
	ldr r1, [r4, #0]
	ldr r0, _022567B0 ; =0x000016E8
	ldr r0, [r1, r0]
	ldr r1, [r2, #0xc]
	mov r2, #0xbe
	lsl r2, r2, #6
	bl sub_02099DA8
	ldr r0, [r4, #0x70]
	bl sub_0201A8FC
	ldr r0, [r4, #0x70]
	bl sub_020181C4
_022567A6:
	add r0, r4, #0
	bl sub_020181C4
_022567AC:
	pop {r4, pc}
	nop
_022567B0: .word 0x000016E8
	thumb_func_end ov29_02256770

	thumb_func_start ov29_022567B4
ov29_022567B4: ; 0x022567B4
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022567D4 ; =0x02256BB0
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022567D4: .word 0x02256BB0
	thumb_func_end ov29_022567B4

	thumb_func_start ov29_022567D8
ov29_022567D8: ; 0x022567D8
	ldr r3, _022567E0 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022567E0: .word ov25_02255130
	thumb_func_end ov29_022567D8

	thumb_func_start ov29_022567E4
ov29_022567E4: ; 0x022567E4
	ldr r3, _022567EC ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022567EC: .word ov25_02255154
	thumb_func_end ov29_022567E4

	thumb_func_start ov29_022567F0
ov29_022567F0: ; 0x022567F0
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov29_022567F0

	thumb_func_start ov29_02256804
ov29_02256804: ; 0x02256804
	push {r4, r5, lr}
	sub sp, #0x14
	mov r0, #8
	add r4, r1, #0
	bl sub_0201833C
	cmp r0, #0
	bne _02256818
	bl sub_02022974
_02256818:
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022568F8 ; =0x02256B58
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	ldr r2, _022568FC ; =0x02256B74
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _02256846
	bl sub_02022974
_02256846:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x1e
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x1f
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _02256890
	bl sub_02022974
_02256890:
	add r0, r5, #0
	bl ov29_02256728
	ldr r0, [r5, #0x70]
	bl sub_0201A954
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _022568AA
	bl sub_02022974
_022568AA:
	add r0, r5, #0
	bl ov29_02256ABC
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _022568BE
	bl sub_02022974
_022568BE:
	ldr r0, [r5, #4]
	mov r1, #7
	bl sub_02019448
	ldr r1, _02256900 ; =0x04001000
	ldr r0, _02256904 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #0x14
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov29_022567F0
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _022568F4
	bl sub_02022974
_022568F4:
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_022568F8: .word 0x02256B58
_022568FC: .word 0x02256B74
_02256900: .word 0x04001000
_02256904: .word 0xFFFFE0FF
	thumb_func_end ov29_02256804

	thumb_func_start ov29_02256908
ov29_02256908: ; 0x02256908
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #1
	ldr r0, [r4, #0x68]
	bne _0225692E
	mov r1, #0
	bl ov25_022558C4
	ldr r0, [r4, #0x6c]
	mov r1, #3
	bl ov25_022558C4
	b _0225693C
_0225692E:
	mov r1, #1
	bl ov25_022558C4
	ldr r0, [r4, #0x6c]
	mov r1, #2
	bl ov25_022558C4
_0225693C:
	ldr r0, _0225694C ; =0x00000663
	bl ov25_02254424
	add r0, r5, #0
	bl ov29_022567F0
	pop {r3, r4, r5, pc}
	nop
_0225694C: .word 0x00000663
	thumb_func_end ov29_02256908

	thumb_func_start ov29_02256950
ov29_02256950: ; 0x02256950
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #0x70]
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov29_022567F0
	pop {r4, pc}
	thumb_func_end ov29_02256950

	thumb_func_start ov29_02256968
ov29_02256968: ; 0x02256968
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r4, r0, #3
	sub r0, r3, #1
	add r1, r1, r0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r3, r1, #3
	ldr r1, [sp, #0x18]
	asr r0, r0, #3
	sub r1, r1, #1
	add r2, r2, r1
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	sub r1, r1, r3
	mov r2, #0x14
	sub r0, r0, r4
	mul r2, r3
	add r1, r1, #1
	add r4, r4, r2
	sub r2, r1, #1
	add r0, r0, #1
	str r2, [sp]
	cmp r1, #0
	beq _022569DA
	lsl r5, r4, #5
	lsl r7, r0, #5
_022569B0:
	add r0, r6, r5
	add r1, r7, #0
	bl sub_020C2C54
	add r1, r4, #0
	add r1, #0xc
	add r0, r6, r5
	lsl r1, r1, #5
	add r2, r7, #0
	bl sub_020C090C
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r1, [sp]
	add r5, r5, r0
	add r0, r1, #0
	sub r0, r0, #1
	add r4, #0x14
	str r0, [sp]
	cmp r1, #0
	bne _022569B0
_022569DA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov29_02256968

	thumb_func_start ov29_022569DC
ov29_022569DC: ; 0x022569DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r0, r1, #0
	str r1, [sp, #8]
	bl ov25_0225523C
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _02256A44
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	lsl r1, r1, #1
	mov r5, #8
	lsl r0, r0, #1
	sub r6, r1, #4
	sub r4, r0, #4
	str r5, [sp, #0xc]
	cmp r6, #0
	bge _02256A0C
	add r0, r5, r6
	str r0, [sp, #0xc]
	mov r6, #0
_02256A0C:
	cmp r4, #0
	bge _02256A14
	add r5, r5, r4
	mov r4, #0
_02256A14:
	ldr r0, [sp, #0xc]
	lsl r2, r6, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r3, r4, #0x10
	ldr r0, [r7, #0x70]
	mov r1, #4
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	str r5, [sp]
	ldr r0, [r7, #0x70]
	ldr r3, [sp, #0xc]
	ldr r0, [r0, #0xc]
	add r1, r6, #0
	add r2, r4, #0
	bl ov29_02256968
	b _02256A72
_02256A44:
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	lsl r5, r1, #1
	lsl r4, r0, #1
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r5, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r7, #0x70]
	mov r1, #1
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	mov r3, #2
	str r3, [sp]
	ldr r0, [r7, #0x70]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	bl ov29_02256968
_02256A72:
	ldr r0, [sp, #8]
	bl ov29_022567F0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov29_022569DC

	thumb_func_start ov29_02256A7C
ov29_02256A7C: ; 0x02256A7C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #0x70]
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov29_022567F0
	pop {r4, pc}
	thumb_func_end ov29_02256A7C

	thumb_func_start ov29_02256A94
ov29_02256A94: ; 0x02256A94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	bl ov29_02256B18
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019044
	add r0, r5, #0
	bl ov29_022567F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov29_02256A94

	thumb_func_start ov29_02256ABC
ov29_02256ABC: ; 0x02256ABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r7, r0, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x20
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x54
	mov r1, #0xc
	mov r2, #0x21
	mov r3, #0x22
	bl ov25_02255958
	cmp r0, #0
	beq _02256B10
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x54
	ldr r4, _02256B14 ; =0x02256B90
	mov r6, #0
	add r5, r7, #0
	str r0, [sp, #0xc]
_02256AFA:
	ldr r0, [r7, #0x50]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl ov25_02255810
	str r0, [r5, #0x68]
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #2
	blt _02256AFA
_02256B10:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256B14: .word 0x02256B90
	thumb_func_end ov29_02256ABC

	thumb_func_start ov29_02256B18
ov29_02256B18: ; 0x02256B18
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02256B20:
	ldr r0, [r6, #0x50]
	ldr r1, [r5, #0x68]
	bl ov25_022558B0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blo _02256B20
	add r6, #0x54
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov29_02256B18

	.rodata


	.global Unk_ov29_02256B50
Unk_ov29_02256B50: ; 0x02256B50
	.incbin "incbin/overlay29_rodata.bin", 0x14, 0x1C - 0x14

	.global Unk_ov29_02256B58
Unk_ov29_02256B58: ; 0x02256B58
	.incbin "incbin/overlay29_rodata.bin", 0x1C, 0x38 - 0x1C

	.global Unk_ov29_02256B74
Unk_ov29_02256B74: ; 0x02256B74
	.incbin "incbin/overlay29_rodata.bin", 0x38, 0x54 - 0x38

	.global Unk_ov29_02256B90
Unk_ov29_02256B90: ; 0x02256B90
	.incbin "incbin/overlay29_rodata.bin", 0x54, 0x74 - 0x54

	.global Unk_ov29_02256BB0
Unk_ov29_02256BB0: ; 0x02256BB0
	.incbin "incbin/overlay29_rodata.bin", 0x74, 0x54

