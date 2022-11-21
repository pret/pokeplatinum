	.include "macros/function.inc"


	.text

	thumb_func_start ov24_02253CE0
ov24_02253CE0: @ 0x02253CE0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #3
	movs r1, #8
	lsls r2, r0, #0xf
	bl FUN_02017FC8
	movs r0, #0
	blx FUN_020BDEA8
	movs r0, #0x80
	blx FUN_020BEA50
	movs r0, #1
	lsls r0, r0, #8
	blx FUN_020BEAF8
	ldr r2, _02253D90 @ =0x04001000
	ldr r0, _02253D94 @ =0xFFCFFFEF
	ldr r1, [r2]
	movs r3, #0
	ands r1, r0
	movs r0, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r2, _02253D98 @ =0x02253DB8
	adds r0, r5, #0
	movs r1, #4
	bl FUN_020183C4
	movs r0, #0xc
	movs r1, #8
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	movs r1, #0xa
	adds r2, r5, #0
	movs r3, #4
	adds r4, r0, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r5, #0
	movs r3, #4
	bl FUN_0200710C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	adds r0, r4, #0
	bl FUN_02006CA8
	ldr r2, _02253D90 @ =0x04001000
	ldr r0, _02253D9C @ =0xFFFF1FFF
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	ldr r1, [r2]
	ldr r0, _02253DA0 @ =0xFFFFE0FF
	ands r1, r0
	lsrs r0, r2, #0x12
	orrs r0, r1
	str r0, [r2]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02253D90: .4byte 0x04001000
_02253D94: .4byte 0xFFCFFFEF
_02253D98: .4byte 0x02253DB8
_02253D9C: .4byte 0xFFFF1FFF
_02253DA0: .4byte 0xFFFFE0FF
	thumb_func_end ov24_02253CE0

	thumb_func_start ov24_02253DA4
ov24_02253DA4: @ 0x02253DA4
	push {r3, lr}
	movs r1, #4
	bl FUN_02019044
	movs r0, #8
	bl FUN_0201807C
	pop {r3, pc}
	thumb_func_end ov24_02253DA4

	thumb_func_start ov24_02253DB4
ov24_02253DB4: @ 0x02253DB4
	movs r0, #1
	bx lr
	thumb_func_end ov24_02253DB4
	@ 0x02253DB8
