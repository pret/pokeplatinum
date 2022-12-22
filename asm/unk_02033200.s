	.include "macros/function.inc"
	.include "include/unk_02033200.inc"

	

	.text


	thumb_func_start sub_02033200
sub_02033200: ; 0x02033200
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _020332B8 ; =0x021C07B8
	add r7, r1, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020332B6
	ldr r1, _020332BC ; =0x00000D98
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _020332B8 ; =0x021C07B8
	ldr r2, _020332BC ; =0x00000D98
	str r0, [r1, #8]
	mov r1, #0
	bl MI_CpuFill8
	bl sub_02031C50
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _020332B8 ; =0x021C07B8
	ldr r2, [r1, #8]
	ldr r1, _020332C0 ; =0x00000D64
	str r0, [r2, r1]
	bl sub_02031C50
	add r2, r0, #0
	ldr r0, _020332B8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020332C0 ; =0x00000D64
	ldr r0, [r1, r0]
	mov r1, #0
	bl MI_CpuFill8
	bl sub_0202602C
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _020332B8 ; =0x021C07B8
	ldr r2, [r1, #8]
	ldr r1, _020332C4 ; =0x00000D7C
	str r0, [r2, r1]
	bl sub_0202602C
	add r2, r0, #0
	ldr r0, _020332B8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020332C4 ; =0x00000D7C
	ldr r0, [r1, r0]
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0xf
	mov r1, #0x90
	bl sub_02018144
	ldr r2, _020332B8 ; =0x021C07B8
	ldr r1, _020332C8 ; =0x00000D84
	ldr r3, [r2, #8]
	str r0, [r3, r1]
	ldr r6, [r2, #8]
	mov r0, #0x1f
	ldr r5, [r6, r1]
	add r3, r5, #0
	and r3, r0
	mov r0, #0x20
	sub r0, r0, r3
	add r3, r0, r5
	add r0, r1, #4
	str r3, [r6, r0]
	ldr r5, _020332CC ; =0x00000333
	ldr r3, [r2, #8]
	sub r0, r1, #4
	str r5, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2, #8]
	sub r0, #0xc
	str r4, [r3, r0]
	ldr r0, [r2, #8]
	sub r1, #0x1c
	add r0, r0, r1
	bl sub_02014A84
	add r0, r7, #0
	bl sub_020334DC
_020332B6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020332B8: .word 0x021C07B8
_020332BC: .word 0x00000D98
_020332C0: .word 0x00000D64
_020332C4: .word 0x00000D7C
_020332C8: .word 0x00000D84
_020332CC: .word 0x00000333
	thumb_func_end sub_02033200

	thumb_func_start sub_020332D0
sub_020332D0: ; 0x020332D0
	ldr r0, _020332E0 ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020332DC
	mov r0, #1
	bx lr
_020332DC:
	mov r0, #0
	bx lr
	; .align 2, 0
_020332E0: .word 0x021C07B8
	thumb_func_end sub_020332D0

	thumb_func_start sub_020332E4
sub_020332E4: ; 0x020332E4
	push {r4, r5}
	mov r5, #0
	cmp r2, #0
	ble _02033304
_020332EC:
	ldrb r4, [r0]
	ldrb r3, [r1]
	cmp r4, r3
	beq _020332FA
	mov r0, #0
	pop {r4, r5}
	bx lr
_020332FA:
	add r5, r5, #1
	add r0, r0, #1
	add r1, r1, #1
	cmp r5, r2
	blt _020332EC
_02033304:
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020332E4

	thumb_func_start sub_0203330C
sub_0203330C: ; 0x0203330C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203895C
	add r5, r0, #0
	bl sub_02038974
	add r4, r6, #0
	add r7, r0, #0
	add r4, #0x50
	cmp r5, #0xe
	beq _0203334E
	ldrb r0, [r4, #4]
	bl sub_020326C4
	cmp r0, #0
	beq _02033338
	add r0, r5, #0
	bl sub_020326C4
	cmp r0, #0
	bne _0203334E
_02033338:
	add r0, r4, #0
	add r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	beq _02033348
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	beq _02033374
_02033348:
	ldrb r0, [r4, #4]
	cmp r0, r5
	bne _02033374
_0203334E:
	cmp r5, #0xe
	beq _02033358
	ldrb r0, [r4, #5]
	cmp r0, r7
	bne _02033374
_02033358:
	ldr r1, _02033378 ; =0x021C07B8
	add r0, r6, #0
	ldr r1, [r1, #8]
	mov r2, #0xc0
	add r1, #0x54
	bl MI_CpuCopy8
	ldr r0, _02033378 ; =0x021C07B8
	ldr r1, _0203337C ; =0x00000D95
	ldr r3, [r0, #8]
	mov r0, #0x40
	ldrb r2, [r3, r1]
	orr r0, r2
	strb r0, [r3, r1]
_02033374:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02033378: .word 0x021C07B8
_0203337C: .word 0x00000D95
	thumb_func_end sub_0203330C

	thumb_func_start sub_02033380
sub_02033380: ; 0x02033380
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0203343C ; =0x021C07B8
	ldr r1, _02033440 ; =0x00000D95
	ldr r3, [r0, #8]
	ldrb r2, [r3, r1]
	add r7, r3, #0
	add r7, #0x54
	lsl r0, r2, #0x19
	lsr r0, r0, #0x1f
	beq _0203343A
	mov r0, #0x40
	mov r6, #0
	bic r2, r0
	strb r2, [r3, r1]
	add r4, r6, #0
	add r5, r6, #0
_020333A0:
	ldr r0, _0203343C ; =0x021C07B8
	ldr r1, _02033444 ; =0x00000D44
	ldr r0, [r0, #8]
	add r2, r0, r4
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _020333E8
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, r0, r5
	add r1, r7, #4
	mov r2, #6
	bl sub_020332E4
	cmp r0, #0
	beq _020333E8
	ldr r2, _0203343C ; =0x021C07B8
	mov r1, #0x4b
	ldr r3, [r2, #8]
	lsl r0, r6, #1
	add r3, r3, r0
	ldr r0, _02033444 ; =0x00000D44
	lsl r1, r1, #2
	strh r1, [r3, r0]
	ldr r2, [r2, #8]
	sub r1, #0x18
	add r3, r2, r1
	mov r2, #0xc0
	add r1, r6, #0
	mul r1, r2
	add r0, r7, #0
	add r1, r3, r1
	bl MI_CpuCopy8
	pop {r3, r4, r5, r6, r7, pc}
_020333E8:
	add r6, r6, #1
	add r4, r4, #2
	add r5, #0xc0
	cmp r6, #0x10
	blt _020333A0
	ldr r0, _0203343C ; =0x021C07B8
	ldr r1, _02033444 ; =0x00000D44
	ldr r0, [r0, #8]
	mov r3, #0
	add r4, r0, #0
_020333FC:
	ldrh r2, [r4, r1]
	cmp r2, #0
	beq _0203340A
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #0x10
	blt _020333FC
_0203340A:
	cmp r3, #0x10
	bge _0203343A
	lsl r2, r3, #1
	mov r1, #0x4b
	add r2, r0, r2
	ldr r0, _02033444 ; =0x00000D44
	lsl r1, r1, #2
	strh r1, [r2, r0]
	ldr r2, _0203343C ; =0x021C07B8
	sub r1, #0x18
	ldr r2, [r2, #8]
	add r0, r7, #0
	add r4, r2, r1
	mov r2, #0xc0
	add r1, r3, #0
	mul r1, r2
	add r1, r4, r1
	bl MI_CpuCopy8
	ldr r0, _0203343C ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02033448 ; =0x00000D74
	strb r2, [r1, r0]
_0203343A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203343C: .word 0x021C07B8
_02033440: .word 0x00000D95
_02033444: .word 0x00000D44
_02033448: .word 0x00000D74
	thumb_func_end sub_02033380

	thumb_func_start sub_0203344C
sub_0203344C: ; 0x0203344C
	push {r3, lr}
	cmp r1, #0
	beq _02033456
	bl OS_Terminate
_02033456:
	ldr r0, _02033460 ; =0x021C07B8
	mov r1, #2
	str r1, [r0, #4]
	pop {r3, pc}
	nop
_02033460: .word 0x021C07B8
	thumb_func_end sub_0203344C

	thumb_func_start sub_02033464
sub_02033464: ; 0x02033464
	ldr r0, _02033470 ; =0x021C07B8
	mov r1, #0
	str r1, [r0, #4]
	ldr r3, _02033474 ; =sub_02017B8C
	mov r0, #4
	bx r3
	; .align 2, 0
_02033470: .word 0x021C07B8
_02033474: .word sub_02017B8C
	thumb_func_end sub_02033464

	thumb_func_start sub_02033478
sub_02033478: ; 0x02033478
	push {r3, lr}
	mov r0, #4
	bl sub_02017B7C
	ldr r0, _0203349C ; =0x021C07B8
	mov r1, #1
	str r1, [r0, #4]
	ldr r1, _020334A0 ; =sub_0203344C
	mov r0, #8
	mov r2, #0
	bl WVR_StartUpAsync
	cmp r0, #1
	beq _02033498
	bl OS_Terminate
_02033498:
	pop {r3, pc}
	nop
_0203349C: .word 0x021C07B8
_020334A0: .word sub_0203344C
	thumb_func_end sub_02033478

	thumb_func_start sub_020334A4
sub_020334A4: ; 0x020334A4
	ldr r0, _020334B4 ; =0x021C07B8
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _020334B0
	mov r0, #1
	bx lr
_020334B0:
	mov r0, #0
	bx lr
	; .align 2, 0
_020334B4: .word 0x021C07B8
	thumb_func_end sub_020334A4

	thumb_func_start sub_020334B8
sub_020334B8: ; 0x020334B8
	ldr r0, _020334C8 ; =0x021C07B8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020334C4
	mov r0, #1
	bx lr
_020334C4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020334C8: .word 0x021C07B8
	thumb_func_end sub_020334B8

	thumb_func_start sub_020334CC
sub_020334CC: ; 0x020334CC
	ldr r3, _020334D4 ; =WVR_TerminateAsync
	ldr r0, _020334D8 ; =sub_02033464
	mov r1, #0
	bx r3
	; .align 2, 0
_020334D4: .word WVR_TerminateAsync
_020334D8: .word sub_02033464
	thumb_func_end sub_020334CC

	thumb_func_start sub_020334DC
sub_020334DC: ; 0x020334DC
	push {r4, lr}
	ldr r2, _02033514 ; =0x021C07B8
	add r1, r0, #0
	mov r0, #0xd7
	ldr r3, [r2, #8]
	mov r4, #0
	lsl r0, r0, #4
	str r4, [r3, r0]
	ldr r2, [r2, #8]
	sub r0, #0xc
	ldr r3, [r2, r0]
	mov r0, #0x1f
	add r2, r3, #0
	and r2, r0
	mov r0, #0x20
	sub r0, r0, r2
	add r0, r3, r0
	bl sub_02031BC4
	ldr r0, _02033514 ; =0x021C07B8
	ldr r1, [r0, #8]
	mov r0, #0x36
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bl sub_020318D0
	pop {r4, pc}
	nop
_02033514: .word 0x021C07B8
	thumb_func_end sub_020334DC

	thumb_func_start sub_02033518
sub_02033518: ; 0x02033518
	push {r3, r4, r5, lr}
	mov r4, #0
	ldr r2, _02033548 ; =0x021C07B8
	ldr r0, _0203354C ; =0x00000D44
	add r5, r4, #0
	add r1, r4, #0
_02033524:
	ldr r3, [r2, #8]
	add r4, r4, #1
	add r3, r3, r5
	add r5, r5, #2
	strh r1, [r3, r0]
	cmp r4, #0x10
	blt _02033524
	ldr r0, _02033548 ; =0x021C07B8
	ldr r2, [r0, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r2, r0
	mov r2, #3
	lsl r2, r2, #0xa
	bl MI_CpuFill8
	pop {r3, r4, r5, pc}
	nop
_02033548: .word 0x021C07B8
_0203354C: .word 0x00000D44
	thumb_func_end sub_02033518

	thumb_func_start sub_02033550
sub_02033550: ; 0x02033550
	push {r3, r4}
	ldr r1, _02033570 ; =0x021C07B8
	lsl r0, r0, #0x18
	ldr r2, [r1, #8]
	ldr r4, _02033574 ; =0x00000D95
	lsr r0, r0, #0x18
	ldrb r1, [r2, r4]
	mov r3, #8
	lsl r0, r0, #0x1f
	bic r1, r3
	lsr r0, r0, #0x1c
	orr r0, r1
	strb r0, [r2, r4]
	pop {r3, r4}
	bx lr
	nop
_02033570: .word 0x021C07B8
_02033574: .word 0x00000D95
	thumb_func_end sub_02033550

	thumb_func_start sub_02033578
sub_02033578: ; 0x02033578
	push {r4, r5}
	ldr r1, _020335D4 ; =0x021C07B8
	ldr r0, _020335D8 ; =0x00000D74
	ldr r3, [r1, #8]
	mov r2, #0
	strb r2, [r3, r0]
	add r3, r0, #0
	ldr r5, [r1, #8]
	add r3, #0x21
	ldrb r4, [r5, r3]
	mov r3, #1
	bic r4, r3
	add r3, r0, #0
	add r3, #0x21
	strb r4, [r5, r3]
	add r3, r0, #0
	ldr r5, [r1, #8]
	add r3, #0x21
	ldrb r4, [r5, r3]
	mov r3, #4
	bic r4, r3
	add r3, r0, #0
	add r3, #0x21
	strb r4, [r5, r3]
	add r3, r0, #0
	ldr r4, [r1, #8]
	add r3, #0x1e
	strb r2, [r4, r3]
	add r3, r0, #0
	ldr r5, [r1, #8]
	add r3, #0x21
	ldrb r4, [r5, r3]
	mov r3, #0x10
	bic r4, r3
	add r3, r0, #0
	add r3, #0x21
	strb r4, [r5, r3]
	add r3, r0, #0
	ldr r4, [r1, #8]
	add r3, #0x20
	strb r2, [r4, r3]
	ldr r1, [r1, #8]
	add r0, #0x1f
	strb r2, [r1, r0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_020335D4: .word 0x021C07B8
_020335D8: .word 0x00000D74
	thumb_func_end sub_02033578

	thumb_func_start sub_020335DC
sub_020335DC: ; 0x020335DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02033578
	add r0, r5, #0
	bl sub_02033550
	bl sub_020320E8
	ldr r0, _02033640 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033644 ; =0x00000D93
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0203360E
	ldr r0, _02033648 ; =sub_020351F8
	mov r1, #0xe
	bl sub_02031E6C
	ldr r0, _02033640 ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02033644 ; =0x00000D93
	strb r2, [r1, r0]
_0203360E:
	ldr r0, _02033640 ; =0x021C07B8
	ldr r3, _0203364C ; =0x00000D95
	ldr r1, [r0, #8]
	mov r2, #0x20
	ldrb r0, [r1, r3]
	bic r0, r2
	lsl r2, r4, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1a
	orr r0, r2
	strb r0, [r1, r3]
	bl sub_02031934
	cmp r0, #1
	bne _0203363A
	bl sub_0203195C
	cmp r0, #0
	beq _0203363A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203363A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02033640: .word 0x021C07B8
_02033644: .word 0x00000D93
_02033648: .word sub_020351F8
_0203364C: .word 0x00000D95
	thumb_func_end sub_020335DC

	thumb_func_start sub_02033650
sub_02033650: ; 0x02033650
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	bl sub_02033578
	cmp r4, #0
	beq _02033662
	bl sub_02033518
_02033662:
	ldr r0, _020336C0 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020336C4 ; =0x00000D93
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02033680
	ldr r0, _020336C8 ; =sub_0203509C
	mov r1, #0xe
	bl sub_02031E6C
	ldr r0, _020336C0 ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020336C4 ; =0x00000D93
	strb r2, [r1, r0]
_02033680:
	bl sub_02031934
	cmp r0, #1
	bne _020336B8
	ldr r2, _020336CC ; =0x020E5E6C
	add r0, sp, #0
	ldrb r3, [r2]
	add r1, sp, #0
	strb r3, [r0]
	ldrb r3, [r2, #1]
	strb r3, [r0, #1]
	ldrb r3, [r2, #2]
	strb r3, [r0, #2]
	ldrb r3, [r2, #3]
	strb r3, [r0, #3]
	ldrb r3, [r2, #4]
	ldrb r2, [r2, #5]
	strb r3, [r0, #4]
	strb r2, [r0, #5]
	ldr r0, _020336D0 ; =sub_0203330C
	mov r2, #0
	bl sub_020312B8
	cmp r0, #0
	beq _020336B8
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_020336B8:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_020336C0: .word 0x021C07B8
_020336C4: .word 0x00000D93
_020336C8: .word sub_0203509C
_020336CC: .word 0x020E5E6C
_020336D0: .word sub_0203330C
	thumb_func_end sub_02033650

	thumb_func_start sub_020336D4
sub_020336D4: ; 0x020336D4
	push {r3, lr}
	ldr r0, _02033760 ; =0x021C07B8
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _020336E2
	mov r0, #1
	pop {r3, pc}
_020336E2:
	ldr r0, _02033764 ; =0x00000D94
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020336F4
	cmp r0, #1
	beq _02033724
	cmp r0, #2
	beq _0203373C
	b _0203375A
_020336F4:
	bl sub_02032010
	cmp r0, #0
	beq _0203370C
	bl sub_020314C0
	ldr r0, _02033760 ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02033764 ; =0x00000D94
	strb r2, [r1, r0]
	b _0203375A
_0203370C:
	bl sub_02031FD8
	cmp r0, #0
	bne _0203375A
	bl sub_02031EF4
	ldr r0, _02033760 ; =0x021C07B8
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02033764 ; =0x00000D94
	strb r2, [r1, r0]
	b _0203375A
_02033724:
	bl sub_02031FD8
	cmp r0, #0
	bne _0203375A
	bl sub_02031EF4
	ldr r0, _02033760 ; =0x021C07B8
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02033764 ; =0x00000D94
	strb r2, [r1, r0]
	b _0203375A
_0203373C:
	bl sub_02031FBC
	cmp r0, #0
	beq _02033748
	mov r0, #1
	pop {r3, pc}
_02033748:
	bl sub_02031FF4
	cmp r0, #0
	beq _0203375A
	ldr r0, _02033760 ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02033764 ; =0x00000D94
	strb r2, [r1, r0]
_0203375A:
	mov r0, #0
	pop {r3, pc}
	nop
_02033760: .word 0x021C07B8
_02033764: .word 0x00000D94
	thumb_func_end sub_020336D4

	thumb_func_start sub_02033768
sub_02033768: ; 0x02033768
	push {r3, lr}
	ldr r0, _0203378C ; =0x021C07B8
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02033786
	ldr r0, _02033790 ; =0x00000D92
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _02033786
	mov r1, #1
	strb r1, [r2, r0]
	bl sub_02031EF4
	mov r0, #1
	pop {r3, pc}
_02033786:
	mov r0, #0
	pop {r3, pc}
	nop
_0203378C: .word 0x021C07B8
_02033790: .word 0x00000D92
	thumb_func_end sub_02033768

	thumb_func_start sub_02033794
sub_02033794: ; 0x02033794
	push {r3, lr}
	ldr r1, _020337B8 ; =0x021C07B8
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _020337B4
	cmp r0, #0
	ldr r0, _020337BC ; =0x00000D92
	beq _020337AA
	mov r1, #2
	strb r1, [r2, r0]
	pop {r3, pc}
_020337AA:
	mov r1, #0
	strb r1, [r2, r0]
	mov r0, #1
	bl sub_020334DC
_020337B4:
	pop {r3, pc}
	nop
_020337B8: .word 0x021C07B8
_020337BC: .word 0x00000D92
	thumb_func_end sub_02033794

	thumb_func_start sub_020337C0
sub_020337C0: ; 0x020337C0
	push {r3, lr}
	ldr r0, _020337F8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020337FC ; =0x00000D7C
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _020337F8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033800 ; =0x00000D64
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _020337F8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033804 ; =0x00000D84
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _020337F8 ; =0x021C07B8
	ldr r0, [r0, #8]
	bl sub_020181C4
	ldr r0, _020337F8 ; =0x021C07B8
	mov r1, #0
	str r1, [r0, #8]
	pop {r3, pc}
	nop
_020337F8: .word 0x021C07B8
_020337FC: .word 0x00000D7C
_02033800: .word 0x00000D64
_02033804: .word 0x00000D84
	thumb_func_end sub_020337C0

	thumb_func_start sub_02033808
sub_02033808: ; 0x02033808
	push {r4, lr}
	bl sub_02035E38
	cmp r0, #0
	bne _02033816
	mov r0, #0
	pop {r4, pc}
_02033816:
	ldr r1, _02033834 ; =0x021C07B8
	mov r0, #0
	ldr r4, [r1, #8]
	ldr r1, _02033838 ; =0x00000D44
	add r3, r0, #0
_02033820:
	ldrh r2, [r4, r1]
	cmp r2, #0
	beq _02033828
	add r0, r0, #1
_02033828:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #0x10
	blt _02033820
	pop {r4, pc}
	nop
_02033834: .word 0x021C07B8
_02033838: .word 0x00000D44
	thumb_func_end sub_02033808

	thumb_func_start sub_0203383C
sub_0203383C: ; 0x0203383C
	push {r3, r4, r5, lr}
	ldr r1, _02033868 ; =0x021C07B8
	mov r4, #0
	ldr r5, [r1, #8]
	ldr r1, _0203386C ; =0x00000D44
	add r3, r4, #0
_02033848:
	ldrh r2, [r5, r1]
	cmp r2, #0
	beq _02033858
	cmp r4, r0
	bne _02033856
	add r0, r3, #0
	pop {r3, r4, r5, pc}
_02033856:
	add r4, r4, #1
_02033858:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #0x10
	blt _02033848
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02033868: .word 0x021C07B8
_0203386C: .word 0x00000D44
	thumb_func_end sub_0203383C

	thumb_func_start sub_02033870
sub_02033870: ; 0x02033870
	ldr r0, _0203387C ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033880 ; =0x00000D74
	ldrb r0, [r1, r0]
	bx lr
	nop
_0203387C: .word 0x021C07B8
_02033880: .word 0x00000D74
	thumb_func_end sub_02033870

	thumb_func_start sub_02033884
sub_02033884: ; 0x02033884
	ldr r0, _02033890 ; =0x021C07B8
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02033894 ; =0x00000D74
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02033890: .word 0x021C07B8
_02033894: .word 0x00000D74
	thumb_func_end sub_02033884

	thumb_func_start sub_02033898
sub_02033898: ; 0x02033898
	ldr r1, _020338C0 ; =0x021C07B8
	ldr r3, [r1, #8]
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _020338C4 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _020338BC
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r3, r2
	add r1, #0xaa
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _020338BE
	mov r0, #1
	bx lr
_020338BC:
	mov r0, #0
_020338BE:
	bx lr
	; .align 2, 0
_020338C0: .word 0x021C07B8
_020338C4: .word 0x00000D44
	thumb_func_end sub_02033898

	thumb_func_start sub_020338C8
sub_020338C8: ; 0x020338C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0xf
_020338CE:
	add r0, r4, #0
	bl sub_02033898
	cmp r0, r5
	ble _020338E0
	cmp r0, #8
	bge _020338E0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_020338E0:
	sub r4, r4, #1
	bpl _020338CE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020338C8

	thumb_func_start sub_020338EC
sub_020338EC: ; 0x020338EC
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02033808
	cmp r0, #0
	bne _020338FC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020338FC:
	mov r5, #0x2d
	ldr r7, _02033944 ; =0x021C07B8
	mov r6, #0xf
	mov r4, #0x1e
	lsl r5, r5, #6
_02033906:
	ldr r0, [r7, #8]
	ldr r1, _02033948 ; =0x00000D44
	add r2, r0, r4
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02033934
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, r0, r5
	bl sub_02034014
	cmp r0, #0
	beq _02033934
	add r0, r6, #0
	bl sub_02033898
	cmp r0, #1
	ble _02033934
	cmp r0, #8
	bge _02033934
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02033934:
	sub r4, r4, #2
	sub r5, #0xc0
	sub r6, r6, #1
	bpl _02033906
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02033944: .word 0x021C07B8
_02033948: .word 0x00000D44
	thumb_func_end sub_020338EC

	thumb_func_start sub_0203394C
sub_0203394C: ; 0x0203394C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02033808
	cmp r0, #0
	bne _0203395C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0203395C:
	mov r5, #0x2d
	ldr r7, _020339A4 ; =0x021C07B8
	mov r6, #0xf
	mov r4, #0x1e
	lsl r5, r5, #6
_02033966:
	ldr r0, [r7, #8]
	ldr r1, _020339A8 ; =0x00000D44
	add r2, r0, r4
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02033986
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, r0, r5
	bl sub_02034014
	cmp r0, #0
	beq _02033986
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02033986:
	sub r4, r4, #2
	sub r5, #0xc0
	sub r6, r6, #1
	bpl _02033966
	mov r0, #1
	bl sub_020338C8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020339A2
	mov r0, #0
	bl sub_020338C8
_020339A2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020339A4: .word 0x021C07B8
_020339A8: .word 0x00000D44
	thumb_func_end sub_0203394C

	thumb_func_start sub_020339AC
sub_020339AC: ; 0x020339AC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _020339E0 ; =0x021C07B8
	mov r5, #0
	ldr r6, [r1, #8]
	ldr r1, _020339E4 ; =0x00000D44
	add r3, r5, #0
_020339BA:
	ldrh r2, [r6, r1]
	cmp r2, #0
	beq _020339D4
	cmp r0, r5
	bne _020339D2
	add r0, r3, #0
	bl sub_02033FB0
	add r1, r4, #0
	bl sub_02025E80
	pop {r4, r5, r6, pc}
_020339D2:
	add r5, r5, #1
_020339D4:
	add r3, r3, #1
	add r6, r6, #2
	cmp r3, #0x10
	blt _020339BA
	pop {r4, r5, r6, pc}
	nop
_020339E0: .word 0x021C07B8
_020339E4: .word 0x00000D44
	thumb_func_end sub_020339AC

	thumb_func_start sub_020339E8
sub_020339E8: ; 0x020339E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02031934
	cmp r0, #2
	bne _020339FC
	bl sub_020314C0
	mov r0, #0
	pop {r3, r4, r5, pc}
_020339FC:
	bl sub_02031934
	cmp r0, #1
	bne _02033A52
	bl sub_0203895C
	ldr r2, _02033A58 ; =0x021C07B8
	mov r1, #0xc0
	add r4, r5, #0
	mul r4, r1
	ldr r3, [r2, #8]
	add r1, #0x8a
	add r2, r3, r4
	ldrh r2, [r2, r1]
	mov r1, #0xd9
	lsl r1, r1, #4
	strb r2, [r3, r1]
	bl sub_020326C4
	cmp r0, #0
	beq _02033A3C
	ldr r1, _02033A58 ; =0x021C07B8
	mov r0, #1
	ldr r2, [r1, #8]
	mov r1, #0x46
	lsl r1, r1, #2
	add r1, r2, r1
	add r1, r1, r4
	mov r2, #0
	bl sub_02031220
	b _02033A4E
_02033A3C:
	ldr r1, _02033A58 ; =0x021C07B8
	mov r0, #1
	ldr r2, [r1, #8]
	mov r1, #0x45
	lsl r1, r1, #2
	add r1, r2, r1
	add r1, r1, r4
	bl sub_02031DD8
_02033A4E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02033A52:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02033A58: .word 0x021C07B8
	thumb_func_end sub_020339E8

	thumb_func_start sub_02033A5C
sub_02033A5C: ; 0x02033A5C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02033380
	mov r4, #0
	ldr r1, _02033A9C ; =0x021C07B8
	ldr r0, _02033AA0 ; =0x00000D44
	add r5, r4, #0
	mov r2, #1
_02033A6C:
	ldr r3, [r1, #8]
	add r3, r3, r5
	ldrh r6, [r3, r0]
	cmp r6, #0
	beq _02033A90
	beq _02033A90
	ldr r6, _02033AA0 ; =0x00000D44
	ldrh r6, [r3, r6]
	sub r7, r6, #1
	ldr r6, _02033AA0 ; =0x00000D44
	strh r7, [r3, r6]
	ldr r3, [r1, #8]
	add r7, r3, r5
	ldrh r6, [r7, r6]
	cmp r6, #0
	bne _02033A90
	ldr r6, _02033AA4 ; =0x00000D74
	strb r2, [r3, r6]
_02033A90:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #0x10
	blt _02033A6C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02033A9C: .word 0x021C07B8
_02033AA0: .word 0x00000D44
_02033AA4: .word 0x00000D74
	thumb_func_end sub_02033A5C

	thumb_func_start sub_02033AA8
sub_02033AA8: ; 0x02033AA8
	push {r3, r4, r5, lr}
	bl sub_0203895C
	add r5, r0, #0
	bl sub_02033F9C
	add r4, r0, #0
	cmp r5, #0xf
	beq _02033B30
	ldr r0, _02033B78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033B7C ; =0x00000D88
	ldr r5, [r1, r0]
	bl sub_0202602C
	cmp r0, #0x20
	ble _02033ACE
	bl sub_02022974
_02033ACE:
	bl sub_02025E68
	cmp r0, #0x20
	beq _02033ADA
	bl sub_02022974
_02033ADA:
	bl sub_02025E68
	add r1, r5, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x10
	bl MI_CpuCopy8
	bl sub_0202602C
	add r2, r0, #0
	ldr r0, _02033B78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033B80 ; =0x00000D7C
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r1, #0x30
	bl MI_CpuCopy8
	add r0, r4, #0
	bl sub_02025F20
	str r0, [r5, #0]
	bl sub_0203895C
	strb r0, [r5, #4]
	bl sub_02038974
	strb r0, [r5, #5]
	ldr r0, _02033B78 ; =0x021C07B8
	mov r2, #8
	ldr r1, [r0, #8]
	ldr r0, _02033B84 ; =0x00000D68
	add r0, r1, r0
	add r1, r5, #0
	add r1, #8
	bl MI_CpuCopy8
	bl sub_0203214C
	add r5, #0x54
	strb r0, [r5]
	b _02033B58
_02033B30:
	ldr r1, _02033B78 ; =0x021C07B8
	ldr r2, [r1, #8]
	ldr r1, _02033B7C ; =0x00000D88
	ldr r4, [r2, r1]
	bl sub_02025F20
	str r0, [r4, #0]
	bl sub_0203895C
	strb r0, [r4, #4]
	bl sub_02038974
	strb r0, [r4, #5]
	ldr r0, _02033B78 ; =0x021C07B8
	add r4, #8
	ldr r0, [r0, #8]
	add r1, r4, #0
	mov r2, #0x54
	bl MI_CpuCopy8
_02033B58:
	ldr r0, _02033B78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033B7C ; =0x00000D88
	ldr r0, [r1, r0]
	mov r1, #0x5c
	bl DC_FlushRange
	ldr r0, _02033B78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033B7C ; =0x00000D88
	ldr r0, [r1, r0]
	mov r1, #0x5c
	bl sub_020318DC
	pop {r3, r4, r5, pc}
	nop
_02033B78: .word 0x021C07B8
_02033B7C: .word 0x00000D88
_02033B80: .word 0x00000D7C
_02033B84: .word 0x00000D68
	thumb_func_end sub_02033AA8

	thumb_func_start sub_02033B88
sub_02033B88: ; 0x02033B88
	push {r4, lr}
	ldr r0, _02033BD4 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033BD8 ; =0x00000D88
	ldr r4, [r1, r0]
	bl sub_02033DDC
	ldrb r1, [r4, #6]
	cmp r1, r0
	beq _02033BD2
	bl sub_02033DDC
	strb r0, [r4, #6]
	ldr r0, _02033BD4 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033BD8 ; =0x00000D88
	ldr r0, [r1, r0]
	mov r1, #0x5c
	bl DC_FlushRange
	ldr r0, _02033BD4 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033BD8 ; =0x00000D88
	ldr r0, [r1, r0]
	mov r1, #0x5c
	bl sub_020318DC
	ldr r3, _02033BD4 ; =0x021C07B8
	ldr r2, _02033BD8 ; =0x00000D88
	ldr r4, [r3, #8]
	ldrh r3, [r3]
	ldr r0, [r4, r2]
	sub r2, #8
	ldr r2, [r4, r2]
	mov r1, #0x5c
	bl sub_02032034
_02033BD2:
	pop {r4, pc}
	; .align 2, 0
_02033BD4: .word 0x021C07B8
_02033BD8: .word 0x00000D88
	thumb_func_end sub_02033B88

	thumb_func_start sub_02033BDC
sub_02033BDC: ; 0x02033BDC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02031934
	add r5, r0, #0
	bl sub_02032E90
	add r6, r0, #0
	bl sub_02033B88
	bl sub_02031F90
	cmp r0, #0
	bne _02033C1A
	bl sub_02033E48
	cmp r0, #0
	bne _02033C1A
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r3, _02033D7C ; =0x00000D95
	ldr r1, [r0, #8]
	ldrb r0, [r1, r3]
	lsl r2, r0, #0x1d
	lsr r2, r2, #0x1f
	beq _02033C1A
	mov r2, #1
	bic r0, r2
	mov r2, #1
	orr r0, r2
	strb r0, [r1, r3]
_02033C1A:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r3, _02033D80 ; =0x00000D8E
	ldr r2, [r0, #8]
	ldr r0, _02033D84 ; =0x0000FFFF
	ldrh r1, [r2, r3]
	cmp r1, r0
	bne _02033C2A
	strh r4, [r2, r3]
_02033C2A:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r3, _02033D7C ; =0x00000D95
	ldr r1, [r0, #8]
	ldrb r0, [r1, r3]
	lsl r2, r0, #0x1e
	lsr r2, r2, #0x1f
	beq _02033C60
	sub r2, r3, #7
	ldrh r2, [r1, r2]
	cmp r2, r4
	bls _02033C4A
	mov r2, #1
	bic r0, r2
	mov r2, #1
	orr r0, r2
	strb r0, [r1, r3]
_02033C4A:
	cmp r6, #0
	beq _02033C60
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r2, _02033D7C ; =0x00000D95
	ldr r0, [r0, #8]
	mov r1, #1
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #1
	orr r1, r3
	strb r1, [r0, r2]
_02033C60:
	bl sub_02031948
	cmp r0, #0x19
	bne _02033C6E
	mov r0, #0
	bl sub_020389FC
_02033C6E:
	cmp r5, #9
	bhi _02033D72
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02033C7E: ; jump table
	.short _02033C92 - _02033C7E - 2 ; case 0
	.short _02033CB2 - _02033C7E - 2 ; case 1
	.short _02033D72 - _02033C7E - 2 ; case 2
	.short _02033D72 - _02033C7E - 2 ; case 3
	.short _02033D72 - _02033C7E - 2 ; case 4
	.short _02033D72 - _02033C7E - 2 ; case 5
	.short _02033D72 - _02033C7E - 2 ; case 6
	.short _02033CF6 - _02033C7E - 2 ; case 7
	.short _02033CDC - _02033C7E - 2 ; case 8
	.short _02033CDC - _02033C7E - 2 ; case 9
_02033C92:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r2, [r0, #8]
	ldr r0, _02033D88 ; =0x00000D92
	ldrb r1, [r2, r0]
	cmp r1, #1
	bne _02033CA6
	bl sub_020337C0
	add sp, #8
	pop {r4, r5, r6, pc}
_02033CA6:
	cmp r1, #2
	bne _02033D72
	mov r1, #3
	strb r1, [r2, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
_02033CB2:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033D88 ; =0x00000D92
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02033CC6
	bl sub_02031F6C
	cmp r0, #0
	bne _02033D72
_02033CC6:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033D88 ; =0x00000D92
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02033D72
	bl sub_02031F6C
	add sp, #8
	cmp r0, #0
	pop {r4, r5, r6, pc}
_02033CDC:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _02033D72
	ldr r1, _02033D7C ; =0x00000D95
	mov r0, #1
	ldrb r2, [r3, r1]
	add sp, #8
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r3, r1]
	pop {r4, r5, r6, pc}
_02033CF6:
	bl sub_02031B04
	ldr r3, _02033D78 ; =0x021C07B8
	ldr r2, _02033D8C ; =0x00000D91
	ldr r4, [r3, #8]
	ldrb r1, [r4, r2]
	cmp r1, #0
	bne _02033D12
	sub r1, r2, #5
	strh r0, [r4, r1]
	ldr r0, [r3, #8]
	mov r1, #5
	strb r1, [r0, r2]
	b _02033D16
_02033D12:
	sub r0, r1, #1
	strb r0, [r4, r2]
_02033D16:
	ldr r1, _02033D78 ; =0x021C07B8
	ldr r0, _02033D90 ; =0x00000D8C
	ldr r2, [r1, #8]
	ldrh r5, [r2, r0]
	add r0, #9
	ldrb r0, [r2, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02033D2E
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_02033D2E:
	bl sub_02033AA8
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r4, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033F0C
	str r0, [sp]
	ldr r1, _02033D78 ; =0x021C07B8
	ldr r0, _02033D7C ; =0x00000D95
	ldr r2, [r1, #8]
	add r3, r4, #0
	ldrb r0, [r2, r0]
	add r2, r5, #0
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	str r0, [sp, #4]
	ldrh r1, [r1]
	mov r0, #0
	bl sub_02031D04
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r1, [r0, #8]
	mov r0, #0xd9
	lsl r0, r0, #4
	strb r5, [r1, r0]
_02033D72:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02033D78: .word 0x021C07B8
_02033D7C: .word 0x00000D95
_02033D80: .word 0x00000D8E
_02033D84: .word 0x0000FFFF
_02033D88: .word 0x00000D92
_02033D8C: .word 0x00000D91
_02033D90: .word 0x00000D8C
	thumb_func_end sub_02033BDC

	thumb_func_start sub_02033D94
sub_02033D94: ; 0x02033D94
	push {r3, lr}
	ldr r1, _02033DA4 ; =0x021C07B8
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _02033DA2
	bl sub_02033BDC
_02033DA2:
	pop {r3, pc}
	; .align 2, 0
_02033DA4: .word 0x021C07B8
	thumb_func_end sub_02033D94

	thumb_func_start sub_02033DA8
sub_02033DA8: ; 0x02033DA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02033DD8 ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02033DB8
	mov r0, #0
	pop {r4, pc}
_02033DB8:
	bl sub_02031934
	cmp r0, #4
	beq _02033DC4
	mov r0, #0
	pop {r4, pc}
_02033DC4:
	bl sub_020318EC
	mov r2, #1
	add r1, r2, #0
	lsl r1, r4
	tst r0, r1
	bne _02033DD4
	mov r2, #0
_02033DD4:
	add r0, r2, #0
	pop {r4, pc}
	; .align 2, 0
_02033DD8: .word 0x021C07B8
	thumb_func_end sub_02033DA8

	thumb_func_start sub_02033DDC
sub_02033DDC: ; 0x02033DDC
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r4, #0
_02033DE2:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02033DA8
	cmp r0, #0
	beq _02033DF0
	add r4, r4, #1
_02033DF0:
	add r5, r5, #1
	cmp r5, #8
	blt _02033DE2
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02033DDC

	thumb_func_start sub_02033DFC
sub_02033DFC: ; 0x02033DFC
	ldr r0, _02033E14 ; =0x021C07B8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02033E10
	ldr r0, _02033E18 ; =0x00000D92
	ldrb r0, [r1, r0]
	cmp r0, #3
	bne _02033E10
	mov r0, #1
	bx lr
_02033E10:
	mov r0, #0
	bx lr
	; .align 2, 0
_02033E14: .word 0x021C07B8
_02033E18: .word 0x00000D92
	thumb_func_end sub_02033DFC

	thumb_func_start sub_02033E1C
sub_02033E1C: ; 0x02033E1C
	ldr r0, _02033E2C ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02033E28
	mov r0, #1
	bx lr
_02033E28:
	mov r0, #0
	bx lr
	; .align 2, 0
_02033E2C: .word 0x021C07B8
	thumb_func_end sub_02033E1C

	thumb_func_start sub_02033E30
sub_02033E30: ; 0x02033E30
	push {r3, lr}
	ldr r0, _02033E44 ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02033E40
	bl sub_02031FBC
	pop {r3, pc}
_02033E40:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02033E44: .word 0x021C07B8
	thumb_func_end sub_02033E30

	thumb_func_start sub_02033E48
sub_02033E48: ; 0x02033E48
	push {r3, lr}
	ldr r0, _02033E60 ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02033E5C
	bl sub_020318EC
	ldr r1, _02033E64 ; =0x0000FFFE
	and r0, r1
	pop {r3, pc}
_02033E5C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02033E60: .word 0x021C07B8
_02033E64: .word 0x0000FFFE
	thumb_func_end sub_02033E48

	thumb_func_start sub_02033E68
sub_02033E68: ; 0x02033E68
	push {r3, lr}
	bl sub_02033E84
	cmp r0, #0
	beq _02033E7E
	bl sub_02031948
	cmp r0, #0x14
	bne _02033E7E
	mov r0, #1
	pop {r3, pc}
_02033E7E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02033E68

	thumb_func_start sub_02033E84
sub_02033E84: ; 0x02033E84
	ldr r0, _02033EA0 ; =0x021C07B8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02033E9A
	ldr r0, _02033EA4 ; =0x00000D95
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02033E9A
	mov r0, #1
	bx lr
_02033E9A:
	mov r0, #0
	bx lr
	nop
_02033EA0: .word 0x021C07B8
_02033EA4: .word 0x00000D95
	thumb_func_end sub_02033E84

	thumb_func_start sub_02033EA8
sub_02033EA8: ; 0x02033EA8
	push {r3, r4}
	ldr r1, _02033ECC ; =0x021C07B8
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02033EC6
	ldr r4, _02033ED0 ; =0x00000D95
	lsl r0, r0, #0x18
	ldrb r1, [r2, r4]
	lsr r0, r0, #0x18
	mov r3, #4
	lsl r0, r0, #0x1f
	bic r1, r3
	lsr r0, r0, #0x1d
	orr r0, r1
	strb r0, [r2, r4]
_02033EC6:
	pop {r3, r4}
	bx lr
	nop
_02033ECC: .word 0x021C07B8
_02033ED0: .word 0x00000D95
	thumb_func_end sub_02033EA8

	thumb_func_start sub_02033ED4
sub_02033ED4: ; 0x02033ED4
	push {r4, r5}
	ldr r5, _02033F00 ; =0x021C07B8
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _02033EFA
	ldr r4, _02033F04 ; =0x00000D95
	lsl r0, r0, #0x18
	ldrb r1, [r2, r4]
	lsr r0, r0, #0x18
	mov r3, #2
	lsl r0, r0, #0x1f
	bic r1, r3
	lsr r0, r0, #0x1e
	orr r0, r1
	strb r0, [r2, r4]
	ldr r2, _02033F08 ; =0x0000FFFF
	ldr r1, [r5, #8]
	sub r0, r4, #7
	strh r2, [r1, r0]
_02033EFA:
	pop {r4, r5}
	bx lr
	nop
_02033F00: .word 0x021C07B8
_02033F04: .word 0x00000D95
_02033F08: .word 0x0000FFFF
	thumb_func_end sub_02033ED4

	thumb_func_start sub_02033F0C
sub_02033F0C: ; 0x02033F0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl WM_GetDispersionBeaconPeriod
	add r4, r0, #0
	cmp r5, #0x25
	blo _02033F1E
	bl sub_02022974
_02033F1E:
	cmp r5, #0xa
	bne _02033F28
	lsl r0, r4, #0xe
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_02033F28:
	cmp r5, #9
	beq _02033F30
	cmp r5, #0xd
	bne _02033F36
_02033F30:
	lsl r0, r4, #0xe
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_02033F36:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02033F0C

	thumb_func_start sub_02033F3C
sub_02033F3C: ; 0x02033F3C
	ldr r1, _02033F64 ; =0x021C07B8
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _02033F5E
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _02033F68 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02033F5E
	mov r1, #0x45
	lsl r1, r1, #2
	add r2, r3, r1
	mov r1, #0xc0
	mul r1, r0
	add r0, r2, r1
	bx lr
_02033F5E:
	mov r0, #0
	bx lr
	nop
_02033F64: .word 0x021C07B8
_02033F68: .word 0x00000D44
	thumb_func_end sub_02033F3C

	thumb_func_start sub_02033F6C
sub_02033F6C: ; 0x02033F6C
	ldr r1, _02033F94 ; =0x021C07B8
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _02033F8E
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _02033F98 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02033F8E
	mov r1, #0x59
	lsl r1, r1, #2
	add r2, r3, r1
	mov r1, #0xc0
	mul r1, r0
	add r0, r2, r1
	bx lr
_02033F8E:
	mov r0, #0
	bx lr
	nop
_02033F94: .word 0x021C07B8
_02033F98: .word 0x00000D44
	thumb_func_end sub_02033F6C

	thumb_func_start sub_02033F9C
sub_02033F9C: ; 0x02033F9C
	ldr r0, _02033FA8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033FAC ; =0x00000D78
	ldr r0, [r1, r0]
	bx lr
	nop
_02033FA8: .word 0x021C07B8
_02033FAC: .word 0x00000D78
	thumb_func_end sub_02033F9C

	thumb_func_start sub_02033FB0
sub_02033FB0: ; 0x02033FB0
	ldr r1, _02033FD4 ; =0x021C07B8
	ldr r3, [r1, #8]
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _02033FD8 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	bne _02033FC4
	mov r0, #0
	bx lr
_02033FC4:
	mov r1, #0x59
	lsl r1, r1, #2
	add r2, r3, r1
	mov r1, #0xc0
	mul r1, r0
	add r0, r2, r1
	add r0, #0x10
	bx lr
	; .align 2, 0
_02033FD4: .word 0x021C07B8
_02033FD8: .word 0x00000D44
	thumb_func_end sub_02033FB0

	thumb_func_start sub_02033FDC
sub_02033FDC: ; 0x02033FDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0203400C ; =0x021C07B8
	add r4, r1, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02034008
	cmp r4, #8
	blt _02033FF2
	bl sub_02022974
_02033FF2:
	ldr r1, _0203400C ; =0x021C07B8
	add r0, r5, #0
	ldr r2, [r1, #8]
	ldr r1, _02034010 ; =0x00000D14
	add r3, r2, r1
	mov r2, #6
	add r1, r4, #0
	mul r1, r2
	add r1, r3, r1
	bl MI_CpuCopy8
_02034008:
	pop {r3, r4, r5, pc}
	nop
_0203400C: .word 0x021C07B8
_02034010: .word 0x00000D14
	thumb_func_end sub_02033FDC

	thumb_func_start sub_02034014
sub_02034014: ; 0x02034014
	push {r4, r5}
	ldr r2, _02034064 ; =0x021C07B8
	mov r1, #0
	ldr r3, [r2, #8]
	ldr r2, _02034068 ; =0x00000D14
	add r2, r3, r2
	ldrb r3, [r0]
_02034022:
	ldrb r4, [r2]
	cmp r4, r3
	bne _02034056
	ldrb r5, [r2, #1]
	ldrb r4, [r0, #1]
	cmp r5, r4
	bne _02034056
	ldrb r5, [r2, #2]
	ldrb r4, [r0, #2]
	cmp r5, r4
	bne _02034056
	ldrb r5, [r2, #3]
	ldrb r4, [r0, #3]
	cmp r5, r4
	bne _02034056
	ldrb r5, [r2, #4]
	ldrb r4, [r0, #4]
	cmp r5, r4
	bne _02034056
	ldrb r5, [r2, #5]
	ldrb r4, [r0, #5]
	cmp r5, r4
	bne _02034056
	mov r0, #1
	pop {r4, r5}
	bx lr
_02034056:
	add r1, r1, #1
	add r2, r2, #6
	cmp r1, #8
	blt _02034022
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02034064: .word 0x021C07B8
_02034068: .word 0x00000D14
	thumb_func_end sub_02034014

	thumb_func_start sub_0203406C
sub_0203406C: ; 0x0203406C
	ldr r0, _02034084 ; =0x021C07B8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203407E
	ldr r0, _02034088 ; =0x00000D95
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
_0203407E:
	mov r0, #0
	bx lr
	nop
_02034084: .word 0x021C07B8
_02034088: .word 0x00000D95
	thumb_func_end sub_0203406C

	thumb_func_start sub_0203408C
sub_0203408C: ; 0x0203408C
	ldr r0, _020340A0 ; =0x021C07B8
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0203409E
	ldr r1, _020340A4 ; =0x00000D95
	mov r0, #0x10
	ldrb r2, [r3, r1]
	orr r0, r2
	strb r0, [r3, r1]
_0203409E:
	bx lr
	; .align 2, 0
_020340A0: .word 0x021C07B8
_020340A4: .word 0x00000D95
	thumb_func_end sub_0203408C

	thumb_func_start sub_020340A8
sub_020340A8: ; 0x020340A8
	ldr r1, _020340B8 ; =0x021C07B8
	ldr r3, _020340BC ; =MI_CpuCopy8
	ldr r2, [r1, #8]
	ldr r1, _020340C0 ; =0x00000D68
	add r1, r2, r1
	mov r2, #8
	bx r3
	nop
_020340B8: .word 0x021C07B8
_020340BC: .word MI_CpuCopy8
_020340C0: .word 0x00000D68
	thumb_func_end sub_020340A8

	thumb_func_start sub_020340C4
sub_020340C4: ; 0x020340C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0202602C
	ldr r1, _020340E0 ; =0x021C07B8
	add r2, r0, #0
	ldr r3, [r1, #8]
	ldr r1, _020340E4 ; =0x00000D7C
	add r0, r4, #0
	ldr r1, [r3, r1]
	bl MI_CpuCopy8
	pop {r4, pc}
	nop
_020340E0: .word 0x021C07B8
_020340E4: .word 0x00000D7C
	thumb_func_end sub_020340C4

	thumb_func_start sub_020340E8
sub_020340E8: ; 0x020340E8
	ldr r0, _020340F4 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020340F8 ; =0x00000D7C
	ldr r0, [r1, r0]
	bx lr
	nop
_020340F4: .word 0x021C07B8
_020340F8: .word 0x00000D7C
	thumb_func_end sub_020340E8

	thumb_func_start sub_020340FC
sub_020340FC: ; 0x020340FC
	push {r4, lr}
	bl sub_02033AA8
	ldr r3, _02034118 ; =0x021C07B8
	ldr r2, _0203411C ; =0x00000D88
	ldr r4, [r3, #8]
	ldrh r3, [r3]
	ldr r0, [r4, r2]
	sub r2, #8
	ldr r2, [r4, r2]
	mov r1, #0x5c
	bl sub_02032034
	pop {r4, pc}
	; .align 2, 0
_02034118: .word 0x021C07B8
_0203411C: .word 0x00000D88
	thumb_func_end sub_020340FC

	thumb_func_start sub_02034120
sub_02034120: ; 0x02034120
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02034128:
	add r0, r4, #0
	bl sub_02033F6C
	cmp r0, #0
	beq _0203413C
	ldrb r1, [r0, #4]
	cmp r1, r6
	bne _0203413C
	ldrb r0, [r0, #6]
	add r5, r5, r0
_0203413C:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02034128
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02034120

	thumb_func_start sub_02034148
sub_02034148: ; 0x02034148
	ldr r3, _0203414C ; =sub_020320C4
	bx r3
	; .align 2, 0
_0203414C: .word sub_020320C4
	thumb_func_end sub_02034148

	thumb_func_start sub_02034150
sub_02034150: ; 0x02034150
	push {r3, lr}
	ldr r1, _02034164 ; =0x021C07B8
	mov r2, #0x54
	ldr r1, [r1, #8]
	bl MI_CpuCopy8
	bl sub_020340FC
	pop {r3, pc}
	nop
_02034164: .word 0x021C07B8
	thumb_func_end sub_02034150

	thumb_func_start sub_02034168
sub_02034168: ; 0x02034168
	ldr r1, _02034190 ; =0x021C07B8
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0203418C
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _02034194 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _0203418C
	mov r1, #0x59
	lsl r1, r1, #2
	add r2, r3, r1
	mov r1, #0xc0
	mul r1, r0
	add r0, r2, r1
	add r0, #8
	bx lr
_0203418C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02034190: .word 0x021C07B8
_02034194: .word 0x00000D44
	thumb_func_end sub_02034168

	.rodata


	.global Unk_020E5E6C
Unk_020E5E6C: ; 0x020E5E6C
	.incbin "incbin/arm9_rodata.bin", 0x122C, 0x6



	.bss


	.global Unk_021C07B8
Unk_021C07B8: ; 0x021C07B8
	.space 0x2

	.global Unk_021C07BC
Unk_021C07BC: ; 0x021C07BC
	.space 0x4

	.global Unk_021C07C0
Unk_021C07C0: ; 0x021C07C0
	.space 0x4

