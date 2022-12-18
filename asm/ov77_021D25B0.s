	.include "macros/function.inc"
	.include "include/ov77_021D25B0.inc"

	

	.text


	thumb_func_start ov77_021D25B0
ov77_021D25B0: ; 0x021D25B0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D25CC ; =0x021D76F4
	add r3, sp, #0
	mov r2, #5
_021D25BA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D25BA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D25CC: .word 0x021D76F4
	thumb_func_end ov77_021D25B0

	thumb_func_start ov77_021D25D0
ov77_021D25D0: ; 0x021D25D0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D25EC ; =0x021D771C
	add r3, sp, #0
	mov r2, #5
_021D25DA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D25DA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D25EC: .word 0x021D771C
	thumb_func_end ov77_021D25D0

	thumb_func_start ov77_021D25F0
ov77_021D25F0: ; 0x021D25F0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D260C ; =0x021D7744
	add r3, sp, #0
	mov r2, #5
_021D25FA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D25FA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D260C: .word 0x021D7744
	thumb_func_end ov77_021D25F0

	thumb_func_start ov77_021D2610
ov77_021D2610: ; 0x021D2610
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0xa8
	ldr r5, _021D2708 ; =0x021D74CC
	str r0, [r4, #0xc]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D270C ; =0x021D7510
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2710 ; =0x021D752C
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2714 ; =0x021D7548
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2718 ; =0x021D75F0
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D271C ; =0x021D75D4
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2720 ; =0x021D7580
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #7
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021D2708: .word 0x021D74CC
_021D270C: .word 0x021D7510
_021D2710: .word 0x021D752C
_021D2714: .word 0x021D7548
_021D2718: .word 0x021D75F0
_021D271C: .word 0x021D75D4
_021D2720: .word 0x021D7580
	thumb_func_end ov77_021D2610

	thumb_func_start ov77_021D2724
ov77_021D2724: ; 0x021D2724
	push {r4, r5, lr}
	sub sp, #0xd4
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x70
	ldr r5, _021D2810 ; =0x021D74AC
	str r0, [r4, #0xc]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D2814 ; =0x021D75B8
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2818 ; =0x021D760C
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D281C ; =0x021D7628
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2820 ; =0x021D7644
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2824 ; =0x021D7838
	add r3, sp, #0x80
	mov r2, #0xa
_021D27CC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D27CC
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x80
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #6
	add r2, sp, #0x9c
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #7
	add r2, sp, #0xb8
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0xd4
	pop {r4, r5, pc}
	; .align 2, 0
_021D2810: .word 0x021D74AC
_021D2814: .word 0x021D75B8
_021D2818: .word 0x021D760C
_021D281C: .word 0x021D7628
_021D2820: .word 0x021D7644
_021D2824: .word 0x021D7838
	thumb_func_end ov77_021D2724

	thumb_func_start ov77_021D2828
ov77_021D2828: ; 0x021D2828
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	mov r1, #0
	add r4, r0, #0
	bl ov77_021D361C
	ldr r5, _021D28EC ; =0x021D767C
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D28F0 ; =0x021D7698
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D28F4 ; =0x021D76B4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D28F8 ; =0x021D77E4
	add r3, sp, #0x54
	mov r2, #0xa
_021D289A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D289A
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #6
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #7
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r0, _021D28FC ; =0x0000028E
	mov r1, #1
	strb r1, [r4, r0]
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D28EC: .word 0x021D767C
_021D28F0: .word 0x021D7698
_021D28F4: .word 0x021D76B4
_021D28F8: .word 0x021D77E4
_021D28FC: .word 0x0000028E
	thumb_func_end ov77_021D2828

	thumb_func_start ov77_021D2900
ov77_021D2900: ; 0x021D2900
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl ov77_021D35B8
	add r0, r4, #0
	bl ov77_021D2828
	ldr r5, _021D29F0 ; =0x021D74DC
	add r3, sp, #0x38
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D29F4 ; =0x021D7564
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	add r3, r1, #0
	bl sub_020183C4
	ldr r5, _021D29F8 ; =0x021D759C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	mov r1, #0
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019184
	mov r1, #0
	ldr r0, [r4, #0xc]
	mov r2, #3
	add r3, r1, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0xc]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r4, #0xc]
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _021D29FC ; =0x0000028E
	mov r1, #2
	strb r1, [r4, r0]
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_021D29F0: .word 0x021D74DC
_021D29F4: .word 0x021D7564
_021D29F8: .word 0x021D759C
_021D29FC: .word 0x0000028E
	thumb_func_end ov77_021D2900

	thumb_func_start ov77_021D2A00
ov77_021D2A00: ; 0x021D2A00
	push {r4, r5, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x1c
	ldr r5, _021D2A50 ; =0x021D74BC
	str r0, [r4, #0xc]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D2A54 ; =0x021D7660
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0
	bl sub_0201975C
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_021D2A50: .word 0x021D74BC
_021D2A54: .word 0x021D7660
	thumb_func_end ov77_021D2A00

	thumb_func_start ov77_021D2A58
ov77_021D2A58: ; 0x021D2A58
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, _021D2A94 ; =ov77_021D2AA0
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #1
	add r3, r1, #0
	bl sub_02024220
	str r0, [r4, #0x10]
	ldr r3, _021D2A98 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _021D2A9C ; =0x02100DF4
	mov r0, #0x80
	ldr r3, [r3, #0]
	mov r1, #0
	mov r2, #1
	blx r3
	add sp, #8
	pop {r4, pc}
	nop
_021D2A94: .word ov77_021D2AA0
_021D2A98: .word 0x02100DEC
_021D2A9C: .word 0x02100DF4
	thumb_func_end ov77_021D2A58

	thumb_func_start ov77_021D2AA0
ov77_021D2AA0: ; 0x021D2AA0
	push {r3, lr}
	bl sub_020B2628
	ldr r0, _021D2B14 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _021D2B18 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021D2B1C ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _021D2B20 ; =0x021D74EC
	bl sub_020BFD2C
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _021D2B24 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _021D2B28 ; =0xBFFF0000
	ldr r0, _021D2B2C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_021D2B14: .word 0x04000008
_021D2B18: .word 0xFFFFCFFD
_021D2B1C: .word 0x0000CFFB
_021D2B20: .word 0x021D74EC
_021D2B24: .word 0x00007FFF
_021D2B28: .word 0xBFFF0000
_021D2B2C: .word 0x04000580
	thumb_func_end ov77_021D2AA0

	thumb_func_start ov77_021D2B30
ov77_021D2B30: ; 0x021D2B30
	ldr r3, _021D2B34 ; =sub_0200A858
	bx r3
	; .align 2, 0
_021D2B34: .word sub_0200A858
	thumb_func_end ov77_021D2B30

	thumb_func_start ov77_021D2B38
ov77_021D2B38: ; 0x021D2B38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r0, [sp]
	ldr r0, _021D2C64 ; =0x0000025B
	add r5, #0x34
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D2B84
	ldr r0, _021D2C68 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r1, _021D2C64 ; =0x0000025B
	mov r0, #0
	strb r0, [r5, r1]
	ldr r1, [r5, #0x28]
	bl sub_02020854
	ldr r0, [r5, #0x28]
	bl sub_020203D4
_021D2B84:
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D2B90
	bl sub_0201C2B8
_021D2B90:
	ldr r7, _021D2C6C ; =0x00000247
	mov r4, #0
	add r6, r7, #1
_021D2B96:
	ldr r0, _021D2C6C ; =0x00000247
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _021D2BAA
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019120
_021D2BAA:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _021D2BC0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_02019120
_021D2BC0:
	ldrb r0, [r5, r7]
	add r4, r4, #1
	asr r0, r0, #1
	strb r0, [r5, r7]
	ldrb r0, [r5, r6]
	asr r0, r0, #1
	strb r0, [r5, r6]
	cmp r4, #8
	blt _021D2B96
	mov r2, #0x25
	lsl r2, r2, #4
	sub r1, r2, #2
	ldrsh r6, [r5, r1]
	sub r1, r2, #6
	ldrsh r1, [r5, r1]
	sub r4, r2, #4
	ldrsh r4, [r5, r4]
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	lsl r4, r4, #0x18
	ldrsh r0, [r5, r2]
	and r3, r1
	lsr r4, r4, #0x18
	orr r3, r4
	ldr r4, _021D2C70 ; =0x04000040
	lsl r0, r0, #0x18
	strh r3, [r4]
	lsl r3, r6, #8
	and r3, r1
	lsr r0, r0, #0x18
	orr r0, r3
	strh r0, [r4, #4]
	add r0, r2, #0
	add r0, #8
	ldrsh r4, [r5, r0]
	add r0, r2, #6
	ldrsh r3, [r5, r0]
	add r0, r2, #2
	add r6, r2, #4
	ldrsh r0, [r5, r0]
	ldrsh r6, [r5, r6]
	lsl r3, r3, #8
	lsl r0, r0, #8
	lsl r6, r6, #0x18
	and r0, r1
	lsr r6, r6, #0x18
	orr r6, r0
	ldr r0, _021D2C74 ; =0x04001040
	and r3, r1
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	strh r6, [r0]
	orr r1, r3
	sub r2, #0xb
	strh r1, [r0, #4]
	ldrb r0, [r5, r2]
	cmp r0, #1
	bne _021D2C40
	bl ov77_021D2C80
	ldr r0, _021D2C78 ; =0x00000245
	mov r1, #0
	strb r1, [r5, r0]
_021D2C40:
	ldr r0, _021D2C7C ; =0x00000246
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D2C52
	bl ov77_021D2CE8
	ldr r0, _021D2C7C ; =0x00000246
	mov r1, #0
	strb r1, [r5, r0]
_021D2C52:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	bl ov77_021D6E40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2C64: .word 0x0000025B
_021D2C68: .word 0x021BF6DC
_021D2C6C: .word 0x00000247
_021D2C70: .word 0x04000040
_021D2C74: .word 0x04001040
_021D2C78: .word 0x00000245
_021D2C7C: .word 0x00000246
	thumb_func_end ov77_021D2B38

	thumb_func_start ov77_021D2C80
ov77_021D2C80: ; 0x021D2C80
	push {r3, r4, r5, r6}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r2, _021D2CE0 ; =0xFFFF1FFF
	add r3, r1, #0
	add r5, r0, #0
	and r3, r2
	lsr r1, r0, #0xd
	orr r1, r3
	str r1, [r0, #0]
	add r5, #0x48
	ldrh r1, [r5]
	mov r4, #0x3f
	mov r3, #0x1f
	bic r1, r4
	orr r1, r3
	mov r6, #0x20
	orr r1, r6
	strh r1, [r5]
	add r0, #0x4a
	ldrh r1, [r0]
	mov r5, #0x11
	bic r1, r4
	orr r1, r5
	orr r1, r6
	strh r1, [r0]
	ldr r0, _021D2CE4 ; =0x04001000
	ldr r1, [r0, #0]
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	add r2, r0, #0
	str r1, [r0, #0]
	add r2, #0x48
	ldrh r1, [r2]
	add r0, #0x4a
	bic r1, r4
	orr r1, r3
	orr r1, r6
	strh r1, [r2]
	ldrh r1, [r0]
	bic r1, r4
	orr r1, r5
	orr r1, r6
	strh r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_021D2CE0: .word 0xFFFF1FFF
_021D2CE4: .word 0x04001000
	thumb_func_end ov77_021D2C80

	thumb_func_start ov77_021D2CE8
ov77_021D2CE8: ; 0x021D2CE8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D2D00 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D2D04 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	bx lr
	nop
_021D2D00: .word 0xFFFF1FFF
_021D2D04: .word 0x04001000
	thumb_func_end ov77_021D2CE8

	thumb_func_start ov77_021D2D08
ov77_021D2D08: ; 0x021D2D08
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200AB84
	ldr r1, _021D2D8C ; =0x00007FFF
	mov r0, #0
	bl sub_0200F344
	ldr r1, _021D2D8C ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x4c
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x2b
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0x4c
	bl sub_0200681C
	mov r2, #0x2b
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x4c
	str r0, [r4, #0]
	mov r1, #0
	mov r0, #0xab
	str r1, [r4, #8]
	lsl r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, _021D2D90 ; =0x021BF6DC
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201D2D0
	str r0, [r4, #0x14]
	mov r0, #0
	bl sub_0201D2DC
	mov r0, #1
	pop {r4, pc}
	nop
_021D2D8C: .word 0x00007FFF
_021D2D90: .word 0x021BF6DC
	thumb_func_end ov77_021D2D08

	thumb_func_start ov77_021D2D94
ov77_021D2D94: ; 0x021D2D94
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021D2DD0
	ldr r0, _021D2E58 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021D2DB8
	mov r0, #8
	tst r0, r1
	beq _021D2DD0
_021D2DB8:
	mov r0, #1
	str r0, [r5, #8]
	ldr r1, _021D2E58 ; =0x021BF67C
	mov r0, #0
	str r0, [r1, #0x6c]
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
_021D2DD0:
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _021D2E3E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2DE2: ; jump table
	.short _021D2DEC - _021D2DE2 - 2 ; case 0
	.short _021D2DFC - _021D2DE2 - 2 ; case 1
	.short _021D2E0E - _021D2DE2 - 2 ; case 2
	.short _021D2E20 - _021D2DE2 - 2 ; case 3
	.short _021D2E32 - _021D2DE2 - 2 ; case 4
_021D2DEC:
	mov r0, #0xab
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [r5, #0x30]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E42
_021D2DFC:
	add r0, r5, #0
	bl ov77_021D2E9C
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E42
_021D2E0E:
	add r0, r5, #0
	bl ov77_021D33F0
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E42
_021D2E20:
	add r0, r5, #0
	bl ov77_021D5254
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E42
_021D2E32:
	ldr r1, [r5, #4]
	ldr r0, _021D2E5C ; =0x0000097E
	cmp r1, r0
	blt _021D2E42
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2E3E:
	bl sub_02022974
_021D2E42:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D2E4C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2E4C:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D2E58: .word 0x021BF67C
_021D2E5C: .word 0x0000097E
	thumb_func_end ov77_021D2D94

	thumb_func_start ov77_021D2E60
ov77_021D2E60: ; 0x021D2E60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D2E76
	bl sub_0200F2C0
_021D2E76:
	ldr r0, [r4, #0x14]
	bl sub_0201D2DC
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x4c
	bl sub_0201807C
	ldr r0, _021D2E94 ; =0x0000004D
	ldr r1, _021D2E98 ; =0x021D742C
	bl sub_02000EC4
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D2E94: .word 0x0000004D
_021D2E98: .word 0x021D742C
	thumb_func_end ov77_021D2E60

	thumb_func_start ov77_021D2E9C
ov77_021D2E9C: ; 0x021D2E9C
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #8]
	add r4, r1, #0
	add r4, #0x18
	cmp r0, #0
	beq _021D2EAE
	mov r0, #3
	strb r0, [r4]
_021D2EAE:
	ldrb r0, [r4]
	cmp r0, #3
	bhi _021D2F06
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2EC0: ; jump table
	.short _021D2EC8 - _021D2EC0 - 2 ; case 0
	.short _021D2ED6 - _021D2EC0 - 2 ; case 1
	.short _021D2EE6 - _021D2EC0 - 2 ; case 2
	.short _021D2EFC - _021D2EC0 - 2 ; case 3
_021D2EC8:
	add r0, r1, #0
	bl ov77_021D2F0C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2ED6:
	add r1, #0x18
	add r0, r1, #0
	bl ov77_021D2F38
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2EE6:
	add r0, r1, #0
	ldr r1, [r1, #4]
	add r0, #0x18
	bl ov77_021D30D0
	cmp r0, #0
	beq _021D2F06
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2EFC:
	add r0, r1, #0
	bl ov77_021D3234
	mov r0, #1
	pop {r4, pc}
_021D2F06:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D2E9C

	thumb_func_start ov77_021D2F0C
ov77_021D2F0C: ; 0x021D2F0C
	push {r4, lr}
	add r4, r0, #0
	bl ov77_021D25B0
	add r0, r4, #0
	bl ov77_021D2610
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x24]
	bl ov77_021D670C
	str r0, [r4, #0x2c]
	ldr r0, _021D2F34 ; =ov77_021D2B30
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	strb r0, [r4, #0x1a]
	pop {r4, pc}
	nop
_021D2F34: .word ov77_021D2B30
	thumb_func_end ov77_021D2F0C

	thumb_func_start ov77_021D2F38
ov77_021D2F38: ; 0x021D2F38
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x10
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x10
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x11
	mov r3, #2
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x12
	mov r3, #6
	bl sub_02006E60
	mov r2, #0
	str r2, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r0, #0x80
	mov r1, #0xf
	add r3, r2, #0
	bl sub_02006E84
	mov r3, #0
	str r3, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r0, #0x80
	mov r1, #0xf
	mov r2, #4
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x30
	mov r1, #0xf
	mov r3, #1
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x30
	mov r1, #0xd
	mov r3, #1
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x4c
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x30
	mov r1, #0xe
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x13
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x13
	mov r3, #7
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x72
	mov r3, #5
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x71
	mov r3, #5
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r0, #0x80
	mov r1, #0x73
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D30C8 ; =0x04000050
	mov r1, #2
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D30CC ; =0x04001050
	mov r1, #2
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	bl sub_0201FFD0
	add sp, #0x10
	pop {r4, pc}
	nop
_021D30C8: .word 0x04000050
_021D30CC: .word 0x04001050
	thumb_func_end ov77_021D2F38

	thumb_func_start ov77_021D30D0
ov77_021D30D0: ; 0x021D30D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	add r5, r1, #0
	bl ov77_021D69C0
	ldrb r0, [r4, #1]
	cmp r0, #5
	bls _021D30E6
	b _021D3208
_021D30E6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D30F2: ; jump table
	.short _021D30FE - _021D30F2 - 2 ; case 0
	.short _021D3122 - _021D30F2 - 2 ; case 1
	.short _021D3148 - _021D30F2 - 2 ; case 2
	.short _021D31AE - _021D30F2 - 2 ; case 3
	.short _021D31CE - _021D30F2 - 2 ; case 4
	.short _021D31FA - _021D30F2 - 2 ; case 5
_021D30FE:
	mov r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D3210 ; =ov77_021D32A4
	strb r2, [r4, #8]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	mov r0, #1
	ldr r1, _021D3214 ; =0x00000494
	add r2, r0, #0
	bl sub_02004550
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D3122:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	cmp r5, #0x73
	blt _021D3208
	mov r2, #0
	strb r2, [r4, #7]
	mov r0, #0x10
	strb r0, [r4, #6]
	ldr r0, _021D3218 ; =ov77_021D3300
	strb r2, [r4, #8]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D3148:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	ldr r0, _021D321C ; =0x00000109
	cmp r5, r0
	blt _021D3208
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D3220 ; =0x04000050
	mov r1, #4
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D3224 ; =0x04001050
	mov r1, #4
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D3228 ; =ov77_021D3360
	strb r2, [r4, #8]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31AE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	mov r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D322C ; =ov77_021D33A8
	strb r2, [r4, #8]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31CE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	ldr r0, _021D3230 ; =0x000001EA
	cmp r5, r0
	blt _021D3208
	mov r0, #0x12
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31FA:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D3208
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D3208:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D3210: .word ov77_021D32A4
_021D3214: .word 0x00000494
_021D3218: .word ov77_021D3300
_021D321C: .word 0x00000109
_021D3220: .word 0x04000050
_021D3224: .word 0x04001050
_021D3228: .word ov77_021D3360
_021D322C: .word ov77_021D33A8
_021D3230: .word 0x000001EA
	thumb_func_end ov77_021D30D0

	thumb_func_start ov77_021D3234
ov77_021D3234: ; 0x021D3234
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _021D3286
	ldr r0, [r4, #0x2c]
	bl ov77_021D67B0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	mov r0, #0
	strb r0, [r4, #0x1a]
_021D3286:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D32A0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021D3296
	bl sub_02022974
_021D3296:
	ldr r0, [r4, #0x28]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x28]
_021D32A0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D3234

	thumb_func_start ov77_021D32A4
ov77_021D32A4: ; 0x021D32A4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #6
	blo _021D32C0
	mov r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	add r1, r1, #1
	strb r1, [r4, #6]
_021D32C0:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D32D2
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	strb r0, [r4, #8]
_021D32D2:
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D32F8 ; =0x04000050
	mov r1, #2
	mov r2, #8
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D32FC ; =0x04001050
	mov r1, #2
	mov r2, #8
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D32F8: .word 0x04000050
_021D32FC: .word 0x04001050
	thumb_func_end ov77_021D32A4

	thumb_func_start ov77_021D3300
ov77_021D3300: ; 0x021D3300
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D331C
	mov r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	sub r1, r1, #1
	strb r1, [r4, #6]
_021D331C:
	ldrb r1, [r4, #6]
	cmp r1, #0
	bne _021D3332
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x10]
	mov r1, #1
	strb r1, [r4, #8]
	ldr r0, [r4, #0x18]
	strb r1, [r0]
_021D3332:
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D3358 ; =0x04000050
	mov r1, #2
	mov r2, #8
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D335C ; =0x04001050
	mov r1, #2
	mov r2, #8
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D3358: .word 0x04000050
_021D335C: .word 0x04001050
	thumb_func_end ov77_021D3300

	thumb_func_start ov77_021D3360
ov77_021D3360: ; 0x021D3360
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D337C
	mov r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	add r1, r1, #1
	strb r1, [r4, #6]
_021D337C:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D338E
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	strb r0, [r4, #8]
_021D338E:
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D33A4 ; =0x04000050
	mov r1, #4
	mov r2, #8
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D33A4: .word 0x04000050
	thumb_func_end ov77_021D3360

	thumb_func_start ov77_021D33A8
ov77_021D33A8: ; 0x021D33A8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D33C4
	mov r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	add r1, r1, #1
	strb r1, [r4, #6]
_021D33C4:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D33D6
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	strb r0, [r4, #8]
_021D33D6:
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D33EC ; =0x04001050
	mov r1, #4
	mov r2, #8
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D33EC: .word 0x04001050
	thumb_func_end ov77_021D33A8

	thumb_func_start ov77_021D33F0
ov77_021D33F0: ; 0x021D33F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r5, #0
	add r4, #0x34
	cmp r0, #0
	beq _021D3402
	mov r0, #4
	strb r0, [r4]
_021D3402:
	ldrb r0, [r4]
	cmp r0, #4
	bhi _021D34A4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D3414: ; jump table
	.short _021D341E - _021D3414 - 2 ; case 0
	.short _021D342C - _021D3414 - 2 ; case 1
	.short _021D343C - _021D3414 - 2 ; case 2
	.short _021D3458 - _021D3414 - 2 ; case 3
	.short _021D349A - _021D3414 - 2 ; case 4
_021D341E:
	add r0, r5, #0
	bl ov77_021D34A8
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D342C:
	add r5, #0x34
	add r0, r5, #0
	bl ov77_021D37C0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D343C:
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0
	bl ov77_021D40DC
	cmp r0, #1
	bne _021D34A4
	mov r0, #1
	add r5, #0x3a
	strb r0, [r5]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D3458:
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, r5, #0
	add r1, #0x34
	bl ov77_021D4230
	cmp r0, #0
	beq _021D346E
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_021D346E:
	ldr r0, [r5, #0x48]
	bl ov77_021D6020
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3492
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D34A4
	add r5, #0x34
	add r0, r5, #0
	bl ov77_021D4188
	b _021D34A4
_021D3492:
	ldr r0, [r5, #0x50]
	bl ov77_021D6E50
	b _021D34A4
_021D349A:
	add r0, r5, #0
	bl ov77_021D36F8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D34A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D33F0

	thumb_func_start ov77_021D34A8
ov77_021D34A8: ; 0x021D34A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov77_021D25D0
	add r0, r5, #0
	bl ov77_021D2724
	add r0, r5, #0
	bl ov77_021D2A58
	bl ov77_021D555C
	add r4, r0, #0
	bl ov77_021D6CB8
	add r6, r0, #0
	mov r0, #0x4c
	add r1, r4, #0
	bl sub_02018144
	str r0, [r5, #0x48]
	mov r0, #0x10
	bl ov77_021D6734
	str r0, [r5, #0x4c]
	mov r0, #0x4c
	add r1, r6, #0
	bl sub_02018144
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x48]
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
	ldr r0, [r5, #0x50]
	mov r1, #0
	add r2, r6, #0
	bl sub_020D5124
	add r0, r5, #0
	mov r1, #4
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [r5, #0x50]
	bl ov77_021D6CFC
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r0, [r5, #0x44]
	ldr r0, _021D3598 ; =0x021BF6DC
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r6, _021D359C ; =0x021D776C
	ldr r7, _021D35A0 ; =0x021D7444
	mov r4, #0
_021D351C:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	add r3, r6, r1
	ldr r2, [r3, #4]
	ldr r1, [r6, r1]
	ldr r3, [r3, #8]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_020AF51C
	lsl r1, r4, #1
	ldrh r1, [r7, r1]
	add r0, r4, #0
	bl sub_020AF558
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D351C
	ldr r0, _021D35A4 ; =0x00004210
	ldr r1, _021D35A8 ; =0x0000318A
	mov r2, #0
	bl sub_020AF56C
	ldr r0, _021D35AC ; =0x00004A52
	ldr r1, _021D35B0 ; =0x000039CE
	mov r2, #0
	bl sub_020AF590
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xe
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0xd
	mov r2, #2
	add r3, r1, #0
	bl sub_020AF5B4
	ldr r0, _021D35B4 ; =ov77_021D2B38
	add r1, r5, #0
	bl sub_02017798
	mov r0, #0xf
	mvn r0, r0
	mov r1, #8
	mov r2, #1
	bl sub_0200AB4C
	mov r0, #1
	add r5, #0x36
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3598: .word 0x021BF6DC
_021D359C: .word 0x021D776C
_021D35A0: .word 0x021D7444
_021D35A4: .word 0x00004210
_021D35A8: .word 0x0000318A
_021D35AC: .word 0x00004A52
_021D35B0: .word 0x000039CE
_021D35B4: .word ov77_021D2B38
	thumb_func_end ov77_021D34A8

	thumb_func_start ov77_021D35B8
ov77_021D35B8: ; 0x021D35B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D35CE
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3618
_021D35CE:
	bl sub_020203E0
	ldr r0, [r5, #0x5c]
	bl sub_020203B8
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _021D35FE
	mov r7, #0x27
	add r4, r5, #0
	lsl r7, r7, #4
_021D35EA:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x58
	cmp r6, r0
	blt _021D35EA
_021D35FE:
	mov r0, #0x27
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r5, #0x54]
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
	add r5, #0x39
	strb r1, [r5]
_021D3618:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov77_021D35B8

	thumb_func_start ov77_021D361C
ov77_021D361C: ; 0x021D361C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r4, r1, #0
	cmp r0, #0
	beq _021D36F0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021D36F0
	ldr r1, _021D36F4 ; =0x0000028E
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _021D3670
	mov r1, #3
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #7
	bl sub_02019044
	b _021D36E2
_021D3670:
	cmp r1, #1
	bne _021D36A4
	mov r1, #3
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #7
	bl sub_02019044
	b _021D36E2
_021D36A4:
	mov r1, #0
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #7
	bl sub_02019044
_021D36E2:
	cmp r4, #1
	bne _021D36F0
	ldr r0, [r5, #0xc]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #0xc]
_021D36F0:
	pop {r3, r4, r5, pc}
	nop
_021D36F4: .word 0x0000028E
	thumb_func_end ov77_021D361C

	thumb_func_start ov77_021D36F8
ov77_021D36F8: ; 0x021D36F8
	push {r4, lr}
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0]
	ldr r1, _021D37B8 ; =0xFFFF1FFF
	add r4, r0, #0
	and r1, r2
	str r1, [r3, #0]
	bl ov77_021D35B8
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3724
	ldr r0, [r4, #0x48]
	bl ov77_021D5BAC
	add r0, r4, #0
	mov r1, #0
	add r0, #0x37
	strb r1, [r0]
_021D3724:
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3788
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021D373C
	bl ov77_021D6760
	mov r0, #0
	str r0, [r4, #0x4c]
_021D373C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021D374A
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x48]
_021D374A:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021D375E
	bl ov77_021D6E28
	ldr r0, [r4, #0x50]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x50]
_021D375E:
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D361C
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D377C
	bl sub_020181C4
	mov r0, #0x9d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D377C:
	ldr r0, [r4, #0x10]
	bl sub_020242C4
	mov r0, #0
	add r4, #0x36
	strb r0, [r4]
_021D3788:
	bl sub_020B2628
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D37B8 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D37BC ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	pop {r4, pc}
	nop
_021D37B8: .word 0xFFFF1FFF
_021D37BC: .word 0x04001000
	thumb_func_end ov77_021D36F8

	thumb_func_start ov77_021D37C0
ov77_021D37C0: ; 0x021D37C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	mov r3, #6
	lsl r3, r3, #6
	str r3, [sp]
	mov r1, #0x40
	str r1, [sp, #4]
	mov r1, #0x4c
	str r1, [sp, #8]
	mov r1, #0x60
	mov r2, #0
	add r4, r0, #0
	bl sub_02007148
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x5f
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xc
	mov r3, #3
	bl sub_0200710C
	mov r3, #7
	lsl r3, r3, #6
	str r3, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02007148
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xc
	mov r3, #2
	bl sub_0200710C
	mov r0, #0x41
	mov r1, #0x4c
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, #0x38
	mov r3, #1
	add r6, r0, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	mov r1, #0x39
	mov r3, #1
	bl sub_0200710C
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	mov r1, #0x39
	mov r3, #1
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x4c
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x37
	add r3, r2, #0
	bl sub_02007130
	add r0, r6, #0
	bl sub_02006CA8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x3d
	mov r2, #4
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3b
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3f
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3a
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3e
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3c
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x40
	mov r3, #7
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xc
	mov r3, #4
	bl sub_0200710C
	mov r3, #7
	lsl r3, r3, #6
	str r3, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #4
	bl sub_02007148
	ldr r0, [r5, #0x14]
	bl ov77_021D5564
	ldr r0, [r5, #0x14]
	bl ov77_021D5C3C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	bl ov77_021D5FB4
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #0x18
	mov r2, #2
	bl sub_020C4AF0
	ldr r1, _021D3A0C ; =0x05000400
	mov r0, #0
	mov r2, #2
	bl sub_020C4AF0
	mov r0, #0xe
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xf
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #1
	strb r0, [r5, #3]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D3A0C: .word 0x05000400
	thumb_func_end ov77_021D37C0

	thumb_func_start ov77_021D3A10
ov77_021D3A10: ; 0x021D3A10
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r3, r2, #0
	bl sub_02018898
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_02018898
	ldr r1, _021D3B54 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x4c
	str r1, [sp, #4]
	mov r1, #0x44
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x42
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x46
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x41
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x45
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x43
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x47
	mov r3, #3
	bl sub_0200710C
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #0x18
	mov r2, #2
	bl sub_020C4AF0
	ldr r1, _021D3B58 ; =0x05000400
	mov r0, #0
	mov r2, #2
	bl sub_020C4AF0
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D3B54: .word 0x04000008
_021D3B58: .word 0x05000400
	thumb_func_end ov77_021D3A10

	thumb_func_start ov77_021D3B5C
ov77_021D3B5C: ; 0x021D3B5C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl ov77_021D2828
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x4c
	str r1, [sp, #4]
	mov r1, #0x48
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #4
	bl sub_02007130
	mov r1, #2
	mov r0, #0x4c
	lsl r1, r1, #8
	bl sub_02018144
	mov r2, #9
	lsl r2, r2, #6
	str r0, [r5, r2]
	mov r0, #5
	ldr r1, [r5, r2]
	lsl r0, r0, #0x18
	sub r2, #0x40
	bl sub_020C4B18
	mov r1, #9
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	mov r0, #0
	mov r2, #2
	bl sub_020C4AF0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x49
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x49
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4a
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4d
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4a
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4d
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4b
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4e
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4b
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4e
	mov r3, #7
	bl sub_0200710C
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #0x18
	mov r2, #2
	bl sub_020C4AF0
	ldr r1, _021D3D48 ; =0x05000400
	mov r0, #0
	mov r2, #2
	bl sub_020C4AF0
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #1
	sub r3, #0x80
	bl sub_02019184
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #2
	sub r3, #0xc8
	bl sub_02019184
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #3
	sub r3, #0x98
	bl sub_02019184
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0
	mov r3, #0x80
	bl sub_02019184
	ldr r0, [r5, #0x10]
	mov r1, #6
	mov r2, #0
	mov r3, #0xc0
	bl sub_02019184
	ldr r0, [r5, #0x10]
	mov r1, #7
	mov r2, #0
	mov r3, #0xb0
	bl sub_02019184
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D3D48: .word 0x05000400
	thumb_func_end ov77_021D3B5C

	thumb_func_start ov77_021D3D4C
ov77_021D3D4C: ; 0x021D3D4C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl ov77_021D2900
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, #0x4f
	add r4, r0, #0
	bl sub_020070E8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x50
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x51
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x52
	mov r3, #4
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D3D4C

	thumb_func_start ov77_021D3DC4
ov77_021D3DC4: ; 0x021D3DC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D3ED8 ; =0x021BF6DC
	ldrb r0, [r0, #5]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	bne _021D3E50
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r3, #0xfd
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	add r3, #0xfd
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r3, #0xfd
	bl sub_02019184
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #5
	mov r1, #1
	bl sub_02019060
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	mov r0, #7
	mov r1, #0
	bl sub_02019060
	b _021D3ECC
_021D3E50:
	mov r2, #3
	add r3, r2, #0
	mov r1, #1
	add r3, #0xfd
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	add r3, #0xfd
	bl sub_02019184
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	add r3, #0xfd
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #5
	mov r1, #1
	bl sub_02019060
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	mov r0, #7
	mov r1, #0
	bl sub_02019060
_021D3ECC:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov77_021D636C
	pop {r4, pc}
	nop
_021D3ED8: .word 0x021BF6DC
	thumb_func_end ov77_021D3DC4

	thumb_func_start ov77_021D3EDC
ov77_021D3EDC: ; 0x021D3EDC
	push {r4, lr}
	lsl r2, r1, #2
	ldr r1, _021D3F20 ; =0x021D7458
	add r4, r0, #0
	ldr r1, [r1, r2]
	mov r0, #0x80
	mov r2, #0x4c
	bl sub_02006AC0
	str r0, [r4, #0x20]
	bl sub_020B3C1C
	str r0, [r4, #0x24]
	bl sub_0201CBCC
	cmp r0, #0
	bne _021D3F02
	bl sub_02022974
_021D3F02:
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021D3F0E
	bl sub_02022974
_021D3F0E:
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x20]
	ldr r1, [r2, #0x14]
	add r1, r2, r1
	sub r1, r1, r0
	bl sub_020182F0
	pop {r4, pc}
	nop
_021D3F20: .word 0x021D7458
	thumb_func_end ov77_021D3EDC

	thumb_func_start ov77_021D3F24
ov77_021D3F24: ; 0x021D3F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	str r3, [sp]
	cmp r3, #6
	ble _021D3F38
	mov r0, #6
	str r0, [sp]
_021D3F38:
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	bge _021D4036
	mov r0, #0x18
	ldr r1, _021D4040 ; =0x021D779C
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x2c
	str r0, [sp, #0xc]
_021D3F5E:
	ldr r0, [sp, #4]
	lsl r1, r7, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021D4036
	mov r0, #0x58
	add r6, r7, #0
	mul r6, r0
	ldr r0, [sp, #8]
	mov r2, #0x4c
	bl sub_02006CB8
	add r1, r5, r6
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x24]
	bl sub_0201CBB0
	cmp r0, #0
	bne _021D3F90
	bl sub_02022974
_021D3F90:
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _021D3FA4
	bl sub_02022974
_021D3FA4:
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _021D3FD2
	add r2, r0, #0
	add r2, #8
	beq _021D3FC6
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021D3FC6
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021D3FC8
_021D3FC6:
	mov r1, #0
_021D3FC8:
	cmp r1, #0
	beq _021D3FD2
	ldr r1, [r1, #0]
	add r4, r0, r1
	b _021D3FD4
_021D3FD2:
	mov r4, #0
_021D3FD4:
	cmp r4, #0
	bne _021D3FDC
	bl sub_02022974
_021D3FDC:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r0, r0, r6
	bl sub_020AE608
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020B2CE4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020B2CE4
	mov r2, #2
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020B2CE4
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020B2CE4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	bl sub_020B2D8C
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r0, #1
	mov r0, #0x8f
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blt _021D3F5E
_021D4036:
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4040: .word 0x021D779C
	thumb_func_end ov77_021D3F24

	thumb_func_start ov77_021D4044
ov77_021D4044: ; 0x021D4044
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0x4c
	bl sub_020203AC
	add r3, sp, #0x18
	ldr r5, _021D40A0 ; =0x021D7494
	str r0, [r4, #0x28]
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _021D40A4 ; =0x0029AEC1
	str r0, [r3, #0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r3, _021D40A8 ; =0x000005C1
	str r0, [sp, #8]
	add r0, r2, #0
	ldr r2, _021D40AC ; =0x021D7500
	bl sub_020206D0
	ldr r0, _021D40B0 ; =0x00000981
	ldr r1, [r4, #0x28]
	bl sub_02020910
	ldr r5, _021D40B4 ; =0x021D7464
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [r4, #0x28]
	add r0, r2, #0
	bl sub_02020990
	ldr r0, [r4, #0x28]
	bl sub_020203D4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D40A0: .word 0x021D7494
_021D40A4: .word 0x0029AEC1
_021D40A8: .word 0x000005C1
_021D40AC: .word 0x021D7500
_021D40B0: .word 0x00000981
_021D40B4: .word 0x021D7464
	thumb_func_end ov77_021D4044

	thumb_func_start ov77_021D40B8
ov77_021D40B8: ; 0x021D40B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov77_021D3EDC
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #6
	bl ov77_021D3F24
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4044
	mov r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D40B8

	thumb_func_start ov77_021D40DC
ov77_021D40DC: ; 0x021D40DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	ldrb r2, [r4, #9]
	bne _021D4126
	cmp r2, #0
	beq _021D40F2
	cmp r2, #1
	beq _021D4104
	cmp r2, #2
	b _021D410E
_021D40F2:
	mov r2, #1
	strb r2, [r4, #5]
	bl ov77_021D3EDC
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4044
	b _021D417C
_021D4104:
	mov r2, #0
	mov r3, #1
	bl ov77_021D3F24
	b _021D417C
_021D410E:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #6
	bl ov77_021D3F24
	mov r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #5]
	mov r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D4126:
	cmp r2, #3
	bhi _021D4164
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D4136: ; jump table
	.short _021D413E - _021D4136 - 2 ; case 0
	.short _021D4150 - _021D4136 - 2 ; case 1
	.short _021D415A - _021D4136 - 2 ; case 2
	.short _021D4164 - _021D4136 - 2 ; case 3
_021D413E:
	mov r2, #1
	strb r2, [r4, #5]
	bl ov77_021D3EDC
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4044
	b _021D417C
_021D4150:
	mov r2, #0
	mov r3, #2
	bl ov77_021D3F24
	b _021D417C
_021D415A:
	mov r2, #2
	mov r3, #4
	bl ov77_021D3F24
	b _021D417C
_021D4164:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	mov r3, #6
	bl ov77_021D3F24
	mov r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #5]
	mov r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D417C:
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D40DC

	thumb_func_start ov77_021D4188
ov77_021D4188: ; 0x021D4188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, _021D4224 ; =0x021D76D0
	add r5, r0, #0
	add r3, sp, #0x18
	mov r2, #4
_021D4194:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D4194
	ldr r0, [r4, #0]
	add r2, sp, #0xc
	str r0, [r3, #0]
	ldr r3, _021D4228 ; =0x021D7488
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl sub_020B2628
	bl sub_020241B4
	bl sub_020203EC
	mov r0, #0x97
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r1, #1
	bne _021D41FE
	sub r0, #0x20
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _021D41FE
	add r6, r5, #0
	mov r7, #0x8f
	add r6, #0x2c
	lsl r7, r7, #2
_021D41DE:
	bl sub_020C2BE8
	mov r0, #0x58
	mul r0, r4
	add r0, r6, r0
	add r1, sp, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl sub_0201CA74
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, r7]
	cmp r4, r0
	blt _021D41DE
_021D41FE:
	ldr r0, _021D422C ; =0x0000025D
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D4216
	bl sub_020B2628
	bl sub_020241B4
	bl sub_0201469C
	bl sub_020146C0
_021D4216:
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021D4224: .word 0x021D76D0
_021D4228: .word 0x021D7488
_021D422C: .word 0x0000025D
	thumb_func_end ov77_021D4188

	thumb_func_start ov77_021D4230
ov77_021D4230: ; 0x021D4230
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldrb r0, [r4, #7]
	add r5, r2, #0
	cmp r0, #0
	bne _021D424C
	mov r1, #0x91
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x18]
	bl ov77_021D6BA0
_021D424C:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	add r0, r0, #1
	bl sub_020E1F6C
	strb r1, [r4, #7]
	ldrb r0, [r4, #1]
	cmp r0, #0x13
	bhi _021D42D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D426A: ; jump table
	.short _021D4292 - _021D426A - 2 ; case 0
	.short _021D42BE - _021D426A - 2 ; case 1
	.short _021D4318 - _021D426A - 2 ; case 2
	.short _021D43D8 - _021D426A - 2 ; case 3
	.short _021D4428 - _021D426A - 2 ; case 4
	.short _021D45C2 - _021D426A - 2 ; case 5
	.short _021D469C - _021D426A - 2 ; case 6
	.short _021D46D2 - _021D426A - 2 ; case 7
	.short _021D4742 - _021D426A - 2 ; case 8
	.short _021D47D8 - _021D426A - 2 ; case 9
	.short _021D4878 - _021D426A - 2 ; case 10
	.short _021D48B8 - _021D426A - 2 ; case 11
	.short _021D4906 - _021D426A - 2 ; case 12
	.short _021D4946 - _021D426A - 2 ; case 13
	.short _021D4986 - _021D426A - 2 ; case 14
	.short _021D49D0 - _021D426A - 2 ; case 15
	.short _021D4AA6 - _021D426A - 2 ; case 16
	.short _021D4AD6 - _021D426A - 2 ; case 17
	.short _021D4B24 - _021D426A - 2 ; case 18
	.short _021D4B4E - _021D426A - 2 ; case 19
_021D4292:
	mov r0, #0xa
	lsl r0, r0, #6
	cmp r5, r0
	blt _021D42D0
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	mov r0, #8
	add r2, r1, #0
	sub r2, #0x10
	add r3, r0, #0
	bl sub_0200AAE0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	bl _021D4B54
_021D42BE:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D42D0
	mov r0, #0xaf
	lsl r0, r0, #2
	cmp r5, r0
	beq _021D42D4
_021D42D0:
	bl _021D4B54
_021D42D4:
	mov r0, #0
	mov r1, #1
	bl sub_02019120
	ldr r0, [r4, #0x1c]
	mov r1, #9
	bl ov77_021D6CD0
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl ov77_021D6CD0
	ldr r0, [r4, #0x1c]
	mov r1, #0xb
	bl ov77_021D6CD0
	mov r1, #0
	ldr r0, _021D45DC ; =0x04000050
	mov r2, #0xf
	add r3, r1, #0
	str r1, [sp]
	bl sub_020BF55C
	ldr r0, _021D45E0 ; =0x0000025D
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, [r4, #0x14]
	bl ov77_021D6050
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	bl _021D4B54
_021D4318:
	ldr r0, _021D45E4 ; =0x00000311
	cmp r5, r0
	bne _021D4336
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021D45E8 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
_021D4336:
	ldr r0, _021D45EC ; =0x00000316
	cmp r5, r0
	bne _021D4368
	bl sub_0200F2AC
	cmp r0, #1
	beq _021D4348
	bl sub_02022974
_021D4348:
	ldr r0, _021D45F0 ; =0x00000247
	mov r2, #4
	strb r2, [r4, r0]
	mov r1, #8
	add r0, r0, #1
	strb r1, [r4, r0]
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D45E8 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
_021D4368:
	mov r0, #0x3b
	lsl r0, r0, #4
	cmp r5, r0
	bne _021D439A
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _021D45F4 ; =0x0000025B
	mov r3, #1
	strb r3, [r4, r0]
	add r1, r0, #2
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r0, #1
	strb r3, [r4, r0]
	ldr r0, [r4, #0x1c]
	bl ov77_021D6CBC
	bl sub_02014710
	cmp r0, #0
	beq _021D439A
	bl sub_02022974
_021D439A:
	ldr r0, _021D45F8 ; =0x000003B1
	cmp r5, r0
	bne _021D43A8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
_021D43A8:
	ldr r0, _021D45FC ; =0x000003CF
	cmp r5, r0
	blt _021D4458
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #0x12
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D45E8 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #0x10
	strb r0, [r4, #8]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D43D8:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov77_021D513C
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4F38
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D6530
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D60E0
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D61B8
	ldr r0, _021D4600 ; =0x00000628
	cmp r5, r0
	blt _021D4458
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021D45E8 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4428:
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4F38
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D6530
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D60E0
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D61B8
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4458
	mov r0, #0x19
	lsl r0, r0, #6
	cmp r5, r0
	bge _021D445A
_021D4458:
	b _021D4B54
_021D445A:
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl ov77_021D6000
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r0, r6, #0
	add r1, r4, #0
	bl ov77_021D3A10
	mov r1, #1
	ldr r0, [r4, #0x14]
	add r2, r1, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #2
	mov r2, #1
	bl ov77_021D603C
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #5
	mov r1, #1
	bl sub_02019120
	mov r0, #6
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r1, #1
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	mov r2, #0
	add r3, #0xff
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	add r3, #0xfd
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	mov r1, #5
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	mov r2, #0
	add r3, #0xfb
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	add r3, #0xfd
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0x26
	lsl r2, r2, #4
	mov r0, #1
	lsl r0, r0, #0x14
	add r1, r2, #0
	str r0, [r4, r2]
	add r6, r2, #0
	mov r0, #0
	sub r1, #0x16
	strh r0, [r4, r1]
	add r1, r2, #0
	mov r5, #0xff
	sub r1, #0x14
	strh r5, [r4, r1]
	add r1, r2, #0
	mov r3, #0x20
	sub r1, #0x12
	strh r3, [r4, r1]
	mov r1, #0x9f
	sub r6, #0x10
	strh r1, [r4, r6]
	add r6, r2, #0
	sub r6, #0xe
	strh r0, [r4, r6]
	add r6, r2, #0
	sub r6, #0xc
	strh r5, [r4, r6]
	add r5, r2, #0
	sub r5, #0xa
	strh r3, [r4, r5]
	add r3, r2, #0
	sub r3, #8
	strh r1, [r4, r3]
	mov r1, #1
	sub r2, #0x1b
	strb r1, [r4, r2]
	ldr r2, _021D45DC ; =0x04000050
	strb r0, [r4, #6]
	strh r0, [r2]
	ldr r2, _021D4604 ; =0x04001050
	ldr r3, _021D45E8 ; =0x00007FFF
	strh r0, [r2]
	mov r2, #0x12
	str r2, [sp]
	str r1, [sp, #4]
	mov r2, #0x4c
	str r2, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D45C2:
	add r0, r4, #0
	bl ov77_021D4B70
	ldr r0, [r4, #0x14]
	bl ov77_021D607C
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D46B0
	ldr r0, _021D4608 ; =0x00000726
	b _021D460C
	nop
_021D45DC: .word 0x04000050
_021D45E0: .word 0x0000025D
_021D45E4: .word 0x00000311
_021D45E8: .word 0x00007FFF
_021D45EC: .word 0x00000316
_021D45F0: .word 0x00000247
_021D45F4: .word 0x0000025B
_021D45F8: .word 0x000003B1
_021D45FC: .word 0x000003CF
_021D4600: .word 0x00000628
_021D4604: .word 0x04001050
_021D4608: .word 0x00000726
_021D460C:
	cmp r5, r0
	blt _021D46B0
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_0201C63C
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	add r3, #0xfd
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r3, r2, #0
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r3, #0xfd
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r0, #0x92
	mov r1, #0x22
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r1, #1
	sub r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, [r4, #0x14]
	mov r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #2
	mov r2, #0
	bl ov77_021D603C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D469C:
	add r0, r4, #0
	bl ov77_021D4BE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4C04
	ldr r0, _021D49F8 ; =0x00000735
	cmp r5, r0
	beq _021D46B2
_021D46B0:
	b _021D4B54
_021D46B2:
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D46D2:
	add r0, r4, #0
	bl ov77_021D4BE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4C04
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D47B6
	ldr r0, _021D49FC ; =0x00000247
	mov r1, #0x22
	strb r1, [r4, r0]
	mov r2, #0
	mov r1, #0x44
	add r0, r0, #1
	strb r1, [r4, r0]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4742:
	add r0, r4, #0
	bl ov77_021D4BE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4C04
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D6470
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D47B6
	ldr r0, _021D4A00 ; =0x00000744
	cmp r5, r0
	bne _021D47B0
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r3, r2, #0
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r3, #0xfd
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r3, #0xfd
	bl sub_0201C63C
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	mov r2, #1
	bl ov77_021D603C
	b _021D4B54
_021D47B0:
	add r0, #0x3c
	cmp r5, r0
	bge _021D47B8
_021D47B6:
	b _021D4B54
_021D47B8:
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021D4A04 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D47D8:
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D6470
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4868
	mov r0, #0x40
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D4A04 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	mov r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	mov r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xd
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xe
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov77_021D636C
	add r0, r6, #0
	add r1, r4, #0
	bl ov77_021D3B5C
	ldr r0, _021D4A08 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r4, #0
	bl ov77_021D3DC4
	ldr r0, _021D4A0C ; =0x00000246
	mov r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4868:
	add r0, r4, #0
	bl ov77_021D4BE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4C04
	b _021D4B54
_021D4878:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4DC8
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D48CA
	ldr r0, _021D4A10 ; =0x000007DA
	cmp r5, r0
	blt _021D48CA
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D48B8:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D48CC
_021D48CA:
	b _021D4B54
_021D48CC:
	mov r1, #0
	ldr r0, _021D4A14 ; =0x04000050
	mov r2, #0x3e
	add r3, r1, #0
	str r1, [sp]
	bl sub_020BF55C
	mov r1, #5
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	bl sub_020C4AF0
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4906:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r2, r5, #0
	bl ov77_021D6E78
	cmp r0, #0
	beq _021D49E2
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4946:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, _021D4A08 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r4, #0
	bl ov77_021D3DC4
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4986:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, _021D4A18 ; =0x00000852
	cmp r5, r0
	blt _021D49E2
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r5, #0
	bl ov77_021D6E78
	cmp r0, #0
	beq _021D49E2
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D49D0:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D49E4
_021D49E2:
	b _021D4B54
_021D49E4:
	mov r2, #9
	lsl r2, r2, #6
	ldr r0, [r4, r2]
	mov r1, #5
	lsl r1, r1, #0x18
	sub r2, #0x40
	bl sub_020C4B18
	ldr r0, _021D4A08 ; =0x021BF6DC
	b _021D4A1C
	; .align 2, 0
_021D49F8: .word 0x00000735
_021D49FC: .word 0x00000247
_021D4A00: .word 0x00000744
_021D4A04: .word 0x00007FFF
_021D4A08: .word 0x021BF6DC
_021D4A0C: .word 0x00000246
_021D4A10: .word 0x000007DA
_021D4A14: .word 0x04000050
_021D4A18: .word 0x00000852
_021D4A1C:
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r6, #0
	add r1, r4, #0
	bl ov77_021D3D4C
	add r0, r4, #0
	bl ov77_021D3DC4
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov77_021D636C
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	sub r3, #0x3c
	bl sub_0201C63C
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	sub r3, #0x3c
	bl sub_0201C63C
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	sub r3, #0x3c
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #0
	mov r3, #0x3c
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #0
	mov r3, #0x3c
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #0
	mov r3, #0x3c
	bl sub_0201C63C
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4AA6:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4B54
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4AD6:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4B54
	ldr r0, _021D4B5C ; =0x000008A7
	cmp r5, r0
	blt _021D4AF4
	add r0, r4, #0
	bl ov77_021D4E90
_021D4AF4:
	ldr r0, _021D4B60 ; =0x000008A8
	cmp r5, r0
	blt _021D4B54
	ldr r1, _021D4B64 ; =0x00000247
	mov r0, #0x11
	ldrb r2, [r4, r1]
	ldr r3, _021D4B68 ; =0x00007FFF
	orr r0, r2
	strb r0, [r4, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4B24:
	add r0, r4, #0
	bl ov77_021D4E90
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4B54
	ldr r0, _021D4B6C ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4B4E:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D4B54:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D4B5C: .word 0x000008A7
_021D4B60: .word 0x000008A8
_021D4B64: .word 0x00000247
_021D4B68: .word 0x00007FFF
_021D4B6C: .word 0x021BF6DC
	thumb_func_end ov77_021D4230

	thumb_func_start ov77_021D4B70
ov77_021D4B70: ; 0x021D4B70
	push {r4, lr}
	mov r3, #0x26
	add r4, r0, #0
	lsl r3, r3, #4
	add r0, r3, #0
	ldr r1, [r4, r3]
	add r0, #0x20
	add r0, r1, r0
	str r0, [r4, r3]
	add r0, r3, #4
	ldr r1, [r4, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, r3, #4
	str r1, [r4, r0]
	add r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asr r3, r3, #0xc
	mov r1, #1
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	mov r3, #0x26
	lsl r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asr r3, r3, #0xc
	mov r1, #2
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	mov r3, #0x99
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asr r3, r3, #0xc
	mov r1, #5
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	mov r3, #0x26
	lsl r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asr r3, r3, #0xc
	mov r1, #6
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov77_021D4B70

	thumb_func_start ov77_021D4BE4
ov77_021D4BE4: ; 0x021D4BE4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	mov r2, #1
	mov r3, #0x10
	bl sub_0201C63C
	mov r2, #1
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	sub r3, #0x11
	bl sub_0201C63C
	pop {r4, pc}
	thumb_func_end ov77_021D4BE4

	thumb_func_start ov77_021D4C04
ov77_021D4C04: ; 0x021D4C04
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021D4DB0 ; =0x00000744
	cmp r1, r0
	beq _021D4C10
	b _021D4D42
_021D4C10:
	ldr r7, _021D4DB4 ; =0x04000048
	ldr r3, _021D4DB8 ; =0x0000024A
	ldrh r2, [r7]
	mov r0, #0x3f
	mov r1, #0x1f
	bic r2, r0
	orr r1, r2
	mov r6, #0x20
	orr r1, r6
	strh r1, [r7]
	ldrh r2, [r7, #2]
	mov r1, #0x1d
	add r5, r3, #4
	bic r2, r0
	orr r1, r2
	orr r1, r6
	strh r1, [r7, #2]
	mov r1, #0
	strh r1, [r4, r3]
	mov r2, #0xff
	add r1, r3, #2
	strh r2, [r4, r1]
	mov r1, #0
	strh r1, [r4, r5]
	add r5, r3, #6
	mov r1, #0x88
	strh r1, [r4, r5]
	add r1, r5, #0
	ldrsh r1, [r4, r1]
	str r1, [sp]
	add r1, r3, #4
	ldrsh r1, [r4, r1]
	mov ip, r1
	ldrsh r1, [r4, r3]
	lsl r5, r1, #8
	lsl r1, r2, #8
	and r1, r5
	add r5, r3, #2
	ldrsh r5, [r4, r5]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	orr r5, r1
	add r1, r7, #0
	sub r1, #8
	strh r5, [r1]
	mov r1, ip
	lsl r5, r1, #8
	lsl r1, r2, #8
	and r1, r5
	ldr r5, [sp]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	orr r5, r1
	sub r1, r7, #4
	strh r5, [r1]
	lsl r1, r6, #0x15
	ldr r7, [r1, #0]
	ldr r5, _021D4DBC ; =0xFFFF1FFF
	and r7, r5
	lsl r5, r6, #8
	orr r5, r7
	str r5, [r1, #0]
	ldr r1, _021D4DC0 ; =0x04001048
	mov r5, #0x1f
	ldrh r7, [r1]
	bic r7, r0
	orr r5, r7
	orr r5, r6
	strh r5, [r1]
	ldrh r5, [r1, #2]
	bic r5, r0
	mov r0, #0x1d
	orr r0, r5
	orr r0, r6
	strh r0, [r1, #2]
	ldrh r5, [r1]
	ldr r0, _021D4DC4 ; =0xFFFFC0FF
	and r5, r0
	mov r0, #0x1f
	lsl r0, r0, #8
	orr r5, r0
	lsr r0, r1, #0xd
	orr r0, r5
	add r5, r3, #0
	strh r0, [r1]
	add r5, #8
	mov r0, #0
	strh r0, [r4, r5]
	add r0, r3, #0
	add r0, #0xa
	add r5, r3, #0
	strh r2, [r4, r0]
	add r5, #0xc
	mov r0, #0
	strh r0, [r4, r5]
	add r5, r3, #0
	add r5, #0xe
	mov r0, #0x88
	strh r0, [r4, r5]
	add r0, r3, #0
	add r0, #0xe
	ldrsh r6, [r4, r0]
	add r0, r3, #0
	add r0, #0xc
	ldrsh r5, [r4, r0]
	add r0, r3, #0
	add r0, #8
	ldrsh r0, [r4, r0]
	lsl r5, r5, #8
	lsl r7, r0, #8
	lsl r0, r2, #8
	and r0, r7
	add r7, r3, #0
	add r7, #0xa
	ldrsh r7, [r4, r7]
	lsl r7, r7, #0x18
	lsr r7, r7, #0x18
	orr r7, r0
	add r0, r1, #0
	sub r0, #8
	strh r7, [r0]
	lsl r0, r2, #8
	and r5, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	orr r5, r0
	sub r0, r1, #4
	strh r5, [r0]
	add r0, r3, #0
	add r0, #0xe
	add r3, #0xc
	ldrsh r0, [r4, r0]
	ldrsh r5, [r4, r3]
	lsr r4, r1, #0x12
	sub r3, r1, #6
	strh r4, [r3]
	lsl r0, r0, #0x18
	lsl r3, r5, #8
	lsl r2, r2, #8
	and r2, r3
	lsr r0, r0, #0x18
	orr r2, r0
	sub r0, r1, #2
	strh r2, [r0]
	sub r1, #0x48
	ldr r2, [r1, #0]
	ldr r0, _021D4DBC ; =0xFFFF1FFF
	and r2, r0
	mov r0, #6
	lsl r0, r0, #0xc
	orr r0, r2
	str r0, [r1, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D42:
	ble _021D4DAE
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02019FF0
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	blt _021D4D60
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #2
	orr r0, r2
	strb r0, [r4, r1]
_021D4D60:
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl sub_02019FF0
	mov r1, #0xff
	mvn r1, r1
	cmp r0, r1
	bgt _021D4D7C
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #0x20
	orr r0, r2
	strb r0, [r4, r1]
_021D4D7C:
	mov r1, #1
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #0xc
	bl sub_0201C63C
	mov r2, #4
	ldr r0, [r4, #0x10]
	mov r1, #1
	sub r3, r2, #5
	bl sub_0201C63C
	mov r2, #1
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	sub r3, #0xd
	bl sub_0201C63C
	mov r2, #4
	ldr r0, [r4, #0x10]
	mov r1, #5
	sub r3, r2, #5
	bl sub_0201C63C
_021D4DAE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4DB0: .word 0x00000744
_021D4DB4: .word 0x04000048
_021D4DB8: .word 0x0000024A
_021D4DBC: .word 0xFFFF1FFF
_021D4DC0: .word 0x04001048
_021D4DC4: .word 0xFFFFC0FF
	thumb_func_end ov77_021D4C04

	thumb_func_start ov77_021D4DC8
ov77_021D4DC8: ; 0x021D4DC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D4E84 ; =0x00000788
	add r4, r1, #0
	cmp r4, r0
	ble _021D4E0A
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0x14
	cmp r3, #0
	ble _021D4DE6
	mov r3, #0
_021D4DE6:
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x10]
	mov r1, #5
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0x14
	bpl _021D4E00
	mov r3, #0
_021D4E00:
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0
	bl sub_0201C63C
_021D4E0A:
	ldr r0, _021D4E88 ; =0x0000078E
	cmp r4, r0
	blt _021D4E46
	ldr r0, [r5, #0x10]
	mov r1, #2
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0x14
	cmp r3, #0
	ble _021D4E22
	mov r3, #0
_021D4E22:
	ldr r0, [r5, #0x10]
	mov r1, #2
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x10]
	mov r1, #6
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0x14
	bpl _021D4E3C
	mov r3, #0
_021D4E3C:
	ldr r0, [r5, #0x10]
	mov r1, #6
	mov r2, #0
	bl sub_0201C63C
_021D4E46:
	ldr r0, _021D4E8C ; =0x00000794
	cmp r4, r0
	blt _021D4E82
	ldr r0, [r5, #0x10]
	mov r1, #3
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0x14
	cmp r3, #0
	ble _021D4E5E
	mov r3, #0
_021D4E5E:
	ldr r0, [r5, #0x10]
	mov r1, #3
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x10]
	mov r1, #7
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0x14
	bpl _021D4E78
	mov r3, #0
_021D4E78:
	ldr r0, [r5, #0x10]
	mov r1, #7
	mov r2, #0
	bl sub_0201C63C
_021D4E82:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4E84: .word 0x00000788
_021D4E88: .word 0x0000078E
_021D4E8C: .word 0x00000794
	thumb_func_end ov77_021D4DC8

	thumb_func_start ov77_021D4E90
ov77_021D4E90: ; 0x021D4E90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0xc
	cmp r3, #0
	ble _021D4EA6
	mov r3, #0
_021D4EA6:
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0xc
	bpl _021D4EC0
	mov r3, #0
_021D4EC0:
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0xc
	cmp r3, #0
	ble _021D4EDC
	mov r3, #0
_021D4EDC:
	ldr r0, [r4, #0x10]
	mov r1, #2
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #6
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0xc
	bpl _021D4EF6
	mov r3, #0
_021D4EF6:
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0xc
	cmp r3, #0
	ble _021D4F12
	mov r3, #0
_021D4F12:
	ldr r0, [r4, #0x10]
	mov r1, #3
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0xc
	bpl _021D4F2C
	mov r3, #0
_021D4F2C:
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #0
	bl sub_0201C63C
	pop {r4, pc}
	thumb_func_end ov77_021D4E90

	thumb_func_start ov77_021D4F38
ov77_021D4F38: ; 0x021D4F38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, sp, #0x64
	mov r2, #0
	str r2, [r0, #0]
	ldr r5, _021D5100 ; =0x000004A7
	str r2, [r0, #4]
	str r2, [r0, #8]
	cmp r1, r5
	bge _021D4F84
	ldr r0, [r4, #0x28]
	bl sub_02020A88
	ldr r1, _021D5104 ; =0x000005C1
	sub r0, #0x20
	cmp r0, r1
	ble _021D4F66
	ldr r0, _021D5108 ; =0x0000FFE0
	ldr r1, [r4, #0x28]
	bl sub_0202094C
	b _021D4F6E
_021D4F66:
	add r0, r1, #0
	ldr r1, [r4, #0x28]
	bl sub_02020910
_021D4F6E:
	mov r0, #2
	ldr r1, [sp, #0x6c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x6c]
	ldr r1, [r4, #0x28]
	add r0, sp, #0x64
	bl sub_02020990
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D4F84:
	bne _021D502A
	ldr r6, _021D510C ; =0x021D7470
	add r5, sp, #0x58
	ldmia r6!, {r0, r1}
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r1, _021D5110 ; =0x0029AEC1
	str r0, [r5, #0]
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r2, _021D5114 ; =0x021D7500
	str r0, [sp, #8]
	add r0, r3, #0
	ldr r3, _021D5104 ; =0x000005C1
	bl sub_020206D0
	ldr r5, _021D5118 ; =0x021D74A0
	add r3, sp, #0x4c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [r4, #0x28]
	add r0, r2, #0
	bl sub_02020990
	bl sub_020B2628
	ldr r3, _021D511C ; =0x00001194
	mov r0, #1
	mov r1, #0
	mov r2, #3
	bl sub_020BFC74
	ldr r1, _021D5120 ; =0x001F7FFF
	ldr r0, _021D5124 ; =0x04000358
	mov r7, #0
	str r1, [r0, #0]
	mov r0, #4
	add r1, r7, #0
	mov r2, #8
	mov r3, #0xc
	add r4, sp, #0x2c
_021D4FE0:
	lsl r5, r3, #0x18
	mov ip, r5
	lsl r5, r0, #8
	lsl r6, r2, #0x10
	orr r5, r1
	orr r5, r6
	mov r6, ip
	orr r5, r6
	add r7, r7, #1
	stmia r4!, {r5}
	add r0, #0x10
	add r1, #0x10
	add r2, #0x10
	add r3, #0x10
	cmp r7, #8
	blt _021D4FE0
	add r0, sp, #0x2c
	bl sub_020BFD44
	mov r0, #9
	str r0, [sp]
	ldr r0, _021D5128 ; =0x04000050
	mov r1, #2
	mov r2, #0x21
	mov r3, #7
	bl sub_020BF55C
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D502A:
	add r3, r5, #0
	add r3, #0xd2
	cmp r1, r3
	bge _021D5052
	mov r1, #1
	ldr r2, [sp, #0x64]
	lsl r1, r1, #0xe
	add r1, r2, r1
	str r1, [sp, #0x64]
	ldr r1, [r4, #0x28]
	bl sub_02020990
	mov r1, #1
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #4
	bl sub_0201C63C
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D5052:
	add r5, #0xd2
	cmp r1, r5
	bne _021D50CC
	ldr r6, _021D512C ; =0x021D744C
	add r5, sp, #0x20
	ldmia r6!, {r0, r1}
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r1, _021D5110 ; =0x0029AEC1
	str r0, [r5, #0]
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r2, _021D5114 ; =0x021D7500
	str r0, [sp, #8]
	add r0, r3, #0
	ldr r3, _021D5104 ; =0x000005C1
	bl sub_020206D0
	ldr r5, _021D5130 ; =0x021D747C
	add r3, sp, #0x14
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [r4, #0x28]
	add r0, r2, #0
	bl sub_02020990
	ldr r2, _021D5134 ; =0x021D743C
	add r1, sp, #0xc
	ldrh r3, [r2]
	add r0, sp, #0xc
	strh r3, [r1]
	ldrh r3, [r2, #2]
	strh r3, [r1, #2]
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	strh r3, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r4, #0x28]
	bl sub_020209F8
	bl sub_020B2628
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	ldr r0, _021D5128 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	bl sub_02019120
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D50CC:
	ldr r0, _021D5138 ; =0x00000618
	cmp r1, r0
	blt _021D50EA
	ldr r0, [r4, #0x28]
	bl sub_02020A88
	mov r1, #1
	add r0, #0x18
	lsl r1, r1, #0xe
	cmp r0, r1
	bge _021D50EA
	ldr r1, [r4, #0x28]
	mov r0, #0x18
	bl sub_0202094C
_021D50EA:
	mov r0, #2
	ldr r1, [sp, #0x64]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x64]
	ldr r1, [r4, #0x28]
	add r0, sp, #0x64
	bl sub_02020990
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5100: .word 0x000004A7
_021D5104: .word 0x000005C1
_021D5108: .word 0x0000FFE0
_021D510C: .word 0x021D7470
_021D5110: .word 0x0029AEC1
_021D5114: .word 0x021D7500
_021D5118: .word 0x021D74A0
_021D511C: .word 0x00001194
_021D5120: .word 0x001F7FFF
_021D5124: .word 0x04000358
_021D5128: .word 0x04000050
_021D512C: .word 0x021D744C
_021D5130: .word 0x021D747C
_021D5134: .word 0x021D743C
_021D5138: .word 0x00000618
	thumb_func_end ov77_021D4F38

	thumb_func_start ov77_021D513C
ov77_021D513C: ; 0x021D513C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021D524C ; =0x00000573
	add r4, r1, #0
	cmp r2, r0
	bgt _021D5174
	bge _021D51FA
	sub r0, #0xd2
	sub r0, r2, r0
	cmp r0, #9
	bhi _021D5246
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5160: ; jump table
	.short _021D517E - _021D5160 - 2 ; case 0
	.short _021D5246 - _021D5160 - 2 ; case 1
	.short _021D5246 - _021D5160 - 2 ; case 2
	.short _021D5246 - _021D5160 - 2 ; case 3
	.short _021D5246 - _021D5160 - 2 ; case 4
	.short _021D5246 - _021D5160 - 2 ; case 5
	.short _021D519A - _021D5160 - 2 ; case 6
	.short _021D51B8 - _021D5160 - 2 ; case 7
	.short _021D51C4 - _021D5160 - 2 ; case 8
	.short _021D51D0 - _021D5160 - 2 ; case 9
_021D5174:
	ldr r0, _021D5250 ; =0x00000579
	cmp r2, r0
	beq _021D5216
	add sp, #0xc
	pop {r4, r5, pc}
_021D517E:
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D519A:
	bl sub_0200F2AC
	cmp r0, #1
	beq _021D51A6
	bl sub_02022974
_021D51A6:
	add r0, r5, #0
	bl ov77_021D35B8
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51B8:
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51C4:
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51D0:
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D40DC
	cmp r0, #1
	beq _021D51E0
	bl sub_02022974
_021D51E0:
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D51FA:
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D5216:
	bl sub_0200F2AC
	cmp r0, #1
	beq _021D5222
	bl sub_02022974
_021D5222:
	add r0, r5, #0
	bl ov77_021D35B8
	add r0, r4, #0
	mov r1, #2
	bl ov77_021D40B8
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
_021D5246:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D524C: .word 0x00000573
_021D5250: .word 0x00000579
	thumb_func_end ov77_021D513C

	thumb_func_start ov77_021D5254
ov77_021D5254: ; 0x021D5254
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r5, #0xa7
	lsl r5, r5, #2
	cmp r0, #0
	beq _021D5266
	mov r0, #3
	strb r0, [r4, r5]
_021D5266:
	ldrb r0, [r4, r5]
	cmp r0, #3
	bhi _021D52C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5278: ; jump table
	.short _021D5280 - _021D5278 - 2 ; case 0
	.short _021D528E - _021D5278 - 2 ; case 1
	.short _021D52A0 - _021D5278 - 2 ; case 2
	.short _021D52B8 - _021D5278 - 2 ; case 3
_021D5280:
	add r0, r4, #0
	bl ov77_021D52C8
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D528E:
	mov r0, #0xa7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov77_021D5308
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D52A0:
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	add r0, r4, r0
	bl ov77_021D5390
	cmp r0, #0
	beq _021D52C2
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D52B8:
	add r0, r4, #0
	bl ov77_021D5478
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D52C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D5254

	thumb_func_start ov77_021D52C8
ov77_021D52C8: ; 0x021D52C8
	push {r4, lr}
	add r4, r0, #0
	bl ov77_021D25F0
	add r0, r4, #0
	bl ov77_021D2A00
	mov r0, #0xa9
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _021D52FC ; =0x00007FFF
	mov r0, #0
	bl sub_0200F344
	ldr r1, _021D52FC ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	ldr r0, _021D5300 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021D5304 ; =0x0000029E
	mov r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D52FC: .word 0x00007FFF
_021D5300: .word 0x04000050
_021D5304: .word 0x0000029E
	thumb_func_end ov77_021D52C8

	thumb_func_start ov77_021D5308
ov77_021D5308: ; 0x021D5308
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r0, #0x80
	mov r1, #0x63
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	mov r0, #0x80
	mov r1, #0x62
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	mov r0, #0x80
	mov r1, #0x61
	mov r3, #2
	bl sub_02006E60
	bl sub_0201FF00
	mov r0, #0
	bl sub_0201FF48
	mov r0, #0
	bl sub_0201FFB0
	ldr r0, _021D538C ; =0xFFFE8000
	mov r2, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	ldr r5, [r4, #4]
	ldr r0, [r4, #8]
	asr r3, r5, #0xb
	lsr r3, r3, #0x14
	add r3, r5, r3
	mov r1, #2
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	mov r0, #1
	strb r0, [r4, #3]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D538C: .word 0xFFFE8000
	thumb_func_end ov77_021D5308

	thumb_func_start ov77_021D5390
ov77_021D5390: ; 0x021D5390
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _021D5448
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D53A8: ; jump table
	.short _021D53B2 - _021D53A8 - 2 ; case 0
	.short _021D53D6 - _021D53A8 - 2 ; case 1
	.short _021D5404 - _021D53A8 - 2 ; case 2
	.short _021D5414 - _021D53A8 - 2 ; case 3
	.short _021D543A - _021D53A8 - 2 ; case 4
_021D53B2:
	ldr r0, _021D546C ; =0x0000089D
	cmp r1, r0
	blt _021D5448
	mov r0, #0x1e
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D5470 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D53D6:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5448
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x5a
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D5404:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5448
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D5414:
	ldr r0, _021D5474 ; =0x00000974
	cmp r1, r0
	blt _021D5448
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D543A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5448
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D5448:
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0xa
	add r5, r1, r0
	asr r3, r5, #0xb
	str r5, [r4, #4]
	lsr r3, r3, #0x14
	add r3, r5, r3
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D546C: .word 0x0000089D
_021D5470: .word 0x00007FFF
_021D5474: .word 0x00000974
	thumb_func_end ov77_021D5390

	thumb_func_start ov77_021D5478
ov77_021D5478: ; 0x021D5478
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D54A8 ; =0x0000029E
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D5498
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	ldr r0, _021D54A8 ; =0x0000029E
	mov r1, #0
	strb r1, [r4, r0]
_021D5498:
	ldr r0, _021D54AC ; =0x0000029F
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D54A4
	mov r1, #0
	strb r1, [r4, r0]
_021D54A4:
	pop {r4, pc}
	nop
_021D54A8: .word 0x0000029E
_021D54AC: .word 0x0000029F
	thumb_func_end ov77_021D5478

	.rodata


	.global Unk_ov77_021D743C
Unk_ov77_021D743C: ; 0x021D743C
	.incbin "incbin/overlay77_rodata.bin", 0x174, 0x17C - 0x174

	.global Unk_ov77_021D7444
Unk_ov77_021D7444: ; 0x021D7444
	.incbin "incbin/overlay77_rodata.bin", 0x17C, 0x184 - 0x17C

	.global Unk_ov77_021D744C
Unk_ov77_021D744C: ; 0x021D744C
	.incbin "incbin/overlay77_rodata.bin", 0x184, 0x190 - 0x184

	.global Unk_ov77_021D7458
Unk_ov77_021D7458: ; 0x021D7458
	.incbin "incbin/overlay77_rodata.bin", 0x190, 0x19C - 0x190

	.global Unk_ov77_021D7464
Unk_ov77_021D7464: ; 0x021D7464
	.incbin "incbin/overlay77_rodata.bin", 0x19C, 0x1A8 - 0x19C

	.global Unk_ov77_021D7470
Unk_ov77_021D7470: ; 0x021D7470
	.incbin "incbin/overlay77_rodata.bin", 0x1A8, 0x1B4 - 0x1A8

	.global Unk_ov77_021D747C
Unk_ov77_021D747C: ; 0x021D747C
	.incbin "incbin/overlay77_rodata.bin", 0x1B4, 0x1C0 - 0x1B4

	.global Unk_ov77_021D7488
Unk_ov77_021D7488: ; 0x021D7488
	.incbin "incbin/overlay77_rodata.bin", 0x1C0, 0x1CC - 0x1C0

	.global Unk_ov77_021D7494
Unk_ov77_021D7494: ; 0x021D7494
	.incbin "incbin/overlay77_rodata.bin", 0x1CC, 0x1D8 - 0x1CC

	.global Unk_ov77_021D74A0
Unk_ov77_021D74A0: ; 0x021D74A0
	.incbin "incbin/overlay77_rodata.bin", 0x1D8, 0x1E4 - 0x1D8

	.global Unk_ov77_021D74AC
Unk_ov77_021D74AC: ; 0x021D74AC
	.incbin "incbin/overlay77_rodata.bin", 0x1E4, 0x1F4 - 0x1E4

	.global Unk_ov77_021D74BC
Unk_ov77_021D74BC: ; 0x021D74BC
	.incbin "incbin/overlay77_rodata.bin", 0x1F4, 0x204 - 0x1F4

	.global Unk_ov77_021D74CC
Unk_ov77_021D74CC: ; 0x021D74CC
	.incbin "incbin/overlay77_rodata.bin", 0x204, 0x214 - 0x204

	.global Unk_ov77_021D74DC
Unk_ov77_021D74DC: ; 0x021D74DC
	.incbin "incbin/overlay77_rodata.bin", 0x214, 0x224 - 0x214

	.global Unk_ov77_021D74EC
Unk_ov77_021D74EC: ; 0x021D74EC
	.incbin "incbin/overlay77_rodata.bin", 0x224, 0x234 - 0x224

	.global Unk_ov77_021D74FC
Unk_ov77_021D74FC: ; 0x021D74FC
	.incbin "incbin/overlay77_rodata.bin", 0x234, 0x248 - 0x234

	.global Unk_ov77_021D7510
Unk_ov77_021D7510: ; 0x021D7510
	.incbin "incbin/overlay77_rodata.bin", 0x248, 0x264 - 0x248

	.global Unk_ov77_021D752C
Unk_ov77_021D752C: ; 0x021D752C
	.incbin "incbin/overlay77_rodata.bin", 0x264, 0x280 - 0x264

	.global Unk_ov77_021D7548
Unk_ov77_021D7548: ; 0x021D7548
	.incbin "incbin/overlay77_rodata.bin", 0x280, 0x29C - 0x280

	.global Unk_ov77_021D7564
Unk_ov77_021D7564: ; 0x021D7564
	.incbin "incbin/overlay77_rodata.bin", 0x29C, 0x2B8 - 0x29C

	.global Unk_ov77_021D7580
Unk_ov77_021D7580: ; 0x021D7580
	.incbin "incbin/overlay77_rodata.bin", 0x2B8, 0x2D4 - 0x2B8

	.global Unk_ov77_021D759C
Unk_ov77_021D759C: ; 0x021D759C
	.incbin "incbin/overlay77_rodata.bin", 0x2D4, 0x2F0 - 0x2D4

	.global Unk_ov77_021D75B8
Unk_ov77_021D75B8: ; 0x021D75B8
	.incbin "incbin/overlay77_rodata.bin", 0x2F0, 0x30C - 0x2F0

	.global Unk_ov77_021D75D4
Unk_ov77_021D75D4: ; 0x021D75D4
	.incbin "incbin/overlay77_rodata.bin", 0x30C, 0x328 - 0x30C

	.global Unk_ov77_021D75F0
Unk_ov77_021D75F0: ; 0x021D75F0
	.incbin "incbin/overlay77_rodata.bin", 0x328, 0x344 - 0x328

	.global Unk_ov77_021D760C
Unk_ov77_021D760C: ; 0x021D760C
	.incbin "incbin/overlay77_rodata.bin", 0x344, 0x360 - 0x344

	.global Unk_ov77_021D7628
Unk_ov77_021D7628: ; 0x021D7628
	.incbin "incbin/overlay77_rodata.bin", 0x360, 0x37C - 0x360

	.global Unk_ov77_021D7644
Unk_ov77_021D7644: ; 0x021D7644
	.incbin "incbin/overlay77_rodata.bin", 0x37C, 0x398 - 0x37C

	.global Unk_ov77_021D7660
Unk_ov77_021D7660: ; 0x021D7660
	.incbin "incbin/overlay77_rodata.bin", 0x398, 0x3B4 - 0x398

	.global Unk_ov77_021D767C
Unk_ov77_021D767C: ; 0x021D767C
	.incbin "incbin/overlay77_rodata.bin", 0x3B4, 0x3D0 - 0x3B4

	.global Unk_ov77_021D7698
Unk_ov77_021D7698: ; 0x021D7698
	.incbin "incbin/overlay77_rodata.bin", 0x3D0, 0x3EC - 0x3D0

	.global Unk_ov77_021D76B4
Unk_ov77_021D76B4: ; 0x021D76B4
	.incbin "incbin/overlay77_rodata.bin", 0x3EC, 0x408 - 0x3EC

	.global Unk_ov77_021D76D0
Unk_ov77_021D76D0: ; 0x021D76D0
	.incbin "incbin/overlay77_rodata.bin", 0x408, 0x42C - 0x408

	.global Unk_ov77_021D76F4
Unk_ov77_021D76F4: ; 0x021D76F4
	.incbin "incbin/overlay77_rodata.bin", 0x42C, 0x454 - 0x42C

	.global Unk_ov77_021D771C
Unk_ov77_021D771C: ; 0x021D771C
	.incbin "incbin/overlay77_rodata.bin", 0x454, 0x47C - 0x454

	.global Unk_ov77_021D7744
Unk_ov77_021D7744: ; 0x021D7744
	.incbin "incbin/overlay77_rodata.bin", 0x47C, 0x4A4 - 0x47C

	.global Unk_ov77_021D776C
Unk_ov77_021D776C: ; 0x021D776C
	.incbin "incbin/overlay77_rodata.bin", 0x4A4, 0x4D4 - 0x4A4

	.global Unk_ov77_021D779C
Unk_ov77_021D779C: ; 0x021D779C
	.incbin "incbin/overlay77_rodata.bin", 0x4D4, 0x51C - 0x4D4

	.global Unk_ov77_021D77E4
Unk_ov77_021D77E4: ; 0x021D77E4
	.incbin "incbin/overlay77_rodata.bin", 0x51C, 0x570 - 0x51C

	.global Unk_ov77_021D7838
Unk_ov77_021D7838: ; 0x021D7838
	.incbin "incbin/overlay77_rodata.bin", 0x570, 0x5C4 - 0x570

	.global Unk_ov77_021D788C
Unk_ov77_021D788C: ; 0x021D788C
	.incbin "incbin/overlay77_rodata.bin", 0x5C4, 0x10

