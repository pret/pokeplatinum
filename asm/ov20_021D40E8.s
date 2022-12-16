	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov20_021D40E8
ov20_021D40E8: ; 0x021D40E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x23
	mov r1, #0x94
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	add r0, r5, #0
	bl ov20_021D2E04
	str r0, [r4, #0xc]
	mov r0, #0x20
	mov r1, #0x23
	bl sub_02023790
	str r0, [r4, #0x3c]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x10
	mov r2, #2
	mov r3, #4
	bl sub_0201A7E8
	mov r3, #0
	str r3, [sp]
	mov r1, #0xc
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x20
	mov r2, #2
	bl sub_0201A7E8
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov20_021D40E8

	thumb_func_start ov20_021D4164
ov20_021D4164: ; 0x021D4164
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D4172
	bl sub_02021BD4
_021D4172:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D417C
	bl sub_02021BD4
_021D417C:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021D4186
	bl sub_02021BD4
_021D4186:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021D4190
	bl sub_020237BC
_021D4190:
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A8FC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov20_021D4164

	thumb_func_start ov20_021D41A8
ov20_021D41A8: ; 0x021D41A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov20_021D2E04
	add r4, r0, #0
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x23
	bl sub_02019690
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019CB8
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A9F4
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201ACCC
	add r0, r4, #0
	mov r1, #2
	bl sub_02019448
	add r0, r5, #0
	bl ov20_021D4210
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D41A8

	thumb_func_start ov20_021D4210
ov20_021D4210: ; 0x021D4210
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r1, sp, #8
	mov r2, #0
	mov r3, #2
	bl ov20_021D2E0C
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #8
	mov r2, #0x48
	mov r3, #0x38
	bl ov20_021D2E50
	str r0, [r4, #0x30]
	mov r1, #8
	bl sub_02021D6C
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #8
	mov r2, #0xf0
	mov r3, #0x40
	bl ov20_021D2E50
	str r0, [r4, #0x34]
	mov r1, #0xb
	bl sub_02021D6C
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #8
	mov r2, #0xf0
	mov r3, #0x90
	bl ov20_021D2E50
	str r0, [r4, #0x38]
	mov r1, #0xa
	bl sub_02021D6C
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x2c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4210

	thumb_func_start ov20_021D4294
ov20_021D4294: ; 0x021D4294
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	bl ov20_021D4638
	ldr r0, [r6, #4]
	bl ov20_021D1FE4
	add r7, r0, #0
	cmp r7, #0xa
	bls _021D42B4
	mov r7, #0xa
_021D42B4:
	add r0, r6, #0
	add r0, #0x8c
	mov r5, #0
	ldr r4, [r0, #0]
	cmp r7, #0
	bls _021D42D8
_021D42C0:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov20_021D4658
	mov r0, #1
	tst r0, r5
	beq _021D42D2
	add r4, #0x18
_021D42D2:
	add r5, r5, #1
	cmp r5, r7
	blo _021D42C0
_021D42D8:
	add r6, #0x10
	add r0, r6, #0
	bl sub_0201ACCC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4294

	thumb_func_start ov20_021D42E4
ov20_021D42E4: ; 0x021D42E4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D437C ; =0x04000050
	mov r1, #4
	mov r2, #0x3f
	mov r3, #0
	bl sub_020BF55C
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldr r1, _021D4380 ; =0x04000048
	ldr r0, _021D4384 ; =0xFFFFC0FF
	ldrh r2, [r1]
	mov r5, #0xff
	and r2, r0
	mov r0, #0x1f
	lsl r0, r0, #8
	orr r2, r0
	lsr r0, r1, #0xd
	orr r0, r2
	strh r0, [r1]
	add r0, r4, #0
	ldrb r2, [r1, #2]
	add r0, #0x84
	strb r2, [r0]
	add r0, r1, #0
	sub r0, #0x48
	mov r2, #0xe
	ldr r3, [r0, #0]
	lsl r2, r2, #0xc
	and r2, r3
	lsr r3, r2, #0xd
	add r2, r4, #0
	add r2, #0x88
	str r3, [r2, #0]
	ldrh r3, [r1, #2]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x1b
	orr r3, r2
	mov r2, #0x20
	orr r3, r2
	strh r3, [r1, #2]
	sub r3, r1, #6
	strh r5, [r3]
	ldr r3, _021D4388 ; =0x00002EB0
	sub r1, r1, #2
	strh r3, [r1]
	ldr r3, [r0, #0]
	ldr r1, _021D438C ; =0xFFFF1FFF
	and r3, r1
	lsl r1, r2, #9
	orr r1, r3
	str r1, [r0, #0]
	add r0, r4, #0
	mov r3, #0
	add r0, #0x80
	str r3, [r0, #0]
	mov r0, #0x7c
	str r0, [sp]
	mov r0, #0xc
	add r4, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x3f
	bl ov20_021D4F1C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D437C: .word 0x04000050
_021D4380: .word 0x04000048
_021D4384: .word 0xFFFFC0FF
_021D4388: .word 0x00002EB0
_021D438C: .word 0xFFFF1FFF
	thumb_func_end ov20_021D42E4

	thumb_func_start ov20_021D4390
ov20_021D4390: ; 0x021D4390
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _021D43AE
	add r0, #0x40
	bl ov20_021D4F4C
	cmp r0, #0
	beq _021D43AA
	mov r0, #1
	pop {r3, pc}
_021D43AA:
	mov r0, #0
	pop {r3, pc}
_021D43AE:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4390

	thumb_func_start ov20_021D43B4
ov20_021D43B4: ; 0x021D43B4
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r2, #0
	add r1, #0x80
	str r2, [r1, #0]
	str r2, [sp]
	mov r1, #0xc
	str r1, [sp, #4]
	add r0, #0x40
	mov r1, #4
	mov r2, #0x3f
	mov r3, #0x7c
	bl ov20_021D4F1C
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov20_021D43B4

	thumb_func_start ov20_021D43D8
ov20_021D43D8: ; 0x021D43D8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D4430
	add r0, r4, #0
	add r0, #0x40
	bl ov20_021D4F4C
	cmp r0, #0
	beq _021D4434
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	ldr r0, _021D4438 ; =0x0400004A
	ldrh r2, [r0]
	mov r0, #0x3f
	bic r2, r0
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	lsl r0, r0, #0x1a
	orr r1, r2
	lsr r0, r0, #0x1f
	beq _021D4416
	mov r0, #0x20
	orr r1, r0
_021D4416:
	ldr r2, _021D4438 ; =0x0400004A
	ldr r0, _021D443C ; =0xFFFF1FFF
	strh r1, [r2]
	sub r2, #0x4a
	ldr r1, [r2, #0]
	add r4, #0x88
	and r1, r0
	ldr r0, [r4, #0]
	lsl r0, r0, #0xd
	orr r0, r1
	str r0, [r2, #0]
	mov r0, #1
	pop {r4, pc}
_021D4430:
	mov r0, #1
	pop {r4, pc}
_021D4434:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D4438: .word 0x0400004A
_021D443C: .word 0xFFFF1FFF
	thumb_func_end ov20_021D43D8

	thumb_func_start ov20_021D4440
ov20_021D4440: ; 0x021D4440
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl sub_02021CAC
	cmp r4, #0
	beq _021D446E
	ldr r0, [r5, #4]
	bl ov20_021D204C
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_02021CAC
	ldr r0, [r5, #4]
	bl ov20_021D2060
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_021D446E:
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D4440

	thumb_func_start ov20_021D4480
ov20_021D4480: ; 0x021D4480
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r2, r1, #0
	mov r0, #1
	and r2, r0
	mov r0, #0x70
	mul r0, r2
	add r0, #0x48
	lsl r0, r0, #0xc
	str r0, [sp]
	lsr r1, r1, #1
	mov r0, #0x18
	mul r0, r1
	add r0, #0x38
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0x30]
	mov r1, #8
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4480

	thumb_func_start ov20_021D44BC
ov20_021D44BC: ; 0x021D44BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	add r4, r1, #0
	bl ov20_021D45AC
	add r0, r7, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	lsl r6, r4, #1
	str r0, [sp, #0x10]
	add r0, r0, r6
	str r0, [sp, #0x14]
	mov r0, #0x18
	mul r0, r4
	str r0, [sp, #8]
	add r0, r7, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp, #8]
	add r1, r0, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x18]
	cmp r4, #0
	bge _021D4500
	ldr r0, [sp, #0x14]
	add r5, r1, #0
	str r0, [sp, #0x10]
	lsl r0, r4, #2
	neg r0, r0
	neg r6, r6
	str r0, [sp, #0xc]
	b _021D4520
_021D4500:
	add r0, #0x78
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x10]
	add r0, #0xa
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	bl ov20_021D1FE4
	ldr r1, [sp, #0x10]
	add r1, r6, r1
	cmp r1, r0
	bls _021D451C
	sub r6, r6, #1
_021D451C:
	lsl r0, r4, #2
	str r0, [sp, #0xc]
_021D4520:
	mov r4, #0
	cmp r6, #0
	ble _021D4544
_021D4526:
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	add r1, r1, r4
	add r2, r5, #0
	bl ov20_021D4658
	mov r0, #1
	tst r0, r4
	beq _021D453E
	add r5, #0x18
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
_021D453E:
	add r4, r4, #1
	cmp r4, r6
	blt _021D4526
_021D4544:
	add r1, r7, #0
	ldr r0, [sp, #0x18]
	add r1, #0x8c
	str r0, [r1, #0]
	add r1, r7, #0
	ldr r0, [sp, #0x14]
	add r1, #0x90
	str r0, [r1, #0]
	add r0, r7, #0
	add r0, #0x10
	bl sub_0201ACCC
	ldr r0, [sp, #8]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r3, #1
	str r0, [sp, #4]
	add r0, r7, #0
	ldr r1, [r7, #0xc]
	add r0, #0x60
	bl ov20_021D4E38
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov20_021D44BC

	thumb_func_start ov20_021D4578
ov20_021D4578: ; 0x021D4578
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x60
	bl ov20_021D4E8C
	cmp r0, #0
	beq _021D45A6
	ldr r0, [r4, #4]
	bl ov20_021D204C
	add r1, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_02021CAC
	ldr r0, [r4, #4]
	bl ov20_021D2060
	add r1, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_021D45A6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4578

	thumb_func_start ov20_021D45AC
ov20_021D45AC: ; 0x021D45AC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #0
	ble _021D45CC
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r0, #0x78
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, #0x18
	mul r0, r1
	add r0, r3, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _021D45DA
_021D45CC:
	add r0, #0x8c
	ldr r4, [r0, #0]
	mov r0, #0x18
	mul r0, r1
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_021D45DA:
	cmp r3, r4
	bge _021D45FE
	mov r0, #0xd0
	str r0, [sp]
	sub r0, r4, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	lsl r3, r3, #0x10
	add r5, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	add sp, #8
	pop {r3, r4, r5, pc}
_021D45FE:
	mov r0, #0xd0
	str r0, [sp]
	add r0, #0x30
	sub r0, r0, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	lsl r3, r3, #0x10
	add r0, #0x10
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0xd0
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r5, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D45AC

	thumb_func_start ov20_021D4638
ov20_021D4638: ; 0x021D4638
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0x30
	add r1, #0x8c
	str r2, [r1, #0]
	add r1, r0, #0
	mov r3, #0
	add r1, #0x90
	str r3, [r1, #0]
	ldr r0, [r0, #0xc]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4638

	thumb_func_start ov20_021D4658
ov20_021D4658: ; 0x021D4658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x3c]
	add r7, r1, #0
	bl ov20_021D2008
	cmp r4, #0xf0
	bhi _021D4694
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4724 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r3, #1
	add r4, r7, #0
	and r4, r3
	mov r3, #0x70
	ldr r2, [r5, #0x3c]
	add r0, #0x10
	mul r3, r4
	bl sub_0201D78C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D4694:
	mov r0, #1
	lsl r0, r0, #8
	sub r6, r0, r4
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4724 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x3c]
	add r0, #0x20
	bl sub_0201D78C
	mov r2, #0
	mov r0, #1
	add r1, r7, #0
	and r1, r0
	add r7, r1, #0
	mov r0, #0x70
	mul r7, r0
	mov r0, #0x60
	str r0, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r5, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x10
	add r3, r2, #0
	bl sub_0201ADDC
	mov r1, #0x60
	lsl r2, r7, #0x10
	lsl r3, r6, #0x10
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	lsr r2, r2, #0x10
	str r2, [sp, #8]
	mov r2, #0
	sub r0, r0, r6
	str r2, [sp, #0xc]
	lsl r0, r0, #0x10
	str r1, [sp, #0x10]
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r5, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x10
	lsr r3, r3, #0x10
	bl sub_0201ADDC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4724: .word 0x00010200
	thumb_func_end ov20_021D4658