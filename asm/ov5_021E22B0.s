	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021E22B0
ov5_021E22B0: ; 0x021E22B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	bl sub_020BEC9C
	mov r0, #4
	add r1, r0, #0
	bl sub_02018144
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	mov r2, #4
	bl sub_020C4B4C
	ldr r6, _021E230C ; =0x021F9CE0
	add r3, sp, #0
	mov r2, #5
_021E22EE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E22EE
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r0, sp, #0
	str r5, [sp, #0x20]
	str r4, [sp, #0x24]
	bl ov5_021E2098
	str r0, [r7, #0]
	add r0, r7, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E230C: .word 0x021F9CE0
	thumb_func_end ov5_021E22B0

	thumb_func_start ov5_021E2310
ov5_021E2310: ; 0x021E2310
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r0, [r4, #0]
	mov r2, #0
	add r3, r1, #0
	bl ov5_021E20E8
	mov r0, #4
	bl sub_020BE004
	mov r0, #0xe
	mov r1, #1
	bl sub_0201FF0C
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	pop {r4, pc}
	thumb_func_end ov5_021E2310

	.rodata


	.global Unk_ov5_021F9CE0
Unk_ov5_021F9CE0: ; 0x021F9CE0
	.incbin "incbin/overlay5_rodata.bin", 0x13CC, 0x2C

