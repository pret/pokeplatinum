	.include "macros/function.inc"
	.include "include/ov104_02231F74.inc"

	

	.text


	thumb_func_start ov104_02231F74
ov104_02231F74: ; 0x02231F74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	bl ov104_02231FC4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_02232034
	cmp r4, #0
	bne _02231FAE
	add r0, r5, #0
	bl ov104_0222E924
	ldr r0, [r0, #8]
	bl sub_0209B970
	ldr r0, [r0, #4]
	bl sub_02027AC0
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	b _02231FB4
_02231FAE:
	ldrb r2, [r4]
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
_02231FB4:
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl ov104_02232050
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02231F74

	thumb_func_start ov104_02231FC4
ov104_02231FC4: ; 0x02231FC4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl ov104_0222E924
	add r1, r4, #0
	add r1, #0x5a
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223201C
	mov r1, #0x13
	str r1, [sp]
	mov r1, #0x1b
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0xd
	str r1, [sp, #0xc]
	ldr r1, _0223202C ; =0x0000036D
	mov r2, #1
	str r1, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r1, #0x64
	mov r3, #2
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	ldr r2, _02232030 ; =0x000003E2
	add r0, #0x64
	mov r1, #0
	mov r3, #0xb
	bl sub_0200E060
	mov r0, #1
	add r4, #0x5a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, pc}
_0223201C:
	add r4, #0x64
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223202C: .word 0x0000036D
_02232030: .word 0x000003E2
	thumb_func_end ov104_02231FC4

	thumb_func_start ov104_02232034
ov104_02232034: ; 0x02232034
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r4, #0x4c]
	bl sub_0200B1B8
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	bl sub_0200C388
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_02232034

	thumb_func_start ov104_02232050
ov104_02232050: ; 0x02232050
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r3, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02002AC8
	ldr r0, [sp, #0x20]
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x48]
	add r0, #0x64
	add r1, r6, #0
	bl sub_0201D738
	add r5, #0x50
	strb r0, [r5]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov104_02232050

	thumb_func_start ov104_02232088
ov104_02232088: ; 0x02232088
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	beq _02232098
	bl sub_02022974
_02232098:
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A8FC
	mov r0, #0
	add r4, #0x5a
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_02232088

	thumb_func_start ov104_022320B4
ov104_022320B4: ; 0x022320B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov104_02231FC4
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	add r1, r6, #0
	add r2, r7, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	ldr r0, [r5, #0x48]
	bl ov104_022320FC
	add r0, sp, #8
	ldrb r3, [r0, #0x18]
	cmp r3, #0xff
	beq _022320EC
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov104_02232050
	pop {r3, r4, r5, r6, r7, pc}
_022320EC:
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	str r2, [sp]
	bl ov104_02232050
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022320B4

	thumb_func_start ov104_022320FC
ov104_022320FC: ; 0x022320FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #0
	add r7, r3, #0
	bl sub_02014A84
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02014CE0
	add r0, sp, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_02014CF8
	add r2, sp, #0x10
	ldrh r2, [r2, #0x10]
	add r0, sp, #0
	mov r1, #1
	bl sub_02014CF8
	add r0, sp, #0
	mov r1, #0x20
	bl sub_02014B34
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023810
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022320FC

	thumb_func_start ov104_0223214C
ov104_0223214C: ; 0x0223214C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [sp, #0x28]
	add r7, r0, #0
	add r4, r2, #0
	add r5, r3, #0
	cmp r1, #0
	bne _0223217A
	ldr r2, _02232250 ; =0x00000169
	ldr r3, [r7, #0x34]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r1, r6, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	b _0223218A
_0223217A:
	add r0, r6, #0
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
_0223218A:
	add r0, r6, #0
	add r0, #0x97
	strb r1, [r0]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r6, #0
	ldr r1, [sp, #0x20]
	str r7, [r6, #0]
	add r0, #0xa0
	str r1, [r0, #0]
	add r1, r6, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	mov r0, #0
	strh r0, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r3, [r1]
	mov r1, #1
	bic r3, r1
	add r1, sp, #8
	ldrb r2, [r1, #0x14]
	mov r1, #1
	and r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, r6, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, sp, #8
	add r2, r6, #0
	ldrb r1, [r1, #0x10]
	add r2, #0x96
	mov r3, #3
	strb r1, [r2]
	add r2, r6, #0
	add r2, #0x98
	strb r4, [r2]
	add r2, r6, #0
	add r2, #0x99
	strb r5, [r2]
	add r2, r6, #0
	add r2, #0x9b
	strb r0, [r2]
	add r2, r7, #0
	add r2, #0x64
	str r2, [r6, #0x18]
	add r2, r6, #0
	add r2, #0x94
	strb r3, [r2]
	mov r2, #0xb5
	lsl r2, r2, #2
	strh r1, [r6, r2]
	add r3, r6, #0
	add r2, r0, #0
_022321FC:
	add r1, r3, #0
	add r1, #0xb4
	str r2, [r1, #0]
	add r1, r3, #0
	add r1, #0xb8
	add r0, r0, #1
	add r3, #8
	str r2, [r1, #0]
	cmp r0, #0x1c
	blt _022321FC
	add r0, r6, #0
	add r1, r6, #0
	mov r5, #0
	mov r4, #0xff
_02232218:
	mov r3, #0x6f
	lsl r3, r3, #2
	str r5, [r0, r3]
	add r3, r3, #4
	str r5, [r0, r3]
	mov r3, #0xa7
	lsl r3, r3, #2
	strh r4, [r1, r3]
	add r2, r2, #1
	add r0, #8
	add r1, r1, #2
	cmp r2, #0x1c
	blt _02232218
	add r4, r6, #0
_02232234:
	ldr r1, [r7, #0x34]
	mov r0, #0x50
	bl sub_02023790
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x1c
	blt _02232234
	add r6, #0xa0
	ldr r1, _02232254 ; =0x0000EEEE
	ldr r0, [r6, #0]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232250: .word 0x00000169
_02232254: .word 0x0000EEEE
	thumb_func_end ov104_0223214C

	thumb_func_start ov104_02232258
ov104_02232258: ; 0x02232258
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r2, [sp, #0x14]
	add r7, r1, #0
	mov r1, #0xb6
	ldr r0, [r5, #0x34]
	lsl r1, r1, #2
	add r4, r3, #0
	bl sub_02018144
	add r6, r0, #0
	bne _02232278
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232278:
	mov r2, #0xb6
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	str r4, [sp]
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov104_0223214C
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02232258

	thumb_func_start ov104_022322A8
ov104_022322A8: ; 0x022322A8
	push {r3, lr}
	bl ov104_02232390
	pop {r3, pc}
	thumb_func_end ov104_022322A8

	thumb_func_start ov104_022322B0
ov104_022322B0: ; 0x022322B0
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov104_0222E924
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_02232414
	mov r1, #7
	tst r1, r0
	bne _022322CE
	lsr r0, r0, #3
	b _022322D2
_022322CE:
	lsr r0, r0, #3
	add r0, r0, #1
_022322D2:
	add r1, r5, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _022322EC
	add r1, r5, #0
	add r1, #0x98
	ldrb r1, [r1]
	sub r2, r1, r0
	add r1, r5, #0
	add r1, #0x98
	strb r2, [r1]
_022322EC:
	add r1, r5, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _0223230E
	add r1, r5, #0
	add r1, #0x99
	ldrb r2, [r1]
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #1
	sub r2, r2, r1
	add r1, r5, #0
	add r1, #0x99
	strb r2, [r1]
_0223230E:
	add r1, r5, #0
	add r1, #0x99
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	add r3, r5, #0
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r5, #0
	mov r2, #1
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r4, #0]
	add r1, #8
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02232388 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xc
	bl sub_0200DC48
	add r0, r5, #0
	bl ov104_02232454
	ldr r2, [r5, #0]
	add r1, r5, #0
	add r1, #0x96
	ldr r2, [r2, #0x34]
	add r0, r5, #0
	lsl r2, r2, #0x18
	ldrb r1, [r1]
	add r0, #0xa4
	lsr r2, r2, #0x18
	bl sub_02001B9C
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov104_022325D8
	ldr r0, _0223238C ; =ov104_022324C8
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02232388: .word 0x000003D9
_0223238C: .word ov104_022324C8
	thumb_func_end ov104_022322B0

	thumb_func_start ov104_02232390
ov104_02232390: ; 0x02232390
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	ldr r1, [r5, #0]
	mov r0, #0x50
	ldr r1, [r1, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp]
	add r2, r4, #0
	bl sub_0200B1B8
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x1c]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	add r1, r5, r1
	ldr r0, [r0, #0x1c]
	add r1, #0xb4
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	strh r6, [r1, r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, #0xb8
	str r7, [r0, #0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02232390

	thumb_func_start ov104_02232414
ov104_02232414: ; 0x02232414
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _0223244C
	add r5, r7, #0
_02232426:
	add r0, r5, #0
	add r0, #0xb4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0223244C
	mov r0, #0
	add r2, r0, #0
	bl sub_02002D7C
	cmp r6, r0
	bhs _0223243E
	add r6, r0, #0
_0223243E:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _02232426
_0223244C:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02232414

	thumb_func_start ov104_02232454
ov104_02232454: ; 0x02232454
	add r2, r0, #0
	add r1, r0, #0
	add r2, #0xb4
	add r1, #0xa4
	str r2, [r1, #0]
	add r2, r0, #0
	add r1, r0, #0
	add r2, #8
	add r1, #0xa8
	str r2, [r1, #0]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xac
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0xad
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xae
	strb r2, [r1]
	add r2, r0, #0
	add r2, #0xaf
	ldrb r3, [r2]
	mov r2, #0xf
	add r1, r0, #0
	bic r3, r2
	add r2, r0, #0
	add r2, #0xaf
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0xaf
	ldrb r3, [r2]
	mov r2, #0x30
	add r1, #0xaf
	bic r3, r2
	add r2, r0, #0
	add r2, #0xaf
	strb r3, [r2]
	add r0, #0x9b
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, #4
	blo _022324BE
	mov r0, #0xc0
	bic r2, r0
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1]
	bx lr
_022324BE:
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02232454

	thumb_func_start ov104_022324C8
ov104_022324C8: ; 0x022324C8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _022324E4
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r5, #0x94
	sub r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_022324E4:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02232562
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_02001BE0
	add r4, r0, #0
	ldr r0, _02232564 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _02232514
	mov r1, #0x80
	tst r1, r0
	bne _02232514
	mov r1, #0x20
	tst r1, r0
	bne _02232514
	mov r1, #0x10
	tst r0, r1
	beq _0223251A
_02232514:
	add r0, r5, #0
	bl ov104_022325D8
_0223251A:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	ldr r1, _02232568 ; =0x0000EEDD
	ldrh r2, [r0]
	cmp r2, r1
	bne _02232530
	add r0, r5, #0
	bl ov104_02232570
	pop {r3, r4, r5, pc}
_02232530:
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	beq _02232540
	add r1, r1, #1
	cmp r4, r1
	beq _02232562
	b _0223255A
_02232540:
	add r1, r5, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _02232562
	ldr r1, _0223256C ; =0x0000FFFE
	strh r1, [r0]
	add r0, r5, #0
	bl ov104_02232570
	pop {r3, r4, r5, pc}
_0223255A:
	strh r4, [r0]
	add r0, r5, #0
	bl ov104_02232570
_02232562:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02232564: .word 0x021BF67C
_02232568: .word 0x0000EEDD
_0223256C: .word 0x0000FFFE
	thumb_func_end ov104_022324C8

	thumb_func_start ov104_02232570
ov104_02232570: ; 0x02232570
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _022325D4 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_022325A0:
	ldr r0, [r5, #0x1c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _022325A0
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022325C6
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200B190
_022325C6:
	ldr r0, [r6, #4]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022325D4: .word 0x000005DC
	thumb_func_end ov104_02232570

	thumb_func_start ov104_022325D8
ov104_022325D8: ; 0x022325D8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_02001DC4
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	cmp r1, #0xff
	beq _022325FA
	add r0, r4, #0
	mov r2, #0
	bl ov104_02232AC4
_022325FA:
	pop {r4, pc}
	thumb_func_end ov104_022325D8

	thumb_func_start ov104_022325FC
ov104_022325FC: ; 0x022325FC
	push {r4, lr}
	sub sp, #0x10
	add r4, sp, #8
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x20]
	str r4, [sp, #8]
	ldr r4, [sp, #0x24]
	str r4, [sp, #0xc]
	bl ov104_02232258
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_022325FC

	thumb_func_start ov104_0223261C
ov104_0223261C: ; 0x0223261C
	push {r3, lr}
	bl ov104_02232750
	pop {r3, pc}
	thumb_func_end ov104_0223261C

	thumb_func_start ov104_02232624
ov104_02232624: ; 0x02232624
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov104_0222E924
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_022327F0
	mov r1, #7
	tst r1, r0
	bne _02232642
	lsr r1, r0, #3
	b _02232646
_02232642:
	lsr r0, r0, #3
	add r1, r0, #1
_02232646:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _02232660
	add r0, r5, #0
	add r0, #0x98
	ldrb r0, [r0]
	sub r2, r0, r1
	add r0, r5, #0
	add r0, #0x98
	strb r2, [r0]
_02232660:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	cmp r0, #8
	bls _022326B0
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _02232684
	add r0, r5, #0
	add r0, #0x99
	ldrb r2, [r0]
	add r0, r5, #0
	add r0, #0x99
	sub r2, #0x10
	strb r2, [r0]
_02232684:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	mov r2, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	add r3, #0x98
	add r1, r5, #0
	ldrb r3, [r3]
	ldr r0, [r4, #0]
	add r1, #8
	bl sub_0201A7E8
	b _022326FE
_022326B0:
	add r2, r5, #0
	add r2, #0x97
	ldrb r2, [r2]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	beq _022326CC
	add r2, r5, #0
	add r2, #0x99
	ldrb r2, [r2]
	lsl r0, r0, #1
	sub r2, r2, r0
	add r0, r5, #0
	add r0, #0x99
	strb r2, [r0]
_022326CC:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	mov r2, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r5, #0
	add r3, #0x98
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r3, [r3]
	ldr r0, [r4, #0]
	add r1, #8
	bl sub_0201A7E8
_022326FE:
	add r0, r5, #0
	ldr r2, _02232748 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xc
	bl sub_0200DC48
	add r0, r5, #0
	bl ov104_02232830
	ldr r3, [r5, #0]
	add r2, r5, #0
	add r2, #0x96
	ldr r3, [r3, #0x34]
	mov r0, #0x65
	lsl r0, r0, #2
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	add r0, r5, r0
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_0200112C
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov104_02232B2C
	ldr r0, _0223274C ; =ov104_0223296C
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02232748: .word 0x000003D9
_0223274C: .word ov104_0223296C
	thumb_func_end ov104_02232624

	thumb_func_start ov104_02232750
ov104_02232750: ; 0x02232750
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	ldr r1, [r5, #0]
	mov r0, #0x50
	ldr r1, [r1, #0x34]
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp]
	add r2, r6, #0
	bl sub_0200B1B8
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x1c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x6f
	ldr r0, [r0, #0x1c]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r6, #0
	bl sub_020237BC
	cmp r4, #0xfa
	bne _022327C2
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r2, #2
	mvn r2, r2
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #7
	lsl r0, r0, #6
	str r2, [r1, r0]
	b _022327D2
_022327C2:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #7
	lsl r0, r0, #6
	str r4, [r1, r0]
_022327D2:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	strh r7, [r1, r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02232750

	thumb_func_start ov104_022327F0
ov104_022327F0: ; 0x022327F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _02232828
	add r5, r7, #0
_02232802:
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02232828
	mov r0, #0
	add r2, r0, #0
	bl sub_02002D7C
	cmp r6, r0
	bhs _0223281A
	add r6, r0, #0
_0223281A:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _02232802
_02232828:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022327F0

	thumb_func_start ov104_02232830
ov104_02232830: ; 0x02232830
	push {r4, r5}
	mov r3, #0x6f
	lsl r3, r3, #2
	add r1, r3, #0
	add r2, r0, r3
	sub r1, #0x28
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _02232928 ; =ov104_02232960
	sub r1, #0x24
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _0223292C ; =ov104_0223293C
	sub r1, #0x20
	str r2, [r0, r1]
	add r2, r0, #0
	add r1, r3, #0
	add r2, #8
	sub r1, #0x1c
	str r2, [r0, r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r3, #0
	sub r1, #0x18
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #8
	sub r1, #0x16
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #1
	sub r1, #0x14
	strb r2, [r0, r1]
	add r1, r3, #0
	mov r4, #0xc
	sub r1, #0x13
	strb r4, [r0, r1]
	add r1, r3, #0
	mov r4, #2
	sub r1, #0x12
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x11
	ldrb r4, [r0, r1]
	mov r1, #0xf
	bic r4, r1
	orr r4, r2
	add r2, r3, #0
	sub r2, #0x11
	strb r4, [r0, r2]
	add r2, r3, #0
	sub r2, #0x11
	ldrb r5, [r0, r2]
	mov r2, #0xf0
	mov r4, #0x10
	bic r5, r2
	orr r5, r4
	add r4, r3, #0
	sub r4, #0x11
	strb r5, [r0, r4]
	add r4, r3, #0
	sub r4, #0x10
	ldrb r4, [r0, r4]
	bic r4, r1
	mov r1, #0xf
	orr r4, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x10
	ldrb r4, [r0, r1]
	mov r1, #0x20
	bic r4, r2
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #7
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #0x78
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _02232930 ; =0xFFFFFE7F
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _02232934 ; =0xFFFF81FF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _02232938 ; =0xFFFF7FFF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	sub r3, #0xc
	str r0, [r0, r3]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02232928: .word ov104_02232960
_0223292C: .word ov104_0223293C
_02232930: .word 0xFFFFFE7F
_02232934: .word 0xFFFF81FF
_02232938: .word 0xFFFF7FFF
	thumb_func_end ov104_02232830

	thumb_func_start ov104_0223293C
ov104_0223293C: ; 0x0223293C
	push {r3, lr}
	mov r2, #2
	mvn r2, r2
	cmp r1, r2
	bne _02232952
	mov r1, #3
	mov r2, #0xf
	mov r3, #4
	bl sub_0200147C
	pop {r3, pc}
_02232952:
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223293C

	thumb_func_start ov104_02232960
ov104_02232960: ; 0x02232960
	ldr r3, _02232968 ; =sub_02001504
	mov r1, #0x13
	bx r3
	nop
_02232968: .word sub_02001504
	thumb_func_end ov104_02232960

	thumb_func_start ov104_0223296C
ov104_0223296C: ; 0x0223296C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _02232988
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r5, #0x94
	sub r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02232988:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02232A46
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #0x6d
	mov r1, #0xb5
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0xb5
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _022329BE
	ldr r0, _02232A48 ; =0x000005DC
	bl sub_02005748
_022329BE:
	ldr r0, _02232A4C ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _022329DA
	mov r1, #0x80
	tst r1, r0
	bne _022329DA
	mov r1, #0x20
	tst r1, r0
	bne _022329DA
	mov r1, #0x10
	tst r0, r1
	beq _022329E0
_022329DA:
	add r0, r5, #0
	bl ov104_02232B2C
_022329E0:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	ldrh r1, [r0]
	ldr r0, _02232A50 ; =0x0000EEDD
	cmp r1, r0
	bne _022329F8
	add r0, r5, #0
	mov r1, #0
	bl ov104_02232A58
	pop {r4, r5, r6, pc}
_022329F8:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02232A08
	add r0, r0, #1
	cmp r4, r0
	beq _02232A46
	b _02232A30
_02232A08:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02232A46
	ldr r0, _02232A48 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xa0
	ldr r1, _02232A54 ; =0x0000FFFE
	ldr r0, [r0, #0]
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #1
	bl ov104_02232A58
	pop {r4, r5, r6, pc}
_02232A30:
	ldr r0, _02232A48 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	strh r4, [r0]
	add r0, r5, #0
	bl ov104_02232A58
_02232A46:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02232A48: .word 0x000005DC
_02232A4C: .word 0x021BF67C
_02232A50: .word 0x0000EEDD
_02232A54: .word 0x0000FFFE
	thumb_func_end ov104_0223296C

	thumb_func_start ov104_02232A58
ov104_02232A58: ; 0x02232A58
	push {r4, r5, r6, lr}
	add r6, r0, #0
	cmp r1, #1
	bne _02232A66
	ldr r0, _02232AC0 ; =0x000005DC
	bl sub_02005748
_02232A66:
	mov r0, #0x6d
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	add r0, #8
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_02232A8C:
	ldr r0, [r5, #0x1c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _02232A8C
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02232AB2
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200B190
_02232AB2:
	ldr r0, [r6, #4]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02232AC0: .word 0x000005DC
	thumb_func_end ov104_02232A58

	thumb_func_start ov104_02232AC4
ov104_02232AC4: ; 0x02232AC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldr r1, [r5, #0]
	mov r0, #0x50
	ldr r1, [r1, #0x34]
	add r7, r2, #0
	bl sub_02023790
	ldr r1, [r5, #0]
	add r4, r0, #0
	ldr r1, [r1, #0x34]
	mov r0, #0x50
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r2, r6, #0
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02232AC4

	thumb_func_start ov104_02232B2C
ov104_02232B2C: ; 0x02232B2C
	push {r4, lr}
	mov r1, #0x6d
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #6
	add r1, r4, r1
	bl sub_020014D0
	ldr r0, _02232B58 ; =0x000001BA
	ldrh r1, [r4, r0]
	add r0, #0xe2
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, r0]
	cmp r1, #0xff
	beq _02232B56
	add r0, r4, #0
	mov r2, #0
	bl ov104_02232AC4
_02232B56:
	pop {r4, pc}
	; .align 2, 0
_02232B58: .word 0x000001BA
	thumb_func_end ov104_02232B2C

	thumb_func_start ov104_02232B5C
ov104_02232B5C: ; 0x02232B5C
	push {r3, lr}
	cmp r0, #0
	beq _02232B72
	add r1, r0, #0
	add r1, #0xa0
	ldr r2, _02232B74 ; =0x0000FFFE
	ldr r1, [r1, #0]
	strh r2, [r1]
	mov r1, #0
	bl ov104_02232A58
_02232B72:
	pop {r3, pc}
	; .align 2, 0
_02232B74: .word 0x0000FFFE
	thumb_func_end ov104_02232B5C

	thumb_func_start ov104_02232B78
ov104_02232B78: ; 0x02232B78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldrh r4, [r0]
	ldrh r6, [r0, #2]
	ldrb r0, [r5]
	cmp r0, #0
	beq _02232B98
	cmp r0, #1
	beq _02232BA6
	cmp r0, #2
	beq _02232C4A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02232B98:
	ldr r0, _02232C78 ; =0x0000FD13
	cmp r4, r0
	bne _02232BA6
	mov r0, #2
	add sp, #8
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02232BA6:
	ldr r0, [r5, #0x14]
	mov r1, #5
	ldr r0, [r0, #0]
	bl ov63_0222BF90
	cmp r0, #0
	bne _02232C72
	cmp r4, #0x20
	blo _02232BDE
	cmp r4, #0x26
	bhi _02232BDE
	mov r0, #2
	ldrsh r1, [r5, r0]
	sub r4, #0x20
	add r1, r1, #1
	strh r1, [r5, #2]
	ldrsh r1, [r5, r0]
	ldr r0, _02232C7C ; =0x0223F9A4
	ldrb r0, [r0, r4]
	cmp r1, r0
	blt _02232C72
	mov r0, #0
	strh r0, [r5, #2]
	ldr r0, [r5, #0xc]
	add sp, #8
	add r0, r0, #4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02232BDE:
	cmp r4, #0x27
	blo _02232C16
	cmp r4, #0x29
	bhs _02232C16
	cmp r4, #0x27
	beq _02232BF0
	cmp r4, #0x28
	beq _02232BFC
	b _02232C08
_02232BF0:
	ldr r0, [r5, #0x14]
	mov r1, #1
	ldr r0, [r0, #4]
	bl ov63_0222D008
	b _02232C0C
_02232BFC:
	ldr r0, [r5, #0x14]
	mov r1, #0
	ldr r0, [r0, #4]
	bl ov63_0222D008
	b _02232C0C
_02232C08:
	bl sub_02022974
_02232C0C:
	ldr r0, [r5, #0xc]
	add sp, #8
	add r0, r0, #4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02232C16:
	ldr r1, [r5, #0x14]
	ldrh r2, [r5, #4]
	ldr r1, [r1, #0]
	add r0, sp, #0
	add r3, r4, #0
	bl ov104_02232C80
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	bl ov63_0222D7C8
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	ldrb r0, [r5, #1]
	cmp r0, r6
	blt _02232C42
	mov r0, #0
	strb r0, [r5, #1]
	ldr r0, [r5, #0xc]
	add r0, r0, #4
	str r0, [r5, #0xc]
_02232C42:
	mov r0, #0
	add sp, #8
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02232C4A:
	ldr r0, [r5, #0x14]
	mov r1, #5
	ldr r0, [r0, #0]
	bl ov63_0222BF90
	cmp r0, #0
	bne _02232C72
	ldr r1, [r5, #8]
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r1, [r0, #0x38]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
_02232C72:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232C78: .word 0x0000FD13
_02232C7C: .word 0x0223F9A4
	thumb_func_end ov104_02232B78

	thumb_func_start ov104_02232C80
ov104_02232C80: ; 0x02232C80
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	strb r2, [r4, #7]
	ldr r0, _02232CD8 ; =0x022419A2
	lsl r2, r3, #2
	ldrh r0, [r0, r2]
	strb r0, [r4, #6]
	ldr r0, _02232CDC ; =0x022419A0
	ldrh r0, [r0, r2]
	strh r0, [r4, #4]
	cmp r0, #2
	beq _02232CA2
	cmp r0, #3
	beq _02232CA2
	cmp r0, #6
	bne _02232CBC
_02232CA2:
	add r0, r1, #0
	bl ov63_0222C0F0
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	add sp, #8
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	pop {r4, pc}
_02232CBC:
	add r0, r1, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	add sp, #8
	pop {r4, pc}
	nop
_02232CD8: .word 0x022419A2
_02232CDC: .word 0x022419A0
	thumb_func_end ov104_02232C80

	thumb_func_start ov104_02232CE0
ov104_02232CE0: ; 0x02232CE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r0, #0
	ldr r0, [r5, #4]
	str r1, [sp, #0x20]
	str r0, [sp, #0x2c]
	ldr r7, [r5, #0x34]
	ldr r6, [r5, #0x38]
	mov r0, #0x1b
	add r1, r2, #0
	str r2, [sp, #0x24]
	add r4, r3, #0
	bl sub_02006C24
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0x70
	str r4, [sp, #8]
	bl sub_0200CC3C
	ldr r0, [sp, #0x30]
	mov r1, #2
	str r0, [sp]
	mov r0, #0x6f
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	add r3, r6, #0
	str r4, [sp, #0x14]
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x30]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0x71
	str r4, [sp, #4]
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x30]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0x72
	str r4, [sp, #4]
	bl sub_0200CE54
	ldr r0, [sp, #0x30]
	bl sub_02006CA8
	add r0, sp, #0x38
	mov r1, #0
	mov r2, #0x34
	bl sub_020C4CF4
	ldr r0, [sp, #0x90]
	add r1, sp, #0x38
	strh r0, [r1]
	ldr r0, [sp, #0x94]
	strh r0, [r1, #2]
	mov r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r1, [sp, #0x98]
	str r0, [sp, #0x44]
	str r1, [sp, #0x40]
	mov r1, #1
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x9c]
	str r0, [sp, #0x68]
	str r1, [sp, #0x64]
	add r1, sp, #0x38
_02232D8A:
	add r0, r0, #1
	str r4, [r1, #0x14]
	add r1, r1, #4
	cmp r0, #6
	blt _02232D8A
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0x38
	bl sub_0200CE6C
	add r6, r0, #0
	bl sub_0200D330
	mov r1, #0x32
	ldr r0, [sp, #0x24]
	lsl r1, r1, #6
	bl sub_02018144
	str r0, [sp, #0x28]
	mov r1, #0
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r1, [sp, #0x20]
	add r0, sp, #0x6c
	mov r2, #2
	bl sub_02075EF4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r1, sp, #0x38
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x24]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	str r7, [sp, #0x1c]
	ldrh r0, [r1, #0x34]
	ldrh r1, [r1, #0x36]
	bl sub_020136A4
	ldr r0, [r6, #0]
	bl sub_02021F98
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	mov r1, #4
	bl sub_020C2C54
	mov r2, #0x32
	ldr r0, [sp, #0x28]
	ldr r1, [r7, #4]
	lsl r2, r2, #6
	bl sub_020C02BC
	ldr r0, [r6, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r7, r0, #4
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r2, sp, #0x38
	ldrh r1, [r2, #0x34]
	ldrh r2, [r2, #0x38]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x24]
	bl sub_02003050
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	ble _02232E5E
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x80
	ldrh r0, [r0, #0x24]
	lsl r2, r7, #0x10
	mov r1, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_020039B0
_02232E5E:
	ldr r0, [sp, #0x28]
	bl sub_020181C4
	ldr r0, _02232E7C ; =0x0000C350
	add r5, #0x80
	sub r0, r4, r0
	lsl r4, r0, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02232E76
	bl sub_02022974
_02232E76:
	str r6, [r5, r4]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02232E7C: .word 0x0000C350
	thumb_func_end ov104_02232CE0

	thumb_func_start ov104_02232E80
ov104_02232E80: ; 0x02232E80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02232EBC ; =0x0000C350
	add r6, r1, #0
	add r4, r5, #0
	sub r0, r6, r0
	add r4, #0x80
	lsl r7, r0, #2
	ldr r0, [r4, r7]
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r4, r7]
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	bl sub_0200D070
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	bl sub_0200D080
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	bl sub_0200D090
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	bl sub_0200D0A0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232EBC: .word 0x0000C350
	thumb_func_end ov104_02232E80

	thumb_func_start ov104_02232EC0
ov104_02232EC0: ; 0x02232EC0
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	bl sub_02079FD0
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x38]
	mov r1, #2
	bl sub_0200CD7C
	bl sub_02079FD8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	mov r2, #0x13
	bl sub_0200CE3C
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_02232EC0

	thumb_func_start ov104_02232F28
ov104_02232F28: ; 0x02232F28
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x7d
	ldr r0, [r4, #0x38]
	lsl r1, r1, #4
	bl sub_0200D090
	mov r1, #0x7d
	ldr r0, [r4, #0x38]
	lsl r1, r1, #4
	bl sub_0200D0A0
	mov r1, #0x7d
	ldr r0, [r4, #0x38]
	lsl r1, r1, #4
	bl sub_0200D080
	pop {r4, pc}
	thumb_func_end ov104_02232F28

	thumb_func_start ov104_02232F4C
ov104_02232F4C: ; 0x02232F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	str r3, [sp, #0xc]
	cmp r4, #8
	blt _02232F60
	bl sub_02022974
_02232F60:
	add r0, r7, #0
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x7d
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	mov r2, #0x13
	bl sub_0200D888
	ldr r6, _02232FD0 ; =0x0223F9E0
	add r3, sp, #0x10
	mov r2, #6
_02232F88:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02232F88
	ldr r0, [r6, #0]
	add r1, sp, #0x10
	str r0, [r3, #0]
	ldr r0, [sp, #0x24]
	add r2, sp, #0x10
	add r0, r0, r4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	strh r0, [r1]
	ldr r0, [sp, #0x58]
	strh r0, [r1, #2]
	mov r0, #0xc8
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_0200CE6C
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02079FC4
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021F24
	add r0, r4, #0
	bl sub_0200D330
	add r0, r4, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_02232FD0: .word 0x0223F9E0
	thumb_func_end ov104_02232F4C

	thumb_func_start ov104_02232FD4
ov104_02232FD4: ; 0x02232FD4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x7d
	lsl r1, r1, #4
	ldr r0, [r0, #0x38]
	add r1, r2, r1
	bl sub_0200D070
	add r0, r4, #0
	bl sub_0200D0F4
	pop {r4, pc}
	thumb_func_end ov104_02232FD4

	thumb_func_start ov104_02232FEC
ov104_02232FEC: ; 0x02232FEC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x14
	mov r1, #0x5e
	bl sub_02006C24
	add r4, r0, #0
	bl sub_02081934
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02233074 ; =0x000007D1
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x34]
	ldr r3, [r5, #0x38]
	bl sub_0200CDC4
	bl sub_02081938
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233074 ; =0x000007D1
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_0200CE24
	bl sub_0208193C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233074 ; =0x000007D1
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_0200CE54
	bl sub_02081930
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02233078 ; =0x000007D9
	mov r2, #0x14
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_0200D888
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233074: .word 0x000007D1
_02233078: .word 0x000007D9
	thumb_func_end ov104_02232FEC

	thumb_func_start ov104_0223307C
ov104_0223307C: ; 0x0223307C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	ldr r1, _022330A4 ; =0x000007D9
	bl sub_0200D070
	ldr r0, [r4, #0x38]
	ldr r1, _022330A8 ; =0x000007D1
	bl sub_0200D090
	ldr r0, [r4, #0x38]
	ldr r1, _022330A8 ; =0x000007D1
	bl sub_0200D0A0
	ldr r0, [r4, #0x38]
	ldr r1, _022330A8 ; =0x000007D1
	bl sub_0200D080
	pop {r4, pc}
	nop
_022330A4: .word 0x000007D9
_022330A8: .word 0x000007D1
	thumb_func_end ov104_0223307C

	thumb_func_start ov104_022330AC
ov104_022330AC: ; 0x022330AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r5, _022330EC ; =0x0223F9AC
	add r6, r2, #0
	add r3, r0, #0
	add r7, r1, #0
	add r4, sp, #0
	mov r2, #6
_022330BC:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _022330BC
	ldr r0, [r5, #0]
	add r2, sp, #0
	str r0, [r4, #0]
	add r0, sp, #0
	strh r7, [r0]
	strh r6, [r0, #2]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [r3, #0x34]
	ldr r1, [r3, #0x38]
	bl sub_0200CE6C
	add r4, r0, #0
	bl sub_0200D330
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_022330EC: .word 0x0223F9AC
	thumb_func_end ov104_022330AC

	thumb_func_start ov104_022330F0
ov104_022330F0: ; 0x022330F0
	ldr r3, _022330F8 ; =sub_0200D0F4
	add r0, r1, #0
	bx r3
	nop
_022330F8: .word sub_0200D0F4
	thumb_func_end ov104_022330F0

	thumb_func_start ov104_022330FC
ov104_022330FC: ; 0x022330FC
	ldr r3, _02233104 ; =ov104_0223310C
	ldr r2, _02233108 ; =0x00000266
	bx r3
	nop
_02233104: .word ov104_0223310C
_02233108: .word 0x00000266
	thumb_func_end ov104_022330FC

	thumb_func_start ov104_0223310C
ov104_0223310C: ; 0x0223310C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	bl sub_0209B970
	ldrh r2, [r4]
	ldr r1, _0223317C ; =0x0000FFFF
	cmp r2, r1
	bne _0223314C
	mov r0, #1
	mov r1, #0x1a
	add r2, r6, #0
	mov r3, #0x20
	bl sub_0200B144
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r4, #2]
	ldr r0, [r5, #0]
	add r1, r6, #0
	mov r3, #1
	bl ov104_02231F74
	add r0, r6, #0
	bl sub_0200B190
	b _02233170
_0223314C:
	ldr r0, [r0, #8]
	bl sub_02025E44
	bl sub_02027AC0
	add r1, r0, #0
	ldrh r0, [r4, #4]
	str r0, [sp]
	mov r0, #6
	ldrsh r0, [r4, r0]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	ldr r0, [r5, #0]
	bl ov104_022320B4
_02233170:
	ldr r1, _02233180 ; =ov104_02233184
	add r0, r5, #0
	bl ov104_0222E974
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223317C: .word 0x0000FFFF
_02233180: .word ov104_02233184
	thumb_func_end ov104_0223310C

	thumb_func_start ov104_02233184
ov104_02233184: ; 0x02233184
	push {r3, lr}
	ldr r0, [r0, #0]
	add r0, #0x50
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02233198
	mov r0, #1
	pop {r3, pc}
_02233198:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02233184

	thumb_func_start ov104_0223319C
ov104_0223319C: ; 0x0223319C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #8
	ldrsb r2, [r4, r1]
	add r2, r2, #1
	strb r2, [r4, #8]
	ldrsb r2, [r4, r1]
	mov r1, #9
	ldrsb r1, [r4, r1]
	cmp r2, r1
	ble _022331E4
	mov r1, #0
	strb r1, [r4, #8]
	mov r1, #0xa
	ldrsb r2, [r4, r1]
	sub r2, r2, #1
	strb r2, [r4, #0xa]
	ldrsb r1, [r4, r1]
	cmp r1, #0
	bge _022331D4
	bl sub_0200DA58
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	pop {r4, pc}
_022331D4:
	mov r0, #4
	ldrsh r0, [r4, r0]
	neg r0, r0
	strh r0, [r4, #4]
	mov r0, #6
	ldrsh r0, [r4, r0]
	neg r0, r0
	strh r0, [r4, #6]
_022331E4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223319C

	thumb_func_start ov104_022331E8
ov104_022331E8: ; 0x022331E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #8
	add r7, r0, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0223326E
	mov r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _02233252
	ldr r2, _02233274 ; =0x04000048
	mov r1, #0x3f
	ldrh r3, [r2]
	mov r0, #0xf
	mov r5, #0x20
	bic r3, r1
	orr r0, r3
	orr r0, r5
	strh r0, [r2]
	ldrh r3, [r2, #2]
	mov r0, #0x1f
	bic r3, r1
	orr r0, r3
	orr r0, r5
	strh r0, [r2, #2]
	ldrb r3, [r4, #4]
	ldrb r1, [r4, #7]
	ldrb r0, [r4, #5]
	lsl r6, r3, #8
	mov r3, #0xff
	lsl r3, r3, #8
	and r6, r3
	ldrb r3, [r4, #6]
	orr r6, r3
	add r3, r2, #0
	sub r3, #8
	strh r6, [r3]
	lsl r3, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r3
	orr r1, r0
	sub r0, r2, #4
	strh r1, [r0]
	lsl r2, r5, #0x15
	ldr r1, [r2, #0]
	ldr r0, _02233278 ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r5, #8
	orr r0, r1
	str r0, [r2, #0]
	b _0223325C
_02233252:
	lsl r2, r1, #0x17
	ldr r1, [r2, #0]
	ldr r0, _02233278 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
_0223325C:
	add r0, r7, #0
	bl sub_0200DA58
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	pop {r3, r4, r5, r6, r7, pc}
_0223326E:
	sub r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233274: .word 0x04000048
_02233278: .word 0xFFFF1FFF
	thumb_func_end ov104_022331E8

	thumb_func_start ov104_0223327C
ov104_0223327C: ; 0x0223327C
	add r2, r0, #0
	add r2, #0x97
	ldrb r3, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x40
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x19
	orr r1, r3
	add r0, #0x97
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223327C

	thumb_func_start ov104_02233298
ov104_02233298: ; 0x02233298
	add r2, r0, #0
	add r2, #0x97
	ldrb r3, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x80
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x18
	orr r1, r3
	add r0, #0x97
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02233298

	.rodata


	.global Unk_ov104_0223F9A4
Unk_ov104_0223F9A4: ; 0x0223F9A4
	.incbin "incbin/overlay104_rodata.bin", 0x714, 0x71C - 0x714

	.global Unk_ov104_0223F9AC
Unk_ov104_0223F9AC: ; 0x0223F9AC
	.incbin "incbin/overlay104_rodata.bin", 0x71C, 0x750 - 0x71C

	.global Unk_ov104_0223F9E0
Unk_ov104_0223F9E0: ; 0x0223F9E0
	.incbin "incbin/overlay104_rodata.bin", 0x750, 0x34


	.data


	.global Unk_ov104_022419A0
Unk_ov104_022419A0: ; 0x022419A0
	.incbin "incbin/overlay104_data.bin", 0x0, 0x80

