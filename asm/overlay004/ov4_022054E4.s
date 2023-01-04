	.include "macros/function.inc"
	.include "overlay004/ov4_022054E4.inc"

	

	.text


	arm_func_start ov4_022054E4
ov4_022054E4: ; 0x022054E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldrsh r2, [r0]
	ldr r3, _022055BC ; =0x0221C748
	ldr r5, _022055C0 ; =0x00000E9F
	ldr r4, [r3, #4]
	smulbb r7, r2, r5
	ldr r2, [r3, #0x10]
	ldr r6, _022055C4 ; =0x00000D3E
	add r4, r7, r4
	mla r4, r2, r6, r4
	mov r4, r4, asr #0xc
	mul lr, r4, r4
	mov r1, r1, lsr #1
	str r4, [r3, #0x10]
	rsb r2, r7, #0
	str r2, [r3, #4]
	cmp r1, #1
	mov ip, lr, asr #0x1f
	mov r3, #1
	bls _0220557C
_02205534:
	mov r7, r3, lsl #1
	ldrsh r8, [r0, r7]
	add r7, r0, r3, lsl #1
	add r3, r3, #1
	smulbb r8, r8, r5
	add r2, r8, r2
	mla r2, r4, r6, r2
	strh r4, [r7, #-2]
	mov r4, r2, asr #0xc
	mul r2, r4, r4
	adds lr, lr, r2
	adc ip, ip, r2, asr #31
	rsb r2, r8, #0
	cmp r3, r1
	blo _02205534
	ldr r3, _022055BC ; =0x0221C748
	str r2, [r3, #4]
	str r4, [r3, #0x10]
_0220557C:
	add r0, r0, r1, lsl #1
	strh r4, [r0, #-2]
	ldr r2, _022055C8 ; =0x04000280
	mov r0, #1
	strh r0, [r2]
	str lr, [r2, #0x10]
	str ip, [r2, #0x14]
	str r1, [r2, #0x18]
	mov r0, #0
	str r0, [r2, #0x1c]
_022055A4:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _022055A4
	ldr r0, _022055CC ; =0x040002A0
	ldr r0, [r0, #0]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022055BC: .word Unk_ov4_0221C748
_022055C0: .word 0x00000E9F
_022055C4: .word 0x00000D3E
_022055C8: .word 0x04000280
_022055CC: .word 0x040002A0
	arm_func_end ov4_022054E4

	arm_func_start ov4_022055D0
ov4_022055D0: ; 0x022055D0
	stmfd sp!, {r3, lr}
	ldr r0, _02205634 ; =0x0221C748
	mov r2, #0
	ldr r1, _02205638 ; =0x0000019D
	str r2, [r0, #0xc]
	str r1, [r0, #8]
	ldr ip, _0220563C ; =0x0221A124
	ldr r0, _02205640 ; =0x0221CBCC
	mov lr, r2
_022055F4:
	mov r1, r2, lsl #1
	add r2, r2, #1
	strh lr, [r0, r1]
	cmp r2, #0x800
	blt _022055F4
	ldr r2, _02205644 ; =0x0221C774
	ldr r0, _02205648 ; =0x0221C75C
	mov r3, #0
_02205614:
	mov r1, lr, lsl #1
	ldrsh r1, [ip, r1]
	str r3, [r2, lr, lsl #2]
	str r1, [r0, lr, lsl #2]
	add lr, lr, #1
	cmp lr, #6
	blt _02205614
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02205634: .word Unk_ov4_0221C748
_02205638: .word 0x0000019D
_0220563C: .word 0x0221A124
_02205640: .word Unk_ov4_0221CBCC
_02205644: .word Unk_ov4_0221C774
_02205648: .word Unk_ov4_0221C75C
	arm_func_end ov4_022055D0

	arm_func_start ov4_0220564C
ov4_0220564C: ; 0x0220564C
	ldr ip, _0220565C ; =MIi_CpuCopyFast
	mov r2, r1
	ldr r1, _02205660 ; =0x0221C78C
	bx ip
	; .align 2, 0
_0220565C: .word MIi_CpuCopyFast
_02205660: .word Unk_ov4_0221C78C
	arm_func_end ov4_0220564C

	arm_func_start ov4_02205664
ov4_02205664: ; 0x02205664
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r4, #0
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r8, r4
	movs r2, r2, lsr #1
	beq _0220578C
	ldr lr, _02205868 ; =0x3FFF8000
	ldr ip, _0220586C ; =0x0221C748
_0220568C:
	mov r4, r8, lsl #1
	ldr r7, [ip, #0xc]
	ldrsh r6, [r1, r4]
	ldr r4, _02205870 ; =0x0221CBCC
	mov r5, r7, lsl #1
	strh r6, [r4, r5]
	ldr r4, [ip, #8]
	str r4, [sp]
	mov r5, r4, lsl #1
	ldr r4, _02205870 ; =0x0221CBCC
	ldrsh r6, [r4, r5]
	str r6, [ip, #0x2c]
	ldr sb, [ip, #0x3c]
	ldr sl, [ip, #0x24]
	ldr r5, [ip, #0x40]
	mul sl, sb, sl
	ldr r4, [ip, #0x28]
	str sb, [sp, #4]
	mla r4, r5, r4, sl
	mov r5, sb
	str r5, [ip, #0x40]
	ldr sb, [ip, #0x38]
	ldr r5, [ip, #0x20]
	mla r5, sb, r5, r4
	str sb, [ip, #0x3c]
	ldr sb, [ip, #0x34]
	ldr r4, [ip, #0x1c]
	mla r5, sb, r4, r5
	str sb, [ip, #0x38]
	ldr sb, [ip, #0x30]
	ldr r4, [ip, #0x18]
	mla r5, sb, r4, r5
	str sb, [ip, #0x34]
	ldr r4, [ip, #0x14]
	mla r4, r6, r4, r5
	cmp r4, lr
	str r6, [ip, #0x30]
	movgt r4, lr
	bgt _02205730
	cmp r4, #-0x40000000
	movlt r4, #-0x40000000
_02205730:
	add r5, r7, #1
	and r5, r5, lr, lsr #19
	str r5, [ip, #0xc]
	ldr r5, [sp]
	mov r6, r8, lsl #1
	add r5, r5, #1
	and r5, r5, lr, lsr #19
	str r5, [ip, #8]
	mov r4, r4, asr #0xf
	strh r4, [r1, r6]
	ldrsh r5, [r1, r6]
	ldrsh r4, [r0, r6]
	add r8, r8, #1
	smulbb r5, r5, r5
	strh r4, [r1, r6]
	ldr r4, [sp, #8]
	adds r4, r4, r5
	str r4, [sp, #8]
	ldr r4, [sp, #0xc]
	adc r4, r4, r5, asr #31
	str r4, [sp, #0xc]
	cmp r8, r2
	blo _0220568C
_0220578C:
	ldr r4, _02205874 ; =0x04000280
	mov r1, #1
	strh r1, [r4]
	ldr r1, [sp, #8]
	str r1, [r4, #0x10]
	ldr r1, [sp, #0xc]
	str r1, [r4, #0x14]
	str r2, [r4, #0x18]
	mov r1, #0
	str r1, [r4, #0x1c]
_022057B4:
	ldrh r1, [r4]
	tst r1, #0x8000
	bne _022057B4
	ldr r5, _02205878 ; =0x040002A0
	mov r1, #0
	ldr r4, [r5, #0]
	strh r1, [r5, #0x10]
	str r4, [r5, #0x18]
_022057D4:
	ldrh r1, [r5, #0x10]
	tst r1, #0x8000
	bne _022057D4
	ldr r1, _0220587C ; =0x040002B4
	ldr r4, [r1, #0]
	add r1, r4, r4, lsl #1
	cmp r1, r3, lsl #1
	bhs _02205808
	ldr r0, _0220586C ; =0x0221C748
	mov r1, #0
	add sp, sp, #0x10
	strh r1, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02205808:
	cmp r3, r4
	ldrlo r1, _0220586C ; =0x0221C748
	movlo r3, #4
	strloh r3, [r1]
	ldr r1, _0220586C ; =0x0221C748
	mov r5, #0
	ldrsh r3, [r1]
	cmp r3, #4
	addlt r3, r3, #1
	strlth r3, [r1]
	cmp r2, #0
	addls sp, sp, #0x10
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _0220586C ; =0x0221C748
	ldrsh r4, [r1]
_02205844:
	mov r3, r5, lsl #1
	ldrsh r1, [r0, r3]
	add r5, r5, #1
	cmp r5, r2
	mov r1, r1, asr r4
	strh r1, [r0, r3]
	blo _02205844
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02205868: .word 0x3FFF8000
_0220586C: .word Unk_ov4_0221C748
_02205870: .word Unk_ov4_0221CBCC
_02205874: .word 0x04000280
_02205878: .word 0x040002A0
_0220587C: .word 0x040002B4
	arm_func_end ov4_02205664

	arm_func_start ov4_02205880
ov4_02205880: ; 0x02205880
	stmfd sp!, {r3, lr}
	mov ip, r1
	mov r3, r2
	ldr r1, _0220589C ; =0x0221C78C
	mov r2, ip
	bl ov4_02205664
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220589C: .word Unk_ov4_0221C78C
	arm_func_end ov4_02205880

	.data


	.global Unk_ov4_0221A124
Unk_ov4_0221A124: ; 0x0221A124
	.incbin "incbin/overlay4_data.bin", 0x42A4, 0x10



	.bss


	.global Unk_ov4_0221C748
Unk_ov4_0221C748: ; 0x0221C748
	.space 0x4

	.global Unk_ov4_0221C74C
Unk_ov4_0221C74C: ; 0x0221C74C
	.space 0x4

	.global Unk_ov4_0221C750
Unk_ov4_0221C750: ; 0x0221C750
	.space 0x4

	.global Unk_ov4_0221C754
Unk_ov4_0221C754: ; 0x0221C754
	.space 0x4

	.global Unk_ov4_0221C758
Unk_ov4_0221C758: ; 0x0221C758
	.space 0x4

	.global Unk_ov4_0221C75C
Unk_ov4_0221C75C: ; 0x0221C75C
	.space 0x18

	.global Unk_ov4_0221C774
Unk_ov4_0221C774: ; 0x0221C774
	.space 0x18

	.global Unk_ov4_0221C78C
Unk_ov4_0221C78C: ; 0x0221C78C
	.space 0x440

	.global Unk_ov4_0221CBCC
Unk_ov4_0221CBCC: ; 0x0221CBCC
	.space 0x1000

