	.include "macros/function.inc"
	.include "include/ov17_022413D8.inc"

	

	.text


	thumb_func_start ov17_022413D8
ov17_022413D8: ; 0x022413D8
	ldr r0, _022413E0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
_022413E0: .word 0x04000050
	thumb_func_end ov17_022413D8

	thumb_func_start ov17_022413E4
ov17_022413E4: ; 0x022413E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0x30]
	add r5, r1, #0
	mov r1, #2
	add r4, r2, #0
	bl sub_02019FE4
	mov r1, #0xc0
	mul r1, r5
	lsl r1, r1, #1
	mov r2, #0
	ldr r6, _02241424 ; =0x00000FFF
	add r0, r0, r1
	add r3, r2, #0
	lsl r4, r4, #0xc
_02241402:
	lsl r5, r3, #1
	mov r1, #0
	add r5, r0, r5
_02241408:
	ldrh r7, [r5]
	add r1, r1, #1
	and r7, r6
	orr r7, r4
	strh r7, [r5]
	add r5, r5, #2
	cmp r1, #0xa
	blt _02241408
	add r2, r2, #1
	add r3, #0x20
	cmp r2, #6
	blt _02241402
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241424: .word 0x00000FFF
	thumb_func_end ov17_022413E4

	thumb_func_start ov17_02241428
ov17_02241428: ; 0x02241428
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	ldr r6, _02241454 ; =0x022536B4
	ldr r7, _02241458 ; =0x00000231
	b _02241444
_02241434:
	add r2, r5, r4
	ldrb r2, [r2, r7]
	add r0, r5, #0
	add r1, r4, #0
	ldrb r2, [r6, r2]
	bl ov17_022413E4
	add r4, r4, #1
