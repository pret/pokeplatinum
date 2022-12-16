	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F8370
ov5_021F8370: ; 0x021F8370
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #0xa
	bl sub_02027F6C
	mov r1, #0x47
	add r4, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x47
	add r6, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	str r5, [r6, #0]
	str r4, [r6, #4]
	ldr r0, [r5, #4]
	mov r4, #0
	str r6, [r0, #0x24]
_021F83A4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021F8508
	cmp r0, #1
	bne _021F83B8
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021F8480
_021F83B8:
	add r4, r4, #1
	cmp r4, #0x14
	blt _021F83A4
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F8370

	thumb_func_start ov5_021F83C0
ov5_021F83C0: ; 0x021F83C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov5_021F83C0

	thumb_func_start ov5_021F83D4
ov5_021F83D4: ; 0x021F83D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	ldr r5, _021F840C ; =0x0220192C
	add r7, r1, #0
	str r2, [sp]
	str r0, [sp, #0x18]
	mov r4, #0
_021F83E4:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl ov5_021F851C
	cmp r0, #1
	bne _021F83FC
	ldr r1, [sp, #0x18]
	mov r0, #1
	str r0, [r1, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021F83FC:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0x17
	blt _021F83E4
	ldr r1, [sp, #0x18]
	mov r0, #0
	str r0, [r1, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F840C: .word 0x0220192C
	thumb_func_end ov5_021F83D4

	thumb_func_start ov5_021F8410
ov5_021F8410: ; 0x021F8410
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r3, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #0xa
	bne _021F846C
	ldr r5, _021F8474 ; =0x0220192C
	mov r4, #0
_021F8430:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	add r3, r6, #0
	bl ov5_021F851C
	cmp r0, #1
	bne _021F8464
	ldrh r0, [r5]
	lsl r1, r0, #2
	ldr r0, _021F8478 ; =0x022018DC
	ldr r1, [r0, r1]
	ldr r0, _021F847C ; =0x00002774
	cmp r1, r0
	bne _021F8452
	cmp r7, #0
	bne _021F8464
_021F8452:
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203E880
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F8464:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0x17
	blt _021F8430
_021F846C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8474: .word 0x0220192C
_021F8478: .word 0x022018DC
_021F847C: .word 0x00002774
	thumb_func_end ov5_021F8410

	thumb_func_start ov5_021F8480
ov5_021F8480: ; 0x021F8480
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0
	add r0, sp, #0x14
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, _021F8500 ; =0x0220188C
	ldr r6, _021F8504 ; =0x0220192C
	ldr r7, [r0, r1]
	ldr r0, [sp, #8]
	ldr r5, [r0, #0]
	add r0, #8
	str r0, [sp, #8]
_021F84A6:
	ldrh r1, [r6]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _021F84F0
	ldr r4, [sp, #8]
	mov r1, #0
_021F84B2:
	ldrh r0, [r4]
	cmp r0, #0
	bne _021F84E8
	mov r0, #1
	strh r0, [r4]
	str r7, [r4, #4]
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [r5, #0x50]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x30]
	add r3, r6, #4
	bl ov5_021E19CC
	strh r0, [r4, #2]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl ov5_021E18CC
	str r0, [r4, #8]
	b _021F84F0
_021F84E8:
	add r1, r1, #1
	add r4, #0xc
	cmp r1, #0x17
	blt _021F84B2
_021F84F0:
	ldr r0, [sp, #0x10]
	add r6, #0x18
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x17
	blt _021F84A6
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F8500: .word 0x0220188C
_021F8504: .word 0x0220192C
	thumb_func_end ov5_021F8480

	thumb_func_start ov5_021F8508
ov5_021F8508: ; 0x021F8508
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #2
	add r2, r4, #0
	bl sub_0206AF6C
	pop {r4, pc}
	thumb_func_end ov5_021F8508

	thumb_func_start ov5_021F851C
ov5_021F851C: ; 0x021F851C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r2, #2]
	add r4, r2, #0
	add r6, r1, #0
	add r4, #0x10
	cmp r0, #1
	bne _021F855C
	ldrh r1, [r2]
	add r0, r3, #0
	bl ov5_021F8508
	cmp r0, #1
	bne _021F855C
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r6, r0
	blt _021F855C
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r6, r0
	bgt _021F855C
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r5, r0
	blt _021F855C
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r5, r0
	bgt _021F855C
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F855C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F851C

	.rodata


	.global Unk_ov5_0220188C
Unk_ov5_0220188C: ; 0x0220188C
	.incbin "incbin/overlay5_rodata.bin", 0x8F78, 0x8FC8 - 0x8F78

	.global Unk_ov5_022018DC
Unk_ov5_022018DC: ; 0x022018DC
	.incbin "incbin/overlay5_rodata.bin", 0x8FC8, 0x9018 - 0x8FC8

	.global Unk_ov5_0220192C
Unk_ov5_0220192C: ; 0x0220192C
	.incbin "incbin/overlay5_rodata.bin", 0x9018, 0x228

