	.include "macros/function.inc"


	.text

	thumb_func_start ov22_02254DE0
ov22_02254DE0: @ 0x02254DE0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #8
	bl FUN_02018144
	lsls r6, r5, #3
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_02018144
	movs r1, #0
	adds r2, r6, #0
	str r0, [r4]
	blx FUN_020D5124
	str r5, [r4, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02254DE0

	thumb_func_start ov22_02254E0C
ov22_02254E0C: @ 0x02254E0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02254E0C

	thumb_func_start ov22_02254E20
ov22_02254E20: @ 0x02254E20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	bl ov22_02254FE0
	adds r4, r0, #0
	bne _02254E32
	bl FUN_02022974
_02254E32:
	ldr r0, [r5, #0x18]
	str r0, [r4]
	adds r0, r5, #0
	bl ov22_0225500C
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02254E20

	thumb_func_start ov22_02254E44
ov22_02254E44: @ 0x02254E44
	push {r3, lr}
	add r1, sp, #0
	bl ov22_02255040
	add r0, sp, #0
	bl FUN_02022734
	pop {r3, pc}
	thumb_func_end ov22_02254E44

	thumb_func_start ov22_02254E54
ov22_02254E54: @ 0x02254E54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r6, r1, #0
	str r2, [sp]
	adds r7, r3, #0
	bl ov22_02254E44
	cmp r0, #0
	bne _02254E6E
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_02254E6E:
	adds r0, r4, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02254F00
	ldr r0, _02254ED8 @ =0x021BF6BC
	ldr r1, [sp, #8]
	ldrh r2, [r0, #0x1c]
	subs r1, r2, r1
	str r1, [r6]
	ldrh r1, [r0, #0x1e]
	ldr r0, [sp, #4]
	subs r1, r1, r0
	ldr r0, [sp]
	subs r4, r1, #4
	str r1, [r0]
	adds r0, r1, #4
	cmp r4, r0
	bge _02254ED2
_02254E94:
	cmp r4, #0
	blt _02254EC6
	ldr r0, [r6]
	subs r5, r0, #4
	adds r0, r0, #4
	cmp r5, r0
	bge _02254EC6
_02254EA2:
	cmp r5, #0
	blt _02254EBC
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov22_02255420
	cmp r0, #0
	bne _02254EBC
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02254EBC:
	ldr r0, [r6]
	adds r5, r5, #1
	adds r0, r0, #4
	cmp r5, r0
	blt _02254EA2
_02254EC6:
	ldr r0, [sp]
	adds r4, r4, #1
	ldr r0, [r0]
	adds r0, r0, #4
	cmp r4, r0
	blt _02254E94
_02254ED2:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02254ED8: .4byte 0x021BF6BC
	thumb_func_end ov22_02254E54

	thumb_func_start ov22_02254EDC
ov22_02254EDC: @ 0x02254EDC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	add r1, sp, #0
	bl ov22_02255040
	add r0, sp, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_02022830
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02254EDC

	thumb_func_start ov22_02254EF4
ov22_02254EF4: @ 0x02254EF4
	ldr r3, _02254EFC @ =FUN_02015254
	ldr r0, [r0, #4]
	bx r3
	nop
_02254EFC: .4byte FUN_02015254
	thumb_func_end ov22_02254EF4

	thumb_func_start ov22_02254F00
ov22_02254F00: @ 0x02254F00
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_0201525C
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r5]
	movs r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02254F00

	thumb_func_start ov22_02254F30
ov22_02254F30: @ 0x02254F30
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_02015280
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r5]
	movs r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02254F30

	thumb_func_start ov22_02254F60
ov22_02254F60: @ 0x02254F60
	ldr r3, _02254F68 @ =FUN_02015240
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F68: .4byte FUN_02015240
	thumb_func_end ov22_02254F60

	thumb_func_start ov22_02254F6C
ov22_02254F6C: @ 0x02254F6C
	ldr r3, _02254F74 @ =FUN_0201528C
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F74: .4byte FUN_0201528C
	thumb_func_end ov22_02254F6C

	thumb_func_start ov22_02254F78
ov22_02254F78: @ 0x02254F78
	ldr r3, _02254F80 @ =FUN_02015290
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F80: .4byte FUN_02015290
	thumb_func_end ov22_02254F78

	thumb_func_start ov22_02254F84
ov22_02254F84: @ 0x02254F84
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02254F30
	ldr r0, [sp, #4]
	cmp r0, #0x10
	beq _02254FA4
	cmp r0, #0x20
	beq _02254FAA
	cmp r0, #0x40
	beq _02254FB0
	b _02254FB4
_02254FA4:
	movs r0, #0
	str r0, [r5]
	b _02254FB4
_02254FAA:
	movs r0, #0xa
	str r0, [r5]
	b _02254FB4
_02254FB0:
	movs r0, #0x14
	str r0, [r5]
_02254FB4:
	ldr r0, [sp]
	cmp r0, #0x10
	beq _02254FC6
	cmp r0, #0x20
	beq _02254FCE
	cmp r0, #0x40
	beq _02254FD6
	add sp, #8
	pop {r3, r4, r5, pc}
_02254FC6:
	movs r0, #0
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02254FCE:
	movs r0, #0xa
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02254FD6:
	movs r0, #0x14
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02254F84

	thumb_func_start ov22_02254FE0
ov22_02254FE0: @ 0x02254FE0
	push {r3, r4}
	ldr r4, [r0, #4]
	movs r1, #0
	cmp r4, #0
	ble _02255004
	ldr r3, [r0]
	adds r2, r3, #0
_02254FEE:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _02254FFC
	lsls r0, r1, #3
	adds r0, r3, r0
	pop {r3, r4}
	bx lr
_02254FFC:
	adds r1, r1, #1
	adds r2, #8
	cmp r1, r4
	blt _02254FEE
_02255004:
	movs r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov22_02254FE0

	thumb_func_start ov22_0225500C
ov22_0225500C: @ 0x0225500C
	push {r3, lr}
	sub sp, #0x20
	ldr r1, [r0, #4]
	movs r3, #0
	str r1, [sp]
	ldr r1, [r0, #8]
	str r1, [sp, #4]
	ldr r1, [r0, #0xc]
	str r1, [sp, #8]
	ldr r2, [r0, #0x10]
	add r1, sp, #0
	strh r2, [r1, #0xc]
	ldr r2, [r0, #0x14]
	strh r2, [r1, #0xe]
	strh r3, [r1, #0x10]
	movs r2, #0x1f
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r0, #0x1c]
	strh r0, [r1, #0x1c]
	add r0, sp, #0
	bl FUN_02015214
	add sp, #0x20
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_0225500C

	thumb_func_start ov22_02255040
ov22_02255040: @ 0x02255040
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	bl FUN_0201525C
	add r1, sp, #0
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #4]
	bl FUN_02015280
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	movs r0, #0xe
	ldrsh r2, [r1, r0]
	movs r0, #0xa
	strb r2, [r4]
	ldrsh r0, [r1, r0]
	adds r0, r2, r0
	strb r0, [r4, #1]
	movs r0, #0xc
	ldrsh r2, [r1, r0]
	movs r0, #8
	strb r2, [r4, #2]
	ldrsh r0, [r1, r0]
	adds r0, r2, r0
	strb r0, [r4, #3]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255040

	thumb_func_start ov22_02255094
ov22_02255094: @ 0x02255094
	push {r3, lr}
	bl ov22_02255634
	bl ov22_02255654
	bl ov22_022556DC
	ldr r0, _022550B0 @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	pop {r3, pc}
	nop
_022550B0: .4byte 0x021BF6DC
	thumb_func_end ov22_02255094

	thumb_func_start ov22_022550B4
ov22_022550B4: @ 0x022550B4
	push {r3, lr}
	ldr r0, _022550D0 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	bl ov22_02255738
	bl ov22_0225572C
	blx FUN_020BED0C
	pop {r3, pc}
	nop
_022550D0: .4byte 0x021BF6DC
	thumb_func_end ov22_022550B4

	thumb_func_start ov22_022550D4
ov22_022550D4: @ 0x022550D4
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _02255130 @ =0x0225BD98
	add r2, sp, #0
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r0, #0x19
	movs r1, #0xe
	bl FUN_02006C24
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r4, r1]
	adds r0, r4, #0
	add r1, sp, #0
	bl ov22_02255748
	movs r2, #0xa
	adds r0, r4, #0
	movs r1, #0xe
	lsls r2, r2, #0xa
	movs r3, #0x20
	bl ov22_02255C24
	adds r0, r4, #0
	bl ov22_022559B4
	adds r0, r4, #0
	movs r1, #0xd
	bl ov22_02255BF4
	adds r0, r4, #0
	bl ov22_022559F8
	movs r0, #0xe
	bl FUN_02018340
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl ov22_02255860
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02255130: .4byte 0x0225BD98
	thumb_func_end ov22_022550D4

	thumb_func_start ov22_02255134
ov22_02255134: @ 0x02255134
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_02255C14
	adds r0, r4, #0
	bl ov22_02255784
	adds r0, r4, #0
	bl ov22_02255984
	ldr r0, [r4, #0x40]
	bl FUN_020181C4
	adds r0, r4, #0
	bl ov22_02255C90
	adds r0, r4, #0
	bl ov22_02255A98
	adds r0, r4, #0
	bl ov22_022559E0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end ov22_02255134

	thumb_func_start ov22_02255180
ov22_02255180: @ 0x02255180
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	blx FUN_020A73C0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02255198
	adds r0, r4, #0
	bl ov22_02255794
_02255198:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _022551A4
	ldr r0, [r4, #0x20]
	bl FUN_02007768
_022551A4:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	adds r0, r4, #0
	bl ov22_02255AC0
	pop {r4, pc}
	thumb_func_end ov22_02255180

	thumb_func_start ov22_022551B4
ov22_022551B4: @ 0x022551B4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	ldr r2, [r4, #4]
	adds r5, r0, #0
	bl ov22_022557A0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	adds r0, r5, #0
	bl ov22_02255800
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_022551B4

	thumb_func_start ov22_022551D0
ov22_022551D0: @ 0x022551D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0201517C
	ldr r0, [r4]
	bl FUN_020151EC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022551D0

	thumb_func_start ov22_022551E4
ov22_022551E4: @ 0x022551E4
	push {r4, r5, r6, lr}
	sub sp, #0x70
	adds r5, r0, #0
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r4, r2, #0
	ldr r2, [r5, #0x48]
	adds r6, r3, #0
	str r2, [sp, #0x14]
	ldr r2, [r5, #0x4c]
	adds r3, r1, #0
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x50]
	str r2, [sp, #0x1c]
	ldr r2, [r5, #0x54]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [r5, #0x44]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	lsls r0, r4, #0xc
	str r0, [sp, #0x34]
	lsls r0, r6, #0xc
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x84]
	str r0, [sp, #0x44]
	movs r0, #0xe
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl FUN_02021B90
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_022551E4

	thumb_func_start ov22_02255248
ov22_02255248: @ 0x02255248
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	movs r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x48]
	bl FUN_02009A4C
	bl FUN_0200A3DC
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_02255248

	thumb_func_start ov22_02255268
ov22_02255268: @ 0x02255268
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	movs r4, #0xe
	str r4, [sp, #0xc]
	ldr r0, [r0, #0x4c]
	bl FUN_02009B04
	bl FUN_0200A640
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02255268

	thumb_func_start ov22_0225528C
ov22_0225528C: @ 0x0225528C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	movs r4, #2
	str r4, [sp, #4]
	movs r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x50]
	bl FUN_02009BC4
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225528C

	thumb_func_start ov22_022552A8
ov22_022552A8: @ 0x022552A8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	movs r4, #3
	str r4, [sp, #4]
	movs r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x54]
	bl FUN_02009BC4
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_022552A8

	thumb_func_start ov22_022552C4
ov22_022552C4: @ 0x022552C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	bl FUN_02009DC8
	adds r1, r0, #0
	ldr r0, [r4, #0x48]
	bl FUN_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552C4

	thumb_func_start ov22_022552D8
ov22_022552D8: @ 0x022552D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl FUN_02009DC8
	adds r1, r0, #0
	ldr r0, [r4, #0x4c]
	bl FUN_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552D8

	thumb_func_start ov22_022552EC
ov22_022552EC: @ 0x022552EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	bl FUN_02009DC8
	adds r1, r0, #0
	ldr r0, [r4, #0x50]
	bl FUN_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552EC

	thumb_func_start ov22_02255300
ov22_02255300: @ 0x02255300
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	bl FUN_02009DC8
	adds r1, r0, #0
	ldr r0, [r4, #0x54]
	bl FUN_02009D68
	pop {r4, pc}
	thumb_func_end ov22_02255300

	thumb_func_start ov22_02255314
ov22_02255314: @ 0x02255314
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x76
	movs r2, #0x13
	movs r3, #0xe
	bl ov22_02255CB8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov22_02255ACC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov22_02255B50
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255314

	thumb_func_start ov22_02255338
ov22_02255338: @ 0x02255338
	ldr r3, _0225533C @ =ov22_02255D0C
	bx r3
	.align 2, 0
_0225533C: .4byte ov22_02255D0C
	thumb_func_end ov22_02255338

	thumb_func_start ov22_02255340
ov22_02255340: @ 0x02255340
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	adds r6, r1, #0
	adds r5, r2, #0
	bl FUN_02022A1C
	ldr r1, [r4, #0x38]
	lsls r5, r5, #2
	adds r0, r6, #0
	adds r1, r1, r5
	blx FUN_020A7118
	ldr r0, [r4, #0x38]
	ldr r0, [r0, r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02255340

	thumb_func_start ov22_02255360
ov22_02255360: @ 0x02255360
	push {r3, r4}
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _0225538C @ =0xFFFF1FFF
	adds r3, r0, #0
	ands r1, r2
	str r1, [r0]
	adds r3, #8
	ldrh r4, [r3]
	movs r2, #3
	movs r1, #1
	bics r4, r2
	orrs r1, r4
	adds r0, #0xa
	strh r1, [r3]
	ldrh r1, [r0]
	bics r1, r2
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_0225538C: .4byte 0xFFFF1FFF
	thumb_func_end ov22_02255360

	thumb_func_start ov22_02255390
ov22_02255390: @ 0x02255390
	push {r3, r4}
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _022553EC @ =0xFFFF1FFF
	adds r3, r0, #0
	ands r2, r1
	lsrs r1, r0, #0xd
	orrs r1, r2
	str r1, [r0]
	adds r3, #0x48
	ldrh r4, [r3]
	movs r2, #0x3f
	movs r1, #0x1f
	bics r4, r2
	orrs r1, r4
	strh r1, [r3]
	adds r3, r0, #0
	adds r3, #0x4a
	ldrh r4, [r3]
	movs r1, #0x12
	bics r4, r2
	orrs r1, r4
	strh r1, [r3]
	adds r1, r0, #0
	ldr r2, _022553F0 @ =0x00000AF6
	adds r1, #0x40
	strh r2, [r1]
	adds r1, r0, #0
	ldr r2, _022553F4 @ =0x0000128F
	adds r1, #0x44
	strh r2, [r1]
	adds r2, r0, #0
	adds r2, #8
	ldrh r3, [r2]
	movs r1, #3
	adds r0, #0xa
	bics r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
_022553EC: .4byte 0xFFFF1FFF
_022553F0: .4byte 0x00000AF6
_022553F4: .4byte 0x0000128F
	thumb_func_end ov22_02255390

	thumb_func_start ov22_022553F8
ov22_022553F8: @ 0x022553F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	bl FUN_0201C2B8
	ldr r0, [r4, #0x20]
	bl FUN_02008A94
	bl FUN_0200A858
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022553F8

	thumb_func_start ov22_02255410
ov22_02255410: @ 0x02255410
	push {r3, lr}
	adds r3, r1, #0
	movs r1, #0x76
	movs r2, #0x13
	bl ov22_02255CB8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_02255410

	thumb_func_start ov22_02255420
ov22_02255420: @ 0x02255420
	push {r4, r5}
	ldrh r5, [r0, #2]
	ldrh r4, [r0]
	lsls r5, r5, #3
	cmp r1, #0
	blt _0225543A
	cmp r2, #0
	blt _0225543A
	cmp r1, r5
	bge _0225543A
	lsls r4, r4, #3
	cmp r2, r4
	blt _02255440
_0225543A:
	movs r0, #2
	pop {r4, r5}
	bx lr
_02255440:
	adds r4, r2, #0
	muls r4, r5, r4
	adds r4, r1, r4
	lsrs r5, r4, #0x1f
	lsls r2, r4, #0x1d
	subs r2, r2, r5
	movs r1, #0x1d
	rors r2, r1
	adds r1, r5, r2
	lsls r2, r1, #2
	adds r1, r3, #0
	ldr r3, [r0, #0x14]
	asrs r0, r4, #2
	lsrs r0, r0, #0x1d
	adds r0, r4, r0
	asrs r0, r0, #3
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	movs r0, #0xf
	lsls r0, r2
	lsls r1, r2
	ands r0, r3
	cmp r1, r0
	bne _02255476
	movs r0, #1
	pop {r4, r5}
	bx lr
_02255476:
	movs r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov22_02255420

	thumb_func_start ov22_0225547C
ov22_0225547C: @ 0x0225547C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl ov22_02255748
	movs r2, #0xa
	adds r0, r5, #0
	adds r1, r4, #0
	lsls r2, r2, #0xa
	movs r3, #0x20
	bl ov22_02255C24
	ldr r0, [r5, #0x20]
	movs r1, #1
	bl FUN_02008B2C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov22_02255BF4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_0225547C

	thumb_func_start ov22_022554A8
ov22_022554A8: @ 0x022554A8
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r3, _022554F4 @ =0x0225BDFC
	adds r5, r0, #0
	str r1, [r5, #0x40]
	adds r4, r2, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r1, #2
	str r0, [r2]
	ldr r0, [r5, #0x40]
	bl FUN_02019044
	ldr r0, [r5, #0x40]
	movs r1, #2
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5, #0x40]
	movs r1, #2
	bl FUN_02019EBC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_022554F4: .4byte 0x0225BDFC
	thumb_func_end ov22_022554A8

	thumb_func_start ov22_022554F8
ov22_022554F8: @ 0x022554F8
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_02255C14
	adds r0, r4, #0
	bl ov22_02255784
	adds r0, r4, #0
	bl ov22_02255C90
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022554F8

	thumb_func_start ov22_02255524
ov22_02255524: @ 0x02255524
	ldr r3, _0225552C @ =FUN_02019044
	ldr r0, [r0, #0x40]
	movs r1, #2
	bx r3
	.align 2, 0
_0225552C: .4byte FUN_02019044
	thumb_func_end ov22_02255524

	thumb_func_start ov22_02255530
ov22_02255530: @ 0x02255530
	ldr r3, _02255538 @ =FUN_02008A94
	ldr r0, [r0, #0x20]
	bx r3
	nop
_02255538: .4byte FUN_02008A94
	thumb_func_end ov22_02255530

	thumb_func_start ov22_0225553C
ov22_0225553C: @ 0x0225553C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _022555C0 @ =0x04000454
	str r3, [sp]
	movs r1, #0
	str r1, [r0]
	subs r0, #0x10
	adds r6, r2, #0
	ldr r7, [sp, #0x18]
	str r1, [r0]
	blx FUN_020A73C0
	ldr r1, _022555C4 @ =0x04000470
	lsls r0, r4, #0xc
	str r0, [r1]
	lsls r0, r6, #0xc
	str r0, [r1]
	movs r0, #0
	str r0, [r1]
	ldr r0, [sp]
	ldr r1, _022555C8 @ =0x020F983C
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r0, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	blx FUN_020C0078
	ldr r2, [r7, #8]
	ldr r1, [r7, #4]
	ldr r3, [r7]
	ldr r0, _022555CC @ =0x0400046C
	str r3, [r0]
	str r1, [r0]
	rsbs r1, r4, #0
	str r2, [r0]
	lsls r1, r1, #0xc
	str r1, [r0, #4]
	rsbs r1, r6, #0
	lsls r1, r1, #0xc
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #4]
	subs r0, #0x28
	str r1, [r0]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _022555A8
	adds r0, r5, #0
	bl ov22_02255794
_022555A8:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _022555B4
	ldr r0, [r5, #0x20]
	bl FUN_02007768
_022555B4:
	ldr r0, _022555D0 @ =0x04000448
	movs r1, #1
	str r1, [r0]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022555C0: .4byte 0x04000454
_022555C4: .4byte 0x04000470
_022555C8: .4byte 0x020F983C
_022555CC: .4byte 0x0400046C
_022555D0: .4byte 0x04000448
	thumb_func_end ov22_0225553C

	thumb_func_start ov22_022555D4
ov22_022555D4: @ 0x022555D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x19
	movs r1, #0xe
	bl FUN_02006C24
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov22_022559F8
	movs r0, #0xe
	bl FUN_02018340
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl ov22_02255860
	pop {r4, pc}
	thumb_func_end ov22_022555D4

	thumb_func_start ov22_022555FC
ov22_022555FC: @ 0x022555FC
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_02255984
	ldr r0, [r4, #0x40]
	bl FUN_020181C4
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	adds r0, r4, #0
	bl ov22_02255A98
	pop {r4, pc}
	thumb_func_end ov22_022555FC

	thumb_func_start ov22_0225561C
ov22_0225561C: @ 0x0225561C
	push {r3, lr}
	ldr r0, [r0, #0x40]
	bl FUN_0201C2B8
	bl FUN_0200A858
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_0225561C

	thumb_func_start ov22_0225562C
ov22_0225562C: @ 0x0225562C
	ldr r3, _02255630 @ =ov22_02255AC0
	bx r3
	.align 2, 0
_02255630: .4byte ov22_02255AC0
	thumb_func_end ov22_0225562C

	thumb_func_start ov22_02255634
ov22_02255634: @ 0x02255634
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02255650 @ =0x0225BE50
	add r3, sp, #0
	movs r2, #5
_0225563E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225563E
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_02255650: .4byte 0x0225BE50
	thumb_func_end ov22_02255634

	thumb_func_start ov22_02255654
ov22_02255654: @ 0x02255654
	push {r3, lr}
	blx FUN_020B28CC
	blx FUN_020BFB4C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _022556C8 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r1, [r0]
	ldr r2, _022556CC @ =0xFFFFCFFD
	ands r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	adds r1, r2, #2
	ands r3, r1
	movs r1, #0x10
	orrs r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _022556D0 @ =0x0000CFFB
	ands r1, r3
	strh r1, [r0]
	adds r1, r2, #2
	ldrh r3, [r0]
	lsrs r2, r2, #0x11
	ands r3, r1
	movs r1, #8
	orrs r1, r3
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r2, _022556D4 @ =0x04000540
	movs r0, #2
	ldr r1, _022556D8 @ =0xBFFF0000
	str r0, [r2]
	str r1, [r2, #0x40]
	movs r1, #1
	blx FUN_020A5A94
	movs r0, #1
	lsls r0, r0, #0xe
	movs r1, #1
	blx FUN_020A5D88
	pop {r3, pc}
	.align 2, 0
_022556C8: .4byte 0x04000008
_022556CC: .4byte 0xFFFFCFFD
_022556D0: .4byte 0x0000CFFB
_022556D4: .4byte 0x04000540
_022556D8: .4byte 0xBFFF0000
	thumb_func_end ov22_02255654

	thumb_func_start ov22_022556DC
ov22_022556DC: @ 0x022556DC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02255724 @ =0x0225BD78
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02255728 @ =0xFFCFFFEF
	ands r1, r0
	movs r0, #0x10
	orrs r0, r1
	str r0, [r2]
	blx FUN_020A7944
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r0, #0x1f
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x13
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02255724: .4byte 0x0225BD78
_02255728: .4byte 0xFFCFFFEF
	thumb_func_end ov22_022556DC

	thumb_func_start ov22_0225572C
ov22_0225572C: @ 0x0225572C
	push {r3, lr}
	blx FUN_020A5B1C
	blx FUN_020A5F50
	pop {r3, pc}
	thumb_func_end ov22_0225572C

	thumb_func_start ov22_02255738
ov22_02255738: @ 0x02255738
	push {r3, lr}
	bl FUN_0201FF00
	bl FUN_0201FF68
	blx FUN_020A7944
	pop {r3, pc}
	thumb_func_end ov22_02255738

	thumb_func_start ov22_02255748
ov22_02255748: @ 0x02255748
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02015064
	str r0, [r5]
	movs r1, #0x76
	ldr r0, [r4, #0xc]
	lsls r1, r1, #2
	bl FUN_02018144
	str r0, [r5, #4]
	movs r0, #0x76
	str r0, [r5, #8]
	movs r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	movs r1, #0x4c
	bl FUN_02018144
	str r0, [r5, #0x10]
	movs r0, #0x13
	str r0, [r5, #0x14]
	movs r0, #0
	str r0, [r5, #0x18]
	movs r0, #1
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02255748

	thumb_func_start ov22_02255784
ov22_02255784: @ 0x02255784
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020150A8
	movs r0, #0
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov22_02255784

	thumb_func_start ov22_02255794
ov22_02255794: @ 0x02255794
	ldr r3, _0225579C @ =FUN_020150EC
	ldr r0, [r0]
	bx r3
	nop
_0225579C: .4byte FUN_020150EC
	thumb_func_end ov22_02255794

	thumb_func_start ov22_022557A0
ov22_022557A0: @ 0x022557A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	ble _022557FC
	adds r7, r5, #0
	adds r6, r4, #0
	adds r7, #0xc
_022557BA:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _022557C6
	bl FUN_02022974
_022557C6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022557DC
	adds r0, r6, #0
	bl FUN_02015128
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #4]
	lsls r2, r2, #2
	str r0, [r1, r2]
	b _022557E6
_022557DC:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #4]
	lsls r2, r1, #2
	movs r1, #0
	str r1, [r0, r2]
_022557E6:
	ldr r0, [r7]
	adds r4, #8
	adds r0, r0, #1
	str r0, [r7]
	ldr r0, [sp, #4]
	adds r6, #8
	adds r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _022557BA
_022557FC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022557A0

	thumb_func_start ov22_02255800
ov22_02255800: @ 0x02255800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	ble _0225585C
	adds r7, r5, #0
	adds r6, r4, #0
	adds r7, #0x18
_0225581A:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _02255826
	bl FUN_02022974
_02255826:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225583C
	adds r0, r6, #0
	bl FUN_020151A4
	ldr r2, [r5, #0x18]
	ldr r1, [r5, #0x10]
	lsls r2, r2, #2
	str r0, [r1, r2]
	b _02255846
_0225583C:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x10]
	lsls r2, r1, #2
	movs r1, #0
	str r1, [r0, r2]
_02255846:
	ldr r0, [r7]
	adds r4, #0xc
	adds r0, r0, #1
	str r0, [r7]
	ldr r0, [sp, #4]
	adds r6, #0xc
	adds r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0225581A
_0225585C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02255800

	thumb_func_start ov22_02255860
ov22_02255860: @ 0x02255860
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _02255970 @ =0x0225BDC4
	adds r4, r0, #0
	ldm r5!, {r0, r1}
	add r3, sp, #0x70
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	ldr r0, [r4, #0x40]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0xe
	bl FUN_02019690
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _02255974 @ =0x0225BDE0
	add r3, sp, #0x54
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #2
	str r0, [r3]
	ldr r0, [r4, #0x40]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	movs r3, #0xe
	bl FUN_02019690
	ldr r0, [r4, #0x40]
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _02255978 @ =0x0225BE18
	add r3, sp, #0x38
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #3
	str r0, [r3]
	ldr r0, [r4, #0x40]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	movs r3, #0xe
	bl FUN_02019690
	ldr r0, [r4, #0x40]
	movs r1, #3
	bl FUN_02019EBC
	ldr r5, _0225597C @ =0x0225BDA8
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #4
	str r0, [r3]
	ldr r0, [r4, #0x40]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0xe
	bl FUN_02019690
	ldr r0, [r4, #0x40]
	movs r1, #4
	bl FUN_02019EBC
	ldr r5, _02255980 @ =0x0225BE34
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #5
	str r0, [r3]
	ldr r0, [r4, #0x40]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	movs r3, #0xe
	bl FUN_02019690
	ldr r0, [r4, #0x40]
	movs r1, #5
	bl FUN_02019EBC
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_02255970: .4byte 0x0225BDC4
_02255974: .4byte 0x0225BDE0
_02255978: .4byte 0x0225BE18
_0225597C: .4byte 0x0225BDA8
_02255980: .4byte 0x0225BE34
	thumb_func_end ov22_02255860

	thumb_func_start ov22_02255984
ov22_02255984: @ 0x02255984
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x40]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x40]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x40]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0x40]
	movs r1, #5
	bl FUN_02019044
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02255984

	thumb_func_start ov22_022559B4
ov22_022559B4: @ 0x022559B4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x77
	movs r1, #0xe
	bl FUN_0202298C
	movs r1, #0x77
	str r0, [r4, #0x34]
	movs r0, #0xe
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x77
	movs r1, #0
	lsls r2, r2, #2
	str r0, [r4, #0x38]
	blx FUN_020D5124
	movs r0, #0x77
	str r0, [r4, #0x3c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022559B4

	thumb_func_start ov22_022559E0
ov22_022559E0: @ 0x022559E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_020181C4
	ldr r0, [r4, #0x34]
	bl FUN_020229D8
	movs r0, #0
	str r0, [r4, #0x3c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022559E0

	thumb_func_start ov22_022559F8
ov22_022559F8: @ 0x022559F8
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _02255A94 @ =0x0225BD88
	add r3, sp, #0x14
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	movs r1, #0x10
	adds r0, r2, #0
	adds r2, r1, #0
	bl FUN_0201E88C
	movs r0, #5
	movs r1, #0xe
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x1f
	str r3, [sp, #0xc]
	movs r2, #0xe
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r4, #0
	movs r0, #0x30
	adds r1, #0x58
	movs r2, #0xe
	bl FUN_020095C4
	str r0, [r4, #0x44]
	adds r0, r4, #0
	movs r2, #2
	adds r0, #0x58
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r0, #8
	movs r1, #0
	movs r2, #0xe
	bl FUN_02009714
	str r0, [r4, #0x48]
	movs r0, #5
	movs r1, #1
	movs r2, #0xe
	bl FUN_02009714
	str r0, [r4, #0x4c]
	movs r0, #0x30
	movs r1, #2
	movs r2, #0xe
	bl FUN_02009714
	str r0, [r4, #0x50]
	movs r0, #0x30
	movs r1, #3
	movs r2, #0xe
	bl FUN_02009714
	str r0, [r4, #0x54]
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02255A94: .4byte 0x0225BD88
	thumb_func_end ov22_022559F8

	thumb_func_start ov22_02255A98
ov22_02255A98: @ 0x02255A98
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	bl FUN_02021964
	movs r4, #0
_02255AA4:
	ldr r0, [r5, #0x48]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02255AA4
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255A98

	thumb_func_start ov22_02255AC0
ov22_02255AC0: @ 0x02255AC0
	ldr r3, _02255AC8 @ =FUN_020219F8
	ldr r0, [r0, #0x44]
	bx r3
	nop
_02255AC8: .4byte FUN_020219F8
	thumb_func_end ov22_02255AC0

	thumb_func_start ov22_02255ACC
ov22_02255ACC: @ 0x02255ACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r4, #0
_02255AD8:
	movs r0, #1
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r4, #1
	movs r2, #0
	movs r3, #0xe
	bl FUN_0200723C
	str r0, [sp, #4]
	cmp r0, #0
	bne _02255AF6
	bl FUN_02022974
_02255AF6:
	ldr r1, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	bl ov22_02255340
	ldr r1, [r7]
	adds r4, r4, #1
	adds r1, r1, r5
	str r0, [r1, #4]
	ldr r1, [r6]
	ldr r0, [r7]
	str r1, [r0, r5]
	adds r5, #8
	cmp r4, #0x64
	blt _02255AD8
	movs r0, #1
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #6
	movs r1, #0
	ldr r0, [r6, r0]
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200723C
	adds r4, r0, #0
	ldr r0, [r7, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl FUN_02022A1C
	ldr r1, [r7, #8]
	adds r0, r4, #0
	adds r1, r1, #4
	blx FUN_020A71B0
	ldr r1, [r6]
	ldr r0, [r7, #8]
	str r1, [r0]
	ldr r0, [r7, #8]
	movs r1, #3
	str r1, [r0, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02255ACC

	thumb_func_start ov22_02255B50
ov22_02255B50: @ 0x02255B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x87
	adds r4, r1, #0
	movs r6, #0
	str r0, [sp, #8]
_02255B5E:
	movs r0, #1
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #6
	adds r1, r6, #0
	ldr r0, [r5, r0]
	adds r1, #0xce
	movs r2, #0
	movs r3, #0xe
	bl FUN_0200723C
	adds r2, r6, #0
	adds r1, r0, #0
	adds r2, #0x64
	adds r0, r5, #0
	lsls r7, r2, #3
	bl ov22_02255340
	ldr r1, [r4]
	movs r2, #0
	adds r1, r1, r7
	str r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, [r4]
	movs r3, #0xe
	str r1, [r0, r7]
	adds r0, r6, #1
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #8]
	bl FUN_0200723C
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	bl FUN_02022A1C
	ldr r1, [sp, #4]
	movs r0, #0xc
	adds r7, r1, #0
	muls r7, r0, r7
	ldr r1, [r4, #8]
	ldr r0, [sp, #0xc]
	adds r1, r1, r7
	adds r1, r1, #4
	blx FUN_020A71B0
	ldr r0, [r4, #8]
	adds r0, r0, r7
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02255BD4
	bl FUN_02022974
_02255BD4:
	ldr r1, [r5]
	ldr r0, [r4, #8]
	adds r6, r6, #1
	str r1, [r0, r7]
	ldr r0, [r4, #8]
	adds r1, r0, r7
	movs r0, #1
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	adds r0, r0, #4
	str r0, [sp, #8]
	cmp r6, #0x12
	blt _02255B5E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02255B50

	thumb_func_start ov22_02255BF4
ov22_02255BF4: @ 0x02255BF4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r2, #0
	movs r0, #6
	adds r3, r1, #0
	str r2, [sp]
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #0xeb
	bl FUN_0200723C
	str r0, [r4, #0x30]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_02255BF4

	thumb_func_start ov22_02255C14
ov22_02255C14: @ 0x02255C14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end ov22_02255C14

	thumb_func_start ov22_02255C24
ov22_02255C24: @ 0x02255C24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0200762C
	str r0, [r5, #0x20]
	ldr r3, _02255C80 @ =0x02100DEC
	movs r1, #0
	ldr r3, [r3]
	adds r0, r4, #0
	adds r2, r1, #0
	blx r3
	str r0, [r5, #0x24]
	ldr r3, _02255C84 @ =0x02100DF4
	adds r0, r6, #0
	ldr r3, [r3]
	movs r1, #0
	movs r2, #1
	blx r3
	str r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r2, _02255C88 @ =0x7FFF0000
	lsls r1, r3, #0x10
	ands r2, r3
	lsrs r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsrs r1, r1, #0xd
	lsls r2, r2, #4
	bl FUN_02008A78
	ldr r3, [r5, #0x28]
	ldr r2, _02255C8C @ =0xFFFF0000
	lsls r1, r3, #0x10
	ands r2, r3
	lsrs r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsrs r1, r1, #0xd
	lsls r2, r2, #3
	bl FUN_02008A84
	movs r0, #1
	str r0, [r5, #0x2c]
	pop {r4, r5, r6, pc}
	nop
_02255C80: .4byte 0x02100DEC
_02255C84: .4byte 0x02100DF4
_02255C88: .4byte 0x7FFF0000
_02255C8C: .4byte 0xFFFF0000
	thumb_func_end ov22_02255C24

	thumb_func_start ov22_02255C90
ov22_02255C90: @ 0x02255C90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	bl FUN_02007B6C
	ldr r1, _02255CB0 @ =0x02100DF0
	ldr r0, [r4, #0x24]
	ldr r1, [r1]
	blx r1
	ldr r1, _02255CB4 @ =0x02100DF8
	ldr r0, [r4, #0x28]
	ldr r1, [r1]
	blx r1
	movs r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
_02255CB0: .4byte 0x02100DF0
_02255CB4: .4byte 0x02100DF8
	thumb_func_end ov22_02255C90

	thumb_func_start ov22_02255CB8
ov22_02255CB8: @ 0x02255CB8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	lsls r0, r4, #3
	str r0, [sp]
	adds r7, r3, #0
	ldr r1, [sp]
	adds r0, r7, #0
	adds r6, r2, #0
	bl FUN_02018144
	ldr r2, [sp]
	movs r1, #0
	str r0, [r5]
	blx FUN_020D5124
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_0202298C
	str r0, [r5, #0x10]
	str r4, [r5, #4]
	movs r0, #0xc
	adds r4, r6, #0
	muls r4, r0, r4
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_02018144
	movs r1, #0
	adds r2, r4, #0
	str r0, [r5, #8]
	blx FUN_020D5124
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0202298C
	str r0, [r5, #0x14]
	str r6, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02255CB8

	thumb_func_start ov22_02255D0C
ov22_02255D0C: @ 0x02255D0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02255D1E
	bl FUN_020229D8
	movs r0, #0
	str r0, [r4, #0x10]
_02255D1E:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02255D2C
	bl FUN_020229D8
	movs r0, #0
	str r0, [r4, #0x14]
_02255D2C:
	ldr r0, [r4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4]
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02255D0C

	thumb_func_start ov22_02255D44
ov22_02255D44: @ 0x02255D44
	push {r3, r4, r5, lr}
	sub sp, #8
	movs r2, #2
	adds r4, r0, #0
	movs r0, #3
	movs r1, #0xd
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r2, #1
	movs r0, #3
	movs r1, #0xe
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	ldr r1, _02255E40 @ =0x000006E4
	adds r0, r4, #0
	movs r2, #0xd
	bl FUN_0200681C
	ldr r2, _02255E40 @ =0x000006E4
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020D5124
	ldr r0, _02255E44 @ =ov22_02256940
	adds r1, r5, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r0, r4, #0
	bl FUN_02006840
	adds r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, _02255E48 @ =0x000006D4
	str r1, [r5, r0]
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r0, [r4, #8]
	adds r1, r5, r1
	bl ov22_0225894C
	adds r0, r5, #0
	bl ov22_022566C0
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0x8d
	movs r2, #0xd
	bl ov22_02259484
	movs r0, #0xaf
	lsls r0, r0, #2
	movs r1, #0xd
	bl ov22_02254DE0
	movs r1, #0xd9
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #0xa
	movs r3, #0
	bl ov22_02256708
	adds r0, r5, #0
	bl ov22_022567FC
	adds r0, r5, #0
	movs r1, #0
	bl ov22_02256948
	adds r0, r5, #0
	bl ov22_0225699C
	ldr r1, [r4, #0xc]
	adds r0, r5, #0
	bl ov22_02256BAC
	movs r0, #0x56
	lsls r0, r0, #4
	adds r1, r5, r0
	movs r2, #0xfd
	str r1, [sp]
	movs r1, #1
	subs r0, #0xc8
	lsls r2, r2, #2
	str r1, [sp, #4]
	adds r1, r5, r2
	subs r2, #0x8c
	adds r0, r5, r0
	adds r2, r5, r2
	adds r3, r5, #0
	bl ov22_022589E0
	movs r0, #0xd
	bl FUN_02015920
	movs r1, #0x6b
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0xd
	movs r1, #1
	bl FUN_0201A778
	ldr r2, _02255E4C @ =0x000006B4
	movs r1, #0
	str r0, [r5, r2]
	subs r2, #0xc
	str r1, [r5, r2]
	movs r0, #0x35
	adds r2, r1, #0
	bl FUN_02004550
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02255E40: .4byte 0x000006E4
_02255E44: .4byte ov22_02256940
_02255E48: .4byte 0x000006D4
_02255E4C: .4byte 0x000006B4
	thumb_func_end ov22_02255D44

	thumb_func_start ov22_02255E50
ov22_02255E50: @ 0x02255E50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r7, #0
	movs r6, #0
	bl FUN_02006840
	ldr r1, [r5]
	cmp r1, #0xc
	bhi _02255F1E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02255E78: @ jump table
	.2byte _02255E92 - _02255E78 - 2 @ case 0
	.2byte _02255E92 - _02255E78 - 2 @ case 1
	.2byte _02255EAE - _02255E78 - 2 @ case 2
	.2byte _02255EBE - _02255E78 - 2 @ case 3
	.2byte _02255EEC - _02255E78 - 2 @ case 4
	.2byte _02255F0E - _02255E78 - 2 @ case 5
	.2byte _02255F3E - _02255E78 - 2 @ case 6
	.2byte _02255F74 - _02255E78 - 2 @ case 7
	.2byte _02255F9A - _02255E78 - 2 @ case 8
	.2byte _02255FDA - _02255E78 - 2 @ case 9
	.2byte _02256012 - _02255E78 - 2 @ case 10
	.2byte _02256030 - _02255E78 - 2 @ case 11
	.2byte _0225604E - _02255E78 - 2 @ case 12
_02255E92:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0xd
	str r1, [sp, #8]
	movs r1, #5
	adds r2, r1, #0
	adds r3, r6, #0
	bl FUN_0200F174
	movs r0, #2
	str r0, [r5]
	b _0225606A
_02255EAE:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _02255F1E
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225606A
_02255EBE:
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _02255EE6
	movs r0, #1
	bl FUN_02002B20
	movs r0, #0x56
	lsls r0, r0, #4
	ldr r2, _02256078 @ =0x00000181
	adds r0, r4, r0
	movs r1, #0x1a
	movs r3, #0x2f
	bl ov22_0225A660
	ldr r1, _0225607C @ =0x000006D8
	str r0, [r4, r1]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225606A
_02255EE6:
	movs r0, #6
	str r0, [r5]
	b _0225606A
_02255EEC:
	ldr r0, _0225607C @ =0x000006D8
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02255F1E
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov22_0225A6A0
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225606A
_02255F0E:
	ldr r0, _02256080 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	ands r1, r0
	ldr r0, _02256084 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	orrs r0, r1
	bne _02255F20
_02255F1E:
	b _0225606A
_02255F20:
	movs r0, #0x56
	lsls r0, r0, #4
	ldr r2, _02256078 @ =0x00000181
	adds r0, r4, r0
	movs r1, #0x1a
	movs r3, #0x30
	bl ov22_0225A628
	adds r0, r6, #0
	bl FUN_02002B20
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225606A
_02255F3E:
	ldr r1, _02256088 @ =0x000006A8
	ldr r0, [r4, r1]
	cmp r0, #3
	bne _02255F54
	adds r1, r1, #4
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov22_02256C48
	movs r0, #7
	str r0, [r5]
_02255F54:
	ldr r0, _0225608C @ =0x00000498
	adds r0, r4, r0
	bl ov22_0225890C
	adds r0, r4, #0
	bl ov22_02257564
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov22_0225A610
	adds r0, r4, #0
	bl ov22_02256AC4
	b _0225606A
_02255F74:
	ldr r0, _02256090 @ =0x000006AC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0225606A
	adds r1, r6, #0
	str r1, [r4, r0]
	movs r1, #8
	str r1, [r5]
	movs r1, #4
	subs r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _02256094 @ =0x0000047C
	movs r2, #0xe
	adds r0, r4, r1
	subs r1, #0x88
	adds r1, r4, r1
	bl ov22_0225AF44
	b _0225606A
_02255F9A:
	ldr r1, _02256088 @ =0x000006A8
	ldr r0, [r4, r1]
	cmp r0, #9
	bne _02255FB2
	adds r1, r1, #4
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov22_02256DB8
	movs r0, #0xa
	str r0, [r5]
	b _0225606A
_02255FB2:
	cmp r0, #8
	bne _02255FC6
	movs r0, #9
	str r0, [r5]
	movs r0, #5
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov22_022575B4
	b _0225606A
_02255FC6:
	adds r0, r4, #0
	bl ov22_02257278
	ldr r1, _02256088 @ =0x000006A8
	str r0, [r4, r1]
	ldr r0, _02256094 @ =0x0000047C
	adds r0, r4, r0
	bl ov22_0225AF68
	b _0225606A
_02255FDA:
	ldr r0, _02256088 @ =0x000006A8
	ldr r1, [r4, r0]
	cmp r1, #6
	bne _02255FEE
	movs r1, #1
	adds r0, #0x10
	str r1, [r4, r0]
	movs r0, #0xb
	str r0, [r5]
	b _0225606A
_02255FEE:
	cmp r1, #7
	bne _02255FFE
	adds r1, r6, #0
	adds r0, #0x10
	str r1, [r4, r0]
	movs r0, #0xb
	str r0, [r5]
	b _0225606A
_02255FFE:
	adds r0, r4, #0
	bl ov22_02257624
	ldr r1, _02256088 @ =0x000006A8
	str r0, [r4, r1]
	ldr r0, _02256094 @ =0x0000047C
	adds r0, r4, r0
	bl ov22_0225AF68
	b _0225606A
_02256012:
	ldr r0, _02256090 @ =0x000006AC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0225606A
	adds r2, r6, #0
	str r2, [r4, r0]
	movs r1, #6
	str r1, [r5]
	subs r0, r0, #4
	str r2, [r4, r0]
	ldr r0, _02256094 @ =0x0000047C
	adds r0, r4, r0
	bl ov22_0225AF74
	b _0225606A
_02256030:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0xd
	str r1, [sp, #8]
	adds r1, r6, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225606A
_0225604E:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225606A
	adds r0, r6, #0
	str r0, [r5]
	ldr r0, _02256088 @ =0x000006A8
	movs r1, #0xa
	str r1, [r4, r0]
	ldr r0, _02256094 @ =0x0000047C
	movs r6, #1
	adds r0, r4, r0
	bl ov22_0225AF74
_0225606A:
	adds r0, r4, #0
	bl ov22_022566EC
	adds r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02256078: .4byte 0x00000181
_0225607C: .4byte 0x000006D8
_02256080: .4byte 0x021BF67C
_02256084: .4byte 0x021BF6BC
_02256088: .4byte 0x000006A8
_0225608C: .4byte 0x00000498
_02256090: .4byte 0x000006AC
_02256094: .4byte 0x0000047C
	thumb_func_end ov22_02255E50

	thumb_func_start ov22_02256098
ov22_02256098: @ 0x02256098
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_02006840
	adds r5, r0, #0
	ldr r0, _02256168 @ =0x000006B8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _022560C8
	ldr r0, [r5, #0x10]
	movs r1, #7
	bl FUN_0202CFEC
	movs r1, #0xfd
	lsls r1, r1, #2
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x14]
	adds r1, r4, r1
	bl ov22_02256F38
_022560C8:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _022560E0
	ldr r0, _02256168 @ =0x000006B8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _022560DC
	movs r0, #1
	str r0, [r1]
	b _022560E0
_022560DC:
	movs r0, #0
	str r0, [r1]
_022560E0:
	movs r0, #0x6b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02015938
	ldr r0, _0225616C @ =0x000006B4
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0201A928
	adds r0, r4, #0
	bl ov22_02256C38
	ldr r0, _02256170 @ =0x00000498
	adds r0, r4, r0
	bl ov22_02258A34
	adds r0, r4, #0
	bl ov22_02256AB4
	adds r0, r4, #0
	bl ov22_0225698C
	adds r0, r4, #0
	bl ov22_022567D8
	adds r0, r4, #0
	bl ov22_022568B8
	movs r0, #0xd9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	movs r0, #0xd9
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, #8
	adds r0, r4, r0
	bl ov22_022594AC
	adds r0, r4, #0
	bl ov22_022566F4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201E530
	cmp r0, #1
	beq _02256152
	bl FUN_02022974
_02256152:
	adds r0, r6, #0
	bl FUN_02006830
	movs r0, #0xd
	bl FUN_0201807C
	movs r0, #0xe
	bl FUN_0201807C
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_02256168: .4byte 0x000006B8
_0225616C: .4byte 0x000006B4
_02256170: .4byte 0x00000498
	thumb_func_end ov22_02256098

	thumb_func_start ov22_02256174
ov22_02256174: @ 0x02256174
	push {r3, r4, r5, lr}
	sub sp, #8
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0xd
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r2, #1
	movs r0, #3
	movs r1, #0xe
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	ldr r1, _022562D8 @ =0x000006E4
	adds r0, r5, #0
	movs r2, #0xd
	bl FUN_0200681C
	ldr r2, _022562D8 @ =0x000006E4
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, _022562DC @ =ov22_02256940
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r0, r5, #0
	bl FUN_02006840
	adds r5, r0, #0
	movs r1, #0x1b
	ldr r0, [r5, #0xc]
	lsls r1, r1, #6
	str r0, [r4, r1]
	ldr r2, [r5, #0x10]
	adds r0, r1, #4
	str r2, [r4, r0]
	adds r0, r1, #0
	ldr r2, [r5, #0x14]
	adds r0, #8
	str r2, [r4, r0]
	adds r0, r1, #0
	ldr r2, [r5, #8]
	adds r0, #0xc
	str r2, [r4, r0]
	ldr r0, [r5, #0x1c]
	adds r1, #0x10
	str r0, [r4, r1]
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r0, [r5, #0x18]
	adds r1, r4, r1
	bl ov22_0225894C
	adds r0, r4, #0
	bl ov22_022566C0
	ldr r0, [r4, #0x44]
	movs r1, #0
	bl FUN_020219A4
	bl FUN_02039734
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x8d
	movs r2, #0xd
	bl ov22_02259484
	movs r0, #0xaf
	lsls r0, r0, #2
	movs r1, #0xd
	bl ov22_02254DE0
	movs r1, #0xd9
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r5, #0x20]
	ldr r0, _022562E0 @ =0x000006D4
	str r1, [r4, r0]
	subs r1, r0, #4
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x16]
	cmp r1, #0
	bne _0225624E
	ldr r0, [r5, #0xc]
	bl ov22_02257580
	ldr r1, _022562E4 @ =0x000006BC
	str r0, [r4, r1]
	b _02256254
_0225624E:
	movs r1, #0x14
	subs r0, #0x18
	str r1, [r4, r0]
_02256254:
	ldr r2, _022562E4 @ =0x000006BC
	ldr r1, [r5]
	ldr r2, [r4, r2]
	adds r0, r4, #0
	bl ov22_02256790
	adds r0, r4, #0
	bl ov22_022567FC
	adds r0, r4, #0
	movs r1, #0
	bl ov22_02256948
	adds r0, r4, #0
	bl ov22_02256A28
	ldr r0, [r5, #0x20]
	ldr r1, _022562E4 @ =0x000006BC
	str r0, [sp]
	ldr r1, [r4, r1]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0x1c]
	adds r0, r4, #0
	bl ov22_02256BF4
	movs r0, #0x56
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r2, #0xfd
	str r1, [sp]
	movs r1, #0
	subs r0, #0xc8
	lsls r2, r2, #2
	str r1, [sp, #4]
	adds r1, r4, r2
	subs r2, #0x8c
	adds r0, r4, r0
	adds r2, r4, r2
	adds r3, r4, #0
	bl ov22_022589E0
	movs r0, #0xd
	bl FUN_02015920
	movs r1, #0x6b
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #0xd
	movs r1, #1
	bl FUN_0201A778
	ldr r1, _022562E8 @ =0x000006B4
	movs r2, #0
	str r0, [r4, r1]
	adds r0, r1, #0
	subs r0, #0xc
	adds r1, #0x1c
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	ldrb r0, [r0, #0x16]
	bl FUN_020959F4
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022562D8: .4byte 0x000006E4
_022562DC: .4byte ov22_02256940
_022562E0: .4byte 0x000006D4
_022562E4: .4byte 0x000006BC
_022562E8: .4byte 0x000006B4
	thumb_func_end ov22_02256174

	thumb_func_start ov22_022562EC
ov22_022562EC: @ 0x022562EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	bl FUN_0200682C
	ldr r1, [r4]
	adds r5, r0, #0
	movs r6, #0
	cmp r1, #0x14
	bhi _0225634E
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0225630C: @ jump table
	.2byte _02256336 - _0225630C - 2 @ case 0
	.2byte _02256346 - _0225630C - 2 @ case 1
	.2byte _02256358 - _0225630C - 2 @ case 2
	.2byte _0225638E - _0225630C - 2 @ case 3
	.2byte _022563AC - _0225630C - 2 @ case 4
	.2byte _022563C2 - _0225630C - 2 @ case 5
	.2byte _022563E0 - _0225630C - 2 @ case 6
	.2byte _02256402 - _0225630C - 2 @ case 7
	.2byte _02256420 - _0225630C - 2 @ case 8
	.2byte _0225643A - _0225630C - 2 @ case 9
	.2byte _0225645E - _0225630C - 2 @ case 10
	.2byte _02256470 - _0225630C - 2 @ case 11
	.2byte _0225648E - _0225630C - 2 @ case 12
	.2byte _022564AA - _0225630C - 2 @ case 13
	.2byte _02256518 - _0225630C - 2 @ case 14
	.2byte _0225654A - _0225630C - 2 @ case 15
	.2byte _022565C8 - _0225630C - 2 @ case 16
	.2byte _022565C8 - _0225630C - 2 @ case 17
	.2byte _022565C8 - _0225630C - 2 @ case 18
	.2byte _02256568 - _0225630C - 2 @ case 19
	.2byte _02256598 - _0225630C - 2 @ case 20
_02256336:
	movs r0, #0x2a
	movs r1, #0x1e
	bl FUN_0200564C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_02256346:
	bl FUN_02005684
	cmp r0, #0
	beq _02256350
_0225634E:
	b _022565C8
_02256350:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_02256358:
	bl ov22_02257104
	ldr r2, _022565D4 @ =0x000006BC
	adds r0, r5, #0
	ldr r2, [r5, r2]
	adds r1, r6, #0
	bl ov22_02257524
	ldr r0, _022565D8 @ =0x000006C4
	ldr r0, [r5, r0]
	cmp r0, #3
	beq _0225637A
	adds r0, r5, #0
	movs r1, #0x1a
	bl ov22_0225751C
	b _02256382
_0225637A:
	adds r0, r5, #0
	movs r1, #0x1c
	bl ov22_0225751C
_02256382:
	ldr r1, _022565DC @ =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_0225638E:
	ldr r0, _022565DC @ =0x000006D8
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02256496
	adds r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_022563AC:
	ldr r1, _022565E0 @ =0x000006CC
	ldr r1, [r5, r1]
	adds r1, #0x1d
	bl ov22_0225751C
	ldr r1, _022565DC @ =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_022563C2:
	ldr r0, _022565DC @ =0x000006D8
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02256496
	adds r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_022563E0:
	ldr r1, _022565D8 @ =0x000006C4
	ldr r1, [r5, r1]
	cmp r1, #3
	beq _022563F0
	movs r1, #0x2a
	bl ov22_0225751C
	b _022563F6
_022563F0:
	movs r1, #0x29
	bl ov22_0225751C
_022563F6:
	ldr r1, _022565DC @ =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_02256402:
	ldr r0, _022565DC @ =0x000006D8
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02256496
	adds r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_02256420:
	movs r0, #0x6d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _02256432
	movs r0, #2
	bl FUN_020364F0
_02256432:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_0225643A:
	movs r0, #0x6d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _02256458
	movs r0, #2
	bl FUN_02036540
	cmp r0, #0
	beq _02256496
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_02256458:
	adds r0, r1, #1
	str r0, [r4]
	b _022565C8
_0225645E:
	bl ov22_0225718C
	ldr r0, _022565E4 @ =0x00000643
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_02256470:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0xd
	str r1, [sp, #8]
	movs r1, #0x11
	movs r2, #0x13
	adds r3, r6, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_0225648E:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _02256498
_02256496:
	b _022565C8
_02256498:
	ldr r1, _022565E8 @ =0x00000491
	movs r0, #7
	adds r2, r6, #0
	bl FUN_02004550
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_022564AA:
	ldr r0, _022565EC @ =0x000006A8
	ldr r1, [r5, r0]
	cmp r1, #3
	bne _022564DE
	adds r0, #0x28
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02095CA8
	movs r0, #0x6d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _022564D8
	movs r0, #0x56
	lsls r0, r0, #4
	ldr r2, _022565F0 @ =0x00000181
	adds r0, r5, r0
	movs r1, #0x1a
	movs r3, #0x2e
	bl ov22_0225A628
_022564D8:
	movs r0, #0xe
	str r0, [r4]
	b _022565C8
_022564DE:
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov22_0225A6C4
	cmp r0, #0
	bne _022564F8
	movs r0, #0xf
	str r0, [r4]
	movs r0, #0x1a
	lsls r0, r0, #6
	bl FUN_02005748
_022564F8:
	ldr r0, _022565F4 @ =0x00000498
	adds r0, r5, r0
	bl ov22_0225890C
	adds r0, r5, #0
	bl ov22_02257564
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov22_0225A610
	adds r0, r5, #0
	bl ov22_02256AC4
	b _022565C8
_02256518:
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov22_0225A6C4
	cmp r0, #0
	bne _02256532
	movs r0, #0xf
	str r0, [r4]
	movs r0, #0x1a
	lsls r0, r0, #6
	bl FUN_02005748
_02256532:
	adds r0, r5, #0
	bl ov22_02257564
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov22_0225A610
	adds r0, r5, #0
	bl ov22_022577A0
	b _022565C8
_0225654A:
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov22_0225A610
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov22_0225A6D4
	cmp r0, #0
	beq _022565C8
	movs r0, #0x13
	str r0, [r4]
	b _022565C8
_02256568:
	movs r0, #0x1a
	lsls r0, r0, #6
	bl FUN_020057D4
	cmp r0, #1
	beq _022565C8
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0xd
	str r1, [sp, #8]
	movs r1, #0x1a
	adds r2, r1, #0
	adds r3, r6, #0
	bl FUN_0200F174
	ldr r0, _022565F8 @ =0x00000684
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022565C8
_02256598:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _022565C8
	adds r0, r6, #0
	str r0, [r4]
	movs r2, #1
	ldr r0, _022565EC @ =0x000006A8
	movs r1, #0xa
	str r1, [r5, r0]
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _022565FC @ =0xFFFF1FFF
	movs r6, #1
	ands r0, r1
	str r0, [r2]
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r0, r5, r0
	subs r1, #0x41
	movs r2, #0x28
	bl ov22_02257AB0
_022565C8:
	adds r0, r5, #0
	bl ov22_022566EC
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022565D4: .4byte 0x000006BC
_022565D8: .4byte 0x000006C4
_022565DC: .4byte 0x000006D8
_022565E0: .4byte 0x000006CC
_022565E4: .4byte 0x00000643
_022565E8: .4byte 0x00000491
_022565EC: .4byte 0x000006A8
_022565F0: .4byte 0x00000181
_022565F4: .4byte 0x00000498
_022565F8: .4byte 0x00000684
_022565FC: .4byte 0xFFFF1FFF
	thumb_func_end ov22_022562EC

	thumb_func_start ov22_02256600
ov22_02256600: @ 0x02256600
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	movs r2, #0x1b
	adds r3, r0, #0
	movs r1, #0xfd
	lsls r2, r2, #6
	ldr r0, [r3, #4]
	lsls r1, r1, #2
	ldr r2, [r4, r2]
	ldr r3, [r3, #0x24]
	adds r1, r4, r1
	bl ov22_02256FD8
	movs r0, #0x6b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02015938
	ldr r0, _022566B8 @ =0x000006B4
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0201A928
	adds r0, r4, #0
	bl ov22_02256C38
	ldr r0, _022566BC @ =0x00000498
	adds r0, r4, r0
	bl ov22_02258A34
	adds r0, r4, #0
	bl ov22_02256AB4
	adds r0, r4, #0
	bl ov22_0225698C
	adds r0, r4, #0
	bl ov22_022567D8
	adds r0, r4, #0
	bl ov22_022568B8
	movs r0, #0xd9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	movs r0, #0xd9
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, #8
	adds r0, r4, r0
	bl ov22_022594AC
	adds r0, r4, #0
	bl ov22_022566F4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201E530
	cmp r0, #1
	beq _02256698
	bl FUN_02022974
_02256698:
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0xd
	bl FUN_0201807C
	movs r0, #0xe
	bl FUN_0201807C
	bl FUN_02095A24
	bl FUN_02039794
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_022566B8: .4byte 0x000006B4
_022566BC: .4byte 0x00000498
	thumb_func_end ov22_02256600

	thumb_func_start ov22_022566C0
ov22_022566C0: @ 0x022566C0
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	bl ov22_02255094
	adds r0, r4, #0
	bl ov22_022550D4
	adds r0, r4, #0
	add r1, sp, #0
	bl ov22_02255314
	adds r0, r4, #0
	add r1, sp, #0
	bl ov22_022551B4
	add r0, sp, #0
	bl ov22_02255338
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022566C0

	thumb_func_start ov22_022566EC
ov22_022566EC: @ 0x022566EC
	ldr r3, _022566F0 @ =ov22_02255180
	bx r3
	.align 2, 0
_022566F0: .4byte ov22_02255180
	thumb_func_end ov22_022566EC

	thumb_func_start ov22_022566F4
ov22_022566F4: @ 0x022566F4
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_022551D0
	adds r0, r4, #0
	bl ov22_02255134
	bl ov22_022550B4
	pop {r4, pc}
	thumb_func_end ov22_022566F4

	thumb_func_start ov22_02256708
ov22_02256708: @ 0x02256708
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	movs r1, #0xd9
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	lsls r1, r1, #2
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x30]
	adds r6, r3, #0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x40]
	str r2, [sp, #0x30]
	str r0, [sp, #0x24]
	ldr r0, [r5, r1]
	str r0, [sp, #0x28]
	adds r0, r1, #0
	subs r0, #8
	adds r0, r5, r0
	adds r1, #0x90
	str r0, [sp, #0x2c]
	adds r0, r5, r1
	add r1, sp, #0x10
	bl ov22_022578F4
	cmp r6, #0
	add r2, sp, #0
	bne _0225675C
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	movs r3, #0xe
	bl ov22_02257998
	b _0225676A
_0225675C:
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	movs r3, #0xe
	bl ov22_022579B4
_0225676A:
	adds r0, r5, #0
	add r1, sp, #0
	bl ov22_02259098
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov22_02257B10
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	movs r2, #0xe
	bl ov22_02257C88
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_02256708

	thumb_func_start ov22_02256790
ov22_02256790: @ 0x02256790
	push {r3, r4, lr}
	sub sp, #0xc
	movs r3, #1
	adds r4, r0, #0
	bl ov22_02256708
	ldr r0, _022567D4 @ =0x0000046C
	add r1, sp, #8
	adds r0, r4, r0
	add r2, sp, #4
	bl ov22_02259270
	ldr r0, _022567D4 @ =0x0000046C
	add r1, sp, #0
	adds r0, r4, r0
	bl ov22_02259358
	ldr r3, [sp, #4]
	ldr r0, _022567D4 @ =0x0000046C
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	asrs r3, r2, #1
	add r2, sp, #0
	ldrb r2, [r2, #3]
	adds r0, r4, r0
	movs r1, #0xc0
	subs r3, r3, r2
	movs r2, #0x8d
	subs r2, r2, r3
	bl ov22_022591EC
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022567D4: .4byte 0x0000046C
	thumb_func_end ov22_02256790

	thumb_func_start ov22_022567D8
ov22_022567D8: @ 0x022567D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02257CD4
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02257A98
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02257948
	pop {r4, pc}
	thumb_func_end ov22_022567D8

	thumb_func_start ov22_022567FC
ov22_022567FC: @ 0x022567FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x10]
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x28]
	movs r0, #0xd9
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	str r1, [sp, #0x14]
	adds r1, r0, #0
	subs r1, #8
	adds r1, r5, r1
	str r1, [sp, #0x18]
	movs r1, #0xe
	str r1, [sp, #0x1c]
	movs r1, #2
	str r1, [sp, #0x20]
	movs r1, #1
	adds r0, r0, #4
	str r1, [sp, #0x24]
	adds r0, r5, r0
	add r1, sp, #0
	bl ov22_02257F50
	movs r0, #0xda
	lsls r0, r0, #2
	movs r1, #0
	adds r0, r5, r0
	adds r2, r1, #0
	bl ov22_022582C0
	movs r6, #0
_02256854:
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r6, #0
	bl ov22_0225899C
	adds r7, r0, #0
	movs r4, #0
	cmp r7, #0
	ble _0225687C
_02256868:
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	adds r2, r6, #0
	bl ov22_022580A4
	adds r4, r4, #1
	cmp r4, r7
	blt _02256868
_0225687C:
	adds r6, r6, #1
	cmp r6, #0x64
	blt _02256854
	movs r7, #0xda
	movs r6, #0x61
	movs r4, #0
	lsls r7, r7, #2
	lsls r6, r6, #2
_0225688C:
	adds r0, r5, r6
	adds r1, r4, #0
	bl ov22_022589B0
	adds r2, r0, #0
	cmp r2, #0x12
	bge _022568A2
	adds r0, r5, r7
	movs r1, #1
	bl ov22_022580A4
_022568A2:
	adds r4, r4, #1
	cmp r4, #0x12
	blt _0225688C
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov22_022581EC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_022567FC

	thumb_func_start ov22_022568B8
ov22_022568B8: @ 0x022568B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02258408
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_022581C0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02257F88
	pop {r4, pc}
	thumb_func_end ov22_022568B8

	thumb_func_start ov22_022568DC
ov22_022568DC: @ 0x022568DC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0225693C @ =0x04000008
	movs r2, #3
	ldrh r3, [r0]
	movs r1, #1
	bics r3, r2
	orrs r1, r3
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bics r1, r2
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	movs r1, #2
	bics r3, r2
	orrs r1, r3
	strh r1, [r0, #4]
	ldrh r3, [r0, #6]
	movs r1, #3
	bics r3, r2
	adds r2, r3, #0
	orrs r2, r1
	strh r2, [r0, #6]
	adds r3, r1, #0
	ldr r0, [r4, #0x40]
	adds r2, r1, #0
	subs r3, #0x13
	bl FUN_02019184
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov22_02258354
	movs r1, #0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r2, #2
	adds r3, r1, #0
	str r1, [sp]
	bl ov22_022583A0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0225693C: .4byte 0x04000008
	thumb_func_end ov22_022568DC

	thumb_func_start ov22_02256940
ov22_02256940: @ 0x02256940
	ldr r3, _02256944 @ =ov22_022553F8
	bx r3
	.align 2, 0
_02256944: .4byte ov22_022553F8
	thumb_func_end ov22_02256940

	thumb_func_start ov22_02256948
ov22_02256948: @ 0x02256948
	push {r3, lr}
	sub sp, #0x30
	ldr r2, [r0, #0x40]
	str r2, [sp]
	movs r2, #0x19
	str r2, [sp, #4]
	lsls r2, r1, #1
	adds r1, r2, #0
	adds r1, #0x79
	str r1, [sp, #8]
	movs r1, #0x85
	str r1, [sp, #0xc]
	movs r1, #1
	adds r2, #0x7a
	str r2, [sp, #0x10]
	movs r2, #0
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	movs r1, #2
	str r1, [sp, #0x24]
	movs r1, #0xe
	str r1, [sp, #0x2c]
	ldr r1, _02256988 @ =0x000004B4
	str r2, [sp, #0x14]
	adds r0, r0, r1
	add r1, sp, #0
	str r2, [sp, #0x18]
	str r2, [sp, #0x28]
	bl ov22_022597BC
	add sp, #0x30
	pop {r3, pc}
	.align 2, 0
_02256988: .4byte 0x000004B4
	thumb_func_end ov22_02256948

	thumb_func_start ov22_0225698C
ov22_0225698C: @ 0x0225698C
	ldr r1, _02256994 @ =0x000004B4
	ldr r3, _02256998 @ =ov22_02259804
	adds r0, r0, r1
	bx r3
	.align 2, 0
_02256994: .4byte 0x000004B4
_02256998: .4byte ov22_02259804
	thumb_func_end ov22_0225698C

	thumb_func_start ov22_0225699C
ov22_0225699C: @ 0x0225699C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x4e
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov22_02259DBC
	movs r0, #0x4e
	lsls r0, r0, #4
	movs r1, #0
	ldr r2, _02256A14 @ =ov22_02256B04
	adds r0, r4, r0
	adds r3, r4, #0
	str r1, [sp]
	bl ov22_02259FF4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r2, _02256A18 @ =ov22_02256B24
	adds r0, r4, r0
	movs r1, #1
	adds r3, r4, #0
	bl ov22_02259FF4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r2, _02256A1C @ =ov22_02256B44
	adds r0, r4, r0
	movs r1, #2
	adds r3, r4, #0
	bl ov22_02259FF4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r2, _02256A20 @ =ov22_02256B78
	adds r0, r4, r0
	movs r1, #3
	adds r3, r4, #0
	bl ov22_02259FF4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r2, _02256A24 @ =ov22_02256AE4
	adds r0, r4, r0
	movs r1, #4
	adds r3, r4, #0
	bl ov22_02259FF4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02256A14: .4byte ov22_02256B04
_02256A18: .4byte ov22_02256B24
_02256A1C: .4byte ov22_02256B44
_02256A20: .4byte ov22_02256B78
_02256A24: .4byte ov22_02256AE4
	thumb_func_end ov22_0225699C

	thumb_func_start ov22_02256A28
ov22_02256A28: @ 0x02256A28
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x4e
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov22_02259DBC
	movs r0, #0x4e
	lsls r0, r0, #4
	movs r1, #0
	ldr r2, _02256AA0 @ =ov22_02256B04
	adds r0, r4, r0
	adds r3, r4, #0
	str r1, [sp]
	bl ov22_02259FF4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r2, _02256AA4 @ =ov22_02256B24
	adds r0, r4, r0
	movs r1, #1
	adds r3, r4, #0
	bl ov22_02259FF4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r2, _02256AA8 @ =ov22_02256B44
	adds r0, r4, r0
	movs r1, #2
	adds r3, r4, #0
	bl ov22_02259FF4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r2, _02256AAC @ =ov22_02256B78
	adds r0, r4, r0
	movs r1, #3
	adds r3, r4, #0
	bl ov22_02259FF4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r2, _02256AB0 @ =ov22_02256AE4
	adds r0, r4, r0
	movs r1, #4
	adds r3, r4, #0
	bl ov22_02259FF4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02256AA0: .4byte ov22_02256B04
_02256AA4: .4byte ov22_02256B24
_02256AA8: .4byte ov22_02256B44
_02256AAC: .4byte ov22_02256B78
_02256AB0: .4byte ov22_02256AE4
	thumb_func_end ov22_02256A28

	thumb_func_start ov22_02256AB4
ov22_02256AB4: @ 0x02256AB4
	adds r1, r0, #0
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r3, _02256AC0 @ =ov22_02259F24
	adds r0, r1, r0
	bx r3
	.align 2, 0
_02256AC0: .4byte ov22_02259F24
	thumb_func_end ov22_02256AB4

	thumb_func_start ov22_02256AC4
ov22_02256AC4: @ 0x02256AC4
	movs r1, #0x4e
	lsls r1, r1, #4
	ldr r3, _02256AD0 @ =ov22_02259F88
	adds r0, r0, r1
	bx r3
	nop
_02256AD0: .4byte ov22_02259F88
	thumb_func_end ov22_02256AC4

	thumb_func_start ov22_02256AD4
ov22_02256AD4: @ 0x02256AD4
	movs r1, #0x4e
	lsls r1, r1, #4
	ldr r3, _02256AE0 @ =ov22_02259FA0
	adds r0, r0, r1
	bx r3
	nop
_02256AE0: .4byte ov22_02259FA0
	thumb_func_end ov22_02256AD4

	thumb_func_start ov22_02256AE4
ov22_02256AE4: @ 0x02256AE4
	push {r4, lr}
	movs r0, #0xda
	adds r4, r1, #0
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256AFC
	ldr r0, _02256B00 @ =0x000006A8
	movs r1, #3
	str r1, [r4, r0]
_02256AFC:
	pop {r4, pc}
	nop
_02256B00: .4byte 0x000006A8
	thumb_func_end ov22_02256AE4

	thumb_func_start ov22_02256B04
ov22_02256B04: @ 0x02256B04
	push {r4, lr}
	movs r0, #0xda
	adds r4, r1, #0
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02258414
	adds r1, r0, #0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r2, #0
	bl ov22_02258258
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02256B04

	thumb_func_start ov22_02256B24
ov22_02256B24: @ 0x02256B24
	push {r4, lr}
	movs r0, #0xda
	adds r4, r1, #0
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02258414
	adds r1, r0, #0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r2, #1
	bl ov22_02258258
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02256B24

	thumb_func_start ov22_02256B44
ov22_02256B44: @ 0x02256B44
	push {r4, lr}
	ldr r0, _02256B74 @ =0x000006A8
	adds r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02256B70
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov22_02258424
	adds r2, r0, #0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov22_022582C0
	ldr r0, _02256B74 @ =0x000006A8
	movs r1, #0
	str r1, [r4, r0]
_02256B70:
	pop {r4, pc}
	nop
_02256B74: .4byte 0x000006A8
	thumb_func_end ov22_02256B44

	thumb_func_start ov22_02256B78
ov22_02256B78: @ 0x02256B78
	push {r4, lr}
	ldr r0, _02256BA8 @ =0x000006A8
	adds r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02256BA4
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov22_02258424
	adds r2, r0, #0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov22_022582C0
	ldr r0, _02256BA8 @ =0x000006A8
	movs r1, #1
	str r1, [r4, r0]
_02256BA4:
	pop {r4, pc}
	nop
_02256BA8: .4byte 0x000006A8
	thumb_func_end ov22_02256B78

	thumb_func_start ov22_02256BAC
ov22_02256BAC: @ 0x02256BAC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	add r2, sp, #0
	movs r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	adds r1, r0, #0
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r0, [r4, #0x40]
	adds r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x44]
	movs r2, #0xf
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x48
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0x10]
	movs r0, #6
	str r3, [sp, #0xc]
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [sp, #0x24]
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov22_0225A428
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02256BAC

	thumb_func_start ov22_02256BF4
ov22_02256BF4: @ 0x02256BF4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, [r0, #0x40]
	str r4, [sp]
	ldr r4, [r0, #0x44]
	str r4, [sp, #4]
	adds r4, r0, #0
	str r1, [sp, #0x10]
	adds r1, r2, #7
	adds r4, #0x48
	str r1, [sp, #0x18]
	movs r1, #0x3c
	str r4, [sp, #8]
	ldr r4, _02256C34 @ =0x00000181
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	str r4, [sp, #0x14]
	str r1, [sp, #0xc]
	str r3, [sp, #0x20]
	subs r1, r4, #1
	ldr r1, [r0, r1]
	movs r2, #0x3f
	str r1, [sp, #0x24]
	movs r1, #0x56
	lsls r1, r1, #4
	adds r0, r0, r1
	add r1, sp, #0
	bl ov22_0225A428
	add sp, #0x28
	pop {r4, pc}
	nop
_02256C34: .4byte 0x00000181
	thumb_func_end ov22_02256BF4

	thumb_func_start ov22_02256C38
ov22_02256C38: @ 0x02256C38
	movs r1, #0x56
	lsls r1, r1, #4
	ldr r3, _02256C44 @ =ov22_0225A560
	adds r0, r0, r1
	bx r3
	nop
_02256C44: .4byte ov22_0225A560
	thumb_func_end ov22_02256C38

	thumb_func_start ov22_02256C48
ov22_02256C48: @ 0x02256C48
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _02256C6C @ =ov22_02256C70
	movs r1, #0x10
	movs r2, #0xa
	movs r3, #0xd
	bl FUN_0200679C
	bl FUN_0201CED0
	str r5, [r0]
	str r4, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02256C6C: .4byte ov22_02256C70
	thumb_func_end ov22_02256C48

	thumb_func_start ov22_02256C70
ov22_02256C70: @ 0x02256C70
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bls _02256C7E
	b _02256DB2
_02256C7E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02256C8A: @ jump table
	.2byte _02256C9E - _02256C8A - 2 @ case 0
	.2byte _02256CC0 - _02256C8A - 2 @ case 1
	.2byte _02256CDA - _02256C8A - 2 @ case 2
	.2byte _02256CF6 - _02256C8A - 2 @ case 3
	.2byte _02256D0A - _02256C8A - 2 @ case 4
	.2byte _02256D32 - _02256C8A - 2 @ case 5
	.2byte _02256D52 - _02256C8A - 2 @ case 6
	.2byte _02256D78 - _02256C8A - 2 @ case 7
	.2byte _02256D94 - _02256C8A - 2 @ case 8
	.2byte _02256DA8 - _02256C8A - 2 @ case 9
_02256C9E:
	movs r0, #0xda
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #3
	movs r2, #0
	bl ov22_02258218
	cmp r0, #0
	bne _02256CB6
	bl FUN_02022974
_02256CB6:
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CC0:
	movs r0, #0xda
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CDA:
	movs r0, #1
	str r0, [sp]
	movs r0, #8
	adds r1, r0, #0
	subs r1, #0x18
	movs r2, #0
	movs r3, #0xa
	bl FUN_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CF6:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D0A:
	movs r0, #0x4e
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #0
	movs r2, #8
	bl ov22_02259FC4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _02256DB2
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D32:
	movs r1, #7
	adds r0, r4, #0
	mvns r1, r1
	movs r2, #5
	movs r3, #8
	bl ov22_02257098
	cmp r0, #0
	beq _02256DB2
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D52:
	ldr r0, [r4]
	movs r1, #1
	bl ov22_02256948
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x40]
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	ldr r0, [r4]
	bl ov22_022571D4
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D78:
	movs r1, #0
	movs r0, #1
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #8
	subs r2, #0x10
	movs r3, #0xa
	bl FUN_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D94:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256DA8:
	ldr r1, [r4, #4]
	movs r2, #1
	str r2, [r1]
	bl FUN_020067D0
_02256DB2:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_02256C70

	thumb_func_start ov22_02256DB8
ov22_02256DB8: @ 0x02256DB8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _02256DDC @ =ov22_02256DE0
	movs r1, #0x10
	movs r2, #0xa
	movs r3, #0xd
	bl FUN_0200679C
	bl FUN_0201CED0
	str r5, [r0]
	str r4, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02256DDC: .4byte ov22_02256DE0
	thumb_func_end ov22_02256DB8

	thumb_func_start ov22_02256DE0
ov22_02256DE0: @ 0x02256DE0
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bls _02256DEE
	b _02256F32
_02256DEE:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02256DFA: @ jump table
	.2byte _02256E0E - _02256DFA - 2 @ case 0
	.2byte _02256E2A - _02256DFA - 2 @ case 1
	.2byte _02256E3E - _02256DFA - 2 @ case 2
	.2byte _02256E72 - _02256DFA - 2 @ case 3
	.2byte _02256E92 - _02256DFA - 2 @ case 4
	.2byte _02256EBC - _02256DFA - 2 @ case 5
	.2byte _02256ED8 - _02256DFA - 2 @ case 6
	.2byte _02256EEC - _02256DFA - 2 @ case 7
	.2byte _02256F0E - _02256DFA - 2 @ case 8
	.2byte _02256F28 - _02256DFA - 2 @ case 9
_02256E0E:
	movs r0, #1
	str r0, [sp]
	movs r0, #8
	adds r1, r0, #0
	subs r1, #0x18
	movs r2, #0
	movs r3, #0xa
	bl FUN_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E2A:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E3E:
	ldr r0, [r4]
	bl ov22_02257258
	ldr r0, [r4]
	bl ov22_022568DC
	ldr r0, [r4]
	bl ov22_02256AD4
	ldr r0, [r4]
	movs r1, #0
	bl ov22_02256948
	ldr r0, [r4]
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r0, #0x40]
	movs r1, #1
	subs r3, #0x2b
	bl FUN_0201C63C
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E72:
	movs r1, #8
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0xd
	adds r3, r1, #0
	bl ov22_02257098
	cmp r0, #0
	beq _02256F32
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E92:
	movs r0, #0x4e
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #0
	adds r2, r1, #0
	subs r2, #8
	bl ov22_02259FC4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _02256F32
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256EBC:
	movs r1, #0
	movs r0, #1
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #8
	subs r2, #0x10
	movs r3, #0xa
	bl FUN_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256ED8:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256EEC:
	movs r0, #0xda
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0
	adds r2, r1, #0
	bl ov22_02258218
	cmp r0, #0
	bne _02256F04
	bl FUN_02022974
_02256F04:
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256F0E:
	movs r0, #0xda
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	adds r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256F28:
	ldr r1, [r4, #4]
	movs r2, #1
	str r2, [r1]
	bl FUN_020067D0
_02256F32:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_02256DE0

	thumb_func_start ov22_02256F38
ov22_02256F38: @ 0x02256F38
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	adds r6, r0, #0
	adds r4, r2, #0
	bl FUN_02029F84
	ldr r1, [sp]
	ldr r2, [sp]
	adds r1, #0x84
	ldr r1, [r1]
	adds r0, r6, #0
	adds r2, #0x78
	bl FUN_02029FAC
	cmp r4, #0
	beq _02256F78
	adds r0, r4, #0
	movs r1, #0xd
	bl FUN_02025F04
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02025F30
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0202A0EC
	adds r0, r5, #0
	bl FUN_020237BC
_02256F78:
	ldr r0, [sp]
	movs r5, #0
	adds r7, r0, #0
	ldr r4, [r0, #0x1c]
	adds r7, #0x14
	cmp r4, r7
	beq _02256F9E
_02256F86:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02256F98
	ldr r1, [r4]
	adds r0, r6, #0
	adds r2, r5, #0
	bl FUN_02029FD0
	adds r5, r5, #1
_02256F98:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02256F86
_02256F9E:
	ldr r0, [sp]
	ldr r4, [r0, #0xc]
	adds r7, r0, #4
	cmp r4, r7
	beq _02256FC0
_02256FA8:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02256FBA
	ldr r1, [r4]
	adds r0, r6, #0
	adds r2, r5, #0
	bl FUN_02029FD0
	adds r5, r5, #1
_02256FBA:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02256FA8
_02256FC0:
	ldr r1, [sp]
	adds r0, r6, #0
	ldr r1, [r1, #0x74]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0202A084
	adds r0, r6, #0
	bl FUN_02029F5C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02256F38

	thumb_func_start ov22_02256FD8
ov22_02256FD8: @ 0x02256FD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0xd
	movs r1, #0xac
	str r2, [sp, #4]
	adds r4, r3, #0
	bl FUN_02018144
	adds r6, r0, #0
	bl ov22_0225764C
	ldr r1, [sp]
	ldr r2, [sp]
	adds r1, #0x84
	ldr r1, [r1]
	adds r0, r7, #0
	adds r2, #0x78
	bl FUN_0202A284
	cmp r4, #0
	beq _02257026
	adds r0, r4, #0
	movs r1, #0xd
	bl FUN_02025F04
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02025F30
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0202A4B4
	adds r0, r5, #0
	bl FUN_020237BC
_02257026:
	ldr r1, [sp]
	adds r0, r6, #0
	adds r1, #0x14
	movs r2, #1
	bl ov22_02257778
	ldr r1, [sp]
	adds r0, r6, #0
	adds r1, r1, #4
	movs r2, #0
	bl ov22_02257778
	adds r0, r6, #0
	bl ov22_0225768C
	movs r4, #0
	adds r5, r4, #0
_02257048:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov22_022576FC
	cmp r0, #1
	bne _0225706A
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov22_022576E8
	adds r1, r0, #0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r2, r4, #0
	bl FUN_0202A2A8
	adds r4, r4, #1
_0225706A:
	adds r5, r5, #1
	cmp r5, #0x15
	blt _02257048
	ldr r1, [sp]
	adds r0, r7, #0
	ldr r1, [r1, #0x74]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0202A35C
	ldr r1, [sp, #4]
	adds r0, r7, #0
	bl FUN_0202A378
	adds r0, r7, #0
	bl FUN_0202A240
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02256FD8

	thumb_func_start ov22_02257098
ov22_02257098: @ 0x02257098
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r0, #8
	bge _022570B4
	movs r0, #0xfd
	ldr r3, [r5]
	lsls r0, r0, #2
	adds r0, r3, r0
	bl ov22_02257AB0
_022570B4:
	ldr r0, [r5, #8]
	cmp r0, #1
	blt _022570F2
	ldr r0, [r5]
	movs r1, #2
	ldr r0, [r0, #0x40]
	adds r2, r1, #0
	adds r3, r4, #0
	bl FUN_0201C63C
	ldr r0, [r5]
	movs r1, #1
	ldr r0, [r0, #0x40]
	movs r2, #2
	adds r3, r4, #0
	bl FUN_0201C63C
	ldr r0, [r5]
	movs r1, #2
	ldr r0, [r0, #0x40]
	movs r2, #5
	adds r3, r6, #0
	bl FUN_0201C63C
	ldr r0, [r5]
	movs r1, #1
	ldr r0, [r0, #0x40]
	movs r2, #5
	adds r3, r6, #0
	bl FUN_0201C63C
_022570F2:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	cmp r0, r7
	ble _02257100
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02257100:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257098

	thumb_func_start ov22_02257104
ov22_02257104: @ 0x02257104
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	ldr r0, [r4, #0x40]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	ldr r0, [r4, #0x40]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #0
	bl ov22_022574F4
	ldr r1, _02257188 @ =0x04000008
	movs r3, #3
	ldrh r2, [r1]
	movs r0, #2
	bics r2, r3
	orrs r0, r2
	strh r0, [r1]
	ldrh r2, [r1, #2]
	movs r0, #1
	bics r2, r3
	orrs r2, r0
	strh r2, [r1, #2]
	ldrh r4, [r1, #4]
	movs r2, #3
	bics r4, r3
	orrs r2, r4
	strh r2, [r1, #4]
	ldrh r2, [r1, #6]
	bics r2, r3
	strh r2, [r1, #6]
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0
	bl FUN_0200F338
	pop {r4, pc}
	nop
_02257188: .4byte 0x04000008
	thumb_func_end ov22_02257104

	thumb_func_start ov22_0225718C
ov22_0225718C: @ 0x0225718C
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_02257548
	ldr r0, [r4, #0x40]
	movs r1, #3
	bl FUN_02019EBC
	adds r0, r4, #0
	bl ov22_022568DC
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	ldr r0, [r4, #0x44]
	movs r1, #1
	bl FUN_020219A4
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	pop {r4, pc}
	thumb_func_end ov22_0225718C

	thumb_func_start ov22_022571D4
ov22_022571D4: @ 0x022571D4
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	ldr r0, [r4, #0x40]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	ldr r0, [r4, #0x40]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r0, [r4, #0x40]
	movs r1, #0x19
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	movs r1, #4
	strb r1, [r0, #0x11]
	movs r0, #0x6b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl FUN_02015958
	adds r0, r4, #0
	movs r1, #1
	bl ov22_022574CC
	ldr r0, _02257254 @ =0x04000008
	movs r2, #3
	ldrh r3, [r0]
	movs r1, #2
	bics r3, r2
	orrs r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	movs r1, #1
	bics r3, r2
	orrs r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	movs r1, #3
	bics r3, r2
	orrs r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bics r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_02257254: .4byte 0x04000008
	thumb_func_end ov22_022571D4

	thumb_func_start ov22_02257258
ov22_02257258: @ 0x02257258
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02015A54
	adds r0, r4, #0
	bl ov22_022574EC
	ldr r0, [r4, #0x40]
	movs r1, #3
	bl FUN_02019EBC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02257258

	thumb_func_start ov22_02257278
ov22_02257278: @ 0x02257278
	push {r3, lr}
	movs r1, #0x6b
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_020159FC
	cmp r0, #0
	beq _02257292
	cmp r0, #1
	beq _02257296
	cmp r0, #2
	beq _0225729A
	pop {r3, pc}
_02257292:
	movs r0, #4
	pop {r3, pc}
_02257296:
	movs r0, #8
	pop {r3, pc}
_0225729A:
	movs r0, #9
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_02257278

	thumb_func_start ov22_022572A0
ov22_022572A0: @ 0x022572A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _02257358 @ =0x000006D4
	str r1, [sp, #0x14]
	ldr r0, [r5, r0]
	adds r7, r2, #0
	adds r4, r3, #0
	bl FUN_02027B50
	adds r6, r0, #0
	movs r0, #0
	movs r1, #0xe0
	movs r2, #0xe
	bl FUN_02002E98
	str r4, [sp]
	add r0, sp, #0x20
	ldrb r1, [r0, #0x10]
	movs r2, #3
	adds r3, r7, #0
	str r1, [sp, #4]
	ldrb r0, [r0, #0x14]
	ldr r1, _0225735C @ =0x000006B4
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0x92
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, r1]
	bl FUN_0201A7E8
	ldr r0, _0225735C @ =0x000006B4
	movs r1, #0xf
	ldr r0, [r5, r0]
	bl FUN_0201ADA4
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r5, #0x40]
	movs r1, #3
	movs r2, #0x74
	movs r3, #8
	bl FUN_0200DD0C
	ldr r0, _0225735C @ =0x000006B4
	movs r1, #0
	ldr r0, [r5, r0]
	movs r2, #0x74
	movs r3, #8
	bl FUN_0200E060
	ldr r2, _02257360 @ =0x00000181
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0xd
	bl FUN_0200B144
	ldr r1, [sp, #0x14]
	adds r6, r0, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r3, #0
	str r3, [sp]
	ldr r0, _02257364 @ =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0225735C @ =0x000006B4
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	movs r1, #1
	adds r2, r4, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	ldr r0, _0225735C @ =0x000006B4
	ldr r0, [r5, r0]
	bl FUN_0201A954
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257358: .4byte 0x000006D4
_0225735C: .4byte 0x000006B4
_02257360: .4byte 0x00000181
_02257364: .4byte 0x0001020F
	thumb_func_end ov22_022572A0

	thumb_func_start ov22_02257368
ov22_02257368: @ 0x02257368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _022573E0 @ =0x000006B4
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r2, _022573E4 @ =0x00000181
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0xd
	bl FUN_0200B144
	adds r1, r4, #0
	adds r7, r0, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0xd
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	ldr r0, _022573E8 @ =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _022573E0 @ =0x000006B4
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	movs r1, #1
	adds r2, r4, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	ldr r0, _022573E0 @ =0x000006B4
	ldr r0, [r5, r0]
	bl FUN_0201A954
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022573E0: .4byte 0x000006B4
_022573E4: .4byte 0x00000181
_022573E8: .4byte 0x0001020F
	thumb_func_end ov22_02257368

	thumb_func_start ov22_022573EC
ov22_022573EC: @ 0x022573EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _02257488 @ =0x000006DC
	adds r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02257400
	bl FUN_02022974
_02257400:
	ldr r0, _0225748C @ =0x000006B4
	movs r1, #0xf
	ldr r0, [r5, r0]
	bl FUN_0201ADA4
	ldr r2, _02257490 @ =0x00000181
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0xd
	bl FUN_0200B144
	adds r1, r4, #0
	adds r7, r0, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0xd
	bl FUN_02023790
	ldr r1, _02257488 @ =0x000006DC
	adds r2, r4, #0
	str r0, [r5, r1]
	adds r0, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl FUN_0200C388
	movs r0, #0x6d
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	ldrb r1, [r1, #0x16]
	cmp r1, #0
	bne _02257450
	adds r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02027AC0
	b _02257452
_02257450:
	movs r0, #1
_02257452:
	movs r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02257494 @ =0x0001020F
	ldr r2, _0225748C @ =0x000006B4
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, r2]
	adds r2, #0x28
	ldr r2, [r5, r2]
	movs r1, #1
	bl FUN_0201D78C
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	ldr r0, _0225748C @ =0x000006B4
	ldr r0, [r5, r0]
	bl FUN_0201A954
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02257488: .4byte 0x000006DC
_0225748C: .4byte 0x000006B4
_02257490: .4byte 0x00000181
_02257494: .4byte 0x0001020F
	thumb_func_end ov22_022573EC

	thumb_func_start ov22_02257498
ov22_02257498: @ 0x02257498
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022574AC @ =0x000006DC
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _022574AC @ =0x000006DC
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_022574AC: .4byte 0x000006DC
	thumb_func_end ov22_02257498

	thumb_func_start ov22_022574B0
ov22_022574B0: @ 0x022574B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022574C8 @ =0x000006B4
	ldr r0, [r4, r0]
	bl FUN_0201ACF4
	ldr r0, _022574C8 @ =0x000006B4
	ldr r0, [r4, r0]
	bl FUN_0201A8FC
	pop {r4, pc}
	nop
_022574C8: .4byte 0x000006B4
	thumb_func_end ov22_022574B0

	thumb_func_start ov22_022574CC
ov22_022574CC: @ 0x022574CC
	push {r3, lr}
	sub sp, #8
	movs r2, #0x1b
	str r2, [sp]
	movs r2, #2
	movs r3, #1
	str r2, [sp, #4]
	bl ov22_022572A0
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_022574CC

	thumb_func_start ov22_022574E4
ov22_022574E4: @ 0x022574E4
	ldr r3, _022574E8 @ =ov22_02257368
	bx r3
	.align 2, 0
_022574E8: .4byte ov22_02257368
	thumb_func_end ov22_022574E4

	thumb_func_start ov22_022574EC
ov22_022574EC: @ 0x022574EC
	ldr r3, _022574F0 @ =ov22_022574B0
	bx r3
	.align 2, 0
_022574F0: .4byte ov22_022574B0
	thumb_func_end ov22_022574EC

	thumb_func_start ov22_022574F4
ov22_022574F4: @ 0x022574F4
	push {r4, lr}
	sub sp, #8
	movs r2, #0x1b
	str r2, [sp]
	movs r2, #4
	str r2, [sp, #4]
	movs r2, #2
	movs r3, #0x13
	adds r4, r0, #0
	bl ov22_022572A0
	movs r0, #0xd
	bl FUN_0200B358
	movs r1, #0x6e
	lsls r1, r1, #4
	str r0, [r4, r1]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022574F4

	thumb_func_start ov22_0225751C
ov22_0225751C: @ 0x0225751C
	ldr r3, _02257520 @ =ov22_022573EC
	bx r3
	.align 2, 0
_02257520: .4byte ov22_022573EC
	thumb_func_end ov22_0225751C

	thumb_func_start ov22_02257524
ov22_02257524: @ 0x02257524
	push {r3, lr}
	sub sp, #8
	movs r3, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r3, #0x6e
	lsls r3, r3, #4
	ldr r0, [r0, r3]
	movs r3, #2
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov22_02257524

	thumb_func_start ov22_02257540
ov22_02257540: @ 0x02257540
	ldr r3, _02257544 @ =ov22_02257498
	bx r3
	.align 2, 0
_02257544: .4byte ov22_02257498
	thumb_func_end ov22_02257540

	thumb_func_start ov22_02257548
ov22_02257548: @ 0x02257548
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_022574B0
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	movs r0, #0x6e
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov22_02257548

	thumb_func_start ov22_02257564
ov22_02257564: @ 0x02257564
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov22_02257D00
	adds r1, r0, #0
	movs r0, #0x56
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov22_0225A6B8
	pop {r4, pc}
	thumb_func_end ov22_02257564

	thumb_func_start ov22_02257580
ov22_02257580: @ 0x02257580
	push {r4, lr}
	cmp r0, #3
	bhi _022575AA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02257592: @ jump table
	.2byte _0225759A - _02257592 - 2 @ case 0
	.2byte _0225759E - _02257592 - 2 @ case 1
	.2byte _022575A2 - _02257592 - 2 @ case 2
	.2byte _022575A6 - _02257592 - 2 @ case 3
_0225759A:
	movs r4, #5
	b _022575AE
_0225759E:
	movs r4, #0xa
	b _022575AE
_022575A2:
	movs r4, #0xf
	b _022575AE
_022575A6:
	movs r4, #0x14
	b _022575AE
_022575AA:
	bl FUN_02022974
_022575AE:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02257580

	thumb_func_start ov22_022575B4
ov22_022575B4: @ 0x022575B4
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	movs r1, #0x19
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	movs r1, #4
	strb r1, [r0, #0x11]
	movs r0, #0x6b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02015A54
	movs r0, #0x6b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl FUN_02015958
	adds r0, r4, #0
	movs r1, #2
	bl ov22_022574E4
	ldr r0, _02257620 @ =0x04000008
	movs r2, #3
	ldrh r3, [r0]
	movs r1, #2
	bics r3, r2
	orrs r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	movs r1, #1
	bics r3, r2
	orrs r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	movs r1, #3
	bics r3, r2
	orrs r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bics r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02257620: .4byte 0x04000008
	thumb_func_end ov22_022575B4

	thumb_func_start ov22_02257624
ov22_02257624: @ 0x02257624
	push {r3, lr}
	movs r1, #0x6b
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_020159FC
	cmp r0, #0
	beq _0225763E
	cmp r0, #1
	beq _02257642
	cmp r0, #2
	beq _02257646
	pop {r3, pc}
_0225763E:
	movs r0, #5
	pop {r3, pc}
_02257642:
	movs r0, #6
	pop {r3, pc}
_02257646:
	movs r0, #7
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_02257624

	thumb_func_start ov22_0225764C
ov22_0225764C: @ 0x0225764C
	ldr r3, _02257654 @ =FUN_020D5124
	movs r1, #0
	movs r2, #0xac
	bx r3
	.align 2, 0
_02257654: .4byte FUN_020D5124
	thumb_func_end ov22_0225764C

	thumb_func_start ov22_02257658
ov22_02257658: @ 0x02257658
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #0
	bne _02257668
	bl FUN_02022974
_02257668:
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	lsls r0, r0, #3
	str r4, [r5, r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r5, r0
	str r6, [r0, #4]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r5, #0xa8
	adds r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02257658

	thumb_func_start ov22_0225768C
ov22_0225768C: @ 0x0225768C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0xa8
	ldr r2, [r0]
	movs r1, #0
	cmp r2, #0
	ble _022576E4
_0225769A:
	lsls r0, r1, #3
	adds r7, r6, r0
	ldr r0, [r7, #4]
	cmp r0, #1
	bne _022576D8
	movs r4, #0
	cmp r2, #0
	ble _022576D0
	adds r5, r6, #0
_022576AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _022576C2
	adds r0, r7, #0
	adds r1, r5, #0
	bl ov22_0225771C
	cmp r0, #1
	bne _022576C2
	movs r0, #1
	str r0, [r5, #4]
_022576C2:
	adds r0, r6, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r4, r4, #1
	adds r5, #8
	cmp r4, r0
	blt _022576AC
_022576D0:
	movs r0, #2
	str r0, [r7, #4]
	movs r1, #0
	b _022576DA
_022576D8:
	adds r1, r1, #1
_022576DA:
	adds r0, r6, #0
	adds r0, #0xa8
	ldr r2, [r0]
	cmp r1, r2
	blt _0225769A
_022576E4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225768C

	thumb_func_start ov22_022576E8
ov22_022576E8: @ 0x022576E8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0x15
	blo _022576F6
	bl FUN_02022974
_022576F6:
	lsls r0, r5, #3
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022576E8

	thumb_func_start ov22_022576FC
ov22_022576FC: @ 0x022576FC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0x15
	blo _0225770A
	bl FUN_02022974
_0225770A:
	lsls r0, r5, #3
	adds r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02257718
	movs r0, #1
	pop {r3, r4, r5, pc}
_02257718:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022576FC

	thumb_func_start ov22_0225771C
ov22_0225771C: @ 0x0225771C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov22_02259780
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [r4]
	add r1, sp, #0x14
	add r2, sp, #0x18
	add r3, sp, #0x1c
	bl ov22_02259724
	movs r4, #0
	add r6, sp, #0x10
	add r7, sp, #0xc
_02257744:
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl ov22_022577EC
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ov22_02259578
	cmp r0, #1
	bne _0225776A
	add sp, #0x2c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225776A:
	adds r4, r4, #1
	cmp r4, #0x10
	blt _02257744
	movs r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225771C

	thumb_func_start ov22_02257778
ov22_02257778: @ 0x02257778
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r4, [r5, #8]
	adds r6, r0, #0
	adds r7, r2, #0
	cmp r4, r5
	beq _0225779C
_02257786:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02257796
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov22_02257658
_02257796:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02257786
_0225779C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02257778

	thumb_func_start ov22_022577A0
ov22_022577A0: @ 0x022577A0
	push {r3, r4, r5, lr}
	movs r2, #0x6d
	lsls r2, r2, #4
	ldr r2, [r0, r2]
	movs r1, #0
	ldrb r3, [r2, #0x16]
	cmp r3, #0
	bne _022577BC
	movs r2, #0x56
	lsls r2, r2, #4
	adds r0, r0, r2
	bl ov22_0225A6CC
	pop {r3, r4, r5, pc}
_022577BC:
	ldrb r4, [r2, #0x14]
	ldrb r3, [r2, #0x15]
	cmp r4, r3
	bne _022577EA
	adds r4, r1, #0
	adds r5, r2, #0
_022577C8:
	ldrb r3, [r5, #0x10]
	cmp r3, #1
	bne _022577D0
	adds r1, r1, #1
_022577D0:
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #4
	blt _022577C8
	ldrb r2, [r2, #0x17]
	cmp r2, r1
	bgt _022577EA
	movs r1, #0x56
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0
	bl ov22_0225A6CC
_022577EA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022577A0

	thumb_func_start ov22_022577EC
ov22_022577EC: @ 0x022577EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	str r1, [sp]
	adds r7, r2, #0
	adds r0, r3, #0
	subs r0, r0, r7
	movs r1, #3
	str r3, [sp, #4]
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	blx FUN_020E2178
	adds r1, r7, r0
	lsls r0, r0, #1
	adds r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r1, [sp, #0xc]
	subs r0, r0, r6
	movs r1, #3
	blx FUN_020E2178
	adds r2, r6, r0
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	adds r0, r6, r0
	cmp r1, #0xf
	bhi _022578EE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02257832: @ jump table
	.2byte _02257852 - _02257832 - 2 @ case 0
	.2byte _0225785A - _02257832 - 2 @ case 1
	.2byte _02257862 - _02257832 - 2 @ case 2
	.2byte _0225786A - _02257832 - 2 @ case 3
	.2byte _02257874 - _02257832 - 2 @ case 4
	.2byte _0225787E - _02257832 - 2 @ case 5
	.2byte _02257888 - _02257832 - 2 @ case 6
	.2byte _02257892 - _02257832 - 2 @ case 7
	.2byte _0225789E - _02257832 - 2 @ case 8
	.2byte _022578A8 - _02257832 - 2 @ case 9
	.2byte _022578B2 - _02257832 - 2 @ case 10
	.2byte _022578BC - _02257832 - 2 @ case 11
	.2byte _022578C8 - _02257832 - 2 @ case 12
	.2byte _022578D2 - _02257832 - 2 @ case 13
	.2byte _022578DC - _02257832 - 2 @ case 14
	.2byte _022578E6 - _02257832 - 2 @ case 15
_02257852:
	str r7, [r4]
	add sp, #0x10
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0225785A:
	str r7, [r4]
	add sp, #0x10
	str r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02257862:
	str r7, [r4]
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0225786A:
	ldr r0, [sp]
	str r7, [r4]
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02257874:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	str r0, [r4]
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0225787E:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	str r0, [r4]
	str r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02257888:
	ldr r1, [sp, #0xc]
	add sp, #0x10
	str r1, [r4]
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02257892:
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0225789E:
	ldr r0, [sp, #8]
	add sp, #0x10
	str r0, [r4]
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022578A8:
	ldr r0, [sp, #8]
	add sp, #0x10
	str r0, [r4]
	str r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022578B2:
	ldr r1, [sp, #8]
	add sp, #0x10
	str r1, [r4]
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022578BC:
	ldr r0, [sp, #8]
	str r0, [r4]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022578C8:
	ldr r0, [sp, #4]
	add sp, #0x10
	str r0, [r4]
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022578D2:
	ldr r0, [sp, #4]
	add sp, #0x10
	str r0, [r4]
	str r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022578DC:
	ldr r1, [sp, #4]
	add sp, #0x10
	str r1, [r4]
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022578E6:
	ldr r0, [sp, #4]
	str r0, [r4]
	ldr r0, [sp]
	str r0, [r5]
_022578EE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_022577EC

	thumb_func_start ov22_022578F4
ov22_022578F4: @ 0x022578F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r2, #0
	str r0, [r4, #0x2c]
	ldr r0, [r1, #4]
	str r0, [r4, #0x30]
	ldr r0, [r1, #8]
	str r0, [r4, #0x34]
	ldr r0, [r1, #0xc]
	str r0, [r4, #0x38]
	ldr r0, [r1, #0x10]
	str r0, [r4, #0x3c]
	ldr r0, [r1, #0x14]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x18]
	str r0, [r4, #0x44]
	str r2, [r4, #0x74]
	ldr r0, [r1, #0x1c]
	str r0, [r4]
	adds r0, r4, #4
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x14
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r2, [r4, #0x24]
	ldr r0, [r1, #0x20]
	adds r1, r4, #0
	str r0, [r4, #0x28]
	ldr r0, [r4]
	adds r1, #0x78
	movs r2, #3
	bl ov22_022594C0
	adds r4, #0x14
	adds r1, r4, #0
	bl ov22_02259520
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022578F4

	thumb_func_start ov22_02257948
ov22_02257948: @ 0x02257948
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_022579F0
	adds r0, r4, #0
	bl ov22_02257A98
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x88
	blx FUN_020D5124
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02257948

	thumb_func_start ov22_02257964
ov22_02257964: @ 0x02257964
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0x20]
	adds r6, r1, #0
	str r0, [sp]
	adds r5, r2, #0
	adds r0, r4, #0
	adds r7, r3, #0
	ldr r1, [r4, #0x3c]
	adds r0, #0x78
	adds r2, r6, #0
	adds r3, r5, #0
	bl ov22_022590C0
	adds r0, r4, #0
	ldr r1, [sp, #0x1c]
	adds r0, #0x78
	bl ov22_022591D0
	adds r4, #0x78
	ldr r2, [sp, #0x18]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov22_022591EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257964

	thumb_func_start ov22_02257998
ov22_02257998: @ 0x02257998
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	str r3, [sp]
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r1, [r6, #0x3c]
	adds r0, #0x78
	adds r2, r5, #0
	adds r3, r4, #0
	bl ov22_022590C0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_02257998

	thumb_func_start ov22_022579B4
ov22_022579B4: @ 0x022579B4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r5, r1, #0
	adds r4, r2, #0
	adds r0, r6, #0
	ldr r1, [r6, #0x3c]
	adds r0, #0x78
	adds r2, r5, #0
	adds r3, r4, #0
	bl ov22_022590D4
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_022579B4

	thumb_func_start ov22_022579D8
ov22_022579D8: @ 0x022579D8
	ldr r3, _022579E4 @ =ov22_02259520
	adds r2, r0, #0
	adds r0, r1, #0
	ldr r1, [r2, #0x20]
	bx r3
	nop
_022579E4: .4byte ov22_02259520
	thumb_func_end ov22_022579D8

	thumb_func_start ov22_022579E8
ov22_022579E8: @ 0x022579E8
	ldr r3, _022579EC @ =ov22_02259530
	bx r3
	.align 2, 0
_022579EC: .4byte ov22_02259530
	thumb_func_end ov22_022579E8

	thumb_func_start ov22_022579F0
ov22_022579F0: @ 0x022579F0
	ldr r3, _022579F8 @ =ov22_022591B8
	adds r0, #0x78
	bx r3
	nop
_022579F8: .4byte ov22_022591B8
	thumb_func_end ov22_022579F0

	thumb_func_start ov22_022579FC
ov22_022579FC: @ 0x022579FC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	adds r4, r0, #0
	ldr r5, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r5, r0
	bge _02257A56
	ldr r0, [r4, #0x44]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #4]
	ldr r5, [r4, #0x30]
	lsls r0, r1, #2
	ldr r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	ldr r0, [r0]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x38]
	ldrb r0, [r0, r1]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl ov22_02254E20
	ldr r1, [sp, #0x30]
	adds r5, r0, #0
	bl ov22_02254F6C
	ldr r0, [r4]
	adds r1, r5, #0
	movs r2, #0
	bl ov22_022594C0
	adds r1, r4, #4
	bl ov22_02259520
	ldr r0, [r4, #0x24]
	add sp, #0x20
	adds r0, r0, #1
	str r0, [r4, #0x24]
	movs r0, #1
	pop {r3, r4, r5, pc}
_02257A56:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022579FC

	thumb_func_start ov22_02257A5C
ov22_02257A5C: @ 0x02257A5C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	ldr r5, [r4, #0x24]
	ldr r2, [r4, #0x28]
	cmp r5, r2
	bge _02257A7A
	movs r2, #1
	bl ov22_02257DEC
	ldr r0, [r4, #0x24]
	adds r0, r0, #1
	str r0, [r4, #0x24]
	movs r0, #1
	pop {r3, r4, r5, pc}
_02257A7A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02257A5C

	thumb_func_start ov22_02257A80
ov22_02257A80: @ 0x02257A80
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl ov22_02259530
	ldr r0, [r4, #0x24]
	subs r0, r0, #1
	str r0, [r4, #0x24]
	bpl _02257A96
	bl FUN_02022974
_02257A96:
	pop {r4, pc}
	thumb_func_end ov22_02257A80

	thumb_func_start ov22_02257A98
ov22_02257A98: @ 0x02257A98
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	bl ov22_02259540
	adds r0, r4, #0
	adds r0, #0x14
	bl ov22_02259540
	movs r0, #0
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ov22_02257A98

	thumb_func_start ov22_02257AB0
ov22_02257AB0: @ 0x02257AB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, r5, #4
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov22_022596EC
	adds r5, #0x14
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov22_022596EC
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02257AB0

	thumb_func_start ov22_02257ACC
ov22_02257ACC: @ 0x02257ACC
	ldr r3, _02257AD4 @ =ov22_022596EC
	adds r0, #0x14
	bx r3
	nop
_02257AD4: .4byte ov22_022596EC
	thumb_func_end ov22_02257ACC

	thumb_func_start ov22_02257AD8
ov22_02257AD8: @ 0x02257AD8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	rsbs r4, r2, #0
	rsbs r7, r1, #0
	adds r0, r5, #4
	adds r1, r7, #0
	adds r2, r4, #0
	adds r6, r3, #0
	bl ov22_022596EC
	ldr r2, [sp, #0x18]
	adds r0, r5, #4
	adds r1, r6, #0
	bl ov22_022596EC
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov22_022596EC
	adds r5, #0x14
	ldr r2, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov22_022596EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257AD8

	thumb_func_start ov22_02257B10
ov22_02257B10: @ 0x02257B10
	ldr r3, _02257B18 @ =ov22_02257B1C
	movs r1, #0
	mvns r1, r1
	bx r3
	.align 2, 0
_02257B18: .4byte ov22_02257B1C
	thumb_func_end ov22_02257B10

	thumb_func_start ov22_02257B1C
ov22_02257B1C: @ 0x02257B1C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r7, #0
	ldr r4, [r7, #0x1c]
	adds r6, #0x14
	adds r5, r1, #0
	cmp r4, r6
	beq _02257B4A
_02257B2C:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4]
	bne _02257B3C
	adds r1, r5, #0
	bl ov22_02254F6C
	b _02257B42
_02257B3C:
	adds r1, r5, #0
	bl ov22_022591D0
_02257B42:
	ldr r4, [r4, #8]
	subs r5, r5, #1
	cmp r4, r6
	bne _02257B2C
_02257B4A:
	ldr r4, [r7, #0xc]
	adds r6, r7, #4
	subs r5, #8
	cmp r4, r6
	beq _02257B72
_02257B54:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4]
	bne _02257B64
	adds r1, r5, #0
	bl ov22_02254F6C
	b _02257B6A
_02257B64:
	adds r1, r5, #0
	bl ov22_022591D0
_02257B6A:
	ldr r4, [r4, #8]
	subs r5, r5, #1
	cmp r4, r6
	bne _02257B54
_02257B72:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257B1C

	thumb_func_start ov22_02257B74
ov22_02257B74: @ 0x02257B74
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r7, #0
	ldr r4, [r7, #0x1c]
	adds r6, #0x14
	adds r5, r1, #0
	cmp r4, r6
	beq _02257BB0
_02257B84:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4]
	bne _02257B9C
	bl ov22_02254F78
	adds r1, r0, #0
	ldr r0, [r4]
	adds r1, r1, r5
	bl ov22_02254F6C
	b _02257BAA
_02257B9C:
	bl ov22_022591E0
	adds r1, r0, #0
	ldr r0, [r4]
	adds r1, r1, r5
	bl ov22_022591D0
_02257BAA:
	ldr r4, [r4, #8]
	cmp r4, r6
	bne _02257B84
_02257BB0:
	ldr r4, [r7, #0xc]
	adds r6, r7, #4
	cmp r4, r6
	beq _02257BE4
_02257BB8:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4]
	bne _02257BD0
	bl ov22_02254F78
	adds r1, r0, #0
	ldr r0, [r4]
	adds r1, r1, r5
	bl ov22_02254F6C
	b _02257BDE
_02257BD0:
	bl ov22_022591E0
	adds r1, r0, #0
	ldr r0, [r4]
	adds r1, r1, r5
	bl ov22_022591D0
_02257BDE:
	ldr r4, [r4, #8]
	cmp r4, r6
	bne _02257BB8
_02257BE4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02257B74

	thumb_func_start ov22_02257BE8
ov22_02257BE8: @ 0x02257BE8
	push {r3, lr}
	movs r1, #0x12
	add r0, sp, #0
	strb r1, [r0]
	movs r1, #0x8f
	strb r1, [r0, #1]
	movs r1, #0x8a
	strb r1, [r0, #2]
	movs r1, #0xf6
	strb r1, [r0, #3]
	add r0, sp, #0
	bl FUN_02022734
	pop {r3, pc}
	thumb_func_end ov22_02257BE8

	thumb_func_start ov22_02257C04
ov22_02257C04: @ 0x02257C04
	push {r3, lr}
	movs r3, #0x12
	add r0, sp, #0
	strb r3, [r0]
	movs r3, #0x8f
	strb r3, [r0, #1]
	movs r3, #0x8a
	strb r3, [r0, #2]
	movs r3, #0xf6
	strb r3, [r0, #3]
	add r0, sp, #0
	bl FUN_02022830
	pop {r3, pc}
	thumb_func_end ov22_02257C04

	thumb_func_start ov22_02257C20
ov22_02257C20: @ 0x02257C20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [r0, #0x1c]
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, #0x14
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	str r0, [sp, #4]
	cmp r5, r0
	beq _02257C56
_02257C38:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov22_022595AC
	cmp r0, #1
	bne _02257C4E
	add sp, #0xc
	adds r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02257C4E:
	ldr r5, [r5, #8]
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _02257C38
_02257C56:
	ldr r0, [sp]
	ldr r5, [r0, #0xc]
	adds r0, r0, #4
	str r0, [sp, #8]
	cmp r5, r0
	beq _02257C80
_02257C62:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov22_022595AC
	cmp r0, #1
	bne _02257C78
	add sp, #0xc
	adds r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02257C78:
	ldr r5, [r5, #8]
	ldr r0, [sp, #8]
	cmp r5, r0
	bne _02257C62
_02257C80:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02257C20

	thumb_func_start ov22_02257C88
ov22_02257C88: @ 0x02257C88
	push {r3, r4, r5, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	adds r4, r1, #0
	str r0, [sp]
	movs r0, #0x19
	lsls r1, r4, #2
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #0x86
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r0, #0x87
	str r0, [sp, #0xc]
	movs r0, #0x88
	str r0, [sp, #0x14]
	movs r0, #0x10
	str r0, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x20]
	movs r0, #0xd
	str r0, [sp, #0x24]
	movs r0, #0
	adds r1, #0x88
	str r0, [sp, #0x28]
	adds r0, r5, #0
	str r1, [sp, #0x10]
	adds r0, #0x48
	add r1, sp, #0
	str r2, [sp, #0x2c]
	bl ov22_022597BC
	str r4, [r5, #0x74]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02257C88

	thumb_func_start ov22_02257CD4
ov22_02257CD4: @ 0x02257CD4
	ldr r3, _02257CDC @ =ov22_02259804
	adds r0, #0x48
	bx r3
	nop
_02257CDC: .4byte ov22_02259804
	thumb_func_end ov22_02257CD4

	thumb_func_start ov22_02257CE0
ov22_02257CE0: @ 0x02257CE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x78]
	adds r4, r1, #0
	movs r1, #0
	adds r6, r2, #0
	bl FUN_020080C0
	str r0, [r4]
	ldr r0, [r5, #0x78]
	movs r1, #1
	bl FUN_020080C0
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_02257CE0

	thumb_func_start ov22_02257D00
ov22_02257D00: @ 0x02257D00
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov22_02257D00

	thumb_func_start ov22_02257D04
ov22_02257D04: @ 0x02257D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r6, [r7, #0x1c]
	movs r4, #0
	adds r7, #0x14
	str r1, [sp]
	str r2, [sp, #4]
	adds r5, r4, #0
	cmp r6, r7
	beq _02257D62
_02257D1A:
	adds r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02257EC8
	cmp r4, #0
	bge _02257D2C
	rsbs r1, r4, #0
	b _02257D2E
_02257D2C:
	adds r1, r4, #0
_02257D2E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bge _02257D38
	rsbs r2, r0, #0
	b _02257D3A
_02257D38:
	adds r2, r0, #0
_02257D3A:
	cmp r2, r1
	ble _02257D40
	adds r4, r0, #0
_02257D40:
	cmp r5, #0
	bge _02257D48
	rsbs r1, r5, #0
	b _02257D4A
_02257D48:
	adds r1, r5, #0
_02257D4A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _02257D54
	rsbs r2, r0, #0
	b _02257D56
_02257D54:
	adds r2, r0, #0
_02257D56:
	cmp r2, r1
	ble _02257D5C
	adds r5, r0, #0
_02257D5C:
	ldr r6, [r6, #8]
	cmp r6, r7
	bne _02257D1A
_02257D62:
	ldr r0, [sp]
	str r4, [r0]
	ldr r0, [sp, #4]
	str r5, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02257D04

	thumb_func_start ov22_02257D70
ov22_02257D70: @ 0x02257D70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r0, #0x1c]
	adds r7, #0x14
	str r0, [sp]
	adds r6, r1, #0
	cmp r4, r7
	beq _02257DCE
	asrs r0, r6, #0xa
	movs r1, #0x1f
	ands r0, r1
	str r0, [sp, #0xc]
	asrs r0, r6, #5
	ands r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	ands r0, r1
	str r0, [sp, #4]
_02257D96:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02257DA8
	ldr r0, [r4]
	adds r1, r6, #0
	ldr r0, [r0, #4]
	bl FUN_0201529C
	b _02257DC8
_02257DA8:
	ldr r5, [r4]
	ldr r2, [sp, #0xc]
	ldr r0, [r5]
	movs r1, #0x18
	bl FUN_02007DEC
	ldr r0, [r5]
	ldr r2, [sp, #8]
	movs r1, #0x19
	bl FUN_02007DEC
	ldr r0, [r5]
	ldr r2, [sp, #4]
	movs r1, #0x1a
	bl FUN_02007DEC
_02257DC8:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02257D96
_02257DCE:
	ldr r0, [sp]
	ldr r4, [r0, #0xc]
	adds r5, r0, #4
	cmp r4, r5
	beq _02257DE8
_02257DD8:
	ldr r0, [r4]
	adds r1, r6, #0
	ldr r0, [r0, #4]
	bl FUN_0201529C
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02257DD8
_02257DE8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257D70

	thumb_func_start ov22_02257DEC
ov22_02257DEC: @ 0x02257DEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	adds r0, r1, #0
	add r1, sp, #0x54
	add r2, sp, #0x50
	adds r4, r3, #0
	bl ov22_02259648
	ldr r0, [sp, #0x10]
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl ov22_02259698
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x44
	add r2, sp, #0x34
	add r3, sp, #0x40
	bl ov22_022596B0
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r5, #0
	str r0, [sp, #0x20]
	ldr r6, [sp, #0x54]
	ldr r0, [sp, #0x4c]
	ldr r7, [sp, #0x44]
	adds r1, r6, r0
	ldr r0, [sp, #0x34]
	adds r4, r5, #0
	subs r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x24]
	adds r1, r0, r1
	ldr r0, [sp, #0x30]
	subs r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	adds r0, #0x78
	str r0, [sp, #0x2c]
_02257E50:
	str r4, [sp]
	add r0, sp, #0x3c
	str r0, [sp, #4]
	add r0, sp, #0x38
	str r0, [sp, #8]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	adds r0, r1, r0
	ldr r1, [sp, #0x18]
	adds r2, r6, r7
	bl ov22_022577EC
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x20]
	bl ov22_022592F0
	adds r4, r4, #1
	orrs r5, r0
	cmp r4, #0x10
	blt _02257E50
	cmp r5, #0
	beq _02257EA6
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02257E98
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r1, #0x14
	str r1, [sp, #0xc]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257E98:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x20]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257EA6:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02257EBA
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r1, r1, #4
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257EBA:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x10]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257DEC

	thumb_func_start ov22_02257EC8
ov22_02257EC8: @ 0x02257EC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r0, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl ov22_02259698
	adds r0, r6, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov22_02259648
	add r0, sp, #4
	str r0, [sp]
	adds r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov22_022596B0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	adds r2, r0, r1
	movs r1, #0x8a
	subs r2, r1, r2
	ldr r1, [sp, #0x20]
	adds r1, r0, r1
	ldr r0, [sp, #8]
	subs r1, r1, r0
	ldr r0, [sp, #0x14]
	subs r1, #0xf6
	adds r6, r0, r3
	movs r3, #0x12
	subs r3, r3, r6
	ldr r6, [sp, #0x1c]
	adds r6, r0, r6
	ldr r0, [sp, #4]
	subs r6, r6, r0
	subs r6, #0x8f
	cmp r2, #0
	ble _02257F24
	str r2, [r5]
	b _02257F32
_02257F24:
	cmp r1, #0
	ble _02257F2E
	rsbs r0, r1, #0
	str r0, [r5]
	b _02257F32
_02257F2E:
	movs r0, #0
	str r0, [r5]
_02257F32:
	cmp r3, #0
	ble _02257F3C
	add sp, #0x24
	str r3, [r4]
	pop {r3, r4, r5, r6, pc}
_02257F3C:
	cmp r6, #0
	ble _02257F48
	rsbs r0, r6, #0
	add sp, #0x24
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02257F48:
	movs r0, #0
	str r0, [r4]
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_02257EC8

	thumb_func_start ov22_02257F50
ov22_02257F50: @ 0x02257F50
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	str r1, [r5, #0x44]
	ldr r1, [r4, #4]
	str r1, [r5, #0x48]
	ldr r1, [r4, #8]
	str r1, [r5, #0x4c]
	ldr r1, [r4, #0xc]
	str r1, [r5, #0x50]
	ldr r1, [r4, #0x10]
	str r1, [r5, #0x54]
	ldr r1, [r4, #0x14]
	str r1, [r5, #0x58]
	ldr r1, [r4, #0x18]
	str r1, [r5, #8]
	ldr r1, [r4, #0x28]
	str r1, [r5, #4]
	movs r1, #0
	bl ov22_02258354
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov22_02258470
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02257F50

	thumb_func_start ov22_02257F88
ov22_02257F88: @ 0x02257F88
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov22_022581C0
	adds r5, r6, #0
	movs r4, #0
	adds r5, #0xc
_02257F96:
	adds r0, r5, #0
	bl ov22_02258534
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #4
	blt _02257F96
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x8c
	blx FUN_020D5124
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02257F88

	thumb_func_start ov22_02257FB0
ov22_02257FB0: @ 0x02257FB0
	push {r3, lr}
	cmp r0, #0
	beq _02257FC0
	cmp r0, #1
	beq _02258030
	cmp r0, #2
	beq _0225803E
	pop {r3, pc}
_02257FC0:
	cmp r1, #5
	bgt _02257FC8
	movs r0, #0
	pop {r3, pc}
_02257FC8:
	cmp r1, #0xb
	bgt _02257FD0
	movs r0, #1
	pop {r3, pc}
_02257FD0:
	cmp r1, #0x11
	bgt _02257FD8
	movs r0, #2
	pop {r3, pc}
_02257FD8:
	cmp r1, #0x15
	bgt _02257FE0
	movs r0, #3
	pop {r3, pc}
_02257FE0:
	cmp r1, #0x1c
	bgt _02257FE8
	movs r0, #4
	pop {r3, pc}
_02257FE8:
	cmp r1, #0x21
	bgt _02257FF0
	movs r0, #5
	pop {r3, pc}
_02257FF0:
	cmp r1, #0x26
	bgt _02257FF8
	movs r0, #6
	pop {r3, pc}
_02257FF8:
	cmp r1, #0x2a
	bgt _02258000
	movs r0, #7
	pop {r3, pc}
_02258000:
	cmp r1, #0x31
	bgt _02258008
	movs r0, #8
	pop {r3, pc}
_02258008:
	cmp r1, #0x37
	bgt _02258010
	movs r0, #9
	pop {r3, pc}
_02258010:
	cmp r1, #0x3c
	bgt _02258018
	movs r0, #0xa
	pop {r3, pc}
_02258018:
	cmp r1, #0x47
	bgt _02258020
	movs r0, #0xb
	pop {r3, pc}
_02258020:
	cmp r1, #0x5b
	bgt _02258028
	movs r0, #0xc
	pop {r3, pc}
_02258028:
	cmp r1, #0x63
	bgt _0225804A
	movs r0, #0xd
	pop {r3, pc}
_02258030:
	adds r0, r2, #0
	bl ov22_022589BC
	movs r1, #9
	blx FUN_020E1F6C
	pop {r3, pc}
_0225803E:
	adds r0, r2, #0
	bl ov22_022589BC
	movs r1, #9
	blx FUN_020E1F6C
_0225804A:
	pop {r3, pc}
	thumb_func_end ov22_02257FB0

	thumb_func_start ov22_0225804C
ov22_0225804C: @ 0x0225804C
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	adds r4, r3, #0
	cmp r0, #0
	beq _02258060
	cmp r0, #1
	beq _02258092
	cmp r0, #2
	beq _02258092
	pop {r3, r4, r5, pc}
_02258060:
	movs r0, #0xa
	str r0, [r5]
	movs r0, #0x12
	str r0, [r4]
	bl FUN_0201D35C
	ldr r2, [sp, #0x10]
	movs r1, #0x6c
	subs r1, r1, r2
	blx FUN_020E2178
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	bl FUN_0201D35C
	ldr r2, [sp, #0x14]
	movs r1, #0x7d
	subs r1, r1, r2
	blx FUN_020E2178
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02258092:
	ldr r0, [sp, #0x18]
	bl ov22_022589BC
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov22_02258610
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_0225804C

	thumb_func_start ov22_022580A4
ov22_022580A4: @ 0x022580A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r5, r0, #0
	ldr r0, [r5, #0x58]
	adds r4, r2, #0
	str r4, [sp, #0x40]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x44]
	adds r6, r1, #0
	movs r1, #0
	str r0, [sp, #0x2c]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r6, #0
	beq _022580CC
	cmp r6, #1
	beq _022580D8
	cmp r6, #2
	beq _022580E6
	b _022580F4
_022580CC:
	ldr r0, [r5, #0x50]
	str r4, [sp, #0xc]
	ldrb r0, [r0, r4]
	adds r7, r1, #0
	str r0, [sp, #0x44]
	b _022580F8
_022580D8:
	adds r0, r4, #0
	str r0, [sp, #0xc]
	adds r0, #0x64
	str r0, [sp, #0xc]
	adds r7, r4, #1
	str r1, [sp, #0x44]
	b _022580F8
_022580E6:
	adds r0, r4, #0
	str r0, [sp, #0xc]
	adds r0, #0x64
	str r0, [sp, #0xc]
	adds r7, r4, #1
	str r1, [sp, #0x44]
	b _022580F8
_022580F4:
	bl FUN_02022974
_022580F8:
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0x48]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	lsls r1, r7, #2
	str r0, [sp, #0x30]
	ldr r2, [r5, #0x4c]
	cmp r0, #0
	ldr r1, [r2, r1]
	str r1, [sp, #0x34]
	bne _02258112
	bl FUN_02022974
_02258112:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _0225811C
	bl FUN_02022974
_0225811C:
	ldr r2, [r5, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov22_02257FB0
	adds r7, r0, #0
	add r0, sp, #0x28
	bl ov22_02254E20
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	adds r2, r6, #0
	bl ov22_022594C0
	movs r1, #0xc
	muls r1, r6, r1
	adds r1, r5, r1
	ldr r2, [r1, #0xc]
	lsls r1, r7, #4
	adds r1, r2, r1
	ldr r1, [r1, #0xc]
	str r0, [sp, #0x14]
	bl ov22_02259520
	ldr r0, [sp, #0x14]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov22_02259698
	ldr r0, [sp, #0x1c]
	adds r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r2, sp, #0x24
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r3, sp, #0x20
	str r0, [sp, #8]
	adds r0, r6, #0
	bl ov22_0225804C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl ov22_022595F8
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov22_022585E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_022580A4

	thumb_func_start ov22_0225818C
ov22_0225818C: @ 0x0225818C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r1, #0xc
	adds r5, r0, #0
	muls r1, r4, r1
	adds r7, r3, #0
	adds r1, r5, r1
	adds r6, r2, #0
	ldr r2, [r1, #0xc]
	lsls r1, r6, #4
	adds r0, r7, #0
	adds r1, r2, r1
	bl ov22_02259520
	ldr r1, [r7]
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov22_022585E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225818C

	thumb_func_start ov22_022581B8
ov22_022581B8: @ 0x022581B8
	ldr r3, _022581BC @ =ov22_02259530
	bx r3
	.align 2, 0
_022581BC: .4byte ov22_02259530
	thumb_func_end ov22_022581B8

	thumb_func_start ov22_022581C0
ov22_022581C0: @ 0x022581C0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
_022581C6:
	ldr r0, [r5, #0x10]
	movs r6, #0
	cmp r0, #0
	ble _022581E2
	adds r4, r6, #0
_022581D0:
	ldr r0, [r5, #0xc]
	adds r0, r0, r4
	bl ov22_02259540
	ldr r0, [r5, #0x10]
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, r0
	blt _022581D0
_022581E2:
	adds r7, r7, #1
	adds r5, #0xc
	cmp r7, #3
	blt _022581C6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022581C0

	thumb_func_start ov22_022581EC
ov22_022581EC: @ 0x022581EC
	push {r4, r5, r6, lr}
	movs r5, #0
	mvns r5, r5
	bl ov22_0225855C
	adds r6, r0, #0
	ldr r4, [r6, #8]
	cmp r4, r6
	beq _02258214
_022581FE:
	ldr r0, [r4, #4]
	cmp r0, #2
	bhi _0225820C
	ldr r0, [r4]
	adds r1, r5, #0
	bl ov22_02254F6C
_0225820C:
	ldr r4, [r4, #8]
	subs r5, r5, #1
	cmp r4, r6
	bne _022581FE
_02258214:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_022581EC

	thumb_func_start ov22_02258218
ov22_02258218: @ 0x02258218
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [r5, #0x3c]
	adds r4, r2, #0
	cmp r1, #0
	bne _02258250
	ldr r1, [r5]
	movs r2, #0xc
	muls r2, r1, r2
	str r4, [sp]
	adds r2, r5, r2
	ldr r2, [r2, #0x14]
	adds r3, r6, #0
	bl ov22_0225864C
	movs r0, #0xc
	muls r0, r6, r0
	str r6, [r5]
	adds r0, r5, r0
	str r4, [r0, #0x14]
	adds r0, r5, #0
	bl ov22_022581EC
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_02258250:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_02258218

	thumb_func_start ov22_02258258
ov22_02258258: @ 0x02258258
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	str r2, [sp, #8]
	bl ov22_02258424
	adds r7, r0, #0
	ldr r0, [sp, #4]
	movs r1, #0xc
	muls r1, r0, r1
	ldr r0, [sp]
	movs r4, #1
	adds r6, r0, r1
	ldr r0, [r6, #0x10]
	cmp r0, #1
	ble _022582BA
_0225827A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225828C
	ldr r1, [r6, #0x10]
	adds r0, r4, r7
	blx FUN_020E1F6C
	adds r5, r1, #0
	b _02258294
_0225828C:
	subs r5, r7, r4
	bpl _02258294
	ldr r0, [r6, #0x10]
	adds r5, r5, r0
_02258294:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, r5, #0
	bl ov22_02258584
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _022582B2
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, r5, #0
	bl ov22_02258218
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022582B2:
	ldr r0, [r6, #0x10]
	adds r4, r4, #1
	cmp r4, r0
	blt _0225827A
_022582BA:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_02258258

	thumb_func_start ov22_022582C0
ov22_022582C0: @ 0x022582C0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	movs r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	bl ov22_022584E0
	movs r0, #0xc
	muls r0, r4, r0
	str r4, [r5]
	adds r0, r5, r0
	str r6, [r0, #0x14]
	adds r0, r5, #0
	movs r1, #1
	bl ov22_022584E0
	adds r0, r5, #0
	bl ov22_022581EC
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_022582C0

	thumb_func_start ov22_022582E8
ov22_022582E8: @ 0x022582E8
	push {r3, lr}
	movs r1, #0x12
	add r0, sp, #0
	strb r1, [r0]
	movs r1, #0x8f
	strb r1, [r0, #1]
	movs r1, #0xa
	strb r1, [r0, #2]
	movs r1, #0x76
	strb r1, [r0, #3]
	add r0, sp, #0
	bl FUN_02022734
	pop {r3, pc}
	thumb_func_end ov22_022582E8

	thumb_func_start ov22_02258304
ov22_02258304: @ 0x02258304
	push {r3, lr}
	movs r3, #0x12
	add r0, sp, #0
	strb r3, [r0]
	movs r3, #0x8f
	strb r3, [r0, #1]
	movs r3, #0xa
	strb r3, [r0, #2]
	movs r3, #0x76
	strb r3, [r0, #3]
	add r0, sp, #0
	bl FUN_02022830
	pop {r3, pc}
	thumb_func_end ov22_02258304

	thumb_func_start ov22_02258320
ov22_02258320: @ 0x02258320
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	bl ov22_0225855C
	adds r5, r0, #0
	ldr r4, [r5, #8]
	cmp r4, r5
	beq _0225834E
_02258334:
	ldr r3, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov22_022595AC
	cmp r0, #1
	bne _02258348
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02258348:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02258334
_0225834E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02258320

	thumb_func_start ov22_02258354
ov22_02258354: @ 0x02258354
	push {r3, r4, r5, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	adds r4, r1, #0
	str r0, [sp]
	movs r0, #0x19
	lsls r1, r4, #1
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #0x81
	str r0, [sp, #8]
	movs r0, #0x85
	str r0, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x14]
	movs r0, #0x81
	str r0, [sp, #0x18]
	movs r0, #3
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x20]
	movs r0, #2
	str r0, [sp, #0x24]
	movs r0, #0
	str r0, [sp, #0x28]
	movs r0, #0xe
	adds r1, #0x82
	str r0, [sp, #0x2c]
	adds r0, r5, #0
	str r1, [sp, #0x10]
	adds r0, #0x5c
	add r1, sp, #0
	bl ov22_022597BC
	str r4, [r5, #0x40]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02258354

	thumb_func_start ov22_022583A0
ov22_022583A0: @ 0x022583A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	adds r4, r1, #0
	str r0, [sp, #8]
	movs r0, #0x19
	lsls r1, r4, #1
	str r0, [sp, #0xc]
	adds r0, r1, #0
	adds r0, #0x81
	str r0, [sp, #0x10]
	movs r0, #0x85
	str r0, [sp, #0x14]
	movs r0, #8
	adds r1, #0x82
	str r0, [sp, #0x1c]
	movs r0, #0x81
	str r1, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r0, #3
	movs r1, #2
	str r0, [sp, #0x24]
	movs r0, #1
	str r1, [sp, #0x2c]
	movs r7, #0
	movs r1, #0xe
	str r0, [sp, #0x28]
	str r7, [sp, #0x30]
	str r1, [sp, #0x34]
	tst r0, r2
	beq _022583E2
	movs r7, #0x70
_022583E2:
	movs r0, #2
	tst r0, r2
	beq _022583EC
	movs r6, #0x81
	b _022583EE
_022583EC:
	movs r6, #0
_022583EE:
	ldr r0, [sp, #0x50]
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x5c
	add r1, sp, #8
	adds r2, r7, #0
	adds r3, r6, #0
	bl ov22_022598F4
	str r4, [r5, #0x40]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022583A0

	thumb_func_start ov22_02258408
ov22_02258408: @ 0x02258408
	ldr r3, _02258410 @ =ov22_02259804
	adds r0, #0x5c
	bx r3
	nop
_02258410: .4byte ov22_02259804
	thumb_func_end ov22_02258408

	thumb_func_start ov22_02258414
ov22_02258414: @ 0x02258414
	push {r4, lr}
	adds r4, r0, #0
	bne _0225841E
	bl FUN_02022974
_0225841E:
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02258414

	thumb_func_start ov22_02258424
ov22_02258424: @ 0x02258424
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	bne _02258434
	bl FUN_02022974
_02258434:
	movs r0, #0xc
	muls r0, r4, r0
	adds r3, r5, r0
	adds r3, #0xc
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov22_02258424

	thumb_func_start ov22_0225844C
ov22_0225844C: @ 0x0225844C
	push {r4, lr}
	adds r4, r3, #0
	bl ov22_02258584
	ldr r2, [sp, #8]
	adds r1, r4, #0
	bl ov22_022596EC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225844C

	thumb_func_start ov22_02258460
ov22_02258460: @ 0x02258460
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _0225846A
	movs r0, #1
	bx lr
_0225846A:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov22_02258460

	thumb_func_start ov22_02258470
ov22_02258470: @ 0x02258470
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	adds r5, r0, #0
	adds r0, #0xc
	bl ov22_022584F0
	movs r0, #0
	str r0, [r5]
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl ov22_022584AC
	adds r0, r5, #0
	ldr r1, [r4, #0x20]
	adds r0, #0x18
	bl ov22_022584F0
	adds r0, r5, #0
	ldr r1, [r4, #0x24]
	adds r0, #0x24
	bl ov22_022584F0
	adds r5, #0x30
	adds r0, r5, #0
	movs r1, #1
	bl ov22_022584F0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02258470

	thumb_func_start ov22_022584AC
ov22_022584AC: @ 0x022584AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #8]
	adds r6, r1, #0
	cmp r4, r5
	beq _022584CC
_022584B8:
	ldr r0, [r4, #4]
	cmp r0, #2
	bhi _022584C6
	ldr r0, [r4]
	adds r1, r6, #0
	bl ov22_02254F60
_022584C6:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _022584B8
_022584CC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_022584AC

	thumb_func_start ov22_022584D0
ov22_022584D0: @ 0x022584D0
	push {r4, lr}
	adds r4, r3, #0
	bl ov22_02258584
	adds r1, r4, #0
	bl ov22_022584AC
	pop {r4, pc}
	thumb_func_end ov22_022584D0

	thumb_func_start ov22_022584E0
ov22_022584E0: @ 0x022584E0
	push {r4, lr}
	adds r4, r1, #0
	bl ov22_0225855C
	adds r1, r4, #0
	bl ov22_022584AC
	pop {r4, pc}
	thumb_func_end ov22_022584E0

	thumb_func_start ov22_022584F0
ov22_022584F0: @ 0x022584F0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r0, #0xe
	lsls r1, r4, #4
	bl FUN_02018144
	str r0, [r5]
	str r4, [r5, #4]
	movs r6, #0
	str r6, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02258530
	adds r4, r6, #0
	adds r7, r6, #0
_02258510:
	ldr r0, [r5]
	adds r1, r7, #0
	adds r0, r0, r4
	str r0, [r0, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r0, #0xc]
	ldr r0, [r5]
	adds r0, r0, r4
	bl ov22_022584AC
	ldr r0, [r5, #4]
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, r0
	blt _02258510
_02258530:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_022584F0

	thumb_func_start ov22_02258534
ov22_02258534: @ 0x02258534
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4]
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	pop {r4, pc}
	thumb_func_end ov22_02258534

	thumb_func_start ov22_0225855C
ov22_0225855C: @ 0x0225855C
	push {r3}
	sub sp, #0xc
	ldr r2, [r0]
	movs r1, #0xc
	muls r1, r2, r1
	adds r3, r0, r1
	adds r3, #0xc
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	lsls r0, r0, #4
	adds r0, r1, r0
	add sp, #0xc
	pop {r3}
	bx lr
	.align 2, 0
	thumb_func_end ov22_0225855C

	thumb_func_start ov22_02258584
ov22_02258584: @ 0x02258584
	push {r4}
	sub sp, #0xc
	movs r3, #0xc
	muls r3, r1, r3
	adds r4, r0, r3
	adds r4, #0xc
	ldm r4!, {r0, r1}
	add r3, sp, #0
	stm r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r1, [sp]
	lsls r0, r2, #4
	adds r0, r1, r0
	add sp, #0xc
	pop {r4}
	bx lr
	.align 2, 0
	thumb_func_end ov22_02258584

	thumb_func_start ov22_022585A8
ov22_022585A8: @ 0x022585A8
	push {r4, lr}
	movs r4, #0
	bl ov22_02258584
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _022585BE
_022585B6:
	ldr r1, [r1, #8]
	adds r4, r4, #1
	cmp r1, r0
	bne _022585B6
_022585BE:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022585A8

	thumb_func_start ov22_022585C4
ov22_022585C4: @ 0x022585C4
	push {r3, r4, r5, lr}
	adds r5, r3, #0
	movs r4, #0
	bl ov22_02258584
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _022585E4
_022585D4:
	cmp r4, r5
	bne _022585DC
	adds r0, r1, #0
	pop {r3, r4, r5, pc}
_022585DC:
	ldr r1, [r1, #8]
	adds r4, r4, #1
	cmp r1, r0
	bne _022585D4
_022585E4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022585C4

	thumb_func_start ov22_022585E8
ov22_022585E8: @ 0x022585E8
	push {r4, lr}
	ldr r4, [r0]
	cmp r4, r2
	bne _022585FC
	movs r4, #0xc
	muls r4, r2, r4
	adds r0, r0, r4
	ldr r0, [r0, #0x14]
	cmp r3, r0
	beq _02258606
_022585FC:
	adds r0, r1, #0
	movs r1, #0
	bl ov22_02254F60
	pop {r4, pc}
_02258606:
	adds r0, r1, #0
	movs r1, #1
	bl ov22_02254F60
	pop {r4, pc}
	thumb_func_end ov22_022585E8

	thumb_func_start ov22_02258610
ov22_02258610: @ 0x02258610
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #9
	adds r4, r2, #0
	blx FUN_020E1F6C
	adds r7, r1, #0
	adds r0, r7, #0
	movs r1, #3
	blx FUN_020E1F6C
	adds r6, r0, #0
	adds r0, r7, #0
	movs r1, #3
	blx FUN_020E1F6C
	adds r0, r6, #1
	lsls r2, r0, #3
	lsls r0, r6, #5
	adds r0, r2, r0
	adds r0, #0x10
	str r0, [r4]
	adds r0, r1, #1
	lsls r2, r0, #3
	movs r0, #0x18
	muls r0, r1, r0
	adds r0, r2, r0
	adds r0, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02258610

	thumb_func_start ov22_0225864C
ov22_0225864C: @ 0x0225864C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	ldr r0, _022586C0 @ =ov22_022586C4
	movs r1, #0x30
	movs r2, #0
	movs r3, #0xd
	bl FUN_0200679C
	bl FUN_0201CED0
	adds r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	ldr r0, [sp]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	adds r1, r6, #0
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x1c]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov22_022585A8
	str r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r2, [sp, #0x18]
	adds r0, r5, #0
	bl ov22_022585A8
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	adds r2, r1, r0
	movs r1, #0xc
	movs r0, #0xd
	muls r1, r2, r1
	str r2, [r4, #0x2c]
	bl FUN_02018144
	str r0, [r4, #0x28]
	cmp r0, #0
	bne _022586AC
	bl FUN_02022974
_022586AC:
	ldr r3, [r4, #0x2c]
	movs r2, #0xc
	ldr r0, [r4, #0x28]
	movs r1, #0
	muls r2, r3, r2
	blx FUN_020D5124
	movs r0, #1
	str r0, [r5, #0x3c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022586C0: .4byte ov22_022586C4
	thumb_func_end ov22_0225864C

	thumb_func_start ov22_022586C4
ov22_022586C4: @ 0x022586C4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #4
	bls _022586D4
	b _0225881C
_022586D4:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022586E0: @ jump table
	.2byte _022586EA - _022586E0 - 2 @ case 0
	.2byte _0225873E - _022586E0 - 2 @ case 1
	.2byte _0225878A - _022586E0 - 2 @ case 2
	.2byte _022587D0 - _022586E0 - 2 @ case 3
	.2byte _022587E8 - _022586E0 - 2 @ case 4
_022586EA:
	movs r0, #0x83
	mvns r0, r0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	movs r3, #0
	bl ov22_0225844C
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	movs r3, #1
	bl ov22_022584D0
	movs r0, #0
	str r0, [r4, #0x14]
	adds r1, r4, #0
	ldr r0, [r4]
	adds r1, #0x14
	str r1, [sp]
	ldr r1, [r0, #0x40]
	adds r1, r1, #1
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x1f
	subs r2, r2, r3
	movs r1, #0x1f
	rors r2, r1
	adds r1, r3, r2
	movs r2, #2
	movs r3, #5
	bl ov22_022583A0
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl ov22_022588D8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	b _02258820
_0225873E:
	ldr r0, [r4, #0x18]
	movs r6, #0
	cmp r0, #0
	ble _02258772
	adds r5, r4, #0
	adds r5, #0x20
_0225874A:
	ldr r0, [r4, #0x20]
	subs r0, r0, #1
	bmi _0225876A
	ldr r0, [r5]
	subs r0, r0, #1
	str r0, [r5]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x20]
	bl ov22_022585C4
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov22_0225882C
_0225876A:
	ldr r0, [r4, #0x18]
	adds r6, r6, #1
	cmp r6, r0
	blt _0225874A
_02258772:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02258820
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl ov22_022588D8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	b _02258820
_0225878A:
	ldr r0, [r4, #0x18]
	movs r6, #0
	cmp r0, #0
	ble _022587BE
	adds r5, r4, #0
	adds r5, #0x24
_02258796:
	ldr r0, [r4, #0x24]
	subs r0, r0, #1
	bmi _022587B6
	ldr r0, [r5]
	subs r0, r0, #1
	str r0, [r5]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x24]
	bl ov22_022585C4
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov22_0225882C
_022587B6:
	ldr r0, [r4, #0x18]
	adds r6, r6, #1
	cmp r6, r0
	blt _02258796
_022587BE:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02258820
	ldr r0, [r4, #0x1c]
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x18]
	b _02258820
_022587D0:
	ldr r0, [r4, #0x18]
	adds r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #3
	ble _02258820
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02258820
	ldr r0, [r4, #0x1c]
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	b _02258820
_022587E8:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	movs r3, #0
	bl ov22_022584D0
	movs r0, #0x83
	mvns r0, r0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	movs r3, #0
	bl ov22_0225844C
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x3c]
	ldr r0, [r4, #0x28]
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_020067D0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0225881C:
	bl FUN_02022974
_02258820:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl ov22_0225886C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_022586C4

	thumb_func_start ov22_0225882C
ov22_0225882C: @ 0x0225882C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov22_02258844
	str r4, [r0]
	movs r1, #3
	str r1, [r0, #4]
	movs r1, #0x2c
	str r1, [r0, #8]
	pop {r4, pc}
	thumb_func_end ov22_0225882C

	thumb_func_start ov22_02258844
ov22_02258844: @ 0x02258844
	push {r3, r4}
	movs r3, #0
	cmp r1, #0
	ble _02258866
	adds r4, r0, #0
_0225884E:
	ldr r2, [r4]
	cmp r2, #0
	bne _0225885E
	movs r1, #0xc
	muls r1, r3, r1
	adds r0, r0, r1
	pop {r3, r4}
	bx lr
_0225885E:
	adds r3, r3, #1
	adds r4, #0xc
	cmp r3, r1
	blt _0225884E
_02258866:
	movs r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov22_02258844

	thumb_func_start ov22_0225886C
ov22_0225886C: @ 0x0225886C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	movs r4, #0
	cmp r6, #0
	ble _0225888C
_02258878:
	ldr r0, [r5]
	cmp r0, #0
	beq _02258884
	adds r0, r5, #0
	bl ov22_02258890
_02258884:
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, r6
	blt _02258878
_0225888C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_0225886C

	thumb_func_start ov22_02258890
ov22_02258890: @ 0x02258890
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r1, [sp]
	ldr r0, [r4, #8]
	adds r2, r1, r0
	str r2, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	bl ov22_022595F8
	ldr r0, [r4, #4]
	subs r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _022588D4
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
_022588D4:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov22_02258890

	thumb_func_start ov22_022588D8
ov22_022588D8: @ 0x022588D8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	blx FUN_020E1F6C
	subs r0, r4, r1
	adds r0, r5, r0
	adds r1, r4, #0
	blx FUN_020E1F6C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_022588D8

	thumb_func_start ov22_022588F0
ov22_022588F0: @ 0x022588F0
	adds r3, r0, #0
	movs r2, #0x1c
	movs r1, #0
_022588F6:
	strb r1, [r3]
	adds r3, r3, #1
	subs r2, r2, #1
	bne _022588F6
	ldr r1, _02258908 @ =ov22_02258948
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_02258908: .4byte ov22_02258948
	thumb_func_end ov22_022588F0

	thumb_func_start ov22_0225890C
ov22_0225890C: @ 0x0225890C
	push {r4, lr}
	ldr r1, _02258944 @ =0x021BF6BC
	adds r4, r0, #0
	ldrh r2, [r1, #0x20]
	cmp r2, #0
	beq _0225891E
	ldr r1, [r4, #4]
	blx r1
	b _02258934
_0225891E:
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	beq _0225892A
	ldr r1, [r4, #0xc]
	blx r1
	b _02258934
_0225892A:
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _02258934
	ldr r1, [r4, #8]
	blx r1
_02258934:
	ldr r0, _02258944 @ =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	strh r1, [r4, #0x14]
	ldrh r1, [r0, #0x1e]
	strh r1, [r4, #0x16]
	ldrh r0, [r0, #0x22]
	strb r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
_02258944: .4byte 0x021BF6BC
	thumb_func_end ov22_0225890C

	thumb_func_start ov22_02258948
ov22_02258948: @ 0x02258948
	bx lr
	.align 2, 0
	thumb_func_end ov22_02258948

	thumb_func_start ov22_0225894C
ov22_0225894C: @ 0x0225894C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r0, #0
	movs r4, #0
	adds r5, r7, #0
_02258956:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_02029D94
	adds r4, r4, #1
	stm r5!, {r0}
	cmp r4, #0x64
	blt _02258956
	movs r0, #0x19
	movs r3, #0
	adds r2, r7, #0
	movs r1, #0x12
	lsls r0, r0, #4
_02258970:
	adds r3, r3, #1
	str r1, [r2, r0]
	adds r2, r2, #4
	cmp r3, #0x12
	blt _02258970
	movs r5, #0x19
	movs r4, #0
	lsls r5, r5, #4
_02258980:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_02029DD4
	cmp r0, #0x12
	beq _02258992
	lsls r0, r0, #2
	adds r0, r7, r0
	str r4, [r0, r5]
_02258992:
	adds r4, r4, #1
	cmp r4, #0x12
	blt _02258980
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225894C

	thumb_func_start ov22_0225899C
ov22_0225899C: @ 0x0225899C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0x64
	blo _022589AA
	bl FUN_02022974
_022589AA:
	lsls r0, r5, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225899C

	thumb_func_start ov22_022589B0
ov22_022589B0: @ 0x022589B0
	lsls r1, r1, #2
	adds r1, r0, r1
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov22_022589B0

	thumb_func_start ov22_022589BC
ov22_022589BC: @ 0x022589BC
	push {r3, r4}
	movs r2, #0x19
	movs r4, #0
	lsls r2, r2, #4
_022589C4:
	ldr r3, [r0, r2]
	cmp r1, r3
	bne _022589D0
	adds r0, r4, #0
	pop {r3, r4}
	bx lr
_022589D0:
	adds r4, r4, #1
	adds r0, r0, #4
	cmp r4, #0x12
	blt _022589C4
	adds r0, r4, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov22_022589BC

	thumb_func_start ov22_022589E0
ov22_022589E0: @ 0x022589E0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov22_022588F0
	movs r0, #0xd
	movs r1, #0x34
	bl FUN_02018144
	str r0, [r5]
	movs r1, #0
	movs r2, #0x34
	blx FUN_020D5124
	ldr r1, [r5]
	ldr r0, [sp, #0x18]
	str r4, [r1, #4]
	str r6, [r1, #8]
	str r7, [r1]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x2c]
	ldr r0, _02258A24 @ =ov22_02258A48
	str r0, [r5, #4]
	ldr r0, _02258A28 @ =ov22_02258BB8
	str r0, [r5, #8]
	ldr r0, _02258A2C @ =ov22_02258D4C
	str r0, [r5, #0xc]
	ldr r0, _02258A30 @ =ov22_02258A34
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258A24: .4byte ov22_02258A48
_02258A28: .4byte ov22_02258BB8
_02258A2C: .4byte ov22_02258D4C
_02258A30: .4byte ov22_02258A34
	thumb_func_end ov22_022589E0

	thumb_func_start ov22_02258A34
ov22_02258A34: @ 0x02258A34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020181C4
	adds r0, r4, #0
	bl ov22_022588F0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02258A34

	thumb_func_start ov22_02258A48
ov22_02258A48: @ 0x02258A48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5]
	ldr r0, [r4, #4]
	bl ov22_02257BE8
	cmp r0, #0
	beq _02258ACA
	ldr r3, [r4]
	ldr r0, [r4, #4]
	ldr r3, [r3, #0x38]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02257C20
	adds r6, r0, #0
	beq _02258A7A
	ldr r0, [r6, #4]
	cmp r0, #3
	bne _02258A7A
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _02258A7A
	movs r6, #0
_02258A7A:
	cmp r6, #0
	beq _02258B06
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02258A90
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl ov22_02257A80
	movs r7, #0
	b _02258AAC
_02258A90:
	adds r0, r6, #0
	bl ov22_022579E8
	ldr r0, [r6]
	bl ov22_022591E0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, #0x24
	adds r2, #0x28
	bl ov22_02259648
_02258AAC:
	ldr r0, [r4, #4]
	bl ov22_02257B10
	ldr r0, [sp, #8]
	adds r1, r6, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r3, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #1
	bl ov22_02258E88
	bl ov22_02255390
	b _02258B06
_02258ACA:
	ldr r0, [r4, #8]
	bl ov22_022582E8
	cmp r0, #0
	beq _02258B06
	ldr r3, [r4]
	ldr r0, [r4, #8]
	ldr r3, [r3, #0x38]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02258320
	adds r6, r0, #0
	beq _02258B06
	bl ov22_022581B8
	ldr r0, [r4, #8]
	bl ov22_022581EC
	ldr r0, [sp, #8]
	movs r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldr r3, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov22_02258E88
	bl ov22_02255390
_02258B06:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02258B50
	ldr r1, [r1, #4]
	ldr r0, _02258B54 @ =0x000005EB
	cmp r1, #0
	beq _02258B1E
	cmp r1, #1
	beq _02258B28
	cmp r1, #3
	beq _02258B3A
	b _02258B42
_02258B1E:
	ldr r1, _02258B58 @ =ov22_02258BB8
	str r1, [r5, #8]
	ldr r1, _02258B5C @ =ov22_02258D4C
	str r1, [r5, #0xc]
	b _02258B42
_02258B28:
	ldr r0, _02258B60 @ =ov22_02258B78
	str r0, [r5, #8]
	ldr r0, _02258B64 @ =ov22_02258B74
	str r0, [r5, #0xc]
	adds r0, r5, #0
	bl ov22_02258E5C
	ldr r0, _02258B68 @ =0x0000067E
	b _02258B42
_02258B3A:
	ldr r1, _02258B6C @ =ov22_02258D7C
	str r1, [r5, #8]
	ldr r1, _02258B70 @ =ov22_02258DAC
	str r1, [r5, #0xc]
_02258B42:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
	adds r0, r4, #0
	bl ov22_02259040
_02258B50:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02258B54: .4byte 0x000005EB
_02258B58: .4byte ov22_02258BB8
_02258B5C: .4byte ov22_02258D4C
_02258B60: .4byte ov22_02258B78
_02258B64: .4byte ov22_02258B74
_02258B68: .4byte 0x0000067E
_02258B6C: .4byte ov22_02258D7C
_02258B70: .4byte ov22_02258DAC
	thumb_func_end ov22_02258A48

	thumb_func_start ov22_02258B74
ov22_02258B74: @ 0x02258B74
	bx lr
	.align 2, 0
	thumb_func_end ov22_02258B74

	thumb_func_start ov22_02258B78
ov22_02258B78: @ 0x02258B78
	push {r4, lr}
	sub sp, #8
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258BB2
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _02258B8E
	bl FUN_02022974
_02258B8E:
	ldr r0, [r4, #0x10]
	movs r2, #0x1c
	ldr r0, [r0, #4]
	movs r3, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	movs r1, #4
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	adds r0, r4, #0
	bl ov22_02258F4C
	adds r0, r4, #0
	bl ov22_02258EE4
_02258BB2:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02258B78

	thumb_func_start ov22_02258BB8
ov22_02258BB8: @ 0x02258BB8
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	ldr r4, [r6]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _02258BC8
	b _02258D36
_02258BC8:
	add r1, sp, #0x18
	str r1, [sp]
	add r1, sp, #0x24
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov22_02258F38
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	bl ov22_02257C04
	adds r5, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	bl ov22_02257C04
	adds r5, r5, r0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	bl ov22_02257C04
	adds r5, r5, r0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov22_02257C04
	adds r0, r5, r0
	cmp r0, #4
	blt _02258C6A
	ldr r2, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #0x38]
	bl ov22_02257A5C
	cmp r0, #0
	bne _02258C54
	movs r0, #0x1c
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
	movs r0, #0x1e
	ldrsh r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, _02258D3C @ =0x00000683
	bl FUN_02005748
	ldr r0, [r4, #0xc]
	ldr r2, _02258D40 @ =0x00000181
	movs r1, #0x1a
	movs r3, #3
	bl ov22_0225A628
	ldr r0, [r4, #0x10]
	movs r1, #4
	ldr r0, [r0, #4]
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	adds r0, r4, #0
	bl ov22_02258F4C
	b _02258D30
_02258C54:
	ldr r0, [r4, #4]
	bl ov22_02257B10
	bl ov22_02255360
	movs r0, #0
	str r0, [r4, #0x30]
	ldr r0, _02258D44 @ =0x000005EA
	bl FUN_02005748
	b _02258D30
_02258C6A:
	ldr r0, [r4, #0x10]
	add r1, sp, #0x24
	ldr r5, [r0]
	add r0, sp, #0x18
	str r0, [sp]
	adds r0, r6, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov22_02258EF8
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	bl ov22_02258304
	adds r6, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov22_02258304
	adds r0, r6, r0
	cmp r0, #2
	bge _02258CE8
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02258CD4
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov22_02259698
	bl FUN_0201D35C
	ldr r2, [sp, #0x14]
	movs r1, #0x6c
	subs r1, r1, r2
	blx FUN_020E2178
	adds r1, #0xa
	str r1, [sp, #0xc]
	bl FUN_0201D35C
	ldr r2, [sp, #0x10]
	movs r1, #0x7d
	subs r1, r1, r2
	blx FUN_020E2178
	adds r1, #0x12
	str r1, [sp, #8]
	b _02258CE0
_02258CD4:
	movs r0, #0x1c
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
	movs r0, #0x1e
	ldrsh r0, [r4, r0]
	str r0, [sp, #8]
_02258CE0:
	ldr r0, _02258D3C @ =0x00000683
	bl FUN_02005748
	b _02258CF8
_02258CE8:
	ldr r0, [r4, #0x10]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259648
	ldr r0, _02258D48 @ =0x000005EB
	bl FUN_02005748
_02258CF8:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02258D16
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #8]
	ldr r0, [r0, #4]
	ldr r1, [r5]
	ldr r2, [r2, #4]
	bl ov22_02257FB0
	adds r1, r4, #0
	adds r1, #0x21
	strb r0, [r1]
_02258D16:
	ldr r0, [r4, #0x10]
	movs r1, #4
	ldr r0, [r0, #4]
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	adds r0, r4, #0
	bl ov22_02258F4C
_02258D30:
	adds r0, r4, #0
	bl ov22_02258EE4
_02258D36:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_02258D3C: .4byte 0x00000683
_02258D40: .4byte 0x00000181
_02258D44: .4byte 0x000005EA
_02258D48: .4byte 0x000005EB
	thumb_func_end ov22_02258BB8

	thumb_func_start ov22_02258D4C
ov22_02258D4C: @ 0x02258D4C
	push {r4, lr}
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	beq _02258D70
	ldr r3, _02258D74 @ =0x021BF6BC
	ldr r1, _02258D78 @ =0x0000FFFF
	ldrh r4, [r3, #0x1c]
	cmp r4, r1
	beq _02258D70
	beq _02258D70
	ldrh r3, [r3, #0x1e]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x18]
	subs r1, r4, r1
	subs r2, r3, r2
	bl ov22_022595F8
_02258D70:
	pop {r4, pc}
	nop
_02258D74: .4byte 0x021BF6BC
_02258D78: .4byte 0x0000FFFF
	thumb_func_end ov22_02258D4C

	thumb_func_start ov22_02258D7C
ov22_02258D7C: @ 0x02258D7C
	push {r4, lr}
	ldr r4, [r0]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02258DA6
	ldr r0, [r4, #4]
	bl ov22_022579D8
	ldr r0, [r4, #4]
	bl ov22_02257B10
	bl ov22_02255360
	movs r0, #0
	str r0, [r4, #0x30]
	ldr r0, _02258DA8 @ =0x000005EB
	bl FUN_02005748
	adds r0, r4, #0
	bl ov22_02258EE4
_02258DA6:
	pop {r4, pc}
	.align 2, 0
_02258DA8: .4byte 0x000005EB
	thumb_func_end ov22_02258D7C

	thumb_func_start ov22_02258DAC
ov22_02258DAC: @ 0x02258DAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, [r0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258E50
	ldr r1, _02258E54 @ =0x021BF6BC
	ldrh r2, [r1, #0x1c]
	ldr r1, _02258E58 @ =0x0000FFFF
	cmp r2, r1
	beq _02258E50
	beq _02258E50
	add r1, sp, #8
	str r1, [sp]
	add r1, sp, #0x14
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl ov22_022596B0
	ldr r0, [r4, #0x10]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov22_02259698
	ldr r0, _02258E54 @ =0x021BF6BC
	ldr r1, [r4, #0x14]
	ldrh r2, [r0, #0x1c]
	ldr r3, [sp, #0x18]
	subs r5, r2, r1
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x1c]
	subs r6, r1, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	subs r0, r2, r0
	ldr r2, [sp, #8]
	adds r7, r6, r1
	subs r2, r3, r2
	ldr r3, [sp, #0x14]
	str r2, [sp, #0x18]
	adds r2, r5, r3
	str r0, [sp, #0x1c]
	cmp r2, #0x8a
	bgt _02258E0E
	movs r0, #0x8a
	subs r5, r0, r3
	b _02258E18
_02258E0E:
	adds r2, r5, r0
	cmp r2, #0xf6
	blt _02258E18
	movs r2, #0xf6
	subs r5, r2, r0
_02258E18:
	cmp r7, #0x12
	bgt _02258E22
	movs r0, #0x12
	subs r6, r0, r1
	b _02258E2E
_02258E22:
	ldr r1, [sp, #0x18]
	adds r0, r6, r1
	cmp r0, #0x8f
	blt _02258E2E
	movs r0, #0x8f
	subs r6, r0, r1
_02258E2E:
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov22_02259074
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov22_02257D04
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #4]
	adds r1, r5, r1
	adds r2, r6, r2
	bl ov22_02259074
_02258E50:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02258E54: .4byte 0x021BF6BC
_02258E58: .4byte 0x0000FFFF
	thumb_func_end ov22_02258DAC

	thumb_func_start ov22_02258E5C
ov22_02258E5C: @ 0x02258E5C
	push {r3, r4, r5, lr}
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258E84
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _02258E70
	bl FUN_02022974
_02258E70:
	ldr r0, [r4, #0x10]
	ldr r5, [r0]
	ldr r0, [r4, #4]
	bl ov22_02257CD4
	ldr r0, [r4, #4]
	ldr r1, [r5]
	movs r2, #0xe
	bl ov22_02257C88
_02258E84:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02258E5C

	thumb_func_start ov22_02258E88
ov22_02258E88: @ 0x02258E88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	adds r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	adds r7, r3, #0
	bl ov22_02259648
	str r4, [r5, #0x10]
	ldr r0, [sp, #4]
	strh r0, [r5, #0x1c]
	ldr r0, [sp]
	strh r0, [r5, #0x1e]
	adds r0, r5, #0
	adds r0, #0x20
	strb r6, [r0]
	ldr r0, [sp, #0x20]
	str r7, [r5, #0x14]
	str r0, [r5, #0x18]
	cmp r6, #0
	bne _02258ECA
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [r1, #4]
	bl ov22_02258424
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	b _02258ED2
_02258ECA:
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x21
	strb r1, [r0]
_02258ED2:
	movs r0, #1
	str r0, [r5, #0x30]
	ldr r1, [sp, #0x24]
	adds r0, r4, #0
	bl ov22_02259560
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02258E88

	thumb_func_start ov22_02258EE4
ov22_02258EE4: @ 0x02258EE4
	movs r2, #0
	str r2, [r0, #0x10]
	strh r2, [r0, #0x1c]
	adds r1, r0, #0
	strh r2, [r0, #0x1e]
	adds r1, #0x20
	strb r2, [r1]
	adds r0, #0x21
	strb r2, [r0]
	bx lr
	thumb_func_end ov22_02258EE4

	thumb_func_start ov22_02258EF8
ov22_02258EF8: @ 0x02258EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [r0]
	adds r5, r1, #0
	ldr r0, [r4, #0x10]
	adds r6, r2, #0
	add r1, sp, #0xc
	add r2, sp, #8
	adds r7, r3, #0
	bl ov22_02259698
	ldr r0, [r4, #0x10]
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r0, [sp]
	str r0, [r5]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	str r0, [r6]
	ldr r0, [sp, #4]
	str r0, [r7]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r1, r1, r0
	ldr r0, [sp, #0x28]
	str r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02258EF8

	thumb_func_start ov22_02258F38
ov22_02258F38: @ 0x02258F38
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bl ov22_02259724
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov22_02258F38

	thumb_func_start ov22_02258F4C
ov22_02258F4C: @ 0x02258F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	ldr r0, _02258FBC @ =ov22_02258FC0
	movs r1, #0x2c
	movs r2, #0
	movs r3, #0xd
	bl FUN_0200679C
	bl FUN_0201CED0
	adds r4, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #8
	str r0, [r4]
	ldr r0, [r5, #0x10]
	add r2, sp, #4
	str r0, [r4, #4]
	str r6, [r4, #0x20]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #8]
	adds r0, #0x3c
	str r0, [r4, #0x24]
	adds r0, r5, #0
	adds r0, #0x30
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x10]
	bl ov22_02259648
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #8]
	subs r0, r1, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	str r0, [r4, #8]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #4]
	subs r0, r1, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02258FBC: .4byte ov22_02258FC0
	thumb_func_end ov22_02258F4C

	thumb_func_start ov22_02258FC0
ov22_02258FC0: @ 0x02258FC0
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r0, [r0]
	cmp r0, #1
	beq _0225903A
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r1, [sp, #4]
	ldr r0, [r4, #8]
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r4, #0xc]
	adds r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	subs r0, r0, #1
	str r0, [r4, #0x20]
	bmi _02258FFE
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02259030
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02259030
_02258FFE:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov22_022595F8
	ldr r0, [r4]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #4]
	bl ov22_0225818C
	ldr r0, [r4]
	bl ov22_022581EC
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	cmp r0, #0
	bne _02259026
	bl ov22_02255360
_02259026:
	adds r0, r5, #0
	bl FUN_020067D0
	add sp, #8
	pop {r3, r4, r5, pc}
_02259030:
	ldr r0, [r4, #4]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov22_022595F8
_0225903A:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02258FC0

	thumb_func_start ov22_02259040
ov22_02259040: @ 0x02259040
	push {r3, lr}
	ldr r3, [r0, #0x10]
	ldr r1, [r3, #4]
	cmp r1, #0
	bne _0225905A
	ldr r3, [r3]
	ldr r0, [r0, #0xc]
	ldr r2, _02259070 @ =0x00000182
	ldr r3, [r3]
	movs r1, #0x1a
	bl ov22_0225A628
	pop {r3, pc}
_0225905A:
	cmp r1, #1
	bne _0225906E
	ldr r3, [r3]
	movs r2, #0x61
	ldr r0, [r0, #0xc]
	ldr r3, [r3]
	movs r1, #0x1a
	lsls r2, r2, #2
	bl ov22_0225A628
_0225906E:
	pop {r3, pc}
	.align 2, 0
_02259070: .4byte 0x00000182
	thumb_func_end ov22_02259040

	thumb_func_start ov22_02259074
ov22_02259074: @ 0x02259074
	push {r4, r5, r6, lr}
	ldr r4, [r0]
	adds r5, r1, #0
	ldr r0, [r4, #0x10]
	adds r6, r2, #0
	bl ov22_022595F8
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #4]
	subs r1, r5, r1
	subs r2, r6, r2
	bl ov22_02257ACC
	str r5, [r4, #0x24]
	str r6, [r4, #0x28]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_02259074

	thumb_func_start ov22_02259098
ov22_02259098: @ 0x02259098
	push {r3, r4, r5, lr}
	movs r2, #0
	adds r4, r1, #0
	str r2, [sp]
	adds r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r3, #0xe
	bl FUN_02006FE8
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x76
	bl ov22_02255340
	ldrh r1, [r4]
	ldr r0, [r0, #0x14]
	bl FUN_020093A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259098

	thumb_func_start ov22_022590C0
ov22_022590C0: @ 0x022590C0
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl ov22_022590D4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov22_022590C0

	thumb_func_start ov22_022590D4
ov22_022590D4: @ 0x022590D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r2, #0
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r3, #0
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #2
	bl FUN_02075F00
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0xc0
	movs r3, #0x38
	bl FUN_02007C34
	str r0, [r5]
	adds r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov22_02259270
	ldr r1, [sp, #0x1c]
	movs r2, #0x38
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	subs r0, r2, r0
	strb r0, [r5, #4]
	ldr r0, [sp, #0x18]
	movs r1, #0xc0
	adds r0, #0x38
	strb r0, [r5, #5]
	ldr r0, [sp, #0x1c]
	subs r0, r1, r0
	strb r0, [r5, #6]
	ldr r0, [sp, #0x1c]
	adds r0, #0xc0
	strb r0, [r5, #7]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r3, [sp, #0x1c]
	adds r0, r5, #4
	bl ov22_02259448
	adds r0, r6, #0
	movs r1, #2
	bl FUN_020765B8
	movs r2, #0
	str r2, [sp]
	adds r7, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r3, [sp, #0x38]
	bl FUN_02006FE8
	add r1, sp, #0x14
	str r0, [sp, #0x10]
	blx FUN_020A7118
	ldr r0, [sp, #0x14]
	ldrh r1, [r4]
	ldr r0, [r0, #0x14]
	bl FUN_020093A0
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _02259196
	ldr r2, [sp, #0x14]
	adds r3, r5, #0
	ldrh r1, [r2, #2]
	ldr r0, [r2, #0x14]
	ldrh r2, [r2]
	lsls r1, r1, #3
	adds r3, #8
	lsls r2, r2, #3
	bl ov22_022593B8
	b _022591AC
_02259196:
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x14]
	ldrh r1, [r1, #2]
	lsls r1, r1, #3
	bl ov22_0225936C
	strb r0, [r5, #8]
	ldrb r0, [r5, #8]
	strb r0, [r5, #9]
	strb r7, [r5, #0xb]
	strb r7, [r5, #0xa]
_022591AC:
	ldr r0, [sp, #0x10]
	bl FUN_020181C4
	str r6, [r5, #0xc]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022590D4

	thumb_func_start ov22_022591B8
ov22_022591B8: @ 0x022591B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02007DC8
	movs r1, #0x10
	movs r0, #0
_022591C6:
	strb r0, [r4]
	adds r4, r4, #1
	subs r1, r1, #1
	bne _022591C6
	pop {r4, pc}
	thumb_func_end ov22_022591B8

	thumb_func_start ov22_022591D0
ov22_022591D0: @ 0x022591D0
	ldr r3, _022591DC @ =FUN_02007DEC
	adds r2, r1, #0
	ldr r0, [r0]
	movs r1, #2
	bx r3
	nop
_022591DC: .4byte FUN_02007DEC
	thumb_func_end ov22_022591D0

	thumb_func_start ov22_022591E0
ov22_022591E0: @ 0x022591E0
	ldr r3, _022591E8 @ =FUN_020080C0
	ldr r0, [r0]
	movs r1, #2
	bx r3
	.align 2, 0
_022591E8: .4byte FUN_020080C0
	thumb_func_end ov22_022591E0

	thumb_func_start ov22_022591EC
ov22_022591EC: @ 0x022591EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02259270
	ldr r0, [r5]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_02007DEC
	ldr r0, [r5]
	movs r1, #1
	adds r2, r6, #0
	bl FUN_02007DEC
	ldr r1, [sp, #4]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r2, r0, #1
	ldr r1, [sp, #8]
	str r2, [sp, #4]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp, #8]
	str r2, [sp]
	ldr r3, [sp, #8]
	adds r0, r5, #4
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov22_02259448
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_022591EC

	thumb_func_start ov22_02259238
ov22_02259238: @ 0x02259238
	ldr r3, _02259240 @ =FUN_02022734
	adds r0, r0, #4
	bx r3
	nop
_02259240: .4byte FUN_02022734
	thumb_func_end ov22_02259238

	thumb_func_start ov22_02259244
ov22_02259244: @ 0x02259244
	ldr r3, _0225924C @ =FUN_02022830
	adds r0, r0, #4
	bx r3
	nop
_0225924C: .4byte FUN_02022830
	thumb_func_end ov22_02259244

	thumb_func_start ov22_02259250
ov22_02259250: @ 0x02259250
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	movs r1, #0
	adds r6, r2, #0
	bl FUN_020080C0
	str r0, [r4]
	ldr r0, [r5]
	movs r1, #1
	bl FUN_020080C0
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_02259250

	thumb_func_start ov22_02259270
ov22_02259270: @ 0x02259270
	movs r0, #0x50
	str r0, [r1]
	str r0, [r2]
	bx lr
	thumb_func_end ov22_02259270

	thumb_func_start ov22_02259278
ov22_02259278: @ 0x02259278
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov22_02259238
	cmp r0, #0
	bne _02259292
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02259292:
	adds r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259250
	adds r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259270
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r1, r2, r0
	ldr r3, [sp, #8]
	ldr r0, [sp]
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	asrs r2, r2, #1
	subs r0, r0, r2
	str r0, [sp]
	ldr r0, _022592EC @ =0x021BF6BC
	str r1, [sp, #4]
	ldrh r2, [r0, #0x1c]
	movs r3, #0
	subs r1, r2, r1
	str r1, [r4]
	ldrh r1, [r0, #0x1e]
	ldr r0, [sp]
	subs r2, r1, r0
	str r2, [r6]
	ldr r1, [r4]
	adds r0, r7, #0
	bl ov22_02255420
	cmp r0, #0
	bne _022592E6
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022592E6:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022592EC: .4byte 0x021BF6BC
	thumb_func_end ov22_02259278

	thumb_func_start ov22_022592F0
ov22_022592F0: @ 0x022592F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov22_02259244
	cmp r0, #0
	bne _0225930A
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225930A:
	adds r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259250
	adds r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259270
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r1, r2, r0
	ldr r3, [sp, #8]
	str r1, [sp, #4]
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	ldr r0, [sp]
	asrs r2, r2, #1
	subs r0, r0, r2
	str r0, [sp]
	subs r2, r6, r0
	subs r1, r4, r1
	adds r0, r7, #0
	movs r3, #0
	bl ov22_02255420
	cmp r0, #0
	bne _02259350
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02259350:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_022592F0

	thumb_func_start ov22_02259358
ov22_02259358: @ 0x02259358
	ldrb r2, [r0, #8]
	strb r2, [r1]
	ldrb r2, [r0, #9]
	strb r2, [r1, #1]
	ldrb r2, [r0, #0xa]
	strb r2, [r1, #2]
	ldrb r0, [r0, #0xb]
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
	thumb_func_end ov22_02259358

	thumb_func_start ov22_0225936C
ov22_0225936C: @ 0x0225936C
	push {r4, r5, r6, r7}
	mov ip, r0
	adds r7, r1, #0
	movs r2, #0
_02259374:
	movs r3, #0
	adds r4, r3, #0
_02259378:
	adds r1, r2, r4
	lsrs r0, r1, #0x1f
	lsls r6, r1, #0x1f
	subs r6, r6, r0
	movs r5, #0x1f
	rors r6, r5
	adds r5, r0, r6
	lsls r6, r5, #2
	movs r5, #0xf
	adds r0, r1, r0
	lsls r5, r6
	asrs r1, r0, #1
	mov r0, ip
	lsls r5, r5, #0x18
	ldrsb r0, [r0, r1]
	lsrs r5, r5, #0x18
	tst r0, r5
	beq _022593A2
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
_022593A2:
	adds r3, r3, #1
	adds r4, r4, r7
	cmp r3, #0x50
	blt _02259378
	adds r2, r2, #1
	cmp r2, #0x50
	blt _02259374
	movs r0, #0x50
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov22_0225936C

	thumb_func_start ov22_022593B8
ov22_022593B8: @ 0x022593B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	adds r1, r3, #0
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	movs r6, #0
_022593CE:
	movs r2, #0x50
	subs r2, r2, r6
	str r2, [sp, #8]
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	mov lr, r2
	ldr r2, [sp, #8]
	movs r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r5, r0, #0
	mov ip, r2
_022593E6:
	adds r7, r6, r5
	lsrs r3, r7, #0x1f
	lsls r4, r7, #0x1f
	subs r4, r4, r3
	movs r2, #0x1f
	rors r4, r2
	adds r2, r3, r4
	lsls r4, r2, #2
	movs r2, #0xf
	lsls r2, r4
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	adds r3, r7, r3
	ldr r2, [sp]
	asrs r3, r3, #1
	ldrsb r2, [r2, r3]
	tst r2, r4
	beq _02259434
	ldrb r2, [r1]
	cmp r2, r6
	ble _02259414
	mov r2, lr
	strb r2, [r1]
_02259414:
	ldrb r3, [r1, #1]
	ldr r2, [sp, #8]
	cmp r3, r2
	ble _02259420
	mov r2, ip
	strb r2, [r1, #1]
_02259420:
	ldrb r2, [r1, #2]
	cmp r2, r0
	ble _02259428
	strb r0, [r1, #2]
_02259428:
	movs r2, #0x50
	subs r3, r2, r0
	ldrb r2, [r1, #3]
	cmp r2, r3
	ble _02259434
	strb r3, [r1, #3]
_02259434:
	ldr r2, [sp, #4]
	adds r0, r0, #1
	adds r5, r5, r2
	cmp r0, #0x50
	blt _022593E6
	adds r6, r6, #1
	cmp r6, #0x50
	blt _022593CE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_022593B8

	thumb_func_start ov22_02259448
ov22_02259448: @ 0x02259448
	push {r3, r4}
	ldr r4, [sp, #8]
	subs r4, r2, r4
	bmi _02259452
	b _02259454
_02259452:
	movs r4, #0
_02259454:
	strb r4, [r0]
	ldr r4, [sp, #8]
	adds r2, r2, r4
	cmp r2, #0xbf
	bgt _02259460
	b _02259462
_02259460:
	movs r2, #0xbf
_02259462:
	strb r2, [r0, #1]
	subs r2, r1, r3
	bmi _0225946A
	b _0225946C
_0225946A:
	movs r2, #0
_0225946C:
	adds r1, r1, r3
	strb r2, [r0, #2]
	cmp r1, #0xff
	bgt _0225947A
	strb r1, [r0, #3]
	pop {r3, r4}
	bx lr
_0225947A:
	movs r1, #0xff
	strb r1, [r0, #3]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov22_02259448

	thumb_func_start ov22_02259484
ov22_02259484: @ 0x02259484
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r4, r6, #4
	adds r5, r0, #0
	adds r0, r2, #0
	adds r1, r4, #0
	bl FUN_02018144
	str r0, [r5]
	cmp r0, #0
	bne _0225949E
	bl FUN_02022974
_0225949E:
	ldr r0, [r5]
	movs r1, #0
	adds r2, r4, #0
	blx FUN_020D5124
	str r6, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259484

	thumb_func_start ov22_022594AC
ov22_022594AC: @ 0x022594AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022594AC

	thumb_func_start ov22_022594C0
ov22_022594C0: @ 0x022594C0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r0, #0
	bne _022594D2
	bl FUN_02022974
_022594D2:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _022594DC
	bl FUN_02022974
_022594DC:
	ldr r2, [r5, #4]
	movs r4, #0
	cmp r2, #0
	ble _022594F4
	ldr r1, [r5]
_022594E6:
	ldr r0, [r1]
	cmp r0, #0
	beq _022594F4
	adds r4, r4, #1
	adds r1, #0x10
	cmp r4, r2
	blt _022594E6
_022594F4:
	cmp r2, r4
	bgt _022594FC
	bl FUN_02022974
_022594FC:
	ldr r0, [r5]
	lsls r1, r4, #4
	str r6, [r0, r1]
	ldr r0, [r5]
	adds r0, r0, r1
	str r7, [r0, #4]
	ldr r0, [r5]
	adds r0, r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_022594C0

	thumb_func_start ov22_02259510
ov22_02259510: @ 0x02259510
	movs r2, #0x10
	movs r1, #0
_02259514:
	strb r1, [r0]
	adds r0, r0, #1
	subs r2, r2, #1
	bne _02259514
	bx lr
	.align 2, 0
	thumb_func_end ov22_02259510

	thumb_func_start ov22_02259520
ov22_02259520: @ 0x02259520
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #8]
	str r0, [r2, #0xc]
	str r1, [r0, #0xc]
	str r0, [r1, #8]
	bx lr
	.align 2, 0
	thumb_func_end ov22_02259520

	thumb_func_start ov22_02259530
ov22_02259530: @ 0x02259530
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r2, [r1, #8]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov22_02259530

	thumb_func_start ov22_02259540
ov22_02259540: @ 0x02259540
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #8]
	cmp r4, r6
	beq _0225955E
_0225954A:
	adds r0, r4, #0
	ldr r5, [r4, #8]
	bl ov22_02259530
	adds r0, r4, #0
	bl ov22_02259510
	adds r4, r5, #0
	cmp r5, r6
	bne _0225954A
_0225955E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259540

	thumb_func_start ov22_02259560
ov22_02259560: @ 0x02259560
	push {r3, lr}
	ldr r2, [r0, #4]
	ldr r0, [r0]
	cmp r2, #3
	bge _02259570
	bl ov22_02254F6C
	pop {r3, pc}
_02259570:
	bl ov22_022591D0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_02259560

	thumb_func_start ov22_02259578
ov22_02259578: @ 0x02259578
	push {r3, lr}
	ldr r3, [r0, #4]
	ldr r0, [r0]
	cmp r3, #3
	bge _02259596
	movs r3, #0
	mvns r3, r3
	cmp r1, r3
	bne _02259590
	bl ov22_02254E44
	pop {r3, pc}
_02259590:
	bl ov22_02254EDC
	pop {r3, pc}
_02259596:
	movs r3, #0
	mvns r3, r3
	cmp r1, r3
	bne _022595A4
	bl ov22_02259238
	pop {r3, pc}
_022595A4:
	bl ov22_02259244
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_02259578

	thumb_func_start ov22_022595AC
ov22_022595AC: @ 0x022595AC
	push {r4, lr}
	ldr r4, [r0, #4]
	cmp r4, #0
	bne _022595C2
	ldr r0, [r0]
	ldr r4, [r0]
	lsls r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595C2:
	cmp r4, #1
	bne _022595D6
	ldr r0, [r0]
	ldr r4, [r0]
	adds r4, #0x64
	lsls r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595D6:
	cmp r4, #2
	ldr r0, [r0]
	bne _022595EA
	ldr r4, [r0]
	adds r4, #0x64
	lsls r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595EA:
	movs r4, #0x76
	lsls r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02259278
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_022595AC

	thumb_func_start ov22_022595F8
ov22_022595F8: @ 0x022595F8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r1, [r0, #4]
	adds r4, r2, #0
	cmp r1, #3
	bge _02259618
	lsls r1, r5, #0x10
	lsls r2, r4, #0x10
	ldr r0, [r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl ov22_02254EF4
	add sp, #8
	pop {r4, r5, r6, pc}
_02259618:
	ldr r6, [r0]
	add r1, sp, #4
	adds r0, r6, #0
	add r2, sp, #0
	bl ov22_02259270
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
	asrs r2, r0, #1
	str r1, [sp, #4]
	str r2, [sp]
	adds r0, r6, #0
	adds r1, r5, r1
	adds r2, r4, r2
	bl ov22_022591EC
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_022595F8

	thumb_func_start ov22_02259648
ov22_02259648: @ 0x02259648
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, [r0, #4]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r3, #3
	bge _02259660
	ldr r0, [r0]
	bl ov22_02254F00
	add sp, #8
	pop {r4, r5, r6, pc}
_02259660:
	ldr r6, [r0]
	adds r0, r6, #0
	bl ov22_02259250
	adds r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259270
	ldr r1, [sp, #4]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r2, r0, #1
	ldr r1, [sp]
	str r2, [sp, #4]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp]
	ldr r0, [r5]
	subs r0, r0, r2
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [sp]
	subs r0, r1, r0
	str r0, [r4]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259648

	thumb_func_start ov22_02259698
ov22_02259698: @ 0x02259698
	push {r3, lr}
	ldr r3, [r0, #4]
	ldr r0, [r0]
	cmp r3, #3
	bge _022596A8
	bl ov22_02254F30
	pop {r3, pc}
_022596A8:
	bl ov22_02259270
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_02259698

	thumb_func_start ov22_022596B0
ov22_022596B0: @ 0x022596B0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	ldr r2, [r0, #4]
	adds r6, r1, #0
	adds r5, r3, #0
	ldr r4, [sp, #0x18]
	cmp r2, #3
	ldr r0, [r0]
	bge _022596D2
	adds r2, r5, #0
	bl ov22_02254F84
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_022596D2:
	add r1, sp, #0
	bl ov22_02259358
	add r0, sp, #0
	ldrb r1, [r0]
	str r1, [r6]
	ldrb r1, [r0, #1]
	str r1, [r7]
	ldrb r1, [r0, #2]
	str r1, [r5]
	ldrb r0, [r0, #3]
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022596B0

	thumb_func_start ov22_022596EC
ov22_022596EC: @ 0x022596EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, [r5, #8]
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r4, r5
	beq _0225971E
_022596FC:
	adds r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r0, [sp, #4]
	adds r1, r0, r6
	ldr r0, [sp]
	str r1, [sp, #4]
	adds r2, r0, r7
	str r2, [sp]
	adds r0, r4, #0
	bl ov22_022595F8
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _022596FC
_0225971E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_022596EC

	thumb_func_start ov22_02259724
ov22_02259724: @ 0x02259724
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	adds r7, r3, #0
	bl ov22_02259698
	adds r0, r5, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov22_02259648
	add r0, sp, #4
	str r0, [sp]
	adds r0, r5, #0
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov22_022596B0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	adds r0, r1, r0
	str r0, [r4]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	adds r1, r1, r0
	ldr r0, [sp, #4]
	subs r0, r1, r0
	str r0, [r6]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	adds r0, r1, r0
	str r0, [r7]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r1, r1, r0
	ldr r0, [sp, #8]
	subs r1, r1, r0
	ldr r0, [sp, #0x38]
	str r1, [r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_02259724

	thumb_func_start ov22_02259780
ov22_02259780: @ 0x02259780
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r0, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259698
	adds r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	adds r0, r2, r0
	str r0, [r5]
	ldr r1, [sp, #8]
	ldr r2, [sp]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	adds r0, r2, r0
	str r0, [r4]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259780

	thumb_func_start ov22_022597BC
ov22_022597BC: @ 0x022597BC
	adds r2, r0, #0
	ldr r0, [r1]
	str r0, [r2]
	ldr r3, [r1, #0x14]
	asrs r0, r3, #2
	lsrs r0, r0, #0x1d
	adds r0, r3, r0
	asrs r0, r0, #3
	str r0, [r2, #0xc]
	ldr r3, [r1, #0x18]
	asrs r0, r3, #2
	lsrs r0, r0, #0x1d
	adds r0, r3, r0
	asrs r0, r0, #3
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x1c]
	ldr r3, _02259800 @ =ov22_022599A0
	str r0, [r2, #0x1c]
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x20]
	ldr r0, [r1, #0x20]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0x28]
	str r0, [r2, #0x28]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x14
	adds r2, #0x18
	bx r3
	nop
_02259800: .4byte ov22_022599A0
	thumb_func_end ov22_022597BC

	thumb_func_start ov22_02259804
ov22_02259804: @ 0x02259804
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	ldr r0, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x2c
	blx FUN_020D5124
	pop {r4, pc}
	thumb_func_end ov22_02259804

	thumb_func_start ov22_02259820
ov22_02259820: @ 0x02259820
	ldr r2, [r1]
	str r2, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	movs r2, #0
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov22_02259820

	thumb_func_start ov22_02259838
ov22_02259838: @ 0x02259838
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r1, r0, r1
	str r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	ble _0225989C
	movs r2, #0
	str r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0225985C
	ldr r1, [r5, #4]
	movs r0, #1
	str r0, [r5, #0x10]
	b _02259862
_0225985C:
	ldr r0, [r5]
	ldr r1, [r0, #8]
	str r2, [r5, #0x10]
_02259862:
	ldr r0, [r5, #0x14]
	movs r2, #0
	str r0, [sp]
	ldr r0, [r5]
	add r3, sp, #0x14
	ldr r0, [r0, #4]
	bl FUN_02006F6C
	ldr r3, [r5]
	adds r4, r0, #0
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, [r3, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x14]
	bl ov22_02259ABC
	adds r0, r4, #0
	bl FUN_020181C4
_0225989C:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259838

	thumb_func_start ov22_022598A0
ov22_022598A0: @ 0x022598A0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r1, [r5]
	ldr r0, [r5, #0x14]
	movs r2, #0
	str r0, [sp]
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	add r3, sp, #0x14
	bl FUN_02006F6C
	ldr r3, [r5]
	adds r4, r0, #0
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, [r3, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x14]
	bl ov22_02259ABC
	adds r0, r4, #0
	bl FUN_020181C4
	movs r1, #0x18
	movs r0, #0
_022598E6:
	strb r0, [r5]
	adds r5, r5, #1
	subs r1, r1, #1
	bne _022598E6
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_022598A0

	thumb_func_start ov22_022598F4
ov22_022598F4: @ 0x022598F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _0225997C @ =ov22_02259A4C
	movs r1, #0x4c
	movs r2, #0
	movs r3, #0xd
	bl FUN_0200679C
	bl FUN_0201CED0
	adds r4, r0, #0
	str r6, [r4]
	adds r7, r5, #0
	adds r3, r4, #4
	movs r2, #6
_0225991A:
	ldm r7!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225991A
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x34]
	ldr r0, [sp]
	str r1, [r4, #0x38]
	blx FUN_020E1F6C
	str r0, [r4, #0x3c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	blx FUN_020E1F6C
	str r0, [r4, #0x40]
	ldr r0, [r6]
	ldr r1, [r6, #0x1c]
	bl FUN_020192EC
	str r0, [r4, #0x44]
	ldr r0, [r6]
	ldr r1, [r6, #0x1c]
	bl FUN_020192F8
	str r0, [r4, #0x48]
	movs r0, #0x80
	str r0, [r5, #0x28]
	movs r0, #5
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	subs r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #4]
	subs r0, r1, r0
	str r0, [r5, #0x18]
	movs r0, #0xe
	movs r1, #0
	str r0, [r5, #0x2c]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov22_022599A0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225997C: .4byte ov22_02259A4C
	thumb_func_end ov22_022598F4

	thumb_func_start ov22_02259980
ov22_02259980: @ 0x02259980
	push {r3, r4}
	ldr r2, [r0, #8]
	adds r0, #0xc
	lsrs r4, r2, #1
	movs r3, #0
	cmp r4, #0
	ble _0225999C
_0225998E:
	ldrh r2, [r0]
	adds r3, r3, #1
	adds r2, r2, r1
	strh r2, [r0]
	adds r0, r0, #2
	cmp r3, r4
	blt _0225998E
_0225999C:
	pop {r3, r4}
	bx lr
	thumb_func_end ov22_02259980

	thumb_func_start ov22_022599A0
ov22_022599A0: @ 0x022599A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x14]
	adds r6, r2, #0
	asrs r0, r1, #2
	lsrs r0, r0, #0x1d
	adds r0, r1, r0
	asrs r0, r0, #3
	ldr r1, [r5, #0x18]
	str r0, [sp, #0x18]
	asrs r0, r1, #2
	lsrs r0, r0, #0x1d
	adds r0, r1, r0
	asrs r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x28]
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5]
	ldr r3, [r5, #0x1c]
	bl ov22_02259B3C
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bge _022599E0
	movs r2, #0
	b _022599E2
_022599E0:
	movs r2, #4
_022599E2:
	ldr r0, [r5, #0x20]
	lsls r0, r0, #5
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r3, [r5, #0x24]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	lsls r3, r3, #5
	bl ov22_02259B8C
	ldr r0, [r5, #0x2c]
	movs r2, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x10]
	add r3, sp, #0x24
	bl FUN_02006F6C
	ldr r2, [sp, #0x24]
	str r0, [sp, #0x20]
	ldrh r0, [r2]
	lsrs r7, r0, #3
	ldrh r0, [r2, #2]
	adds r3, r7, #0
	lsrs r0, r0, #3
	str r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5]
	ldr r1, [r5, #0x1c]
	bl ov22_02259ABC
	ldr r0, [sp, #0x20]
	bl FUN_020181C4
	cmp r4, #0
	beq _02259A3E
	str r7, [r4]
_02259A3E:
	cmp r6, #0
	beq _02259A46
	ldr r0, [sp, #0x1c]
	str r0, [r6]
_02259A46:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_022599A0

	thumb_func_start ov22_02259A4C
ov22_02259A4C: @ 0x02259A4C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x38]
	subs r0, r0, #1
	str r0, [r4, #0x38]
	ldr r1, [r4]
	bmi _02259A80
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	ldr r3, [r4, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #2
	bl FUN_0201C63C
	ldr r1, [r4]
	ldr r3, [r4, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	movs r2, #5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201C63C
	pop {r3, r4, r5, pc}
_02259A80:
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	ldr r3, [r4, #0x44]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	bl FUN_0201C63C
	ldr r1, [r4]
	ldr r3, [r4, #0x48]
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	movs r2, #3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201C63C
	ldr r0, [r4]
	adds r1, r4, #4
	bl ov22_022597BC
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _02259AB4
	movs r0, #1
	str r0, [r1]
_02259AB4:
	adds r0, r5, #0
	bl FUN_020067D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259A4C

	thumb_func_start ov22_02259ABC
ov22_02259ABC: @ 0x02259ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r1, #0
	adds r4, r2, #0
	adds r7, r0, #0
	ldr r1, [sp, #0x3c]
	adds r0, r4, #0
	adds r6, r3, #0
	bl ov22_02259980
	ldr r1, [sp, #0x30]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	str r0, [sp]
	ldr r3, [sp, #0x38]
	str r2, [sp, #4]
	adds r4, #0xc
	lsls r3, r3, #0x18
	str r4, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x34]
	lsls r1, r5, #0x18
	lsls r2, r2, #0x18
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x38]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r5, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	str r0, [sp, #8]
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	lsls r1, r5, #0x18
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_02259ABC

	thumb_func_start ov22_02259B3C
ov22_02259B3C: @ 0x02259B3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	movs r1, #0x14
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_02259B58:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02259B58
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #4]
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0
	adds r3, r4, #4
	bl FUN_02006F50
	str r0, [r4, #8]
	str r5, [r4]
	ldr r0, [sp, #0x20]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02259B88 @ =ov22_02259BD4
	adds r1, r4, #0
	movs r2, #0x80
	bl FUN_0200DA3C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02259B88: .4byte ov22_02259BD4
	thumb_func_end ov22_02259B3C

	thumb_func_start ov22_02259B8C
ov22_02259B8C: @ 0x02259B8C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	movs r1, #0x14
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_02259BA6:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02259BA6
	ldr r1, [sp]
	ldr r3, [sp, #0x1c]
	adds r0, r7, #0
	adds r2, r4, #0
	bl FUN_02006F88
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02259BD0 @ =ov22_02259C10
	adds r1, r4, #0
	movs r2, #0x80
	bl FUN_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02259BD0: .4byte ov22_02259C10
	thumb_func_end ov22_02259B8C

	thumb_func_start ov22_02259BD4
ov22_02259BD4: @ 0x02259BD4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4, #4]
	adds r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	blx FUN_020C2C54
	ldr r3, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	lsls r1, r1, #0x18
	ldr r0, [r4]
	ldr r3, [r3, #0x10]
	lsrs r1, r1, #0x18
	bl FUN_0201958C
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #8]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_02259BD4

	thumb_func_start ov22_02259C10
ov22_02259C10: @ 0x02259C10
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02259C34
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	blx FUN_020C00B4
	b _02259C44
_02259C34:
	cmp r0, #4
	bne _02259C44
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	blx FUN_020C0108
_02259C44:
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #4]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259C10

	thumb_func_start ov22_02259C58
ov22_02259C58: @ 0x02259C58
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	bne _02259C66
	bl FUN_02022974
_02259C66:
	cmp r4, #0
	bne _02259C6E
	bl FUN_02022974
_02259C6E:
	ldr r0, [r4]
	bl FUN_02021AA0
	str r0, [r5]
	cmp r0, #0
	bne _02259C7E
	bl FUN_02022974
_02259C7E:
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02259C90
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_02259C90:
	ldr r0, _02259C98 @ =ov22_02259D94
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02259C98: .4byte ov22_02259D94
	thumb_func_end ov22_02259C58

	thumb_func_start ov22_02259C9C
ov22_02259C9C: @ 0x02259C9C
	push {r3, r4, r5, lr}
	sub sp, #0x30
	adds r4, r1, #0
	adds r5, r0, #0
	bl ov22_02259C58
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x1c]
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x28]
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl FUN_020127E8
	str r0, [r5, #0x10]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259C9C

	thumb_func_start ov22_02259CE8
ov22_02259CE8: @ 0x02259CE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02021BD4
	movs r1, #0x10
	movs r0, #0
_02259CF6:
	strb r0, [r4]
	adds r4, r4, #1
	subs r1, r1, #1
	bne _02259CF6
	pop {r4, pc}
	thumb_func_end ov22_02259CE8

	thumb_func_start ov22_02259D00
ov22_02259D00: @ 0x02259D00
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_02259CE8
	ldr r0, [r4, #0x10]
	bl FUN_02012870
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02259D00

	thumb_func_start ov22_02259D1C
ov22_02259D1C: @ 0x02259D1C
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r1, r2
	bne _02259D2A
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	blx r2
_02259D2A:
	pop {r3, pc}
	thumb_func_end ov22_02259D1C

	thumb_func_start ov22_02259D2C
ov22_02259D2C: @ 0x02259D2C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r4, #2
	adds r5, #0x20
_02259D38:
	cmp r4, r7
	beq _02259D44
	adds r0, r5, #0
	bl ov22_02259DA4
	b _02259D68
_02259D44:
	cmp r6, #0
	bne _02259D56
	adds r0, r5, #0
	bl ov22_02259DB0
	ldr r0, _02259D74 @ =0x0000067D
	bl FUN_02005748
	b _02259D68
_02259D56:
	cmp r6, #2
	bne _02259D62
	adds r0, r5, #0
	bl ov22_02259D98
	b _02259D68
_02259D62:
	adds r0, r5, #0
	bl ov22_02259DB0
_02259D68:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #3
	ble _02259D38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02259D74: .4byte 0x0000067D
	thumb_func_end ov22_02259D2C

	thumb_func_start ov22_02259D78
ov22_02259D78: @ 0x02259D78
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r5, #0
	bne _02259D8A
	bl FUN_02022974
_02259D8A:
	str r7, [r5, #4]
	str r6, [r5, #8]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02259D78

	thumb_func_start ov22_02259D94
ov22_02259D94: @ 0x02259D94
	bx lr
	.align 2, 0
	thumb_func_end ov22_02259D94

	thumb_func_start ov22_02259D98
ov22_02259D98: @ 0x02259D98
	ldr r3, _02259DA0 @ =FUN_02021E50
	ldr r0, [r0]
	movs r1, #2
	bx r3
	.align 2, 0
_02259DA0: .4byte FUN_02021E50
	thumb_func_end ov22_02259D98

	thumb_func_start ov22_02259DA4
ov22_02259DA4: @ 0x02259DA4
	ldr r3, _02259DAC @ =FUN_02021E50
	ldr r0, [r0]
	movs r1, #0
	bx r3
	.align 2, 0
_02259DAC: .4byte FUN_02021E50
	thumb_func_end ov22_02259DA4

	thumb_func_start ov22_02259DB0
ov22_02259DB0: @ 0x02259DB0
	ldr r3, _02259DB8 @ =FUN_02021E50
	ldr r0, [r0]
	movs r1, #1
	bx r3
	.align 2, 0
_02259DB8: .4byte FUN_02021E50
	thumb_func_end ov22_02259DB0

	thumb_func_start ov22_02259DBC
ov22_02259DBC: @ 0x02259DBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #1
	movs r1, #0xd
	bl FUN_02012744
	str r0, [r5, #0x64]
	adds r0, r4, #0
	bl ov22_0225A218
	movs r0, #0x90
	str r0, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x30
	bl ov22_0225A0E4
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x6c
	movs r1, #0
	movs r2, #0x30
	movs r3, #0x98
	bl ov22_0225A200
	movs r0, #0x90
	str r0, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x10
	movs r1, #1
	adds r2, r4, #0
	movs r3, #8
	bl ov22_0225A0E4
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x6c
	movs r1, #1
	movs r2, #8
	movs r3, #0x98
	bl ov22_0225A200
	movs r0, #0x90
	str r0, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #2
	adds r2, r4, #0
	movs r3, #0x60
	bl ov22_0225A0E4
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0x22
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x6c
	movs r1, #2
	movs r2, #0x60
	movs r3, #0x9c
	bl ov22_0225A200
	movs r0, #0x90
	str r0, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x30
	movs r1, #3
	adds r2, r4, #0
	movs r3, #0x88
	bl ov22_0225A0E4
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0x22
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x6c
	movs r1, #3
	movs r2, #0x88
	movs r3, #0x9c
	bl ov22_0225A200
	movs r0, #2
	movs r1, #0xe
	bl FUN_02002BB8
	movs r0, #9
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	ldr r2, _02259F1C @ =0x00000181
	adds r0, r4, #0
	movs r1, #0x1a
	movs r3, #0
	bl ov22_0225A348
	adds r6, r0, #0
	str r6, [sp]
	movs r0, #0xb8
	str r0, [sp, #4]
	movs r0, #0x90
	str r0, [sp, #8]
	movs r0, #0x48
	str r0, [sp, #0xc]
	movs r0, #0x2a
	str r0, [sp, #0x10]
	adds r0, r5, #0
	ldr r3, [r5, #0x64]
	adds r0, #0x40
	movs r1, #4
	adds r2, r4, #0
	bl ov22_0225A154
	movs r0, #0x48
	str r0, [sp]
	movs r0, #0x22
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x6c
	movs r1, #4
	movs r2, #0xb8
	movs r3, #0x9c
	bl ov22_0225A200
	adds r0, r6, #0
	bl ov22_0225A3D0
	movs r0, #2
	bl FUN_02002C60
	movs r0, #1
	str r0, [r5, #0x60]
	adds r0, r4, #0
	bl ov22_0225A2A8
	adds r0, r5, #0
	adds r0, #0x20
	bl ov22_02259D98
	movs r0, #0xd
	str r0, [sp]
	adds r0, r5, #0
	ldr r2, _02259F20 @ =ov22_0225A02C
	adds r0, #0x6c
	movs r1, #5
	adds r3, r5, #0
	bl FUN_02023FCC
	str r0, [r5, #0x68]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02259F1C: .4byte 0x00000181
_02259F20: .4byte ov22_0225A02C
	thumb_func_end ov22_02259DBC

	thumb_func_start ov22_02259F24
ov22_02259F24: @ 0x02259F24
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
_02259F2C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov22_022552EC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov22_02255300
	adds r0, r4, #0
	bl FUN_0201EB50
	adds r4, r4, #1
	cmp r4, #5
	blt _02259F2C
	movs r0, #0
	bl FUN_0201F9F0
	movs r0, #1
	bl FUN_0201F9F0
	movs r5, #0
	adds r4, r6, #0
_02259F58:
	adds r0, r4, #0
	bl ov22_02259CE8
	adds r5, r5, #1
	adds r4, #0x10
	cmp r5, #4
	blt _02259F58
	adds r0, r6, #0
	adds r0, #0x54
	bl FUN_0201EE28
	adds r0, r6, #0
	adds r0, #0x40
	bl ov22_02259D00
	ldr r0, [r6, #0x64]
	bl FUN_020127BC
	ldr r0, [r6, #0x68]
	bl FUN_02024034
	movs r0, #0
	str r0, [r6, #0x68]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259F24

	thumb_func_start ov22_02259F88
ov22_02259F88: @ 0x02259F88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _02259F96
	bl FUN_02022974
_02259F96:
	ldr r0, [r4, #0x68]
	bl FUN_0202404C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02259F88

	thumb_func_start ov22_02259FA0
ov22_02259FA0: @ 0x02259FA0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x40
	movs r1, #3
	bl ov22_0225A2D0
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #3
	bl ov22_0225A2F4
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	bl ov22_02259D2C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_02259FA0

	thumb_func_start ov22_02259FC4
ov22_02259FC4: @ 0x02259FC4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r6, r1, #0
	adds r7, r2, #0
	movs r4, #0
	adds r5, r0, #0
_02259FD0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov22_0225A3DC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _02259FD0
	ldr r0, [sp]
	adds r1, r6, #0
	adds r0, #0x40
	adds r2, r7, #0
	str r0, [sp]
	bl ov22_0225A418
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02259FC4

	thumb_func_start ov22_02259FF4
ov22_02259FF4: @ 0x02259FF4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r5, #0
	bne _0225A006
	bl FUN_02022974
_0225A006:
	cmp r4, #4
	bge _0225A01A
	lsls r0, r4, #4
	ldr r3, [sp, #0x18]
	adds r0, r5, r0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov22_02259D78
	pop {r3, r4, r5, r6, r7, pc}
_0225A01A:
	adds r5, #0x40
	ldr r3, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov22_02259D78
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_02259FF4

	thumb_func_start ov22_0225A02C
ov22_0225A02C: @ 0x0225A02C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r6, #4
	bhi _0225A0D4
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225A044: @ jump table
	.2byte _0225A04E - _0225A044 - 2 @ case 0
	.2byte _0225A06A - _0225A044 - 2 @ case 1
	.2byte _0225A08C - _0225A044 - 2 @ case 2
	.2byte _0225A08C - _0225A044 - 2 @ case 3
	.2byte _0225A0A2 - _0225A044 - 2 @ case 4
_0225A04E:
	adds r0, r4, #0
	bl ov22_0225A2D0
	ldr r1, _0225A0DC @ =0x00000681
	adds r0, r4, #0
	movs r2, #0
	adds r3, r5, #0
	bl ov22_0225A338
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A06A:
	adds r0, r4, #0
	adds r0, #0x10
	bl ov22_0225A2D0
	adds r0, r4, #0
	ldr r1, _0225A0DC @ =0x00000681
	adds r0, #0x10
	movs r2, #0
	adds r3, r5, #0
	bl ov22_0225A338
	adds r4, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A08C:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov22_02259D2C
	lsls r0, r6, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A0A2:
	ldr r0, [r4, #0x60]
	cmp r0, #1
	bne _0225A0D8
	adds r0, r4, #0
	adds r0, #0x40
	bl ov22_0225A2D0
	adds r0, r4, #0
	adds r0, #0x40
	adds r1, r5, #0
	bl ov22_0225A2F4
	adds r0, r4, #0
	ldr r1, _0225A0E0 @ =0x000005E2
	adds r0, #0x40
	movs r2, #0
	adds r3, r5, #0
	bl ov22_0225A338
	adds r4, #0x40
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A0D4:
	bl FUN_02022974
_0225A0D8:
	pop {r4, r5, r6, pc}
	nop
_0225A0DC: .4byte 0x00000681
_0225A0E0: .4byte 0x000005E2
	thumb_func_end ov22_0225A02C

	thumb_func_start ov22_0225A0E4
ov22_0225A0E4: @ 0x0225A0E4
	push {r4, r5, r6, lr}
	sub sp, #0x90
	adds r6, r0, #0
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	adds r5, r2, #0
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x48]
	adds r4, r3, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	adds r3, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	bl FUN_020093B4
	ldr r0, [r5, #0x44]
	movs r2, #0
	movs r1, #1
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	lsls r0, r4, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #0x54]
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	movs r0, #2
	str r0, [sp, #0x50]
	movs r0, #0xe
	str r0, [sp, #0x58]
	add r0, sp, #0x2c
	str r0, [sp, #0x80]
	str r1, [sp, #0x8c]
	adds r0, r6, #0
	add r1, sp, #0x80
	str r2, [sp, #0x3c]
	str r2, [sp, #0x84]
	str r2, [sp, #0x88]
	bl ov22_02259C58
	add sp, #0x90
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_0225A0E4

	thumb_func_start ov22_0225A154
ov22_0225A154: @ 0x0225A154
	push {r4, r5, r6, lr}
	sub sp, #0xa8
	adds r5, r0, #0
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	adds r4, r2, #0
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x48]
	adds r6, r3, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x4c]
	adds r3, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x54]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	bl FUN_020093B4
	ldr r0, [r4, #0x44]
	movs r2, #0xe
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xbc]
	str r2, [sp, #0x58]
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc0]
	add r2, sp, #0x2c
	lsls r0, r0, #0xc
	movs r1, #2
	str r2, [sp, #0x80]
	ldr r2, [sp, #0xb8]
	str r0, [sp, #0x38]
	movs r0, #0
	str r1, [sp, #0x50]
	movs r1, #1
	str r0, [sp, #0x3c]
	str r1, [sp, #0x54]
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	str r0, [sp, #0x9c]
	movs r0, #0x13
	str r1, [sp, #0x8c]
	str r6, [sp, #0x94]
	str r2, [sp, #0x90]
	str r0, [sp, #0xa0]
	ldr r0, [r4, #0x4c]
	bl FUN_02009DC8
	movs r1, #0
	bl FUN_0200A72C
	str r0, [sp, #0x98]
	ldr r0, [sp, #0xb8]
	movs r1, #1
	movs r2, #0xd
	bl FUN_02012898
	movs r1, #1
	adds r3, r5, #0
	adds r2, r1, #0
	adds r3, #0x14
	bl FUN_0201ED94
	cmp r0, #0
	bne _0225A1F0
	bl FUN_02022974
_0225A1F0:
	ldr r0, [r5, #0x18]
	add r1, sp, #0x80
	str r0, [sp, #0xa4]
	adds r0, r5, #0
	bl ov22_02259C9C
	add sp, #0xa8
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_0225A154

	thumb_func_start ov22_0225A200
ov22_0225A200: @ 0x0225A200
	lsls r1, r1, #2
	strb r3, [r0, r1]
	adds r1, r0, r1
	ldr r0, [sp, #4]
	strb r2, [r1, #2]
	adds r0, r3, r0
	strb r0, [r1, #1]
	ldr r0, [sp]
	adds r0, r2, r0
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
	thumb_func_end ov22_0225A200

	thumb_func_start ov22_0225A218
ov22_0225A218: @ 0x0225A218
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x6b
	movs r4, #0
	str r0, [sp, #0xc]
	movs r7, #0x6a
	movs r6, #0x69
_0225A228:
	movs r0, #1
	str r0, [sp]
	movs r1, #6
	str r4, [sp, #4]
	lsls r1, r1, #6
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	movs r3, #0
	bl ov22_02255248
	movs r1, #6
	str r4, [sp]
	lsls r1, r1, #6
	ldr r1, [r5, r1]
	adds r0, r5, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov22_0225528C
	movs r1, #6
	str r4, [sp]
	lsls r1, r1, #6
	ldr r1, [r5, r1]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl ov22_022552A8
	ldr r0, [sp, #0xc]
	adds r4, r4, #1
	adds r0, r0, #3
	str r0, [sp, #0xc]
	adds r7, r7, #3
	adds r6, r6, #3
	cmp r4, #5
	blt _0225A228
	movs r0, #1
	str r0, [sp]
	movs r1, #3
	str r1, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	lsls r1, r1, #7
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #0x68
	bl ov22_02255268
	movs r1, #1
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r1, #6
	lsls r1, r1, #6
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #0x78
	movs r3, #0
	bl ov22_02255268
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A218

	thumb_func_start ov22_0225A2A8
ov22_0225A2A8: @ 0x0225A2A8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0225A2AE:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov22_022552C4
	adds r4, r4, #1
	cmp r4, #5
	blt _0225A2AE
	adds r0, r5, #0
	movs r1, #0
	bl ov22_022552D8
	adds r0, r5, #0
	movs r1, #1
	bl ov22_022552D8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_0225A2A8

	thumb_func_start ov22_0225A2D0
ov22_0225A2D0: @ 0x0225A2D0
	push {r3, lr}
	cmp r1, #0
	bne _0225A2DC
	bl ov22_02259DB0
	pop {r3, pc}
_0225A2DC:
	cmp r1, #2
	bne _0225A2E6
	bl ov22_02259D98
	pop {r3, pc}
_0225A2E6:
	cmp r1, #1
	beq _0225A2EE
	cmp r1, #3
	bne _0225A2F2
_0225A2EE:
	bl ov22_02259DA4
_0225A2F2:
	pop {r3, pc}
	thumb_func_end ov22_0225A2D0

	thumb_func_start ov22_0225A2F4
ov22_0225A2F4: @ 0x0225A2F4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bne _0225A310
	ldr r0, [r5, #0x10]
	movs r1, #0
	movs r2, #0xf
	bl FUN_020128C4
	ldr r0, [r5, #0x10]
	movs r1, #4
	bl FUN_02012A60
	pop {r3, r4, r5, pc}
_0225A310:
	cmp r4, #1
	bne _0225A31E
	ldr r0, [r5, #0x10]
	movs r1, #0
	movs r2, #0x13
	bl FUN_020128C4
_0225A31E:
	cmp r4, #3
	bne _0225A334
	ldr r0, [r5, #0x10]
	movs r1, #0
	movs r2, #0x13
	bl FUN_020128C4
	ldr r0, [r5, #0x10]
	movs r1, #3
	bl FUN_02012A60
_0225A334:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_0225A2F4

	thumb_func_start ov22_0225A338
ov22_0225A338: @ 0x0225A338
	push {r3, lr}
	cmp r3, r2
	bne _0225A346
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
_0225A346:
	pop {r3, pc}
	thumb_func_end ov22_0225A338

	thumb_func_start ov22_0225A348
ov22_0225A348: @ 0x0225A348
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r3, #0
	movs r0, #0
	movs r3, #0xd
	bl FUN_0200B144
	adds r7, r0, #0
	bne _0225A360
	bl FUN_02022974
_0225A360:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	movs r0, #0xe
	movs r1, #1
	bl FUN_0201A778
	adds r4, r0, #0
	bl FUN_0201A7A0
	movs r0, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	str r0, [sp]
	str r0, [sp, #4]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r6, #0x40]
	adds r1, r4, #0
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A870
	ldr r3, [sp, #0x28]
	movs r0, #2
	adds r1, r5, #0
	movs r2, #0
	lsls r3, r3, #3
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225A3CC @ =0x00010203
	adds r2, r5, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225A3CC: .4byte 0x00010203
	thumb_func_end ov22_0225A348

	thumb_func_start ov22_0225A3D0
ov22_0225A3D0: @ 0x0225A3D0
	ldr r3, _0225A3D8 @ =FUN_0201A928
	movs r1, #1
	bx r3
	nop
_0225A3D8: .4byte FUN_0201A928
	thumb_func_end ov22_0225A3D0

	thumb_func_start ov22_0225A3DC
ov22_0225A3DC: @ 0x0225A3DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_02021D28
	adds r3, r0, #0
	add r2, sp, #0
	ldm r3!, {r0, r1}
	adds r7, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [sp]
	lsls r0, r4, #0xc
	adds r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	lsls r0, r6, #0xc
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5]
	adds r1, r7, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225A3DC

	thumb_func_start ov22_0225A418
ov22_0225A418: @ 0x0225A418
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_0225A3DC
	ldr r0, [r4, #0x10]
	bl FUN_02012938
	pop {r4, pc}
	thumb_func_end ov22_0225A418

	thumb_func_start ov22_0225A428
ov22_0225A428: @ 0x0225A428
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r6, r2, #0
	movs r1, #1
	adds r5, r0, #0
	tst r1, r6
	beq _0225A442
	movs r2, #0x52
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
_0225A442:
	movs r0, #2
	tst r0, r6
	beq _0225A450
	ldr r1, [r4]
	adds r0, r5, #0
	bl ov22_0225A6E0
_0225A450:
	movs r0, #4
	adds r1, r6, #0
	tst r1, r0
	beq _0225A474
	movs r1, #0x1b
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x1f
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	adds r0, r5, #0
	ldr r1, [r4]
	adds r0, #0x2c
	movs r2, #2
	movs r3, #0x13
	bl ov22_0225A748
_0225A474:
	movs r0, #8
	tst r0, r6
	beq _0225A48C
	ldr r0, [r4, #0x24]
	str r0, [sp]
	adds r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x10]
	adds r0, #0x38
	bl ov22_0225A914
_0225A48C:
	movs r0, #0x10
	tst r0, r6
	beq _0225A4AC
	ldr r0, [r4]
	str r0, [sp]
	ldr r0, [r4, #0x20]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	str r0, [sp, #8]
	adds r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x1c]
	adds r0, #0xa0
	bl ov22_0225AB54
_0225A4AC:
	movs r0, #0x20
	tst r0, r6
	beq _0225A522
	movs r0, #0x1b
	str r0, [sp]
	movs r2, #2
	str r2, [sp, #4]
	movs r0, #0x8b
	str r0, [sp, #8]
	movs r3, #1
	str r3, [sp, #0xc]
	adds r0, #0xa9
	ldr r1, [r4]
	adds r0, r5, r0
	bl ov22_0225A748
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0225A55C @ =0x0001020F
	movs r1, #0x1a
	str r0, [sp, #8]
	movs r0, #0xff
	str r0, [sp, #0xc]
	adds r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x14]
	movs r3, #6
	bl ov22_0225A860
	movs r0, #0x48
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0225A55C @ =0x0001020F
	movs r1, #0x1a
	str r0, [sp, #8]
	movs r0, #0xff
	str r0, [sp, #0xc]
	adds r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl ov22_0225A860
	movs r0, #0x4d
	lsls r0, r0, #2
	movs r2, #1
	ldr r0, [r5, r0]
	movs r1, #0
	adds r3, r2, #0
	bl FUN_0200E060
_0225A522:
	ldr r0, [r4, #4]
	str r0, [r5, #0x30]
	ldr r0, [r4, #8]
	str r0, [r5, #0x34]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl ov22_0225A718
	ldr r0, [r4, #0xc]
	bl FUN_02027B50
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl FUN_02027AC0
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #8
	ldr r0, [r5, r0]
	subs r1, #8
	orrs r0, r6
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225A55C: .4byte 0x0001020F
	thumb_func_end ov22_0225A428

	thumb_func_start ov22_0225A560
ov22_0225A560: @ 0x0225A560
	push {r4, lr}
	movs r1, #0x4e
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r1, #2
	tst r1, r2
	beq _0225A580
	bl ov22_0225A7B8
	movs r1, #0x4e
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r0, #2
	bics r2, r0
	str r2, [r4, r1]
_0225A580:
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r0, #4
	tst r0, r1
	beq _0225A59E
	ldr r0, [r4, #0x2c]
	bl ov22_0225A7C0
	movs r1, #0x4e
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r0, #4
	bics r2, r0
	str r2, [r4, r1]
_0225A59E:
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r0, #8
	tst r0, r1
	beq _0225A5C0
	adds r0, r4, #0
	ldr r1, [r4, #0x34]
	adds r0, #0x38
	bl ov22_0225AA10
	movs r1, #0x4e
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r0, #8
	bics r2, r0
	str r2, [r4, r1]
_0225A5C0:
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r0, #0x10
	tst r0, r1
	beq _0225A5E2
	adds r0, r4, #0
	ldr r1, [r4, #0x34]
	adds r0, #0xa0
	bl ov22_0225AC58
	movs r1, #0x4e
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r0, #0x10
	bics r2, r0
	str r2, [r4, r1]
_0225A5E2:
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r2, [r4, r0]
	movs r1, #0x20
	tst r1, r2
	beq _0225A602
	subs r0, r0, #4
	ldr r0, [r4, r0]
	bl ov22_0225A7C0
	movs r1, #0x4e
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r0, #0x20
	bics r2, r0
	str r2, [r4, r1]
_0225A602:
	movs r2, #0x52
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	pop {r4, pc}
	thumb_func_end ov22_0225A560

	thumb_func_start ov22_0225A610
ov22_0225A610: @ 0x0225A610
	push {r3, lr}
	movs r1, #0x4e
	lsls r1, r1, #2
	ldr r2, [r0, r1]
	movs r1, #0x10
	tst r1, r2
	beq _0225A624
	adds r0, #0xa0
	bl ov22_0225AC8C
_0225A624:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_0225A610

	thumb_func_start ov22_0225A628
ov22_0225A628: @ 0x0225A628
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r1, [r5, r0]
	movs r0, #4
	adds r6, r2, #0
	adds r7, r3, #0
	tst r0, r1
	bne _0225A644
	bl FUN_02022974
_0225A644:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xff
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov22_0225A7CC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225A628

	thumb_func_start ov22_0225A660
ov22_0225A660: @ 0x0225A660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r1, [r5, r0]
	movs r0, #4
	adds r6, r2, #0
	adds r7, r3, #0
	tst r0, r1
	bne _0225A67C
	bl FUN_02022974
_0225A67C:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #5
	lsls r0, r0, #6
	ldr r1, [r5, r0]
	adds r0, r0, #4
	str r1, [sp, #8]
	adds r0, r5, r0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov22_0225A814
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A660

	thumb_func_start ov22_0225A6A0
ov22_0225A6A0: @ 0x0225A6A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x51
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov22_0225A6A0

	thumb_func_start ov22_0225A6B8
ov22_0225A6B8: @ 0x0225A6B8
	ldr r3, _0225A6C0 @ =ov22_0225A9C8
	adds r0, #0x38
	bx r3
	nop
_0225A6C0: .4byte ov22_0225A9C8
	thumb_func_end ov22_0225A6B8

	thumb_func_start ov22_0225A6C4
ov22_0225A6C4: @ 0x0225A6C4
	adds r0, #0xbc
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov22_0225A6C4

	thumb_func_start ov22_0225A6CC
ov22_0225A6CC: @ 0x0225A6CC
	adds r0, #0xc0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov22_0225A6CC

	thumb_func_start ov22_0225A6D4
ov22_0225A6D4: @ 0x0225A6D4
	ldr r3, _0225A6DC @ =ov22_0225AF34
	adds r0, #0xd0
	bx r3
	nop
_0225A6DC: .4byte ov22_0225AF34
	thumb_func_end ov22_0225A6D4

	thumb_func_start ov22_0225A6E0
ov22_0225A6E0: @ 0x0225A6E0
	push {r3, lr}
	sub sp, #0x30
	str r1, [sp]
	movs r1, #0x19
	str r1, [sp, #4]
	movs r1, #0xe0
	str r1, [sp, #8]
	movs r1, #0xe1
	str r1, [sp, #0xc]
	movs r2, #0
	movs r1, #0xe2
	str r1, [sp, #0x10]
	movs r1, #4
	str r1, [sp, #0x1c]
	movs r1, #1
	str r1, [sp, #0x20]
	movs r1, #0xe
	str r1, [sp, #0x2c]
	add r1, sp, #0
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	bl ov22_022597BC
	add sp, #0x30
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov22_0225A6E0

	thumb_func_start ov22_0225A718
ov22_0225A718: @ 0x0225A718
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xe
	movs r2, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #5
	adds r3, r2, #0
	bl FUN_0200DD0C
	movs r0, #4
	movs r1, #0x40
	movs r2, #0xe
	bl FUN_02002E98
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov22_0225A718

	thumb_func_start ov22_0225A748
ov22_0225A748: @ 0x0225A748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r3, #0
	movs r0, #0xe
	movs r1, #1
	adds r4, r2, #0
	bl FUN_0201A778
	str r0, [r5]
	bl FUN_0201A7A0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x28]
	lsls r3, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	movs r2, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [r5]
	adds r0, r7, #0
	bl FUN_0201A7E8
	ldr r0, [r5]
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0225A7AC
	movs r2, #1
	ldr r0, [r5]
	movs r1, #0
	adds r3, r2, #0
	bl FUN_0200E060
_0225A7AC:
	ldr r0, [r5]
	bl FUN_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225A748

	thumb_func_start ov22_0225A7B8
ov22_0225A7B8: @ 0x0225A7B8
	ldr r3, _0225A7BC @ =ov22_02259804
	bx r3
	.align 2, 0
_0225A7BC: .4byte ov22_02259804
	thumb_func_end ov22_0225A7B8

	thumb_func_start ov22_0225A7C0
ov22_0225A7C0: @ 0x0225A7C0
	ldr r3, _0225A7C8 @ =FUN_0201A928
	movs r1, #1
	bx r3
	nop
_0225A7C8: .4byte FUN_0201A928
	thumb_func_end ov22_0225A7C0

	thumb_func_start ov22_0225A7CC
ov22_0225A7CC: @ 0x0225A7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	movs r1, #0xf
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x28]
	adds r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0225A810 @ =0x0001020F
	adds r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl ov22_0225A860
	movs r2, #1
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	adds r3, r2, #0
	bl FUN_0200E060
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A810: .4byte 0x0001020F
	thumb_func_end ov22_0225A7CC

	thumb_func_start ov22_0225A814
ov22_0225A814: @ 0x0225A814
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	movs r1, #0xf
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x28]
	adds r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0225A85C @ =0x0001020F
	adds r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	bl ov22_0225A8B4
	movs r2, #1
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	adds r3, r2, #0
	bl FUN_0200E060
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225A85C: .4byte 0x0001020F
	thumb_func_end ov22_0225A814

	thumb_func_start ov22_0225A860
ov22_0225A860: @ 0x0225A860
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r3, #0
	movs r0, #0
	movs r3, #0xd
	bl FUN_0200B144
	adds r5, r0, #0
	bne _0225A878
	bl FUN_02022974
_0225A878:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	adds r2, r4, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl FUN_0201D78C
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0200B190
	adds r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_0225A860

	thumb_func_start ov22_0225A8B4
ov22_0225A8B4: @ 0x0225A8B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x38]
	adds r7, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	adds r6, r2, #0
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0225A8CC
	bl FUN_02022974
_0225A8CC:
	movs r0, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xd
	bl FUN_0200B144
	adds r5, r0, #0
	bne _0225A8E0
	bl FUN_02022974
_0225A8E0:
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl FUN_0200B1EC
	str r0, [r4]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4]
	adds r0, r7, #0
	bl FUN_0201D78C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0200B190
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A8B4

	thumb_func_start ov22_0225A914
ov22_0225A914: @ 0x0225A914
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	adds r5, r1, #0
	movs r1, #0x67
	str r1, [sp]
	movs r1, #0xe1
	str r1, [sp, #4]
	movs r1, #0x66
	str r1, [sp, #8]
	movs r1, #0x65
	str r1, [sp, #0xc]
	movs r1, #2
	str r1, [sp, #0x10]
	movs r1, #0x7d
	adds r4, r2, #0
	str r3, [sp, #0x1c]
	lsls r1, r1, #4
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	movs r2, #0xe
	bl ov22_0225AA34
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	add r2, sp, #0x48
	movs r3, #0
	bl ov22_0225AAF4
	add r0, sp, #0x48
	str r0, [sp, #0x2c]
	movs r0, #2
	str r0, [sp, #0x40]
	movs r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x3c]
	movs r0, #0xe
	str r0, [sp, #0x44]
	movs r0, #0x68
	ldr r7, [sp, #0x24]
	str r5, [sp, #0x28]
	str r0, [sp, #0x20]
_0225A96A:
	ldr r0, [sp, #0x20]
	movs r6, #0
	str r0, [sp, #0x34]
	lsls r1, r0, #0xc
	movs r0, #2
	lsls r0, r0, #0x14
	str r1, [sp, #0x34]
	adds r0, r1, r0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	lsls r1, r7, #2
	movs r4, #0x26
	adds r5, r0, r1
_0225A984:
	str r4, [sp, #0x30]
	lsls r0, r4, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x28
	bl FUN_02021B90
	movs r1, #1
	str r0, [r5, #0x10]
	bl FUN_02021D6C
	ldr r0, [sp, #0x1c]
	adds r1, r6, r7
	cmp r1, r0
	blt _0225A9A8
	ldr r0, [r5, #0x10]
	movs r1, #0
	bl FUN_02021CAC
_0225A9A8:
	adds r6, r6, #1
	adds r4, #0x12
	adds r5, r5, #4
	cmp r6, #0xa
	blt _0225A984
	ldr r0, [sp, #0x20]
	adds r7, #0xa
	adds r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0225A96A
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A914

	thumb_func_start ov22_0225A9C8
ov22_0225A9C8: @ 0x0225A9C8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, [r7, #0x60]
	adds r5, r1, #0
	cmp r6, r5
	bge _0225A9EE
	cmp r6, r5
	bge _0225AA0C
	lsls r0, r6, #2
	adds r4, r7, r0
_0225A9DC:
	ldr r0, [r4, #0x10]
	movs r1, #0
	bl FUN_02021D6C
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r5
	blt _0225A9DC
	b _0225AA0C
_0225A9EE:
	cmp r6, r5
	ble _0225AA0C
	subs r6, r6, #1
	cmp r6, r5
	blt _0225AA0C
	lsls r0, r6, #2
	adds r4, r7, r0
_0225A9FC:
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02021D6C
	subs r6, r6, #1
	subs r4, r4, #4
	cmp r6, r5
	bge _0225A9FC
_0225AA0C:
	str r5, [r7, #0x60]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A9C8

	thumb_func_start ov22_0225AA10
ov22_0225AA10: @ 0x0225AA10
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r4, #0
	adds r5, r6, #0
_0225AA1A:
	ldr r0, [r5, #0x10]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x14
	blt _0225AA1A
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov22_0225AAC0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225AA10

	thumb_func_start ov22_0225AA34
ov22_0225AA34: @ 0x0225AA34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r2, #0
	ldr r7, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	adds r5, r0, #0
	adds r0, r7, r2
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r4, r1, #0
	str r6, [sp, #8]
	ldr r0, [r4]
	str r3, [sp, #0x10]
	adds r1, r3, #0
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r5]
	bl FUN_0200A3DC
	ldr r0, [r5]
	bl FUN_02009D4C
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x10]
	adds r0, r7, r2
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	movs r3, #0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	bl FUN_02009B04
	str r0, [r5, #4]
	bl FUN_0200A640
	ldr r0, [r5, #4]
	bl FUN_02009D4C
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	adds r0, r7, r2
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	movs r3, #0
	bl FUN_02009BC4
	ldr r2, [sp, #0x34]
	str r0, [r5, #8]
	adds r0, r7, r2
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x10]
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225AA34

	thumb_func_start ov22_0225AAC0
ov22_0225AAC0: @ 0x0225AAC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl FUN_0200A4E4
	ldr r0, [r5, #4]
	bl FUN_0200A6DC
	ldr r0, [r4]
	ldr r1, [r5]
	bl FUN_02009D68
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl FUN_02009D68
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl FUN_02009D68
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225AAC0

	thumb_func_start ov22_0225AAF4
ov22_0225AAF4: @ 0x0225AAF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	bl FUN_02009E08
	str r0, [sp, #0x2c]
	ldr r0, [r5, #4]
	bl FUN_02009E08
	str r0, [sp, #0x30]
	ldr r0, [r5, #8]
	bl FUN_02009E08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0xc]
	bl FUN_02009E08
	str r0, [sp]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r4]
	ldr r2, [sp, #0x30]
	str r1, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r3, [sp, #0x34]
	str r1, [sp, #0x18]
	ldr r1, [r4, #8]
	str r1, [sp, #0x1c]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	adds r0, r7, #0
	bl FUN_020093B4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225AAF4

	thumb_func_start ov22_0225AB54
ov22_0225AB54: @ 0x0225AB54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	adds r4, r1, #0
	movs r1, #0xe5
	str r1, [sp]
	movs r1, #0xe6
	str r1, [sp, #4]
	movs r1, #0xe4
	str r1, [sp, #8]
	movs r1, #0xe3
	str r1, [sp, #0xc]
	movs r1, #2
	str r1, [sp, #0x10]
	ldr r1, _0225AC50 @ =0x00000BB8
	adds r5, r2, #0
	str r3, [sp, #0x18]
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	adds r7, r0, #0
	adds r1, r5, #0
	movs r2, #0xe
	bl ov22_0225AA34
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #0x3c
	movs r3, #0
	bl ov22_0225AAF4
	add r0, sp, #0x3c
	str r0, [sp, #0x20]
	movs r2, #2
	movs r0, #0xe
	movs r1, #0x3a
	str r0, [sp, #0x38]
	lsls r1, r1, #0xc
	lsls r0, r2, #0x14
	movs r6, #0
	str r4, [sp, #0x1c]
	str r1, [sp, #0x28]
	adds r0, r1, r0
	str r2, [sp, #0x34]
	str r6, [sp, #0x30]
	str r0, [sp, #0x28]
	movs r4, #0x67
	adds r5, r7, #0
_0225ABB0:
	str r4, [sp, #0x24]
	lsls r0, r4, #0xc
	str r0, [sp, #0x24]
	add r0, sp, #0x1c
	bl FUN_02021B90
	str r0, [r5, #0x10]
	adds r6, r6, #1
	adds r4, #0x18
	adds r5, r5, #4
	cmp r6, #2
	blt _0225ABB0
	ldr r0, [sp, #0x18]
	movs r1, #0x1e
	str r0, [r7, #0x1c]
	muls r1, r0, r1
	str r1, [r7, #0x20]
	ldr r1, [sp, #0x7c]
	str r1, [r7, #0x2c]
	str r0, [r1]
	ldr r1, [r7, #0x2c]
	str r0, [r1, #8]
	adds r0, r7, #0
	movs r1, #0
	adds r0, #0x90
	str r1, [r0]
	adds r0, r7, #0
	bl ov22_0225ACE4
	movs r0, #0xe
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0xc1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r7, #0
	ldr r1, [sp, #0x78]
	adds r0, #0x18
	movs r2, #0xa
	movs r3, #8
	bl ov22_0225A748
	ldr r0, [r7, #0x18]
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0
	str r0, [sp]
	movs r3, #4
	ldr r0, _0225AC54 @ =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0xff
	str r2, [sp, #0xc]
	ldr r0, [r7, #0x18]
	movs r1, #0x1a
	adds r2, #0x82
	bl ov22_0225A860
	movs r0, #0x48
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	ldr r0, _0225AC54 @ =0x00010200
	movs r2, #0xff
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r7, #0x18]
	movs r1, #0x1a
	adds r2, #0x82
	movs r3, #5
	bl ov22_0225A860
	ldr r0, [r7, #0x18]
	bl FUN_0201A954
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225AC50: .4byte 0x00000BB8
_0225AC54: .4byte 0x00010200
	thumb_func_end ov22_0225AB54

	thumb_func_start ov22_0225AC58
ov22_0225AC58: @ 0x0225AC58
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x24]
	adds r4, r1, #0
	cmp r0, #0
	beq _0225AC68
	bl FUN_0200DA58
_0225AC68:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0225AC72
	bl FUN_0200DA58
_0225AC72:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov22_0225AAC0
	ldr r0, [r5, #0x18]
	bl ov22_0225A7C0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x94
	blx FUN_020D5124
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225AC58

	thumb_func_start ov22_0225AC8C
ov22_0225AC8C: @ 0x0225AC8C
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_0225AD5C
	ldr r0, [r4, #0x20]
	movs r1, #0x1e
	blx FUN_020E1F6C
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl FUN_02095C60
	adds r0, r4, #0
	bl ov22_0225ACBC
	adds r0, r4, #0
	bl ov22_0225ACE4
	adds r4, #0x30
	adds r0, r4, #0
	bl ov22_0225AE9C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225AC8C

	thumb_func_start ov22_0225ACBC
ov22_0225ACBC: @ 0x0225ACBC
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	ldr r2, [r1]
	ldr r1, [r0, #0x1c]
	cmp r1, r2
	beq _0225ACDC
	str r2, [r0, #0x1c]
	cmp r2, #0xa
	bgt _0225ACDC
	adds r1, r0, #0
	adds r1, #0x30
	bl ov22_0225ADC0
	ldr r0, _0225ACE0 @ =0x00000683
	bl FUN_02005748
_0225ACDC:
	pop {r3, pc}
	nop
_0225ACE0: .4byte 0x00000683
	thumb_func_end ov22_0225ACBC

	thumb_func_start ov22_0225ACE4
ov22_0225ACE4: @ 0x0225ACE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	movs r1, #1
	str r0, [sp]
	movs r0, #0xa
	adds r4, r1, #0
	muls r4, r0, r4
	movs r7, #0
	adds r5, r6, #0
_0225ACFA:
	ldr r0, [sp]
	adds r1, r4, #0
	blx FUN_020E1F6C
	str r0, [sp, #4]
	cmp r0, #0xa
	ble _0225AD0C
	bl FUN_02022974
_0225AD0C:
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #4]
	bl FUN_02021D6C
	ldr r0, [sp, #4]
	adds r1, r0, #0
	ldr r0, [sp]
	muls r1, r4, r1
	subs r0, r0, r1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _0225AD4E
	ldr r0, [r6, #0x1c]
	cmp r0, #0xa
	bgt _0225AD4E
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_02021EC4
	cmp r7, #1
	bne _0225AD4E
	adds r1, r6, #0
	adds r1, #0x90
	movs r0, #1
	str r0, [r1]
_0225AD4E:
	adds r7, r7, #1
	adds r5, r5, #4
	cmp r7, #2
	blt _0225ACFA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225ACE4

	thumb_func_start ov22_0225AD5C
ov22_0225AD5C: @ 0x0225AD5C
	ldr r1, [r0, #0x20]
	subs r1, r1, #1
	bmi _0225AD64
	str r1, [r0, #0x20]
_0225AD64:
	bx lr
	.align 2, 0
	thumb_func_end ov22_0225AD5C

	thumb_func_start ov22_0225AD68
ov22_0225AD68: @ 0x0225AD68
	str r1, [r0]
	str r1, [r0, #4]
	subs r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov22_0225AD68

	thumb_func_start ov22_0225AD78
ov22_0225AD78: @ 0x0225AD78
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	ldr r1, [r4, #0x10]
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	ldr r1, [r4, #4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r0, r0, #1
	cmp r0, r1
	bgt _0225ADB8
	str r0, [r4, #0xc]
	movs r0, #0
	pop {r4, pc}
_0225ADB8:
	str r1, [r4, #0xc]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225AD78

	thumb_func_start ov22_0225ADC0
ov22_0225ADC0: @ 0x0225ADC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	movs r1, #0x3a
	movs r0, #2
	lsls r1, r1, #0xc
	lsls r0, r0, #0x14
	ldr r4, [sp, #4]
	str r1, [sp, #0x10]
	adds r0, r1, r0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	ldr r6, [sp]
	movs r7, #0
	movs r5, #0x67
	str r0, [sp, #8]
_0225ADE2:
	ldr r0, [r6, #0x10]
	movs r1, #2
	str r0, [r4, #4]
	bl FUN_02021CF8
	ldr r2, [sp, #8]
	str r5, [sp, #0xc]
	lsls r0, r5, #0xc
	adds r2, #0xc
	add r3, sp, #0xc
	str r0, [sp, #0xc]
	ldm r3!, {r0, r1}
	str r2, [sp, #8]
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r7, r7, #1
	str r0, [r2]
	adds r6, r6, #4
	adds r4, r4, #4
	adds r5, #0x18
	cmp r7, #2
	blt _0225ADE2
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	movs r0, #0xa
	subs r0, r0, r1
	cmp r0, #0
	ble _0225AE3C
	lsls r0, r0, #0xc
	ldr r2, _0225AE98 @ =0x00000266
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r4, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r4, #0xc
	orrs r1, r0
	lsls r0, r2, #1
	adds r4, r1, r0
	b _0225AE40
_0225AE3C:
	movs r4, #1
	lsls r4, r4, #0xc
_0225AE40:
	ldr r0, [sp, #4]
	movs r2, #1
	adds r0, #0x24
	adds r1, r4, #0
	lsls r2, r2, #0xc
	movs r3, #0x10
	bl ov22_0225AD68
	movs r2, #6
	asrs r1, r4, #0x1f
	adds r0, r4, #0
	lsls r2, r2, #0xe
	movs r3, #0
	blx FUN_020E1F1C
	movs r3, #2
	movs r2, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r2
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	movs r0, #6
	lsls r0, r0, #0xe
	subs r4, r1, r0
	ldr r0, [sp, #4]
	adds r1, r4, #0
	adds r0, #0x38
	movs r3, #0x10
	bl ov22_0225AD68
	ldr r0, [sp, #4]
	adds r1, r4, #0
	adds r0, #0x4c
	movs r2, #0
	movs r3, #0x10
	bl ov22_0225AD68
	ldr r0, [sp, #4]
	movs r1, #1
	str r1, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225AE98: .4byte 0x00000266
	thumb_func_end ov22_0225ADC0

	thumb_func_start ov22_0225AE9C
ov22_0225AE9C: @ 0x0225AE9C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0225AF2E
	adds r0, r5, #0
	adds r0, #0x24
	bl ov22_0225AD78
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x38
	bl ov22_0225AD78
	adds r0, r5, #0
	adds r0, #0x4c
	bl ov22_0225AD78
	ldr r0, [r5, #0x24]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl FUN_02021C70
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl FUN_02021C70
	adds r6, r5, #0
	adds r6, #0xc
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r1, [sp]
	ldr r0, [r5, #0x38]
	subs r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x4c]
	subs r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	adds r1, r2, #0
	bl FUN_02021C50
	adds r6, r5, #0
	adds r6, #0x18
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x4c]
	subs r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	adds r1, r2, #0
	bl FUN_02021C50
	cmp r4, #0
	beq _0225AF2E
	movs r0, #0
	str r0, [r5]
_0225AF2E:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_0225AE9C

	thumb_func_start ov22_0225AF34
ov22_0225AF34: @ 0x0225AF34
	ldr r0, [r0]
	cmp r0, #1
	beq _0225AF3E
	movs r0, #1
	bx lr
_0225AF3E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov22_0225AF34

	thumb_func_start ov22_0225AF44
ov22_0225AF44: @ 0x0225AF44
	push {r3, lr}
	sub sp, #0x10
	adds r3, r1, #0
	stm r0!, {r1}
	adds r3, #0x48
	str r3, [sp]
	ldr r1, [r1, #0x74]
	lsls r1, r1, #2
	adds r1, #0x89
	str r1, [sp, #4]
	movs r1, #0x10
	str r1, [sp, #8]
	add r1, sp, #0
	str r2, [sp, #0xc]
	bl ov22_02259820
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ov22_0225AF44

	thumb_func_start ov22_0225AF68
ov22_0225AF68: @ 0x0225AF68
	ldr r3, _0225AF70 @ =ov22_02259838
	adds r0, r0, #4
	movs r1, #1
	bx r3
	.align 2, 0
_0225AF70: .4byte ov22_02259838
	thumb_func_end ov22_0225AF68

	thumb_func_start ov22_0225AF74
ov22_0225AF74: @ 0x0225AF74
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	bl ov22_022598A0
	movs r1, #0x1c
	movs r0, #0
_0225AF82:
	strb r0, [r4]
	adds r4, r4, #1
	subs r1, r1, #1
	bne _0225AF82
	pop {r4, pc}
	thumb_func_end ov22_0225AF74

	thumb_func_start ov22_0225AF8C
ov22_0225AF8C: @ 0x0225AF8C
	push {r3, r4, lr}
	sub sp, #0x6c
	adds r2, r0, #0
	adds r4, r1, #0
	add r0, sp, #0
	adds r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	adds r1, r4, #0
	bl ov22_0225B4F8
	add r0, sp, #0
	bl ov22_0225B1BC
	add sp, #0x6c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225AF8C

	thumb_func_start ov22_0225AFB0
ov22_0225AFB0: @ 0x0225AFB0
	push {r3, r4, lr}
	sub sp, #0x6c
	adds r2, r0, #0
	adds r4, r1, #0
	add r0, sp, #0
	adds r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	adds r1, r4, #0
	bl ov22_0225B540
	add r0, sp, #0
	bl ov22_0225B1BC
	add sp, #0x6c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225AFB0

	thumb_func_start ov22_0225AFD4
ov22_0225AFD4: @ 0x0225AFD4
	push {r3, r4, lr}
	sub sp, #0x6c
	adds r2, r0, #0
	adds r4, r1, #0
	add r0, sp, #0
	adds r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	adds r1, r4, #0
	bl ov22_0225B540
	add r0, sp, #0
	bl ov22_0225B258
	add sp, #0x6c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225AFD4

	thumb_func_start ov22_0225AFF8
ov22_0225AFF8: @ 0x0225AFF8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x26
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0225B00E
	subs r0, #0x48
	adds r0, r4, r0
	bl ov22_0225AF68
_0225B00E:
	movs r0, #0x99
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0225B01E
	adds r0, r4, #0
	bl ov22_0225B328
_0225B01E:
	pop {r4, pc}
	thumb_func_end ov22_0225AFF8

	thumb_func_start ov22_0225B020
ov22_0225B020: @ 0x0225B020
	push {r4, lr}
	movs r1, #0x26
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0225B032
	bl ov22_0225B480
_0225B032:
	adds r0, r4, #0
	bl ov22_0225B464
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	movs r0, #0x63
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, #8
	adds r0, r4, r0
	bl ov22_022594AC
	adds r0, r4, #0
	bl ov22_0225B35C
	movs r0, #0x8d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225B020

	thumb_func_start ov22_0225B06C
ov22_0225B06C: @ 0x0225B06C
	ldr r3, _0225B070 @ =ov22_02255530
	bx r3
	.align 2, 0
_0225B070: .4byte ov22_02255530
	thumb_func_end ov22_0225B06C

	thumb_func_start ov22_0225B074
ov22_0225B074: @ 0x0225B074
	movs r2, #0x99
	lsls r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov22_0225B074

	thumb_func_start ov22_0225B07C
ov22_0225B07C: @ 0x0225B07C
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov22_0225B07C

	thumb_func_start ov22_0225B080
ov22_0225B080: @ 0x0225B080
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	movs r2, #0x19
	adds r4, r1, #0
	lsls r2, r2, #4
	adds r5, r0, #0
	adds r1, r2, #0
	adds r0, r5, r2
	str r6, [sp]
	adds r1, #0xac
	adds r2, #0xb0
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	adds r3, r4, #0
	bl ov22_02257AD8
	movs r0, #0x26
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225B0C8
	movs r3, #0x88
	ldr r0, [r5, #0x40]
	movs r1, #2
	movs r2, #0
	subs r3, r3, r4
	bl FUN_02019184
	movs r3, #0x10
	ldr r0, [r5, #0x40]
	movs r1, #2
	movs r2, #3
	subs r3, r3, r6
	bl FUN_02019184
_0225B0C8:
	movs r0, #0x8f
	lsls r0, r0, #2
	str r4, [r5, r0]
	adds r0, r0, #4
	str r6, [r5, r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_0225B080

	thumb_func_start ov22_0225B0D8
ov22_0225B0D8: @ 0x0225B0D8
	movs r3, #0x91
	lsls r3, r3, #2
	str r1, [r0, r3]
	adds r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end ov22_0225B0D8

	thumb_func_start ov22_0225B0E4
ov22_0225B0E4: @ 0x0225B0E4
	movs r2, #0x93
	lsls r2, r2, #2
	strh r1, [r0, r2]
	bx lr
	thumb_func_end ov22_0225B0E4

	thumb_func_start ov22_0225B0EC
ov22_0225B0EC: @ 0x0225B0EC
	push {r3, r4}
	movs r4, #0x25
	lsls r4, r4, #4
	str r1, [r0, r4]
	adds r1, r4, #4
	str r2, [r0, r1]
	adds r4, #8
	str r3, [r0, r4]
	pop {r3, r4}
	bx lr
	thumb_func_end ov22_0225B0EC

	thumb_func_start ov22_0225B100
ov22_0225B100: @ 0x0225B100
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x82
	lsls r0, r0, #2
	adds r4, r1, #0
	adds r6, r2, #0
	adds r0, r5, r0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02259270
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r5, r0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov22_02257CE0
	movs r0, #0x8f
	lsls r0, r0, #2
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r0]
	subs r1, r4, r1
	adds r0, r0, #4
	adds r7, r2, r1
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	subs r0, r6, r0
	adds r0, r1, r0
	str r0, [sp]
	ldr r2, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov22_0225B080
	ldr r2, [sp]
	adds r0, r5, #0
	subs r1, r4, r7
	subs r2, r6, r2
	bl ov22_0225B0D8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B100

	thumb_func_start ov22_0225B158
ov22_0225B158: @ 0x0225B158
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	movs r2, #0x95
	adds r5, r0, #0
	movs r0, #0x28
	lsls r2, r2, #2
	subs r0, r0, r3
	ldr r2, [r5, r2]
	lsls r0, r0, #0xc
	adds r6, r1, #0
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r0, #0
	adds r0, r5, #0
	movs r5, #2
	adds r3, r1, #0
	adds r1, r6, #0
	movs r6, #0
	lsls r5, r5, #0xa
	adds r5, r2, r5
	adcs r3, r6
	lsls r2, r3, #0x14
	lsrs r3, r5, #0xc
	orrs r3, r2
	asrs r2, r3, #0xc
	subs r2, r4, r2
	bl ov22_0225B100
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov22_0225B158

	thumb_func_start ov22_0225B198
ov22_0225B198: @ 0x0225B198
	movs r2, #0x97
	lsls r2, r2, #2
	strh r1, [r0, r2]
	subs r2, #0xcc
	ldr r3, _0225B1A8 @ =ov22_02257D70
	adds r0, r0, r2
	bx r3
	nop
_0225B1A8: .4byte ov22_02257D70
	thumb_func_end ov22_0225B198

	thumb_func_start ov22_0225B1AC
ov22_0225B1AC: @ 0x0225B1AC
	movs r2, #0x19
	lsls r2, r2, #4
	ldr r3, _0225B1B8 @ =ov22_02257B74
	adds r0, r0, r2
	bx r3
	nop
_0225B1B8: .4byte ov22_02257B74
	thumb_func_end ov22_0225B1AC

	thumb_func_start ov22_0225B1BC
ov22_0225B1BC: @ 0x0225B1BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x9a
	ldr r0, [r5, #0x68]
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x9a
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x8e
	ldr r1, [r5, #0x68]
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x68]
	bl FUN_02073C74
	movs r1, #0x8d
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5]
	ldr r1, [r4, r1]
	bl FUN_0202A61C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_0225B2D4
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x68]
	adds r0, r4, #0
	bl ov22_022554A8
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r2, [r5, #0x68]
	adds r0, r4, r0
	movs r1, #0x15
	bl ov22_02259484
	ldr r1, [r5, #0x68]
	movs r0, #0x14
	bl ov22_02254DE0
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_0225B388
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_0225B450
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x88
	ldr r2, [r5, #0x68]
	adds r1, r4, r1
	bl ov22_0225AF44
	movs r0, #0x26
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_0225B490
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225B1BC

	thumb_func_start ov22_0225B258
ov22_0225B258: @ 0x0225B258
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x9a
	ldr r0, [r5, #0x68]
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x9a
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x8e
	ldr r1, [r5, #0x68]
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x68]
	bl FUN_02073C74
	movs r1, #0x8d
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5]
	ldr r1, [r4, r1]
	bl FUN_0202A61C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_0225B2D4
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r2, [r5, #0x68]
	adds r0, r4, r0
	movs r1, #0x15
	bl ov22_02259484
	ldr r1, [r5, #0x68]
	movs r0, #0x14
	bl ov22_02254DE0
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_0225B388
	movs r0, #0x26
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r1, #1
	adds r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov22_0225B490
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225B258

	thumb_func_start ov22_0225B2D4
ov22_0225B2D4: @ 0x0225B2D4
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r4, r1, #0
	ldr r1, [r4, #0x68]
	adds r5, r0, #0
	movs r0, #0x19
	bl FUN_02006C24
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r5, r1]
	ldr r0, _0225B324 @ =0x000002CE
	add r1, sp, #0
	str r0, [sp]
	movs r0, #0x76
	str r0, [sp, #4]
	movs r0, #0x13
	str r0, [sp, #8]
	ldr r0, [r4, #0x68]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x68]
	adds r0, r5, #0
	bl ov22_0225547C
	ldr r3, [r4, #0x68]
	adds r0, r5, #0
	add r1, sp, #0x10
	adds r2, r4, #0
	bl ov22_0225B588
	adds r0, r5, #0
	add r1, sp, #0x10
	bl ov22_022551B4
	add r0, sp, #0x10
	bl ov22_02255338
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_0225B324: .4byte 0x000002CE
	thumb_func_end ov22_0225B2D4

	thumb_func_start ov22_0225B328
ov22_0225B328: @ 0x0225B328
	push {r3, r4, lr}
	sub sp, #4
	movs r3, #0x25
	lsls r3, r3, #4
	adds r1, r0, r3
	str r1, [sp]
	adds r1, r3, #0
	subs r1, #0x14
	ldr r2, [r0, r1]
	adds r1, r3, #0
	subs r1, #0xc
	ldr r1, [r0, r1]
	adds r1, r2, r1
	adds r2, r3, #0
	subs r2, #0x10
	ldr r4, [r0, r2]
	adds r2, r3, #0
	subs r2, #8
	subs r3, r3, #4
	ldr r2, [r0, r2]
	ldrh r3, [r0, r3]
	adds r2, r4, r2
	bl ov22_0225553C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov22_0225B328

	thumb_func_start ov22_0225B35C
ov22_0225B35C: @ 0x0225B35C
	push {r4, lr}
	adds r4, r0, #0
	bl ov22_022551D0
	adds r0, r4, #0
	bl ov22_022554F8
	movs r0, #0x26
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225B37A
	adds r0, r4, #0
	bl ov22_02255524
_0225B37A:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225B35C

	thumb_func_start ov22_0225B388
ov22_0225B388: @ 0x0225B388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r5, r0, #0
	add r2, sp, #0x28
	movs r0, #0
	adds r7, r1, #0
	adds r3, r2, #0
	adds r1, r0, #0
	stm r3!, {r0, r1}
	stm r3!, {r0, r1}
	stm r3!, {r0, r1}
	stm r3!, {r0, r1}
	str r0, [r3]
	ldr r0, [r5]
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x3c]
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	str r1, [sp, #0x40]
	adds r1, r0, #0
	subs r1, #8
	adds r1, r5, r1
	str r1, [sp, #0x44]
	movs r1, #0x15
	adds r0, r0, #4
	str r1, [sp, #0x48]
	adds r0, r5, r0
	adds r1, r2, #0
	bl ov22_022578F4
	ldr r0, [r7]
	bl FUN_0202A60C
	adds r6, r0, #0
	ldr r0, [r7]
	bl FUN_0202A614
	adds r4, r0, #0
	ldr r0, [r7]
	bl FUN_0202A604
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0x68]
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #8]
	adds r0, r5, r1
	adds r1, #0xa4
	ldr r1, [r5, r1]
	add r2, sp, #0x18
	adds r3, r6, #0
	bl ov22_02257964
	ldr r0, [r7, #0x54]
	movs r6, #0
	cmp r0, #0
	ble _0225B44C
	adds r4, r7, #0
_0225B412:
	ldr r0, [r4, #4]
	bl FUN_0202A624
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl FUN_0202A628
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	bl FUN_0202A62C
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl FUN_0202A630
	str r0, [sp]
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r5, r0
	bl ov22_022579FC
	ldr r0, [r7, #0x54]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _0225B412
_0225B44C:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B388

	thumb_func_start ov22_0225B450
ov22_0225B450: @ 0x0225B450
	adds r2, r1, #0
	movs r1, #0x19
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r2, #0x5c]
	ldr r3, _0225B460 @ =ov22_02257C88
	ldr r2, [r2, #0x68]
	bx r3
	.align 2, 0
_0225B460: .4byte ov22_02257C88
	thumb_func_end ov22_0225B450

	thumb_func_start ov22_0225B464
ov22_0225B464: @ 0x0225B464
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov22_02257A98
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov22_02257948
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225B464

	thumb_func_start ov22_0225B480
ov22_0225B480: @ 0x0225B480
	movs r1, #0x19
	lsls r1, r1, #4
	ldr r3, _0225B48C @ =ov22_02257CD4
	adds r0, r0, r1
	bx r3
	nop
_0225B48C: .4byte ov22_02257CD4
	thumb_func_end ov22_0225B480

	thumb_func_start ov22_0225B490
ov22_0225B490: @ 0x0225B490
	push {r3, r4, r5, lr}
	adds r3, r1, #0
	movs r1, #0x8f
	adds r4, r0, #0
	movs r2, #0x48
	lsls r1, r1, #2
	str r2, [r4, r1]
	movs r5, #0x38
	adds r2, r1, #4
	str r5, [r4, r2]
	adds r2, r1, #0
	adds r2, #8
	str r5, [r4, r2]
	adds r2, r1, #0
	movs r5, #0x40
	adds r2, #0xc
	str r5, [r4, r2]
	lsls r2, r5, #6
	adds r5, r1, #0
	adds r5, #0x14
	str r2, [r4, r5]
	adds r5, r1, #0
	adds r5, #0x18
	str r2, [r4, r5]
	adds r5, r1, #0
	adds r5, #0x1c
	str r2, [r4, r5]
	movs r2, #0
	adds r1, #0x10
	strh r2, [r4, r1]
	ldr r1, [r3, #0x60]
	ldr r2, [r3, #0x64]
	bl ov22_0225B080
	movs r0, #0x97
	ldr r1, _0225B4E0 @ =0x00007FFF
	lsls r0, r0, #2
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0225B4E0: .4byte 0x00007FFF
	thumb_func_end ov22_0225B490

	thumb_func_start ov22_0225B4E4
ov22_0225B4E4: @ 0x0225B4E4
	ldr r2, [r1]
	str r2, [r0, #0x58]
	ldr r2, [r1, #4]
	str r2, [r0, #0x60]
	ldr r2, [r1, #8]
	str r2, [r0, #0x64]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x68]
	bx lr
	.align 2, 0
	thumb_func_end ov22_0225B4E4

	thumb_func_start ov22_0225B4F8
ov22_0225B4F8: @ 0x0225B4F8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_0202A138
	adds r6, r5, #0
	str r0, [r5]
	movs r4, #0
	str r4, [r5, #0x54]
	adds r6, #0x54
_0225B50E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0202A110
	cmp r0, #0
	beq _0225B530
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0202A150
	ldr r1, [r5, #0x54]
	lsls r1, r1, #2
	adds r1, r5, r1
	str r0, [r1, #4]
	ldr r0, [r6]
	adds r0, r0, #1
	str r0, [r6]
_0225B530:
	adds r4, r4, #1
	cmp r4, #0xa
	blt _0225B50E
	adds r0, r7, #0
	bl FUN_0202A1DC
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B4F8

	thumb_func_start ov22_0225B540
ov22_0225B540: @ 0x0225B540
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_0202A4D8
	adds r6, r5, #0
	str r0, [r5]
	movs r4, #0
	str r4, [r5, #0x54]
	adds r6, #0x54
_0225B556:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0202A488
	cmp r0, #0
	beq _0225B578
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0202A4F0
	ldr r1, [r5, #0x54]
	lsls r1, r1, #2
	adds r1, r5, r1
	str r0, [r1, #4]
	ldr r0, [r6]
	adds r0, r0, #1
	str r0, [r6]
_0225B578:
	adds r4, r4, #1
	cmp r4, #0x14
	blt _0225B556
	adds r0, r7, #0
	bl FUN_0202A5B8
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B540

	thumb_func_start ov22_0225B588
ov22_0225B588: @ 0x0225B588
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r7, r3, #0
	adds r5, r0, #0
	adds r6, r2, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov22_02255410
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov22_0225B5A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B588

	thumb_func_start ov22_0225B5A8
ov22_0225B5A8: @ 0x0225B5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r2, #0
	ldr r0, [r0, #0x54]
	adds r4, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	ble _0225B620
	adds r6, r2, #0
_0225B5C2:
	ldr r0, [r6, #4]
	bl FUN_0202A624
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	adds r1, r5, #0
	bl FUN_020229F8
	cmp r0, #1
	bne _0225B60E
	movs r0, #1
	str r0, [sp]
	movs r0, #6
	ldr r1, [sp, #4]
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	ldr r3, [sp, #0xc]
	adds r1, r5, #1
	movs r2, #0
	bl FUN_0200723C
	adds r7, r0, #0
	ldr r0, [r4, #0x10]
	adds r1, r7, #0
	adds r2, r5, #0
	bl FUN_02022A1C
	ldr r1, [r4]
	lsls r5, r5, #3
	adds r1, r1, r5
	adds r0, r7, #0
	adds r1, r1, #4
	blx FUN_020A7118
	ldr r0, [sp, #4]
	ldr r1, [r0]
	ldr r0, [r4]
	str r1, [r0, r5]
_0225B60E:
	ldr r0, [sp, #0x10]
	adds r6, r6, #4
	adds r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x54]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _0225B5C2
_0225B620:
	movs r0, #1
	str r0, [sp]
	movs r1, #6
	ldr r0, [sp, #4]
	lsls r1, r1, #6
	ldr r0, [r0, r1]
	movs r1, #0
	ldr r3, [sp, #0xc]
	adds r2, r1, #0
	bl FUN_0200723C
	adds r5, r0, #0
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	movs r2, #0
	bl FUN_02022A1C
	ldr r1, [r4, #8]
	adds r0, r5, #0
	adds r1, r1, #4
	blx FUN_020A71B0
	ldr r0, [sp, #4]
	ldr r1, [r0]
	ldr r0, [r4, #8]
	str r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	str r1, [r0, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov22_0225B5A8

	thumb_func_start ov22_0225B660
ov22_0225B660: @ 0x0225B660
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0xd
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r2, #1
	movs r0, #3
	movs r1, #0xe
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	movs r1, #0x1a
	adds r0, r5, #0
	lsls r1, r1, #4
	movs r2, #0xd
	bl FUN_0200681C
	movs r2, #0x1a
	movs r1, #0
	lsls r2, r2, #4
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, _0225B730 @ =ov22_0225B848
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r0, r5, #0
	bl FUN_02006840
	adds r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldr r0, [r5]
	bne _0225B6BC
	ldr r1, [r5, #4]
	bl FUN_02029CA8
	str r0, [r4]
	b _0225B6C4
_0225B6BC:
	ldr r1, [r5, #4]
	bl FUN_02029CD0
	str r0, [r4, #4]
_0225B6C4:
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	bl ov22_02255094
	ldr r0, _0225B734 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0xe
	bl ov22_022555D4
	ldr r0, [r4, #0x54]
	str r0, [sp]
	movs r0, #0x48
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	add r0, sp, #0
	bne _0225B704
	ldr r1, [r4]
	bl ov22_0225AF8C
	b _0225B70A
_0225B704:
	ldr r1, [r4, #4]
	bl ov22_0225AFB0
_0225B70A:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl ov22_0225B85C
	adds r0, r4, #0
	bl ov22_0225B910
	adds r0, r4, #0
	bl ov22_0225B964
	adds r0, r4, #0
	bl ov22_0225BA40
	adds r0, r4, #0
	bl ov22_0225BAD0
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225B730: .4byte ov22_0225B848
_0225B734: .4byte 0x021BF6DC
	thumb_func_end ov22_0225B660

	thumb_func_start ov22_0225B738
ov22_0225B738: @ 0x0225B738
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	bl FUN_0200682C
	adds r5, r0, #0
	bl FUN_020241B4
	blx FUN_020A73C0
	ldr r0, [r5, #0x10]
	bl ov22_0225AFF8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	adds r5, #0x14
	adds r0, r5, #0
	bl ov22_0225562C
	ldr r0, [r4]
	cmp r0, #5
	bhi _0225B7F2
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0225B774: @ jump table
	.2byte _0225B780 - _0225B774 - 2 @ case 0
	.2byte _0225B786 - _0225B774 - 2 @ case 1
	.2byte _0225B7A4 - _0225B774 - 2 @ case 2
	.2byte _0225B7B4 - _0225B774 - 2 @ case 3
	.2byte _0225B7C4 - _0225B774 - 2 @ case 4
	.2byte _0225B7E4 - _0225B774 - 2 @ case 5
_0225B780:
	adds r0, r0, #1
	str r0, [r4]
	b _0225B7F2
_0225B786:
	movs r0, #6
	str r0, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #0xd
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #5
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225B7F2
_0225B7A4:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225B7F2
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225B7F2
_0225B7B4:
	ldr r1, _0225B7F8 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #3
	tst r1, r2
	beq _0225B7F2
	adds r0, r0, #1
	str r0, [r4]
	b _0225B7F2
_0225B7C4:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xd
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #2
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225B7F2
_0225B7E4:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225B7F2
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_0225B7F2:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0225B7F8: .4byte 0x021BF67C
	thumb_func_end ov22_0225B738

	thumb_func_start ov22_0225B7FC
ov22_0225B7FC: @ 0x0225B7FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov22_0225B020
	adds r0, r4, #0
	bl ov22_0225BA00
	adds r0, r4, #0
	bl ov22_0225BAA8
	adds r4, #0x14
	adds r0, r4, #0
	bl ov22_022555FC
	bl ov22_022550B4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0xd
	bl FUN_0201807C
	movs r0, #0xe
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov22_0225B7FC

	thumb_func_start ov22_0225B848
ov22_0225B848: @ 0x0225B848
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov22_0225B06C
	adds r4, #0x14
	adds r0, r4, #0
	bl ov22_0225561C
	pop {r4, pc}
	thumb_func_end ov22_0225B848

	thumb_func_start ov22_0225B85C
ov22_0225B85C: @ 0x0225B85C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0xe
	str r0, [sp, #4]
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x7e
	movs r2, #0
	movs r3, #0x60
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x54]
	movs r1, #0x7d
	movs r3, #1
	bl FUN_020070E8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0225B8A2
	movs r1, #0x80
	movs r4, #4
	b _0225B8A6
_0225B8A2:
	movs r1, #0x7f
	movs r4, #3
_0225B8A6:
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0
	add r3, sp, #0x10
	bl FUN_020071D0
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r6, r0, #0
	ldrh r0, [r2]
	movs r1, #1
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl FUN_020198C0
	ldr r1, [sp, #0x10]
	movs r2, #0
	ldrh r0, [r1]
	adds r3, r2, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	movs r1, #1
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl FUN_02019E2C
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r0, [r5, #0x54]
	movs r1, #1
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_0225B85C

	thumb_func_start ov22_0225B910
ov22_0225B910: @ 0x0225B910
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xe
	str r0, [sp, #4]
	movs r0, #0xc
	adds r1, r0, #0
	movs r2, #4
	movs r3, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	movs r0, #0xc
	movs r1, #0xb
	movs r3, #4
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	movs r0, #0xc
	movs r1, #0xa
	movs r3, #4
	bl FUN_02006E3C
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225B910

	thumb_func_start ov22_0225B964
ov22_0225B964: @ 0x0225B964
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0xfa
	lsls r0, r0, #2
	movs r1, #0x65
	str r0, [sp, #4]
	lsls r1, r1, #2
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r0, #0x14
	movs r2, #0xe9
	movs r3, #0
	bl ov22_02255248
	movs r0, #1
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #0xfa
	lsls r0, r0, #2
	movs r1, #0x65
	str r0, [sp, #8]
	lsls r1, r1, #2
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r0, #0x14
	movs r2, #0xea
	movs r3, #0
	bl ov22_02255268
	movs r0, #0xfa
	lsls r0, r0, #2
	movs r1, #0x65
	str r0, [sp]
	lsls r1, r1, #2
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r0, #0x14
	movs r2, #0xe8
	movs r3, #0
	bl ov22_0225528C
	movs r0, #0xfa
	lsls r0, r0, #2
	movs r1, #0x65
	str r0, [sp]
	lsls r1, r1, #2
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r0, #0x14
	movs r2, #0xe7
	movs r3, #0
	bl ov22_022552A8
	movs r0, #0x64
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xfa
	adds r0, #0x14
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0x90
	bl ov22_022551E4
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_02021E80
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov22_0225B964

	thumb_func_start ov22_0225BA00
ov22_0225BA00: @ 0x0225BA00
	push {r4, lr}
	movs r1, #0xfa
	adds r4, r0, #0
	adds r0, #0x14
	lsls r1, r1, #2
	bl ov22_022552C4
	adds r0, r4, #0
	movs r1, #0xfa
	adds r0, #0x14
	lsls r1, r1, #2
	bl ov22_022552D8
	adds r0, r4, #0
	movs r1, #0xfa
	adds r0, #0x14
	lsls r1, r1, #2
	bl ov22_022552EC
	adds r0, r4, #0
	movs r1, #0xfa
	adds r0, #0x14
	lsls r1, r1, #2
	bl ov22_02255300
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021BD4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225BA00

	thumb_func_start ov22_0225BA40
ov22_0225BA40: @ 0x0225BA40
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0xe
	movs r1, #1
	bl FUN_0201A778
	movs r1, #0x67
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x54]
	ldr r1, [r4, r1]
	movs r2, #3
	movs r3, #0
	bl FUN_0201A7E8
	movs r0, #0
	movs r1, #0xa0
	movs r2, #0xe
	bl FUN_02002E7C
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #0
	movs r1, #2
	bl FUN_02019060
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r1, #3
	ldr r0, [r4, #0x54]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225BA40

	thumb_func_start ov22_0225BAA8
ov22_0225BAA8: @ 0x0225BAA8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201ACF4
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201A8FC
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0201A928
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov22_0225BAA8

	thumb_func_start ov22_0225BAD0
ov22_0225BAD0: @ 0x0225BAD0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0225BAEE
	adds r0, r4, #0
	bl ov22_0225BB00
	b _0225BAF4
_0225BAEE:
	adds r0, r4, #0
	bl ov22_0225BC18
_0225BAF4:
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201A954
	pop {r4, pc}
	thumb_func_end ov22_0225BAD0

	thumb_func_start ov22_0225BB00
ov22_0225BB00: @ 0x0225BB00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r2, _0225BC10 @ =0x00000181
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0xd
	bl FUN_0200B144
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0225BB1C
	bl FUN_02022974
_0225BB1C:
	movs r0, #0xd
	bl FUN_0200B358
	adds r6, r0, #0
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #5
	bl FUN_02021D6C
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x1c]
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x14
	bl FUN_02021C50
	movs r0, #0xc
	movs r1, #0xd
	bl FUN_02023790
	adds r7, r0, #0
	ldr r0, [r5]
	adds r1, r7, #0
	bl FUN_0202A1A0
	movs r0, #0
	adds r1, r7, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r4, r0, #0
	movs r0, #7
	str r0, [sp]
	movs r1, #0
	lsrs r3, r4, #0x1f
	adds r3, r4, r3
	asrs r4, r3, #1
	movs r3, #0x80
	ldr r0, _0225BC14 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x67
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r2, r7, #0
	subs r3, r3, r4
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [r5]
	bl FUN_0202A1F4
	adds r2, r0, #0
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0200BE48
	movs r0, #0xc8
	movs r1, #0xd
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [sp, #0x10]
	movs r1, #0x2d
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #0x1b
	str r0, [sp]
	movs r1, #0
	ldr r0, _0225BC14 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x67
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	lsrs r5, r3, #0x1f
	adds r5, r3, r5
	asrs r5, r5, #1
	movs r3, #0x80
	adds r2, r4, #0
	subs r3, r3, r5
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x10]
	bl FUN_0200B190
	adds r0, r6, #0
	bl FUN_0200B3F0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BC10: .4byte 0x00000181
_0225BC14: .4byte 0x00010200
	thumb_func_end ov22_0225BB00

	thumb_func_start ov22_0225BC18
ov22_0225BC18: @ 0x0225BC18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, #8]
	bl FUN_02021D6C
	ldr r0, [r5, #4]
	bl FUN_0202A5D0
	adds r6, r0, #0
	movs r0, #0xd
	bl FUN_0200B358
	adds r7, r0, #0
	movs r0, #0xc8
	movs r1, #0xd
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r5, #8]
	bl FUN_020958B8
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0200BBDC
	adds r0, r6, #0
	bl FUN_02095888
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #1
	bl FUN_0200BBA8
	ldr r0, [r5, #4]
	bl FUN_0202A544
	adds r6, r0, #0
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_0202A524
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_0200B48C
	movs r0, #0xd
	bl FUN_02073C74
	adds r6, r0, #0
	ldr r0, [r5, #4]
	adds r1, r6, #0
	bl FUN_0202A560
	adds r0, r6, #0
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #4
	bl FUN_0200B5CC
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r2, _0225BD70 @ =0x00000181
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0xd
	bl FUN_0200B144
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0225BCC4
	bl FUN_02022974
_0225BCC4:
	ldr r0, [sp, #0x10]
	movs r1, #0x2b
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #7
	str r0, [sp]
	movs r1, #0
	lsrs r6, r3, #0x1f
	adds r6, r3, r6
	ldr r0, _0225BD74 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x67
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	asrs r6, r6, #1
	movs r3, #0x80
	adds r2, r4, #0
	subs r3, r3, r6
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	movs r1, #0x2c
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #0x1b
	str r0, [sp]
	movs r1, #0
	ldr r0, _0225BD74 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x67
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	lsrs r5, r3, #0x1f
	adds r5, r3, r5
	asrs r5, r5, #1
	movs r3, #0x80
	adds r2, r4, #0
	subs r3, r3, r5
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x10]
	bl FUN_0200B190
	adds r0, r7, #0
	bl FUN_0200B3F0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225BD70: .4byte 0x00000181
_0225BD74: .4byte 0x00010200
	thumb_func_end ov22_0225BC18
	@ 0x0225BD78
