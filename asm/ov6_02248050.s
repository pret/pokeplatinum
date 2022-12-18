	.include "macros/function.inc"
	.include "include/ov6_02248050.inc"

	

	.text


	thumb_func_start ov6_02248050
ov6_02248050: ; 0x02248050
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	bl sub_0206251C
	add r6, r0, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r6, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0206298C
	cmp r0, #3
	bhi _022480A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248088: ; jump table
	.short _02248090 - _02248088 - 2 ; case 0
	.short _02248094 - _02248088 - 2 ; case 1
	.short _02248098 - _02248088 - 2 ; case 2
	.short _0224809C - _02248088 - 2 ; case 3
_02248090:
	sub r4, r4, #1
	b _022480A4
_02248094:
	add r4, r4, #1
	b _022480A4
_02248098:
	sub r5, r5, #1
	b _022480A4
_0224809C:
	add r5, r5, #1
	b _022480A4
_022480A0:
	bl sub_02022974
_022480A4:
	mov r3, #2
	lsl r1, r5, #0x10
	lsl r3, r3, #0xe
	ldr r2, [sp, #4]
	lsl r4, r4, #0x10
	add r1, r1, r3
	add r0, r7, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248050

	thumb_func_start ov6_022480BC
ov6_022480BC: ; 0x022480BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r6, r0, #0
	add r1, sp, #0
	bl sub_0205EAEC
	add r0, r6, #0
	bl sub_0205EABC
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205EAC8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205EA78
	cmp r0, #3
	bhi _02248108
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022480F0: ; jump table
	.short _022480F8 - _022480F0 - 2 ; case 0
	.short _022480FC - _022480F0 - 2 ; case 1
	.short _02248100 - _022480F0 - 2 ; case 2
	.short _02248104 - _022480F0 - 2 ; case 3
_022480F8:
	sub r4, r4, #1
	b _0224810C
_022480FC:
	add r4, r4, #1
	b _0224810C
_02248100:
	sub r5, r5, #1
	b _0224810C
_02248104:
	add r5, r5, #1
	b _0224810C
_02248108:
	bl sub_02022974
_0224810C:
	mov r3, #2
	lsl r1, r5, #0x10
	lsl r3, r3, #0xe
	ldr r2, [sp, #4]
	lsl r4, r4, #0x10
	add r1, r1, r3
	add r0, r7, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_022480BC

	thumb_func_start ov6_02248124
ov6_02248124: ; 0x02248124
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_0205EAEC
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov6_02248124

	thumb_func_start ov6_02248140
ov6_02248140: ; 0x02248140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #8]
	add r4, r2, #0
	add r6, r0, #0
	mov r1, #0
	mov r2, #0xdc
	str r3, [sp, #0xc]
	ldr r7, [sp, #0x2c]
	bl sub_020D5124
	add r0, r6, #0
	ldr r1, [sp, #8]
	add r0, #0x78
	add r2, r4, #0
	mov r3, #4
	bl sub_020170D8
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x78
	bl sub_02017258
	add r0, r6, #0
	ldr r1, [sp, #0x28]
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	bls _022481B8
	add r0, r6, #0
	add r5, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x78
	add r5, #0x88
	str r0, [sp, #0x10]
_0224818E:
	ldr r3, [sp, #0xc]
	mov r0, #4
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, r3, r4
	str r7, [sp, #4]
	bl sub_02017164
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201727C
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blo _0224818E
_022481B8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248140

	thumb_func_start ov6_022481BC
ov6_022481BC: ; 0x022481BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x78
	add r7, r1, #0
	bl sub_02017110
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	bls _022481EE
	add r5, r6, #0
	add r5, #0x88
_022481D8:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020171A0
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blo _022481D8
_022481EE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022481BC

	thumb_func_start ov6_022481F0
ov6_022481F0: ; 0x022481F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	bls _0224821E
	add r5, r7, #0
	add r5, #0x88
_02248204:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02017204
	and r6, r0
	add r0, r7, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blo _02248204
_0224821E:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022481F0

	thumb_func_start ov6_02248224
ov6_02248224: ; 0x02248224
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	bls _02248250
	add r5, r6, #0
	mov r7, #1
	add r5, #0x88
	lsl r7, r7, #0xc
_0224823A:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020171CC
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blo _0224823A
_02248250:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02248224

	thumb_func_start ov6_02248254
ov6_02248254: ; 0x02248254
	ldr r3, _02248258 ; =sub_02017294
	bx r3
	; .align 2, 0
_02248258: .word sub_02017294
	thumb_func_end ov6_02248254

	thumb_func_start ov6_0224825C
ov6_0224825C: ; 0x0224825C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf0
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r2, #3
	add r0, r4, #0
	str r2, [sp]
	add r0, #0xdc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl ov6_02248140
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_022480BC
	ldr r0, _022482B8 ; =0x0000064B
	bl sub_02005748
	mov r0, #0
	add r4, #0xec
	str r0, [r4, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022482B8: .word 0x0000064B
	thumb_func_end ov6_0224825C

	thumb_func_start ov6_022482BC
ov6_022482BC: ; 0x022482BC
	ldr r3, _022482C8 ; =ov6_022481BC
	add r0, r2, #0
	add r2, #0xdc
	add r1, r2, #0
	bx r3
	nop
_022482C8: .word ov6_022481BC
	thumb_func_end ov6_022482BC

	thumb_func_start ov6_022482CC
ov6_022482CC: ; 0x022482CC
	push {r4, lr}
	add r4, r2, #0
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022482DE
	cmp r0, #1
	pop {r4, pc}
_022482DE:
	add r0, r4, #0
	bl ov6_022481F0
	cmp r0, #1
	bne _022482FC
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r4, #0xec
	add r0, r0, #1
	str r0, [r4, #0]
_022482FC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022482CC

	thumb_func_start ov6_02248300
ov6_02248300: ; 0x02248300
	ldr r3, _02248308 ; =ov6_02248254
	add r0, r2, #0
	bx r3
	nop
_02248308: .word ov6_02248254
	thumb_func_end ov6_02248300

	thumb_func_start ov6_0224830C
ov6_0224830C: ; 0x0224830C
	ldr r0, [r0, #4]
	ldr r3, _02248318 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0224831C ; =0x02249804
	bx r3
	nop
_02248318: .word ov5_021D1B6C
_0224831C: .word 0x02249804
	thumb_func_end ov6_0224830C

	thumb_func_start ov6_02248320
ov6_02248320: ; 0x02248320
	ldr r3, _02248324 ; =ov5_021D1BEC
	bx r3
	; .align 2, 0
_02248324: .word ov5_021D1BEC
	thumb_func_end ov6_02248320

	thumb_func_start ov6_02248328
ov6_02248328: ; 0x02248328
	push {r3, lr}
	bl ov5_021D1C2C
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0224833A
	mov r0, #1
	pop {r3, pc}
_0224833A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02248328

	thumb_func_start ov6_02248340
ov6_02248340: ; 0x02248340
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf0
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r3, #4
	add r0, r4, #0
	str r3, [sp]
	add r0, #0xdc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #8
	bl ov6_02248140
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_022480BC
	ldr r0, _0224839C ; =0x0000064A
	bl sub_02005748
	mov r0, #0
	add r4, #0xec
	str r0, [r4, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0224839C: .word 0x0000064A
	thumb_func_end ov6_02248340

	thumb_func_start ov6_022483A0
ov6_022483A0: ; 0x022483A0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf0
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r3, #4
	add r0, r4, #0
	str r3, [sp]
	add r0, #0xdc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #8
	bl ov6_02248140
	ldr r0, [r5, #0x38]
	mov r1, #0
	add r2, r4, #0
	bl ov6_02248050
	ldr r0, _022483FC ; =0x0000064A
	bl sub_02005748
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #0
	add r4, #0xec
	str r0, [r4, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022483FC: .word 0x0000064A
	thumb_func_end ov6_022483A0

	thumb_func_start ov6_02248400
ov6_02248400: ; 0x02248400
	ldr r3, _0224840C ; =ov6_022481BC
	add r0, r2, #0
	add r2, #0xdc
	add r1, r2, #0
	bx r3
	nop
_0224840C: .word ov6_022481BC
	thumb_func_end ov6_02248400

	thumb_func_start ov6_02248410
ov6_02248410: ; 0x02248410
	push {r4, lr}
	add r4, r2, #0
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02248422
	cmp r0, #1
	pop {r4, pc}
_02248422:
	add r0, r4, #0
	bl ov6_022481F0
	cmp r0, #1
	bne _02248440
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r4, #0xec
	add r0, r0, #1
	str r0, [r4, #0]
_02248440:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02248410

	thumb_func_start ov6_02248444
ov6_02248444: ; 0x02248444
	ldr r3, _0224844C ; =ov6_02248254
	add r0, r2, #0
	bx r3
	nop
_0224844C: .word ov6_02248254
	thumb_func_end ov6_02248444

	thumb_func_start ov6_02248450
ov6_02248450: ; 0x02248450
	ldr r0, [r0, #4]
	ldr r3, _0224845C ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _02248460 ; =0x022497EC
	bx r3
	nop
_0224845C: .word ov5_021D1B6C
_02248460: .word 0x022497EC
	thumb_func_end ov6_02248450

	thumb_func_start ov6_02248464
ov6_02248464: ; 0x02248464
	ldr r0, [r0, #4]
	ldr r3, _02248470 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _02248474 ; =0x022497D4
	bx r3
	nop
_02248470: .word ov5_021D1B6C
_02248474: .word 0x022497D4
	thumb_func_end ov6_02248464

	thumb_func_start ov6_02248478
ov6_02248478: ; 0x02248478
	ldr r3, _0224847C ; =ov5_021D1BEC
	bx r3
	; .align 2, 0
_0224847C: .word ov5_021D1BEC
	thumb_func_end ov6_02248478

	thumb_func_start ov6_02248480
ov6_02248480: ; 0x02248480
	push {r3, lr}
	bl ov5_021D1C2C
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02248492
	mov r0, #1
	pop {r3, pc}
_02248492:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02248480

	thumb_func_start ov6_02248498
ov6_02248498: ; 0x02248498
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	mov r2, #0x73
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xe
	mov r3, #0xc
	bl ov6_02248140
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_02248124
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, _022484FC ; =0x0000064D
	bl sub_02005748
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022484FC: .word 0x0000064D
	thumb_func_end ov6_02248498

	thumb_func_start ov6_02248500
ov6_02248500: ; 0x02248500
	push {r4, r5, r6, lr}
	mov r0, #0x6e
	add r5, r2, #0
	lsl r0, r0, #2
	mov r4, #0
	add r6, r5, r0
_0224850C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_022481BC
	add r4, r4, #1
	add r5, #0xdc
	cmp r4, #2
	blt _0224850C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02248500

	thumb_func_start ov6_02248520
ov6_02248520: ; 0x02248520
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r0, #0x72
	add r4, r2, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r5, r1, #0
	cmp r0, #0
	beq _0224853E
	cmp r0, #1
	beq _02248586
	cmp r0, #2
	beq _022485C4
	add sp, #8
	pop {r4, r5, r6, pc}
_0224853E:
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xdc
	add r1, r6, #0
	mov r2, #0xb
	mov r3, #9
	bl ov6_02248140
	add r0, r6, #0
	bl sub_02006CA8
	add r1, r4, #0
	ldr r0, [r5, #0x3c]
	add r1, #0xdc
	bl ov6_02248124
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #0
	bl sub_02017348
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02248586:
	add r0, r4, #0
	bl ov6_022481F0
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_02248124
	cmp r6, #1
	bne _022485D6
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #1
	bl sub_02017348
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	add r1, r4, #0
	ldr r0, [r5, #0x3c]
	add r1, #0xdc
	bl ov6_02248124
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022485C4:
	add r0, r4, #0
	add r0, #0xdc
	bl ov6_02248224
	add r4, #0xdc
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_02248124
_022485D6:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02248520

	thumb_func_start ov6_022485DC
ov6_022485DC: ; 0x022485DC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r4, #0
_022485E2:
	add r0, r5, #0
	bl ov6_02248254
	add r4, r4, #1
	add r5, #0xdc
	cmp r4, #2
	blt _022485E2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_022485DC

	thumb_func_start ov6_022485F4
ov6_022485F4: ; 0x022485F4
	ldr r0, [r0, #4]
	ldr r3, _02248600 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _02248604 ; =0x022497BC
	bx r3
	nop
_02248600: .word ov5_021D1B6C
_02248604: .word 0x022497BC
	thumb_func_end ov6_022485F4

	thumb_func_start ov6_02248608
ov6_02248608: ; 0x02248608
	ldr r3, _0224860C ; =ov5_021D1BEC
	bx r3
	; .align 2, 0
_0224860C: .word ov5_021D1BEC
	thumb_func_end ov6_02248608

	thumb_func_start ov6_02248610
ov6_02248610: ; 0x02248610
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	add r6, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	cmp r0, #0
	beq _02248628
	bl sub_02022974
_02248628:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0205EAEC
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r2, r4
	add r3, r3, r5
	bl sub_02017350
	add r0, r7, #0
	mov r4, #0
	add r5, r7, #0
	mov r1, #1
	add r0, #0xc8
	str r1, [r0, #0]
	add r5, #0x78
	add r6, r4, #0
_02248650:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02017240
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _02248650
	add r0, r7, #0
	mov r1, #1
	bl sub_02017348
	ldr r0, _02248674 ; =0x00000627
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02248674: .word 0x00000627
	thumb_func_end ov6_02248610

	thumb_func_start ov6_02248678
ov6_02248678: ; 0x02248678
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022486B2
	ldr r5, [sp]
	mov r4, #1
	mov r6, #0
	add r5, #0x78
	lsl r7, r4, #0xc
_0224868E:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017204
	add r6, r6, #1
	and r4, r0
	add r5, #0x14
	cmp r6, #4
	blt _0224868E
	cmp r4, #1
	bne _022486B2
	ldr r0, [sp]
	mov r1, #0
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, [sp]
	bl sub_02017348
_022486B2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248678

	thumb_func_start ov6_022486B4
ov6_022486B4: ; 0x022486B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0
	mov r2, #0xcc
	add r7, r0, #0
	add r5, r3, #0
	bl sub_020D5124
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02017258
	add r4, r7, #0
	mov r6, #0
	add r4, #0x78
_022486D6:
	ldr r1, [sp]
	ldr r2, [r5, #0]
	ldr r3, [sp, #4]
	add r0, r4, #0
	bl sub_02017190
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0201727C
	add r6, r6, #1
	add r5, r5, #4
	add r4, #0x14
	cmp r6, #4
	blt _022486D6
	add r0, r7, #0
	mov r1, #0
	bl sub_02017348
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022486B4

	thumb_func_start ov6_02248700
ov6_02248700: ; 0x02248700
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	add r6, r1, #0
	mov r4, #0
	add r5, #0x78
_0224870C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020171A0
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _0224870C
	add r0, r7, #0
	mov r1, #0
	mov r2, #0xcc
	bl sub_020D5124
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248700

	thumb_func_start ov6_02248728
ov6_02248728: ; 0x02248728
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xce
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EAEC
	mov r1, #0xcf
	lsl r1, r1, #4
	ldr r2, [sp]
	ldr r0, [r4, r1]
	sub r0, r2, r0
	bne _02248770
	add r0, r1, #4
	ldr r2, [sp, #4]
	ldr r0, [r4, r0]
	cmp r2, r0
	bge _02248770
	add r0, r1, #0
	add r0, #8
	ldr r2, [sp, #8]
	ldr r0, [r4, r0]
	cmp r2, r0
	ble _02248770
	add r0, r1, #0
	mov r2, #0
	sub r0, #8
	str r2, [r4, r0]
	mov r2, #2
	lsl r2, r2, #0x10
	sub r0, r1, #4
	str r2, [r4, r0]
	b _0224877E
_02248770:
	mov r1, #2
	ldr r0, _02248794 ; =0x00000CE8
	lsl r1, r1, #0x10
	str r1, [r4, r0]
	lsr r1, r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
_0224877E:
	mov r0, #0xcf
	lsl r0, r0, #4
	add r3, sp, #0
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02248794: .word 0x00000CE8
	thumb_func_end ov6_02248728

	thumb_func_start ov6_02248798
ov6_02248798: ; 0x02248798
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02248728
	mov r2, #0
	add r1, r4, #0
_022487A4:
	add r0, r1, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022487D0
	add r1, r4, #0
	mov r0, #0xcc
	mov r3, #0xce
	add r1, #0x10
	mul r0, r2
	lsl r3, r3, #4
	add r0, r1, r0
	ldr r1, [r4, r3]
	add r2, r3, #0
	add r2, #8
	add r3, #0xc
	ldr r1, [r1, #0x3c]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov6_02248610
	pop {r4, pc}
_022487D0:
	add r2, r2, #1
	add r1, #0xcc
	cmp r2, #0x10
	blt _022487A4
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02248798

	thumb_func_start ov6_022487E0
ov6_022487E0: ; 0x022487E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x10
_022487E8:
	add r0, r5, #0
	bl ov6_02248678
	add r4, r4, #1
	add r5, #0xcc
	cmp r4, #0x10
	blt _022487E8
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022487E0

	thumb_func_start ov6_022487F8
ov6_022487F8: ; 0x022487F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	mov r2, #0xd1
	str r1, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	ldr r0, _02248894 ; =0x00000CFC
	mov r1, #4
	add r0, r5, r0
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #8
	mov r3, #4
	bl sub_020170D8
	mov r4, #0
	add r6, r5, #0
_02248832:
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #4
	bl sub_0200723C
	mov r1, #0xcd
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _02248832
	add r4, r5, #0
	mov r6, #0
	add r4, #0x10
_02248856:
	ldr r2, _02248894 ; =0x00000CFC
	mov r3, #0xcd
	lsl r3, r3, #4
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, r2
	add r3, r5, r3
	bl ov6_022486B4
	add r6, r6, #1
	add r4, #0xcc
	cmp r6, #0x10
	blt _02248856
	mov r1, #0xce
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	add r1, #0x10
	ldr r0, [r0, #0x3c]
	add r1, r5, r1
	bl sub_0205EAEC
	ldr r0, _02248898 ; =0x00000D0C
	mov r1, #0
	str r1, [r5, r0]
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248894: .word 0x00000CFC
_02248898: .word 0x00000D0C
	thumb_func_end ov6_022487F8

	thumb_func_start ov6_0224889C
ov6_0224889C: ; 0x0224889C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r4, r5, #0
	ldr r7, _022488D4 ; =0x00000CFC
	mov r6, #0
	add r4, #0x10
_022488A8:
	add r0, r4, #0
	add r1, r5, r7
	bl ov6_02248700
	add r6, r6, #1
	add r4, #0xcc
	cmp r6, #0x10
	blt _022488A8
	add r0, r5, #0
	bl sub_02017110
	mov r6, #0xcd
	mov r4, #0
	lsl r6, r6, #4
_022488C4:
	ldr r0, [r5, r6]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022488C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022488D4: .word 0x00000CFC
	thumb_func_end ov6_0224889C

	thumb_func_start ov6_022488D8
ov6_022488D8: ; 0x022488D8
	push {r4, lr}
	ldr r1, _02248910 ; =0x00000D0C
	add r4, r2, #0
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0224890E
	add r0, r1, #0
	sub r0, #0x28
	ldr r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #0
	sub r0, #0x28
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #0
	bge _02248908
	mov r0, #4
	sub r1, #0x28
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov6_02248798
_02248908:
	add r0, r4, #0
	bl ov6_022487E0
_0224890E:
	pop {r4, pc}
	; .align 2, 0
_02248910: .word 0x00000D0C
	thumb_func_end ov6_022488D8

	thumb_func_start ov6_02248914
ov6_02248914: ; 0x02248914
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r4, #0
	add r5, #0x10
_0224891C:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0xcc
	cmp r4, #0x10
	blt _0224891C
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02248914

	thumb_func_start ov6_0224892C
ov6_0224892C: ; 0x0224892C
	ldr r0, [r0, #4]
	ldr r3, _02248938 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0224893C ; =0x0224981C
	bx r3
	nop
_02248938: .word ov5_021D1B6C
_0224893C: .word 0x0224981C
	thumb_func_end ov6_0224892C

	thumb_func_start ov6_02248940
ov6_02248940: ; 0x02248940
	ldr r3, _02248944 ; =ov5_021D1BEC
	bx r3
	; .align 2, 0
_02248944: .word ov5_021D1BEC
	thumb_func_end ov6_02248940

	.rodata


	.global Unk_ov6_022497BC
Unk_ov6_022497BC: ; 0x022497BC
	.incbin "incbin/overlay6_rodata.bin", 0x9A8, 0x9C0 - 0x9A8

	.global Unk_ov6_022497D4
Unk_ov6_022497D4: ; 0x022497D4
	.incbin "incbin/overlay6_rodata.bin", 0x9C0, 0x9D8 - 0x9C0

	.global Unk_ov6_022497EC
Unk_ov6_022497EC: ; 0x022497EC
	.incbin "incbin/overlay6_rodata.bin", 0x9D8, 0x9F0 - 0x9D8

	.global Unk_ov6_02249804
Unk_ov6_02249804: ; 0x02249804
	.incbin "incbin/overlay6_rodata.bin", 0x9F0, 0xA08 - 0x9F0

	.global Unk_ov6_0224981C
Unk_ov6_0224981C: ; 0x0224981C
	.incbin "incbin/overlay6_rodata.bin", 0xA08, 0x18

