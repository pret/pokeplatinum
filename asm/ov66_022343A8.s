	.include "macros/function.inc"
	.include "include/ov66_022343A8.inc"

	

	.text


	thumb_func_start ov66_022343A8
ov66_022343A8: ; 0x022343A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r7, #0
	mov r1, #0x30
	str r3, [sp, #0xc]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020D5124
	ldr r2, [sp, #4]
	mov r1, #0x90
	add r0, r7, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #0x10]
	ldr r0, [sp, #4]
	mov r6, #0
	str r0, [r4, #0x14]
	cmp r0, #0
	bls _022343F2
	add r5, r6, #0
_022343E0:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	bl ov66_022349C8
	ldr r0, [r4, #0x14]
	add r6, r6, #1
	add r5, #0x90
	cmp r6, r0
	blo _022343E0
_022343F2:
	mov r0, #1
	add r1, r7, #0
	bl sub_0202298C
	str r0, [r4, #0]
	mov r0, #2
	add r1, r7, #0
	bl sub_0202298C
	str r0, [r4, #4]
	mov r0, #0x14
	add r1, r7, #0
	bl sub_02022BD8
	str r0, [r4, #8]
	mov r0, #1
	add r1, r7, #0
	bl sub_02020B90
	ldr r0, [sp, #4]
	str r7, [sp, #0x24]
	str r0, [sp, #0x20]
	add r0, sp, #0x20
	bl sub_02020C44
	str r0, [r4, #0xc]
	mov r0, #0x51
	add r1, r7, #0
	bl sub_02006C24
	str r0, [sp, #0x18]
	mov r0, #0xba
	add r1, r7, #0
	bl sub_02006C24
	mov r2, #0
	ldr r3, [sp, #0xc]
	str r2, [sp]
	mov r1, #0x7f
	str r0, [sp, #0x14]
	bl sub_0200723C
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r2, #0x7f
	bl sub_02022A1C
	add r0, r5, #0
	bl ov66_02231668
	add r0, r5, #0
	bl sub_020B3C0C
	cmp r0, #0
	beq _02234482
	add r2, r0, #0
	add r2, #8
	beq _02234476
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02234476
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02234478
_02234476:
	mov r1, #0
_02234478:
	cmp r1, #0
	beq _02234482
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02234484
_02234482:
	mov r0, #0
_02234484:
	mov r1, #0
	bl sub_020B34F8
	mov r6, #0
	ldr r5, _02234540 ; =0x02258B28
	str r0, [r4, #0x2c]
	add r7, r6, #0
_02234492:
	str r7, [sp]
	ldrh r1, [r5]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0xc]
	add r2, r7, #0
	bl sub_0200723C
	add r1, r0, #0
	ldrh r2, [r5]
	ldr r0, [r4, #4]
	bl sub_02022A1C
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #2
	blt _02234492
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _022344BE
	mov r0, #1
	str r0, [sp, #0x10]
	b _022344C2
_022344BE:
	mov r0, #0
	str r0, [sp, #0x10]
_022344C2:
	ldr r5, _02234544 ; =0x02258B38
	mov r7, #0
_022344C6:
	ldr r0, [sp, #0x10]
	cmp r0, r7
	beq _02234518
	ldrh r0, [r5, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _022344D8
	mov r6, #1
	b _022344DA
_022344D8:
	mov r6, #0
_022344DA:
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5, #2]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0xc]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	mov r2, #0
	bl sub_0200723C
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r3, r6, #0
	str r0, [sp]
	ldrh r2, [r5, #2]
	ldr r0, [r4, #8]
	lsl r2, r2, #0x11
	lsr r2, r2, #0x11
	bl sub_02022C58
	str r0, [sp, #0x1c]
	cmp r6, #1
	bne _02234518
	bl sub_02022EBC
	ldr r0, [sp, #0x1c]
	bl sub_02022E08
	ldr r0, [sp, #0x1c]
	bl sub_02022E54
_02234518:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #0x14
	blt _022344C6
	add r0, r4, #0
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0xc]
	add r0, #0x18
	mov r2, #0x80
	bl ov66_022348FC
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	ldr r0, [sp, #0x14]
	bl sub_02006CA8
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234540: .word 0x02258B28
_02234544: .word 0x02258B38
	thumb_func_end ov66_022343A8

	thumb_func_start ov66_02234548
ov66_02234548: ; 0x02234548
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x18
	bl ov66_02234958
	ldr r0, [r4, #8]
	bl sub_02022D58
	ldr r0, [r4, #0]
	bl sub_02022AE4
	ldr r0, [r4, #4]
	bl sub_02022AE4
	ldr r0, [r4, #0xc]
	bl sub_02020CCC
	bl sub_02020BD0
	ldr r0, [r4, #8]
	bl sub_02022C1C
	ldr r0, [r4, #0]
	bl sub_020229D8
	ldr r0, [r4, #4]
	bl sub_020229D8
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234548

	thumb_func_start ov66_02234590
ov66_02234590: ; 0x02234590
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	bls _022345C0
	add r4, r6, #0
_0223459E:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_022349E0
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_02234BC4
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_02234D08
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x90
	cmp r6, r0
	blo _0223459E
_022345C0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02234590

	thumb_func_start ov66_022345C4
ov66_022345C4: ; 0x022345C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02020C08
	add r0, r5, #0
	add r0, #0x18
	bl ov66_0223496C
	cmp r0, #0
	beq _02234600
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	bls _02234600
	add r4, r6, #0
_022345E2:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_022349B8
	cmp r0, #1
	bne _022345F6
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_022349D4
_022345F6:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x90
	cmp r6, r0
	blo _022345E2
_02234600:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_022345C4

	thumb_func_start ov66_02234604
ov66_02234604: ; 0x02234604
	ldr r3, _0223460C ; =sub_02020D68
	ldr r0, [r0, #0xc]
	bx r3
	nop
_0223460C: .word sub_02020D68
	thumb_func_end ov66_02234604

	thumb_func_start ov66_02234610
ov66_02234610: ; 0x02234610
	ldr r3, _02234618 ; =ov66_02234960
	add r0, #0x18
	bx r3
	nop
_02234618: .word ov66_02234960
	thumb_func_end ov66_02234610

	thumb_func_start ov66_0223461C
ov66_0223461C: ; 0x0223461C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	add r5, r0, #0
	add r7, r1, #0
	bl ov66_02234980
	add r4, r0, #0
	str r7, [r4, #4]
	add r1, sp, #0x34
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _02234784 ; =0x02258B2C
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x28
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #7
	str r0, [r2, #0]
	add r0, r7, #0
	bl ov63_0222BF90
	bl ov66_022348B0
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x7f
	bl sub_02022B20
	bl sub_02022B54
	ldrh r1, [r6, #2]
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	bl sub_02022D98
	str r0, [sp, #0x18]
	bl sub_02022DF4
	str r0, [sp, #0x10]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02234680
	ldr r1, _02234788 ; =0x000001BE
	b _02234682
_02234680:
	ldr r1, _0223478C ; =0x000001BD
_02234682:
	ldr r0, [r5, #4]
	bl sub_02022B20
	bl sub_02022B54
	add r1, sp, #0x40
	bl sub_02024184
	ldrh r0, [r6, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022346AE
	add r0, sp, #0x40
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, _02234790 ; =0x02258B88
	add r0, sp, #0x70
	bl sub_02021284
	b _022346DC
_022346AE:
	ldr r0, [sp, #0x18]
	bl sub_02022EF4
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_02022F04
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	bl sub_02022F14
	add r1, sp, #0x40
	str r1, [sp]
	ldr r1, [sp, #0x1c]
	str r6, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, _02234790 ; =0x02258B88
	add r0, sp, #0x70
	bl sub_0202125C
_022346DC:
	add r0, r7, #0
	bl ov63_0222C0E4
	add r1, sp, #0x20
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, sp, #0x24
	strh r2, [r1, #4]
	ldrh r2, [r1, #2]
	strh r2, [r1, #6]
	add r1, sp, #0x34
	bl ov70_0225C700
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x3c]
	ldr r0, [r5, #0xc]
	add r3, sp, #0x34
	str r0, [sp, #0x50]
	add r0, sp, #0x70
	str r0, [sp, #0x54]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x58
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, sp, #0x28
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x64
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0x50
	bl sub_0202119C
	ldr r1, _02234794 ; =ov66_02234D78
	add r2, r4, #0
	str r0, [r4, #8]
	bl sub_02021444
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x18
	add r1, #0xc
	bl ov66_02234970
	mov r2, #2
	lsl r2, r2, #0xc
	add r0, r4, #0
	ldr r6, [sp, #0x3c]
	lsl r3, r2, #2
	ldr r1, [sp, #0x34]
	add r0, #0xc
	sub r3, r6, r3
	bl sub_02017350
	ldrb r1, [r4]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0xc0
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0x30
	bic r1, r0
	strb r1, [r4]
	add r0, r4, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r4, #0
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234784: .word 0x02258B2C
_02234788: .word 0x000001BE
_0223478C: .word 0x000001BD
_02234790: .word 0x02258B88
_02234794: .word ov66_02234D78
	thumb_func_end ov66_0223461C

	thumb_func_start ov66_02234798
ov66_02234798: ; 0x02234798
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020211FC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x90
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234798

	thumb_func_start ov66_022347B0
ov66_022347B0: ; 0x022347B0
	ldrb r3, [r0]
	mov r2, #0xf
	lsl r1, r1, #0x18
	bic r3, r2
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end ov66_022347B0

	thumb_func_start ov66_022347C4
ov66_022347C4: ; 0x022347C4
	add r0, #0x8c
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022347C4

	thumb_func_start ov66_022347CC
ov66_022347CC: ; 0x022347CC
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end ov66_022347CC

	thumb_func_start ov66_022347D4
ov66_022347D4: ; 0x022347D4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl ov70_0225C700
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl ov66_022347F8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov66_022347D4

	thumb_func_start ov66_022347F8
ov66_022347F8: ; 0x022347F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	bl sub_020212A8
	mov r2, #2
	ldr r1, [r4, #0]
	lsl r2, r2, #0xc
	add r5, #0xc
	ldr r4, [r4, #8]
	lsl r3, r2, #2
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_02017350
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_022347F8

	thumb_func_start ov66_0223481C
ov66_0223481C: ; 0x0223481C
	push {r4, lr}
	ldr r0, [r0, #8]
	add r4, r1, #0
	bl sub_020212C0
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0223481C

	thumb_func_start ov66_02234834
ov66_02234834: ; 0x02234834
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020213A4
	pop {r4, pc}
	thumb_func_end ov66_02234834

	thumb_func_start ov66_02234850
ov66_02234850: ; 0x02234850
	push {r3, r4}
	ldrb r3, [r0, #1]
	mov r2, #1
	lsl r1, r1, #0x18
	bic r3, r2
	add r2, r3, #0
	mov r4, #1
	orr r2, r4
	strb r2, [r0, #1]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x19
	ldrb r2, [r0, #1]
	mov r3, #0xfe
	lsr r1, r1, #0x18
	bic r2, r3
	orr r1, r2
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0, #2]
	strb r4, [r0, #3]
	pop {r3, r4}
	bx lr
	thumb_func_end ov66_02234850

	thumb_func_start ov66_0223487C
ov66_0223487C: ; 0x0223487C
	ldrb r2, [r0, #1]
	mov r1, #1
	bic r2, r1
	strb r2, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0223487C

	thumb_func_start ov66_02234888
ov66_02234888: ; 0x02234888
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov66_02234888

	thumb_func_start ov66_0223488C
ov66_0223488C: ; 0x0223488C
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	ldrb r2, [r0]
	mov r3, #0xc0
	lsr r1, r1, #0x18
	bic r2, r3
	orr r1, r2
	ldr r3, _022348A4 ; =ov66_02234D3C
	strb r1, [r0]
	bx r3
	nop
_022348A4: .word ov66_02234D3C
	thumb_func_end ov66_0223488C

	thumb_func_start ov66_022348A8
ov66_022348A8: ; 0x022348A8
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end ov66_022348A8

	thumb_func_start ov66_022348B0
ov66_022348B0: ; 0x022348B0
	push {r3, lr}
	ldr r3, _022348D4 ; =0x02258B38
	mov r2, #0
_022348B6:
	ldrh r1, [r3]
	cmp r0, r1
	bne _022348C4
	ldr r1, _022348D4 ; =0x02258B38
	lsl r0, r2, #2
	add r0, r1, r0
	pop {r3, pc}
_022348C4:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x14
	blt _022348B6
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022348D4: .word 0x02258B38
	thumb_func_end ov66_022348B0

	thumb_func_start ov66_022348D8
ov66_022348D8: ; 0x022348D8
	cmp r0, #0
	bne _022348DE
	add r1, r1, #4
_022348DE:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022348D8

	thumb_func_start ov66_022348E4
ov66_022348E4: ; 0x022348E4
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	mul r0, r2
	add r1, r3, #0
	bl sub_020E2178
	lsl r0, r0, #0xc
	pop {r3, pc}
	thumb_func_end ov66_022348E4

	thumb_func_start ov66_022348FC
ov66_022348FC: ; 0x022348FC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, sp, #0
	bl ov70_0225C730
	ldr r0, [sp]
	str r0, [r4, #0]
	bl sub_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _02234936
	add r2, r0, #0
	add r2, #8
	beq _0223492A
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0223492A
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0223492C
_0223492A:
	mov r1, #0
_0223492C:
	cmp r1, #0
	beq _02234936
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02234938
_02234936:
	mov r0, #0
_02234938:
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl sub_020B3C1C
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	bl sub_0201CBB0
	ldr r0, [r4, #8]
	mov r1, #0x14
	bl sub_020B3724
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022348FC

	thumb_func_start ov66_02234958
ov66_02234958: ; 0x02234958
	ldr r3, _0223495C ; =sub_02017110
	bx r3
	; .align 2, 0
_0223495C: .word sub_02017110
	thumb_func_end ov66_02234958

	thumb_func_start ov66_02234960
ov66_02234960: ; 0x02234960
	ldr r3, _02234968 ; =sub_020B3764
	str r1, [r0, #0x10]
	ldr r0, [r0, #8]
	bx r3
	; .align 2, 0
_02234968: .word sub_020B3764
	thumb_func_end ov66_02234960

	thumb_func_start ov66_0223496C
ov66_0223496C: ; 0x0223496C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov66_0223496C

	thumb_func_start ov66_02234970
ov66_02234970: ; 0x02234970
	ldr r3, _0223497C ; =sub_02017258
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_0223497C: .word sub_02017258
	thumb_func_end ov66_02234970

	thumb_func_start ov66_02234980
ov66_02234980: ; 0x02234980
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	bls _022349AE
	add r4, r6, #0
_0223498E:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_022349B8
	cmp r0, #0
	bne _022349A4
	mov r0, #0x90
	ldr r1, [r5, #0x10]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_022349A4:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x90
	cmp r6, r0
	blo _0223498E
_022349AE:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02234980

	thumb_func_start ov66_022349B8
ov66_022349B8: ; 0x022349B8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022349C2
	mov r0, #1
	bx lr
_022349C2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022349B8

	thumb_func_start ov66_022349C8
ov66_022349C8: ; 0x022349C8
	ldr r3, _022349D0 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x90
	bx r3
	; .align 2, 0
_022349D0: .word sub_020D5124
	thumb_func_end ov66_022349C8

	thumb_func_start ov66_022349D4
ov66_022349D4: ; 0x022349D4
	ldr r3, _022349DC ; =sub_02017294
	add r0, #0xc
	bx r3
	nop
_022349DC: .word sub_02017294
	thumb_func_end ov66_022349D4

	thumb_func_start ov66_022349E0
ov66_022349E0: ; 0x022349E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _02234A70
	ldr r0, [r5, #4]
	mov r1, #5
	bl ov63_0222BF90
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #8
	bl ov63_0222BF90
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r0, r6
	bhi _02234A16
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, r4
	beq _02234A42
_02234A16:
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	bl ov66_02234CD8
	cmp r0, #1
	bne _02234A3C
	ldr r0, [r5, #8]
	bl sub_02021358
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
	ldr r0, [r5, #8]
	bl sub_020213D4
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1, #0]
_02234A3C:
	add r0, r5, #0
	add r0, #0x84
	strb r4, [r0]
_02234A42:
	ldr r1, _02234A74 ; =0x02258E28
	add r0, r5, #0
	lsl r2, r4, #2
	add r0, #0x86
	strh r6, [r0]
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #4]
	bl ov63_0222C0FC
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	add r1, sp, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	add r0, r5, #0
	bl ov66_022347D4
_02234A70:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02234A74: .word 0x02258E28
	thumb_func_end ov66_022349E0

	thumb_func_start ov66_02234A78
ov66_02234A78: ; 0x02234A78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020213A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234A78

	thumb_func_start ov66_02234AA0
ov66_02234AA0: ; 0x02234AA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #9
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	mov r1, #8
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r6, #0
	mov r2, #8
	bl ov66_022348E4
	add r6, r0, #0
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, r4
	ldr r0, [r5, #8]
	bne _02234B00
	mov r1, #0
	bl sub_020213A4
	ldr r0, [r5, #8]
	add r5, #0x88
	ldr r1, [r5, #0]
	add r1, r6, r1
	bl sub_02021368
	pop {r4, r5, r6, pc}
_02234B00:
	mov r1, #0
	bl sub_020213A4
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_02021368
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02234AA0

	thumb_func_start ov66_02234B10
ov66_02234B10: ; 0x02234B10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #8
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #4
	bhs _02234B30
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020213A4
	pop {r4, pc}
_02234B30:
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020213A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234B10

	thumb_func_start ov66_02234B54
ov66_02234B54: ; 0x02234B54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #0
	bl ov66_022348D8
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #9
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	mov r1, #8
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r6, #0
	mov r2, #4
	bl ov66_022348E4
	add r6, r0, #0
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, r4
	ldr r0, [r5, #8]
	bne _02234BB4
	mov r1, #0
	bl sub_020213A4
	ldr r0, [r5, #8]
	add r5, #0x88
	ldr r1, [r5, #0]
	add r1, r6, r1
	bl sub_02021368
	pop {r4, r5, r6, pc}
_02234BB4:
	mov r1, #0
	bl sub_020213A4
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_02021368
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02234B54

	thumb_func_start ov66_02234BC4
ov66_02234BC4: ; 0x02234BC4
	push {r3, lr}
	ldrb r1, [r0]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bne _02234BE4
	ldrb r1, [r0, #1]
	lsl r2, r1, #0x1f
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _02234BE4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	lsl r2, r1, #2
	ldr r1, _02234BE8 ; =0x02258E1C
	ldr r1, [r1, r2]
	blx r1
_02234BE4:
	pop {r3, pc}
	nop
_02234BE8: .word 0x02258E1C
	thumb_func_end ov66_02234BC4

	thumb_func_start ov66_02234BEC
ov66_02234BEC: ; 0x02234BEC
	push {r4, lr}
	add r4, r0, #0
	ldrb r3, [r4, #2]
	mov r0, #0x1e
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	bne _02234C1C
	ldr r1, _02234C30 ; =0x02258B24
	lsr r2, r3, #2
	ldrb r1, [r1, r2]
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020213A4
_02234C1C:
	ldrb r1, [r4, #3]
	ldrb r0, [r4, #2]
	add r0, r0, r1
	cmp r0, #0x10
	bge _02234C2A
	strb r0, [r4, #2]
	pop {r4, pc}
_02234C2A:
	mov r0, #0
	strb r0, [r4, #2]
	pop {r4, pc}
	; .align 2, 0
_02234C30: .word 0x02258B24
	thumb_func_end ov66_02234BEC

	thumb_func_start ov66_02234C34
ov66_02234C34: ; 0x02234C34
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02234C6E
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020213A4
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
_02234C6E:
	pop {r4, pc}
	thumb_func_end ov66_02234C34

	thumb_func_start ov66_02234C70
ov66_02234C70: ; 0x02234C70
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02234C9E
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020213A4
	b _02234CC4
_02234C9E:
	cmp r0, #4
	bne _02234CC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	mov r1, #3
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020213A4
_02234CC4:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end ov66_02234C70

	thumb_func_start ov66_02234CD8
ov66_02234CD8: ; 0x02234CD8
	cmp r0, #0xb
	bhi _02234D04
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234CE8: ; jump table
	.short _02234D04 - _02234CE8 - 2 ; case 0
	.short _02234D04 - _02234CE8 - 2 ; case 1
	.short _02234D00 - _02234CE8 - 2 ; case 2
	.short _02234D00 - _02234CE8 - 2 ; case 3
	.short _02234D04 - _02234CE8 - 2 ; case 4
	.short _02234D00 - _02234CE8 - 2 ; case 5
	.short _02234D00 - _02234CE8 - 2 ; case 6
	.short _02234D04 - _02234CE8 - 2 ; case 7
	.short _02234D04 - _02234CE8 - 2 ; case 8
	.short _02234D04 - _02234CE8 - 2 ; case 9
	.short _02234D00 - _02234CE8 - 2 ; case 10
	.short _02234D00 - _02234CE8 - 2 ; case 11
_02234D00:
	mov r0, #1
	bx lr
_02234D04:
	mov r0, #0
	bx lr
	thumb_func_end ov66_02234CD8

	thumb_func_start ov66_02234D08
ov66_02234D08: ; 0x02234D08
	push {r4, lr}
	add r4, r0, #0
	bl ov66_022349B8
	cmp r0, #0
	beq _02234D38
	ldr r0, [r4, #8]
	bl ov66_02234D8C
	cmp r0, #0
	ldrb r1, [r4]
	bne _02234D2C
	mov r0, #0x30
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4]
	b _02234D32
_02234D2C:
	mov r0, #0x30
	bic r1, r0
	strb r1, [r4]
_02234D32:
	add r0, r4, #0
	bl ov66_02234D3C
_02234D38:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234D08

	thumb_func_start ov66_02234D3C
ov66_02234D3C: ; 0x02234D3C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4]
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1e
	bne _02234D64
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _02234D64
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021320
	add r4, #0xc
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	pop {r4, pc}
_02234D64:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021320
	add r4, #0xc
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	pop {r4, pc}
	thumb_func_end ov66_02234D3C

	thumb_func_start ov66_02234D78
ov66_02234D78: ; 0x02234D78
	push {r4, lr}
	add r4, r1, #0
	bl sub_02021430
	add r4, #0x8c
	ldr r1, [r4, #0]
	bl sub_020B3664
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234D78

	thumb_func_start ov66_02234D8C
ov66_02234D8C: ; 0x02234D8C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r0, #0
	bl sub_020213F4
	cmp r0, #0
	beq _02234DA0
	add r4, r0, #0
	add r4, #0x14
	b _02234DA2
_02234DA0:
	mov r4, #0
_02234DA2:
	add r0, r5, #0
	bl sub_020212C0
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x38
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0
	str r0, [r2, #0]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	strh r0, [r1, #0x24]
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	strh r2, [r1, #0x26]
	ldrsh r0, [r4, r0]
	strh r0, [r1, #0x28]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x34]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x38]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x38]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x3c]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x3c]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x40]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x40]
	mov r0, #0x20
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	add r4, r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x40]
	orr r1, r0
	sub r0, r2, r1
	str r0, [sp, #0x40]
	add r0, sp, #0
	bl sub_020BB4C8
	ldr r1, _02234EA0 ; =0x021C5B48
	add r0, sp, #0
	bl sub_020C4C88
	ldr r1, _02234EA4 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r5, #0
	str r2, [r1, #0x7c]
	bl sub_020212EC
	bl sub_020AF4EC
	add r0, sp, #0x38
	add r1, sp, #0x24
	bl sub_0201CF7C
	cmp r0, #0
	bne _02234E98
	add sp, #0x44
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_02234E98:
	mov r0, #1
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	nop
_02234EA0: .word 0x021C5B48
_02234EA4: .word 0x021C5B0C
	thumb_func_end ov66_02234D8C

	.rodata


	.global Unk_ov66_02258B24
Unk_ov66_02258B24: ; 0x02258B24
	.incbin "incbin/overlay66_rodata.bin", 0x20C, 0x210 - 0x20C

	.global Unk_ov66_02258B28
Unk_ov66_02258B28: ; 0x02258B28
	.incbin "incbin/overlay66_rodata.bin", 0x210, 0x214 - 0x210

	.global Unk_ov66_02258B2C
Unk_ov66_02258B2C: ; 0x02258B2C
	.incbin "incbin/overlay66_rodata.bin", 0x214, 0x220 - 0x214

	.global Unk_ov66_02258B38
Unk_ov66_02258B38: ; 0x02258B38
	.incbin "incbin/overlay66_rodata.bin", 0x220, 0x270 - 0x220

	.global Unk_ov66_02258B88
Unk_ov66_02258B88: ; 0x02258B88
	.incbin "incbin/overlay66_rodata.bin", 0x270, 0x6C


	.data


	.global Unk_ov66_02258E1C
Unk_ov66_02258E1C: ; 0x02258E1C
	.incbin "incbin/overlay66_data.bin", 0xFC, 0x108 - 0xFC

	.global Unk_ov66_02258E28
Unk_ov66_02258E28: ; 0x02258E28
	.incbin "incbin/overlay66_data.bin", 0x108, 0x30