_02241444:
	cmp r4, #4
	blt _02241434
	ldr r0, [r5, #0x30]
	mov r1, #2
	bl sub_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241454: .word 0x022536B4
_02241458: .word 0x00000231
	thumb_func_end ov17_02241428

	thumb_func_start ov17_0224145C
ov17_0224145C: ; 0x0224145C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0x5c]
	ldr r2, _0224148C ; =0x00009CA4
	str r0, [r4, #0]
	ldr r0, _02241490 ; =ov17_022414C0
	add r1, r4, #0
	strb r6, [r4, #0xa]
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0224148C: .word 0x00009CA4
_02241490: .word ov17_022414C0
	thumb_func_end ov17_0224145C

	thumb_func_start ov17_02241494
ov17_02241494: ; 0x02241494
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _022414A2
	bl GF_AssertFail
_022414A2:
	ldr r0, [r4, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov17_02241494

	thumb_func_start ov17_022414B0
ov17_022414B0: ; 0x022414B0
	mov r1, #1
	strb r1, [r0, #0xb]
	mov r1, #0xa
	lsl r1, r1, #8
	strh r1, [r0, #8]
	bx lr
	thumb_func_end ov17_022414B0

	thumb_func_start ov17_022414BC
ov17_022414BC: ; 0x022414BC
	ldrb r0, [r0, #0xb]
	bx lr
	thumb_func_end ov17_022414BC

	thumb_func_start ov17_022414C0
ov17_022414C0: ; 0x022414C0
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _02241516
	mov r0, #8
	ldrsh r0, [r4, r0]
	ldr r2, _0224151C ; =0x022536B4
	mov r1, #0
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _02241520 ; =0x00007FFF
	str r0, [sp, #4]
	ldrb r3, [r4, #0xa]
	ldr r0, [r4, #0]
	ldrb r2, [r2, r3]
	mov r3, #4
	lsl r2, r2, #4
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_020039B0
	mov r1, #8
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bne _02241504
	mov r0, #0
	add sp, #8
	strb r0, [r4, #0xb]
	pop {r4, pc}
_02241504:
	mov r0, #0xa
	lsl r0, r0, #6
	sub r0, r2, r0
	strh r0, [r4, #8]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _02241516
	mov r0, #0
	strh r0, [r4, #8]
_02241516:
	add sp, #8
	pop {r4, pc}
	nop
_0224151C: .word 0x022536B4
_02241520: .word 0x00007FFF
	thumb_func_end ov17_022414C0

	thumb_func_start ov17_02241524
ov17_02241524: ; 0x02241524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r0, [sp, #0x18]
	add r0, #8
	str r0, [sp, #0x18]
	add r6, r1, #0
	lsl r0, r6, #2
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	bl sub_02007DC8
	lsl r0, r6, #4
	add r0, r5, r0
	ldr r0, [r0, #0x58]
	cmp r0, #0
	bne _0224154C
	bl GF_AssertFail
_0224154C:
	add r2, r5, #0
	add r2, #0x58
	lsl r1, r6, #4
	add r0, r2, r1
	str r0, [sp, #0x14]
	ldr r0, [r2, r1]
	mov r2, #0x32
	mov r1, #0
	lsl r2, r2, #6
	bl MI_CpuFill8
	ldr r1, [sp, #0x14]
	lsl r0, r6, #5
	str r1, [sp]
	mov r1, #0x15
	str r1, [sp, #4]
	mov r1, #0xd8
	sub r1, r1, r0
	str r1, [sp, #8]
	mov r1, #0x70
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, _022415E0 ; =0xFFFFFE00
	add r7, r5, #0
	str r0, [sp, #0x10]
	ldr r2, [r5, #0]
	lsl r4, r6, #2
	ldr r0, [r5, #4]
	ldr r2, [r2, r4]
	add r7, #8
	add r1, r6, #0
	mov r3, #0
	bl sub_02095484
	str r0, [r7, r4]
	ldr r0, [r7, r4]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r7, r4]
	mov r1, #0x25
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #5
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x70
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022384F0
	cmp r0, #1
	bne _022415DA
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r2, #1
	ldr r0, [r1, r0]
	mov r1, #0x23
	bl sub_02007DEC
_022415DA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022415E0: .word 0xFFFFFE00
	thumb_func_end ov17_02241524

	thumb_func_start ov17_022415E4
ov17_022415E4: ; 0x022415E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	add r7, r0, #0
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0x58
	ldr r4, [sp, #0x1c]
	str r6, [sp, #0x18]
	str r0, [sp, #0x14]
	add r5, r6, #0
_022415FE:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0224160A
	bl GF_AssertFail
_0224160A:
	mov r1, #0x32
	mov r0, #0x15
	lsl r1, r1, #6
	bl sub_02018144
	ldr r1, [sp, #0x18]
	mov r3, #0
	str r0, [r1, #0x58]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0xd8
	sub r0, r0, r7
	str r0, [sp, #8]
	mov r0, #0x70
	sub r0, r0, r7
	str r0, [sp, #0xc]
	ldr r0, _022416E0 ; =0xFFFFFE00
	str r0, [sp, #0x10]
	ldr r2, [r6, #0]
	ldr r0, [r6, #4]
	ldr r2, [r2, r4]
	bl sub_02095484
	str r0, [r5, #8]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r5, #8]
	mov r1, #0x25
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r6, #0]
	mov r1, #5
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	ldr r0, [r6, #0]
	mov r1, #0x70
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl ov12_022384F0
	cmp r0, #1
	bne _02241682
	ldr r0, [r5, #8]
	mov r1, #0x23
	mov r2, #1
	bl sub_02007DEC
_02241682:
	ldr r0, [sp, #0x18]
	add r7, #0x20
	add r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	blt _022415FE
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022416AC
	bl GF_AssertFail
_022416AC:
	mov r1, #0x32
	mov r0, #0x15
	lsl r1, r1, #6
	bl sub_02018144
	add r1, r6, #0
	add r1, #0x98
	str r0, [r1, #0]
	add r0, r6, #0
	mov r2, #0x32
	ldr r1, [r6, #0x60]
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r6, #0
	ldr r1, [r6, #0x5c]
	add r0, #0x9c
	str r1, [r0, #0]
	add r6, #0x98
	ldr r1, [r6, #0]
	mov r0, #0
	lsl r2, r2, #6
	bl MIi_CpuClear32
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022416E0: .word 0xFFFFFE00
	thumb_func_end ov17_022415E4

	thumb_func_start ov17_022416E4
ov17_022416E4: ; 0x022416E4
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	str r0, [sp]
	add r4, r0, #0
	add r5, r0, #0
	add r7, r6, #0
_022416F0:
	ldr r0, [r4, #8]
	bl sub_02007DC8
	ldr r0, [r5, #0x58]
	bl sub_020181C4
	str r7, [r5, #0x58]
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #4
	blt _022416F0
	ldr r0, [sp]
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [sp]
	mov r1, #0
	add r0, #0x98
	str r0, [sp]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_022416E4

	thumb_func_start ov17_02241720
ov17_02241720: ; 0x02241720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r5, [sp, #0x70]
	add r6, r1, #0
	str r0, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r4, [sp, #0x74]
	cmp r5, #0
	beq _02241738
	cmp r5, #1
	beq _02241746
	b _02241754
_02241738:
	mov r0, #0x20
	str r0, [sp, #0x24]
	mov r0, #0x1e
	mov r3, #0x1f
	mov r7, #1
	str r0, [sp, #0x20]
	b _02241760
_02241746:
	mov r0, #0x26
	str r0, [sp, #0x24]
	mov r0, #0x24
	mov r3, #0x25
	mov r7, #3
	str r0, [sp, #0x20]
	b _02241760
_02241754:
	mov r0, #0x23
	str r0, [sp, #0x24]
	mov r0, #0x21
	mov r3, #0x22
	mov r7, #2
	str r0, [sp, #0x20]
_02241760:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02241808 ; =0x000080E9
	ldr r1, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CC3C
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0224180C ; =0x000080EA
	ldr r3, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r2, r6, #0
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241808 ; =0x000080E9
	ldr r1, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241808 ; =0x000080E9
	ldr r1, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE54
	ldr r4, _02241810 ; =0x022538BC
	add r3, sp, #0x28
	mov r2, #6
_022417C8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022417C8
	ldr r0, [r4, #0]
	add r2, sp, #0x28
	str r0, [r3, #0]
	ldr r0, _02241808 ; =0x000080E9
	add r1, r5, r0
	add r0, r0, #1
	add r0, r5, r0
	str r0, [sp, #0x40]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	lsl r1, r5, #5
	add r1, #0x60
	add r0, sp, #0x28
	strh r1, [r0]
	mov r1, #0x28
	strh r1, [r0, #2]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02241808: .word 0x000080E9
_0224180C: .word 0x000080EA
_02241810: .word 0x022538BC
	thumb_func_end ov17_02241720

	thumb_func_start ov17_02241814
ov17_02241814: ; 0x02241814
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0200D0F4
	ldr r1, _0224184C ; =0x000080E9
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0200D070
	ldr r1, _02241850 ; =0x000080EA
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0200D080
	ldr r1, _0224184C ; =0x000080E9
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0200D090
	ldr r1, _0224184C ; =0x000080E9
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	nop
_0224184C: .word 0x000080E9
_02241850: .word 0x000080EA
	thumb_func_end ov17_02241814

	thumb_func_start ov17_02241854
ov17_02241854: ; 0x02241854
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022418A0 ; =0x000080EC
	add r6, r3, #0
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0x27
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022418A0 ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x28
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022418A0 ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x29
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022418A0: .word 0x000080EC
	thumb_func_end ov17_02241854

	thumb_func_start ov17_022418A4
ov17_022418A4: ; 0x022418A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _022418F8 ; =0x022536F0
	add r6, r2, #0
	add r3, r0, #0
	add r7, r1, #0
	ldmia r4!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r5, _022418FC ; =0x02253820
	str r0, [r2, #0]
	add r4, sp, #0xc
	mov r2, #6
_022418C0:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _022418C0
	ldr r0, [r5, #0]
	lsl r1, r6, #5
	str r0, [r4, #0]
	add r1, #0x60
	add r0, sp, #0
	strh r1, [r0, #0xc]
	mov r1, #0x20
	strh r1, [r0, #0xe]
	lsl r1, r6, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add r1, r7, #0
	str r0, [sp, #0x18]
	add r0, r3, #0
	add r2, sp, #0xc
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022418F8: .word 0x022536F0
_022418FC: .word 0x02253820
	thumb_func_end ov17_022418A4

	thumb_func_start ov17_02241900
ov17_02241900: ; 0x02241900
	ldr r3, _02241904 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_02241904: .word sub_0200D0F4
	thumb_func_end ov17_02241900

	thumb_func_start ov17_02241908
ov17_02241908: ; 0x02241908
	push {r4, lr}
	ldr r1, _02241924 ; =0x000080EC
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02241924 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02241924 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_02241924: .word 0x000080EC
	thumb_func_end ov17_02241908

	thumb_func_start ov17_02241928
ov17_02241928: ; 0x02241928
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r2, [sp, #8]
	add r6, r1, #0
	ldr r0, [r7, #0x50]
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	ldr r3, [sp, #8]
	bl ov17_02241854
	mov r4, #0
	add r5, r7, #0
	add r6, #0xd0
_02241944:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, r4, #0
	bl ov17_022418A4
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1, #0]
	ldr r0, [sp, #8]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0x50]
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	add r3, r6, #0
	bl ov17_02241720
	add r1, r5, #0
	add r1, #0xa8
	add r4, r4, #1
	str r0, [r1, #0]
	add r5, r5, #4
	add r6, #8
	cmp r4, #3
	blt _02241944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02241928

	thumb_func_start ov17_0224197C
ov17_0224197C: ; 0x0224197C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02241984:
	add r1, r5, #0
	add r1, #0xa8
	ldr r0, [r6, #0x1c]
	ldr r1, [r1, #0]
	add r2, r4, #0
	bl ov17_02241814
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl ov17_02241900
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _02241984
	ldr r0, [r6, #0x1c]
	bl ov17_02241908
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224197C

	thumb_func_start ov17_022419AC
ov17_022419AC: ; 0x022419AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022419F8 ; =0x000080F5
	add r6, r3, #0
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0xe
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022419FC ; =0x000080F3
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xd
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022419FC ; =0x000080F3
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xc
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022419F8: .word 0x000080F5
_022419FC: .word 0x000080F3
	thumb_func_end ov17_022419AC

	thumb_func_start ov17_02241A00
ov17_02241A00: ; 0x02241A00
	push {r4, lr}
	ldr r1, _02241A1C ; =0x000080F5
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02241A20 ; =0x000080F3
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02241A20 ; =0x000080F3
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_02241A1C: .word 0x000080F5
_02241A20: .word 0x000080F3
	thumb_func_end ov17_02241A00

	thumb_func_start ov17_02241A24
ov17_02241A24: ; 0x02241A24
	push {r4, r5, lr}
	sub sp, #0x34
	ldr r4, _02241A60 ; =0x022537B8
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #6
_02241A30:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02241A30
	ldr r0, [r4, #0]
	add r2, sp, #0
	str r0, [r3, #0]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	bl sub_0200D324
	mov r0, #0x5f
	lsl r0, r0, #2
	str r4, [r5, r0]
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02241A60: .word 0x022537B8
	thumb_func_end ov17_02241A24

	thumb_func_start ov17_02241A64
ov17_02241A64: ; 0x02241A64
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241A76
	bl GF_AssertFail
_02241A76:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	mov r0, #0x5f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02241A64

	thumb_func_start ov17_02241A8C
ov17_02241A8C: ; 0x02241A8C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r6, r1, #0
	add r5, r2, #0
	cmp r0, #0
	bne _02241AA2
	bl GF_AssertFail
_02241AA2:
	ldr r1, _02241B08 ; =0x022536E4
	lsl r2, r6, #2
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r3, _02241B0C ; =0x022536E6
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl sub_0200D4C4
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200D364
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	cmp r5, #3
	bhi _02241B04
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241ADE: ; jump table
	.short _02241AE6 - _02241ADE - 2 ; case 0
	.short _02241AEE - _02241ADE - 2 ; case 1
	.short _02241AF6 - _02241ADE - 2 ; case 2
	.short _02241AFE - _02241ADE - 2 ; case 3
_02241AE6:
	ldr r0, _02241B10 ; =0x000006E1
	bl sub_02005748
	pop {r4, r5, r6, pc}
_02241AEE:
	ldr r0, _02241B14 ; =0x000006DF
	bl sub_02005748
	pop {r4, r5, r6, pc}
_02241AF6:
	ldr r0, _02241B18 ; =0x000005DD
	bl sub_02005748
	pop {r4, r5, r6, pc}
_02241AFE:
	ldr r0, _02241B18 ; =0x000005DD
	bl sub_02005748
_02241B04:
	pop {r4, r5, r6, pc}
	nop
_02241B08: .word 0x022536E4
_02241B0C: .word 0x022536E6
_02241B10: .word 0x000006E1
_02241B14: .word 0x000006DF
_02241B18: .word 0x000005DD
	thumb_func_end ov17_02241A8C

	thumb_func_start ov17_02241B1C
ov17_02241B1C: ; 0x02241B1C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241B2E
	bl GF_AssertFail
_02241B2E:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	pop {r4, pc}
	thumb_func_end ov17_02241B1C

	thumb_func_start ov17_02241B3C
ov17_02241B3C: ; 0x02241B3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x15
	mov r1, #0x28
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	strb r0, [r7]
	str r7, [r4, #4]
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [sp]
	str r5, [r4, #0]
	strb r0, [r4, #8]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r1, #0xc
	add r2, #0xe
	bl sub_0200D550
	cmp r6, #6
	bhi _02241B96
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241B88: ; jump table
	.short _02241B96 - _02241B88 - 2 ; case 0
	.short _02241BAC - _02241B88 - 2 ; case 1
	.short _02241BB8 - _02241B88 - 2 ; case 2
	.short _02241BC8 - _02241B88 - 2 ; case 3
	.short _02241BD8 - _02241B88 - 2 ; case 4
	.short _02241BE8 - _02241B88 - 2 ; case 5
	.short _02241BF8 - _02241B88 - 2 ; case 6
_02241B96:
	mov r0, #1
	strb r0, [r4, #0x18]
	ldr r0, _02241C0C ; =0xFFFFFE00
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	strh r0, [r4, #0x26]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BAC:
	ldr r0, _02241C18 ; =ov17_02241C2C
	ldr r2, _02241C10 ; =0x00009C40
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BB8:
	ldr r0, _02241C1C ; =0xFFFFFD00
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BC8:
	ldr r0, _02241C20 ; =0xFFFFFC00
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BD8:
	ldr r0, _02241C24 ; =0xFFFFFB80
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BE8:
	ldr r0, _02241C28 ; =0xFFFFFD80
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BF8:
	mov r0, #0xff
	mvn r0, r0
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	ldr r2, _02241C10 ; =0x00009C40
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241C0C: .word 0xFFFFFE00
_02241C10: .word 0x00009C40
_02241C14: .word ov17_02241CF0
_02241C18: .word ov17_02241C2C
_02241C1C: .word 0xFFFFFD00
_02241C20: .word 0xFFFFFC00
_02241C24: .word 0xFFFFFB80
_02241C28: .word 0xFFFFFD80
	thumb_func_end ov17_02241B3C

	thumb_func_start ov17_02241C2C
ov17_02241C2C: ; 0x02241C2C
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _02241C42
	cmp r0, #1
	beq _02241C58
	cmp r0, #2
	beq _02241C98
	b _02241CB2
_02241C42:
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x10]
	mov r0, #0xe
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x14]
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
_02241C58:
	ldrb r0, [r2, #0x18]
	mov r1, #1
	tst r0, r1
	beq _02241C6C
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r3, r0, #8
	lsl r0, r1, #9
	add r0, r3, r0
	b _02241C76
_02241C6C:
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r3, r0, #8
	lsl r0, r1, #9
	sub r0, r3, r0
_02241C76:
	str r0, [r2, #0x10]
	ldrb r0, [r2, #0x18]
	add r0, r0, #1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0x18]
	cmp r0, #4
	bls _02241CC6
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x10]
	mov r0, #0
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241CC6
_02241C98:
	mov r0, #9
	ldrsb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, #9]
	ldrsb r0, [r2, r0]
	cmp r0, #0xf
	ble _02241CC6
	mov r0, #0
	strb r0, [r2, #9]
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241CC6
_02241CB2:
	ldr r0, [r2, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r2, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
_02241CC6:
	ldrb r0, [r2, #8]
	ldr r1, [r2, #0]
	ldr r3, [r2, #0x10]
	lsl r0, r0, #2
	add r0, r1, r0
	asr r1, r3, #7
	lsr r1, r1, #0x18
	add r1, r3, r1
	ldr r3, [r2, #0x14]
	add r0, #0xb4
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	thumb_func_end ov17_02241C2C

	thumb_func_start ov17_02241CF0
ov17_02241CF0: ; 0x02241CF0
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _02241D02
	cmp r0, #1
	beq _02241D18
	b _02241D80
_02241D02:
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x10]
	mov r0, #0xe
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x14]
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
_02241D18:
	mov r0, #0x24
	ldrsh r1, [r2, r0]
	ldr r3, [r2, #0x14]
	add r1, r3, r1
	str r1, [r2, #0x14]
	ldrsh r0, [r2, r0]
	add r0, #0x80
	strh r0, [r2, #0x24]
	mov r0, #0xe
	ldrsh r0, [r2, r0]
	lsl r1, r0, #8
	ldr r0, [r2, #0x14]
	cmp r0, r1
	blt _02241D56
	str r1, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _02241D50
	mov r0, #0x26
	ldrsh r0, [r2, r0]
	strh r0, [r2, #0x24]
	ldrb r0, [r2, #0x18]
	sub r0, r0, #1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0xa]
	sub r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241D56
_02241D50:
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
_02241D56:
	ldrb r0, [r2, #8]
	ldr r1, [r2, #0]
	ldr r3, [r2, #0x10]
	lsl r0, r0, #2
	add r0, r1, r0
	asr r1, r3, #7
	lsr r1, r1, #0x18
	add r1, r3, r1
	ldr r3, [r2, #0x14]
	add r0, #0xb4
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
_02241D80:
	ldr r0, [r2, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r2, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov17_02241CF0

	thumb_func_start ov17_02241D94
ov17_02241D94: ; 0x02241D94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _02241DAA
	bl GF_AssertFail
_02241DAA:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02241E1C ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r3, #0x14
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241E1C ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r3, #0x13
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241E1C ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r3, #0x12
	bl sub_0200CE54
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, _02241E20 ; =0x02253854
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	lsl r1, r6, #5
	add r5, #0xc0
	add r1, #0x60
	lsl r1, r1, #0x10
	ldr r0, [r5, #0]
	asr r1, r1, #0x10
	mov r2, #0x38
	bl sub_0200D4C4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02241E1C: .word 0x000080ED
_02241E20: .word 0x02253854
	thumb_func_end ov17_02241D94

	thumb_func_start ov17_02241E24
ov17_02241E24: ; 0x02241E24
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 ; =0x000080ED
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 ; =0x000080ED
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 ; =0x000080ED
	bl sub_0200D0A0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	mov r0, #0
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_02241E54: .word 0x000080ED
	thumb_func_end ov17_02241E24

	thumb_func_start ov17_02241E58
ov17_02241E58: ; 0x02241E58
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _02241EA0 ; =0x000080EE
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x11
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241EA0 ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x10
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241EA0 ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xf
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02241EA0: .word 0x000080EE
	thumb_func_end ov17_02241E58

	thumb_func_start ov17_02241EA4
ov17_02241EA4: ; 0x02241EA4
	push {r4, lr}
	ldr r1, _02241EC0 ; =0x000080EE
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02241EC0 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02241EC0 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_02241EC0: .word 0x000080EE
	thumb_func_end ov17_02241EA4

	thumb_func_start ov17_02241EC4
ov17_02241EC4: ; 0x02241EC4
	push {r4, r5, r6, lr}
	mov r2, #0x18
	mov r4, #0
	mul r2, r1
	add r5, r0, r2
	add r6, r4, #0
_02241ED0:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02241EE4
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xc4
	str r6, [r0, #0]
_02241EE4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02241ED0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02241EC4

	thumb_func_start ov17_02241EF0
ov17_02241EF0: ; 0x02241EF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02241EF6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_02241EC4
	add r4, r4, #1
	cmp r4, #4
	blt _02241EF6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02241EF0

	thumb_func_start ov17_02241F08
ov17_02241F08: ; 0x02241F08
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, _02241F30 ; =0x02253888
	add r4, r3, #0
	bl sub_0200CE6C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200D324
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02241F30: .word 0x02253888
	thumb_func_end ov17_02241F08

	thumb_func_start ov17_02241F34
ov17_02241F34: ; 0x02241F34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r7, r1, #0
	add r0, r3, #0
	mov r1, #0xa
	str r2, [sp, #4]
	bl _s32_div_f
	str r0, [sp, #8]
	cmp r0, #0x18
	ble _02241F50
	mov r0, #0x18
	str r0, [sp, #8]
_02241F50:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	ldr r4, [sp, #8]
	mov r6, #0
	add r5, r0, r1
	b _02241F7A
_02241F60:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02241F78
	bl sub_0200D0F4
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc4
	str r6, [r0, #0]
_02241F78:
	add r4, r4, #1
_02241F7A:
	cmp r4, #6
	blt _02241F60
	ldr r0, [sp, #8]
	add r1, r7, #0
	sub r4, r0, #1
	mov r0, #0x18
	mul r1, r0
	ldr r0, [sp]
	add r7, r0, r1
	ldr r0, [sp, #4]
	ldr r1, _0224203C ; =0x0225370C
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x10]
	b _0224201C
_02241F9A:
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	str r0, [sp, #0x14]
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02241FF8
	ldr r3, _0224203C ; =0x0225370C
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldrsh r3, [r3, r2]
	lsl r2, r5, #3
	ldr r1, [sp]
	add r2, r3, r2
	ldr r6, [sp, #0x10]
	mov r3, #2
	ldrsh r3, [r6, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_02241F08
	lsl r2, r5, #2
	add r1, r7, r2
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r7, r2
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x14]
	bl sub_0200D364
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl ov17_02242048
	b _0224201A
_02241FF8:
	bl sub_0200D37C
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bhs _0224201A
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_0200D364
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl ov17_02242048
_0224201A:
	sub r4, r4, #1
_0224201C:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bgt _02241F9A
	ldr r0, _02242040 ; =0x000006E1
	bl sub_02005748
	ldr r2, [sp, #8]
	ldr r0, _02242040 ; =0x000006E1
	sub r2, r2, #1
	ldr r1, _02242044 ; =0x0000FFFF
	lsl r2, r2, #6
	bl sub_02004F7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224203C: .word 0x0225370C
_02242040: .word 0x000006E1
_02242044: .word 0x0000FFFF
	thumb_func_end ov17_02241F34

	thumb_func_start ov17_02242048
ov17_02242048: ; 0x02242048
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x15
	mov r1, #0x10
	bl sub_02018144
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	mov r1, #0
	str r5, [r4, #0]
	bl sub_0200D3F4
	ldr r0, _02242074 ; =ov17_0224207C
	ldr r2, _02242078 ; =0x00009C40
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242074: .word ov17_0224207C
_02242078: .word 0x00009C40
	thumb_func_end ov17_02242048

	thumb_func_start ov17_0224207C
ov17_0224207C: ; 0x0224207C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02242092
	cmp r0, #1
	beq _022420AE
	cmp r0, #2
	beq _022420E8
	b _02242136
_02242092:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, _0224214C ; =0x3DCCCCCD
	mov r1, #1
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl sub_0200D3F4
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022420AE:
	ldr r0, [r4, #4]
	ldr r1, _02242150 ; =0x3E99999A
	bl _f_add
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _02242150 ; =0x3E99999A
	bl _f_add
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl sub_0200D6E8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D7C0
	mov r1, #0xff
	ldr r0, [r4, #4]
	lsl r1, r1, #0x16
	bl _f_fge
	blo _0224214A
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022420E8:
	ldr r0, [r4, #4]
	ldr r1, _02242150 ; =0x3E99999A
	bl _f_sub
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _02242150 ; =0x3E99999A
	bl _f_sub
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl sub_0200D6E8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D7C0
	mov r1, #0xfe
	ldr r0, [r4, #4]
	lsl r1, r1, #0x16
	bl _f_fle
	bhi _0224214A
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D79C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242136:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D6A4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224214A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224214C: .word 0x3DCCCCCD
_02242150: .word 0x3E99999A
	thumb_func_end ov17_0224207C

	thumb_func_start ov17_02242154
ov17_02242154: ; 0x02242154
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _022421D8 ; =0x000080F0
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x1a
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022421D8 ; =0x000080F0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x19
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022421D8 ; =0x000080F0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x18
	bl sub_0200CE54
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022421DC ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x1d
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022421DC ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x1c
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022421DC ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x1b
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022421D8: .word 0x000080F0
_022421DC: .word 0x000080EF
	thumb_func_end ov17_02242154

	thumb_func_start ov17_022421E0
ov17_022421E0: ; 0x022421E0
	push {r4, lr}
	ldr r1, _02242214 ; =0x000080F0
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02242214 ; =0x000080F0
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02242214 ; =0x000080F0
	add r0, r4, #0
	bl sub_0200D0A0
	ldr r1, _02242218 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _02242218 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02242218 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_02242214: .word 0x000080F0
_02242218: .word 0x000080EF
	thumb_func_end ov17_022421E0

	thumb_func_start ov17_0224221C
ov17_0224221C: ; 0x0224221C
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x14
	mov r4, #0
	mul r2, r1
	mov r7, #0x49
	add r5, r0, r2
	add r6, r4, #0
	lsl r7, r7, #2
_0224222C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224223C
	bl sub_0200D0F4
	mov r0, #0x49
	lsl r0, r0, #2
	str r6, [r5, r0]
_0224223C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0224222C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224221C

	thumb_func_start ov17_02242248
ov17_02242248: ; 0x02242248
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0224224E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0224221C
	add r4, r4, #1
	cmp r4, #3
	blt _0224224E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02242248

	thumb_func_start ov17_02242260
ov17_02242260: ; 0x02242260
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, _02242288 ; =0x022537EC
	add r4, r3, #0
	bl sub_0200CE6C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200D324
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02242288: .word 0x022537EC
	thumb_func_end ov17_02242260

	thumb_func_start ov17_0224228C
ov17_0224228C: ; 0x0224228C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, _022422B4 ; =0x0225371C
	add r4, r3, #0
	bl sub_0200CE6C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200D324
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_022422B4: .word 0x0225371C
	thumb_func_end ov17_0224228C

	thumb_func_start ov17_022422B8
ov17_022422B8: ; 0x022422B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #5
	bls _022422CA
	b _02242458
_022422CA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022422D6: ; jump table
	.short _022422E2 - _022422D6 - 2 ; case 0
	.short _02242328 - _022422D6 - 2 ; case 1
	.short _02242368 - _022422D6 - 2 ; case 2
	.short _02242398 - _022422D6 - 2 ; case 3
	.short _022423D6 - _022422D6 - 2 ; case 4
	.short _02242428 - _022422D6 - 2 ; case 5
_022422E2:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0200D6A4
	mov r0, #2
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #0x20]
	mov r0, #0x12
	ldr r1, [r4, #0x14]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	strh r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	strh r0, [r4, #0x2a]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
_02242328:
	mov r1, #0x28
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x10]
	add r0, r2, r0
	str r0, [r4, #0x10]
	mov r0, #0x2a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x14]
	add r0, r2, r0
	str r0, [r4, #0x14]
	ldrsh r2, [r4, r1]
	cmp r2, #0
	ble _0224234A
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bge _02242358
_0224234A:
	cmp r2, #0
	bge _02242356
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	ble _02242358
_02242356:
	b _0224247C
_02242358:
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242368:
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #3
	bls _0224247C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242398:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	lsl r0, r0, #8
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	lsl r0, r0, #8
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
	mov r1, #6
	bl _s32_div_f
	strh r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	mov r1, #6
	bl _s32_div_f
	strh r0, [r4, #0x2a]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
_022423D6:
	mov r1, #0x28
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x10]
	add r0, r2, r0
	str r0, [r4, #0x10]
	mov r0, #0x2a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x14]
	add r0, r2, r0
	str r0, [r4, #0x14]
	ldrsh r2, [r4, r1]
	cmp r2, #0
	ble _022423F8
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bge _02242404
_022423F8:
	cmp r2, #0
	bge _0224247C
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bgt _0224247C
_02242404:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	lsl r0, r0, #8
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242428:
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #2
	bls _0224247C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242458:
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x6e
	lsl r0, r0, #4
	bl sub_02005748
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_0224247C:
	mov r1, #2
	ldr r0, [r4, #4]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r4, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_022422B8

	thumb_func_start ov17_022424A8
ov17_022424A8: ; 0x022424A8
	push {r4, r5, r6, lr}
	mov r2, #0x14
	mul r2, r1
	mov r6, #0x49
	mov r4, #0
	add r5, r0, r2
	lsl r6, r6, #2
_022424B6:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _022424C8
	bl sub_0200D408
	cmp r0, #0
	bne _022424C8
	mov r0, #0
	pop {r4, r5, r6, pc}
_022424C8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _022424B6
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_022424A8

	thumb_func_start ov17_022424D4
ov17_022424D4: ; 0x022424D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r2, #0
	str r0, [sp, #0x1c]
	str r1, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #4]
	cmp r0, #5
	ble _022424F0
	bl GF_AssertFail
_022424F0:
	ldr r0, [sp]
	mov r1, #0x14
	lsl r7, r0, #2
	ldr r0, _0224261C ; =0x022536D8
	mov r5, #0
	add r0, r0, r7
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mul r1, r0
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, _02242620 ; =0x022536E4
	add r0, r0, r7
	str r0, [sp, #0x10]
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	b _022425E4
_0224251E:
	ldr r0, [sp, #8]
	lsl r2, r5, #2
	add r1, r0, r2
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022425E2
	ldr r3, _0224261C ; =0x022536D8
	ldr r0, [sp, #0x1c]
	ldrsh r3, [r3, r7]
	add r2, r5, r2
	ldr r4, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r2, r3, r2
	mov r3, #2
	ldrsh r3, [r4, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_02242260
	ldr r1, [sp, #8]
	lsl r2, r5, #2
	add r2, r1, r2
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r1, #0
	ldr r0, [r2, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x15
	mov r1, #0x34
	bl sub_02018144
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x1c]
	lsl r1, r5, #2
	str r0, [r4, #0]
	ldr r0, [sp, #8]
	ldr r2, _02242620 ; =0x022536E4
	add r1, r0, r1
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r6, [sp, #0x10]
	str r0, [r4, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	mov r3, #2
	ldrsh r2, [r2, r7]
	ldrsh r3, [r6, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_0224228C
	str r0, [r4, #4]
	ldr r0, _02242620 ; =0x022536E4
	ldr r1, [sp, #0x10]
	ldrsh r0, [r0, r7]
	ldr r2, _02242624 ; =0x00009C40
	lsl r0, r0, #8
	str r0, [r4, #0x10]
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, _0224261C ; =0x022536D8
	ldrsh r1, [r0, r7]
	lsl r0, r5, #2
	add r0, r5, r0
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
	ldr r1, [sp, #0xc]
	mov r0, #2
	ldrsh r1, [r1, r0]
	add r0, r4, #0
	add r0, #0x2d
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [sp, #0x14]
	add r1, #0x30
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x31
	strb r0, [r1]
	ldr r0, _02242628 ; =ov17_022422B8
	add r1, r4, #0
	bl sub_0200D9E8
_022425E2:
	add r5, r5, #1
_022425E4:
	ldr r0, [sp, #4]
	cmp r5, r0
	blt _0224251E
	ldr r0, [sp]
	mov r1, #0x14
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r7, #0x49
	lsl r7, r7, #2
	add r4, r0, r1
	add r6, r7, #0
	b _02242614
_022425FC:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _02242612
	bl sub_0200D0F4
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0
	str r0, [r1, r7]
_02242612:
	add r5, r5, #1
_02242614:
	cmp r5, #5
	blt _022425FC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224261C: .word 0x022536D8
_02242620: .word 0x022536E4
_02242624: .word 0x00009C40
_02242628: .word ov17_022422B8
	thumb_func_end ov17_022424D4

	thumb_func_start ov17_0224262C
ov17_0224262C: ; 0x0224262C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	str r0, [sp]
	cmp r2, #1
	bne _0224263C
	mov r6, #1
	b _0224263E
_0224263C:
	mov r6, #0
_0224263E:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	str r0, [sp, #8]
	str r0, [sp, #4]
_02242648:
	ldr r5, [sp]
	mov r4, #0
_0224264C:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242668
	add r1, r7, #0
	bl sub_0200D810
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0200D3F4
_02242668:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0224264C
	mov r1, #0x5b
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02242690
	add r1, r7, #0
	bl sub_0200D810
	mov r1, #0x5b
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	bl sub_0200D3F4
_02242690:
	mov r1, #0x63
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r7, #0
	bl sub_02012AF0
	mov r1, #0x77
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r7, #0
	bl sub_02012AF0
	mov r1, #0x63
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	bl sub_020129D0
	mov r1, #0x77
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	bl sub_020129D0
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _02242648
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224262C

	thumb_func_start ov17_022426E8
ov17_022426E8: ; 0x022426E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0
	strb r0, [r7]
	mov r0, #0x15
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	str r5, [r4, #0]
	mov r2, #0xfa
	strb r6, [r4, #0xd]
	ldr r0, _0224271C ; =ov17_02242720
	add r1, r4, #0
	lsl r2, r2, #2
	str r7, [r4, #4]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224271C: .word ov17_02242720
	thumb_func_end ov17_022426E8

	thumb_func_start ov17_02242720
ov17_02242720: ; 0x02242720
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bls _0224272E
	b _02242864
_0224272E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224273A: ; jump table
	.short _02242742 - _0224273A - 2 ; case 0
	.short _0224279E - _0224273A - 2 ; case 1
	.short _022427D2 - _0224273A - 2 ; case 2
	.short _02242826 - _0224273A - 2 ; case 3
_02242742:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0224276A
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #8]
	mov r1, #0
	strh r1, [r4, #0xa]
	ldr r0, _0224287C ; =0x04000050
	str r1, [sp]
	mov r2, #0xe
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	mov r1, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_0224262C
	b _0224278C
_0224276A:
	mov r3, #0
	mov r0, #1
	strh r3, [r4, #8]
	lsl r0, r0, #0xc
	strh r0, [r4, #0xa]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0224287C ; =0x04000050
	mov r1, #4
	mov r2, #0xe
	bl G2x_SetBlendAlpha_
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #1
	bl ov17_0223BB14
_0224278C:
	ldr r0, _02242880 ; =ov17_02242884
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200DA3C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224279E:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	bne _022427BE
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022427BE
	mov r1, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_0224262C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022427BE:
	cmp r1, #1
	bne _0224287A
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224287A
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022427D2:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _022427F2
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #8]
	mov r0, #0
	strh r0, [r4, #0xa]
	str r0, [sp]
	ldr r0, _0224287C ; =0x04000050
	mov r1, #4
	mov r2, #0xe
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	b _02242814
_022427F2:
	mov r1, #0
	mov r0, #1
	strh r1, [r4, #8]
	lsl r0, r0, #0xc
	strh r0, [r4, #0xa]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0224287C ; =0x04000050
	mov r2, #0xe
	add r3, r1, #0
	bl G2x_SetBlendAlpha_
	mov r1, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_0224262C
_02242814:
	ldr r0, _02242880 ; =ov17_02242884
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200DA3C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242826:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	bne _02242846
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02242846
	mov r1, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_0223BB14
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242846:
	cmp r1, #1
	bne _0224287A
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224287A
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #1
	bl ov17_0224262C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242864:
	bl ov17_022413D8
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224287A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224287C: .word 0x04000050
_02242880: .word ov17_02242884
	thumb_func_end ov17_02242720

	thumb_func_start ov17_02242884
ov17_02242884: ; 0x02242884
	push {r3, r4, r5, lr}
	ldrb r3, [r1, #0xd]
	mov r2, #0
	cmp r3, #0
	bne _022428BC
	mov r4, #8
	ldrsh r5, [r1, r4]
	lsl r3, r4, #8
	sub r3, r5, r3
	strh r3, [r1, #8]
	mov r3, #0xa
	ldrsh r5, [r1, r3]
	lsl r3, r4, #8
	add r3, r5, r3
	strh r3, [r1, #0xa]
	ldrsh r3, [r1, r4]
	cmp r3, #0
	bgt _022428AC
	strh r2, [r1, #8]
	add r2, r2, #1
_022428AC:
	mov r3, #0xa
	ldrsh r4, [r1, r3]
	mov r3, #1
	lsl r3, r3, #0xc
	cmp r4, r3
	blt _022428E8
	strh r3, [r1, #0xa]
	b _022428E8
_022428BC:
	mov r4, #8
	ldrsh r5, [r1, r4]
	lsl r3, r4, #8
	add r3, r5, r3
	strh r3, [r1, #8]
	mov r3, #0xa
	ldrsh r5, [r1, r3]
	lsl r3, r4, #8
	sub r3, r5, r3
	strh r3, [r1, #0xa]
	ldrsh r5, [r1, r4]
	lsl r3, r4, #9
	cmp r5, r3
	blt _022428DC
	strh r3, [r1, #8]
	add r2, r2, #1
_022428DC:
	mov r3, #0xa
	ldrsh r3, [r1, r3]
	cmp r3, #0
	bgt _022428E8
	mov r3, #0
	strh r3, [r1, #0xa]
_022428E8:
	mov r3, #8
	ldrsh r3, [r1, r3]
	asr r4, r3, #8
	mov r3, #0xa
	ldrsh r3, [r1, r3]
	mov r1, #0xff
	bic r3, r1
	orr r3, r4
	ldr r1, _02242908 ; =0x04000052
	cmp r2, #0
	strh r3, [r1]
	ble _02242904
	bl sub_0200DA58
_02242904:
	pop {r3, r4, r5, pc}
	nop
_02242908: .word 0x04000052
	thumb_func_end ov17_02242884

	thumb_func_start ov17_0224290C
ov17_0224290C: ; 0x0224290C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	add r6, r3, #0
	cmp r7, #2
	blt _02242924
	cmp r5, #0
	bne _02242924
	bl GF_AssertFail
_02242924:
	cmp r7, #0x1c
	bls _0224292A
	b _02242D9E
_0224292A:
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242936: ; jump table
	.short _02242DA2 - _02242936 - 2 ; case 0
	.short _02242970 - _02242936 - 2 ; case 1
	.short _0224298E - _02242936 - 2 ; case 2
	.short _022429A8 - _02242936 - 2 ; case 3
	.short _022429C2 - _02242936 - 2 ; case 4
	.short _022429D0 - _02242936 - 2 ; case 5
	.short _022429E4 - _02242936 - 2 ; case 6
	.short _022429FC - _02242936 - 2 ; case 7
	.short _02242A2C - _02242936 - 2 ; case 8
	.short _02242A50 - _02242936 - 2 ; case 9
	.short _02242A7C - _02242936 - 2 ; case 10
	.short _02242AAA - _02242936 - 2 ; case 11
	.short _02242ADA - _02242936 - 2 ; case 12
	.short _02242AFE - _02242936 - 2 ; case 13
	.short _02242B2A - _02242936 - 2 ; case 14
	.short _02242B5A - _02242936 - 2 ; case 15
	.short _02242B7E - _02242936 - 2 ; case 16
	.short _02242BA2 - _02242936 - 2 ; case 17
	.short _02242BC2 - _02242936 - 2 ; case 18
	.short _02242BE6 - _02242936 - 2 ; case 19
	.short _02242C10 - _02242936 - 2 ; case 20
	.short _02242C3A - _02242936 - 2 ; case 21
	.short _02242C58 - _02242936 - 2 ; case 22
	.short _02242C82 - _02242936 - 2 ; case 23
	.short _02242CB0 - _02242936 - 2 ; case 24
	.short _02242CDE - _02242936 - 2 ; case 25
	.short _02242D00 - _02242936 - 2 ; case 26
	.short _02242D2A - _02242936 - 2 ; case 27
	.short _02242D62 - _02242936 - 2 ; case 28
_02242970:
	mov r0, #0xca
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224298E:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429A8:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429C2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429D0:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429E4:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429FC:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A2C:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A50:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A7C:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #1
	bl sub_0200BB74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242AAA:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242ADA:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242AFE:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B2A:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B5A:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B7E:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BA2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BC2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BE6:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C10:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C3A:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C58:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C82:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242CB0:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242CDE:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D00:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D2A:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #1
	bl sub_0200BB74
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #2
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D62:
	ldrb r2, [r6]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	mov r5, #0
_02242D78:
	add r0, r6, r5
	ldrb r0, [r0, #1]
	cmp r0, #4
	beq _02242DA2
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	add r1, r5, #1
	bl sub_0200B5CC
	add r5, r5, #1
	cmp r5, #4
	blt _02242D78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D9E:
	bl GF_AssertFail
_02242DA2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224290C

	thumb_func_start ov17_02242DA8
ov17_02242DA8: ; 0x02242DA8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x34
	mov r1, #0xff
	bl sub_0201ADA4
	add r4, #0x34
	add r0, r4, #0
	bl sub_0201A954
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02242DA8

	thumb_func_start ov17_02242DC0
ov17_02242DC0: ; 0x02242DC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0xc]
	cmp r0, #1
	bne _02242DD6
	mov r4, #0
	b _02242DEE
_02242DD6:
	ldr r1, [r5, #0]
	ldr r0, _02242E54 ; =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02242DEC
	ldr r0, _02242E58 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027AC0
	add r4, r0, #0
	b _02242DEE
_02242DEC:
	mov r4, #1
_02242DEE:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0
	bl ov17_0224290C
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x58]
	add r0, #0x34
	mov r1, #1
	bl sub_0201D738
	mov r1, #0x8b
	lsl r1, r1, #2
	strb r0, [r5, r1]
	cmp r4, #0
	bne _02242E42
	mov r0, #0xff
	strb r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x34
	bl sub_0201A954
_02242E42:
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_020192EC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242E54: .word 0x00000171
_02242E58: .word 0x00001988
	thumb_func_end ov17_02242DC0

	thumb_func_start ov17_02242E5C
ov17_02242E5C: ; 0x02242E5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #0x2f
	blo _02242E70
	bl GF_AssertFail
_02242E70:
	ldr r0, _02242E90 ; =0x022538F3
	lsl r3, r5, #2
	ldrb r0, [r0, r3]
	str r4, [sp]
	ldr r2, _02242E94 ; =0x022538F0
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r4, _02242E98 ; =0x022538F2
	ldrh r2, [r2, r3]
	ldrb r3, [r4, r3]
	ldr r1, [r7, #0x44]
	add r0, r7, #0
	bl ov17_02242DC0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02242E90: .word 0x022538F3
_02242E94: .word 0x022538F0
_02242E98: .word 0x022538F2
	thumb_func_end ov17_02242E5C

	thumb_func_start ov17_02242E9C
ov17_02242E9C: ; 0x02242E9C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r3, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02095790
	ldr r0, [sp, #0x20]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r4, #0x50]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	bl ov17_02242DC0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02242E9C

	thumb_func_start ov17_02242ECC
ov17_02242ECC: ; 0x02242ECC
	push {r3, lr}
	mov r1, #0x8b
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _02242EDC
	mov r0, #0
	pop {r3, pc}
_02242EDC:
	bl sub_0201D724
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02242ECC

	thumb_func_start ov17_02242EE4
ov17_02242EE4: ; 0x02242EE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xc
	mov r1, #0x15
	bl sub_02023790
	str r0, [sp, #0x30]
	lsl r0, r4, #2
	ldr r1, [r5, #0xc]
	str r0, [sp, #0x2c]
	ldr r0, [r1, r0]
	ldr r2, [sp, #0x30]
	mov r1, #0x77
	bl sub_02074470
	ldr r1, [r5, #0]
	ldr r0, _02242F94 ; =0x00000123
	ldrb r0, [r1, r0]
	cmp r4, r0
	bne _02242F14
	ldr r6, _02242F98 ; =0x00010200
	b _02242F16
_02242F14:
	ldr r6, _02242F9C ; =0x00050600
_02242F16:
	mov r0, #0x14
	add r7, r4, #0
	mul r7, r0
	mov r0, #0x77
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #0x30]
	mov r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _02242FA0 ; =0x000080ED
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	mov r0, #0xf
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x60]
	mov r0, #0x15
	bl ov17_0223F1E8
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r0, r7
	str r0, [sp]
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _02242FA0 ; =0x000080ED
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	mov r0, #0xf
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x60]
	mov r0, #0x15
	bl ov17_0223F1E8
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02242F94: .word 0x00000123
_02242F98: .word 0x00010200
_02242F9C: .word 0x00050600
_02242FA0: .word 0x000080ED
	thumb_func_end ov17_02242EE4

	thumb_func_start ov17_02242FA4
ov17_02242FA4: ; 0x02242FA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02242FAA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_02242EE4
	add r4, r4, #1
	cmp r4, #4
	blt _02242FAA
	add r0, r5, #0
	bl ov17_02242FE8
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02242FA4

	thumb_func_start ov17_02242FC0
ov17_02242FC0: ; 0x02242FC0
	push {r4, r5, r6, lr}
	mov r1, #0x77
	lsl r1, r1, #2
	add r4, r0, r1
	sub r1, #0x50
	mov r6, #0
	add r5, r0, r1
_02242FCE:
	add r0, r4, #0
	bl ov17_0223F2E4
	add r0, r5, #0
	bl ov17_0223F2E4
	add r6, r6, #1
	add r4, #0x14
	add r5, #0x14
	cmp r6, #4
	blt _02242FCE
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02242FC0

	thumb_func_start ov17_02242FE8
ov17_02242FE8: ; 0x02242FE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x77
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	sub r1, #0x50
	add r0, r0, r1
	mov r4, #0
	mov r6, #0xc
	mov r5, #0x1c
	str r0, [sp, #8]
_02243004:
	ldr r0, [sp]
	add r2, r6, #0
	add r1, r0, r4
	ldr r0, _0224303C ; =0x00000231
	mov r3, #0
	ldrb r1, [r1, r0]
	mov r0, #0x14
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #4]
	mov r1, #1
	add r0, r0, r7
	bl ov17_0223F2F8
	ldr r0, [sp, #8]
	mov r1, #1
	add r0, r0, r7
	add r2, r5, #0
	mov r3, #0
	bl ov17_0223F2F8
	add r4, r4, #1
	add r6, #0x30
	add r5, #0x30
	cmp r4, #4
	blt _02243004
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224303C: .word 0x00000231
	thumb_func_end ov17_02242FE8

	thumb_func_start ov17_02243040
ov17_02243040: ; 0x02243040
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _02243088 ; =0x000080F1
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x17
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02243088 ; =0x000080F1
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x16
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02243088 ; =0x000080F1
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x15
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02243088: .word 0x000080F1
	thumb_func_end ov17_02243040

	thumb_func_start ov17_0224308C
ov17_0224308C: ; 0x0224308C
	push {r4, lr}
	ldr r1, _022430A8 ; =0x000080F1
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _022430A8 ; =0x000080F1
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _022430A8 ; =0x000080F1
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_022430A8: .word 0x000080F1
	thumb_func_end ov17_0224308C

	thumb_func_start ov17_022430AC
ov17_022430AC: ; 0x022430AC
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	mov r0, #0x16
	add r6, r1, #0
	lsl r0, r0, #4
	lsl r5, r6, #2
	add r4, r3, r0
	ldr r0, [r4, r5]
	add r7, r2, #0
	cmp r0, #0
	bne _022430CE
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x1c]
	ldr r2, _022430F4 ; =0x02253750
	bl sub_0200CE6C
	str r0, [r4, r5]
_022430CE:
	ldr r0, [r4, r5]
	add r1, r7, #0
	bl sub_0200D364
	mov r2, #0x30
	mul r2, r6
	add r2, #0x2a
	lsl r2, r2, #0x10
	ldr r0, [r4, r5]
	mov r1, #0x40
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, r5]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022430F4: .word 0x02253750
	thumb_func_end ov17_022430AC

	thumb_func_start ov17_022430F8
ov17_022430F8: ; 0x022430F8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x16
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #4
_02243104:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02243114
	bl sub_0200D0F4
	mov r0, #0x16
	lsl r0, r0, #4
	str r6, [r5, r0]
_02243114:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02243104
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_022430F8

	thumb_func_start ov17_02243120
ov17_02243120: ; 0x02243120
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #6
	bl MI_CpuFill8
	lsl r0, r6, #1
	add r1, r5, r0
	ldr r0, _02243148 ; =0x00000236
	strb r6, [r4]
	ldrh r1, [r1, r0]
	add r0, #8
	strh r1, [r4, #2]
	add r1, r5, r6
	ldrb r0, [r1, r0]
	strb r0, [r4, #5]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02243148: .word 0x00000236
	thumb_func_end ov17_02243120

	thumb_func_start ov17_0224314C
ov17_0224314C: ; 0x0224314C
	strb r0, [r2]
	cmp r1, #0
	bgt _02243156
	mov r0, #0x1f
	bx lr
_02243156:
	cmp r1, #0x14
	bgt _0224315E
	mov r0, #0x20
	bx lr
_0224315E:
	cmp r1, #0x32
	bgt _02243166
	mov r0, #0x21
	bx lr
_02243166:
	cmp r1, #0x5a
	bgt _0224316E
	mov r0, #0x22
	bx lr
_0224316E:
	mov r0, #0x23
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224314C

	thumb_func_start ov17_02243174
ov17_02243174: ; 0x02243174
	push {r4, lr}
	mov r1, #0x32
	bl _s32_div_f
	cmp r0, #4
	blo _02243182
	mov r0, #3
_02243182:
	lsl r1, r0, #2
	ldr r0, _0224319C ; =0x022536FC
	ldr r4, [r0, r1]
	cmp r4, #0
	bge _02243190
	bl GF_AssertFail
_02243190:
	cmp r4, #0x7f
	ble _02243198
	bl GF_AssertFail
_02243198:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0224319C: .word 0x022536FC
	thumb_func_end ov17_02243174

	thumb_func_start ov17_022431A0
ov17_022431A0: ; 0x022431A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x15
	mov r1, #0x14
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x1c]
	str r5, [r4, #0]
	str r0, [r4, #0x10]
	strb r7, [r4, #0xd]
	ldr r0, [sp]
	strb r6, [r4, #0xb]
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	ldr r2, _022431E0 ; =0x00000BB8
	strb r0, [r4, #0xe]
	ldr r0, _022431E4 ; =ov17_022431E8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022431E0: .word 0x00000BB8
_022431E4: .word ov17_022431E8
	thumb_func_end ov17_022431A0

	thumb_func_start ov17_022431E8
ov17_022431E8: ; 0x022431E8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02243200
	cmp r0, #1
	beq _02243222
	cmp r0, #2
	beq _02243252
	b _022432C8
_02243200:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0224320E
	sub r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, pc}
_0224320E:
	ldr r0, _02243314 ; =0x000006E5
	bl sub_02005748
	ldr r0, _02243314 ; =0x000006E5
	ldr r1, [r4, #4]
	bl sub_02004AD4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_02243222:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0224322C
	mov r1, #0
	b _0224322E
_0224322C:
	mov r1, #2
_0224322E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	mov r0, #0x2d
	ldr r2, [r2, #0x30]
	mov r3, #3
	bl sub_02006E60
	ldrb r0, [r4, #8]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02243252:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bls _0224328A
	mov r0, #0
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #9]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	sub r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0224328A
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bls _0224328A
	mov r0, #0xff
	add sp, #0x10
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224328A:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _02243310
	ldrb r0, [r4, #0xb]
	mov r1, #0x32
	lsl r0, r0, #4
	bl _s32_div_f
	mov r1, #0xf
	ldrsb r2, [r4, r1]
	cmp r2, r0
	bge _02243310
	add r2, r2, #2
	strb r2, [r4, #0xf]
	ldrsb r1, [r4, r1]
	cmp r1, r0
	ble _022432AE
	strb r0, [r4, #0xf]
_022432AE:
	ldrb r0, [r4, #0xf]
	mov r1, #0
	mov r2, #1
	str r0, [sp]
	ldr r0, _02243318 ; =0x0000237E
	mov r3, #2
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x5c]
	bl sub_020039B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022432C8:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _022432FE
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	cmp r1, #0
	beq _022432FE
	sub r1, r1, #2
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _022432E4
	mov r0, #0
	strb r0, [r4, #0xf]
_022432E4:
	ldrb r0, [r4, #0xf]
	mov r1, #0
	mov r2, #1
	str r0, [sp]
	ldr r0, _02243318 ; =0x0000237E
	mov r3, #2
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x5c]
	bl sub_020039B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022432FE:
	ldr r0, [r4, #0x10]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02243310:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02243314: .word 0x000006E5
_02243318: .word 0x0000237E
	thumb_func_end ov17_022431E8

	thumb_func_start ov17_0224331C
ov17_0224331C: ; 0x0224331C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r3, #0
	ldr r3, [sp, #0x38]
	add r6, sp, #0x1c
	str r3, [sp, #0x38]
	mov r3, #0
	str r3, [sp, #8]
	strb r3, [r5]
	mov r3, #0x30
	mul r3, r2
	ldr r2, [sp, #8]
	str r3, [sp, #0x10]
	add r3, #0x18
	str r2, [sp, #4]
	str r2, [sp, #0xc]
	mov r2, #0x18
	mul r2, r1
	add r7, r0, r2
	add r0, r3, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r3, [sp, #0x10]
	str r0, [sp, #0x18]
_0224334C:
	add r0, r7, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02243358
	b _022434B8
_02243358:
	ldrb r1, [r5]
	cmp r1, #0
	bne _02243422
	add r1, sp, #0x20
	add r1, #2
	add r2, sp, #0x20
	bl sub_0200D550
	mov r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #0x10]
	sub r1, r1, r0
	bpl _02243374
	neg r1, r1
_02243374:
	mov r0, #6
	ldrsh r0, [r6, r0]
	sub r0, #0x28
	bpl _0224337E
	neg r0, r0
_0224337E:
	bl sub_0208C0A4
	lsl r0, r0, #8
	str r0, [sp, #8]
	mov r0, #6
	ldrsh r0, [r6, r0]
	sub r0, #0x28
	bl _f_itof
	str r0, [sp, #0x14]
	mov r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
	bl _f_itof
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl _f_fgt
	ldr r0, _022434CC ; =0x45800000
	bls _022433C0
	ldr r1, [sp, #0x14]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	str r0, [sp]
	b _022433D0
_022433C0:
	ldr r1, [sp, #0x14]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	str r0, [sp]
_022433D0:
	add r0, r4, #0
	mov r1, #0
	bl _f_fgt
	ldr r0, _022434CC ; =0x45800000
	bls _022433EE
	add r1, r4, #0
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022433FC
_022433EE:
	add r1, r4, #0
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022433FC:
	bl _f_ftoi
	add r4, r0, #0
	ldr r0, [sp]
	bl _f_ftoi
	add r1, r0, #0
	add r0, r4, #0
	bl FX_Atan2Idx
	ldr r1, _022434D0 ; =0x00008CA0
	mul r1, r0
	add r0, r1, #0
	ldr r1, _022434D4 ; =0x0000FFFF
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
_02243422:
	mov r0, #0x15
	mov r1, #0x28
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [r4, #4]
	add r0, r7, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, #0x21
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	add r2, sp, #0x1c
	str r0, [r4, #0x10]
	ldr r0, [sp, #4]
	strh r0, [r4, #0x1e]
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [r4, #0x14]
	mov r0, #0x28
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x22
	strb r0, [r1]
	str r5, [r4, #0xc]
	mov r0, #6
	ldrsh r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #4
	ldrsh r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	add r0, #0xd0
	add r1, sp, #0x1c
	ldr r0, [r0, #0]
	add r1, #2
	bl sub_0200D550
	mov r0, #6
	ldrsh r1, [r6, r0]
	mov r0, #2
	ldrsh r0, [r6, r0]
	sub r0, r1, r0
	bpl _02243492
	neg r0, r0
_02243492:
	ldrb r2, [r5]
	lsl r0, r0, #8
	lsl r1, r2, #1
	add r1, r2, r1
	bl _s32_div_f
	strh r0, [r4, #0x1c]
	mov r0, #2
	ldrsh r0, [r6, r0]
	ldr r2, _022434D8 ; =0x00009C40
	add r1, r4, #0
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldr r0, _022434DC ; =ov17_022434E0
	bl sub_0200D9E8
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_022434B8:
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #6
	bge _022434C6
	b _0224334C
_022434C6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022434CC: .word 0x45800000
_022434D0: .word 0x00008CA0
_022434D4: .word 0x0000FFFF
_022434D8: .word 0x00009C40
_022434DC: .word ov17_022434E0
	thumb_func_end ov17_0224331C

	thumb_func_start ov17_022434E0
ov17_022434E0: ; 0x022434E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _022434F8
	cmp r0, #1
	beq _02243542
	b _02243624
_022434F8:
	ldrh r0, [r5, #0x1c]
	ldr r1, [r5, #0x18]
	sub r1, r1, r0
	add r0, r5, #0
	str r1, [r5, #0x18]
	add r0, #0x23
	ldrb r0, [r0]
	lsl r0, r0, #8
	cmp r1, r0
	bgt _0224351C
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
_0224351C:
	add r1, sp, #0xc
	ldr r0, [r5, #8]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	ldr r0, [r5, #0x18]
	add r3, sp, #0xc
	asr r0, r0, #8
	strh r0, [r3, #2]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, #8]
	bl sub_0200D4C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02243542:
	ldrh r2, [r5, #0x1e]
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	add r1, r2, r1
	strh r1, [r5, #0x1e]
	ldrh r2, [r5, #0x1e]
	ldr r1, _02243650 ; =0x00008CA0
	add r0, #0x1e
	cmp r2, r1
	blo _0224355C
	ldrh r2, [r0]
	sub r1, r2, r1
	strh r1, [r0]
_0224355C:
	mov r0, #3
	ldr r1, [r5, #0x10]
	lsl r0, r0, #8
	cmp r1, r0
	bls _0224356A
	sub r0, r1, r0
	b _0224356C
_0224356A:
	mov r0, #0
_0224356C:
	str r0, [r5, #0x10]
	mov r0, #2
	ldr r1, [r5, #0x10]
	lsl r0, r0, #8
	cmp r1, r0
	bhi _02243586
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
_02243586:
	ldr r0, [r5, #0x10]
	mov r1, #0x64
	lsr r4, r0, #8
	ldrh r0, [r5, #0x1e]
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	str r0, [sp]
	lsl r6, r4, #0xc
	ldrh r0, [r5, #0x1e]
	mov r1, #0x64
	asr r7, r6, #0x1f
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	str r0, [sp, #4]
	ldr r0, [sp]
	add r2, r6, #0
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl _ull_mul
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, r1, #0
	asr r1, r0, #0x1f
	add r2, r6, #0
	add r3, r7, #0
	bl _ull_mul
	mov r3, #2
	add r2, r1, #0
	add r1, r5, #0
	add r7, r0, #0
	add r1, #0x21
	ldr r6, [sp, #8]
	lsl r3, r3, #0xa
	add r6, r6, r3
	ldr r3, _02243654 ; =0x00000000
	ldrb r1, [r1]
	adc r4, r3
	lsl r3, r4, #0x14
	lsr r4, r6, #0xc
	orr r4, r3
	asr r3, r4, #0xb
	lsr r3, r3, #0x14
	add r3, r4, r3
	asr r3, r3, #0xc
	add r1, r1, r3
	mov r4, #2
	ldr r0, [r5, #8]
	lsl r1, r1, #0x10
	add r5, #0x22
	lsl r4, r4, #0xa
	asr r1, r1, #0x10
	ldrb r3, [r5]
	add r5, r7, r4
	ldr r4, _02243654 ; =0x00000000
	adc r2, r4
	lsl r2, r2, #0x14
	lsr r4, r5, #0xc
	orr r4, r2
	asr r2, r4, #0xb
	lsr r2, r2, #0x14
	add r2, r4, r2
	asr r2, r2, #0xc
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02243624:
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _02243658 ; =0x000005E1
	bl sub_02005748
	ldr r0, [r5, #4]
	bl ov17_022414B0
	ldr r1, [r5, #0xc]
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243650: .word 0x00008CA0
_02243654: .word 0x00000000
_02243658: .word 0x000005E1
	thumb_func_end ov17_022434E0

	thumb_func_start ov17_0224365C
ov17_0224365C: ; 0x0224365C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl MI_CpuFill8
	str r5, [r4, #0]
	ldr r0, _02243688 ; =ov17_022436A4
	ldr r2, _0224368C ; =0x00009C40
	add r1, r4, #0
	strb r6, [r4, #8]
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02243688: .word ov17_022436A4
_0224368C: .word 0x00009C40
	thumb_func_end ov17_0224365C

	thumb_func_start ov17_02243690
ov17_02243690: ; 0x02243690
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02243690

	thumb_func_start ov17_022436A4
ov17_022436A4: ; 0x022436A4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x13
	add r6, r1, #0
	add r5, r4, #0
	lsl r7, r7, #4
_022436B0:
	ldrb r2, [r6, #8]
	mov r1, #0x14
	ldr r0, [r6, #0]
	mul r1, r2
	add r0, r0, r1
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _022436C6
	bl sub_0200D330
_022436C6:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _022436B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022436A4

	thumb_func_start ov17_022436D0
ov17_022436D0: ; 0x022436D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0x30
	mul r0, r2
	add r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x14
	add r2, r3, #0
	mul r2, r1
	ldr r1, [sp]
	ldr r5, [sp, #0x20]
	mov r7, #0
	strb r7, [r5]
	add r6, r1, r2
	str r0, [sp, #4]
_022436F2:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0224373C
	mov r0, #0x15
	mov r1, #0x28
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	ldr r2, _02243748 ; =0x00009C40
	str r0, [r4, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	str r0, [r4, #4]
	str r5, [r4, #8]
	mov r0, #0x28
	strb r0, [r4, #0xf]
	ldr r0, [sp, #4]
	strb r0, [r4, #0x10]
	ldrb r1, [r5]
	mov r0, #0xc
	mul r0, r1
	strh r0, [r4, #0x24]
	ldr r0, _0224374C ; =ov17_02243750
	add r1, r4, #0
	bl sub_0200D9E8
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_0224373C:
	add r7, r7, #1
	add r6, r6, #4
	cmp r7, #5
	blt _022436F2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243748: .word 0x00009C40
_0224374C: .word ov17_02243750
	thumb_func_end ov17_022436D0

	thumb_func_start ov17_02243750
ov17_02243750: ; 0x02243750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0224376A
	cmp r0, #1
	beq _022437AA
	cmp r0, #2
	bne _02243768
	b _022438D2
_02243768:
	b _0224390A
_0224376A:
	mov r0, #0x24
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0224377A
	sub r0, r0, #1
	add sp, #8
	strh r0, [r5, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
_0224377A:
	add r1, sp, #4
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r2, sp, #4
	mov r1, #0
	ldrsh r0, [r2, r1]
	add r0, r0, #6
	strh r0, [r2]
	mov r0, #2
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r5, #0x1c]
	ldrsh r0, [r2, r1]
	lsl r0, r0, #8
	str r0, [r5, #0x20]
	ldr r0, _02243930 ; =0x000007F9
	bl sub_02005748
	ldrb r0, [r5, #0xe]
	add r0, r0, #1
	strb r0, [r5, #0xe]
_022437AA:
	ldrh r2, [r5, #0xc]
	mov r1, #2
	lsl r1, r1, #0xa
	add r1, r2, r1
	strh r1, [r5, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r1, _02243934 ; =0x00008CA0
	add r0, r5, #0
	add r0, #0xc
	cmp r2, r1
	blo _022437C6
	ldrh r2, [r0]
	sub r1, r2, r1
	strh r1, [r0]
_022437C6:
	ldrh r0, [r5, #0xc]
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	add r4, r0, #0
	ldrh r0, [r5, #0xc]
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	mov r2, #3
	add r0, #0x80
	str r0, [r5, #0x20]
	asr r1, r4, #0x1f
	add r0, r4, #0
	lsl r2, r2, #0xe
	mov r3, #0
	bl _ull_mul
	mov r2, #6
	str r0, [sp]
	add r4, r1, #0
	asr r1, r6, #0x1f
	add r0, r6, #0
	lsl r2, r2, #0xc
	mov r3, #0
	bl _ull_mul
	add r2, r1, #0
	ldr r1, [r5, #0x1c]
	mov r6, #2
	add r7, r0, #0
	ldr r3, [sp]
	lsl r6, r6, #0xa
	asr r1, r1, #8
	add r6, r3, r6
	ldr r3, _02243938 ; =0x00000000
	ldr r0, [r5, #4]
	adc r4, r3
	lsl r3, r4, #0x14
	lsr r4, r6, #0xc
	orr r4, r3
	asr r3, r4, #0xb
	lsr r3, r3, #0x14
	add r3, r4, r3
	asr r3, r3, #0xc
	add r1, r1, r3
	ldr r3, [r5, #0x20]
	mov r4, #2
	lsl r1, r1, #0x10
	ldr r6, _02243938 ; =0x00000000
	lsl r4, r4, #0xa
	asr r1, r1, #0x10
	asr r3, r3, #8
	add r4, r7, r4
	adc r2, r6
	lsl r6, r2, #0x14
	lsr r2, r4, #0xc
	orr r2, r6
	asr r4, r2, #0xb
	lsr r4, r4, #0x14
	add r4, r2, r4
	asr r2, r4, #0xc
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #0x24]
	ldrsh r0, [r5, r0]
	cmp r0, #0x50
	ble _0224392C
	mov r0, #0
	strh r0, [r5, #0x24]
	add r1, sp, #4
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r2, sp, #4
	mov r0, #2
	ldrsh r0, [r2, r0]
	lsl r1, r0, #8
	str r1, [r5, #0x1c]
	mov r1, #0
	ldrsh r6, [r2, r1]
	lsl r1, r6, #8
	str r1, [r5, #0x20]
	ldrb r1, [r5, #0xf]
	sub r0, r0, r1
	bpl _02243898
	neg r0, r0
_02243898:
	ldrb r1, [r5, #0x10]
	lsl r0, r0, #8
	sub r4, r6, r1
	bpl _022438A2
	neg r4, r4
_022438A2:
	mov r1, #3
	lsl r1, r1, #8
	str r1, [r5, #0x14]
	bl _s32_div_f
	add r1, r0, #0
	lsl r0, r4, #8
	bl _s32_div_f
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0x10]
	cmp r0, r6
	bge _022438C2
	ldr r0, [r5, #0x18]
	neg r0, r0
	str r0, [r5, #0x18]
_022438C2:
	ldr r0, _0224393C ; =0x000006EA
	bl sub_02005748
	ldrb r0, [r5, #0xe]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022438D2:
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	sub r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xf]
	lsl r1, r0, #8
	ldr r0, [r5, #0x1c]
	cmp r0, r1
	bgt _022438F4
	str r1, [r5, #0x1c]
	ldrb r0, [r5, #0xe]
	add r0, r0, #1
	strb r0, [r5, #0xe]
_022438F4:
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224390A:
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _02243940 ; =0x000005E1
	bl sub_02005748
	ldr r1, [r5, #8]
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224392C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243930: .word 0x000007F9
_02243934: .word 0x00008CA0
_02243938: .word 0x00000000
_0224393C: .word 0x000006EA
_02243940: .word 0x000005E1
	thumb_func_end ov17_02243750

	thumb_func_start ov17_02243944
ov17_02243944: ; 0x02243944
	push {r4}
	sub sp, #0xc
	ldr r3, _0224396C ; =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3, #0x14]
	add r1, sp, #0
	lsl r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #0x16]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0x18]
	strh r4, [r2, #4]
	ldrh r4, [r3, #0x1a]
	ldrh r3, [r3, #0x1c]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_0224396C: .word 0x022536B8
	thumb_func_end ov17_02243944

	thumb_func_start ov17_02243970
ov17_02243970: ; 0x02243970
	push {r4}
	sub sp, #0xc
	ldr r3, _02243998 ; =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3, #0xa]
	add r1, sp, #0
	lsl r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #0xc]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0xe]
	strh r4, [r2, #4]
	ldrh r4, [r3, #0x10]
	ldrh r3, [r3, #0x12]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_02243998: .word 0x022536B8
	thumb_func_end ov17_02243970

	thumb_func_start ov17_0224399C
ov17_0224399C: ; 0x0224399C
	push {r4}
	sub sp, #0xc
	ldr r3, _022439C4 ; =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3]
	add r1, sp, #0
	lsl r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #2]
	strh r4, [r2, #2]
	ldrh r4, [r3, #4]
	strh r4, [r2, #4]
	ldrh r4, [r3, #6]
	ldrh r3, [r3, #8]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_022439C4: .word 0x022536B8
	thumb_func_end ov17_0224399C

	thumb_func_start ov17_022439C8
ov17_022439C8: ; 0x022439C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	strh r5, [r4, #4]
	cmp r5, #0x8f
	bgt _022439FE
	bge _02243A36
	cmp r5, #0x4c
	bgt _022439F0
	bge _02243A36
	cmp r5, #0xd
	beq _02243A36
	pop {r3, r4, r5, r6, r7, pc}
_022439F0:
	cmp r5, #0x77
	bgt _022439F8
	beq _02243A74
	pop {r3, r4, r5, r6, r7, pc}
_022439F8:
	cmp r5, #0x82
	beq _02243A36
	pop {r3, r4, r5, r6, r7, pc}
_022439FE:
	ldr r1, _02243A90 ; =0x0000010B
	cmp r5, r1
	bgt _02243A1E
	bge _02243A7A
	cmp r5, #0xae
	bgt _02243A0E
	beq _02243A48
	pop {r3, r4, r5, r6, r7, pc}
_02243A0E:
	cmp r5, #0xda
	bgt _02243A8E
	cmp r5, #0xd8
	blt _02243A8E
	beq _02243A3C
	cmp r5, #0xda
	beq _02243A42
	pop {r3, r4, r5, r6, r7, pc}
_02243A1E:
	add r0, r1, #0
	add r0, #0xd
	cmp r5, r0
	bgt _02243A2E
	add r1, #0xd
	cmp r5, r1
	beq _02243A80
	pop {r3, r4, r5, r6, r7, pc}
_02243A2E:
	add r1, #0xc8
	cmp r5, r1
	beq _02243A86
	pop {r3, r4, r5, r6, r7, pc}
_02243A36:
	mov r0, #1
	strb r0, [r4, #6]
	pop {r3, r4, r5, r6, r7, pc}
_02243A3C:
	mov r0, #0xff
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02243A42:
	mov r0, #0
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02243A48:
	lsl r5, r7, #2
	ldr r0, [r6, r5]
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [r6, r5]
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	cmp r7, #7
	beq _02243A68
	cmp r0, #7
	bne _02243A6E
_02243A68:
	mov r0, #1
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A6E:
	mov r0, #0
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A74:
	mov r0, #1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02243A7A:
	mov r0, #0xa1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02243A80:
	mov r0, #1
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A86:
	mov r0, #1
	strb r0, [r4, #6]
	ldr r0, _02243A94 ; =0x200400C0
	str r0, [r4, #0]
_02243A8E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243A90: .word 0x0000010B
_02243A94: .word 0x200400C0
	thumb_func_end ov17_022439C8

	thumb_func_start ov17_02243A98
ov17_02243A98: ; 0x02243A98
	cmp r2, #0
	bne _02243AA0
	mov r0, #0
	bx lr
_02243AA0:
	lsl r3, r1, #1
	add r3, r0, r3
	ldrh r3, [r3, #0x26]
	cmp r2, r3
	bne _02243ABE
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0xe0
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r2, r0
	beq _02243ABE
	mov r0, #0
	bx lr
_02243ABE:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02243A98

	.rodata


	.global Unk_ov17_022536B4
Unk_ov17_022536B4: ; 0x022536B4
	.incbin "incbin/overlay17_rodata.bin", 0x928, 0x92C - 0x928

	.global Unk_ov17_022536B8
Unk_ov17_022536B8: ; 0x022536B8
	.incbin "incbin/overlay17_rodata.bin", 0x92C, 0x936 - 0x92C

	.global Unk_ov17_022536C2
Unk_ov17_022536C2: ; 0x022536C2
	.incbin "incbin/overlay17_rodata.bin", 0x936, 0x940 - 0x936

	.global Unk_ov17_022536CC
Unk_ov17_022536CC: ; 0x022536CC
	.incbin "incbin/overlay17_rodata.bin", 0x940, 0x94C - 0x940

	.global Unk_ov17_022536D8
Unk_ov17_022536D8: ; 0x022536D8
	.incbin "incbin/overlay17_rodata.bin", 0x94C, 0x958 - 0x94C

	.global Unk_ov17_022536E4
Unk_ov17_022536E4: ; 0x022536E4
	.incbin "incbin/overlay17_rodata.bin", 0x958, 0x964 - 0x958

	.global Unk_ov17_022536F0
Unk_ov17_022536F0: ; 0x022536F0
	.incbin "incbin/overlay17_rodata.bin", 0x964, 0x970 - 0x964

	.global Unk_ov17_022536FC
Unk_ov17_022536FC: ; 0x022536FC
	.incbin "incbin/overlay17_rodata.bin", 0x970, 0x980 - 0x970

	.global Unk_ov17_0225370C
Unk_ov17_0225370C: ; 0x0225370C
	.incbin "incbin/overlay17_rodata.bin", 0x980, 0x990 - 0x980

	.global Unk_ov17_0225371C
Unk_ov17_0225371C: ; 0x0225371C
	.incbin "incbin/overlay17_rodata.bin", 0x990, 0x9C4 - 0x990

	.global Unk_ov17_02253750
Unk_ov17_02253750: ; 0x02253750
	.incbin "incbin/overlay17_rodata.bin", 0x9C4, 0x9F8 - 0x9C4

	.global Unk_ov17_02253784
Unk_ov17_02253784: ; 0x02253784
	.incbin "incbin/overlay17_rodata.bin", 0x9F8, 0xA2C - 0x9F8

	.global Unk_ov17_022537B8
Unk_ov17_022537B8: ; 0x022537B8
	.incbin "incbin/overlay17_rodata.bin", 0xA2C, 0xA60 - 0xA2C

	.global Unk_ov17_022537EC
Unk_ov17_022537EC: ; 0x022537EC
	.incbin "incbin/overlay17_rodata.bin", 0xA60, 0xA94 - 0xA60

	.global Unk_ov17_02253820
Unk_ov17_02253820: ; 0x02253820
	.incbin "incbin/overlay17_rodata.bin", 0xA94, 0xAC8 - 0xA94

	.global Unk_ov17_02253854
Unk_ov17_02253854: ; 0x02253854
	.incbin "incbin/overlay17_rodata.bin", 0xAC8, 0xAFC - 0xAC8

	.global Unk_ov17_02253888
Unk_ov17_02253888: ; 0x02253888
	.incbin "incbin/overlay17_rodata.bin", 0xAFC, 0xB30 - 0xAFC

	.global Unk_ov17_022538BC
Unk_ov17_022538BC: ; 0x022538BC
	.incbin "incbin/overlay17_rodata.bin", 0xB30, 0xB64 - 0xB30

	.global Unk_ov17_022538F0
Unk_ov17_022538F0: ; 0x022538F0
	.incbin "incbin/overlay17_rodata.bin", 0xB64, 0xBC

