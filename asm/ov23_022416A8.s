	.include "macros/function.inc"
	.include "include/ov23_022416A8.inc"

	

	.text


	thumb_func_start ov23_022416A8
ov23_022416A8: ; 0x022416A8
	ldr r3, _022416AC ; =sub_02059514
	bx r3
	; .align 2, 0
_022416AC: .word sub_02059514
	thumb_func_end ov23_022416A8

	thumb_func_start ov23_022416B0
ov23_022416B0: ; 0x022416B0
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0
	ble _022416D4
	bl ov23_0224219C
	mov r1, #0
	add r2, r4, #0
	bl ov23_02254154
	bl ov23_0224219C
	ldr r3, _022416DC ; =ov23_022416A8
	mov r1, #0x4b
	mov r2, #1
	bl ov23_02253F40
	pop {r4, pc}
_022416D4:
	bl ov23_022416A8
	pop {r4, pc}
	nop
_022416DC: .word ov23_022416A8
	thumb_func_end ov23_022416B0

	thumb_func_start ov23_022416E0
ov23_022416E0: ; 0x022416E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _0224176C ; =0x02257744
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0224176A
	ldr r2, _02241770 ; =0x000004DC
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _0224176C ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241774 ; =0x000004C8
	str r4, [r1, r0]
	add r0, r4, #0
	bl sub_0203D174
	bl sub_020298B0
	mov r4, #0
	ldr r7, _0224176C ; =0x02257744
	add r6, r0, #0
	add r5, r4, #0
