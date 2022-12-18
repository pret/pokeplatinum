	.include "macros/function.inc"
	.include "include/ov62_02248408.inc"

	

	.text


	thumb_func_start ov62_02248408
ov62_02248408: ; 0x02248408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r0, #0xaa
	ldrb r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl sub_0202F4C0
	ldr r1, [sp, #4]
	mov r0, #0x40
	bl sub_02023790
	add r4, r0, #0
	ldr r1, [sp, #4]
	mov r0, #0x40
	bl sub_02023790
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	mov r1, #0x80
	bl sub_02018144
	add r5, r0, #0
	mov r0, #0
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x20]
	cmp r1, #0
	ble _022484D2
	ldr r0, [sp]
	mov r7, #0
	mvn r7, r7
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	add r0, #0x3c
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	lsr r6, r7, #0x10
_02248456:
	ldr r2, [sp, #0x14]
	mov r1, #7
	add r2, #0xe
_0224845C:
	ldrh r0, [r2, #0x3c]
	cmp r0, r6
	beq _0224846A
	sub r1, r1, #1
	sub r2, r2, #2
	cmp r1, r7
	bgt _0224845C
_0224846A:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02248486
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	bl ov62_0224856C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	mov r2, #8
	bl sub_02023DF0
	b _022484B4
_02248486:
	add r0, r4, #0
	bl sub_020237E8
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02023D28
	ldr r2, [sp, #0x1c]
	mov r0, #0
	add r1, r4, #0
	bl sub_02002DB4
	cmp r0, #0
	bne _022484B4
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	bl ov62_0224856C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	mov r2, #8
	bl sub_02023DF0
_022484B4:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x28]
	add r0, #0x34
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _02248456
_022484D2:
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	ble _02248556
_022484DA:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl sub_0207A0F8
	mov r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02248544
_022484EA:
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #4]
	bl sub_0207A0FC
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02248544
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x80
	bl sub_020C4AF0
	add r0, r7, #0
	mov r1, #0x75
	add r2, r5, #0
	bl sub_02074470
	add r0, r4, #0
	bl sub_020237E8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02023D28
	ldr r2, [sp, #0x1c]
	mov r0, #0
	add r1, r4, #0
	bl sub_02002DB4
	cmp r0, #0
	bne _0224853C
	add r0, r7, #0
	mov r1, #0xb3
	mov r2, #0
	bl sub_02074B30
_0224853C:
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _022484EA
_02248544:
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _022484DA
_02248556:
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov62_02248408

	thumb_func_start ov62_0224856C
ov62_0224856C: ; 0x0224856C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_020237E8
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xa
	add r3, r5, #0
	bl sub_0200B144
	mov r1, #0x53
	add r5, r0, #0
	lsl r1, r1, #2
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r5, #0
	bl sub_0200B190
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0224856C

	thumb_func_start ov62_02248598
ov62_02248598: ; 0x02248598
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r1, #0
	ldrh r1, [r4]
	add r7, r0, #0
	add r5, r2, #0
	cmp r1, #0
	beq _022485AE
	cmp r1, #1
	beq _02248602
	b _02248610
_022485AE:
	ldr r0, _02248614 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022485BA
	bl sub_02022974
_022485BA:
	cmp r5, #1
	bne _022485E2
	ldr r1, _02248614 ; =0x021C07A4
	ldr r2, _02248618 ; =0x0000E281
	ldr r0, [r1, #0]
	add r0, #0xab
	strb r5, [r0]
	ldr r0, [r1, #0]
	add r0, #0xcc
	strh r2, [r0]
	ldr r1, [r1, #0]
	add r0, r7, #0
	add r1, #0x84
	mov r2, #0x58
	bl sub_0202486C
	ldr r1, _02248614 ; =0x021C07A4
	ldr r1, [r1, #0]
	add r1, #0xe4
	strh r0, [r1]
_022485E2:
	ldr r0, _02248614 ; =0x021C07A4
	ldr r1, _0224861C ; =0x00001D4C
	ldr r0, [r0, #0]
	ldr r2, _02248620 ; =0x0000FFFF
	ldrh r3, [r0, r1]
	add r0, #0xe8
	sub r1, #0xe8
	eor r2, r3
	lsl r2, r2, #0x10
	add r2, r3, r2
	bl sub_0202F858
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02248610
_02248602:
	ldr r1, _02248614 ; =0x021C07A4
	ldr r3, [sp, #0x18]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0202F3AC
	pop {r3, r4, r5, r6, r7, pc}
_02248610:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248614: .word 0x021C07A4
_02248618: .word 0x0000E281
_0224861C: .word 0x00001D4C
_02248620: .word 0x0000FFFF
	thumb_func_end ov62_02248598

	thumb_func_start ov62_02248624
ov62_02248624: ; 0x02248624
	push {r3, lr}
	ldr r0, _0224864C ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02248632
	bl sub_02022974
_02248632:
	ldr r0, _0224864C ; =0x021C07A4
	ldr r1, _02248650 ; =0x00001D4C
	ldr r0, [r0, #0]
	ldr r2, _02248654 ; =0x0000FFFF
	ldrh r3, [r0, r1]
	add r0, #0xe8
	sub r1, #0xe8
	eor r2, r3
	lsl r2, r2, #0x10
	add r2, r3, r2
	bl sub_0202F858
	pop {r3, pc}
	; .align 2, 0
_0224864C: .word 0x021C07A4
_02248650: .word 0x00001D4C
_02248654: .word 0x0000FFFF
	thumb_func_end ov62_02248624

	thumb_func_start ov62_02248658
ov62_02248658: ; 0x02248658
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r1, #0
	ldrh r1, [r4]
	add r6, r2, #0
	cmp r1, #0
	beq _0224866C
	cmp r1, #1
	beq _0224868E
	b _0224869C
_0224866C:
	ldr r0, _022486A0 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02248678
	bl sub_02022974
_02248678:
	ldr r0, _022486A0 ; =0x021C07A4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0xdc
	str r5, [r0, #0]
	add r1, #0xe0
	str r6, [r1, #0]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0224869C
_0224868E:
	ldr r1, _022486A0 ; =0x021C07A4
	ldr r3, [sp, #0x10]
	ldr r1, [r1, #0]
	mov r2, #0
	bl sub_0202F3AC
	pop {r4, r5, r6, pc}
_0224869C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022486A0: .word 0x021C07A4
	thumb_func_end ov62_02248658

	thumb_func_start ov62_022486A4
ov62_022486A4: ; 0x022486A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224871C ; =0x021C07A4
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022486B6
	bl sub_02022974
_022486B6:
	ldr r1, _0224871C ; =0x021C07A4
	mov r2, #1
	ldr r0, [r1, #0]
	add r0, #0xab
	strb r2, [r0]
	ldr r0, [r1, #0]
	ldr r2, _02248720 ; =0x0000E281
	add r0, #0xcc
	strh r2, [r0]
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x84
	mov r2, #0x58
	bl sub_0202486C
	ldr r1, _0224871C ; =0x021C07A4
	ldr r3, _02248724 ; =0x0000FFFF
	ldr r2, [r1, #0]
	add r2, #0xe4
	strh r0, [r2]
	ldr r0, [r1, #0]
	ldr r1, _02248728 ; =0x00001D4C
	ldrh r2, [r0, r1]
	add r0, #0xe8
	sub r1, #0xe8
	eor r3, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0202F858
	mov r0, #8
	bl sub_02017DE0
	ldr r1, _0224871C ; =0x021C07A4
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r2, r4, #0
	bl sub_0202447C
	add r4, r0, #0
	cmp r4, #2
	bne _02248712
	add r0, r5, #0
	bl sub_020246E0
	add r4, r0, #0
_02248712:
	mov r0, #8
	bl sub_02017DF0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224871C: .word 0x021C07A4
_02248720: .word 0x0000E281
_02248724: .word 0x0000FFFF
_02248728: .word 0x00001D4C
	thumb_func_end ov62_022486A4