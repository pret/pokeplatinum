	.include "macros/function.inc"
	.include "include/ov12_02225640.inc"

	

	.text


	thumb_func_start ov12_02225640
ov12_02225640: ; 0x02225640
	ldr r3, _02225648 ; =ov12_0222325C
	ldr r0, [r0, #0]
	mov r2, #4
	bx r3
	; .align 2, 0
_02225648: .word ov12_0222325C
	thumb_func_end ov12_02225640

	thumb_func_start ov12_0222564C
ov12_0222564C: ; 0x0222564C
	push {r3, lr}
	sub sp, #8
	add r2, sp, #0
	mov r0, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	ldr r0, [r1, #4]
	bl sub_02014784
	add r1, r0, #0
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov12_0222564C

	thumb_func_start ov12_02225670
ov12_02225670: ; 0x02225670
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _022256A8 ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1, #0x20]
	strh r2, [r0]
	ldrh r2, [r1, #0x22]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022256A8: .word 0x02239DE0
	thumb_func_end ov12_02225670

	thumb_func_start ov12_022256AC
ov12_022256AC: ; 0x022256AC
	push {r4, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	add r0, r4, #0
	add r1, sp, #8
	bl ov12_02225640
	ldr r1, [sp, #0xc]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [sp, #0x10]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x14]
	strh r1, [r0, #4]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r1, r0, #0
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov12_022256AC

	thumb_func_start ov12_022256E8
ov12_022256E8: ; 0x022256E8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _02225720 ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1, #0x18]
	strh r2, [r0]
	ldrh r2, [r1, #0x1a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02225720: .word 0x02239DE0
	thumb_func_end ov12_022256E8

	thumb_func_start ov12_02225724
ov12_02225724: ; 0x02225724
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _02225780 ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1, #0x10]
	strh r2, [r0, #8]
	ldrh r2, [r1, #0x12]
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #0x14]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #0x16]
	strh r2, [r0, #0xe]
	ldrh r2, [r1, #0x28]
	strh r2, [r0]
	ldrh r2, [r1, #0x2a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x2c]
	strh r2, [r0, #4]
	ldrh r1, [r1, #0x2e]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	ldr r0, [r4, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02225772
	add r0, sp, #8
	add r1, r5, #0
	bl sub_020209D4
	b _0222577A
_02225772:
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
_0222577A:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02225780: .word 0x02239DE0
	thumb_func_end ov12_02225724

	thumb_func_start ov12_02225784
ov12_02225784: ; 0x02225784
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _022257BC ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022257BC: .word 0x02239DE0
	thumb_func_end ov12_02225784

	thumb_func_start ov12_022257C0
ov12_022257C0: ; 0x022257C0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _022257F8 ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1, #8]
	strh r2, [r0]
	ldrh r2, [r1, #0xa]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022257F8: .word 0x02239DE0
	thumb_func_end ov12_022257C0

	thumb_func_start ov12_022257FC
ov12_022257FC: ; 0x022257FC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_02014784
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x24]
	add r2, sp, #0
	bl ov12_022356E8
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02020ACC
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022257FC

	thumb_func_start ov12_02225824
ov12_02225824: ; 0x02225824
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_02014784
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x28]
	add r2, sp, #0
	bl ov12_022356E8
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02020ACC
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225824

	thumb_func_start ov12_0222584C
ov12_0222584C: ; 0x0222584C
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _02225860 ; =0x02239E10
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_02225860: .word 0x02239E10
	thumb_func_end ov12_0222584C

	.rodata


	.global Unk_ov12_02239DE0
Unk_ov12_02239DE0: ; 0x02239DE0
	.incbin "incbin/overlay12_rodata.bin", 0x184C, 0x1854 - 0x184C

	.global Unk_ov12_02239DE8
Unk_ov12_02239DE8: ; 0x02239DE8
	.incbin "incbin/overlay12_rodata.bin", 0x1854, 0x185C - 0x1854

	.global Unk_ov12_02239DF0
Unk_ov12_02239DF0: ; 0x02239DF0
	.incbin "incbin/overlay12_rodata.bin", 0x185C, 0x1864 - 0x185C

	.global Unk_ov12_02239DF8
Unk_ov12_02239DF8: ; 0x02239DF8
	.incbin "incbin/overlay12_rodata.bin", 0x1864, 0x186C - 0x1864

	.global Unk_ov12_02239E00
Unk_ov12_02239E00: ; 0x02239E00
	.incbin "incbin/overlay12_rodata.bin", 0x186C, 0x1874 - 0x186C

	.global Unk_ov12_02239E08
Unk_ov12_02239E08: ; 0x02239E08
	.incbin "incbin/overlay12_rodata.bin", 0x1874, 0x187C - 0x1874

	.global Unk_ov12_02239E10
Unk_ov12_02239E10: ; 0x02239E10
	.incbin "incbin/overlay12_rodata.bin", 0x187C, 0x24