_02241710:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020290DC
	ldr r1, [r7, #0]
	add r1, r1, r5
	strb r0, [r1, #6]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020290E8
	ldr r1, [r7, #0]
	strh r0, [r1, r5]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029108
	ldr r1, [r7, #0]
	add r1, r1, r5
	strh r0, [r1, #2]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029128
	ldr r1, [r7, #0]
	add r1, r1, r5
	strb r0, [r1, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029134
	ldr r1, [r7, #0]
	add r1, r1, r5
	strb r0, [r1, #5]
	ldr r0, [r7, #0]
	add r0, r0, r5
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _02241762
	bl ov23_022418C0
_02241762:
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x64
	blt _02241710
_0224176A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224176C: .word 0x02257744
_02241770: .word 0x000004DC
_02241774: .word 0x000004C8
	thumb_func_end ov23_022416E0

	thumb_func_start ov23_02241778
ov23_02241778: ; 0x02241778
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _022417BC ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _022417C0 ; =0x000004C8
	ldr r0, [r1, r0]
	bl sub_0203D174
	bl sub_020298B0
	mov r4, #0
	ldr r7, _022417BC ; =0x02257744
	add r6, r0, #0
	add r5, r4, #0
_02241794:
	ldr r3, [r7, #0]
	add r2, r4, #0
	add r1, r3, r5
	ldrh r0, [r1, #2]
	str r0, [sp]
	ldrb r0, [r1, #4]
	str r0, [sp, #4]
	ldrb r0, [r1, #5]
	str r0, [sp, #8]
	ldrb r1, [r1, #6]
	ldrh r3, [r3, r5]
	add r0, r6, #0
	bl sub_02029088
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x64
	blt _02241794
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022417BC: .word 0x02257744
_022417C0: .word 0x000004C8
	thumb_func_end ov23_02241778

	thumb_func_start ov23_022417C4
ov23_022417C4: ; 0x022417C4
	ldr r0, _022417C8 ; =0x000004DC
	bx lr
	; .align 2, 0
_022417C8: .word 0x000004DC
	thumb_func_end ov23_022417C4

	thumb_func_start ov23_022417CC
ov23_022417CC: ; 0x022417CC
	ldr r0, _022417D8 ; =0x02257744
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _022417DC ; =0x000004DA
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_022417D8: .word 0x02257744
_022417DC: .word 0x000004DA
	thumb_func_end ov23_022417CC

	thumb_func_start ov23_022417E0
ov23_022417E0: ; 0x022417E0
	ldr r0, _022417EC ; =0x02257744
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _022417F0 ; =0x000004DA
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_022417EC: .word 0x02257744
_022417F0: .word 0x000004DA
	thumb_func_end ov23_022417E0

	thumb_func_start ov23_022417F4
ov23_022417F4: ; 0x022417F4
	push {r3, lr}
	ldr r0, _0224180C ; =0x02257744
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02241808
	bl sub_020181C4
	ldr r0, _0224180C ; =0x02257744
	mov r1, #0
	str r1, [r0, #0]
_02241808:
	pop {r3, pc}
	nop
_0224180C: .word 0x02257744
	thumb_func_end ov23_022417F4

	thumb_func_start ov23_02241810
ov23_02241810: ; 0x02241810
	push {r3, r4, r5, lr}
	ldr r3, _02241880 ; =0x02257744
	ldr r2, _02241884 ; =0x000004DA
	ldr r0, [r3, #0]
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _0224187E
	sub r1, r2, #6
	ldr r1, [r0, r1]
	add r4, r1, #1
	sub r1, r2, #6
	str r4, [r0, r1]
	ldr r3, [r3, #0]
	add r0, r1, #0
	ldr r1, [r3, r0]
	mov r0, #0x7d
	lsl r0, r0, #4
	cmp r1, r0
	blt _0224183C
	mov r1, #0
	sub r0, r2, #6
	str r1, [r3, r0]
_0224183C:
	ldr r0, _02241880 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241888 ; =0x000004D4
	ldr r4, [r1, r0]
	mov r1, #0x14
	add r0, r4, #0
	bl _s32_div_f
	cmp r1, #0xa
	bne _0224187E
	add r0, r4, #0
	mov r1, #0x14
	bl _s32_div_f
	add r5, r0, #0
	bl ov23_02241D18
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_02241D38
	add r2, r0, #0
	cmp r4, #0
	beq _0224187E
	cmp r2, #0
	beq _0224187E
	ldr r0, _02241880 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _0224188C ; =0x000004C8
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ov5_021F57C8
_0224187E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241880: .word 0x02257744
_02241884: .word 0x000004DA
_02241888: .word 0x000004D4
_0224188C: .word 0x000004C8
	thumb_func_end ov23_02241810

	thumb_func_start ov23_02241890
ov23_02241890: ; 0x02241890
	push {r3, r4}
	ldr r3, _022418BC ; =0x02257744
	lsl r1, r1, #2
	ldr r2, [r3, #0]
	add r4, r2, r1
	mov r2, #0x32
	lsl r2, r2, #4
	ldr r4, [r4, r2]
	cmp r4, #0
	bne _022418AA
	mov r0, #0
	pop {r3, r4}
	bx lr
_022418AA:
	ldrh r4, [r4]
	strh r4, [r0]
	ldr r3, [r3, #0]
	add r1, r3, r1
	ldr r1, [r1, r2]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022418BC: .word 0x02257744
	thumb_func_end ov23_02241890

	thumb_func_start ov23_022418C0
ov23_022418C0: ; 0x022418C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldrh r0, [r0]
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [sp]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r1, _02241920 ; =ov23_02241890
	mov r0, #0x64
	bl ov23_022427DC
	add r0, sp, #4
	bl ov23_02242788
	add r4, r0, #0
	cmp r4, #0x64
	blt _022418EA
	bl GF_AssertFail
_022418EA:
	mov r5, #0x63
	cmp r4, #0x63
	bge _0224190A
	mov r7, #0xc7
	lsl r7, r7, #2
	ldr r1, _02241924 ; =0x02257744
	lsl r6, r5, #2
	add r0, r7, #4
_022418FA:
	ldr r2, [r1, #0]
	sub r5, r5, #1
	add r3, r2, r6
	ldr r2, [r3, r7]
	sub r6, r6, #4
	str r2, [r3, r0]
	cmp r5, r4
	bgt _022418FA
_0224190A:
	ldr r0, _02241924 ; =0x02257744
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r2, r1, r0
	mov r1, #0x32
	ldr r0, [sp]
	lsl r1, r1, #4
	str r0, [r2, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241920: .word ov23_02241890
_02241924: .word 0x02257744
	thumb_func_end ov23_022418C0

	thumb_func_start ov23_02241928
ov23_02241928: ; 0x02241928
	push {r4, r5, r6, lr}
	ldr r0, _0224195C ; =0x02257744
	mov r2, #0x32
	ldr r0, [r0, #0]
	lsl r2, r2, #4
	add r0, r0, r2
	mov r1, #0
	lsr r2, r2, #1
	bl MI_CpuFill8
	mov r4, #0
	ldr r6, _0224195C ; =0x02257744
	add r5, r4, #0
_02241942:
	ldr r0, [r6, #0]
	add r0, r0, r5
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _02241950
	bl ov23_022418C0
_02241950:
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x64
	blt _02241942
	pop {r4, r5, r6, pc}
	nop
_0224195C: .word 0x02257744
	thumb_func_end ov23_02241928

	thumb_func_start ov23_02241960
ov23_02241960: ; 0x02241960
	mov r2, #0
_02241962:
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _02241972
	add r2, r2, #1
	add r0, #8
	cmp r2, #0x64
	blt _02241962
	mov r0, #0
_02241972:
	bx lr
	thumb_func_end ov23_02241960

	thumb_func_start ov23_02241974
ov23_02241974: ; 0x02241974
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02241974

	thumb_func_start ov23_02241978
ov23_02241978: ; 0x02241978
	push {r3, lr}
	add r2, sp, #0
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r1, _022419AC ; =ov23_02241890
	mov r0, #0x64
	bl ov23_022427DC
	add r0, sp, #0
	bl ov23_0224271C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0224199A
	mov r0, #0
	pop {r3, pc}
_0224199A:
	ldr r1, _022419B0 ; =0x02257744
	lsl r0, r0, #2
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	pop {r3, pc}
	nop
_022419AC: .word ov23_02241890
_022419B0: .word 0x02257744
	thumb_func_end ov23_02241978

	thumb_func_start ov23_022419B4
ov23_022419B4: ; 0x022419B4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, r5
	bne _02241A68
	bl sub_02058D88
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02058DC0
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02241978
	add r4, r0, #0
	beq _02241A68
	bl sub_020594FC
	ldrb r2, [r4, #4]
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	add r1, r2, r1
	bl ov23_0224F6E0
	cmp r0, #0
	beq _02241A5A
	ldr r0, _02241A6C ; =0x02257744
	ldrb r2, [r4, #6]
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02241A70 ; =0x000004CC
	strb r2, [r1, r0]
	ldr r0, _02241A74 ; =0x000005E3
	bl sub_02005748
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	mov r5, #0x63
	add r0, r1, r0
	cmp r0, #0x63
	bge _02241A10
	add r5, r0, #0
_02241A10:
	bl ov23_0224219C
	mov r1, #1
	add r2, r5, #0
	bl ov23_02254154
	bl ov23_0224219C
	ldrb r2, [r4, #6]
	mov r1, #2
	bl ov23_022541DC
	ldrb r5, [r4, #5]
	ldrb r1, [r4, #4]
	add r0, r5, r1
	cmp r0, #0x63
	ble _02241A36
	mov r0, #0x63
	sub r5, r0, r1
_02241A36:
	bl ov23_0224219C
	ldr r3, _02241A78 ; =ov23_022416B0
	mov r1, #0x45
	mov r2, #1
	str r5, [sp]
	bl ov23_02253F78
	bl ov23_0224219C
	bl ov23_02253F98
	add r0, r4, #0
	bl ov23_02241C48
	bl ov23_02241778
	pop {r3, r4, r5, pc}
_02241A5A:
	bl ov23_0224219C
	ldr r3, _02241A7C ; =ov23_022416A8
	mov r1, #0x53
	mov r2, #1
	bl ov23_02253F40
_02241A68:
	pop {r3, r4, r5, pc}
	nop
_02241A6C: .word 0x02257744
_02241A70: .word 0x000004CC
_02241A74: .word 0x000005E3
_02241A78: .word ov23_022416B0
_02241A7C: .word ov23_022416A8
	thumb_func_end ov23_022419B4

	thumb_func_start ov23_02241A80
ov23_02241A80: ; 0x02241A80
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0]
	bx lr
	thumb_func_end ov23_02241A80

	thumb_func_start ov23_02241A88
ov23_02241A88: ; 0x02241A88
	push {r3, r4, r5, r6}
	ldrh r6, [r0, #2]
	mov r2, #0
	ldrh r3, [r0]
	cmp r6, #0
	blt _02241AE2
	add r5, r2, #0
_02241A96:
	sub r4, r3, r5
	cmp r4, #0
	ble _02241AA0
	add r3, r4, #0
	b _02241ADA
_02241AA0:
	cmp r3, #0
	beq _02241AA6
	sub r3, r3, #1
_02241AA6:
	lsl r4, r2, #1
	cmp r3, r4
	bge _02241AB0
	sub r5, r2, r3
	b _02241AB4
_02241AB0:
	add r5, r2, r4
	sub r5, r3, r5
_02241AB4:
	cmp r3, r2
	blt _02241ACA
	lsl r6, r2, #1
	add r6, r2, r6
	cmp r3, r6
	bge _02241AC4
	sub r3, r4, r3
	b _02241ACA
_02241AC4:
	lsl r2, r2, #2
	neg r2, r2
	add r3, r2, r3
_02241ACA:
	strh r3, [r1]
	strh r5, [r1, #2]
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02241ADA:
	add r2, r2, #1
	add r5, r5, #4
	cmp r2, r6
	ble _02241A96
_02241AE2:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov23_02241A88

	thumb_func_start ov23_02241AE8
ov23_02241AE8: ; 0x02241AE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	add r6, r2, #0
	add r1, sp, #0xc
	add r7, r3, #0
	strh r6, [r1]
	strh r7, [r1, #2]
	ldr r0, [sp]
	strb r5, [r1, #4]
	strb r0, [r1, #6]
	ldr r0, [sp, #8]
	strb r0, [r1, #5]
	add r0, r6, #0
	add r1, r7, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _02241B26
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x54
	add r3, r2, #0
	bl ov23_02253F40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241B26:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02058108
	cmp r0, #0
	beq _02241B44
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x37
	add r3, r2, #0
	bl ov23_02253F40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241B44:
	ldr r0, _02241C3C ; =0x02257744
	add r2, r7, #0
	ldr r1, [r0, #0]
	ldr r0, _02241C40 ; =0x000004C8
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_02054F68
	cmp r0, #0
	beq _02241B6A
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	bl ov23_02253F40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241B6A:
	add r0, r6, #0
	add r1, r7, #0
	bl ov23_02241978
	add r4, r0, #0
	add r0, sp, #0xc
	beq _02241BC2
	ldrb r1, [r4, #6]
	ldrb r0, [r0, #6]
	cmp r1, r0
	bne _02241BB2
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	cmp r0, r5
	ble _02241B96
	add r0, r5, #0
	mov r1, #5
	bl _s32_div_f
	ldr r1, [sp, #4]
	add r0, r1, r0
	b _02241B9E
_02241B96:
	mov r1, #5
	bl _s32_div_f
	add r0, r5, r0
_02241B9E:
	add r0, r0, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #4]
	cmp r0, #0x63
	bls _02241BAC
	mov r0, #0x63
	strb r0, [r4, #4]
_02241BAC:
	mov r0, #1
	str r0, [sp, #8]
	b _02241BCA
_02241BB2:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x3b
	add r3, r2, #0
	bl ov23_02253F40
	b _02241BCA
_02241BC2:
	bl ov23_02241CAC
	mov r0, #1
	str r0, [sp, #8]
_02241BCA:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02241C38
	bl ov23_0224219C
	ldr r2, [sp]
	mov r1, #0
	bl ov23_022541A0
	bl ov23_0224219C
	mov r1, #1
	add r2, r5, #0
	bl ov23_02254154
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x3a
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, [sp]
	bl ov23_02250128
	ldr r0, _02241C44 ; =0x00000631
	bl sub_02005748
	ldr r0, _02241C3C ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241C40 ; =0x000004C8
	ldr r0, [r1, r0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AA14
	ldr r0, _02241C3C ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241C40 ; =0x000004C8
	ldr r0, [r1, r0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x2f
	bl sub_0202CF28
	ldr r0, _02241C3C ; =0x02257744
	add r2, r7, #0
	ldr r1, [r0, #0]
	ldr r0, _02241C40 ; =0x000004C8
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ov5_021F57C8
_02241C38:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02241C3C: .word 0x02257744
_02241C40: .word 0x000004C8
_02241C44: .word 0x00000631
	thumb_func_end ov23_02241AE8

	thumb_func_start ov23_02241C48
ov23_02241C48: ; 0x02241C48
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02241CA4 ; =0x02257744
	mov r1, #0
	ldr r0, [r0, #0]
	mvn r1, r1
	mov r4, #0
_02241C56:
	cmp r0, r6
	bne _02241C5E
	add r1, r4, #0
	b _02241C66
_02241C5E:
	add r4, r4, #1
	add r0, #8
	cmp r4, #0x64
	blt _02241C56
_02241C66:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02241C72
	bl GF_AssertFail
_02241C72:
	cmp r4, #0x63
	bge _02241C92
	ldr r7, _02241CA4 ; =0x02257744
	lsl r5, r4, #3
_02241C7A:
	add r0, r4, #1
	ldr r1, [r7, #0]
	lsl r0, r0, #3
	add r0, r1, r0
	add r1, r1, r5
	mov r2, #8
	bl MI_CpuCopy8
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x63
	blt _02241C7A
_02241C92:
	ldr r0, _02241CA4 ; =0x02257744
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02241CA8 ; =0x0000031E
	strb r2, [r1, r0]
	add r0, r6, #0
	bl ov23_02241928
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241CA4: .word 0x02257744
_02241CA8: .word 0x0000031E
	thumb_func_end ov23_02241C48

	thumb_func_start ov23_02241CAC
ov23_02241CAC: ; 0x02241CAC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02241CF0 ; =0x02257744
	ldr r0, [r0, #0]
	bl ov23_02241960
	add r5, r0, #0
	bne _02241CD8
	ldr r0, _02241CF0 ; =0x02257744
	ldr r0, [r0, #0]
	bl ov23_02241974
	bl ov23_02241C48
	ldr r0, _02241CF0 ; =0x02257744
	ldr r0, [r0, #0]
	bl ov23_02241960
	add r5, r0, #0
	bne _02241CD8
	bl GF_AssertFail
_02241CD8:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl MI_CpuCopy8
	add r0, r5, #0
	bl ov23_022418C0
	bl ov23_02241778
	pop {r3, r4, r5, pc}
	nop
_02241CF0: .word 0x02257744
	thumb_func_end ov23_02241CAC

	thumb_func_start ov23_02241CF4
ov23_02241CF4: ; 0x02241CF4
	cmp r0, #0
	beq _02241D00
	cmp r0, #0xb
	bge _02241D00
	mov r0, #1
	bx lr
_02241D00:
	mov r0, #0
	bx lr
	thumb_func_end ov23_02241CF4

	thumb_func_start ov23_02241D04
ov23_02241D04: ; 0x02241D04
	push {r3, lr}
	bl ov23_02241978
	cmp r0, #0
	beq _02241D12
	mov r0, #1
	pop {r3, pc}
_02241D12:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_02241D04

	thumb_func_start ov23_02241D18
ov23_02241D18: ; 0x02241D18
	ldr r1, _02241D34 ; =0x02257744
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241D2E
	lsl r1, r0, #3
	add r0, r2, r1
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _02241D2E
	ldrh r0, [r2, r1]
	bx lr
_02241D2E:
	mov r0, #0
	bx lr
	nop
_02241D34: .word 0x02257744
	thumb_func_end ov23_02241D18

	thumb_func_start ov23_02241D38
ov23_02241D38: ; 0x02241D38
	ldr r1, _02241D54 ; =0x02257744
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02241D4E
	lsl r0, r0, #3
	add r1, r1, r0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _02241D4E
	ldrh r0, [r1, #2]
	bx lr
_02241D4E:
	mov r0, #0
	bx lr
	nop
_02241D54: .word 0x02257744
	thumb_func_end ov23_02241D38

	thumb_func_start ov23_02241D58
ov23_02241D58: ; 0x02241D58
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _02241DF0 ; =0x02257744
	mov r5, #0
	ldr r2, [r0, #0]
	add r6, r5, #0
	add r7, r5, #0
	cmp r2, #0
	bne _02241D6E
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241D6E:
	ldr r0, _02241DF4 ; =0x000004CC
	add r4, r5, #0
_02241D72:
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02241DCE
	mov r0, #4
	bl sub_0200B358
	add r5, r0, #0
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	ldr r2, _02241DF0 ; =0x02257744
	add r6, r0, #0
	ldr r2, [r2, #0]
	add r0, r5, #0
	add r3, r2, r4
	ldr r2, _02241DF4 ; =0x000004CC
	mov r1, #2
	ldrb r2, [r3, r2]
	bl sub_0200BACC
	add r0, r5, #0
	mov r1, #2
	bl sub_0200C324
	bl ov23_0224219C
	bl ov23_02253E3C
	mov r1, #0x5f
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0200C388
	ldr r1, _02241DF0 ; =0x02257744
	mov r0, #0
	ldr r1, [r1, #0]
	mov r7, #1
	add r2, r1, r4
	ldr r1, _02241DF4 ; =0x000004CC
	strb r0, [r2, r1]
	b _02241DD6
_02241DCE:
	add r4, r4, #1
	add r2, r2, #1
	cmp r4, #8
	blt _02241D72
_02241DD6:
	cmp r6, #0
	beq _02241DE0
	add r0, r6, #0
	bl sub_020237BC
_02241DE0:
	cmp r5, #0
	beq _02241DEA
	add r0, r5, #0
	bl sub_0200B3F0
_02241DEA:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241DF0: .word 0x02257744
_02241DF4: .word 0x000004CC
	thumb_func_end ov23_02241D58

	thumb_func_start ov23_02241DF8
ov23_02241DF8: ; 0x02241DF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02241E44 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241E48 ; =0x000004C8
	ldr r0, [r1, r0]
	bl sub_0203D174
	bl sub_020298B0
	add r4, r0, #0
	mov r5, #0
_02241E10:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020290DC
	cmp r0, #0
	beq _02241E38
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020290E8
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02029108
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl ov23_0223E650
_02241E38:
	add r5, r5, #1
	cmp r5, #0x64
	blt _02241E10
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241E44: .word 0x02257744
_02241E48: .word 0x000004C8
	thumb_func_end ov23_02241DF8

	thumb_func_start ov23_02241E4C
ov23_02241E4C: ; 0x02241E4C
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x64
	bls _02241E66
	ldr r0, _02241E68 ; =0x0000054A
	bl sub_02005748
	mov r0, #0
	strh r0, [r4, #2]
_02241E66:
	pop {r4, pc}
	; .align 2, 0
_02241E68: .word 0x0000054A
	thumb_func_end ov23_02241E4C

	thumb_func_start ov23_02241E6C
ov23_02241E6C: ; 0x02241E6C
	push {r4, lr}
	ldr r0, _02241EC4 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241EC8 ; =0x000004C4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241E7E
	bl GF_AssertFail
_02241E7E:
	ldr r0, _02241EC4 ; =0x02257744
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241E90
	bl GF_AssertFail
_02241E90:
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	mov r1, #0
	mov r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r2, #0x64
	ldr r0, _02241EC4 ; =0x02257744
	strh r2, [r4, #2]
	ldr r1, [r0, #0]
	ldr r0, _02241EC8 ; =0x000004C4
	str r4, [r1, r0]
	ldr r0, _02241ECC ; =ov23_02241E4C
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02241EC4 ; =0x02257744
	ldr r2, [r1, #0]
	mov r1, #0x13
	lsl r1, r1, #6
	str r0, [r2, r1]
	pop {r4, pc}
	nop
_02241EC4: .word 0x02257744
_02241EC8: .word 0x000004C4
_02241ECC: .word ov23_02241E4C
	thumb_func_end ov23_02241E6C

	thumb_func_start ov23_02241ED0
ov23_02241ED0: ; 0x02241ED0
	push {r3, lr}
	ldr r0, _02241F04 ; =0x02257744
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241F02
	bl sub_0200DA58
	ldr r0, _02241F04 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241F08 ; =0x000004C4
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _02241F04 ; =0x02257744
	mov r0, #0x13
	ldr r2, [r1, #0]
	mov r3, #0
	lsl r0, r0, #6
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, r0, #4
	str r3, [r1, r0]
_02241F02:
	pop {r3, pc}
	; .align 2, 0
_02241F04: .word 0x02257744
_02241F08: .word 0x000004C4
	thumb_func_end ov23_02241ED0

	thumb_func_start ov23_02241F0C
ov23_02241F0C: ; 0x02241F0C
	push {r3, lr}
	ldr r1, _02241F38 ; =0x02257744
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241F32
	ldr r1, _02241F3C ; =0x000004C4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02241F32
	ldrh r1, [r1, #2]
	lsr r1, r1, #1
	add r0, r1, r0
	mov r1, #0x64
	bl _s32_div_f
	add r0, r1, #0
	bl ov23_02241D18
	pop {r3, pc}
_02241F32:
	mov r0, #0
	pop {r3, pc}
	nop
_02241F38: .word 0x02257744
_02241F3C: .word 0x000004C4
	thumb_func_end ov23_02241F0C

	thumb_func_start ov23_02241F40
ov23_02241F40: ; 0x02241F40
	push {r3, lr}
	ldr r1, _02241F6C ; =0x02257744
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241F66
	ldr r1, _02241F70 ; =0x000004C4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02241F66
	ldrh r1, [r1, #2]
	lsr r1, r1, #1
	add r0, r1, r0
	mov r1, #0x64
	bl _s32_div_f
	add r0, r1, #0
	bl ov23_02241D38
	pop {r3, pc}
_02241F66:
	mov r0, #0
	pop {r3, pc}
	nop
_02241F6C: .word 0x02257744
_02241F70: .word 0x000004C4
	thumb_func_end ov23_02241F40
	.bss


	.global Unk_ov23_02257744
Unk_ov23_02257744: ; 0x02257744
	.space 0x4

