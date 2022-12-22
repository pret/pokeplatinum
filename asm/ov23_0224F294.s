	.include "macros/function.inc"
	.include "include/ov23_0224F294.inc"

	

	.text


	thumb_func_start ov23_0224F294
ov23_0224F294: ; 0x0224F294
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	ldr r3, _0224F44C ; =0x022568EC
	str r2, [sp, #0x14]
	add r2, sp, #0x9c
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x42
	mov r1, #0xb
	bl sub_02006C24
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, sp, #0x9c
	add r0, #0x74
	mov r2, #8
	mov r3, #0xb
	bl ov5_021D3190
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xe3
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r0, #0x74
	mov r2, #9
	mov r3, #0
	bl ov5_021D32E8
	mov r0, #0xe3
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r0, #0x74
	mov r2, #1
	mov r3, #0
	bl ov5_021D3374
	mov r0, #0xe3
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r0, #0x74
	add r1, r4, #0
	add r3, r2, #0
	bl ov5_021D339C
	mov r0, #1
	str r0, [sp]
	mov r0, #0xe3
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r0, #0x74
	mov r2, #2
	mov r3, #0
	bl ov5_021D3414
	ldr r0, [sp, #0xc]
	ldr r1, _0224F450 ; =0x0225695C
	add r0, #0x74
	bl ov5_021D3584
	mov r2, #0x76
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	add r2, #0x60
	ldrh r1, [r1, r2]
	ldr r0, [r0, #0]
	bl ov23_0224F4D0
	ldr r0, _0224F454 ; =0x000038C1
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #8
	add r0, #0x74
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0224F454 ; =0x000038C1
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #7
	add r0, #0x74
	mov r3, #0
	bl ov5_021D339C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224F454 ; =0x000038C1
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #0xa
	add r0, #0x74
	mov r3, #0
	bl ov5_021D3414
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [sp, #0x14]
	mov r4, #0
	cmp r0, #0
	bls _0224F416
	ldr r5, [sp, #0xc]
	ldr r3, _0224F458 ; =0x02256990
	add r7, r4, #0
	add r2, sp, #0x28
	mov r6, #6
_0224F394:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0224F394
	ldr r0, [r3, #0]
	ldr r3, _0224F45C ; =0x022568E0
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x18]
	add r0, #0x74
	str r0, [sp, #0x18]
_0224F3B4:
	add r6, sp, #0x28
	add r3, sp, #0x68
	mov r2, #6
_0224F3BA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224F3BA
	ldr r0, [r6, #0]
	add r1, sp, #0x68
	str r0, [r3, #0]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r0, r7
	add r0, sp, #0x68
	strh r1, [r0, #2]
	ldr r0, [sp, #0x10]
	ldrb r1, [r0, r4]
	lsl r0, r1, #1
	add r1, r1, r0
	add r0, sp, #0x68
	strh r1, [r0, #6]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x68
	bl ov5_021D3584
	mov r1, #0x77
	lsl r1, r1, #2
	add r2, sp, #0x5c
	add r3, sp, #0x1c
	str r0, [r5, r1]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #1
	ldr r0, [r0, #0]
	bl sub_02021C80
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r7, #0x18
	add r5, r5, #4
	cmp r4, r0
	blo _0224F3B4
_0224F416:
	mov r1, #0x8e
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	sub r1, #0x60
	add r0, r0, #1
	lsl r2, r0, #2
	ldr r0, [sp, #0xc]
	add r0, r0, r2
	ldr r0, [r0, r1]
	mov r1, #2
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov23_0224F500
	ldr r0, [sp, #0x14]
	mov r1, #0x7e
	add r2, r0, #1
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F44C: .word 0x022568EC
_0224F450: .word 0x0225695C
_0224F454: .word 0x000038C1
_0224F458: .word 0x02256990
_0224F45C: .word 0x022568E0
	thumb_func_end ov23_0224F294

	thumb_func_start ov23_0224F460
ov23_0224F460: ; 0x0224F460
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0224F48E
	mov r7, #0x76
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x20
_0224F478:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	bl sub_0200D0F4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _0224F478
_0224F48E:
	add r5, #0x74
	add r0, r5, #0
	bl ov5_021D375C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224F460

	thumb_func_start ov23_0224F498
ov23_0224F498: ; 0x0224F498
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0224F4CC
	mov r7, #0x76
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x20
_0224F4B0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _0224F4B0
_0224F4CC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F498

	thumb_func_start ov23_0224F4D0
ov23_0224F4D0: ; 0x0224F4D0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	mov r0, #0x18
	mul r0, r4
	add r0, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov23_0224F4D0

	thumb_func_start ov23_0224F500
ov23_0224F500: ; 0x0224F500
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021E24
	mov r1, #3
	bl _u32_div_f
	add r2, r0, #0
	lsl r1, r2, #1
	add r1, r2, r1
	add r0, r5, #0
	add r1, r4, r1
	bl sub_02021D6C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02021EC4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F500

	thumb_func_start ov23_0224F52C
ov23_0224F52C: ; 0x0224F52C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	add r4, r2, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl ov23_0224F500
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl ov23_0224F500
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224F52C

	thumb_func_start ov23_0224F560
ov23_0224F560: ; 0x0224F560
	push {r4, lr}
	add r4, r0, #0
	bl sub_02021E24
	mov r1, #3
	bl _u32_div_f
	cmp r1, #1
	bne _0224F586
	add r0, r4, #0
	bl sub_02021FD0
	cmp r0, #0
	bne _0224F586
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov23_0224F500
_0224F586:
	pop {r4, pc}
	thumb_func_end ov23_0224F560

	thumb_func_start ov23_0224F588
ov23_0224F588: ; 0x0224F588
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf
	mov r1, #8
	bl sub_02018144
	ldr r1, _0224F5B4 ; =0x022577B8
	mov r2, #8
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _0224F5B4 ; =0x022577B8
	mov r2, #0
	ldr r1, [r0, #0]
	strb r2, [r1, #4]
	ldr r1, [r0, #0]
	strb r2, [r1, #5]
	ldr r0, [r0, #0]
	str r4, [r0, #0]
	pop {r4, pc}
	nop
_0224F5B4: .word 0x022577B8
	thumb_func_end ov23_0224F588

	thumb_func_start ov23_0224F5B8
ov23_0224F5B8: ; 0x0224F5B8
	ldr r0, _0224F5C0 ; =0x022577B8
	ldr r3, _0224F5C4 ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0224F5C0: .word 0x022577B8
_0224F5C4: .word sub_020181C4
	thumb_func_end ov23_0224F5B8

	thumb_func_start ov23_0224F5C8
ov23_0224F5C8: ; 0x0224F5C8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028E28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F5C8

	thumb_func_start ov23_0224F5DC
ov23_0224F5DC: ; 0x0224F5DC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_020289A0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F5DC

	thumb_func_start ov23_0224F5F0
ov23_0224F5F0: ; 0x0224F5F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_020289B8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F5F0

	thumb_func_start ov23_0224F608
ov23_0224F608: ; 0x0224F608
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028B70
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F608

	thumb_func_start ov23_0224F61C
ov23_0224F61C: ; 0x0224F61C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028B88
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F61C

	thumb_func_start ov23_0224F634
ov23_0224F634: ; 0x0224F634
	push {r3, lr}
	ldr r1, _0224F654 ; =0x022577B8
	ldr r1, [r1, #0]
	ldrb r1, [r1, #5]
	cmp r1, r0
	beq _0224F644
	bl GF_AssertFail
_0224F644:
	ldr r0, _0224F654 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028B94
	pop {r3, pc}
	nop
_0224F654: .word 0x022577B8
	thumb_func_end ov23_0224F634

	thumb_func_start ov23_0224F658
ov23_0224F658: ; 0x0224F658
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028C3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F658

	thumb_func_start ov23_0224F66C
ov23_0224F66C: ; 0x0224F66C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028E44
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F66C

	thumb_func_start ov23_0224F684
ov23_0224F684: ; 0x0224F684
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028C54
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F684

	thumb_func_start ov23_0224F69C
ov23_0224F69C: ; 0x0224F69C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028C60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F69C

	thumb_func_start ov23_0224F6B4
ov23_0224F6B4: ; 0x0224F6B4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028D58
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F6B4

	thumb_func_start ov23_0224F6C8
ov23_0224F6C8: ; 0x0224F6C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028D74
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F6C8

	thumb_func_start ov23_0224F6E0
ov23_0224F6E0: ; 0x0224F6E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0xb
	blt _0224F6EE
	bl GF_AssertFail
_0224F6EE:
	cmp r5, #6
	blt _0224F6F4
	sub r5, r5, #5
_0224F6F4:
	cmp r4, #0x63
	ble _0224F6FA
	mov r4, #0x63
_0224F6FA:
	ldr r0, _0224F70C ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02028CB0
	pop {r3, r4, r5, pc}
	nop
_0224F70C: .word 0x022577B8
	thumb_func_end ov23_0224F6E0

	thumb_func_start ov23_0224F710
ov23_0224F710: ; 0x0224F710
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x3c
	blt _0224F71C
	bl GF_AssertFail
_0224F71C:
	ldr r0, _0224F72C ; =0x022577B8
	add r1, r4, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_02028DB4
	pop {r4, pc}
	nop
_0224F72C: .word 0x022577B8
	thumb_func_end ov23_0224F710

	thumb_func_start ov23_0224F730
ov23_0224F730: ; 0x0224F730
	add r1, r0, #0
	ldr r0, _0224F73C ; =0x022577B8
	ldr r3, _0224F740 ; =sub_02028E84
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0224F73C: .word 0x022577B8
_0224F740: .word sub_02028E84
	thumb_func_end ov23_0224F730

	thumb_func_start ov23_0224F744
ov23_0224F744: ; 0x0224F744
	add r1, r0, #0
	ldr r0, _0224F750 ; =0x022577B8
	ldr r3, _0224F754 ; =sub_02028BC8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0224F750: .word 0x022577B8
_0224F754: .word sub_02028BC8
	thumb_func_end ov23_0224F744

	thumb_func_start ov23_0224F758
ov23_0224F758: ; 0x0224F758
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224F7C4 ; =0x000005FD
	add r6, r1, #0
	bl sub_02005748
	mov r0, #2
	bl ov23_022430D0
	mov r1, #0x25
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x7f
	str r6, [r4, #0xc]
	lsl r0, r0, #2
	str r5, [r4, r0]
	mov r1, #0
	add r0, #0x4a
	strb r1, [r4, r0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x70]
	ldr r0, _0224F7C8 ; =ov23_0224F914
	ldr r2, _0224F7CC ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _0224F7D0 ; =ov23_02251270
	add r0, r4, #0
	bl ov23_022431EC
	pop {r4, r5, r6, pc}
	nop
_0224F7C4: .word 0x000005FD
_0224F7C8: .word ov23_0224F914
_0224F7CC: .word 0x00002710
_0224F7D0: .word ov23_02251270
	thumb_func_end ov23_0224F758

	thumb_func_start ov23_0224F7D4
ov23_0224F7D4: ; 0x0224F7D4
	mov r1, #0
	strb r1, [r0]
	mov r1, #1
	strb r1, [r0, #1]
	mov r1, #2
	strb r1, [r0, #2]
	mov r1, #3
	strb r1, [r0, #3]
	mov r1, #4
	strb r1, [r0, #4]
	mov r1, #5
	strb r1, [r0, #5]
	mov r1, #6
	strb r1, [r0, #6]
	mov r0, #7
	bx lr
	thumb_func_end ov23_0224F7D4

	thumb_func_start ov23_0224F7F4
ov23_0224F7F4: ; 0x0224F7F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #0x18
	bl ov23_0224F7D4
	mov r0, #7
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224F904 ; =0x000002E7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	add r1, #0x10
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x14
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224F908 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_0224219C
	bl ov23_02253E3C
	ldr r4, _0224F90C ; =0x02256924
	str r0, [sp, #0x14]
	mov r6, #0
_0224F84A:
	cmp r6, #4
	bne _0224F872
	ldr r0, [r5, #0xc]
	bl sub_0203D174
	bl sub_02025E38
	mov r1, #4
	bl sub_02025F04
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #4]
	add r1, r7, #0
	bl sub_02013A6C
	add r0, r7, #0
	bl sub_020237BC
	b _0224F87E
_0224F872:
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x14]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
_0224F87E:
	add r6, r6, #1
	add r4, #8
	cmp r6, #7
	blo _0224F84A
	ldr r0, [r5, #0xc]
	mov r3, #0x8e
	add r0, #0x90
	ldr r0, [r0, #0]
	lsl r3, r3, #2
	strh r0, [r5, r3]
	ldr r0, [r5, #0x40]
	mov r1, #1
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	mov r1, #7
	strb r1, [r0, #0x12]
	ldrb r2, [r0, #0x13]
	mov r1, #0xf
	bic r2, r1
	mov r1, #8
	orr r1, r2
	strb r1, [r0, #0x13]
	ldrb r2, [r0, #0x13]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #0x13]
	ldrb r2, [r0, #0x13]
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0x13]
	mov r0, #0xb
	str r0, [sp]
	ldr r0, _0224F910 ; =0x00000402
	mov r1, #0x1c
	str r0, [sp, #4]
	ldrh r3, [r5, r3]
	add r0, sp, #0x20
	mov r2, #4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02001AF4
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [r5, #0x48]
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A9A4
	add r0, r5, #0
	add r1, sp, #0x18
	mov r2, #7
	bl ov23_0224F294
	bl sub_020594FC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F904: .word 0x000002E7
_0224F908: .word 0x000003D9
_0224F90C: .word 0x02256924
_0224F910: .word 0x00000402
	thumb_func_end ov23_0224F7F4

	thumb_func_start ov23_0224F914
ov23_0224F914: ; 0x0224F914
	push {r3, r4, r5, lr}
	ldr r2, _0224FA4C ; =0x00000246
	add r4, r1, #0
	ldrb r2, [r4, r2]
	add r5, r0, #0
	cmp r2, #0x13
	bls _0224F924
	b _0224FA4A
_0224F924:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224F930: ; jump table
	.short _0224F958 - _0224F930 - 2 ; case 0
	.short _0224F968 - _0224F930 - 2 ; case 1
	.short _0224F96E - _0224F930 - 2 ; case 2
	.short _0224F984 - _0224F930 - 2 ; case 3
	.short _0224FA4A - _0224F930 - 2 ; case 4
	.short _0224F99A - _0224F930 - 2 ; case 5
	.short _0224F9A0 - _0224F930 - 2 ; case 6
	.short _0224F9A6 - _0224F930 - 2 ; case 7
	.short _0224F9AC - _0224F930 - 2 ; case 8
	.short _0224F9B2 - _0224F930 - 2 ; case 9
	.short _0224FA4A - _0224F930 - 2 ; case 10
	.short _0224F9B8 - _0224F930 - 2 ; case 11
	.short _0224F9BE - _0224F930 - 2 ; case 12
	.short _0224F9C4 - _0224F930 - 2 ; case 13
	.short _0224F9F2 - _0224F930 - 2 ; case 14
	.short _0224FA18 - _0224F930 - 2 ; case 15
	.short _0224FA3A - _0224F930 - 2 ; case 16
	.short _0224FA40 - _0224F930 - 2 ; case 17
	.short _0224FA34 - _0224F930 - 2 ; case 18
	.short _0224FA46 - _0224F930 - 2 ; case 19
_0224F958:
	add r0, r4, #0
	bl ov23_0224F7F4
	ldr r0, _0224FA4C ; =0x00000246
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0224F968:
	bl ov23_0224FA58
	pop {r3, r4, r5, pc}
_0224F96E:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02243204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov23_02250B34
	pop {r3, r4, r5, pc}
_0224F984:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02243204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov23_02250B34
	pop {r3, r4, r5, pc}
_0224F99A:
	bl ov23_0224FF58
	pop {r3, r4, r5, pc}
_0224F9A0:
	bl ov23_02250378
	pop {r3, r4, r5, pc}
_0224F9A6:
	bl ov23_02250704
	pop {r3, r4, r5, pc}
_0224F9AC:
	bl ov23_02250EAC
	pop {r3, r4, r5, pc}
_0224F9B2:
	bl ov23_022510F0
	pop {r3, r4, r5, pc}
_0224F9B8:
	bl ov23_02250998
	pop {r3, r4, r5, pc}
_0224F9BE:
	bl ov23_022509D4
	pop {r3, r4, r5, pc}
_0224F9C4:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224FA4A
	ldr r0, _0224FA50 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224FA4A
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov23_02250B34
	bl ov23_02243204
	pop {r3, r4, r5, pc}
_0224F9F2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224FA4A
	ldr r0, _0224FA50 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224FA4A
	ldr r1, [r4, #0]
	add r0, r4, #0
	blx r1
	ldr r0, _0224FA54 ; =0x00000245
	ldrb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0224FA18:
	add r0, r4, #0
	bl ov23_0224FB7C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov23_02250B34
	bl ov23_02243204
	ldr r0, [r4, #0xc]
	bl sub_02054064
	pop {r3, r4, r5, pc}
_0224FA34:
	bl ov23_02250048
	pop {r3, r4, r5, pc}
_0224FA3A:
	bl ov23_0225044C
	pop {r3, r4, r5, pc}
_0224FA40:
	bl ov23_022507D8
	pop {r3, r4, r5, pc}
_0224FA46:
	bl ov23_02250F8C
_0224FA4A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224FA4C: .word 0x00000246
_0224FA50: .word 0x021BF67C
_0224FA54: .word 0x00000245
	thumb_func_end ov23_0224F914

	thumb_func_start ov23_0224FA58
ov23_0224FA58: ; 0x0224FA58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x54]
	bl sub_02001DC4
	add r5, r0, #0
	mov r1, #0x5e
	ldr r0, [r4, #0x54]
	lsl r1, r1, #4
	bl sub_02001C94
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x54]
	bl sub_02001DC4
	mov r2, #0x8e
	lsl r2, r2, #2
	strh r0, [r4, r2]
	ldrh r1, [r4, r2]
	cmp r5, r1
	beq _0224FAAA
	sub r2, #0x60
	ldr r0, [r4, r2]
	ldr r0, [r0, #0]
	bl ov23_0224F4D0
	mov r2, #0x8e
	lsl r2, r2, #2
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0224F52C
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	add r0, #0x90
	str r1, [r0, #0]
_0224FAAA:
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	sub r0, #0x60
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	ldr r0, [r0, #0]
	bl ov23_0224F560
	bl sub_020360F0
	cmp r0, #0
	beq _0224FAD2
	mov r1, #1
	mov r0, #0x8f
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224FAD2:
	mov r1, #0x8f
	lsl r1, r1, #2
	mov r2, #1
	ldr r0, [r4, r1]
	mvn r2, r2
	cmp r0, r2
	beq _0224FAF6
	add r1, r2, #1
	cmp r0, r1
	bne _0224FAFE
	add r0, r4, #0
	bl ov23_0224F498
	ldr r0, [r4, #0x74]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224FAF6:
	mov r0, #2
	add r1, #0xa
	strb r0, [r4, r1]
	b _0224FB66
_0224FAFE:
	ldr r1, _0224FB6C ; =ov23_0224FDE0
	cmp r0, r1
	beq _0224FB16
	ldr r1, _0224FB70 ; =ov23_022501BC
	cmp r0, r1
	beq _0224FB16
	ldr r1, _0224FB74 ; =ov23_02250CD4
	cmp r0, r1
	beq _0224FB16
	ldr r1, _0224FB78 ; =ov23_02250598
	cmp r0, r1
	bne _0224FB3C
_0224FB16:
	mov r0, #4
	bl sub_0206A780
	str r0, [r4, #8]
	mov r1, #0xc8
	mov r2, #0x14
	mov r3, #0x7a
	bl sub_0206A8A0
	mov r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_0224FB3C:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224FB5C
	add r0, r4, #0
	bl ov23_0224F460
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224FB5C:
	mov r1, #0x8f
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
_0224FB66:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224FB6C: .word ov23_0224FDE0
_0224FB70: .word ov23_022501BC
_0224FB74: .word ov23_02250CD4
_0224FB78: .word ov23_02250598
	thumb_func_end ov23_0224FA58

	thumb_func_start ov23_0224FB7C
ov23_0224FB7C: ; 0x0224FB7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0224FB92
	mov r1, #0
	add r2, r1, #0
	bl ov23_02248EF8
	mov r0, #0
	str r0, [r4, #0x4c]
_0224FB92:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0224FBA6
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0
	str r0, [r4, #0x48]
	b _0224FBC6
_0224FBA6:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224FBC6
	add r0, r4, #0
	bl ov23_0224F460
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224FBC6:
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A7CC
	cmp r0, #0
	beq _0224FBF8
	add r0, r4, #0
	add r0, #0x10
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl sub_0201C3C0
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A8FC
	ldr r0, [r4, #0x40]
	bl sub_02013A3C
	add r0, r4, #0
	bl ov23_02252DF4
_0224FBF8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224FB7C

	thumb_func_start ov23_0224FBFC
ov23_0224FBFC: ; 0x0224FBFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	mov r0, #6
	str r0, [sp, #0x1c]
	mov r0, #0x19
	mov r7, #0xb
	str r0, [sp, #0x18]
	cmp r1, #1
	beq _0224FC1A
	cmp r1, #2
	beq _0224FC20
	cmp r1, #3
	beq _0224FC28
	b _0224FC32
_0224FC1A:
	mov r6, #3
	ldr r4, _0224FCDC ; =0x02257644
	b _0224FC32
_0224FC20:
	mov r6, #2
	mov r7, #0xd
	ldr r4, _0224FCE0 ; =0x02257634
	b _0224FC32
_0224FC28:
	mov r0, #0x14
	ldr r4, _0224FCE4 ; =0x0225765C
	mov r6, #3
	str r7, [sp, #0x1c]
	str r0, [sp, #0x18]
_0224FC32:
	add r0, r6, #0
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x44]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r6, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224FCE8 ; =0x000002E7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r0, #8]
	add r1, #0x20
	mov r2, #3
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224FCEC ; =0x000003D9
	add r0, #0x20
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_0224219C
	bl ov23_02253E3C
	mov r7, #0
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _0224FC9E
_0224FC8A:
	ldr r0, [r5, #0x44]
	ldr r1, [sp, #0x14]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r7, r7, #1
	add r4, #8
	cmp r7, r6
	blt _0224FC8A
_0224FC9E:
	ldr r4, _0224FCF0 ; =0x02256904
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r6, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x20
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0x44]
	mov r1, #0
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x20
	str r0, [sp, #0x2c]
	add r0, r2, #0
	add r2, r1, #0
	mov r3, #4
	str r5, [sp, #0x3c]
	bl sub_0200112C
	str r0, [r5, #0x50]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224FCDC: .word 0x02257644
_0224FCE0: .word 0x02257634
_0224FCE4: .word 0x0225765C
_0224FCE8: .word 0x000002E7
_0224FCEC: .word 0x000003D9
_0224FCF0: .word 0x02256904
	thumb_func_end ov23_0224FBFC

	thumb_func_start ov23_0224FCF4
ov23_0224FCF4: ; 0x0224FCF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0224FD1C
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
	add r1, r4, #0
	add r1, #0x24
	ldrb r1, [r1]
	ldr r0, [r4, #0x20]
	bl sub_0201C3C0
	ldr r0, [r4, #0x44]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x50]
_0224FD1C:
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A7CC
	cmp r0, #0
	beq _0224FD3A
	add r0, r4, #0
	add r0, #0x20
	mov r1, #1
	bl sub_0200DC9C
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201A8FC
_0224FD3A:
	pop {r4, pc}
	thumb_func_end ov23_0224FCF4

	thumb_func_start ov23_0224FD3C
ov23_0224FD3C: ; 0x0224FD3C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_0224FB7C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224FD52
	bl sub_0206A844
	mov r0, #0
	str r0, [r4, #8]
_0224FD52:
	ldr r0, _0224FD64 ; =0x00000246
	mov r1, #0
	strb r1, [r4, r0]
	bl ov23_022421DC
	bl ov23_02254044
	pop {r4, pc}
	nop
_0224FD64: .word 0x00000246
	thumb_func_end ov23_0224FD3C

	thumb_func_start ov23_0224FD68
ov23_0224FD68: ; 0x0224FD68
	push {r3, lr}
	ldr r1, _0224FD80 ; =0x022577B8
	ldr r2, [r1, #0]
	ldrb r1, [r2, #5]
	cmp r1, r0
	bne _0224FD7C
	ldrb r1, [r2, #4]
	ldr r0, [r2, #0]
	bl sub_02028E50
_0224FD7C:
	pop {r3, pc}
	nop
_0224FD80: .word 0x022577B8
	thumb_func_end ov23_0224FD68

	thumb_func_start ov23_0224FD84
ov23_0224FD84: ; 0x0224FD84
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r2, #0x81
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	add r0, r4, #0
	blx r2
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	bne _0224FDA6
	mov r4, #0x44
	b _0224FDAA
_0224FDA6:
	add r4, r0, #0
	add r4, #0x22
_0224FDAA:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224FD84

	thumb_func_start ov23_0224FDBC
ov23_0224FDBC: ; 0x0224FDBC
	mov r1, #2
	ldr r2, _0224FDD4 ; =ov23_0224F5C8
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _0224FDD8 ; =ov23_0224F66C
	add r1, r1, #4
	str r2, [r0, r1]
	mov r1, #0
	ldr r3, _0224FDDC ; =ov23_0224FE38
	str r1, [r0, #0x64]
	bx r3
	nop
_0224FDD4: .word ov23_0224F5C8
_0224FDD8: .word ov23_0224F66C
_0224FDDC: .word ov23_0224FE38
	thumb_func_end ov23_0224FDBC

	thumb_func_start ov23_0224FDE0
ov23_0224FDE0: ; 0x0224FDE0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #8
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _0224FE28 ; =ov23_0224F5C8
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _0224FE2C ; =ov23_0224F66C
	sub r0, #0x2c
	str r2, [r4, r0]
	ldr r0, _0224FE30 ; =ov23_0224FD84
	str r0, [r4, #0x60]
	mov r0, #0
	str r0, [r4, #0x64]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1c
	strh r0, [r4, r1]
	ldr r1, _0224FE34 ; =0x02028EA9
	add r0, r4, #0
	bl ov23_0224FE38
	pop {r4, pc}
	nop
_0224FE28: .word ov23_0224F5C8
_0224FE2C: .word ov23_0224F66C
_0224FE30: .word ov23_0224FD84
_0224FE34: .word 0x02028EA9
	thumb_func_end ov23_0224FDE0

	thumb_func_start ov23_0224FE38
ov23_0224FE38: ; 0x0224FE38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0x14]
	mov r1, #0x81
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r7, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	blx r1
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224FB7C
	bl ov23_022421DC
	ldr r1, _0224FF40 ; =0x00000276
	mov r2, #0
	bl ov23_02253DFC
	add r0, r6, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224FF44 ; =0x00000257
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224FF48 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_022421DC
	bl ov23_02253E3C
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _0224FEC0
_0224FEA8:
	add r0, r4, #0
	add r1, r5, #0
	blx r7
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, r6
	blt _0224FEA8
_0224FEC0:
	mov r2, #0x22
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	sub r3, #0x24
	bl sub_02013A4C
	ldr r3, _0224FF4C ; =0x02256904
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #1
	add r2, sp, #0x1c
	strh r0, [r2, #0x10]
	mov r1, #6
	strh r1, [r2, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x60]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x64]
	str r0, [sp, #0x24]
	str r5, [sp, #0x38]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	ldr r0, [sp, #0x14]
	mov r2, #0x23
	str r0, [sp]
	ldr r0, _0224FF50 ; =0x022577B8
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r3, #4
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov23_02248C08
	str r0, [r5, #0x4c]
	ldr r0, _0224FF54 ; =0x00000246
	mov r1, #5
	strb r1, [r5, r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0224FF40: .word 0x00000276
_0224FF44: .word 0x00000257
_0224FF48: .word 0x000003D9
_0224FF4C: .word 0x02256904
_0224FF50: .word 0x022577B8
_0224FF54: .word 0x00000246
	thumb_func_end ov23_0224FE38

	thumb_func_start ov23_0224FF58
ov23_0224FF58: ; 0x0224FF58
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #8
	bl ov23_022430E0
	bl sub_020360F0
	cmp r0, #0
	beq _0224FF8A
	mov r4, #1
	mvn r4, r4
_0224FF8A:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0224FF94
	add r4, r0, #0
_0224FF94:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224FFBE
	add r0, r0, #1
	cmp r4, r0
	bne _0224FFC6
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224FFBE:
	add r0, r5, #0
	bl ov23_0224FD3C
	b _0225003C
_0224FFC6:
	bl ov23_022421DC
	bl ov23_02254044
	ldr r0, _02250040 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F66C
	ldr r1, _02250040 ; =0x022577B8
	ldr r2, [r1, #0]
	strb r0, [r2, #5]
	ldr r0, [r1, #0]
	ldrb r0, [r0, #5]
	cmp r0, #0x21
	bne _0224FFF6
	bl ov23_0224CD68
	ldr r0, _02250044 ; =0x00000246
	mov r1, #3
	strb r1, [r5, r0]
	b _02250028
_0224FFF6:
	add r0, r5, #0
	bl ov23_0224FB7C
	add r0, r5, #0
	mov r1, #1
	bl ov23_0224FBFC
	ldr r0, _02250044 ; =0x00000246
	mov r1, #0x12
	strb r1, [r5, r0]
	bl ov23_0224219C
	ldr r2, _02250040 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541B4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x81
	add r3, r2, #0
	bl ov23_02253F60
_02250028:
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_0225003C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250040: .word 0x022577B8
_02250044: .word 0x00000246
	thumb_func_end ov23_0224FF58

	thumb_func_start ov23_02250048
ov23_02250048: ; 0x02250048
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	bl sub_02001288
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02250072
	ldr r0, _02250110 ; =0x000005DC
	bl sub_02005748
_02250072:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250084
	add r0, r0, #1
	cmp r4, r0
	bne _0225009E
	mov r0, #0
	pop {r4, r5, r6, pc}
_02250084:
	ldr r0, _02250110 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FCF4
	add r0, r5, #0
	bl ov23_0224FDE0
	ldr r0, _02250114 ; =0x00000246
	mov r1, #5
	strb r1, [r5, r0]
	b _0225010C
_0225009E:
	add r0, r5, #0
	bl ov23_0224FCF4
	cmp r4, #1
	bne _022500CA
	ldr r0, _02250118 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	bl ov23_0224F66C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov23_02243AD4
	ldr r0, _0225011C ; =0x00000631
	bl sub_02005748
	ldr r0, _02250114 ; =0x00000246
	mov r1, #3
	strb r1, [r5, r0]
	b _0225010C
_022500CA:
	cmp r4, #2
	bne _0225010C
	ldr r0, _02250110 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02250118 ; =0x022577B8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	bl ov23_0224FD68
	bl ov23_0224219C
	ldr r2, _02250118 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541B4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x82
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02250120 ; =ov23_0224FDE0
	mov r1, #5
	str r0, [r5, #0]
	ldr r0, _02250124 ; =0x00000245
	strb r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #1
	strb r1, [r5, r0]
_0225010C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02250110: .word 0x000005DC
_02250114: .word 0x00000246
_02250118: .word 0x022577B8
_0225011C: .word 0x00000631
_02250120: .word ov23_0224FDE0
_02250124: .word 0x00000245
	thumb_func_end ov23_02250048

	thumb_func_start ov23_02250128
ov23_02250128: ; 0x02250128
	push {r3, lr}
	ldr r1, _02250148 ; =0x022577B8
	ldr r1, [r1, #0]
	ldrb r1, [r1, #5]
	cmp r1, r0
	beq _02250138
	bl GF_AssertFail
_02250138:
	ldr r0, _02250148 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028C6C
	pop {r3, pc}
	nop
_02250148: .word 0x022577B8
	thumb_func_end ov23_02250128

	thumb_func_start ov23_0225014C
ov23_0225014C: ; 0x0225014C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r2, #0x81
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	add r0, r4, #0
	blx r2
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	bne _0225016E
	mov r4, #0x3d
	b _02250172
_0225016E:
	add r4, r0, #0
	add r4, #0x3e
_02250172:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225014C

	thumb_func_start ov23_02250184
ov23_02250184: ; 0x02250184
	mov r2, #2
	ldr r1, _022501A4 ; =ov23_0224F658
	lsl r2, r2, #8
	str r1, [r0, r2]
	add r1, r2, #4
	ldr r3, _022501A8 ; =ov23_0224F684
	add r2, #8
	str r3, [r0, r1]
	ldr r1, _022501AC ; =ov23_0224F69C
	ldr r3, _022501B0 ; =ov23_0225021C
	str r1, [r0, r2]
	ldr r1, _022501B4 ; =ov23_0225014C
	str r1, [r0, #0x60]
	ldr r1, _022501B8 ; =0x02028CD9
	bx r3
	nop
_022501A4: .word ov23_0224F658
_022501A8: .word ov23_0224F684
_022501AC: .word ov23_0224F69C
_022501B0: .word ov23_0225021C
_022501B4: .word ov23_0225014C
_022501B8: .word 0x02028CD9
	thumb_func_end ov23_02250184

	thumb_func_start ov23_022501BC
ov23_022501BC: ; 0x022501BC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #9
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _02250208 ; =ov23_0224F658
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _0225020C ; =ov23_0224F684
	sub r0, #0x2c
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _02250210 ; =ov23_0224F69C
	sub r0, #0x28
	str r2, [r4, r0]
	ldr r0, _02250214 ; =ov23_0225014C
	str r0, [r4, #0x60]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1c
	strh r0, [r4, r1]
	ldr r1, _02250218 ; =0x02028CD9
	add r0, r4, #0
	bl ov23_0225021C
	pop {r4, pc}
	nop
_02250208: .word ov23_0224F658
_0225020C: .word ov23_0224F684
_02250210: .word ov23_0224F69C
_02250214: .word ov23_0225014C
_02250218: .word 0x02028CD9
	thumb_func_end ov23_022501BC

	thumb_func_start ov23_0225021C
ov23_0225021C: ; 0x0225021C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r2, #0x81
	add r5, r0, #0
	lsl r2, r2, #2
	str r1, [sp, #0x14]
	ldr r1, [r5, r2]
	str r1, [sp, #0x1c]
	add r1, r2, #4
	ldr r7, [r5, r1]
	sub r1, r2, #4
	ldr r1, [r5, r1]
	blx r1
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224FB7C
	bl ov23_022421DC
	mov r1, #0x9d
	lsl r1, r1, #2
	mov r2, #0
	bl ov23_02253DFC
	add r0, r6, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02250364 ; =0x00000257
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02250368 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_022421DC
	bl ov23_02253E3C
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _022502EA
_02250294:
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	add r1, r5, #0
	blx r2
	add r2, r0, #0
	ldr r0, [r5, #0x70]
	mov r1, #2
	bl sub_0200BA94
	add r0, r4, #0
	add r1, r5, #0
	blx r7
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x70]
	mov r1, #6
	mov r3, #2
	bl sub_0200B60C
	bl ov23_0224219C
	bl ov23_02253E3C
	ldr r2, [r5, #0x6c]
	mov r1, #0x80
	bl sub_0200B1B8
	ldr r0, [r5, #0x70]
	ldr r1, [r5, #0x68]
	ldr r2, [r5, #0x6c]
	bl sub_0200C388
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x68]
	add r2, r4, #0
	bl sub_02013A6C
	add r4, r4, #1
	cmp r4, r6
	blt _02250294
_022502EA:
	mov r2, #0x3c
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	sub r3, #0x3e
	bl sub_02013A4C
	ldr r3, _0225036C ; =0x02256904
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #1
	add r2, sp, #0x20
	strh r0, [r2, #0x10]
	mov r1, #6
	strh r1, [r2, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x60]
	str r0, [sp, #0x24]
	str r5, [sp, #0x3c]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	ldr r0, [sp, #0x14]
	mov r2, #0x23
	str r0, [sp]
	ldr r0, _02250370 ; =0x022577B8
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r3, #4
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x20
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov23_02248C08
	str r0, [r5, #0x4c]
	ldr r0, _02250374 ; =0x00000246
	mov r1, #6
	strb r1, [r5, r0]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250364: .word 0x00000257
_02250368: .word 0x000003D9
_0225036C: .word 0x02256904
_02250370: .word 0x022577B8
_02250374: .word 0x00000246
	thumb_func_end ov23_0225021C

	thumb_func_start ov23_02250378
ov23_02250378: ; 0x02250378
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #9
	bl ov23_022430E0
	bl sub_020360F0
	cmp r0, #0
	beq _022503AA
	mov r4, #1
	mvn r4, r4
_022503AA:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022503B4
	add r4, r0, #0
_022503B4:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022503DE
	add r0, r0, #1
	cmp r4, r0
	bne _022503E6
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	mov r0, #0
	pop {r3, r4, r5, pc}
_022503DE:
	add r0, r5, #0
	bl ov23_0224FD3C
	b _02250440
_022503E6:
	add r0, r5, #0
	bl ov23_0224FB7C
	ldr r0, _02250444 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F684
	ldr r1, _02250444 ; =0x022577B8
	ldr r1, [r1, #0]
	strb r0, [r1, #5]
	add r0, r5, #0
	mov r1, #1
	bl ov23_0224FBFC
	ldr r0, _02250448 ; =0x00000246
	mov r1, #0x10
	strb r1, [r5, r0]
	bl ov23_0224219C
	ldr r2, _02250444 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x81
	add r3, r2, #0
	bl ov23_02253F60
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_02250440:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250444: .word 0x022577B8
_02250448: .word 0x00000246
	thumb_func_end ov23_02250378

	thumb_func_start ov23_0225044C
ov23_0225044C: ; 0x0225044C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	bl sub_02001288
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02250476
	ldr r0, _0225052C ; =0x000005DC
	bl sub_02005748
_02250476:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250488
	add r0, r0, #1
	cmp r4, r0
	bne _022504A2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02250488:
	ldr r0, _0225052C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FCF4
	add r0, r5, #0
	bl ov23_022501BC
	ldr r0, _02250530 ; =0x00000246
	mov r1, #6
	strb r1, [r5, r0]
	b _02250528
_022504A2:
	add r0, r5, #0
	bl ov23_0224FCF4
	cmp r4, #1
	bne _022504E6
	bl sub_0203608C
	add r4, r0, #0
	bl sub_02058D88
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02058DC0
	add r4, r0, #0
	bl ov23_022421DC
	bl ov23_02254044
	ldr r0, _02250534 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	bl ov23_0224F69C
	add r1, r0, #0
	ldr r0, _02250534 ; =0x022577B8
	add r2, r6, #0
	ldr r0, [r0, #0]
	add r3, r4, #0
	ldrb r0, [r0, #5]
	bl ov23_02241AE8
	b _02250518
_022504E6:
	cmp r4, #2
	bne _02250518
	ldr r0, _0225052C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02250534 ; =0x022577B8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	bl ov23_02250128
	bl ov23_0224219C
	ldr r2, _02250534 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x82
	add r3, r2, #0
	bl ov23_02253F40
_02250518:
	ldr r0, _02250538 ; =ov23_022501BC
	mov r1, #6
	str r0, [r5, #0]
	ldr r0, _0225053C ; =0x00000245
	strb r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #1
	strb r1, [r5, r0]
_02250528:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225052C: .word 0x000005DC
_02250530: .word 0x00000246
_02250534: .word 0x022577B8
_02250538: .word ov23_022501BC
_0225053C: .word 0x00000245
	thumb_func_end ov23_0225044C

	thumb_func_start ov23_02250540
ov23_02250540: ; 0x02250540
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r2, #0x81
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	add r0, r4, #0
	blx r2
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	bne _02250562
	mov r4, #0x3d
	b _02250566
_02250562:
	add r4, r0, #0
	add r4, #0x3e
_02250566:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02250540

	thumb_func_start ov23_02250578
ov23_02250578: ; 0x02250578
	mov r1, #2
	ldr r2, _0225058C ; =ov23_0224F6B4
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _02250590 ; =ov23_0224F6C8
	add r1, r1, #4
	str r2, [r0, r1]
	ldr r3, _02250594 ; =ov23_022505EC
	mov r1, #0
	bx r3
	; .align 2, 0
_0225058C: .word ov23_0224F6B4
_02250590: .word ov23_0224F6C8
_02250594: .word ov23_022505EC
	thumb_func_end ov23_02250578

	thumb_func_start ov23_02250598
ov23_02250598: ; 0x02250598
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xb
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _022505DC ; =ov23_0224F6B4
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _022505E0 ; =ov23_0224F6C8
	sub r0, #0x2c
	str r2, [r4, r0]
	ldr r0, _022505E4 ; =ov23_02250540
	str r0, [r4, #0x60]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1c
	strh r0, [r4, r1]
	ldr r1, _022505E8 ; =0x02028DD9
	add r0, r4, #0
	bl ov23_022505EC
	pop {r4, pc}
	nop
_022505DC: .word ov23_0224F6B4
_022505E0: .word ov23_0224F6C8
_022505E4: .word ov23_02250540
_022505E8: .word 0x02028DD9
	thumb_func_end ov23_02250598

	thumb_func_start ov23_022505EC
ov23_022505EC: ; 0x022505EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0x14]
	mov r1, #0x81
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r7, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	blx r1
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224FB7C
	bl ov23_022421DC
	mov r1, #0x9d
	lsl r1, r1, #2
	mov r2, #0
	bl ov23_02253DFC
	add r0, r6, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _022506F0 ; =0x00000257
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _022506F4 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_022421DC
	bl ov23_02253E3C
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _02250676
_0225065E:
	add r0, r4, #0
	add r1, r5, #0
	blx r7
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, r6
	blt _0225065E
_02250676:
	mov r2, #0x3c
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	sub r3, #0x3e
	bl sub_02013A4C
	ldr r3, _022506F8 ; =0x02256904
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #1
	add r2, sp, #0x1c
	strh r0, [r2, #0x10]
	mov r1, #6
	strh r1, [r2, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x60]
	str r0, [sp, #0x20]
	str r5, [sp, #0x38]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	ldr r0, [sp, #0x14]
	mov r2, #0x23
	str r0, [sp]
	ldr r0, _022506FC ; =0x022577B8
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r3, #4
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov23_02248C08
	str r0, [r5, #0x4c]
	ldr r0, _02250700 ; =0x00000246
	mov r1, #7
	strb r1, [r5, r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022506F0: .word 0x00000257
_022506F4: .word 0x000003D9
_022506F8: .word 0x02256904
_022506FC: .word 0x022577B8
_02250700: .word 0x00000246
	thumb_func_end ov23_022505EC

	thumb_func_start ov23_02250704
ov23_02250704: ; 0x02250704
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0xb
	bl ov23_022430E0
	bl sub_020360F0
	cmp r0, #0
	beq _02250736
	mov r4, #1
	mvn r4, r4
_02250736:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02250740
	add r4, r0, #0
_02250740:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0225076A
	add r0, r0, #1
	cmp r4, r0
	bne _02250772
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225076A:
	add r0, r5, #0
	bl ov23_0224FD3C
	b _022507CC
_02250772:
	add r0, r5, #0
	bl ov23_0224FB7C
	ldr r0, _022507D0 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F6C8
	ldr r1, _022507D0 ; =0x022577B8
	ldr r1, [r1, #0]
	strb r0, [r1, #5]
	add r0, r5, #0
	mov r1, #3
	bl ov23_0224FBFC
	bl ov23_0224219C
	ldr r2, _022507D0 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x81
	add r3, r2, #0
	bl ov23_02253F60
	ldr r0, _022507D4 ; =0x00000246
	mov r1, #0x11
	strb r1, [r5, r0]
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_022507CC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022507D0: .word 0x022577B8
_022507D4: .word 0x00000246
	thumb_func_end ov23_02250704

	thumb_func_start ov23_022507D8
ov23_022507D8: ; 0x022507D8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	bl sub_02001288
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02250802
	ldr r0, _0225091C ; =0x000005DC
	bl sub_02005748
_02250802:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250814
	add r0, r0, #1
	cmp r4, r0
	bne _0225082E
	mov r0, #0
	pop {r4, r5, r6, pc}
_02250814:
	ldr r0, _0225091C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FCF4
	add r0, r5, #0
	bl ov23_02250598
	ldr r0, _02250920 ; =0x00000246
	mov r1, #7
	strb r1, [r5, r0]
	b _02250916
_0225082E:
	add r0, r5, #0
	bl ov23_0224FCF4
	cmp r4, #3
	bne _022508D2
	ldr r0, _02250924 ; =0x022577B8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	bl sub_02028938
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	add r6, r0, #0
	ldr r0, _0225091C ; =0x000005DC
	bl sub_02005748
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #4
	bl sub_0207D570
	cmp r0, #0
	beq _022508B2
	ldr r0, _02250924 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028D80
	bl ov23_0224219C
	ldr r2, _02250924 ; =0x022577B8
	mov r1, #0
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	ldr r0, _02250924 ; =0x022577B8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	add r0, #0xe3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _022508A2
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x51
	add r3, r2, #0
	bl ov23_02253F40
	b _02250906
_022508A2:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4f
	add r3, r2, #0
	bl ov23_02253F40
	b _02250906
_022508B2:
	bl ov23_0224219C
	ldr r2, _02250924 ; =0x022577B8
	mov r1, #0
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x50
	add r3, r2, #0
	bl ov23_02253F40
	b _02250906
_022508D2:
	cmp r4, #2
	bne _02250906
	ldr r0, _0225091C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02250924 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028D80
	bl ov23_0224219C
	ldr r2, _02250924 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x82
	add r3, r2, #0
	bl ov23_02253F40
_02250906:
	ldr r0, _02250928 ; =ov23_02250598
	mov r1, #7
	str r0, [r5, #0]
	ldr r0, _0225092C ; =0x00000245
	strb r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #1
	strb r1, [r5, r0]
_02250916:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0225091C: .word 0x000005DC
_02250920: .word 0x00000246
_02250924: .word 0x022577B8
_02250928: .word ov23_02250598
_0225092C: .word 0x00000245
	thumb_func_end ov23_022507D8

	thumb_func_start ov23_02250930
ov23_02250930: ; 0x02250930
	ldr r1, _02250938 ; =0x00000246
	mov r2, #2
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_02250938: .word 0x00000246
	thumb_func_end ov23_02250930

	thumb_func_start ov23_0225093C
ov23_0225093C: ; 0x0225093C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov23_0224FB7C
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _02250978
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x42
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02250994 ; =0x00000246
	mov r1, #0xd
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_02250978:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x34
	add r3, r2, #0
	bl ov23_02253F40
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xb
	add r1, #0x1e
	strb r0, [r5, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250994: .word 0x00000246
	thumb_func_end ov23_0225093C

	thumb_func_start ov23_02250998
ov23_02250998: ; 0x02250998
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _022509C4
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _022509C8 ; =0x022568D8
	ldr r0, [r0, #8]
	ldr r2, _022509CC ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x5c]
	ldr r0, _022509D0 ; =0x00000246
	mov r1, #0xc
	strb r1, [r4, r0]
_022509C4:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022509C8: .word 0x022568D8
_022509CC: .word 0x000003D9
_022509D0: .word 0x00000246
	thumb_func_end ov23_02250998

	thumb_func_start ov23_022509D4
ov23_022509D4: ; 0x022509D4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02250A06
	cmp r0, #0
	bne _022509F4
	ldr r0, _02250A08 ; =0x00000246
	mov r1, #0xf
	strb r1, [r4, r0]
	b _02250A02
_022509F4:
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r4, #0
	bl ov23_0224FD3C
_02250A02:
	mov r0, #0
	str r0, [r4, #0x5c]
_02250A06:
	pop {r4, pc}
	; .align 2, 0
_02250A08: .word 0x00000246
	thumb_func_end ov23_022509D4

	thumb_func_start ov23_02250A0C
ov23_02250A0C: ; 0x02250A0C
	ldr r3, _02250A10 ; =ov23_0224FD3C
	bx r3
	; .align 2, 0
_02250A10: .word ov23_0224FD3C
	thumb_func_end ov23_02250A0C

	thumb_func_start ov23_02250A14
ov23_02250A14: ; 0x02250A14
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov23_0224FB7C
	bl ov23_02253968
	ldr r0, [r4, #0xc]
	bl sub_0203D174
	bl sub_02025E38
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r2, _02250A48 ; =ov23_02250A0C
	ldr r0, [r0, #8]
	add r3, r4, #0
	bl ov23_02253834
	ldr r0, _02250A4C ; =0x00000246
	mov r1, #0xa
	strb r1, [r4, r0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02250A48: .word ov23_02250A0C
_02250A4C: .word 0x00000246
	thumb_func_end ov23_02250A14

	thumb_func_start ov23_02250A50
ov23_02250A50: ; 0x02250A50
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x25
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x7f
	str r6, [r4, #0xc]
	lsl r0, r0, #2
	str r5, [r4, r0]
	mov r1, #0
	add r0, #0x4a
	strb r1, [r4, r0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x70]
	bl sub_020594FC
	bl ov23_022421AC
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov23_02253F40
	ldr r0, _02250AC0 ; =ov23_02250B9C
	ldr r2, _02250AC4 ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _02250AC8 ; =ov23_02251270
	add r0, r4, #0
	bl ov23_022431EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02250AC0: .word ov23_02250B9C
_02250AC4: .word 0x00002710
_02250AC8: .word ov23_02251270
	thumb_func_end ov23_02250A50

	thumb_func_start ov23_02250ACC
ov23_02250ACC: ; 0x02250ACC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov23_022421AC
	bl ov23_02254238
	cmp r0, #0
	bne _02250AF8
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _02250AFC ; =0x022568D8
	ldr r0, [r0, #8]
	ldr r2, _02250B00 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x5c]
	ldr r0, _02250B04 ; =0x00000246
	mov r1, #1
	strb r1, [r4, r0]
_02250AF8:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02250AFC: .word 0x022568D8
_02250B00: .word 0x000003D9
_02250B04: .word 0x00000246
	thumb_func_end ov23_02250ACC

	thumb_func_start ov23_02250B08
ov23_02250B08: ; 0x02250B08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02250B2E
	cmp r0, #0
	bne _02250B24
	mov r1, #3
	b _02250B26
_02250B24:
	mov r1, #2
_02250B26:
	ldr r0, _02250B30 ; =0x00000246
	strb r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x5c]
_02250B2E:
	pop {r4, pc}
	; .align 2, 0
_02250B30: .word 0x00000246
	thumb_func_end ov23_02250B08

	thumb_func_start ov23_02250B34
ov23_02250B34: ; 0x02250B34
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x5c]
	add r4, r2, #0
	cmp r0, #0
	beq _02250B48
	mov r1, #4
	bl sub_02002154
_02250B48:
	ldr r0, [r5, #0x68]
	bl sub_020237BC
	ldr r0, [r5, #0x6c]
	bl sub_020237BC
	ldr r0, [r5, #0x70]
	bl sub_0200B3F0
	bl ov23_022421AC
	bl ov23_02254044
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02250B78
	mov r0, #0
	blx r1
_02250B78:
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02250B86
	bl sub_0206A844
_02250B86:
	add r0, r5, #0
	bl sub_020181C4
	cmp r4, #0
	bne _02250B94
	bl sub_02059514
_02250B94:
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov23_02250B34

	thumb_func_start ov23_02250B9C
ov23_02250B9C: ; 0x02250B9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	bl ov23_0224AEA4
	cmp r0, #0
	bne _02250BBA
	ldr r0, _02250C34 ; =0x00000246
	ldrb r1, [r4, r0]
	cmp r1, #1
	bhi _02250BBA
	mov r1, #2
	strb r1, [r4, r0]
_02250BBA:
	ldr r0, _02250C34 ; =0x00000246
	ldrb r0, [r4, r0]
	cmp r0, #4
	bhi _02250C32
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250BCE: ; jump table
	.short _02250BD8 - _02250BCE - 2 ; case 0
	.short _02250BE0 - _02250BCE - 2 ; case 1
	.short _02250BE8 - _02250BCE - 2 ; case 2
	.short _02250BF8 - _02250BCE - 2 ; case 3
	.short _02250C16 - _02250BCE - 2 ; case 4
_02250BD8:
	add r0, r4, #0
	bl ov23_02250ACC
	pop {r3, r4, r5, pc}
_02250BE0:
	add r0, r4, #0
	bl ov23_02250B08
	pop {r3, r4, r5, pc}
_02250BE8:
	bl ov23_02243204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov23_02250B34
	pop {r3, r4, r5, pc}
_02250BF8:
	bl ov23_02243204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov23_02250B34
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x54
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, r4, r5, pc}
_02250C16:
	bl ov23_022421AC
	bl ov23_02254238
	cmp r0, #0
	bne _02250C32
	ldr r0, _02250C38 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02250C32
	ldr r0, _02250C34 ; =0x00000246
	mov r1, #2
	strb r1, [r4, r0]
_02250C32:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250C34: .word 0x00000246
_02250C38: .word 0x021BF67C
	thumb_func_end ov23_02250B9C

	thumb_func_start ov23_02250C3C
ov23_02250C3C: ; 0x02250C3C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r2, #0x81
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	add r0, r4, #0
	blx r2
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	bne _02250C5E
	mov r4, #0x8b
	b _02250C62
_02250C5E:
	add r4, r0, #0
	add r4, #0x8a
_02250C62:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02250C3C

	thumb_func_start ov23_02250C74
ov23_02250C74: ; 0x02250C74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028AFC
	cmp r0, #0
	bne _02250CA2
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, r4, r5, pc}
_02250CA2:
	mov r1, #2
	add r0, r5, #0
	mov r2, #0xf
	add r3, r1, #0
	bl sub_0200147C
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02250C74

	thumb_func_start ov23_02250CB0
ov23_02250CB0: ; 0x02250CB0
	mov r1, #2
	ldr r2, _02250CC8 ; =ov23_0224F608
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _02250CCC ; =ov23_0224F61C
	add r1, r1, #4
	str r2, [r0, r1]
	mov r1, #0
	ldr r3, _02250CD0 ; =ov23_02250D90
	str r1, [r0, #0x64]
	bx r3
	nop
_02250CC8: .word ov23_0224F608
_02250CCC: .word ov23_0224F61C
_02250CD0: .word ov23_02250D90
	thumb_func_end ov23_02250CB0

	thumb_func_start ov23_02250CD4
ov23_02250CD4: ; 0x02250CD4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _02250D1C ; =ov23_0224F608
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _02250D20 ; =ov23_0224F61C
	sub r0, #0x2c
	str r2, [r4, r0]
	ldr r0, _02250D24 ; =ov23_02250C3C
	str r0, [r4, #0x60]
	mov r0, #0
	str r0, [r4, #0x64]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1c
	strh r0, [r4, r1]
	ldr r1, _02250D28 ; =0x02028BE9
	add r0, r4, #0
	bl ov23_02250D90
	pop {r4, pc}
	nop
_02250D1C: .word ov23_0224F608
_02250D20: .word ov23_0224F61C
_02250D24: .word ov23_02250C3C
_02250D28: .word 0x02028BE9
	thumb_func_end ov23_02250CD4

	thumb_func_start ov23_02250D2C
ov23_02250D2C: ; 0x02250D2C
	mov r1, #2
	ldr r2, _02250D48 ; =ov23_0224F608
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _02250D4C ; =ov23_0224F61C
	add r1, r1, #4
	str r2, [r0, r1]
	ldr r1, _02250D50 ; =ov23_02250C3C
	ldr r3, _02250D54 ; =ov23_02250D90
	str r1, [r0, #0x60]
	mov r1, #0
	str r1, [r0, #0x64]
	ldr r1, _02250D58 ; =0x02028BE9
	bx r3
	; .align 2, 0
_02250D48: .word ov23_0224F608
_02250D4C: .word ov23_0224F61C
_02250D50: .word ov23_02250C3C
_02250D54: .word ov23_02250D90
_02250D58: .word 0x02028BE9
	thumb_func_end ov23_02250D2C

	thumb_func_start ov23_02250D5C
ov23_02250D5C: ; 0x02250D5C
	mov r1, #2
	ldr r2, _02250D78 ; =ov23_0224F5DC
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _02250D7C ; =ov23_0224F5F0
	add r1, r1, #4
	str r2, [r0, r1]
	ldr r1, _02250D80 ; =ov23_02250C3C
	ldr r3, _02250D84 ; =ov23_02250D90
	str r1, [r0, #0x60]
	ldr r1, _02250D88 ; =ov23_02250C74
	str r1, [r0, #0x64]
	ldr r1, _02250D8C ; =0x02028A11
	bx r3
	; .align 2, 0
_02250D78: .word ov23_0224F5DC
_02250D7C: .word ov23_0224F5F0
_02250D80: .word ov23_02250C3C
_02250D84: .word ov23_02250D90
_02250D88: .word ov23_02250C74
_02250D8C: .word 0x02028A11
	thumb_func_end ov23_02250D5C

	thumb_func_start ov23_02250D90
ov23_02250D90: ; 0x02250D90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0x14]
	mov r1, #0x81
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r7, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	blx r1
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224FB7C
	bl ov23_022421DC
	ldr r1, _02250E94 ; =0x00000272
	mov r2, #0
	bl ov23_02253DFC
	add r0, r6, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02250E98 ; =0x00000257
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02250E9C ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_022421DC
	bl ov23_02253E3C
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _02250E18
_02250E00:
	add r0, r4, #0
	add r1, r5, #0
	blx r7
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, r6
	blt _02250E00
_02250E18:
	mov r2, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	sub r3, r2, #2
	bl sub_02013A4C
	ldr r3, _02250EA0 ; =0x02256904
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #1
	add r2, sp, #0x1c
	strh r0, [r2, #0x10]
	mov r1, #6
	strh r1, [r2, #0x12]
	ldr r0, [r5, #0x64]
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x60]
	str r0, [sp, #0x20]
	str r5, [sp, #0x38]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	ldr r0, [sp, #0x14]
	mov r2, #0x23
	str r0, [sp]
	ldr r0, _02250EA4 ; =0x022577B8
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r3, #4
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov23_02248C08
	str r0, [r5, #0x4c]
	ldr r0, _02250EA8 ; =0x00000246
	mov r1, #8
	strb r1, [r5, r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02250E94: .word 0x00000272
_02250E98: .word 0x00000257
_02250E9C: .word 0x000003D9
_02250EA0: .word 0x02256904
_02250EA4: .word 0x022577B8
_02250EA8: .word 0x00000246
	thumb_func_end ov23_02250D90

	thumb_func_start ov23_02250EAC
ov23_02250EAC: ; 0x02250EAC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0xa
	bl ov23_022430E0
	bl sub_020360F0
	cmp r0, #0
	beq _02250EDE
	mov r4, #1
	mvn r4, r4
_02250EDE:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02250EE8
	add r4, r0, #0
_02250EE8:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250F12
	add r0, r0, #1
	cmp r4, r0
	bne _02250F20
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02250F12:
	ldr r0, _02250F80 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FD3C
	b _02250F7A
_02250F20:
	add r0, r5, #0
	bl ov23_0224FB7C
	ldr r0, _02250F84 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F61C
	ldr r1, _02250F84 ; =0x022577B8
	ldr r1, [r1, #0]
	strb r0, [r1, #5]
	add r0, r5, #0
	mov r1, #2
	bl ov23_0224FBFC
	bl ov23_0224219C
	ldr r2, _02250F84 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541C8
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x81
	add r3, r2, #0
	bl ov23_02253F60
	ldr r0, _02250F88 ; =0x00000246
	mov r1, #0x13
	strb r1, [r5, r0]
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_02250F7A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02250F80: .word 0x000005DC
_02250F84: .word 0x022577B8
_02250F88: .word 0x00000246
	thumb_func_end ov23_02250EAC

	thumb_func_start ov23_02250F8C
ov23_02250F8C: ; 0x02250F8C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	bl sub_02001288
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02250FB6
	ldr r0, _02251030 ; =0x000005DC
	bl sub_02005748
_02250FB6:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250FC8
	add r0, r0, #1
	cmp r4, r0
	bne _02250FE2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02250FC8:
	ldr r0, _02251030 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FCF4
	add r0, r5, #0
	bl ov23_02250CD4
	ldr r0, _02251034 ; =0x00000246
	mov r1, #8
	strb r1, [r5, r0]
	b _0225102C
_02250FE2:
	add r0, r5, #0
	bl ov23_0224FCF4
	cmp r4, #2
	bne _0225101C
	ldr r0, _02251030 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02251038 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028B94
	bl ov23_0224219C
	ldr r2, _02251038 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541C8
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x82
	add r3, r2, #0
	bl ov23_02253F40
_0225101C:
	ldr r0, _0225103C ; =ov23_02250CD4
	mov r1, #8
	str r0, [r5, #0]
	ldr r0, _02251040 ; =0x00000245
	strb r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #1
	strb r1, [r5, r0]
_0225102C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02251030: .word 0x000005DC
_02251034: .word 0x00000246
_02251038: .word 0x022577B8
_0225103C: .word ov23_02250CD4
_02251040: .word 0x00000245
	thumb_func_end ov23_02250F8C

	thumb_func_start ov23_02251044
ov23_02251044: ; 0x02251044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_0224FB7C
	bl ov23_02242FBC
	bl ov23_022535EC
	bl ov23_02245784
	bl ov23_02241364
	bl ov23_02241ED0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02251070
	bl ov23_02253D10
_02251070:
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _0225107C
	mov r1, #4
	bl sub_02002154
_0225107C:
	add r0, r5, #0
	bl ov23_0224FCF4
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0225108C
	bl sub_0206A844
_0225108C:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022510BC
	ldr r0, _022510EC ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F61C
	ldr r1, _022510EC ; =0x022577B8
	ldr r1, [r1, #0]
	strb r0, [r1, #5]
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r0, #0
	blx r1
	mov r0, #0x7f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_022510BC:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _022510C6
	bl sub_020237BC
_022510C6:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _022510D0
	bl sub_020237BC
_022510D0:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _022510DA
	bl sub_0200B3F0
_022510DA:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _022510E4
	bl sub_0200DA58
_022510E4:
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022510EC: .word 0x022577B8
	thumb_func_end ov23_02251044

	thumb_func_start ov23_022510F0
ov23_022510F0: ; 0x022510F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	bl sub_020360F0
	cmp r0, #0
	beq _02251108
	mov r4, #1
	mvn r4, r4
_02251108:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02251112
	add r4, r0, #0
_02251112:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02251124
	add r0, r0, #1
	cmp r4, r0
	bne _02251162
	mov r0, #0
	pop {r3, r4, r5, pc}
_02251124:
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0225114A
	ldr r0, _022511AC ; =0x022577B8
	mov r3, #0
	ldr r2, [r0, #0]
	strb r4, [r2, #4]
	ldr r2, [r0, #0]
	strb r3, [r2, #5]
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	ldrb r0, [r0, #5]
	blx r1
	mov r0, #0x7f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0225114A:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02251044
	bl ov23_02243204
	mov r0, #1
	pop {r3, r4, r5, pc}
_02251162:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02251194
	ldr r0, _022511AC ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F61C
	ldr r1, _022511AC ; =0x022577B8
	ldr r2, [r1, #0]
	strb r0, [r2, #5]
	ldr r0, [r1, #0]
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r0, [r0, #5]
	ldr r1, [r5, r1]
	blx r1
	mov r0, #0x7f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02251194:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02251044
	bl ov23_02243204
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022511AC: .word 0x022577B8
	thumb_func_end ov23_022510F0

	thumb_func_start ov23_022511B0
ov23_022511B0: ; 0x022511B0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x25
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x7f
	lsl r0, r0, #2
	str r6, [r4, #0xc]
	add r1, r0, #0
	str r5, [r4, r0]
	mov r2, #0
	add r1, #0x4a
	strb r2, [r4, r1]
	sub r0, r0, #4
	str r2, [r4, r0]
	str r2, [r4, #0x48]
	str r2, [r4, #0x60]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x70]
	add r0, r4, #0
	bl ov23_02250CD4
	ldr r0, _02251228 ; =0x00000246
	mov r1, #9
	strb r1, [r4, r0]
	ldr r0, _0225122C ; =ov23_0224F914
	ldr r2, _02251230 ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _02251234 ; =ov23_02251270
	add r0, r4, #0
	bl ov23_022431EC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02251228: .word 0x00000246
_0225122C: .word ov23_0224F914
_02251230: .word 0x00002710
_02251234: .word ov23_02251270
	thumb_func_end ov23_022511B0

	thumb_func_start ov23_02251238
ov23_02251238: ; 0x02251238
	push {r3, r4}
	mov r3, #0x23
	lsl r3, r3, #4
	ldr r4, [r0, r3]
	add r4, r4, r1
	cmp r4, r2
	blt _02251254
	sub r1, r2, r1
	str r1, [r0, r3]
	ldr r1, [r0, r3]
	cmp r1, #0
	bge _02251254
	mov r1, #0
	str r1, [r0, r3]
_02251254:
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	sub r2, r2, #1
	cmp r3, r2
	blt _0225126C
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	cmp r2, #0
	bge _0225126C
	mov r2, #0
	str r2, [r0, r1]
_0225126C:
	pop {r3, r4}
	bx lr
	thumb_func_end ov23_02251238

	thumb_func_start ov23_02251270
ov23_02251270: ; 0x02251270
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	mov r1, #1
	add r0, r4, #0
	mvn r1, r1
	bl ov23_02251044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02251270

	.rodata


	.global Unk_ov23_022568D4
Unk_ov23_022568D4: ; 0x022568D4
	.incbin "incbin/overlay23_rodata.bin", 0x5C8, 0x5CC - 0x5C8

	.global Unk_ov23_022568D8
Unk_ov23_022568D8: ; 0x022568D8
	.incbin "incbin/overlay23_rodata.bin", 0x5CC, 0x5D4 - 0x5CC

	.global Unk_ov23_022568E0
Unk_ov23_022568E0: ; 0x022568E0
	.incbin "incbin/overlay23_rodata.bin", 0x5D4, 0x5E0 - 0x5D4

	.global Unk_ov23_022568EC
Unk_ov23_022568EC: ; 0x022568EC
	.incbin "incbin/overlay23_rodata.bin", 0x5E0, 0x5F8 - 0x5E0

	.global Unk_ov23_02256904
Unk_ov23_02256904: ; 0x02256904
	.incbin "incbin/overlay23_rodata.bin", 0x5F8, 0x618 - 0x5F8

	.global Unk_ov23_02256924
Unk_ov23_02256924: ; 0x02256924
	.incbin "incbin/overlay23_rodata.bin", 0x618, 0x650 - 0x618

	.global Unk_ov23_0225695C
Unk_ov23_0225695C: ; 0x0225695C
	.incbin "incbin/overlay23_rodata.bin", 0x650, 0x68


	.data


	.global Unk_ov23_02257634
Unk_ov23_02257634: ; 0x02257634
	.incbin "incbin/overlay23_data.bin", 0xA54, 0xA64 - 0xA54

	.global Unk_ov23_02257644
Unk_ov23_02257644: ; 0x02257644
	.incbin "incbin/overlay23_data.bin", 0xA64, 0xA7C - 0xA64

	.global Unk_ov23_0225765C
Unk_ov23_0225765C: ; 0x0225765C
	.incbin "incbin/overlay23_data.bin", 0xA7C, 0x18


	.bss


	.global Unk_ov23_022577B8
Unk_ov23_022577B8: ; 0x022577B8
	.space 0x4

