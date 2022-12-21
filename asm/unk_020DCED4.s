	.include "macros/function.inc"
	.include "include/unk_020DCED4.inc"

	

	.text


	arm_func_start sub_020DCED4
sub_020DCED4: ; 0x020DCED4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x80
	ldr r8, [sp, #0xb4]
	ldr r6, [sp, #0xac]
	ldr r0, [sp, #0xb0]
	bic sb, r8, #0x80000000
	orrs r1, sb, r0
	ldr r7, [sp, #0xa8]
	bic r4, r6, #0x80000000
	addeq sp, sp, #0x80
	moveq r0, #0
	ldreq r1, _020DD480 ; =0x3FF00000
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, _020DD484 ; =0x7FF00000
	cmp r4, r1
	bgt _020DCF44
	bne _020DCF2C
	cmp r7, #0
	bne _020DCF44
_020DCF2C:
	ldr r1, _020DD484 ; =0x7FF00000
	cmp sb, r1
	bgt _020DCF44
	bne _020DCF68
	cmp r0, #0
	beq _020DCF68
_020DCF44:
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_020DFC6C
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DCF68:
	cmp r6, #0
	mov r5, #0
	bge _020DCFD0
	ldr r1, _020DD488 ; =0x43400000
	cmp sb, r1
	movge r5, #2
	bge _020DCFD0
	sub r1, r1, #0x3500000
	cmp sb, r1
	blt _020DCFD0
	ldr r1, _020DD48C ; =0xFFFFFC01
	add r1, r1, sb, asr #20
	cmp r1, #0x14
	ble _020DCFB8
	rsb r2, r1, #0x34
	mov r1, r0, lsr r2
	cmp r0, r1, lsl r2
	andeq r1, r1, #1
	rsbeq r5, r1, #2
	b _020DCFD0
_020DCFB8:
	cmp r0, #0
	rsbeq r2, r1, #0x14
	moveq r1, sb, asr r2
	cmpeq sb, r1, lsl r2
	andeq r1, r1, #1
	rsbeq r5, r1, #2
_020DCFD0:
	cmp r0, #0
	bne _020DD12C
	ldr r1, _020DD484 ; =0x7FF00000
	cmp sb, r1
	bne _020DD084
	add r0, r4, #0x100000
	add r0, r0, #-0x40000000
	orrs r0, r0, r7
	bne _020DD018
	ldr r0, [sp, #0xb0]
	ldr r1, [sp, #0xb4]
	mov r2, r0
	mov r3, r1
	bl sub_020E074C
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD018:
	sub r0, r1, #0x40000000
	cmp r4, r0
	blt _020DD048
	cmp r8, #0
	ldrge r0, [sp, #0xb0]
	ldrge r1, [sp, #0xb4]
	movlt r0, #0
	add sp, sp, #0x80
	movlt r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD048:
	cmp r8, #0
	mov r0, #0
	addge sp, sp, #0x80
	movge r1, r0
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	mov r1, r0
	bl sub_020E074C
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD084:
	sub r0, r1, #0x40000000
	cmp sb, r0
	bne _020DD0D0
	cmp r8, #0
	ldrge r0, [sp, #0xa8]
	ldrge r1, [sp, #0xac]
	addge sp, sp, #0x80
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r2, [sp, #0xa8]
	ldr r3, [sp, #0xac]
	sub r1, r1, #0x40000000
	mov r0, #0
	bl sub_020E2374
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD0D0:
	cmp r8, #0x40000000
	bne _020DD0FC
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	mov r2, r0
	mov r3, r1
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD0FC:
	ldr r0, _020DD490 ; =0x3FE00000
	cmp r8, r0
	bne _020DD12C
	cmp r6, #0
	blt _020DD12C
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	bl sub_020E0598
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD12C:
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	bl sub_020DE084
	str r0, [sp, #0x70]
	str r1, [sp, #0x74]
	cmp r7, #0
	bne _020DD230
	ldr r0, _020DD484 ; =0x7FF00000
	cmp r4, r0
	cmpne r4, #0
	subne r0, r0, #0x40000000
	cmpne r4, r0
	bne _020DD230
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	str r2, [sp, #0x78]
	str r3, [sp, #0x7c]
	cmp r8, #0
	bge _020DD18C
	ldr r1, _020DD480 ; =0x3FF00000
	mov r0, #0
	bl sub_020E2374
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
_020DD18C:
	cmp r6, #0
	bge _020DD218
	add r0, r4, #0x100000
	add r0, r0, #-0x40000000
	orrs r0, r0, r5
	bne _020DD1F4
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r0
	mov r3, r1
	bl sub_020E074C
	mov r4, r0
	mov r5, r1
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r0
	mov r3, r1
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r5
	bl sub_020E2374
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	b _020DD218
_020DD1F4:
	cmp r5, #1
	bne _020DD218
	mov r0, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	mov r1, r0
	bl sub_020E074C
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
_020DD218:
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD230:
	mov r0, r6, asr #0x1f
	add r7, r0, #1
	orrs r0, r7, r5
	bne _020DD268
	ldr r0, _020DD494 ; =0x021015B0
	ldr r1, _020DD498 ; =0x021D0D40
	ldr r0, [r0, #0]
	mov r2, #0x21
	str r2, [r1, #0]
	bl sub_020E16BC
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD268:
	ldr r3, _020DD49C ; =0x41E00000
	cmp sb, r3
	ble _020DD56C
	add r0, r3, #0x2100000
	cmp sb, r0
	ble _020DD2D8
	ldr r1, _020DD4A0 ; =0x3FEFFFFF
	cmp r4, r1
	bgt _020DD2AC
	cmp r8, #0
	mov r0, #0
	addlt r1, r1, #0x40000001
	add sp, sp, #0x80
	movge r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD2AC:
	add r0, r1, #1
	cmp r4, r0
	blt _020DD2D8
	cmp r8, #0
	mov r0, #0
	addgt r1, r1, #0x40000001
	add sp, sp, #0x80
	movle r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD2D8:
	ldr r2, _020DD4A0 ; =0x3FEFFFFF
	cmp r4, r2
	bge _020DD304
	cmp r8, #0
	mov r0, #0
	addlt r1, r2, #0x40000001
	add sp, sp, #0x80
	movge r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD304:
	add r0, r2, #1
	cmp r4, r0
	ble _020DD330
	cmp r8, #0
	mov r0, #0
	addgt r1, r2, #0x40000001
	add sp, sp, #0x80
	movle r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD330:
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	add r3, r2, #1
	mov r2, #0
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	bl sub_020E0234
	mov r6, r1
	mov r4, r0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	ldr r1, _020DD4A4 ; =0x3FD00000
	mov r0, #0
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4A8 ; =0x55555555
	sub r1, r0, #0x15800000
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, #0
	ldr r1, _020DD490 ; =0x3FE00000
	bl sub_020E074C
	mov r2, r0
	mov r0, r4
	mov r3, r1
	mov r1, r6
	bl sub_020E0234
	mov r6, r0
	mov r8, r1
	mov r0, #0x60000000
	ldr r1, _020DD4AC ; =0x3FF71547
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_020E0234
	mov r4, r0
	mov sb, r1
	ldr r0, _020DD4B0 ; =0xF85DDF44
	ldr r1, _020DD4B4 ; =0x3E54AE0B
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_020E0234
	mov fp, r0
	mov sl, r1
	ldr r0, _020DD4B8 ; =0x652B82FE
	ldr r1, _020DD4AC ; =0x3FF71547
	mov r2, r6
	mov r3, r8
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, fp
	mov r1, sl
	bl sub_020E074C
	mov r6, r0
	mov r8, r1
	mov r0, r4
	mov r1, sb
	mov r2, r6
	mov r3, r8
	bl sub_020DFC6C
	mov r2, r4
	mov r3, sb
	str r1, [sp, #0x5c]
	mov r0, #0
	str r0, [sp, #0x58]
	bl sub_020E074C
	mov r2, r0
	mov r0, r6
	mov r3, r1
	mov r1, r8
	bl sub_020E074C
	mov r4, r0
	mov r8, r1
	b _020DDAC8
	; .align 2, 0
_020DD480: .word 0x3FF00000
_020DD484: .word 0x7FF00000
_020DD488: .word 0x43400000
_020DD48C: .word 0xFFFFFC01
_020DD490: .word 0x3FE00000
_020DD494: .word 0x021015B0
_020DD498: .word 0x021D0D40
_020DD49C: .word 0x41E00000
_020DD4A0: .word 0x3FEFFFFF
_020DD4A4: .word 0x3FD00000
_020DD4A8: .word 0x55555555
_020DD4AC: .word 0x3FF71547
_020DD4B0: .word 0xF85DDF44
_020DD4B4: .word 0x3E54AE0B
_020DD4B8: .word 0x652B82FE
_020DD4BC: .word 0x0003988E
_020DD4C0: .word 0x000BB67A
_020DD4C4: .word 0x020FECAC
_020DD4C8: .word 0x4A454EEF
_020DD4CC: .word 0x3FCA7E28
_020DD4D0: .word 0x93C9DB65
_020DD4D4: .word 0x3FCD864A
_020DD4D8: .word 0xA91D4101
_020DD4DC: .word 0x3FD17460
_020DD4E0: .word 0x518F264D
_020DD4E4: .word 0x3FD55555
_020DD4E8: .word 0xDB6FABFF
_020DD4EC: .word 0x3FDB6DB6
_020DD4F0: .word 0x33333303
_020DD4F4: .word 0x3FE33333
_020DD4F8: .word 0x40080000
_020DD4FC: .word 0x3FEEC709
_020DD500: .word 0x145B01F5
_020DD504: .word 0xBE3E2FE0
_020DD508: .word 0xDC3A03FD
_020DD50C: .word 0x020FECBC
_020DD510: .word 0x020FEC9C
_020DD514: .word 0x40900000
_020DD518: .word 0x8800759C
_020DD51C: .word 0x7E37E43C
_020DD520: .word 0x3C971547
_020DD524: .word 0x3F6F3400
_020DD528: .word 0xC2F8F359
_020DD52C: .word 0x01A56E1F
_020DD530: .word 0x3FE62E43
_020DD534: .word 0xFEFA39EF
_020DD538: .word 0x3FE62E42
_020DD53C: .word 0x0CA86C39
_020DD540: .word 0xBE205C61
_020DD544: .word 0x72BEA4D0
_020DD548: .word 0x3E663769
_020DD54C: .word 0xC5D26BF1
_020DD550: .word 0xBEBBBD41
_020DD554: .word 0xAF25DE2C
_020DD558: .word 0x3F11566A
_020DD55C: .word 0x16BEBD93
_020DD560: .word 0xBF66C16C
_020DD564: .word 0x5555553E
_020DD568: .word 0x3FC55555
_020DD56C:
	cmp r4, #0x100000
	mov r6, #0
	bge _020DD59C
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	mov r2, r6
	add r3, r3, #0x1600000
	bl sub_020E0234
	mov r4, r1
	str r0, [sp, #0x70]
	str r4, [sp, #0x74]
	sub r6, r6, #0x35
_020DD59C:
	ldr r0, _020DD48C ; =0xFFFFFC01
	ldr r1, _020DD4BC ; =0x0003988E
	and r2, r4, r0, lsr #12
	add r0, r0, r4, asr #20
	orr sb, r2, #0xff00000
	cmp r2, r1
	add r6, r6, r0
	orr sb, sb, #0x30000000
	movle r8, #0
	ble _020DD5DC
	ldr r0, _020DD4C0 ; =0x000BB67A
	cmp r2, r0
	movlt r8, #1
	addge r6, r6, #1
	subge sb, sb, #0x100000
	movge r8, #0
_020DD5DC:
	ldr r2, _020DD4C4 ; =0x020FECAC
	ldr r0, [sp, #0x70]
	add r1, r2, r8, lsl #3
	ldr r3, [r1, #4]
	ldr r2, [r2, r8, lsl #3]
	mov r1, sb
	str sb, [sp, #0x74]
	bl sub_020E074C
	ldr r2, _020DD4C4 ; =0x020FECAC
	mov sl, r0
	add r3, r2, r8, lsl #3
	mov r4, r1
	ldr r0, [sp, #0x70]
	ldr r2, [r2, r8, lsl #3]
	ldr r3, [r3, #4]
	mov r1, sb
	bl sub_020DFC6C
	mov r3, r1
	mov r2, r0
	ldr r1, _020DD480 ; =0x3FF00000
	mov r0, #0
	bl sub_020E2374
	str r1, [sp, #0x24]
	mov fp, r0
	ldr r3, [sp, #0x24]
	mov r0, sl
	mov r1, r4
	mov r2, fp
	bl sub_020E0234
	mov r2, sb, asr #1
	orr r2, r2, #0x20000000
	mov sb, r1
	add r2, r2, #0x80000
	add r1, r2, r8, lsl #18
	ldr r2, _020DD4C4 ; =0x020FECAC
	str r0, [sp, #0x28]
	add r3, r2, r8, lsl #3
	mov r0, #0
	ldr r2, [r2, r8, lsl #3]
	ldr r3, [r3, #4]
	str sb, [sp, #0x4c]
	str r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x40]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	bl sub_020E074C
	str r0, [sp, #0x2c]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	mov r1, sb
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, sl
	mov r1, r4
	bl sub_020E074C
	mov sl, r0
	mov r4, r1
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	mov r1, sb
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, sl
	mov r1, r4
	bl sub_020E074C
	mov r3, r1
	mov r2, r0
	ldr r1, [sp, #0x24]
	mov r0, fp
	bl sub_020E0234
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x14]
	mov r1, sb
	mov r2, r0
	mov r3, sb
	bl sub_020E0234
	mov r4, r0
	mov sl, r1
	mov r2, r4
	mov r3, sl
	bl sub_020E0234
	str r0, [sp, #0x34]
	mov fp, r1
	ldr r0, _020DD4C8 ; =0x4A454EEF
	ldr r1, _020DD4CC ; =0x3FCA7E28
	mov r2, r4
	mov r3, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4D0 ; =0x93C9DB65
	ldr r1, _020DD4D4 ; =0x3FCD864A
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4D8 ; =0xA91D4101
	ldr r1, _020DD4DC ; =0x3FD17460
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4E0 ; =0x518F264D
	ldr r1, _020DD4E4 ; =0x3FD55555
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4E8 ; =0xDB6FABFF
	ldr r1, _020DD4EC ; =0x3FDB6DB6
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4F0 ; =0x33333303
	ldr r1, _020DD4F4 ; =0x3FE33333
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x34]
	mov r1, fp
	bl sub_020E0234
	mov r4, r0
	mov sl, r1
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x28]
	mov r1, sb
	mov r3, sb
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x14]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020DFC6C
	mov r4, r0
	ldr r0, [sp, #0x48]
	mov sl, r1
	mov r1, sb
	mov r2, r0
	mov r3, r1
	bl sub_020E0234
	str r1, [sp, #0xc]
	mov fp, r0
	ldr r1, _020DD4F8 ; =0x40080000
	ldr r3, [sp, #0xc]
	mov r0, #0
	mov r2, fp
	bl sub_020DFC6C
	mov r2, r4
	mov r3, sl
	bl sub_020DFC6C
	mov r0, #0
	ldr r3, _020DD4F8 ; =0x40080000
	mov r2, r0
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
	bl sub_020E074C
	ldr r3, [sp, #0xc]
	mov r2, fp
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E074C
	str r0, [sp, #0x38]
	str r1, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	mov r1, sb
	bl sub_020E0234
	mov r4, r0
	mov sl, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_020E0234
	str r0, [sp, #0x3c]
	mov fp, r1
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x28]
	mov r3, sb
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x3c]
	mov r1, fp
	bl sub_020DFC6C
	mov sb, r0
	mov fp, r1
	mov r0, r4
	mov r1, sl
	mov r2, sb
	mov r3, fp
	bl sub_020DFC6C
	mov r0, #0
	mov r2, r4
	mov r3, sl
	str r1, [sp, #0x6c]
	str r0, [sp, #0x68]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, sb
	mov r1, fp
	bl sub_020E074C
	mov sl, r1
	mov fp, r0
	ldr r1, _020DD4FC ; =0x3FEEC709
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	mov r0, #-0x20000000
	bl sub_020E0234
	mov r4, r0
	mov sb, r1
	ldr r0, _020DD500 ; =0x145B01F5
	ldr r1, _020DD504 ; =0xBE3E2FE0
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	bl sub_020E0234
	mov r2, fp
	mov r3, sl
	mov fp, r0
	mov sl, r1
	ldr r0, _020DD508 ; =0xDC3A03FD
	ldr r1, _020DD4FC ; =0x3FEEC709
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, fp
	mov r1, sl
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD50C ; =0x020FECBC
	add r1, r0, r8, lsl #3
	ldr r0, [r0, r8, lsl #3]
	ldr r1, [r1, #4]
	bl sub_020DFC6C
	mov fp, r0
	mov sl, r1
	mov r0, r6
	bl sub_020E01B8
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	mov r0, r4
	mov r1, sb
	mov r2, fp
	mov r3, sl
	bl sub_020DFC6C
	ldr r2, _020DD510 ; =0x020FEC9C
	add r3, r2, r8, lsl #3
	ldr r2, [r2, r8, lsl #3]
	ldr r3, [r3, #4]
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020DFC6C
	str r1, [sp, #0x5c]
	mov r0, #0
	str r0, [sp, #0x58]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_020E074C
	ldr r2, _020DD510 ; =0x020FEC9C
	add r3, r2, r8, lsl #3
	ldr r2, [r2, r8, lsl #3]
	ldr r3, [r3, #4]
	bl sub_020E074C
	mov r2, r4
	mov r3, sb
	bl sub_020E074C
	mov r2, r0
	mov r0, fp
	mov r3, r1
	mov r1, sl
	bl sub_020E074C
	mov r4, r0
	mov r8, r1
_020DDAC8:
	sub r0, r5, #1
	ldr r1, [sp, #0xb4]
	orrs r0, r7, r0
	ldr r5, _020DD480 ; =0x3FF00000
	mov r2, #0
	ldr r0, [sp, #0xb0]
	mov r3, r1
	mov r6, #0
	subeq r5, r5, #-0x80000000
	str r1, [sp, #0x64]
	str r2, [sp, #0x60]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	bl sub_020E0234
	mov r7, r0
	mov sb, r1
	ldr r0, [sp, #0xb0]
	ldr r1, [sp, #0xb4]
	mov r2, r4
	mov r3, r8
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, sb
	bl sub_020DFC6C
	mov r7, r0
	mov r8, r1
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	str r2, [sp, #0x68]
	str r3, [sp, #0x6c]
	bl sub_020DFC6C
	mov sb, r1
	ldr r2, _020DD514 ; =0x40900000
	str r0, [sp, #0x78]
	str sb, [sp, #0x7c]
	cmp sb, r2
	blt _020DDC54
	add r1, sb, #0xf700000
	add r1, r1, #-0x50000000
	orrs r0, r1, r0
	beq _020DDBD4
	ldr r0, _020DD518 ; =0x8800759C
	ldr r1, _020DD51C ; =0x7E37E43C
	mov r2, r6
	mov r3, r5
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD518 ; =0x8800759C
	ldr r1, _020DD51C ; =0x7E37E43C
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DDBD4:
	ldr r0, _020DD4B8 ; =0x652B82FE
	ldr r1, _020DD520 ; =0x3C971547
	mov r2, r7
	mov r3, r8
	bl sub_020DFC6C
	mov r4, r0
	mov sl, r1
	ldr r0, [sp, #0x78]
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	mov r1, sb
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0DBC
	bls _020DDD08
	ldr r0, _020DD518 ; =0x8800759C
	ldr r1, _020DD51C ; =0x7E37E43C
	mov r2, r6
	mov r3, r5
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD518 ; =0x8800759C
	ldr r1, _020DD51C ; =0x7E37E43C
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DDC54:
	bic r3, sb, #0x80000000
	add r2, r2, #0xcc00
	cmp r3, r2
	blt _020DDD08
	ldr r2, _020DD524 ; =0x3F6F3400
	add r2, sb, r2
	orrs r2, r2, r0
	beq _020DDCAC
	ldr r0, _020DD528 ; =0xC2F8F359
	ldr r1, _020DD52C ; =0x01A56E1F
	mov r2, r6
	mov r3, r5
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD528 ; =0xC2F8F359
	ldr r1, _020DD52C ; =0x01A56E1F
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DDCAC:
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	bl sub_020E0E54
	bhi _020DDD08
	ldr r0, _020DD528 ; =0xC2F8F359
	ldr r1, _020DD52C ; =0x01A56E1F
	mov r2, r6
	mov r3, r5
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD528 ; =0xC2F8F359
	ldr r1, _020DD52C ; =0x01A56E1F
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DDD08:
	ldr r0, _020DD48C ; =0xFFFFFC01
	bic r3, sb, #0x80000000
	ldr r1, _020DD490 ; =0x3FE00000
	add r2, r0, r3, asr #20
	cmp r3, r1
	mov r4, #0
	ble _020DDD84
	mov r1, #0x100000
	add r2, r2, #1
	add r2, sb, r1, asr r2
	bic r3, r2, #0x80000000
	add r0, r0, r3, asr #20
	sub r3, r1, #1
	mvn r3, r3, asr r0
	sub r1, r1, #1
	and r1, r2, r1
	and r2, r2, r3
	str r2, [sp, #0x54]
	str r4, [sp, #0x50]
	orr r1, r1, #0x100000
	rsb r0, r0, #0x14
	mov r4, r1, asr r0
	cmp sb, #0
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	rsblt r4, r4, #0
	bl sub_020E074C
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
_020DDD84:
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	mov r0, r7
	mov r1, r8
	bl sub_020DFC6C
	mov r3, r1
	mov r0, #0
	ldr r1, _020DD530 ; =0x3FE62E43
	mov r2, r0
	str r3, [sp, #0x54]
	str r0, [sp, #0x50]
	bl sub_020E0234
	mov sb, r0
	mov sl, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	bl sub_020E074C
	mov r2, r0
	mov r0, r7
	mov r3, r1
	mov r1, r8
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD534 ; =0xFEFA39EF
	ldr r1, _020DD538 ; =0x3FE62E42
	bl sub_020E0234
	mov r7, r0
	mov r8, r1
	ldr r0, _020DD53C ; =0x0CA86C39
	ldr r1, _020DD540 ; =0xBE205C61
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r0, r7
	mov r3, r1
	mov r1, r8
	bl sub_020DFC6C
	mov r7, r0
	mov r8, r1
	mov r0, sb
	mov r1, sl
	mov r2, r7
	mov r3, r8
	bl sub_020DFC6C
	mov r2, sb
	mov r3, sl
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	bl sub_020E074C
	mov r8, r0
	mov sb, r1
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r0
	mov r3, r1
	bl sub_020E0234
	mov r2, r0
	str r2, [sp, #0x50]
	mov r3, r1
	str r3, [sp, #0x54]
	ldr r0, _020DD544 ; =0x72BEA4D0
	ldr r1, _020DD548 ; =0x3E663769
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD54C ; =0xC5D26BF1
	ldr r1, _020DD550 ; =0xBEBBBD41
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD554 ; =0xAF25DE2C
	ldr r1, _020DD558 ; =0x3F11566A
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD55C ; =0x16BEBD93
	ldr r1, _020DD560 ; =0xBF66C16C
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD564 ; =0x5555553E
	ldr r1, _020DD568 ; =0x3FC55555
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_020E074C
	mov r2, r0
	str r2, [sp, #0x58]
	mov r3, r1
	str r3, [sp, #0x5c]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_020E0234
	mov r7, r0
	mov sl, r1
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	mov r2, #0
	mov r3, #0x40000000
	bl sub_020E074C
	mov r2, r0
	mov r0, r7
	mov r3, r1
	mov r1, sl
	bl sub_020E2374
	mov r7, r0
	mov sl, r1
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r8
	mov r3, sb
	bl sub_020E0234
	mov r2, r0
	mov r0, r8
	mov r3, r1
	mov r1, sb
	bl sub_020DFC6C
	mov r2, r0
	mov r0, r7
	mov r3, r1
	mov r1, sl
	bl sub_020E074C
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_020E074C
	mov r3, r1
	mov r2, r0
	ldr r1, _020DD480 ; =0x3FF00000
	mov r0, #0
	bl sub_020E074C
	add r3, r1, r4, lsl #20
	mov r2, r3, asr #0x14
	str r0, [sp, #0x78]
	cmp r2, #0
	str r1, [sp, #0x7c]
	addgt r0, sp, #0x78
	strgt r3, [r0, #4]
	bgt _020DE038
	mov r2, r4
	bl sub_020DF8EC
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
_020DE038:
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	mov r0, r6
	mov r1, r5
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020DCED4


	.section .exception, 4


	.global Unk_020E4580
Unk_020E4580: ; 0x020E4580
	.incbin "incbin/arm9_exception.bin", 0x28, 0x8


	.rodata


	.global Unk_020FEC9C
Unk_020FEC9C: ; 0x020FEC9C
	.incbin "incbin/arm9_rodata.bin", 0x1A05C, 0x1A06C - 0x1A05C

	.global Unk_020FECAC
Unk_020FECAC: ; 0x020FECAC
	.incbin "incbin/arm9_rodata.bin", 0x1A06C, 0x1A07C - 0x1A06C

	.global Unk_020FECBC
Unk_020FECBC: ; 0x020FECBC
	.incbin "incbin/arm9_rodata.bin", 0x1A07C, 0x10

