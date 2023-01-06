	.include "macros/function.inc"
	.include "include/vad.inc"

	

	.text


	arm_func_start ov4_02205270
ov4_02205270: ; 0x02205270
	ldr r0, _022052B0 ; =0x0221C738
	mov r2, #0
	mov r1, #0x1000000
_0220527C:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #4
	blt _0220527C
	ldr r1, _022052B4 ; =0x0221C72C
	mov r2, #0
	str r2, [r1, #4]
	ldr r0, _022052B8 ; =0x0221A114
	str r2, [r1, #0]
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r1, #8]
	bx lr
	; .align 2, 0
_022052B0: .word Unk_ov4_0221C738
_022052B4: .word Unk_ov4_0221C72C
_022052B8: .word Unk_ov4_0221A114
	arm_func_end ov4_02205270

	arm_func_start VCT_GetVADInfo
VCT_GetVADInfo: ; 0x022052BC
	stmfd sp!, {r3, lr}
	movs r1, r0
	ldmeqia sp!, {r3, pc}
	ldr r0, _022052D8 ; =0x0221A114
	mov r2, #0x10
	bl MI_CpuCopy8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022052D8: .word Unk_ov4_0221A114
	arm_func_end VCT_GetVADInfo

	arm_func_start ov4_022052DC
ov4_022052DC: ; 0x022052DC
	stmfd sp!, {r4, lr}
	ldr r3, _022054A8 ; =0x0221A114
	mov ip, r1, lsr #8
	str ip, [r3, #4]
	cmp r2, #0
	strneb ip, [r2]
	ldr r2, _022054A8 ; =0x0221A114
	ldr r2, [r2, #0]
	cmp r2, #0
	bne _022053F0
	mov ip, #0
	ldr r3, _022054AC ; =0x0221C738
	mov lr, ip
_02205310:
	ldr r2, [r3, lr, lsl #2]
	add lr, lr, #1
	cmp lr, #4
	add ip, ip, r2
	blt _02205310
	ldr r3, _022054B0 ; =0x040002B0
	mov r2, #0
	strh r2, [r3]
	mov r2, ip, lsr #2
	str r2, [r3, #8]
_02205338:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _02205338
	ldr r2, _022054B4 ; =0x040002B4
	cmp r1, #0
	ldr r2, [r2, #0]
	beq _022053CC
	cmp r1, r2, lsl #1
	blo _022053CC
	mov r3, #0
	ldr r2, _022054AC ; =0x0221C738
	mov ip, r3
_02205368:
	ldr r1, [r2, ip, lsl #2]
	add ip, ip, #1
	cmp ip, #4
	add r3, r3, r1
	blo _02205368
	ldr r2, _022054B0 ; =0x040002B0
	mov r1, #0
	strh r1, [r2]
	mov r1, r3, lsr #2
	str r1, [r2, #8]
_02205390:
	ldrh r1, [r2]
	tst r1, #0x8000
	bne _02205390
	ldr r1, _022054B4 ; =0x040002B4
	ldr r2, _022054B8 ; =0x0221C72C
	ldr r1, [r1, #0]
	mov r3, #0
	add r1, r1, r1, lsl #1
	mov r1, r1, lsr #1
	str r1, [r2, #0]
	ldr r1, _022054A8 ; =0x0221A114
	str r3, [r2, #4]
	mov lr, #1
	str lr, [r1]
	b _022053D0
_022053CC:
	mov lr, #0
_022053D0:
	ldr r1, _022054B8 ; =0x0221C72C
	ldr r3, _022054AC ; =0x0221C738
	ldr ip, [r1, #4]
	add r2, ip, #1
	and r2, r2, #3
	str r0, [r3, ip, lsl #2]
	str r2, [r1, #4]
	b _022054A0
_022053F0:
	ldr r1, _022054B8 ; =0x0221C72C
	mov lr, #0
	ldr ip, [r1, #4]
	ldr r3, _022054AC ; =0x0221C738
	add r2, ip, #1
	and r2, r2, #3
	mov r4, lr
	str r0, [r3, ip, lsl #2]
	str r2, [r1, #4]
_02205414:
	ldr r0, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r4, #4
	add lr, lr, r0
	blt _02205414
	ldr r1, _022054B0 ; =0x040002B0
	mov r0, #0
	strh r0, [r1]
	mov r0, lr, lsr #2
	str r0, [r1, #8]
_0220543C:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _0220543C
	ldr r0, _022054B4 ; =0x040002B4
	ldr r1, _022054B8 ; =0x0221C72C
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	bhi _02205494
	ldr r2, [r1, #8]
	ldr r0, _022054A8 ; =0x0221A114
	add r3, r2, #1
	str r3, [r1, #8]
	ldr r2, [r0, #8]
	cmp r3, r2
	ble _0220549C
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r1, #8]
	str r2, [r1, #4]
	mov r0, #3
	ldmia sp!, {r4, pc}
_02205494:
	mov r0, #0
	str r0, [r1, #8]
_0220549C:
	mov lr, #2
_022054A0:
	mov r0, lr
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022054A8: .word Unk_ov4_0221A114
_022054AC: .word Unk_ov4_0221C738
_022054B0: .word 0x040002B0
_022054B4: .word 0x040002B4
_022054B8: .word Unk_ov4_0221C72C
	arm_func_end ov4_022052DC

	arm_func_start ov4_022054BC
ov4_022054BC: ; 0x022054BC
	mov r2, #0xf
	ldr r1, _022054DC ; =0x0221A114
	mov r0, #0x44
	smulbb r0, r2, r0
	str r2, [r1, #8]
	ldr ip, _022054E0 ; =ov4_02205270
	str r0, [r1, #0xc]
	bx ip
	; .align 2, 0
_022054DC: .word Unk_ov4_0221A114
_022054E0: .word ov4_02205270
	arm_func_end ov4_022054BC

	.data


	.global Unk_ov4_0221A114
Unk_ov4_0221A114: ; 0x0221A114
	.incbin "incbin/overlay4_data.bin", 0x4294, 0x10



	.bss


	.global Unk_ov4_0221C72C
Unk_ov4_0221C72C: ; 0x0221C72C
	.space 0x4

	.global Unk_ov4_0221C730
Unk_ov4_0221C730: ; 0x0221C730
	.space 0x4

	.global Unk_ov4_0221C734
Unk_ov4_0221C734: ; 0x0221C734
	.space 0x4

	.global Unk_ov4_0221C738
Unk_ov4_0221C738: ; 0x0221C738
	.space 0x10

