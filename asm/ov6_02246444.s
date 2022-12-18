	.include "macros/function.inc"
	.include "include/ov6_02246444.inc"

	

	.text


	thumb_func_start ov6_02246444
ov6_02246444: ; 0x02246444
	ldr r3, _0224644C ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x18
	bx r3
	; .align 2, 0
_0224644C: .word sub_020C4CF4
	thumb_func_end ov6_02246444

	thumb_func_start ov6_02246450
ov6_02246450: ; 0x02246450
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov6_02246450

	thumb_func_start ov6_02246454
ov6_02246454: ; 0x02246454
	strb r1, [r0, #2]
	bx lr
	thumb_func_end ov6_02246454

	thumb_func_start ov6_02246458
ov6_02246458: ; 0x02246458
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov6_02246458

	thumb_func_start ov6_0224645C
ov6_0224645C: ; 0x0224645C
	ldr r3, _02246464 ; =sub_020021D0
	add r0, r0, #4
	mov r2, #8
	bx r3
	; .align 2, 0
_02246464: .word sub_020021D0
	thumb_func_end ov6_0224645C

	thumb_func_start ov6_02246468
ov6_02246468: ; 0x02246468
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202E55C
	strb r0, [r5]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02246468

	thumb_func_start ov6_0224647C
ov6_0224647C: ; 0x0224647C
	push {r3, lr}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _02246488
	bl sub_0202E560
_02246488:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_0224647C

	thumb_func_start ov6_0224648C
ov6_0224648C: ; 0x0224648C
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov6_0224648C

	thumb_func_start ov6_02246490
ov6_02246490: ; 0x02246490
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov6_02246490

	thumb_func_start ov6_02246494
ov6_02246494: ; 0x02246494
	add r0, r0, #4
	bx lr
	thumb_func_end ov6_02246494

	thumb_func_start ov6_02246498
ov6_02246498: ; 0x02246498
	ldr r3, _022464A0 ; =sub_0202E574
	ldr r0, [r0, #0x14]
	bx r3
	nop
_022464A0: .word sub_0202E574
	thumb_func_end ov6_02246498

	thumb_func_start ov6_022464A4
ov6_022464A4: ; 0x022464A4
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov6_022464A4

	thumb_func_start ov6_022464A8
ov6_022464A8: ; 0x022464A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bl ov6_02246444
	add r0, r5, #0
	bl sub_0202E4C8
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_0224645C
	add r0, r5, #0
	bl sub_0202E4CC
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246454
	add r0, r5, #0
	bl sub_0202E4D0
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246458
	add r0, r5, #0
	bl sub_0202E4D4
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246468
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_022464A8

	thumb_func_start ov6_022464F8
ov6_022464F8: ; 0x022464F8
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r6, r1, #0
	bl sub_02025E38
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bl ov6_02246444
	add r0, r5, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_0224645C
	add r0, r5, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246450
	add r0, r4, #0
	mov r1, #2
	bl ov6_02246454
	add r0, r4, #0
	mov r1, #0xc
	bl ov6_02246458
	add r0, r6, #0
	bl sub_0202E4D8
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246468
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_022464F8

	thumb_func_start ov6_02246550
ov6_02246550: ; 0x02246550
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02025E38
	add r6, r0, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bl ov6_02246444
	add r0, r6, #0
	strb r5, [r4]
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_0224645C
	add r0, r6, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246450
	add r0, r4, #0
	mov r1, #2
	bl ov6_02246454
	add r0, r4, #0
	mov r1, #0xc
	bl ov6_02246458
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02246550

	thumb_func_start ov6_022465A0
ov6_022465A0: ; 0x022465A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0202440C
	add r7, r0, #0
	sub r0, r4, #4
	cmp r0, #1
	bhi _022465C0
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_02246550
	pop {r3, r4, r5, r6, r7, pc}
_022465C0:
	add r0, r6, #0
	bl sub_0202E7C0
	cmp r0, #0
	bne _022465DE
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202E794
	add r1, r0, #0
	add r0, r5, #0
	bl ov6_022464A8
	pop {r3, r4, r5, r6, r7, pc}
_022465DE:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202E768
	add r1, r0, #0
	add r0, r5, #0
	bl ov6_022464F8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022465A0

	thumb_func_start ov6_022465F4
ov6_022465F4: ; 0x022465F4
	ldr r3, _022465F8 ; =sub_020181C4
	bx r3
	; .align 2, 0
_022465F8: .word sub_020181C4
	thumb_func_end ov6_022465F4