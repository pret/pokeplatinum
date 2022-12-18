	.include "macros/function.inc"
	.include "include/arm9_4.inc"

	.text

	thumb_func_start sub_0203B200
sub_0203B200: ; 0x0203B200
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	bne _0203B22E
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #0
	beq _0203B240
_0203B22E:
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	bl sub_0200DC9C
	add r5, #0x10
	add r0, r5, #0
	bl sub_0201A8FC
_0203B240:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203B200

	thumb_func_start sub_0203B244
sub_0203B244: ; 0x0203B244
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_02001DC4
	add r6, r0, #0
	mov r1, #0x5e
	ldr r0, [r5, #0x20]
	lsl r1, r1, #4
	bl sub_02001C94
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	bl sub_02001DC4
	strh r0, [r5, #0x28]
	ldrh r1, [r5, #0x28]
	cmp r6, r1
	beq _0203B29A
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0203B558
	ldrh r2, [r5, #0x28]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203B5B4
	ldrh r0, [r5, #0x28]
	add r4, #0x90
	add r0, r5, r0
	add r0, #0x30
	ldrb r0, [r0]
	str r0, [r4, #0]
_0203B29A:
	ldrh r0, [r5, #0x28]
	add r0, r0, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0]
	bl sub_0203B5E8
	mov r1, #1
	ldr r2, [r5, #0x2c]
	mvn r1, r1
	cmp r2, r1
	beq _0203B2C0
	add r0, r1, #1
	cmp r2, r0
	beq _0203B2E2
	b _0203B2C6
_0203B2C0:
	mov r0, #0xd
	strh r0, [r5, #0x2a]
	b _0203B2E2
_0203B2C6:
	ldr r0, _0203B2E8 ; =0x020EA060
	lsl r2, r2, #3
	ldr r2, [r0, r2]
	cmp r2, r1
	bne _0203B2D6
	mov r0, #0xd
	strh r0, [r5, #0x2a]
	b _0203B2E2
_0203B2D6:
	add r0, r1, #1
	cmp r2, r0
	beq _0203B2E2
	add r0, r7, #0
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
_0203B2E2:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203B2E8: .word 0x020EA060
	thumb_func_end sub_0203B244

	thumb_func_start sub_0203B2EC
sub_0203B2EC: ; 0x0203B2EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02033E1C
	cmp r0, #0
	beq _0203B316
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0203B316
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0205C2B0
	bl sub_02036AC4
	mov r0, #0
	bl sub_0205BEA8
_0203B316:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203B2EC

	thumb_func_start sub_0203B318
sub_0203B318: ; 0x0203B318
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	ldr r4, _0203B4D0 ; =0x020EA044
	str r3, [sp, #0x18]
	add r3, sp, #0xa0
	str r2, [sp, #0x14]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0xc]
	add r1, r2, #0
	add r0, #0x38
	mov r2, #8
	mov r3, #0xb
	bl ov5_021D3190
	mov r0, #0x42
	mov r1, #0xb
	bl sub_02006C24
	str r0, [sp, #0x1c]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0203B4D4 ; =0x000034D8
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r2, #5
	add r0, #0x38
	mov r3, #0
	bl ov5_021D32E8
	ldr r0, _0203B4D4 ; =0x000034D8
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #1
	add r0, #0x38
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0203B4D4 ; =0x000034D8
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r0, #0x38
	add r3, r2, #0
	bl ov5_021D339C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0203B4D4 ; =0x000034D8
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #2
	add r0, #0x38
	mov r3, #0
	bl ov5_021D3414
	ldr r0, [sp, #0xc]
	ldr r1, _0203B4D8 ; =0x020EA0A4
	add r0, #0x38
	bl ov5_021D3584
	mov r2, #0x67
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	ldrh r1, [r1, #0x28]
	ldr r0, [r0, #0]
	bl sub_0203B558
	ldr r0, _0203B4DC ; =0x000034D9
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #4
	add r0, #0x38
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0203B4DC ; =0x000034D9
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #3
	add r0, #0x38
	mov r3, #0
	bl ov5_021D339C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0203B4DC ; =0x000034D9
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #6
	add r0, #0x38
	mov r3, #0
	bl ov5_021D3414
	ldr r0, [sp, #0x14]
	mov r4, #0
	cmp r0, #0
	bls _0203B496
	ldr r5, [sp, #0xc]
	ldr r3, _0203B4E0 ; =0x020EA0D8
	add r7, r4, #0
	add r2, sp, #0x2c
	mov r6, #6
_0203B40C:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0203B40C
	ldr r0, [r3, #0]
	ldr r3, _0203B4E4 ; =0x020EA038
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_0203B424:
	add r6, sp, #0x2c
	add r3, sp, #0x6c
	mov r2, #6
_0203B42A:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0203B42A
	ldr r0, [r6, #0]
	add r1, sp, #0x6c
	str r0, [r3, #0]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, r0, r7
	strh r0, [r1, #2]
	ldr r0, [sp, #0x10]
	ldrb r2, [r0, r4]
	cmp r2, #2
	bne _0203B454
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0203B454
	mov r0, #0x1b
	strh r0, [r1, #6]
	b _0203B45C
_0203B454:
	lsl r0, r2, #1
	add r1, r2, r0
	add r0, sp, #0x6c
	strh r1, [r0, #6]
_0203B45C:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x6c
	add r0, #0x38
	bl ov5_021D3584
	mov r1, #0x1a
	lsl r1, r1, #4
	add r2, sp, #0x60
	add r3, sp, #0x20
	str r0, [r5, r1]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r2, #1
	ldr r0, [r0, #0]
	bl sub_02021C80
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r7, #0x18
	add r5, r5, #4
	cmp r4, r0
	blo _0203B424
_0203B496:
	ldr r0, [sp, #0xc]
	mov r2, #1
	ldrh r0, [r0, #0x28]
	add r0, r0, #1
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldr r0, [r0, #0]
	bl sub_0203B588
	ldr r0, [sp, #0x14]
	mov r1, #0x6f
	add r2, r0, #1
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [sp, #0x1c]
	bl sub_02006CA8
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203B4D0: .word 0x020EA044
_0203B4D4: .word 0x000034D8
_0203B4D8: .word 0x020EA0A4
_0203B4DC: .word 0x000034D9
_0203B4E0: .word 0x020EA0D8
_0203B4E4: .word 0x020EA038
	thumb_func_end sub_0203B318

	thumb_func_start sub_0203B4E8
sub_0203B4E8: ; 0x0203B4E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0203B516
	mov r7, #0x67
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x20
_0203B500:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	bl sub_0200D0F4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _0203B500
_0203B516:
	add r5, #0x38
	add r0, r5, #0
	bl ov5_021D375C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203B4E8

	thumb_func_start sub_0203B520
sub_0203B520: ; 0x0203B520
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0203B554
	mov r7, #0x67
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x20
_0203B538:
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
	blo _0203B538
_0203B554:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203B520

	thumb_func_start sub_0203B558
sub_0203B558: ; 0x0203B558
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
	thumb_func_end sub_0203B558

	thumb_func_start sub_0203B588
sub_0203B588: ; 0x0203B588
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021E24
	mov r1, #3
	bl sub_020E2178
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
	thumb_func_end sub_0203B588

	thumb_func_start sub_0203B5B4
sub_0203B5B4: ; 0x0203B5B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	add r4, r2, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_0203B588
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_0203B588
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203B5B4

	thumb_func_start sub_0203B5E8
sub_0203B5E8: ; 0x0203B5E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02021E24
	mov r1, #3
	bl sub_020E2178
	cmp r1, #1
	bne _0203B60E
	add r0, r4, #0
	bl sub_02021FD0
	cmp r0, #0
	bne _0203B60E
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0203B588
_0203B60E:
	pop {r4, pc}
	thumb_func_end sub_0203B5E8

	thumb_func_start sub_0203B610
sub_0203B610: ; 0x0203B610
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0203B648
	add r0, r5, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	bl sub_0203B078
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r5, #0
	bl sub_0203B200
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	blx r1
	mov r0, #3
	strh r0, [r4, #0x2a]
_0203B648:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203B610

	thumb_func_start sub_0203B64C
sub_0203B64C: ; 0x0203B64C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203B672
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	blx r1
_0203B672:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203B64C

	thumb_func_start sub_0203B674
sub_0203B674: ; 0x0203B674
	mov r2, #0x72
	lsl r2, r2, #2
	str r1, [r0, r2]
	mov r1, #3
	strh r1, [r0, #0x2a]
	bx lr
	thumb_func_end sub_0203B674

	thumb_func_start sub_0203B680
sub_0203B680: ; 0x0203B680
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203B6A0 ; =sub_0203B6A4
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203B6A0: .word sub_0203B6A4
	thumb_func_end sub_0203B680

	thumb_func_start sub_0203B6A4
sub_0203B6A4: ; 0x0203B6A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r6, r0, #0
	mov r0, #0xb
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r7, r0, #0
	ldr r0, [sp]
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02055BA8
	str r0, [r4, #8]
	add r0, r7, #0
	mov r1, #0
	bl sub_0206B1F0
	str r0, [r4, #0xc]
	add r0, r7, #0
	mov r1, #1
	bl sub_0206B1F0
	str r0, [r4, #0x10]
	add r0, r7, #0
	mov r1, #2
	bl sub_0206B1F0
	str r0, [r4, #0x14]
	add r0, r7, #0
	mov r1, #3
	bl sub_0206B1F0
	str r0, [r4, #0x18]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0203E0AC
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r6, r0]
	ldr r1, _0203B734 ; =sub_0203B738
	sub r0, #0x30
	str r1, [r6, r0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203B734: .word sub_0203B738
	thumb_func_end sub_0203B6A4

	thumb_func_start sub_0203B738
sub_0203B738: ; 0x0203B738
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0203B760
	mov r0, #0xb
	bl sub_02018238
_0203B760:
	mov r0, #0xc
	strh r0, [r4, #0x2a]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203B738

	thumb_func_start sub_0203B768
sub_0203B768: ; 0x0203B768
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203B788 ; =sub_0203B78C
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203B788: .word sub_0203B78C
	thumb_func_end sub_0203B768

	thumb_func_start sub_0203B78C
sub_0203B78C: ; 0x0203B78C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x7a
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #0
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0203B7BC ; =sub_0203B7C0
	sub r1, #0x30
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203B7BC: .word sub_0203B7C0
	thumb_func_end sub_0203B78C

	thumb_func_start sub_0203B7C0
sub_0203B7C0: ; 0x0203B7C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0x40
	add r6, r0, #0
	bl sub_020D50B8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r6, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0x17
	bls _0203B800
	b _0203BB56
_0203B800:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203B80C: ; jump table
	.short _0203BB56 - _0203B80C - 2 ; case 0
	.short _0203B83C - _0203B80C - 2 ; case 1
	.short _0203BB56 - _0203B80C - 2 ; case 2
	.short _0203BA5A - _0203B80C - 2 ; case 3
	.short _0203B8BA - _0203B80C - 2 ; case 4
	.short _0203B940 - _0203B80C - 2 ; case 5
	.short _0203B9C6 - _0203B80C - 2 ; case 6
	.short _0203BA1C - _0203B80C - 2 ; case 7
	.short _0203BAB4 - _0203B80C - 2 ; case 8
	.short _0203BAE0 - _0203B80C - 2 ; case 9
	.short _0203BB3A - _0203B80C - 2 ; case 10
	.short _0203BB14 - _0203B80C - 2 ; case 11
	.short _0203BB14 - _0203B80C - 2 ; case 12
	.short _0203BB14 - _0203B80C - 2 ; case 13
	.short _0203BB14 - _0203B80C - 2 ; case 14
	.short _0203BB14 - _0203B80C - 2 ; case 15
	.short _0203BB14 - _0203B80C - 2 ; case 16
	.short _0203BB14 - _0203B80C - 2 ; case 17
	.short _0203BB14 - _0203B80C - 2 ; case 18
	.short _0203BB14 - _0203B80C - 2 ; case 19
	.short _0203BB14 - _0203B80C - 2 ; case 20
	.short _0203BB14 - _0203B80C - 2 ; case 21
	.short _0203BB14 - _0203B80C - 2 ; case 22
	.short _0203BB14 - _0203B80C - 2 ; case 23
_0203B83C:
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r7, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r7, #4]
	mov r0, #1
	strb r0, [r7, #0x11]
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	ldr r0, [r7, #0]
	bl sub_0207A0F8
	strb r0, [r7, #0x13]
	mov r0, #0
	strh r0, [r7, #0x18]
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0202D79C
	str r0, [r7, #0x20]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	ldr r1, _0203BBDC ; =0x020EA02C
	add r0, r7, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208E9C0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203D334
	mov r0, #0x7e
	lsl r0, r0, #2
	str r7, [r4, r0]
	ldr r1, _0203BBE0 ; =sub_0203C1C8
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203B8BA:
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r7, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r7, #4]
	mov r1, #1
	add r0, r6, #0
	strb r1, [r7, #0x11]
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	strb r1, [r7, #0x13]
	ldrh r0, [r6, #0x26]
	strh r0, [r7, #0x18]
	mov r0, #2
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	ldr r1, _0203BBE4 ; =0x020EA01C
	add r0, r7, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208E9C0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203D334
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	ldrh r1, [r6, #0x24]
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	str r7, [r4, r0]
	ldr r1, _0203BBE0 ; =sub_0203C1C8
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203B940:
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r7, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r7, #4]
	mov r1, #1
	add r0, r6, #0
	strb r1, [r7, #0x11]
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	strb r1, [r7, #0x13]
	ldrh r0, [r6, #0x26]
	strh r0, [r7, #0x18]
	mov r0, #2
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	ldr r1, _0203BBE4 ; =0x020EA01C
	add r0, r7, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208E9C0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203D334
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r6, #0x34]
	strh r1, [r0, #2]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	str r7, [r4, r0]
	ldr r1, _0203BBE0 ; =sub_0203C1C8
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203B9C6:
	ldrh r0, [r6, #0x24]
	bl sub_0207D2F0
	add r3, r0, #0
	mov r0, #0xb
	add r2, r6, #0
	str r0, [sp]
	add r2, #0x22
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #2
	bl sub_0203D920
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r6, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xa
	ldrh r0, [r6, #0x24]
	bne _0203BA00
	add r2, r6, #0
	add r2, #0x22
	ldrb r2, [r2]
	mov r1, #0
	bl sub_0203C540
	b _0203BA0C
_0203BA00:
	add r2, r6, #0
	add r2, #0x22
	ldrb r2, [r2]
	mov r1, #1
	bl sub_0203C540
_0203BA0C:
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BBE8 ; =sub_0203C558
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BA1C:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0xb
	bl sub_0203D984
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r2, r6, #0
	add r2, #0x22
	ldrh r0, [r6, #0x24]
	ldrb r2, [r2]
	mov r1, #2
	bl sub_0203C540
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BBE8 ; =sub_0203C558
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BA5A:
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	str r1, [r0, #0]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	ldr r1, _0203BBEC ; =0x020EA020
	add r0, r7, #0
	mov r2, #0xb
	bl sub_0207D824
	mov r1, #0x7e
	lsl r1, r1, #2
	add r3, r5, #0
	str r0, [r4, r1]
	add r3, #0x98
	ldr r0, [r4, r1]
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0]
	mov r2, #1
	bl sub_0207CB2C
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl sub_0203D1E4
	ldr r1, _0203BBF0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BAB4:
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	ldrh r1, [r6, #0x24]
	strh r1, [r0, #2]
	mov r1, #3
	strb r1, [r0, #1]
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r6, #0x38]
	strh r1, [r0, #4]
	ldr r1, [r6, #0x3c]
	str r1, [r0, #8]
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #6
	strh r0, [r4, #0x2a]
	b _0203BBCE
_0203BAE0:
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A354
	strh r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r7]
	ldrh r0, [r6, #0x38]
	strh r0, [r7, #4]
	ldr r0, [r6, #0x3c]
	str r0, [r7, #8]
	mov r0, #0x7e
	lsl r0, r0, #2
	str r7, [r4, r0]
	mov r0, #6
	strh r0, [r4, #0x2a]
	b _0203BBCE
_0203BB14:
	sub r0, #0xb
	add r1, sp, #4
	strh r0, [r1, #6]
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	strh r0, [r1, #4]
	str r7, [sp, #4]
	ldrh r1, [r1, #6]
	mov r0, #0
	bl sub_0207070C
	mov r1, #0x7a
	lsl r1, r1, #2
	add r2, r0, #0
	add r0, sp, #4
	add r1, r4, r1
	blx r2
	b _0203BBCE
_0203BB3A:
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BBF0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BB56:
	add r0, r6, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #5
	beq _0203BB70
	cmp r0, #6
	beq _0203BB70
	cmp r0, #7
	beq _0203BB70
	cmp r0, #0x10
	beq _0203BB70
	cmp r0, #8
	bne _0203BBA4
_0203BB70:
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r2, #0x7e
	lsl r2, r2, #2
	str r0, [r4, r2]
	add r0, r6, #0
	add r0, #0x22
	ldrb r1, [r0]
	ldr r0, [r4, r2]
	cmp r1, #6
	blo _0203BB96
	mov r1, #0
	bl sub_0207CB70
	b _0203BB9A
_0203BB96:
	bl sub_0207CB70
_0203BB9A:
	ldr r1, _0203BBF0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BBA4:
	cmp r0, #9
	bne _0203BBC4
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BBF0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BBC4:
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0xc
	strh r0, [r4, #0x2a]
_0203BBCE:
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0203BBDC: .word 0x020EA02C
_0203BBE0: .word sub_0203C1C8
_0203BBE4: .word 0x020EA01C
_0203BBE8: .word sub_0203C558
_0203BBEC: .word 0x020EA020
_0203BBF0: .word sub_0203BC5C
	thumb_func_end sub_0203B7C0

	thumb_func_start sub_0203BBF4
sub_0203BBF4: ; 0x0203BBF4
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203BC14 ; =sub_0203BC18
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203BC14: .word sub_0203BC18
	thumb_func_end sub_0203BBF4

	thumb_func_start sub_0203BC18
sub_0203BC18: ; 0x0203BC18
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x73
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_0207CB70
	mov r0, #0x72
	ldr r1, _0203BC58 ; =sub_0203BC5C
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov5_021E2064
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0203BC58: .word sub_0203BC5C
	thumb_func_end sub_0203BC18

	thumb_func_start sub_0203BC5C
sub_0203BC5C: ; 0x0203BC5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	bl sub_0207CB08
	str r0, [sp, #8]
	bl sub_0207CB20
	mov r1, #0x7e
	lsl r1, r1, #2
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [r4, r1]
	bl sub_020D50B8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, [sp, #8]
	bl sub_0207CB9C
	cmp r0, #5
	bls _0203BCA0
	b _0203BE68
_0203BCA0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203BCAC: ; jump table
	.short _0203BCB8 - _0203BCAC - 2 ; case 0
	.short _0203BCF2 - _0203BCAC - 2 ; case 1
	.short _0203BD02 - _0203BCAC - 2 ; case 2
	.short _0203BE68 - _0203BCAC - 2 ; case 3
	.short _0203BD70 - _0203BCAC - 2 ; case 4
	.short _0203BE68 - _0203BCAC - 2 ; case 5
_0203BCB8:
	ldr r0, [sp, #8]
	bl sub_0207CB94
	add r1, sp, #0x10
	strh r0, [r1, #4]
	ldr r0, [sp, #8]
	bl sub_0207CBA4
	add r1, sp, #0x10
	strb r0, [r1, #6]
	str r5, [sp, #0x10]
	ldrh r0, [r1, #4]
	mov r1, #6
	mov r2, #0xb
	bl sub_0207CFF0
	add r1, r0, #0
	lsl r1, r1, #0x10
	mov r0, #0
	lsr r1, r1, #0x10
	bl sub_020683F4
	mov r1, #0x73
	lsl r1, r1, #2
	add r2, r0, #0
	add r0, sp, #0x10
	add r1, r4, r1
	blx r2
	b _0203BE72
_0203BCF2:
	ldr r0, [sp, #8]
	bl sub_0207CB94
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203C2D8
	b _0203BE72
_0203BD02:
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	bl sub_020D5124
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r5, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	str r0, [r5, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [r5, #0x18]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #9
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [sp, #8]
	bl sub_0207CB94
	strh r0, [r5, #0x24]
	ldr r1, _0203BE80 ; =0x020F1E88
	add r0, r6, #0
	add r2, r5, #0
	str r6, [r5, #0x1c]
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r1, _0203BE84 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203BE72
_0203BD70:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [sp, #4]
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r7, [r0, #0]
	ldr r0, [sp, #8]
	bl sub_0207CB94
	add r5, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0207A0FC
	str r0, [sp, #0xc]
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0207D2D0
	cmp r0, #1
	bne _0203BDEE
	ldr r0, [sp, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0203BDEE
	add r0, r5, #0
	bl sub_0207D2F0
	add r3, r0, #0
	mov r0, #0xb
	lsl r2, r7, #0x18
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	lsr r2, r2, #0x18
	bl sub_0203D920
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	lsl r2, r7, #0x18
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl sub_0203C540
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BE88 ; =sub_0203C558
	add r0, r4, #0
	bl sub_0203B674
	b _0203BE72
_0203BDEE:
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	bl sub_020D5124
	ldr r0, [sp, #4]
	str r0, [r5, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	str r0, [r5, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [r5, #0x18]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [sp, #8]
	bl sub_0207CB94
	strh r0, [r5, #0x24]
	add r0, r5, #0
	add r0, #0x22
	strb r7, [r0]
	str r6, [r5, #0x1c]
	ldrh r0, [r5, #0x24]
	cmp r0, #0
	bne _0203BE46
	mov r1, #0
	b _0203BE48
_0203BE46:
	mov r1, #0xa
_0203BE48:
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
	ldr r1, _0203BE80 ; =0x020F1E88
	add r0, r6, #0
	add r2, r5, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r1, _0203BE84 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203BE72
_0203BE68:
	add r0, r6, #0
	bl sub_020509D4
	mov r0, #0xc
	strh r0, [r4, #0x2a]
_0203BE72:
	ldr r0, [sp, #8]
	bl sub_020181C4
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203BE80: .word 0x020F1E88
_0203BE84: .word sub_0203B7C0
_0203BE88: .word sub_0203C558
	thumb_func_end sub_0203BC5C

	thumb_func_start sub_0203BE8C
sub_0203BE8C: ; 0x0203BE8C
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203BEAC ; =sub_0203BEB0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203BEAC: .word sub_0203BEB0
	thumb_func_end sub_0203BE8C

	thumb_func_start sub_0203BEB0
sub_0203BEB0: ; 0x0203BEB0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	bl sub_02071F04
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	str r5, [sp]
	ldr r0, [r4, r1]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #1
	add r1, r0, #0
	mov r3, #0xff
	bl sub_02071D40
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl sub_0203E09C
	mov r0, #0x72
	ldr r1, _0203BEFC ; =sub_0203BF00
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203BEFC: .word sub_0203BF00
	thumb_func_end sub_0203BEB0

	thumb_func_start sub_0203BF00
sub_0203BF00: ; 0x0203BF00
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x7e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl sub_020721D4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02071F20
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0xc
	strh r0, [r4, #0x2a]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203BF00

	thumb_func_start sub_0203BF38
sub_0203BF38: ; 0x0203BF38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	bl sub_0203B078
	add r0, r4, #0
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r5, #0
	bl sub_0203B200
	mov r0, #4
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203BF38

	thumb_func_start sub_0203BF6C
sub_0203BF6C: ; 0x0203BF6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r0, [r0, #0xc]
	bl sub_020247E0
	cmp r0, #0
	beq _0203BF94
	mov r2, #0
	ldr r1, _0203BFB8 ; =0x000007F2
	add r0, r5, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _0203BFB2
_0203BF94:
	mov r0, #0x20
	mov r1, #8
	bl sub_02018144
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r3, [r4, r1]
	mov r2, #0
	strh r2, [r3, #4]
	ldr r1, _0203BFBC ; =0x000007D5
	add r0, r5, #0
	add r3, r3, #4
	bl sub_0203E8E0
_0203BFB2:
	mov r0, #5
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203BFB8: .word 0x000007F2
_0203BFBC: .word 0x000007D5
	thumb_func_end sub_0203BF6C

	thumb_func_start sub_0203BFC0
sub_0203BFC0: ; 0x0203BFC0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	ldr r0, [r6, #0xc]
	bl sub_020247E0
	cmp r0, #0
	beq _0203BFE8
	mov r0, #0
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
_0203BFE8:
	ldrh r0, [r5, #4]
	cmp r0, #0
	bne _0203BFF2
	mov r0, #0
	b _0203BFF4
_0203BFF2:
	mov r0, #0xf
_0203BFF4:
	strh r0, [r4, #0x2a]
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203BFC0

	thumb_func_start sub_0203C000
sub_0203C000: ; 0x0203C000
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203C020 ; =sub_0203C024
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203C020: .word sub_0203C024
	thumb_func_end sub_0203C000

	thumb_func_start sub_0203C024
sub_0203C024: ; 0x0203C024
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D8EC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0203C04C ; =sub_0203C050
	sub r1, #0x30
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C04C: .word sub_0203C050
	thumb_func_end sub_0203C024

	thumb_func_start sub_0203C050
sub_0203C050: ; 0x0203C050
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0xc
	strh r0, [r4, #0x2a]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203C050

	thumb_func_start sub_0203C07C
sub_0203C07C: ; 0x0203C07C
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203C09C ; =sub_0203C0A0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203C09C: .word sub_0203C0A0
	thumb_func_end sub_0203C07C

	thumb_func_start sub_0203C0A0
sub_0203C0A0: ; 0x0203C0A0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r2, [r5, #0xc]
	mov r0, #2
	mov r1, #0
	mov r3, #0xb
	bl sub_0209747C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, sp, #0
	mov r1, #4
	bl sub_02014A9C
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02097500
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl sub_0203D874
	mov r0, #0x72
	ldr r1, _0203C0F4 ; =sub_0203C0F8
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C0F4: .word sub_0203C0F8
	thumb_func_end sub_0203C0A0

	thumb_func_start sub_0203C0F8
sub_0203C0F8: ; 0x0203C0F8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02097528
	cmp r0, #0
	bne _0203C142
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl sub_02097540
	bl sub_02033E1C
	cmp r0, #0
	beq _0203C13C
	add r0, sp, #0
	bl sub_0205C12C
	ldr r0, [r4, #0x7c]
	add r1, sp, #0
	bl sub_0205C010
_0203C13C:
	mov r0, #8
	strh r0, [r5, #0x2a]
	b _0203C146
_0203C142:
	mov r0, #0xc
	strh r0, [r5, #0x2a]
_0203C146:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020974EC
	add r0, r4, #0
	bl sub_020509D4
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0205C2B0
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203C0F8

	thumb_func_start sub_0203C164
sub_0203C164: ; 0x0203C164
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	bl sub_0203B078
	add r0, r4, #0
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r5, #0
	bl sub_0203B200
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	bne _0203C1B0
	ldr r1, _0203C1C4 ; =0x00002275
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	b _0203C1BA
_0203C1B0:
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl sub_0203E918
_0203C1BA:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203C1C4: .word 0x00002275
	thumb_func_end sub_0203C164

	thumb_func_start sub_0203C1C8
sub_0203C1C8: ; 0x0203C1C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0x30
	add r7, r0, #0
	bl sub_020D50B8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldrb r0, [r7, #0x12]
	cmp r0, #2
	bne _0203C2AA
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0x40
	str r1, [sp]
	mov r1, #0
	add r5, r0, #0
	bl sub_020D5124
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r5, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	str r0, [r5, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	str r0, [r5, #0x18]
	mov r0, #0
	add r1, #0x21
	strb r0, [r1]
	ldr r1, [sp]
	str r6, [r5, #0x1c]
	ldrh r1, [r1]
	cmp r1, #0
	beq _0203C25E
	add r1, r5, #0
	mov r2, #7
	add r1, #0x20
	strb r2, [r1]
	b _0203C26A
_0203C25E:
	add r0, r5, #0
	mov r1, #8
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [sp]
	ldrh r0, [r0, #2]
_0203C26A:
	str r0, [r5, #0x34]
	ldr r0, [sp]
	add r2, r5, #0
	ldrh r0, [r0]
	strh r0, [r5, #0x24]
	add r0, r5, #0
	ldrb r1, [r7, #0x14]
	add r0, #0x22
	strb r1, [r0]
	ldrh r0, [r7, #0x18]
	strh r0, [r5, #0x26]
	add r0, r5, #0
	ldrb r1, [r7, #0x16]
	add r0, #0x28
	strb r1, [r0]
	ldr r1, _0203C2D0 ; =0x020F1E88
	add r0, r6, #0
	bl sub_0203CD84
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x7e
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r1, _0203C2D4 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203C2C6
_0203C2AA:
	mov r1, #0x7a
	lsl r1, r1, #2
	ldrb r2, [r7, #0x14]
	add r0, r6, #0
	add r1, r4, r1
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C2D4 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
_0203C2C6:
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203C2D0: .word 0x020F1E88
_0203C2D4: .word sub_0203B7C0
	thumb_func_end sub_0203C1C8

	thumb_func_start sub_0203C2D8
sub_0203C2D8: ; 0x0203C2D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02050A60
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02050A64
	add r6, r0, #0
	mov r0, #0xb
	bl sub_020972FC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	str r0, [sp]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	mov r2, #1
	bl sub_02097320
	mov r5, #0
	add r4, r5, #0
_0203C316:
	add r0, r4, #0
	bl sub_0207D354
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	mov r2, #1
	mov r3, #0xb
	bl sub_0207D688
	cmp r0, #1
	bne _0203C342
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0
	bl sub_02097320
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0203C342:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x40
	blo _0203C316
	ldr r0, [sp, #4]
	add r3, sp, #8
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #4
	add r2, sp, #8
	add r3, #1
	bl sub_0207D9B4
	mov r0, #0x7e
	add r2, sp, #8
	lsl r0, r0, #2
	ldrb r1, [r2, #1]
	add r3, r5, #3
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	ldr r0, [r6, r0]
	lsr r3, r3, #0x18
	bl sub_0209733C
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [sp, #4]
	ldr r1, [r6, r1]
	bl sub_0203D2E4
	ldr r1, _0203C38C ; =sub_0203C390
	add r0, r6, #0
	bl sub_0203B674
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203C38C: .word sub_0203C390
	thumb_func_end sub_0203C2D8

	thumb_func_start sub_0203C390
sub_0203C390: ; 0x0203C390
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #1
	add r2, sp, #0
	bl sub_02097390
	add r0, r5, #0
	add r3, sp, #0
	add r0, #0x98
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0207D9C8
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl sub_02018238
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C3F0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0203C3F0: .word sub_0203BC5C
	thumb_func_end sub_0203C390

	thumb_func_start sub_0203C3F4
sub_0203C3F4: ; 0x0203C3F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x7e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl sub_02018238
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C430 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C430: .word sub_0203BC5C
	thumb_func_end sub_0203C3F4

	thumb_func_start sub_0203C434
sub_0203C434: ; 0x0203C434
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0xb
	ldr r7, [r1, #0]
	bl sub_02018238
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0203C48A
	mov r0, #0xb
	add r1, r5, #0
	bl sub_02018238
	mov r1, #0x7a
	lsl r1, r1, #2
	lsl r2, r7, #0x18
	add r0, r6, #0
	add r1, r4, r1
	lsr r2, r2, #0x18
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C504 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203C4FE
_0203C48A:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r3, [r5, #0x1c]
	mov r0, #0xb
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_0207064C
	ldr r1, [r5, #0x1c]
	add r7, r0, #0
	lsl r1, r1, #0x10
	mov r0, #1
	lsr r1, r1, #0x10
	mov r2, #0xb
	bl sub_0202BE00
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r2, #1
	bl sub_0202B758
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl sub_02018238
	add r0, r6, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _0203C508 ; =sub_02070680
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r7, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
_0203C4FE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203C504: .word sub_0203B7C0
_0203C508: .word sub_02070680
	thumb_func_end sub_0203C434

	thumb_func_start sub_0203C50C
sub_0203C50C: ; 0x0203C50C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x73
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C53C ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C53C: .word sub_0203BC5C
	thumb_func_end sub_0203C50C

	thumb_func_start sub_0203C540
sub_0203C540: ; 0x0203C540
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #4
	add r6, r2, #0
	bl sub_02018144
	strh r5, [r0]
	strb r6, [r0, #2]
	strb r4, [r0, #3]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203C540

	thumb_func_start sub_0203C558
sub_0203C558: ; 0x0203C558
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	ldrb r1, [r6, #3]
	cmp r1, #3
	bhi _0203C650
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203C582: ; jump table
	.short _0203C5D4 - _0203C582 - 2 ; case 0
	.short _0203C614 - _0203C582 - 2 ; case 1
	.short _0203C5AE - _0203C582 - 2 ; case 2
	.short _0203C58A - _0203C582 - 2 ; case 3
_0203C58A:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C660 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203C650
_0203C5AE:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r1, #0x7a
	lsl r1, r1, #2
	ldrb r2, [r6, #2]
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C664 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203C650
_0203C5D4:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02097728
	cmp r0, #1
	bne _0203C5EC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xc
	bl sub_0203C668
	b _0203C650
_0203C5EC:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r1, #0x7a
	lsl r1, r1, #2
	ldrb r2, [r6, #2]
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C664 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203C650
_0203C614:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02097728
	cmp r0, #1
	bne _0203C62C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xb
	bl sub_0203C668
	b _0203C650
_0203C62C:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C660 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
_0203C650:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0203C660: .word sub_0203BC5C
_0203C664: .word sub_0203B7C0
	thumb_func_end sub_0203C558

	thumb_func_start sub_0203C668
sub_0203C668: ; 0x0203C668
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7f
	add r6, r1, #0
	str r2, [sp]
	lsl r0, r0, #2
	ldr r7, [r6, r0]
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	ldrh r0, [r7]
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldrb r1, [r7, #2]
	add r0, #0x22
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x20
	strb r0, [r1]
	str r5, [r4, #0x1c]
	ldrb r1, [r7, #2]
	ldr r0, [r4, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02097750
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02097770
	ldr r1, _0203C708 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r6, r0]
	ldr r1, _0203C70C ; =sub_0203B7C0
	add r0, r6, #0
	bl sub_0203B674
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203C708: .word 0x020F1E88
_0203C70C: .word sub_0203B7C0
	thumb_func_end sub_0203C668

	thumb_func_start sub_0203C710
sub_0203C710: ; 0x0203C710
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02098AF0
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C74C ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0203C74C: .word sub_0203BC5C
	thumb_func_end sub_0203C710

	thumb_func_start sub_0203C750
sub_0203C750: ; 0x0203C750
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x73
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C780 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C780: .word sub_0203BC5C
	thumb_func_end sub_0203C750

	thumb_func_start sub_0203C784
sub_0203C784: ; 0x0203C784
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x73
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C7B4 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C7B4: .word sub_0203BC5C
	thumb_func_end sub_0203C784

	thumb_func_start sub_0203C7B8
sub_0203C7B8: ; 0x0203C7B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r6, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r5, [r6, r0]
	bl sub_0200569C
	mov r0, #3
	mov r1, #0x49
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	ldrb r1, [r5]
	str r0, [sp, #0x20]
	bl sub_0207A0FC
	str r0, [sp, #0x24]
	ldrb r0, [r5, #1]
	cmp r0, #0
	ldr r0, [r4, #0xc]
	bne _0203C84E
	bl sub_02025E44
	str r0, [sp, #0x28]
	ldr r0, [r4, #0xc]
	bl sub_0208C324
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027560
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x30]
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	str r0, [sp, #0x34]
	ldr r0, [r4, #0xc]
	bl sub_02056B24
	ldr r1, [sp, #0x2c]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r3, [sp, #0x28]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #0x49
	str r0, [sp, #0x1c]
	ldrh r2, [r5, #4]
	ldr r0, [sp, #0x20]
	bl sub_0207AE68
	b _0203C8A2
_0203C84E:
	bl sub_02025E44
	str r0, [sp, #0x38]
	ldr r0, [r4, #0xc]
	bl sub_0208C324
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027560
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x40]
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	str r0, [sp, #0x44]
	ldr r0, [r4, #0xc]
	bl sub_02056B24
	ldr r1, [sp, #0x3c]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x40]
	ldr r3, [sp, #0x38]
	str r1, [sp, #8]
	ldr r1, [sp, #0x44]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0x49
	str r0, [sp, #0x1c]
	ldrh r2, [r5, #4]
	ldr r0, [sp, #0x20]
	bl sub_0207AE68
_0203C8A2:
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	ldrb r1, [r5]
	str r1, [r0, #0]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r0, r1, #4
	ldr r0, [r6, r0]
	bl sub_020181C4
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r6, r0]
	mov r0, #7
	strh r0, [r6, #0x2a]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203C7B8

	thumb_func_start sub_0203C8CC
sub_0203C8CC: ; 0x0203C8CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207B0D0
	cmp r0, #1
	bne _0203C948
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207B0E0
	mov r0, #0x49
	bl sub_0201807C
	ldr r0, _0203C94C ; =0x00000475
	mov r1, #0
	bl sub_020055D0
	mov r0, #0
	bl sub_02004234
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_020556A0
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r1, [r1, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0207CB70
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r1, _0203C950 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
_0203C948:
	pop {r3, r4, r5, pc}
	nop
_0203C94C: .word 0x00000475
_0203C950: .word sub_0203BC5C
	thumb_func_end sub_0203C8CC

	thumb_func_start sub_0203C954
sub_0203C954: ; 0x0203C954
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x3c]
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0205EA78
	add r7, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EABC
	str r0, [r4, #0]
	ldr r0, [r6, #0x3c]
	bl sub_0205EAC8
	str r0, [r5, #0]
	cmp r7, #3
	bhi _0203C9AA
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203C984: ; jump table
	.short _0203C98C - _0203C984 - 2 ; case 0
	.short _0203C994 - _0203C984 - 2 ; case 1
	.short _0203C99C - _0203C984 - 2 ; case 2
	.short _0203C9A4 - _0203C984 - 2 ; case 3
_0203C98C:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	b _0203C9AA
_0203C994:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0203C9AA
_0203C99C:
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [r4, #0]
	b _0203C9AA
_0203C9A4:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0203C9AA:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203C954

	thumb_func_start sub_0203C9B0
sub_0203C9B0: ; 0x0203C9B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0205EB3C
	bl sub_020630DC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020630DC
	cmp r4, r0
	bne _0203C9CC
	mov r0, #1
	b _0203C9CE
_0203C9CC:
	mov r0, #0
_0203C9CE:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203C9B0

	thumb_func_start sub_0203C9D4
sub_0203C9D4: ; 0x0203C9D4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	add r5, r0, #0
	bl sub_0203C954
	add r4, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02054F94
	bl sub_0205DAE0
	cmp r0, #1
	bne _0203CA2E
	cmp r4, #3
	bhi _0203CA2E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203CA08: ; jump table
	.short _0203CA10 - _0203CA08 - 2 ; case 0
	.short _0203CA18 - _0203CA08 - 2 ; case 1
	.short _0203CA20 - _0203CA08 - 2 ; case 2
	.short _0203CA28 - _0203CA08 - 2 ; case 3
_0203CA10:
	ldr r0, [sp]
	sub r0, r0, #1
	str r0, [sp]
	b _0203CA2E
_0203CA18:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	b _0203CA2E
_0203CA20:
	ldr r0, [sp, #4]
	sub r0, r0, #1
	str r0, [sp, #4]
	b _0203CA2E
_0203CA28:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0203CA2E:
	ldr r0, [r5, #0x38]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	mov r3, #0
	bl sub_0206326C
	str r0, [r6, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203C9D4

	thumb_func_start sub_0203CA40
sub_0203CA40: ; 0x0203CA40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0203C9D4
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0203CA68
	bl sub_02062D9C
	cmp r0, #1
	bne _0203CA68
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #0]
	bl sub_0203C9B0
	cmp r0, #1
	bne _0203CA68
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203CA68:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203CA40

	thumb_func_start sub_0203CA6C
sub_0203CA6C: ; 0x0203CA6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	add r1, sp, #0xc
	add r2, sp, #8
	add r6, r0, #0
	bl sub_0203C954
	ldr r0, [sp, #4]
	mov r7, #0
	cmp r0, #0
	ble _0203CAE0
	ldr r4, [sp]
	add r5, r4, #0
_0203CA8A:
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _0203CAD4
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _0203CAD4
	ldrh r0, [r4, #2]
	cmp r0, #2
	bne _0203CABA
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203CAEC
	cmp r0, #1
	bne _0203CAD4
	mov r0, #0x14
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add sp, #0x10
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0203CABA:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203CB18
	cmp r0, #1
	bne _0203CAD4
	mov r0, #0x14
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add sp, #0x10
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0203CAD4:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r4, #0x14
	add r5, #0x14
	cmp r7, r0
	blt _0203CA8A
_0203CAE0:
	ldr r0, _0203CAE8 ; =0x0000FFFF
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203CAE8: .word 0x0000FFFF
	thumb_func_end sub_0203CA6C

	thumb_func_start sub_0203CAEC
sub_0203CAEC: ; 0x0203CAEC
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r1, #2]
	cmp r0, #2
	beq _0203CAFA
	mov r0, #0
	pop {r4, pc}
_0203CAFA:
	ldrh r0, [r1]
	bl sub_0203F2F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203F188
	cmp r0, #1
	beq _0203CB10
	mov r0, #1
	b _0203CB12
_0203CB10:
	mov r0, #0
_0203CB12:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	thumb_func_end sub_0203CAEC

	thumb_func_start sub_0203CB18
sub_0203CB18: ; 0x0203CB18
	push {r4, lr}
	add r4, r1, #0
	ldrh r1, [r4, #0x10]
	cmp r1, #4
	bne _0203CB26
	mov r0, #1
	pop {r4, pc}
_0203CB26:
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	cmp r0, #3
	bhi _0203CB7C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203CB3C: ; jump table
	.short _0203CB44 - _0203CB3C - 2 ; case 0
	.short _0203CB52 - _0203CB3C - 2 ; case 1
	.short _0203CB60 - _0203CB3C - 2 ; case 2
	.short _0203CB6E - _0203CB3C - 2 ; case 3
_0203CB44:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0203CB4E
	cmp r0, #6
	bne _0203CB7C
_0203CB4E:
	mov r0, #1
	pop {r4, pc}
_0203CB52:
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	beq _0203CB5C
	cmp r0, #6
	bne _0203CB7C
_0203CB5C:
	mov r0, #1
	pop {r4, pc}
_0203CB60:
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _0203CB6A
	cmp r0, #5
	bne _0203CB7C
_0203CB6A:
	mov r0, #1
	pop {r4, pc}
_0203CB6E:
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	beq _0203CB78
	cmp r0, #5
	bne _0203CB7C
_0203CB78:
	mov r0, #1
	pop {r4, pc}
_0203CB7C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203CB18

	thumb_func_start sub_0203CB80
sub_0203CB80: ; 0x0203CB80
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0205EA78
	cmp r0, #0
	beq _0203CB9A
	add sp, #8
	ldr r0, _0203CBDC ; =0x0000FFFF
	pop {r4, r5, r6, pc}
_0203CB9A:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0203C954
	mov r0, #0
	cmp r4, #0
	ble _0203CBD4
	ldr r2, [sp, #4]
	ldr r3, [sp]
	add r1, r6, #0
_0203CBB0:
	ldr r5, [r1, #4]
	cmp r2, r5
	bne _0203CBCC
	ldr r5, [r1, #8]
	cmp r3, r5
	bne _0203CBCC
	ldrh r5, [r1, #2]
	cmp r5, #1
	bne _0203CBCC
	mov r1, #0x14
	mul r1, r0
	add sp, #8
	ldrh r0, [r6, r1]
	pop {r4, r5, r6, pc}
_0203CBCC:
	add r0, r0, #1
	add r1, #0x14
	cmp r0, r4
	blt _0203CBB0
_0203CBD4:
	ldr r0, _0203CBDC ; =0x0000FFFF
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0203CBDC: .word 0x0000FFFF
	thumb_func_end sub_0203CB80

	thumb_func_start sub_0203CBE0
sub_0203CBE0: ; 0x0203CBE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	bl sub_0205EA78
	cmp r0, #0
	beq _0203CBF4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203CBF4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203CA40
	cmp r0, #1
	bne _0203CC10
	ldr r0, [r4, #0]
	bl sub_02062920
	sub r0, #0x5b
	cmp r0, #5
	bhi _0203CC10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203CC10:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203CBE0

	thumb_func_start sub_0203CC14
sub_0203CC14: ; 0x0203CC14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x3c]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r4, r0, #0
	ldr r0, [sp, #8]
	mov r7, #0
	cmp r0, #0
	ble _0203CC78
	ldr r5, [sp, #4]
_0203CC3A:
	ldrh r1, [r5, #2]
	cmp r6, r1
	blt _0203CC6E
	ldrh r0, [r5, #6]
	add r0, r1, r0
	cmp r6, r0
	bge _0203CC6E
	ldrh r1, [r5, #4]
	cmp r4, r1
	blt _0203CC6E
	ldrh r0, [r5, #8]
	add r0, r1, r0
	cmp r4, r0
	bge _0203CC6E
	ldrh r1, [r5, #0xe]
	ldr r0, [sp]
	bl sub_0203F150
	ldrh r1, [r5, #0xc]
	cmp r1, r0
	bne _0203CC6E
	ldr r0, [sp, #4]
	lsl r1, r7, #4
	add sp, #0xc
	ldrh r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_0203CC6E:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r5, #0x10
	cmp r7, r0
	blt _0203CC3A
_0203CC78:
	ldr r0, _0203CC80 ; =0x0000FFFF
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0203CC80: .word 0x0000FFFF
	thumb_func_end sub_0203CC14

	thumb_func_start sub_0203CC84
sub_0203CC84: ; 0x0203CC84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02006840
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203CDB0
	ldr r1, _0203CCB0 ; =0x021C07DC
	str r0, [r1, #0]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0203CCA4
	bl sub_02053808
	b _0203CCA8
_0203CCA4:
	bl sub_02053704
_0203CCA8:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203CCB0: .word 0x021C07DC
	thumb_func_end sub_0203CC84

	thumb_func_start sub_0203CCB4
sub_0203CCB4: ; 0x0203CCB4
	push {r3, lr}
	bl sub_0203CDB0
	ldr r1, _0203CCC8 ; =0x021C07DC
	str r0, [r1, #0]
	bl sub_020535CC
	mov r0, #1
	pop {r3, pc}
	nop
_0203CCC8: .word 0x021C07DC
	thumb_func_end sub_0203CCB4

	thumb_func_start sub_0203CCCC
sub_0203CCCC: ; 0x0203CCCC
	push {r3, lr}
	bl sub_0200682C
	bl sub_0203CEEC
	cmp r0, #0
	beq _0203CCDE
	mov r0, #1
	pop {r3, pc}
_0203CCDE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203CCCC

	thumb_func_start sub_0203CCE4
sub_0203CCE4: ; 0x0203CCE4
	push {r3, lr}
	bl sub_0203CE6C
	ldr r0, _0203CCF8 ; =0x0000004D
	ldr r1, _0203CCFC ; =0x021D742C
	bl sub_02000EC4
	mov r0, #1
	pop {r3, pc}
	nop
_0203CCF8: .word 0x0000004D
_0203CCFC: .word 0x021D742C
	thumb_func_end sub_0203CCE4

	thumb_func_start sub_0203CD00
sub_0203CD00: ; 0x0203CD00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203CD10
	bl sub_02022974
_0203CD10:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203CD1C
	bl sub_02022974
_0203CD1C:
	ldr r0, _0203CD3C ; =0x00000005
	mov r1, #2
	bl sub_02006590
	mov r1, #0
	str r1, [r4, #0x68]
	ldr r0, [r4, #0]
	mov r2, #0xb
	str r1, [r0, #8]
	ldr r0, _0203CD40 ; =0x021F89B0
	add r1, r4, #0
	bl sub_020067E8
	ldr r1, [r4, #0]
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
_0203CD3C: .word 0x00000005
_0203CD40: .word 0x021F89B0
	thumb_func_end sub_0203CD00

	thumb_func_start sub_0203CD44
sub_0203CD44: ; 0x0203CD44
	mov r1, #0
	str r1, [r0, #0x68]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203CD44

	thumb_func_start sub_0203CD4C
sub_0203CD4C: ; 0x0203CD4C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203CD58
	mov r0, #1
	bx lr
_0203CD58:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203CD4C

	thumb_func_start sub_0203CD5C
sub_0203CD5C: ; 0x0203CD5C
	ldr r1, [r0, #0]
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0203CD6E
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _0203CD6E
	mov r0, #1
	bx lr
_0203CD6E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203CD5C

	thumb_func_start sub_0203CD74
sub_0203CD74: ; 0x0203CD74
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203CD80
	mov r0, #1
	bx lr
_0203CD80:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203CD74

	thumb_func_start sub_0203CD84
sub_0203CD84: ; 0x0203CD84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #4]
	add r6, r2, #0
	cmp r0, #0
	beq _0203CD98
	bl sub_02022974
_0203CD98:
	add r0, r5, #0
	bl sub_0203CD44
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xb
	bl sub_020067E8
	ldr r1, [r5, #0]
	str r0, [r1, #4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203CD84

	thumb_func_start sub_0203CDB0
sub_0203CDB0: ; 0x0203CDB0
	push {r3, r4, r5, lr}
	mov r2, #7
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xb
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r1, #0x20
	mov r0, #3
	lsl r2, r1, #9
	bl sub_02017FC8
	mov r2, #3
	mov r0, #0
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0xcc
	mov r2, #0xb
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xcc
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018144
	str r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	str r1, [r0, #4]
	ldr r0, [r4, #0]
	str r1, [r0, #8]
	ldr r0, [r4, #0]
	str r1, [r0, #0xc]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A720
	str r0, [r4, #0x1c]
	bl sub_02039D6C
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0xb
	bl sub_0203A378
	mov r0, #0xb
	bl sub_0207D99C
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1, #0]
	mov r0, #0xb
	bl sub_0206940C
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	bl sub_0209ACBC
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1, #0]
	mov r0, #0xb
	bl sub_0209C370
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203CDB0

	thumb_func_start sub_0203CE6C
sub_0203CE6C: ; 0x0203CE6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_02039DE4
	add r0, r4, #0
	bl sub_0203A398
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0206942C
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_0209ACDC
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0209C388
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x5b
	bl sub_0201807C
	mov r0, #0xb
	bl sub_0201807C
	mov r0, #0x20
	bl sub_0201807C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203CE6C

	thumb_func_start sub_0203CECC
sub_0203CECC: ; 0x0203CECC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0203CEE8
	bl sub_02006844
	cmp r0, #0
	beq _0203CEE8
	ldr r0, [r4, #0]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #0]
_0203CEE8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203CECC

	thumb_func_start sub_0203CEEC
sub_0203CEEC: ; 0x0203CEEC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203CF5C
	add r0, r4, #0
	bl sub_02050958
	cmp r0, #1
	bne _0203CF0E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0203CF0E
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov5_021EA714
_0203CF0E:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0203CF2A
	bl sub_0203CECC
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203CF36
	ldr r0, _0203CF58 ; =0x00000005
	bl sub_02006514
	b _0203CF36
_0203CF2A:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0203CF36
	add r0, r0, #4
	bl sub_0203CECC
_0203CF36:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0203CF54
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0203CF54
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _0203CF54
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0203CF54
	mov r0, #1
	pop {r4, pc}
_0203CF54:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0203CF58: .word 0x00000005
	thumb_func_end sub_0203CEEC

	thumb_func_start sub_0203CF5C
sub_0203CF5C: ; 0x0203CF5C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r5, #0
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _0203CF7C
	ldr r1, [r4, #0x68]
	cmp r1, #0
	beq _0203CF7C
	bl sub_020509A4
	cmp r0, #0
	bne _0203CF7C
	mov r5, #1
_0203CF7C:
	cmp r5, #0
	beq _0203CF9C
	ldr r0, [r4, #0x3c]
	bl sub_0205F490
	ldr r3, _0203D120 ; =0x021BF67C
	add r0, sp, #8
	ldr r2, [r3, #0x48]
	ldr r3, [r3, #0x44]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov5_021D1CAC
_0203CF9C:
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x70]
	ldr r1, [r0, #0]
	ldr r0, _0203D124 ; =0x00000146
	cmp r1, r0
	bne _0203CFAA
	mov r2, #0
_0203CFAA:
	cmp r2, #4
	bhi _0203D0AA
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203CFBA: ; jump table
	.short _0203D0AA - _0203CFBA - 2 ; case 0
	.short _0203CFC4 - _0203CFBA - 2 ; case 1
	.short _0203D00E - _0203CFBA - 2 ; case 2
	.short _0203CFE4 - _0203CFBA - 2 ; case 3
	.short _0203D03A - _0203CFBA - 2 ; case 4
_0203CFC4:
	cmp r5, #0
	beq _0203CFD8
	bl sub_02058C40
	cmp r0, #0
	beq _0203CFD8
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D213C
_0203CFD8:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205805C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203CFE4:
	cmp r5, #0
	beq _0203D002
	bl sub_02058C40
	cmp r0, #0
	beq _0203D000
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D219C
	cmp r0, #1
	bne _0203D002
	mov r5, #0
	b _0203D002
_0203D000:
	mov r5, #0
_0203D002:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205805C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D00E:
	cmp r5, #0
	bne _0203D014
	b _0203D11C
_0203D014:
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D2298
	cmp r0, #1
	beq _0203D11C
	add r3, sp, #8
	ldrh r0, [r3, #6]
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldrh r3, [r3, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x28]
	sub r2, r2, #1
	bl sub_0205F180
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D03A:
	cmp r5, #0
	beq _0203D11C
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D2368
	cmp r0, #1
	bne _0203D06E
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DDA78
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E1BCC
	ldr r0, [r4, #0x3c]
	bl ov5_021E0EEC
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov5_021EA714
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D06E:
	ldr r0, _0203D120 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0203D080
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DDA78
_0203D080:
	mov r5, #0
	bl sub_0203D158
	cmp r0, #0
	beq _0203D090
	bl ov25_02253DD4
	add r5, r0, #0
_0203D090:
	add r3, sp, #8
	ldrh r0, [r3, #6]
	mov r2, #0
	mvn r2, r2
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x28]
	bl sub_0205F180
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D0AA:
	cmp r5, #0
	beq _0203D11C
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D1DA4
	cmp r0, #1
	bne _0203D0E4
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DDA78
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E1BCC
	ldr r0, [r4, #0x3c]
	bl sub_0205F56C
	ldr r0, [r4, #0x3c]
	bl ov5_021E0EEC
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov5_021EA714
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D0E4:
	ldr r0, _0203D120 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0203D0F6
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DDA78
_0203D0F6:
	mov r5, #0
	bl sub_0203D158
	cmp r0, #0
	beq _0203D106
	bl ov25_02253DD4
	add r5, r0, #0
_0203D106:
	add r3, sp, #8
	ldrh r0, [r3, #6]
	mov r2, #0
	mvn r2, r2
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x28]
	bl sub_0205F180
_0203D11C:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203D120: .word 0x021BF67C
_0203D124: .word 0x00000146
	thumb_func_end sub_0203CF5C

	thumb_func_start sub_0203D128
sub_0203D128: ; 0x0203D128
	ldr r0, _0203D138 ; =0x021C07DC
	ldr r3, _0203D13C ; =sub_02035EC8
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	str r1, [r0, #8]
	bx r3
	nop
_0203D138: .word 0x021C07DC
_0203D13C: .word sub_02035EC8
	thumb_func_end sub_0203D128

	thumb_func_start sub_0203D140
sub_0203D140: ; 0x0203D140
	ldr r0, _0203D150 ; =0x021C07DC
	ldr r3, _0203D154 ; =sub_02035EA8
	ldr r0, [r0, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #8]
	bx r3
	nop
_0203D150: .word 0x021C07DC
_0203D154: .word sub_02035EA8
	thumb_func_end sub_0203D140

	thumb_func_start sub_0203D158
sub_0203D158: ; 0x0203D158
	ldr r0, _0203D16C ; =0x021C07DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0203D166
	mov r0, #0
	bx lr
_0203D166:
	ldr r0, [r0, #0x14]
	bx lr
	nop
_0203D16C: .word 0x021C07DC
	thumb_func_end sub_0203D158

	thumb_func_start sub_0203D170
sub_0203D170: ; 0x0203D170
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0203D170

	thumb_func_start sub_0203D174
sub_0203D174: ; 0x0203D174
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0203D174

	thumb_func_start sub_0203D178
sub_0203D178: ; 0x0203D178
	ldr r2, _0203D18C ; =0x020EA12C
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	nop
_0203D18C: .word 0x020EA12C
	thumb_func_end sub_0203D178

	thumb_func_start sub_0203D190
sub_0203D190: ; 0x0203D190
	ldr r2, _0203D1A4 ; =0x020EA140
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	nop
_0203D1A4: .word 0x020EA140
	thumb_func_end sub_0203D190

	thumb_func_start sub_0203D1A8
sub_0203D1A8: ; 0x0203D1A8
	push {r3, lr}
	bl sub_0203A790
	bl sub_0203A720
	bl sub_0203D178
	pop {r3, pc}
	thumb_func_end sub_0203D1A8

	thumb_func_start sub_0203D1B8
sub_0203D1B8: ; 0x0203D1B8
	mov r0, #1
	bx lr
	thumb_func_end sub_0203D1B8

	thumb_func_start sub_0203D1BC
sub_0203D1BC: ; 0x0203D1BC
	push {r3, lr}
	bl ov16_0223B140
	cmp r0, #0
	beq _0203D1CA
	mov r0, #1
	pop {r3, pc}
_0203D1CA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203D1BC

	thumb_func_start sub_0203D1D0
sub_0203D1D0: ; 0x0203D1D0
	mov r0, #1
	bx lr
	thumb_func_end sub_0203D1D0

	thumb_func_start sub_0203D1D4
sub_0203D1D4: ; 0x0203D1D4
	ldr r3, _0203D1DC ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D1E0 ; =0x020EA358
	bx r3
	; .align 2, 0
_0203D1DC: .word sub_0203CD84
_0203D1E0: .word 0x020EA358
	thumb_func_end sub_0203D1D4

	thumb_func_start sub_0203D1E4
sub_0203D1E4: ; 0x0203D1E4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203D208 ; =0x020EA338
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203D208: .word 0x020EA338
	thumb_func_end sub_0203D1E4

	thumb_func_start sub_0203D20C
sub_0203D20C: ; 0x0203D20C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	bl sub_0207D990
	ldr r1, _0203D260 ; =0x020EA164
	mov r2, #0xb
	bl sub_0207D824
	add r3, r5, #0
	add r3, #0x98
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0]
	mov r2, #0
	add r4, r0, #0
	bl sub_0207CB2C
	ldr r1, [r5, #0x70]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207CB78
	ldr r0, [r5, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _0203D24C
	add r0, r4, #0
	bl sub_0207CB58
_0203D24C:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0207CB6C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D1E4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D260: .word 0x020EA164
	thumb_func_end sub_0203D20C

	thumb_func_start sub_0203D264
sub_0203D264: ; 0x0203D264
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0207D990
	add r6, r0, #0
	cmp r4, #0
	beq _0203D27C
	cmp r4, #1
	beq _0203D284
	b _0203D28C
_0203D27C:
	ldr r1, _0203D2B8 ; =0x020EA154
	ldr r0, _0203D2BC ; =0x02100A80
	str r1, [r0, #0]
	b _0203D290
_0203D284:
	ldr r1, _0203D2C0 ; =0x020EA158
	ldr r0, _0203D2BC ; =0x02100A80
	str r1, [r0, #0]
	b _0203D290
_0203D28C:
	bl sub_02022974
_0203D290:
	ldr r1, _0203D2BC ; =0x02100A80
	add r0, r6, #0
	ldr r1, [r1, #0]
	mov r2, #0x20
	bl sub_0207D824
	add r3, r5, #0
	add r3, #0x98
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0]
	add r4, r0, #0
	mov r2, #3
	bl sub_0207CB2C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D1E4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D2B8: .word 0x020EA154
_0203D2BC: .word 0x02100A80
_0203D2C0: .word 0x020EA158
	thumb_func_end sub_0203D264

	thumb_func_start sub_0203D2C4
sub_0203D2C4: ; 0x0203D2C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0207CB94
	add r4, r0, #0
	beq _0203D2DE
	add r0, r5, #0
	bl sub_0207CB9C
	cmp r0, #5
	bne _0203D2DE
	bl sub_02022974
_0203D2DE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203D2C4

	thumb_func_start sub_0203D2E4
sub_0203D2E4: ; 0x0203D2E4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203D308 ; =0x020EA2F8
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203D308: .word 0x020EA2F8
	thumb_func_end sub_0203D2E4

	thumb_func_start sub_0203D30C
sub_0203D30C: ; 0x0203D30C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r4, _0203D330 ; =0x020EA2E8
	add r3, sp, #0
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0203D330: .word 0x020EA2E8
	thumb_func_end sub_0203D30C

	thumb_func_start sub_0203D334
sub_0203D334: ; 0x0203D334
	ldr r3, _0203D33C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D340 ; =0x020F410C
	bx r3
	; .align 2, 0
_0203D33C: .word sub_0203CD84
_0203D340: .word 0x020F410C
	thumb_func_end sub_0203D334

	thumb_func_start sub_0203D344
sub_0203D344: ; 0x0203D344
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x40
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020C4BB8
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r0, #0x21
	strb r6, [r0]
	add r0, r4, #0
	add r0, #0x20
	strb r7, [r0]
	str r5, [r4, #0x1c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203D344

	thumb_func_start sub_0203D390
sub_0203D390: ; 0x0203D390
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	mov r2, #0
	add r6, r1, #0
	mov r0, #0xb
	add r1, r5, #0
	add r3, r2, #0
	bl sub_0203D344
	add r4, r0, #0
	str r6, [r4, #0x18]
	add r0, #0x22
	strb r7, [r0]
	ldr r1, _0203D3BC ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203D3BC: .word 0x020F1E88
	thumb_func_end sub_0203D390

	thumb_func_start sub_0203D3C0
sub_0203D3C0: ; 0x0203D3C0
	push {r3, r4, r5, lr}
	mov r0, #0xb
	mov r2, #0
	mov r3, #3
	add r5, r1, #0
	bl sub_0203D344
	add r4, r0, #0
	ldr r1, _0203D3E0 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0203D3E0: .word 0x020F1E88
	thumb_func_end sub_0203D3C0

	thumb_func_start sub_0203D3E4
sub_0203D3E4: ; 0x0203D3E4
	push {r3, r4, r5, lr}
	mov r0, #0xb
	mov r2, #0
	mov r3, #0x13
	add r5, r1, #0
	bl sub_0203D344
	add r4, r0, #0
	ldr r1, _0203D404 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0203D404: .word 0x020F1E88
	thumb_func_end sub_0203D3E4

	thumb_func_start sub_0203D408
sub_0203D408: ; 0x0203D408
	add r0, #0x22
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203D408

	thumb_func_start sub_0203D410
sub_0203D410: ; 0x0203D410
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r0, #0xb
	mov r2, #0
	mov r3, #0x12
	add r5, r1, #0
	bl sub_0203D344
	add r6, r0, #0
	add r0, #0x22
	strb r4, [r0]
	ldr r1, _0203D434 ; =0x020F1E88
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0203CD84
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D434: .word 0x020F1E88
	thumb_func_end sub_0203D410

	thumb_func_start sub_0203D438
sub_0203D438: ; 0x0203D438
	add r0, #0x23
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203D438

	thumb_func_start sub_0203D440
sub_0203D440: ; 0x0203D440
	ldrb r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_0203D440

	thumb_func_start sub_0203D444
sub_0203D444: ; 0x0203D444
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _0203D502
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203D470: ; jump table
	.short _0203D47A - _0203D470 - 2 ; case 0
	.short _0203D48A - _0203D470 - 2 ; case 1
	.short _0203D4C0 - _0203D470 - 2 ; case 2
	.short _0203D4E2 - _0203D470 - 2 ; case 3
	.short _0203D4F8 - _0203D470 - 2 ; case 4
_0203D47A:
	ldr r1, _0203D508 ; =0x020F1E88
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl sub_0203CD84
	mov r0, #1
	str r0, [r5, #0]
	b _0203D502
_0203D48A:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203D502
	ldr r0, [r4, #4]
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0203D4AE
	cmp r0, #7
	bne _0203D4BA
	mov r0, #2
	bl sub_0205BAAC
	mov r0, #4
	str r0, [r5, #0]
	b _0203D502
_0203D4AE:
	mov r0, #1
	bl sub_0205BAAC
	mov r0, #4
	str r0, [r5, #0]
	b _0203D502
_0203D4BA:
	mov r0, #2
	str r0, [r5, #0]
	b _0203D502
_0203D4C0:
	ldr r1, [r4, #0]
	add r0, r6, #0
	mov r2, #0
	bl sub_0203D670
	str r0, [r4, #8]
	ldr r1, [r4, #4]
	add r1, #0x22
	ldrb r1, [r1]
	strb r1, [r0, #0x14]
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl sub_0203D334
	mov r0, #3
	str r0, [r5, #0]
	b _0203D502
_0203D4E2:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203D502
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #0]
	b _0203D502
_0203D4F8:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203D502:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0203D508: .word 0x020F1E88
	thumb_func_end sub_0203D444

	thumb_func_start sub_0203D50C
sub_0203D50C: ; 0x0203D50C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	mov r3, #2
	str r5, [r4, #0]
	bl sub_0203D344
	add r5, r0, #0
	add r0, #0x32
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, r4, #0
	bic r1, r0
	mov r0, #2
	orr r1, r0
	add r0, r5, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x32
	ldrb r1, [r0]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	add r0, r5, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x1e
	add r0, #0x33
	strb r1, [r0]
	mov r0, #0
	str r0, [r5, #0x14]
	ldr r1, _0203D574 ; =sub_0203D444
	add r0, r7, #0
	str r5, [r4, #4]
	bl sub_02050944
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203D574: .word sub_0203D444
	thumb_func_end sub_0203D50C

	thumb_func_start sub_0203D578
sub_0203D578: ; 0x0203D578
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r3, #0
	mov r0, #0xb
	mov r2, #0
	mov r3, #0xd
	add r7, r1, #0
	bl sub_0203D344
	add r4, r0, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x22
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r5, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0203D5AE
	add r0, r4, #0
	add r0, #0x2b
	strb r6, [r0]
	b _0203D5B6
_0203D5AE:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2b
	strb r1, [r0]
_0203D5B6:
	ldr r1, _0203D5C4 ; =0x020F1E88
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203D5C4: .word 0x020F1E88
	thumb_func_end sub_0203D578

	thumb_func_start sub_0203D5C8
sub_0203D5C8: ; 0x0203D5C8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x30
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0x11]
	strb r6, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r1, _0203D63C ; =0x020EA02C
	add r0, r4, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0203D640 ; =0x020F410C
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D63C: .word 0x020EA02C
_0203D640: .word 0x020F410C
	thumb_func_end sub_0203D5C8

	thumb_func_start sub_0203D644
sub_0203D644: ; 0x0203D644
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x15
	bl sub_0203D344
	add r6, r0, #0
	add r0, #0x22
	strb r4, [r0]
	ldr r1, _0203D66C ; =0x020F1E88
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0203CD84
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0203D66C: .word 0x020F1E88
	thumb_func_end sub_0203D644

	thumb_func_start sub_0203D670
sub_0203D670: ; 0x0203D670
	push {r4, r5, r6, lr}
	ldr r5, [r0, #0xc]
	add r0, r1, #0
	mov r1, #0x30
	add r6, r2, #0
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0207A268
	str r0, [r4, #0]
	mov r0, #1
	strb r0, [r4, #0x11]
	mov r0, #0
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r6, [r4, #0x12]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0203D6E0 ; =0x020EA170
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D6E0: .word 0x020EA170
	thumb_func_end sub_0203D670

	thumb_func_start sub_0203D6E4
sub_0203D6E4: ; 0x0203D6E4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x30
	add r6, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0x11]
	strb r6, [r4, #0x14]
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	mov r0, #2
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r4, #0x2c]
	ldr r1, _0203D74C ; =0x020EA160
	add r0, r4, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D334
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D74C: .word 0x020EA160
	thumb_func_end sub_0203D6E4

	thumb_func_start sub_0203D750
sub_0203D750: ; 0x0203D750
	ldrb r0, [r0, #0x16]
	bx lr
	thumb_func_end sub_0203D750

	thumb_func_start sub_0203D754
sub_0203D754: ; 0x0203D754
	ldr r3, _0203D75C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D760 ; =0x020EA2C8
	bx r3
	; .align 2, 0
_0203D75C: .word sub_0203CD84
_0203D760: .word 0x020EA2C8
	thumb_func_end sub_0203D754

	thumb_func_start sub_0203D764
sub_0203D764: ; 0x0203D764
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A60
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0203D78E
	cmp r1, #1
	beq _0203D79C
	cmp r1, #2
	beq _0203D7AC
	b _0203D806
_0203D78E:
	ldr r1, [r5, #0xc]
	bl sub_0203D874
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203D806
_0203D79C:
	bl sub_020509B4
	cmp r0, #0
	bne _0203D806
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203D806
_0203D7AC:
	ldr r0, [r5, #0xc]
	bl sub_02097528
	cmp r0, #0
	bne _0203D7C0
	ldr r0, [r5, #0xc]
	bl sub_0209752C
	cmp r0, #0
	bne _0203D7C8
_0203D7C0:
	ldr r0, [r5, #0]
	mov r1, #0
	strh r1, [r0]
	b _0203D7F4
_0203D7C8:
	ldr r0, [r5, #0]
	mov r1, #1
	strh r1, [r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	ldr r0, [r5, #0xc]
	bne _0203D7E0
	bl sub_02097530
	ldr r1, [r5, #4]
	strh r0, [r1]
	b _0203D7F4
_0203D7E0:
	add r1, sp, #0
	bl sub_02097534
	add r0, sp, #0
	ldrh r2, [r0]
	ldr r1, [r5, #4]
	strh r2, [r1]
	ldrh r1, [r0, #2]
	ldr r0, [r5, #8]
	strh r1, [r0]
_0203D7F4:
	ldr r0, [r5, #0xc]
	bl sub_020974EC
	add r0, r5, #0
	bl sub_020181C4
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0203D806:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0203D764

	thumb_func_start sub_0203D80C
sub_0203D80C: ; 0x0203D80C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0x20
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #4]
	cmp r6, #0
	str r0, [r4, #0]
	str r5, [r4, #4]
	str r6, [r4, #8]
	bne _0203D84A
	mov r0, #0
	ldr r2, [r7, #0xc]
	add r1, r0, #0
	mov r3, #0x20
	bl sub_0209747C
	str r0, [r4, #0xc]
	ldrh r1, [r5]
	bl sub_020974F4
	b _0203D860
_0203D84A:
	ldr r2, [r7, #0xc]
	mov r0, #1
	mov r1, #0
	mov r3, #0x20
	bl sub_0209747C
	str r0, [r4, #0xc]
	ldrh r1, [r5]
	ldrh r2, [r6]
	bl sub_020974F8
_0203D860:
	ldr r0, [sp]
	ldr r1, _0203D870 ; =sub_0203D764
	add r2, r4, #0
	bl sub_02050944
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203D870: .word sub_0203D764
	thumb_func_end sub_0203D80C

	thumb_func_start sub_0203D874
sub_0203D874: ; 0x0203D874
	ldr r3, _0203D87C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D880 ; =0x020EA308
	bx r3
	; .align 2, 0
_0203D87C: .word sub_0203CD84
_0203D880: .word 0x020EA308
	thumb_func_end sub_0203D874

	thumb_func_start sub_0203D884
sub_0203D884: ; 0x0203D884
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203D8A8 ; =0x020EA318
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203D8A8: .word 0x020EA318
	thumb_func_end sub_0203D884

	thumb_func_start sub_0203D8AC
sub_0203D8AC: ; 0x0203D8AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A76C
	mov r1, #5
	mov r0, #0xb
	lsl r1, r1, #6
	bl sub_02018184
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0206B70C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D884
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203D8AC

	thumb_func_start sub_0203D8DC
sub_0203D8DC: ; 0x0203D8DC
	ldr r3, _0203D8E4 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D8E8 ; =0x020EA288
	bx r3
	; .align 2, 0
_0203D8E4: .word sub_0203CD84
_0203D8E8: .word 0x020EA288
	thumb_func_end sub_0203D8DC

	thumb_func_start sub_0203D8EC
sub_0203D8EC: ; 0x0203D8EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #2
	bl sub_02018184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E44
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203D8DC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203D8EC

	thumb_func_start sub_0203D910
sub_0203D910: ; 0x0203D910
	ldr r3, _0203D918 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D91C ; =0x020F64B0
	bx r3
	; .align 2, 0
_0203D918: .word sub_0203CD84
_0203D91C: .word 0x020F64B0
	thumb_func_end sub_0203D910

	thumb_func_start sub_0203D920
sub_0203D920: ; 0x0203D920
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203D174
	mov r1, #0xb
	str r1, [sp]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02097624
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D910
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203D920

	thumb_func_start sub_0203D94C
sub_0203D94C: ; 0x0203D94C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #3
	bne _0203D968
	bl sub_0203D174
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020976F4
	b _0203D976
_0203D968:
	bl sub_0203D174
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0209767C
_0203D976:
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0203D910
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203D94C

	thumb_func_start sub_0203D984
sub_0203D984: ; 0x0203D984
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	bl sub_0203D174
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020976BC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D910
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203D984

	thumb_func_start sub_0203D9A8
sub_0203D9A8: ; 0x0203D9A8
	ldr r3, _0203D9B0 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D9B4 ; =0x020F6890
	bx r3
	; .align 2, 0
_0203D9B0: .word sub_0203CD84
_0203D9B4: .word 0x020F6890
	thumb_func_end sub_0203D9A8

	thumb_func_start sub_0203D9B8
sub_0203D9B8: ; 0x0203D9B8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0203D174
	add r1, r5, #0
	bl sub_020989DC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203D9A8
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203D9B8

	thumb_func_start sub_0203D9D8
sub_0203D9D8: ; 0x0203D9D8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203D9FC ; =0x020EA278
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203D9FC: .word 0x020EA278
	thumb_func_end sub_0203D9D8

	thumb_func_start sub_0203DA00
sub_0203DA00: ; 0x0203DA00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x20
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	bl sub_020D5124
	add r0, r6, #0
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [r5, #0]
	add r0, r6, #0
	bl sub_0202A750
	str r0, [sp]
	mov r1, #0
	bl sub_02029CA8
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_02029D04
	str r4, [r5, #4]
	str r0, [r5, #8]
	add r0, r6, #0
	bl sub_02025E44
	str r0, [r5, #0xc]
	add r0, r6, #0
	bl sub_0202CD88
	str r0, [r5, #0x10]
	add r0, r6, #0
	bl sub_02025E38
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x18]
	str r0, [r5, #0x1c]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203DA00

	thumb_func_start sub_0203DA64
sub_0203DA64: ; 0x0203DA64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0203DA82
	cmp r0, #1
	beq _0203DA92
	b _0203DABC
_0203DA82:
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl sub_0203DB10
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0203DABC
_0203DA92:
	add r0, r4, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203DABC
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0203DAA6
	mov r1, #1
	b _0203DAA8
_0203DAA6:
	mov r1, #0
_0203DAA8:
	ldr r0, [r5, #4]
	strh r1, [r0]
	ldr r0, [r5, #0xc]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203DABC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DA64

	thumb_func_start sub_0203DAC0
sub_0203DAC0: ; 0x0203DAC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x20
	mov r1, #0x10
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_0203DADC:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0203DADC
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	add r3, r4, #0
	add r1, r7, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	mov r0, #0x20
	add r3, #8
	bl sub_0203DA00
	str r0, [r4, #0xc]
	ldr r1, _0203DB0C ; =sub_0203DA64
	add r0, r6, #0
	add r2, r4, #0
	str r5, [r4, #4]
	bl sub_02050944
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203DB0C: .word sub_0203DA64
	thumb_func_end sub_0203DAC0

	thumb_func_start sub_0203DB10
sub_0203DB10: ; 0x0203DB10
	push {r3, lr}
	add r2, r1, #0
	ldr r1, _0203DB20 ; =0x02100AC4
	bl sub_0203CD84
	mov r0, #1
	pop {r3, pc}
	nop
_0203DB20: .word 0x02100AC4
	thumb_func_end sub_0203DB10

	thumb_func_start sub_0203DB24
sub_0203DB24: ; 0x0203DB24
	push {r3, lr}
	add r2, r1, #0
	ldr r1, _0203DB34 ; =0x02100AB4
	bl sub_0203CD84
	mov r0, #1
	pop {r3, pc}
	nop
_0203DB34: .word 0x02100AB4
	thumb_func_end sub_0203DB24

	thumb_func_start sub_0203DB38
sub_0203DB38: ; 0x0203DB38
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	mov r1, #9
	bl sub_020245BC
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	bl sub_0202C878
	str r0, [r5, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02025E44
	str r0, [r5, #0x18]
	ldr r0, [r4, #0xc]
	bl sub_02027560
	str r0, [r5, #0x24]
	ldr r0, [r4, #0xc]
	bl sub_0207A274
	str r0, [r5, #0x30]
	ldr r0, [r4, #0xc]
	str r0, [r5, #0x10]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	str r0, [r5, #0x20]
	bl sub_02025E68
	add r1, r0, #0
	mov r0, #0x20
	bl sub_02018144
	str r0, [r5, #0x38]
	bl sub_02076AF0
	add r1, r0, #0
	mov r0, #0x20
	bl sub_02018144
	str r0, [r5, #0x3c]
	bl sub_02076AF0
	add r1, r0, #0
	mov r0, #0x20
	bl sub_02018144
	str r0, [r5, #0x40]
	str r4, [r5, #0]
	mov r0, #0
	str r0, [r5, #0x34]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203DB38

	thumb_func_start sub_0203DBC0
sub_0203DBC0: ; 0x0203DBC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0203DBD2
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x38]
_0203DBD2:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0203DBE0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x3c]
_0203DBE0:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0203DBEE
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x40]
_0203DBEE:
	pop {r4, pc}
	thumb_func_end sub_0203DBC0

	thumb_func_start sub_0203DBF0
sub_0203DBF0: ; 0x0203DBF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #7
	bls _0203DC0C
	b _0203DDCE
_0203DC0C:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203DC18: ; jump table
	.short _0203DC28 - _0203DC18 - 2 ; case 0
	.short _0203DC3E - _0203DC18 - 2 ; case 1
	.short _0203DC4C - _0203DC18 - 2 ; case 2
	.short _0203DC5E - _0203DC18 - 2 ; case 3
	.short _0203DC7C - _0203DC18 - 2 ; case 4
	.short _0203DCEA - _0203DC18 - 2 ; case 5
	.short _0203DD7A - _0203DC18 - 2 ; case 6
	.short _0203DDA6 - _0203DC18 - 2 ; case 7
_0203DC28:
	bl sub_020389B8
	cmp r0, #0
	bne _0203DC36
	add r0, r6, #0
	bl sub_02055820
_0203DC36:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DDCE
_0203DC3E:
	add r0, r4, #4
	add r1, r5, #0
	bl sub_0203DB38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0203DC4C:
	ldr r1, _0203DDD4 ; =0x02100AA4
	add r0, r6, #0
	add r2, r4, #4
	bl sub_02050A38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DDCE
_0203DC5E:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	bne _0203DC76
	add r0, r4, #4
	bl sub_0203DBC0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0203DC76:
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DDCE
_0203DC7C:
	ldr r0, [r4, #0x3c]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x40]
	bl sub_02076B10
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x44]
	bl sub_02076B10
	str r0, [r4, #0x4c]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x5c]
	mov r0, #1
	str r0, [r4, #0x58]
	add r0, r5, #0
	bl sub_02055BA8
	cmp r0, #4
	bhi _0203DCBC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203DCB2: ; jump table
	.short _0203DCBC - _0203DCB2 - 2 ; case 0
	.short _0203DCBC - _0203DCB2 - 2 ; case 1
	.short _0203DCC2 - _0203DCB2 - 2 ; case 2
	.short _0203DCC8 - _0203DCB2 - 2 ; case 3
	.short _0203DCC8 - _0203DCB2 - 2 ; case 4
_0203DCBC:
	mov r0, #0
	str r0, [r4, #0x54]
	b _0203DCCC
_0203DCC2:
	mov r0, #1
	str r0, [r4, #0x54]
	b _0203DCCC
_0203DCC8:
	mov r0, #2
	str r0, [r4, #0x54]
_0203DCCC:
	bl sub_020389B8
	cmp r0, #0
	beq _0203DCD8
	mov r0, #3
	str r0, [r4, #0x54]
_0203DCD8:
	add r2, r4, #0
	ldr r1, _0203DDD8 ; =0x020EA268
	add r0, r6, #0
	add r2, #0x48
	bl sub_02050A38
	mov r0, #5
	str r0, [r4, #0]
	b _0203DDCE
_0203DCEA:
	ldr r0, [r4, #0x44]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r3, r0, #0
	add r0, sp, #0x30
	str r0, [sp]
	lsl r3, r3, #0x10
	ldr r1, [r4, #0x44]
	mov r0, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02076B94
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _0203DD74
	mov r0, #3
	mov r1, #0x1a
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [sp, #0x24]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x28]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	str r6, [sp]
	ldr r1, [sp, #0x28]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x1a
	str r0, [sp, #0x1c]
	ldr r1, [r4, #0x44]
	mov r0, #0
	bl sub_0207AE68
	str r0, [r4, #0x60]
	mov r0, #6
	str r0, [r4, #0]
	b _0203DDCE
_0203DD74:
	mov r0, #7
	str r0, [r4, #0]
	b _0203DDCE
_0203DD7A:
	ldr r0, [r4, #0x60]
	bl sub_0207B0D0
	cmp r0, #0
	beq _0203DDCE
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [r4, #0x44]
	bl sub_020775EC
	ldr r0, [r4, #0x60]
	bl sub_0207B0E0
	mov r0, #0x1a
	bl sub_0201807C
	mov r0, #7
	str r0, [r4, #0]
	b _0203DDCE
_0203DDA6:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	mov r0, #2
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x10
	add r4, r0, #0
	bl sub_0202CFEC
	bl sub_020389B8
	cmp r0, #0
	beq _0203DDCE
	add r0, r4, #0
	mov r1, #0x71
	bl sub_0202CF28
_0203DDCE:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203DDD4: .word 0x02100AA4
_0203DDD8: .word 0x020EA268
	thumb_func_end sub_0203DBF0

	thumb_func_start sub_0203DDDC
sub_0203DDDC: ; 0x0203DDDC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x20
	mov r1, #0x68
	bl sub_02018144
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldr r1, _0203DDF8 ; =sub_0203DBF0
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_0203DDF8: .word sub_0203DBF0
	thumb_func_end sub_0203DDDC

	thumb_func_start sub_0203DDFC
sub_0203DDFC: ; 0x0203DDFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #8]
	ldr r1, _0203DE30 ; =0x020EA258
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	pop {r3, r4, r5, pc}
	nop
_0203DE30: .word 0x020EA258
	thumb_func_end sub_0203DDFC

	thumb_func_start sub_0203DE34
sub_0203DE34: ; 0x0203DE34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, _0203DE74 ; =0x020EA248
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203DE74: .word 0x020EA248
	thumb_func_end sub_0203DE34

	thumb_func_start sub_0203DE78
sub_0203DE78: ; 0x0203DE78
	ldr r3, _0203DE80 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203DE84 ; =0x020EA238
	bx r3
	; .align 2, 0
_0203DE80: .word sub_0203CD84
_0203DE84: .word 0x020EA238
	thumb_func_end sub_0203DE78

	thumb_func_start sub_0203DE88
sub_0203DE88: ; 0x0203DE88
	ldr r3, _0203DE90 ; =sub_0203CD84
	ldr r1, _0203DE94 ; =0x020F2FCC
	add r2, r0, #0
	bx r3
	; .align 2, 0
_0203DE90: .word sub_0203CD84
_0203DE94: .word 0x020F2FCC
	thumb_func_end sub_0203DE88

	thumb_func_start sub_0203DE98
sub_0203DE98: ; 0x0203DE98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _0203DF60
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203DEBC: ; jump table
	.short _0203DEC4 - _0203DEBC - 2 ; case 0
	.short _0203DED2 - _0203DEBC - 2 ; case 1
	.short _0203DEE4 - _0203DEBC - 2 ; case 2
	.short _0203DEF2 - _0203DEBC - 2 ; case 3
_0203DEC4:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DF60
_0203DED2:
	ldr r1, _0203DF64 ; =0x020F2DAC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DF60
_0203DEE4:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DF60
_0203DEF2:
	ldr r1, [r4, #0xc]
	ldr r0, [r1, #0]
	cmp r0, #1
	bne _0203DF0E
	ldr r0, [r1, #0x18]
	ldr r1, [r4, #0x10]
	bl sub_02023BE0
	cmp r0, #0
	bne _0203DF30
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0x14]
	b _0203DF30
_0203DF0E:
	cmp r0, #5
	bne _0203DF30
	ldr r0, [r1, #0x18]
	bl sub_02023E2C
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0202B4A0
	add r1, r7, #0
	bl sub_0202B4D8
	cmp r0, #0
	beq _0203DF30
	ldr r0, [r4, #0xc]
	mov r1, #2
	str r1, [r0, #0x14]
_0203DF30:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0203DF3E
	add r0, r5, #0
	bl sub_0203DF68
_0203DF3E:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0203DF4A
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x14]
	strh r0, [r1]
_0203DF4A:
	ldr r0, [r4, #0xc]
	bl sub_0208716C
	ldr r0, [r4, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203DF60:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203DF64: .word 0x020F2DAC
	thumb_func_end sub_0203DE98

	thumb_func_start sub_0203DF68
sub_0203DF68: ; 0x0203DF68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #6
	bhi _0203DFE6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203DF8E: ; jump table
	.short _0203DF9C - _0203DF8E - 2 ; case 0
	.short _0203DFAC - _0203DF8E - 2 ; case 1
	.short _0203DFE6 - _0203DF8E - 2 ; case 2
	.short _0203DFE6 - _0203DF8E - 2 ; case 3
	.short _0203DFE6 - _0203DF8E - 2 ; case 4
	.short _0203DFC4 - _0203DF8E - 2 ; case 5
	.short _0203DFD8 - _0203DF8E - 2 ; case 6
_0203DF9C:
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	ldr r1, [r4, #0xc]
	add r1, #0x1c
	bl sub_02025EC0
	pop {r3, r4, r5, pc}
_0203DFAC:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldr r1, [r4, #4]
	bl sub_0207A0FC
	ldr r2, [r4, #0xc]
	mov r1, #0x76
	add r2, #0x1c
	bl sub_02074B30
	pop {r3, r4, r5, pc}
_0203DFC4:
	ldr r0, [r5, #0xc]
	bl sub_0202B4A0
	ldr r3, [r4, #0xc]
	mov r1, #0
	ldr r3, [r3, #0x18]
	add r2, r1, #0
	bl sub_0202B444
	pop {r3, r4, r5, pc}
_0203DFD8:
	ldr r0, [r5, #0xc]
	bl sub_0202783C
	ldr r1, [r4, #0xc]
	ldr r1, [r1, #0x18]
	bl sub_020278A0
_0203DFE6:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DF68

	thumb_func_start sub_0203DFE8
sub_0203DFE8: ; 0x0203DFE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r6, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x2c]
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x14
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [sp, #0x28]
	str r0, [r4, #4]
	ldr r0, [sp, #0x30]
	str r0, [r4, #8]
	ldr r0, [r7, #0xc]
	bl sub_02025E44
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, #0xb
	add r1, r6, #0
	bl sub_0208712C
	str r0, [r4, #0xc]
	mov r0, #0xc
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x10]
	cmp r6, #1
	beq _0203E03C
	cmp r6, #5
	beq _0203E072
	b _0203E07C
_0203E03C:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	ldr r1, [r4, #4]
	bl sub_0207A0FC
	mov r1, #0x6f
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	ldr r1, [r4, #0xc]
	mov r2, #0
	str r0, [r1, #0x10]
	add r0, r6, #0
	mov r1, #0x70
	bl sub_02074470
	ldr r1, [r4, #0xc]
	cmp r5, #0
	str r0, [r1, #8]
	beq _0203E08A
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_02023D28
	b _0203E08A
_0203E072:
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_02023D28
	b _0203E08A
_0203E07C:
	cmp r5, #0
	beq _0203E08A
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	ldr r0, [r0, #0x18]
	bl sub_02023D28
_0203E08A:
	ldr r0, [sp, #4]
	ldr r1, _0203E098 ; =sub_0203DE98
	add r2, r4, #0
	bl sub_02050944
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E098: .word sub_0203DE98
	thumb_func_end sub_0203DFE8

	thumb_func_start sub_0203E09C
sub_0203E09C: ; 0x0203E09C
	ldr r3, _0203E0A4 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203E0A8 ; =0x020EA228
	bx r3
	; .align 2, 0
_0203E0A4: .word sub_0203CD84
_0203E0A8: .word 0x020EA228
	thumb_func_end sub_0203E09C

	thumb_func_start sub_0203E0AC
sub_0203E0AC: ; 0x0203E0AC
	push {r3, lr}
	add r2, r1, #0
	ldr r1, _0203E0BC ; =0x020EA218
	bl sub_0203CD84
	mov r0, #1
	pop {r3, pc}
	nop
_0203E0BC: .word 0x020EA218
	thumb_func_end sub_0203E0AC

	thumb_func_start sub_0203E0C0
sub_0203E0C0: ; 0x0203E0C0
	ldr r3, _0203E0C8 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203E0CC ; =0x020EA1F8
	bx r3
	; .align 2, 0
_0203E0C8: .word sub_0203CD84
_0203E0CC: .word 0x020EA1F8
	thumb_func_end sub_0203E0C0

	thumb_func_start sub_0203E0D0
sub_0203E0D0: ; 0x0203E0D0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202C834
	ldr r5, _0203E0F8 ; =0x020EA298
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	ldr r2, [r4, #0xc]
	add r0, r4, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203E0F8: .word 0x020EA298
	thumb_func_end sub_0203E0D0

	thumb_func_start sub_0203E0FC
sub_0203E0FC: ; 0x0203E0FC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _0203E1A8 ; =0x020EA2A8
	add r2, sp, #0
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xb
	mov r1, #0x44
	bl sub_02018184
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202DA40
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025CCC
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_020245BC
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02024420
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_02027560
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0202B370
	str r0, [r4, #0x14]
	ldr r0, [r5, #0xc]
	bl sub_0202C878
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x24]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [r4, #0x28]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r4, #0x3c]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x20]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x14]
	bl sub_02039058
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #0x30]
	add r0, r5, #0
	add r1, sp, #0
	add r2, r4, #0
	str r6, [r4, #0x40]
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203E1A8: .word 0x020EA2A8
	thumb_func_end sub_0203E0FC

	thumb_func_start sub_0203E1AC
sub_0203E1AC: ; 0x0203E1AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _0203E220 ; =0x020EA2D8
	add r7, r2, #0
	add r2, sp, #0
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xb
	mov r1, #0x28
	bl sub_02018184
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202D750
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0202D764
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02025CCC
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0202B370
	bl sub_0202AD28
	str r0, [r4, #0x14]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0202B370
	bl sub_02039058
	str r0, [r4, #0x1c]
	str r6, [r4, #0x18]
	str r7, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r5, #0
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E220: .word 0x020EA2D8
	thumb_func_end sub_0203E1AC

	thumb_func_start sub_0203E224
sub_0203E224: ; 0x0203E224
	ldr r3, _0203E22C ; =sub_0203CD84
	ldr r1, _0203E230 ; =0x020EA328
	ldr r2, [r0, #0xc]
	bx r3
	; .align 2, 0
_0203E22C: .word sub_0203CD84
_0203E230: .word 0x020EA328
	thumb_func_end sub_0203E224

	thumb_func_start sub_0203E234
sub_0203E234: ; 0x0203E234
	ldr r3, _0203E23C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203E240 ; =0x020EA1C8
	bx r3
	; .align 2, 0
_0203E23C: .word sub_0203CD84
_0203E240: .word 0x020EA1C8
	thumb_func_end sub_0203E234

	thumb_func_start sub_0203E244
sub_0203E244: ; 0x0203E244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202444C
	ldr r1, [sp]
	add r4, r0, #0
	cmp r1, #2
	bne _0203E262
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203E262:
	ldr r1, _0203E270 ; =0x020EA1B8
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203E270: .word 0x020EA1B8
	thumb_func_end sub_0203E244

	thumb_func_start sub_0203E274
sub_0203E274: ; 0x0203E274
	ldr r3, _0203E27C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203E280 ; =0x020EA1A8
	bx r3
	; .align 2, 0
_0203E27C: .word sub_0203CD84
_0203E280: .word 0x020EA1A8
	thumb_func_end sub_0203E274

	thumb_func_start sub_0203E284
sub_0203E284: ; 0x0203E284
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203E2A8 ; =0x020EA198
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203E2A8: .word 0x020EA198
	thumb_func_end sub_0203E284

	thumb_func_start sub_0203E2AC
sub_0203E2AC: ; 0x0203E2AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203E2D0 ; =0x020EA1E8
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203E2D0: .word 0x020EA1E8
	thumb_func_end sub_0203E2AC

	thumb_func_start sub_0203E2D4
sub_0203E2D4: ; 0x0203E2D4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203E2F8 ; =0x020EA208
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203E2F8: .word 0x020EA208
	thumb_func_end sub_0203E2D4

	thumb_func_start sub_0203E2FC
sub_0203E2FC: ; 0x0203E2FC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	bl ov5_021E7278
	add r5, r0, #0
	bne _0203E314
	bl sub_02022974
_0203E314:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206D578
	str r5, [sp]
	ldr r0, [r4, #0xc]
	bl sub_02025E44
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	str r0, [sp, #8]
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [r1, #0]
	bl sub_02055428
	add r1, sp, #0
	strh r0, [r1, #0xc]
	ldr r0, [r4, #0x10]
	add r1, sp, #0
	bl sub_020985AC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203E2FC

	thumb_func_start sub_0203E348
sub_0203E348: ; 0x0203E348
	push {r3, lr}
	add r2, r1, #0
	ldr r1, _0203E358 ; =0x020EA2B8
	bl sub_0203CD84
	mov r0, #1
	pop {r3, pc}
	nop
_0203E358: .word 0x020EA2B8
	thumb_func_end sub_0203E348

	thumb_func_start sub_0203E35C
sub_0203E35C: ; 0x0203E35C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A68
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0203E38C
	cmp r0, #1
	beq _0203E39E
	b _0203E40E
_0203E38C:
	add r5, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203E348
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0203E40E
_0203E39E:
	add r0, r4, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203E40E
	ldr r0, [r4, #0xc]
	bl sub_02025E50
	str r0, [sp]
	bl sub_020138EC
	str r0, [sp, #4]
	ldr r0, [sp]
	add r6, r1, #0
	bl sub_0202B5B4
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [sp, #4]
	add r3, r6, #0
	bl sub_0201398C
	mov r2, #0x3c
	mov r3, #0
	bl sub_020E1D24
	add r3, r0, #0
	ldr r1, [sp, #8]
	ldr r2, [r5, #0]
	add r0, r4, #0
	bl sub_0206DD38
	ldr r0, [r4, #0xc]
	bl sub_02025E50
	ldr r1, [r5, #0]
	bl sub_0202B59C
	add r0, r7, #0
	bl sub_0206B394
	ldr r1, [r5, #0x18]
	cmp r1, r0
	ble _0203E402
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0206B3A4
_0203E402:
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0203E40E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0203E35C

	thumb_func_start sub_0203E414
sub_0203E414: ; 0x0203E414
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [sp]
	mov r0, #0x20
	add r1, r0, #0
	bl sub_02018144
	add r4, r0, #0
	str r4, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_02025E50
	bl sub_0202B5B4
	str r0, [r4, #0]
	bl sub_020138EC
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [sp]
	bl sub_02027B50
	str r0, [r4, #0x1c]
	lsl r1, r6, #0x18
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x18
	bl sub_0203E484
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #5
	bl sub_0202CFEC
	ldr r1, _0203E480 ; =sub_0203E35C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E480: .word sub_0203E35C
	thumb_func_end sub_0203E414

	thumb_func_start sub_0203E484
sub_0203E484: ; 0x0203E484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	bl sub_0202B4A0
	add r4, r0, #0
	bl sub_0201D2D0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0202B428
	bl sub_0201D2DC
	ldr r0, _0203E4F4 ; =0x020EA17C
	add r1, sp, #8
	mov r2, #0xc
	bl sub_020C4DB0
	mov r4, #0
	mov r7, #0xc
	add r6, sp, #8
_0203E4B0:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	bhs _0203E4DA
_0203E4BA:
	bl sub_0201D2E8
	add r1, r7, #0
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	ldrb r1, [r6, r4]
	ldrb r0, [r6, r2]
	strb r0, [r6, r4]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	strb r1, [r6, r2]
	cmp r5, #0xc
	blo _0203E4BA
_0203E4DA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _0203E4B0
	ldr r0, [sp, #4]
	bl sub_0201D2DC
	ldr r0, [sp]
	add r1, sp, #8
	ldrb r0, [r1, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E4F4: .word 0x020EA17C
	thumb_func_end sub_0203E484

	thumb_func_start sub_0203E4F8
sub_0203E4F8: ; 0x0203E4F8
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	bl ov7_0224BF2C
	cmp r0, #1
	bne _0203E512
	add r0, r4, #0
	bl ov7_0224BEFC
	mov r0, #1
	pop {r4, pc}
_0203E512:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203E4F8

	thumb_func_start sub_0203E518
sub_0203E518: ; 0x0203E518
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	mov r0, #4
	bl ov7_0224BE9C
	add r2, r0, #0
	ldr r1, _0203E538 ; =sub_0203E4F8
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_0203E538: .word sub_0203E4F8
	thumb_func_end sub_0203E518

	thumb_func_start sub_0203E53C
sub_0203E53C: ; 0x0203E53C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #8
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r6, [r4, #4]
	ldr r0, [r5, #0xc]
	ldr r1, _0203E560 ; =0x020EA188
	str r0, [r4, #0]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203E560: .word 0x020EA188
	thumb_func_end sub_0203E53C

	thumb_func_start sub_0203E564
sub_0203E564: ; 0x0203E564
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #8
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	strb r6, [r4, #4]
	strb r7, [r4, #5]
	ldr r0, [sp]
	ldr r1, _0203E594 ; =0x02100A84
	strh r0, [r4, #6]
	ldr r0, [r5, #0xc]
	add r2, r4, #0
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203E594: .word 0x02100A84
	thumb_func_end sub_0203E564

	thumb_func_start sub_0203E598
sub_0203E598: ; 0x0203E598
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x40
	add r6, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0202440C
	str r0, [r4, #0x10]
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x18]
	add r1, #0x21
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #5
	add r1, #0x20
	strb r2, [r1]
	add r1, r4, #0
	strh r6, [r4, #0x24]
	add r1, #0x22
	strb r0, [r1]
	ldr r1, _0203E604 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	str r5, [r4, #0x1c]
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0203E604: .word 0x020F1E88
	thumb_func_end sub_0203E598

	thumb_func_start sub_0203E608
sub_0203E608: ; 0x0203E608
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_0203E61C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0203E61C
	ldr r0, [r5, #0xc]
	ldr r1, _0203E638 ; =0x02100A94
	str r0, [r4, #0]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0203E638: .word 0x02100A94
	thumb_func_end sub_0203E608

	thumb_func_start sub_0203E63C
sub_0203E63C: ; 0x0203E63C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x30
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	mov r0, #0
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x14]
	mov r0, #1
	strb r0, [r4, #0x13]
	strh r6, [r4, #0x18]
	mov r0, #2
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206ADCC
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r1, _0203E6B8 ; =0x020EA15C
	add r0, r4, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0203E6BC ; =0x020F410C
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E6B8: .word 0x020EA15C
_0203E6BC: .word 0x020F410C
	thumb_func_end sub_0203E63C

	thumb_func_start sub_0203E6C0
sub_0203E6C0: ; 0x0203E6C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _0203E700 ; =0x020EA1D8
	add r7, r2, #0
	add r2, sp, #0
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	str r5, [r4, #0]
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	str r0, [r4, #4]
	str r6, [r4, #8]
	add r0, r5, #0
	add r2, r4, #0
	strb r7, [r4, #0xc]
	bl sub_0203CD84
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E700: .word 0x020EA1D8
	thumb_func_end sub_0203E6C0

	thumb_func_start sub_0203E704
sub_0203E704: ; 0x0203E704
	ldr r3, _0203E70C ; =sub_0203CD84
	ldr r1, _0203E710 ; =0x020EA348
	ldr r2, [r0, #0xc]
	bx r3
	; .align 2, 0
_0203E70C: .word sub_0203CD84
_0203E710: .word 0x020EA348
	thumb_func_end sub_0203E704

	thumb_func_start sub_0203E714
sub_0203E714: ; 0x0203E714
	ldr r3, _0203E71C ; =sub_0203CD84
	ldr r1, _0203E720 ; =0x020EA368
	ldr r2, [r0, #0xc]
	bx r3
	; .align 2, 0
_0203E71C: .word sub_0203CD84
_0203E720: .word 0x020EA368
	thumb_func_end sub_0203E714

	thumb_func_start sub_0203E724
sub_0203E724: ; 0x0203E724
	push {r3, r4}
	mov r3, #0
	strb r3, [r0, #1]
	str r3, [r0, #8]
	strb r3, [r0]
	str r3, [r0, #4]
	str r1, [r0, #0x5c]
	str r2, [r0, #0x60]
	add r1, r0, #0
	add r4, r3, #0
_0203E738:
	add r3, r3, #1
	str r4, [r1, #0x64]
	add r1, r1, #4
	cmp r3, #4
	blo _0203E738
	add r2, r0, #0
	mov r1, #0
_0203E746:
	add r4, r4, #1
	str r1, [r2, #0xc]
	add r2, r2, #4
	cmp r4, #0x14
	blo _0203E746
	str r1, [r0, #0x74]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203E724

	thumb_func_start sub_0203E758
sub_0203E758: ; 0x0203E758
	str r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #1]
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203E758

	thumb_func_start sub_0203E764
sub_0203E764: ; 0x0203E764
	mov r2, #2
	strb r2, [r0, #1]
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0203E764

	thumb_func_start sub_0203E76C
sub_0203E76C: ; 0x0203E76C
	mov r1, #0
	strb r1, [r0, #1]
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0203E76C

	thumb_func_start sub_0203E774
sub_0203E774: ; 0x0203E774
	str r1, [r0, #0x74]
	bx lr
	thumb_func_end sub_0203E774

	thumb_func_start sub_0203E778
sub_0203E778: ; 0x0203E778
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	bne _0203E786
	mov r0, #0
	pop {r4, pc}
_0203E786:
	beq _0203E792
	cmp r1, #1
	beq _0203E7AE
	cmp r1, #2
	beq _0203E796
	b _0203E7E0
_0203E792:
	mov r0, #0
	pop {r4, pc}
_0203E796:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0203E7AA
	blx r1
	cmp r0, #1
	bne _0203E7A6
	mov r0, #1
	strb r0, [r4, #1]
_0203E7A6:
	mov r0, #1
	pop {r4, pc}
_0203E7AA:
	mov r0, #1
	strb r0, [r4, #1]
_0203E7AE:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0203E7BA
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
_0203E7BA:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [r4, #0x60]
	cmp r1, r0
	blo _0203E7D2
	bl sub_02022974
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
_0203E7D2:
	ldr r2, [r4, #0x5c]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r4, #0
	blx r1
	cmp r0, #1
	bne _0203E7AE
_0203E7E0:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0203E778

	thumb_func_start sub_0203E7E4
sub_0203E7E4: ; 0x0203E7E4
	ldrb r3, [r0]
	add r2, r3, #1
	cmp r2, #0x14
	blt _0203E7F0
	mov r0, #1
	bx lr
_0203E7F0:
	lsl r2, r3, #2
	add r2, r0, r2
	str r1, [r2, #0xc]
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
	bx lr
	thumb_func_end sub_0203E7E4

	thumb_func_start sub_0203E800
sub_0203E800: ; 0x0203E800
	ldrb r1, [r0]
	cmp r1, #0
	bne _0203E80A
	mov r0, #0
	bx lr
_0203E80A:
	sub r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0203E800

	thumb_func_start sub_0203E818
sub_0203E818: ; 0x0203E818
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0203E818

	thumb_func_start sub_0203E81C
sub_0203E81C: ; 0x0203E81C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #8]
	bl sub_0203E7E4
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203E81C

	thumb_func_start sub_0203E82C
sub_0203E82C: ; 0x0203E82C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E800
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0203E82C

	thumb_func_start sub_0203E838
sub_0203E838: ; 0x0203E838
	ldr r1, [r0, #8]
	add r3, r1, #1
	str r3, [r0, #8]
	ldrb r2, [r1]
	add r1, r3, #1
	str r1, [r0, #8]
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_0203E838

	thumb_func_start sub_0203E850
sub_0203E850: ; 0x0203E850
	push {r4, r5}
	ldr r1, [r0, #8]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrb r3, [r1]
	add r1, r2, #1
	add r5, r1, #1
	str r1, [r0, #8]
	ldrb r2, [r2]
	add r4, r5, #1
	str r5, [r0, #8]
	ldrb r1, [r1]
	str r4, [r0, #8]
	ldrb r0, [r5]
	mov r4, #0
	add r0, r4, r0
	lsl r0, r0, #8
	add r0, r0, r1
	lsl r0, r0, #8
	add r0, r0, r2
	lsl r0, r0, #8
	add r0, r0, r3
	pop {r4, r5}
	bx lr
	thumb_func_end sub_0203E850

	thumb_func_start sub_0203E880
sub_0203E880: ; 0x0203E880
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0203EA28
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0203EA68
	ldr r1, _0203E8AC ; =sub_0203E950
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203E8AC: .word sub_0203E950
	thumb_func_end sub_0203E880

	thumb_func_start sub_0203E8B0
sub_0203E8B0: ; 0x0203E8B0
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x10]
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02050A64
	ldr r2, [sp, #0x1c]
	mov r1, #0x1c
	add r3, r2, #0
	add r0, #0x50
	mul r3, r1
	add r1, r0, r3
	str r4, [r0, r3]
	ldr r0, [sp, #0x10]
	str r6, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [sp, #0x14]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x10]
	str r5, [r1, #0x14]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203E8B0

	thumb_func_start sub_0203E8E0
sub_0203E8E0: ; 0x0203E8E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	add r5, r3, #0
	bl sub_02050A60
	str r0, [sp, #8]
	bl sub_0203EA28
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	add r1, r4, #0
	add r2, r7, #0
	str r5, [sp]
	bl sub_0203EA68
	ldr r1, _0203E914 ; =sub_0203E950
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E914: .word sub_0203E950
	thumb_func_end sub_0203E8E0

	thumb_func_start sub_0203E918
sub_0203E918: ; 0x0203E918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02050A60
	str r0, [sp, #4]
	bl sub_0203EA28
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0203EA68
	ldr r1, _0203E94C ; =sub_0203E950
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050924
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E94C: .word sub_0203E950
	thumb_func_end sub_0203E918

	thumb_func_start sub_0203E950
sub_0203E950: ; 0x0203E950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldrb r1, [r4, #4]
	str r0, [sp]
	cmp r1, #0
	beq _0203E970
	cmp r1, #1
	beq _0203E9A6
	b _0203EA22
_0203E970:
	ldrh r1, [r4, #0xa]
	bl sub_0203EAB8
	str r0, [r4, #0x38]
	mov r0, #1
	strb r0, [r4, #9]
	mov r0, #8
	mov r1, #0x40
	mov r2, #0xb
	bl sub_0200B368
	str r0, [r4, #0x40]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x44]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x48]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
_0203E9A6:
	mov r0, #0
	add r7, r4, #0
	str r0, [sp, #4]
	add r5, r4, #0
	add r7, #9
_0203E9B0:
	ldr r6, [r5, #0x38]
	cmp r6, #0
	beq _0203E9DA
	add r0, r6, #0
	bl sub_0203E778
	cmp r0, #0
	bne _0203E9DA
	add r0, r6, #0
	bl sub_0203EA50
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0203E9D0
	bl sub_02022974
_0203E9D0:
	mov r0, #0
	str r0, [r5, #0x38]
	ldrb r0, [r7]
	sub r0, r0, #1
	strb r0, [r7]
_0203E9DA:
	ldr r0, [sp, #4]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _0203E9B0
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0203EA22
	add r0, r4, #0
	add r0, #0xa4
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x40]
	bl sub_0200B3F0
	ldr r0, [r4, #0x44]
	bl sub_020237BC
	ldr r0, [r4, #0x48]
	bl sub_020237BC
	mov r0, #0
	str r0, [r4, #0]
	add r0, r4, #0
	bl sub_020181C4
	cmp r5, #0
	beq _0203EA1C
	ldr r0, [sp]
	blx r5
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203EA1C:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203EA22:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203E950

	thumb_func_start sub_0203EA28
sub_0203EA28: ; 0x0203EA28
	push {r4, lr}
	mov r0, #0xb
	mov r1, #0xdc
	bl sub_02018144
	add r4, r0, #0
	bne _0203EA3A
	bl sub_02022974
_0203EA3A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xdc
	bl sub_020D5124
	ldr r0, _0203EA4C ; =0x0003643F
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0203EA4C: .word 0x0003643F
	thumb_func_end sub_0203EA28

	thumb_func_start sub_0203EA50
sub_0203EA50: ; 0x0203EA50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	bl sub_0200B190
	ldr r0, [r4, #0x7c]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0203EA50

	thumb_func_start sub_0203EA68
sub_0203EA68: ; 0x0203EA68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x36
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203EF60
	str r0, [sp]
	ldr r0, [r7, #0x3c]
	bl sub_0205EA78
	str r0, [r5, #0x28]
	str r6, [r5, #0x2c]
	ldr r0, [sp, #0x18]
	strh r4, [r5, #0xa]
	str r0, [r5, #0x34]
	cmp r6, #0
	beq _0203EA9A
	add r0, r6, #0
	bl sub_02062910
	ldr r1, [sp]
	strh r0, [r1]
_0203EA9A:
	mov r0, #0x7d
	lsl r0, r0, #6
	cmp r4, r0
	blo _0203EAB0
	ldr r0, _0203EAB4 ; =0x0000225F
	cmp r4, r0
	bhi _0203EAB0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203F404
_0203EAB0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203EAB4: .word 0x0000225F
	thumb_func_end sub_0203EA68

	thumb_func_start sub_0203EAB8
sub_0203EAB8: ; 0x0203EAB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x84
	bl sub_02018144
	add r4, r0, #0
	bne _0203EACE
	bl sub_02022974
_0203EACE:
	ldr r2, _0203EAEC ; =0x020EAB80
	ldr r1, _0203EAF0 ; =0x020EAC58
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl sub_0203E724
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0203EAF4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0203EAEC: .word 0x020EAB80
_0203EAF0: .word 0x020EAC58
	thumb_func_end sub_0203EAB8

	thumb_func_start sub_0203EAF4
sub_0203EAF4: ; 0x0203EAF4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r3, r4, #0
	add r5, r0, #0
	add r3, #0x80
	str r5, [r3, #0]
	bl sub_0203EB20
	add r6, r0, #0
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	bl sub_0203E758
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203F0E4
	ldr r1, [r5, #0x10]
	add r0, r4, #0
	bl sub_0203E774
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203EAF4

	thumb_func_start sub_0203EB20
sub_0203EB20: ; 0x0203EB20
	push {r3, r4, r5, lr}
	ldr r3, _0203EE08 ; =0x000028FA
	add r4, r2, #0
	cmp r4, r3
	blo _0203EB3E
	ldr r2, _0203EE0C ; =0x000001F3
	add r3, r2, #0
	add r3, #0x2a
	bl sub_0203EF14
	ldr r0, _0203EE08 ; =0x000028FA
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EB3E:
	add r2, r3, #0
	sub r2, #0x28
	cmp r4, r2
	blo _0203EB5A
	mov r2, #0x7d
	lsl r2, r2, #2
	mov r3, #0x10
	bl sub_0203EF14
	ldr r0, _0203EE10 ; =0x000028D2
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EB5A:
	add r2, r3, #0
	sub r2, #0x5a
	cmp r4, r2
	blo _0203EB76
	mov r2, #0x19
	lsl r2, r2, #4
	mov r3, #0xcb
	bl sub_0203EF14
	ldr r0, _0203EE14 ; =0x000028A0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EB76:
	sub r3, #0xbe
	cmp r4, r3
	blo _0203EB90
	mov r3, #0x8a
	ldr r2, _0203EE18 ; =0x0000041B
	lsl r3, r3, #2
	bl sub_0203EF14
	ldr r0, _0203EE1C ; =0x0000283C
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EB90:
	ldr r3, _0203EE20 ; =0x000027D8
	cmp r4, r3
	blo _0203EBAA
	ldr r2, _0203EE24 ; =0x00000197
	add r3, r2, #0
	sub r3, #0x1c
	bl sub_0203EF14
	ldr r0, _0203EE20 ; =0x000027D8
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EBAA:
	add r2, r3, #0
	sub r2, #0x32
	cmp r4, r2
	blo _0203EBC4
	ldr r2, _0203EE28 ; =0x0000045C
	ldr r3, _0203EE2C ; =0x0000026D
	bl sub_0203EF14
	ldr r0, _0203EE30 ; =0x000027A6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EBC4:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203EBDE
	ldr r2, _0203EE34 ; =0x0000045B
	ldr r3, _0203EE38 ; =0x0000026E
	bl sub_0203EF14
	ldr r0, _0203EE3C ; =0x00002774
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EBDE:
	add r2, r3, #0
	sub r2, #0xc8
	cmp r4, r2
	blo _0203EBFA
	ldr r2, _0203EE40 ; =0x00000199
	add r3, r2, #0
	sub r3, #0x1c
	bl sub_0203EF14
	ldr r0, _0203EE44 ; =0x00002710
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EBFA:
	sub r3, #0xfa
	cmp r4, r3
	blo _0203EC14
	ldr r2, _0203EE48 ; =0x0000019B
	add r3, r2, #0
	sub r3, #0x1c
	bl sub_0203EF14
	ldr r0, _0203EE4C ; =0x000026DE
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC14:
	ldr r3, _0203EE50 ; =0x000026AC
	cmp r4, r3
	blo _0203EC2C
	ldr r2, _0203EE54 ; =0x0000018D
	mov r3, #0xd5
	bl sub_0203EF14
	ldr r0, _0203EE50 ; =0x000026AC
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC2C:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203EC46
	mov r2, #0xd4
	mov r3, #0xd9
	bl sub_0203EF14
	ldr r0, _0203EE58 ; =0x00002648
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC46:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203EC5E
	ldr r2, _0203EE5C ; =0x000001A6
	add r3, r2, #7
	bl sub_0203EF14
	ldr r0, _0203EE60 ; =0x000025E4
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC5E:
	mov r3, #0x96
	lsl r3, r3, #6
	cmp r4, r3
	blo _0203EC7C
	mov r2, #0x67
	lsl r2, r2, #2
	mov r3, #0xd5
	bl sub_0203EF14
	mov r0, #0x96
	lsl r0, r0, #6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC7C:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203EC98
	ldr r2, _0203EE64 ; =0x000001F5
	add r3, r2, #0
	add r3, #0x2e
	bl sub_0203EF14
	ldr r0, _0203EE68 ; =0x0000251C
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EC98:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203ECB0
	ldr r2, _0203EE6C ; =0x000001AA
	add r3, r2, #6
	bl sub_0203EF14
	ldr r0, _0203EE70 ; =0x000024B8
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ECB0:
	ldr r3, _0203EE74 ; =0x00002454
	cmp r4, r3
	blo _0203ECCA
	ldr r2, _0203EE78 ; =0x00000196
	add r3, r2, #0
	sub r3, #0x20
	bl sub_0203EF14
	ldr r0, _0203EE74 ; =0x00002454
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ECCA:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203ECE4
	ldr r2, _0203EE7C ; =0x000001A7
	add r3, r2, #7
	bl sub_0203EF14
	ldr r0, _0203EE80 ; =0x000023F0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ECE4:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203ECFC
	mov r2, #0
	mov r3, #0xb
	bl sub_0203EF14
	ldr r0, _0203EE84 ; =0x0000238C
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ECFC:
	ldr r3, _0203EE88 ; =0x00002328
	cmp r4, r3
	blo _0203ED14
	mov r2, #0xd5
	mov r3, #0xdd
	bl sub_0203EF14
	ldr r0, _0203EE88 ; =0x00002328
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED14:
	add r2, r3, #0
	sub r2, #0x1e
	cmp r4, r2
	blo _0203ED2E
	ldr r2, _0203EE8C ; =0x000001A9
	mov r3, #7
	bl sub_0203EF14
	ldr r0, _0203EE90 ; =0x0000230A
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED2E:
	add r2, r3, #0
	sub r2, #0x32
	cmp r4, r2
	blo _0203ED4A
	ldr r2, _0203EE94 ; =0x000001F2
	add r3, r2, #0
	add r3, #0x29
	bl sub_0203EF14
	ldr r0, _0203EE98 ; =0x000022F6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED4A:
	add r2, r3, #0
	sub r2, #0x64
	cmp r4, r2
	blo _0203ED66
	mov r2, #0x6a
	lsl r2, r2, #2
	add r3, r2, #7
	bl sub_0203EF14
	ldr r0, _0203EE9C ; =0x000022C4
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED66:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203ED80
	ldr r2, _0203EEA0 ; =0x000001F1
	add r3, r2, #0
	add r3, #0x29
	bl sub_0203EF14
	ldr r0, _0203EEA4 ; =0x00002260
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203ED80:
	mov r2, #0x7d
	lsl r2, r2, #6
	cmp r4, r2
	blo _0203EDA0
	mov r2, #0x66
	lsl r2, r2, #2
	add r3, r2, #0
	sub r3, #0x1c
	bl sub_0203EF14
	mov r0, #0x7d
	lsl r0, r0, #6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EDA0:
	ldr r3, _0203EEA8 ; =0x00001B58
	cmp r4, r3
	blo _0203EDBC
	mov r2, #0x65
	lsl r2, r2, #2
	add r3, r2, #0
	sub r3, #0x23
	bl sub_0203EF14
	ldr r0, _0203EEA8 ; =0x00001B58
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EDBC:
	ldr r5, _0203EEAC ; =0x00001388
	cmp r4, r5
	blo _0203EDD4
	ldr r2, _0203EEB0 ; =0x0000045A
	mov r3, #0xd5
	bl sub_0203EF14
	add r0, r5, #0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EDD4:
	ldr r3, _0203EEB4 ; =0x00000BB8
	cmp r4, r3
	blo _0203EDEC
	ldr r2, _0203EEB0 ; =0x0000045A
	mov r3, #0xd5
	bl sub_0203EF14
	ldr r0, _0203EEB4 ; =0x00000BB8
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EDEC:
	sub r3, #0xc8
	cmp r4, r3
	blo _0203EEBC
	ldr r2, _0203EEB8 ; =0x0000019D
	add r3, r2, #0
	sub r3, #0x10
	bl sub_0203EF14
	mov r0, #0xaf
	lsl r0, r0, #4
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
	; .align 2, 0
_0203EE08: .word 0x000028FA
_0203EE0C: .word 0x000001F3
_0203EE10: .word 0x000028D2
_0203EE14: .word 0x000028A0
_0203EE18: .word 0x0000041B
_0203EE1C: .word 0x0000283C
_0203EE20: .word 0x000027D8
_0203EE24: .word 0x00000197
_0203EE28: .word 0x0000045C
_0203EE2C: .word 0x0000026D
_0203EE30: .word 0x000027A6
_0203EE34: .word 0x0000045B
_0203EE38: .word 0x0000026E
_0203EE3C: .word 0x00002774
_0203EE40: .word 0x00000199
_0203EE44: .word 0x00002710
_0203EE48: .word 0x0000019B
_0203EE4C: .word 0x000026DE
_0203EE50: .word 0x000026AC
_0203EE54: .word 0x0000018D
_0203EE58: .word 0x00002648
_0203EE5C: .word 0x000001A6
_0203EE60: .word 0x000025E4
_0203EE64: .word 0x000001F5
_0203EE68: .word 0x0000251C
_0203EE6C: .word 0x000001AA
_0203EE70: .word 0x000024B8
_0203EE74: .word 0x00002454
_0203EE78: .word 0x00000196
_0203EE7C: .word 0x000001A7
_0203EE80: .word 0x000023F0
_0203EE84: .word 0x0000238C
_0203EE88: .word 0x00002328
_0203EE8C: .word 0x000001A9
_0203EE90: .word 0x0000230A
_0203EE94: .word 0x000001F2
_0203EE98: .word 0x000022F6
_0203EE9C: .word 0x000022C4
_0203EEA0: .word 0x000001F1
_0203EEA4: .word 0x00002260
_0203EEA8: .word 0x00001B58
_0203EEAC: .word 0x00001388
_0203EEB0: .word 0x0000045A
_0203EEB4: .word 0x00000BB8
_0203EEB8: .word 0x0000019D
_0203EEBC:
	lsr r3, r5, #1
	cmp r4, r3
	blo _0203EED4
	mov r2, #1
	mov r3, #0x11
	bl sub_0203EF14
	lsr r0, r5, #1
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EED4:
	lsr r2, r2, #2
	cmp r4, r2
	blo _0203EEEE
	mov r2, #0xd3
	mov r3, #0xd5
	bl sub_0203EF14
	mov r0, #0x7d
	lsl r0, r0, #4
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EEEE:
	cmp r4, #1
	blo _0203EEFE
	bl sub_0203EF38
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0203EF0A
_0203EEFE:
	ldr r2, _0203EF10 ; =0x00000192
	add r3, r2, #0
	sub r3, #0x2f
	bl sub_0203EF14
	mov r4, #0
_0203EF0A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0203EF10: .word 0x00000192
	thumb_func_end sub_0203EB20

	thumb_func_start sub_0203EF14
sub_0203EF14: ; 0x0203EF14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	mov r0, #0xa
	mov r2, #0xb
	bl sub_02006AC0
	str r0, [r5, #0x7c]
	mov r0, #1
	mov r1, #0x1a
	add r2, r4, #0
	mov r3, #0xb
	bl sub_0200B144
	str r0, [r5, #0x78]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203EF14

	thumb_func_start sub_0203EF38
sub_0203EF38: ; 0x0203EF38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	ldr r0, [r0, #0]
	bl sub_0203F0FC
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203F110
	add r2, r0, #0
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [r4, #0x78]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203EF38

	thumb_func_start sub_0203EF60
sub_0203EF60: ; 0x0203EF60
	push {r3, lr}
	cmp r1, #0x36
	bls _0203EF68
	b _0203F090
_0203EF68:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0203EF74: ; jump table
	.short _0203EFE2 - _0203EF74 - 2 ; case 0
	.short _0203EFE6 - _0203EF74 - 2 ; case 1
	.short _0203EFEA - _0203EF74 - 2 ; case 2
	.short _0203EFEE - _0203EF74 - 2 ; case 3
	.short _0203EFF2 - _0203EF74 - 2 ; case 4
	.short _0203EFF6 - _0203EF74 - 2 ; case 5
	.short _0203EFFA - _0203EF74 - 2 ; case 6
	.short _0203EFFE - _0203EF74 - 2 ; case 7
	.short _0203F002 - _0203EF74 - 2 ; case 8
	.short _0203F006 - _0203EF74 - 2 ; case 9
	.short _0203F00A - _0203EF74 - 2 ; case 10
	.short _0203F00E - _0203EF74 - 2 ; case 11
	.short _0203F012 - _0203EF74 - 2 ; case 12
	.short _0203F016 - _0203EF74 - 2 ; case 13
	.short _0203F01A - _0203EF74 - 2 ; case 14
	.short _0203F01E - _0203EF74 - 2 ; case 15
	.short _0203F022 - _0203EF74 - 2 ; case 16
	.short _0203F026 - _0203EF74 - 2 ; case 17
	.short _0203F02A - _0203EF74 - 2 ; case 18
	.short _0203F02E - _0203EF74 - 2 ; case 19
	.short _0203F032 - _0203EF74 - 2 ; case 20
	.short _0203F036 - _0203EF74 - 2 ; case 21
	.short _0203F03A - _0203EF74 - 2 ; case 22
	.short _0203F03E - _0203EF74 - 2 ; case 23
	.short _0203F042 - _0203EF74 - 2 ; case 24
	.short _0203F046 - _0203EF74 - 2 ; case 25
	.short _0203F04A - _0203EF74 - 2 ; case 26
	.short _0203F04E - _0203EF74 - 2 ; case 27
	.short _0203F052 - _0203EF74 - 2 ; case 28
	.short _0203F056 - _0203EF74 - 2 ; case 29
	.short _0203F05A - _0203EF74 - 2 ; case 30
	.short _0203F05E - _0203EF74 - 2 ; case 31
	.short _0203F062 - _0203EF74 - 2 ; case 32
	.short _0203F066 - _0203EF74 - 2 ; case 33
	.short _0203F06A - _0203EF74 - 2 ; case 34
	.short _0203F06E - _0203EF74 - 2 ; case 35
	.short _0203F072 - _0203EF74 - 2 ; case 36
	.short _0203F076 - _0203EF74 - 2 ; case 37
	.short _0203F07A - _0203EF74 - 2 ; case 38
	.short _0203F07E - _0203EF74 - 2 ; case 39
	.short _0203F082 - _0203EF74 - 2 ; case 40
	.short _0203F086 - _0203EF74 - 2 ; case 41
	.short _0203F086 - _0203EF74 - 2 ; case 42
	.short _0203F086 - _0203EF74 - 2 ; case 43
	.short _0203F086 - _0203EF74 - 2 ; case 44
	.short _0203F086 - _0203EF74 - 2 ; case 45
	.short _0203F086 - _0203EF74 - 2 ; case 46
	.short _0203F086 - _0203EF74 - 2 ; case 47
	.short _0203F086 - _0203EF74 - 2 ; case 48
	.short _0203F086 - _0203EF74 - 2 ; case 49
	.short _0203F086 - _0203EF74 - 2 ; case 50
	.short _0203F086 - _0203EF74 - 2 ; case 51
	.short _0203F086 - _0203EF74 - 2 ; case 52
	.short _0203F086 - _0203EF74 - 2 ; case 53
	.short _0203F086 - _0203EF74 - 2 ; case 54
_0203EFE2:
	add r0, #0x10
	pop {r3, pc}
_0203EFE6:
	add r0, #0x14
	pop {r3, pc}
_0203EFEA:
	add r0, #0x24
	pop {r3, pc}
_0203EFEE:
	add r0, r0, #5
	pop {r3, pc}
_0203EFF2:
	add r0, r0, #6
	pop {r3, pc}
_0203EFF6:
	add r0, r0, #7
	pop {r3, pc}
_0203EFFA:
	add r0, #8
	pop {r3, pc}
_0203EFFE:
	add r0, #9
	pop {r3, pc}
_0203F002:
	add r0, #0xa
	pop {r3, pc}
_0203F006:
	add r0, #0x28
	pop {r3, pc}
_0203F00A:
	add r0, #0x2c
	pop {r3, pc}
_0203F00E:
	add r0, #0x30
	pop {r3, pc}
_0203F012:
	add r0, #0x34
	pop {r3, pc}
_0203F016:
	add r0, #0x38
	pop {r3, pc}
_0203F01A:
	add r0, #0x3c
	pop {r3, pc}
_0203F01E:
	add r0, #0x40
	pop {r3, pc}
_0203F022:
	add r0, #0x44
	pop {r3, pc}
_0203F026:
	add r0, #0x48
	pop {r3, pc}
_0203F02A:
	add r0, #0x4c
	pop {r3, pc}
_0203F02E:
	add r0, #0xa8
	pop {r3, pc}
_0203F032:
	add r0, #0xac
	pop {r3, pc}
_0203F036:
	add r0, #0xb0
	pop {r3, pc}
_0203F03A:
	add r0, #0xb4
	pop {r3, pc}
_0203F03E:
	add r0, #0xc
	pop {r3, pc}
_0203F042:
	add r0, #0x50
	pop {r3, pc}
_0203F046:
	add r0, #0x54
	pop {r3, pc}
_0203F04A:
	add r0, #0x58
	pop {r3, pc}
_0203F04E:
	add r0, #0x5c
	pop {r3, pc}
_0203F052:
	add r0, #0x60
	pop {r3, pc}
_0203F056:
	add r0, #0x64
	pop {r3, pc}
_0203F05A:
	add r0, #0x68
	pop {r3, pc}
_0203F05E:
	add r0, #0x6c
	pop {r3, pc}
_0203F062:
	add r0, #0x70
	pop {r3, pc}
_0203F066:
	add r0, #0x74
	pop {r3, pc}
_0203F06A:
	add r0, #0x78
	pop {r3, pc}
_0203F06E:
	add r0, #0x7c
	pop {r3, pc}
_0203F072:
	add r0, #0x80
	pop {r3, pc}
_0203F076:
	add r0, #0x84
	pop {r3, pc}
_0203F07A:
	add r0, #0xb8
	pop {r3, pc}
_0203F07E:
	add r0, #0xc8
	pop {r3, pc}
_0203F082:
	add r0, #0xd8
	pop {r3, pc}
_0203F086:
	sub r1, #0x29
	add r0, #0x88
	lsl r1, r1, #1
	add r0, r0, r1
	pop {r3, pc}
_0203F090:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203EF60

	thumb_func_start sub_0203F098
sub_0203F098: ; 0x0203F098
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x10]
	add r5, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0203F0BC ; =0x0003643F
	cmp r1, r0
	beq _0203F0B0
	bl sub_02022974
_0203F0B0:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203EF60
	pop {r3, r4, r5, pc}
	nop
_0203F0BC: .word 0x0003643F
	thumb_func_end sub_0203F098

	thumb_func_start sub_0203F0C0
sub_0203F0C0: ; 0x0203F0C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A9C8
	cmp r0, #1
	bne _0203F0DC
	ldr r0, _0203F0E0 ; =sub_0203AB00
	add r4, #0xa4
	str r0, [r4, #0]
_0203F0DC:
	pop {r3, r4, r5, pc}
	nop
_0203F0E0: .word sub_0203AB00
	thumb_func_end sub_0203F0C0

	thumb_func_start sub_0203F0E4
sub_0203F0E4: ; 0x0203F0E4
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [r4, #8]
	bl sub_0203E850
	ldr r1, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0203F0E4

	thumb_func_start sub_0203F0FC
sub_0203F0FC: ; 0x0203F0FC
	push {r3, lr}
	bl sub_0203A09C
	add r1, r0, #0
	mov r0, #0xa
	mov r2, #0xb
	bl sub_02006AC0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F0FC

	thumb_func_start sub_0203F110
sub_0203F110: ; 0x0203F110
	ldr r3, _0203F114 ; =sub_0203A088
	bx r3
	; .align 2, 0
_0203F114: .word sub_0203A088
	thumb_func_end sub_0203F110

	thumb_func_start sub_0203F118
sub_0203F118: ; 0x0203F118
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r4, r1
	bhs _0203F130
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203F130:
	lsl r1, r1, #1
	cmp r4, r1
	bhs _0203F13E
	add r1, r4, #0
	bl sub_020508B8
	pop {r3, r4, r5, pc}
_0203F13E:
	ldr r1, _0203F14C ; =0x00007FD7
	add r0, r5, #0
	sub r1, r4, r1
	bl sub_0203F098
	pop {r3, r4, r5, pc}
	nop
_0203F14C: .word 0x00007FD7
	thumb_func_end sub_0203F118

	thumb_func_start sub_0203F150
sub_0203F150: ; 0x0203F150
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203F118
	cmp r0, #0
	beq _0203F15E
	ldrh r4, [r0]
_0203F15E:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F150

	thumb_func_start sub_0203F164
sub_0203F164: ; 0x0203F164
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x10
	blo _0203F172
	bl sub_02022974
_0203F172:
	ldr r1, _0203F184 ; =0x00004020
	add r0, r5, #0
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F150
	pop {r3, r4, r5, pc}
	nop
_0203F184: .word 0x00004020
	thumb_func_end sub_0203F164

	thumb_func_start sub_0203F188
sub_0203F188: ; 0x0203F188
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	add r1, r4, #0
	bl sub_020507F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F188

	thumb_func_start sub_0203F19C
sub_0203F19C: ; 0x0203F19C
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	add r1, r4, #0
	bl sub_0205081C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F19C

	thumb_func_start sub_0203F1B0
sub_0203F1B0: ; 0x0203F1B0
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	add r1, r4, #0
	bl sub_02050844
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F1B0

	thumb_func_start sub_0203F1C4
sub_0203F1C4: ; 0x0203F1C4
	push {r4, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #1
	add r4, r0, #0
	bl sub_02050870
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020508B8
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F1C4

	thumb_func_start sub_0203F1FC
sub_0203F1FC: ; 0x0203F1FC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #0xaa
	lsl r1, r1, #4
	bl sub_02050870
	mov r2, #0x18
	mov r1, #0
_0203F210:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0203F210
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F1FC

	thumb_func_start sub_0203F21C
sub_0203F21C: ; 0x0203F21C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0x29
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203F098
	strh r4, [r0]
	add r0, r5, #0
	mov r1, #0x2a
	bl sub_0203F098
	strh r6, [r0]
	add r0, r5, #0
	mov r1, #0x2b
	bl sub_0203F098
	strh r7, [r0]
	add r0, r5, #0
	mov r1, #0x2c
	bl sub_0203F098
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203F21C

	thumb_func_start sub_0203F254
sub_0203F254: ; 0x0203F254
	ldr r1, _0203F270 ; =0x00001388
	cmp r0, r1
	bhs _0203F264
	ldr r1, _0203F274 ; =0x00000BB7
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0203F264:
	sub r1, r1, #1
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0203F270: .word 0x00001388
_0203F274: .word 0x00000BB7
	thumb_func_end sub_0203F254

	thumb_func_start sub_0203F278
sub_0203F278: ; 0x0203F278
	ldr r1, _0203F288 ; =0x00001388
	cmp r0, r1
	blo _0203F282
	mov r0, #1
	bx lr
_0203F282:
	mov r0, #0
	bx lr
	nop
_0203F288: .word 0x00001388
	thumb_func_end sub_0203F278

	thumb_func_start sub_0203F28C
sub_0203F28C: ; 0x0203F28C
	push {r3, lr}
	mov r1, #9
	bl sub_02079220
	cmp r0, #0
	beq _0203F29C
	mov r0, #1
	pop {r3, pc}
_0203F29C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203F28C

	thumb_func_start sub_0203F2A0
sub_0203F2A0: ; 0x0203F2A0
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #0x55
	lsl r1, r1, #4
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020507F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F2A0

	thumb_func_start sub_0203F2BC
sub_0203F2BC: ; 0x0203F2BC
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #0x55
	lsl r1, r1, #4
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0205081C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F2BC

	thumb_func_start sub_0203F2D8
sub_0203F2D8: ; 0x0203F2D8
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	mov r1, #0x55
	lsl r1, r1, #4
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02050844
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F2D8

	thumb_func_start sub_0203F2F4
sub_0203F2F4: ; 0x0203F2F4
	ldr r1, _0203F300 ; =0x00001C66
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0203F300: .word 0x00001C66
	thumb_func_end sub_0203F2F4

	thumb_func_start sub_0203F304
sub_0203F304: ; 0x0203F304
	mov r1, #0x7d
	lsl r1, r1, #6
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_0203F304

	thumb_func_start sub_0203F310
sub_0203F310: ; 0x0203F310
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x16
	ldr r0, [r4, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, _0203F3B8 ; =0x02100AE0
	ldrh r0, [r0, r1]
	cmp r2, r0
	beq _0203F33E
	ldr r2, _0203F3BC ; =0x02100AE2
	add r0, r4, #0
	ldrh r2, [r2, r1]
	ldr r1, _0203F3C0 ; =0x000002DA
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F1B0
_0203F33E:
	bl sub_0201D2E8
	mov r1, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x16
	ldr r0, [r4, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, _0203F3B8 ; =0x02100AE0
	ldrh r0, [r0, r1]
	cmp r2, r0
	beq _0203F368
	ldr r2, _0203F3BC ; =0x02100AE2
	add r0, r4, #0
	ldrh r2, [r2, r1]
	ldr r1, _0203F3C0 ; =0x000002DA
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F1B0
_0203F368:
	ldr r0, [r4, #0x1c]
	ldr r1, [r0, #0]
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	beq _0203F3B4
	bl sub_0201D2E8
	mov r1, #6
	bl sub_020E2178
	lsl r1, r1, #0x18
	lsr r2, r1, #0x17
	ldr r1, _0203F3C4 ; =0x02100AD4
	add r0, r4, #0
	ldrh r2, [r1, r2]
	ldr r1, _0203F3C0 ; =0x000002DA
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F1B0
	bl sub_0201D2E8
	mov r1, #6
	bl sub_020E2178
	lsl r1, r1, #0x18
	lsr r2, r1, #0x17
	ldr r1, _0203F3C4 ; =0x02100AD4
	add r0, r4, #0
	ldrh r2, [r1, r2]
	ldr r1, _0203F3C0 ; =0x000002DA
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F1B0
_0203F3B4:
	pop {r4, pc}
	nop
_0203F3B8: .word 0x02100AE0
_0203F3BC: .word 0x02100AE2
_0203F3C0: .word 0x000002DA
_0203F3C4: .word 0x02100AD4
	thumb_func_end sub_0203F310

	thumb_func_start sub_0203F3C8
sub_0203F3C8: ; 0x0203F3C8
	push {r3, r4, r5, lr}
	ldr r4, _0203F3FC ; =0x020EA378
	bl sub_0203F304
	ldr r1, _0203F400 ; =0x00000101
	mov r3, #0
	add r5, r4, #0
_0203F3D6:
	ldrh r2, [r5, #6]
	cmp r0, r2
	beq _0203F3E4
	add r3, r3, #1
	add r5, #8
	cmp r3, r1
	blo _0203F3D6
_0203F3E4:
	ldr r0, _0203F400 ; =0x00000101
	cmp r3, r0
	blo _0203F3F2
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203F3F2:
	lsl r0, r3, #3
	add r0, r4, r0
	ldrb r0, [r0, #3]
	pop {r3, r4, r5, pc}
	nop
_0203F3FC: .word 0x020EA378
_0203F400: .word 0x00000101
	thumb_func_end sub_0203F3C8

	thumb_func_start sub_0203F404
sub_0203F404: ; 0x0203F404
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #0x29
	bl sub_0203EF60
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x2a
	bl sub_0203EF60
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x2b
	bl sub_0203EF60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203F304
	add r3, r0, #0
	ldr r6, _0203F470 ; =0x020EA378
	ldr r0, _0203F474 ; =0x00000101
	mov r2, #0
_0203F434:
	ldrh r1, [r6, #6]
	cmp r3, r1
	beq _0203F442
	add r2, r2, #1
	add r6, #8
	cmp r2, r0
	blo _0203F434
_0203F442:
	ldr r0, _0203F474 ; =0x00000101
	cmp r2, r0
	blo _0203F450
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F450:
	ldr r1, _0203F470 ; =0x020EA378
	lsl r0, r2, #3
	ldrh r2, [r1, r0]
	ldr r1, [sp]
	strh r2, [r1]
	ldr r1, _0203F470 ; =0x020EA378
	add r0, r1, r0
	ldrb r0, [r0, #2]
	strh r0, [r7]
	add r0, r5, #0
	bl sub_0203F2F4
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203F470: .word 0x020EA378
_0203F474: .word 0x00000101
	thumb_func_end sub_0203F404

	thumb_func_start sub_0203F478
sub_0203F478: ; 0x0203F478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	add r4, r1, #0
	mov r6, #0
	bl sub_0203A448
	add r5, r0, #0
	add r2, r5, #1
	mov r1, #6
	add r0, r4, #0
	mul r1, r2
	bl sub_02018144
	str r0, [sp, #0x1c]
	cmp r5, #0
	bne _0203F4AA
	mov r2, #0xff
	add r1, r0, #0
	strb r2, [r1, #4]
	ldr r2, _0203F594 ; =0x0000FFFF
	add sp, #0x24
	strh r2, [r1]
	strh r2, [r1, #2]
	pop {r4, r5, r6, r7, pc}
_0203F4AA:
	ldr r0, [sp]
	bl sub_0203A440
	add r4, r0, #0
	bne _0203F4C4
	ldr r0, [sp, #0x1c]
	mov r1, #0xff
	strb r1, [r0, #4]
	ldr r1, _0203F594 ; =0x0000FFFF
	add sp, #0x24
	strh r1, [r0]
	strh r1, [r0, #2]
	pop {r4, r5, r6, r7, pc}
_0203F4C4:
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	sub r0, r0, #7
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #7
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	sub r0, r0, #7
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bge _0203F4FA
	add r0, r6, #0
	str r0, [sp, #0x10]
_0203F4FA:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _0203F504
	mov r0, #0
	str r0, [sp, #8]
_0203F504:
	add r0, r5, #1
	mov r7, #0
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _0203F57A
	ldr r5, [sp, #0x1c]
_0203F510:
	ldrh r0, [r4, #2]
	cmp r0, #2
	bne _0203F570
	ldrh r0, [r4]
	bl sub_0203F2F4
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0203F188
	cmp r0, #0
	bne _0203F570
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blt _0203F570
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bgt _0203F570
	ldr r1, [r4, #8]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0203F570
	ldr r0, [sp, #4]
	cmp r1, r0
	bgt _0203F570
	ldrh r0, [r4]
	bl sub_0203F3C8
	strb r0, [r5, #4]
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x18]
	sub r1, r0, r1
	mov r0, #7
	sub r0, r0, r1
	bl sub_020D4070
	strh r0, [r5]
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x14]
	sub r1, r0, r1
	mov r0, #7
	sub r0, r0, r1
	bl sub_020D4070
	strh r0, [r5, #2]
	add r5, r5, #6
	add r6, r6, #1
_0203F570:
	ldr r0, [sp, #0x20]
	add r7, r7, #1
	add r4, #0x14
	cmp r7, r0
	blt _0203F510
_0203F57A:
	mov r0, #6
	add r3, r6, #0
	mul r3, r0
	ldr r0, [sp, #0x1c]
	mov r1, #0xff
	add r2, r0, r3
	strb r1, [r2, #4]
	ldr r1, _0203F594 ; =0x0000FFFF
	strh r1, [r0, r3]
	strh r1, [r2, #2]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0203F594: .word 0x0000FFFF
	thumb_func_end sub_0203F478

	thumb_func_start sub_0203F598
sub_0203F598: ; 0x0203F598
	ldr r3, _0203F5A0 ; =sub_0203F5A4
	mov r1, #0x96
	lsl r1, r1, #6
	bx r3
	; .align 2, 0
_0203F5A0: .word sub_0203F5A4
	thumb_func_end sub_0203F598

	thumb_func_start sub_0203F5A4
sub_0203F5A4: ; 0x0203F5A4
	push {r4, lr}
	bl sub_0203EAB8
	add r4, r0, #0
_0203F5AC:
	add r0, r4, #0
	bl sub_0203E778
	cmp r0, #1
	beq _0203F5AC
	add r0, r4, #0
	bl sub_0203EA50
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F5A4

	thumb_func_start sub_0203F5C0
sub_0203F5C0: ; 0x0203F5C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203A68C
	add r1, r0, #0
	bne _0203F5D2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203F5D2:
	cmp r4, #1
	bne _0203F5E0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203F638
	b _0203F5E6
_0203F5E0:
	add r1, r4, #0
	bl _0203F610
_0203F5E6:
	add r1, r0, #0
	ldr r0, _0203F60C ; =0x0000FFFF
	cmp r1, r0
	bne _0203F5F2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203F5F2:
	cmp r4, #1
	bne _0203F600
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E880
	b _0203F606
_0203F600:
	add r0, r5, #0
	bl sub_0203F5A4
_0203F606:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0203F60C: .word 0x0000FFFF
	thumb_func_end sub_0203F5C0
_0203F610:
	ldrb r2, [r0]
	cmp r2, #0
	bne _0203F61A
	ldr r0, _0203F634 ; =0x0000FFFF
	bx lr
_0203F61A:
	cmp r2, r1
	bne _0203F62C
	ldrb r1, [r0, #1]
	ldrb r0, [r0, #2]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0203F62C:
	add r0, r0, #5
	b _0203F610
_0203F630:
	.byte 0x70, 0x47, 0xC0, 0x46
_0203F634: .word 0x0000FFFF

	thumb_func_start sub_0203F638
sub_0203F638: ; 0x0203F638
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
_0203F63E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0203F648
	ldr r0, _0203F6C0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0203F648:
	cmp r0, r2
	bne _0203F664
	ldrb r0, [r4, #4]
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #1]
	lsl r1, r0, #0x18
	ldrb r0, [r4, #3]
	lsl r2, r2, #8
	add r2, r3, r2
	lsl r0, r0, #0x10
	add r0, r0, r2
	add r1, r1, r0
	add r0, r4, #5
	b _0203F668
_0203F664:
	add r4, r4, #5
	b _0203F63E
_0203F668:
	cmp r1, #0
	bne _0203F670
	ldr r0, _0203F6C0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0203F670:
	add r4, r0, r1
_0203F672:
	ldrb r1, [r4]
	cmp r1, #0
	bne _0203F67C
	ldr r0, _0203F6C0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0203F67C:
	ldrb r0, [r4, #1]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	bne _0203F68C
	ldr r0, _0203F6C0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0203F68C:
	ldrb r0, [r4, #3]
	ldrb r2, [r4, #2]
	lsl r0, r0, #8
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203F150
	cmp r7, r0
	bne _0203F6BA
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0203F6BA:
	add r4, r4, #6
	b _0203F672
_0203F6BE:
	.byte 0xF8, 0xBD
_0203F6C0: .word 0x0000FFFF
	thumb_func_end sub_0203F638

	thumb_func_start sub_0203F6C4
sub_0203F6C4: ; 0x0203F6C4
	mov r0, #0
	bx lr
	thumb_func_end sub_0203F6C4

	thumb_func_start sub_0203F6C8
sub_0203F6C8: ; 0x0203F6C8
	mov r0, #0
	bx lr
	thumb_func_end sub_0203F6C8

	thumb_func_start sub_0203F6CC
sub_0203F6CC: ; 0x0203F6CC
	push {r3, lr}
	bl sub_0203E76C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F6CC

	thumb_func_start sub_0203F6D8
sub_0203F6D8: ; 0x0203F6D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0203F118
	strh r7, [r0]
	ldr r1, _0203F708 ; =sub_0203F70C
	add r0, r5, #0
	str r4, [r5, #0x64]
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203F708: .word sub_0203F70C
	thumb_func_end sub_0203F6D8

	thumb_func_start sub_0203F70C
sub_0203F70C: ; 0x0203F70C
	push {r3, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	ldrh r1, [r0]
	sub r1, r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _0203F72E
	mov r0, #1
	pop {r3, pc}
_0203F72E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F70C

	thumb_func_start sub_0203F734
sub_0203F734: ; 0x0203F734
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F734

	thumb_func_start sub_0203F74C
sub_0203F74C: ; 0x0203F74C
	ldr r1, [r0, #8]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrb r3, [r1]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r2, [r2]
	lsl r1, r3, #2
	add r0, r0, r1
	str r2, [r0, #0x64]
	mov r0, #0
	bx lr
	thumb_func_end sub_0203F74C

	thumb_func_start sub_0203F764
sub_0203F764: ; 0x0203F764
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r5, [r2]
	bl sub_0203E850
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x64]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203F764

	thumb_func_start sub_0203F780
sub_0203F780: ; 0x0203F780
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E850
	ldrb r1, [r0]
	lsl r0, r4, #2
	add r0, r5, r0
	str r1, [r0, #0x64]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203F780

	thumb_func_start sub_0203F79C
sub_0203F79C: ; 0x0203F79C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	strb r1, [r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F79C

	thumb_func_start sub_0203F7B4
sub_0203F7B4: ; 0x0203F7B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x64]
	strb r1, [r0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203F7B4

	thumb_func_start sub_0203F7D0
sub_0203F7D0: ; 0x0203F7D0
	ldr r1, [r0, #8]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrb r3, [r1]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r2, [r1, #0x64]
	lsl r1, r3, #2
	add r0, r0, r1
	str r2, [r0, #0x64]
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203F7D0

	thumb_func_start sub_0203F7F0
sub_0203F7F0: ; 0x0203F7F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E850
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E850
	ldrb r0, [r0]
	strb r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203F7F0

	thumb_func_start sub_0203F808
sub_0203F808: ; 0x0203F808
	cmp r0, r1
	bhs _0203F810
	mov r0, #0
	bx lr
_0203F810:
	cmp r0, r1
	bne _0203F818
	mov r0, #1
	bx lr
_0203F818:
	mov r0, #2
	bx lr
	thumb_func_end sub_0203F808

	thumb_func_start sub_0203F81C
sub_0203F81C: ; 0x0203F81C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x64]
	str r2, [r4, #8]
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x64]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203F81C

	thumb_func_start sub_0203F84C
sub_0203F84C: ; 0x0203F84C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x64]
	str r2, [r4, #8]
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F84C

	thumb_func_start sub_0203F874
sub_0203F874: ; 0x0203F874
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x64]
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	bl sub_0203E850
	ldrb r1, [r0]
	add r0, r5, #0
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203F874

	thumb_func_start sub_0203F89C
sub_0203F89C: ; 0x0203F89C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	ldr r2, [r4, #8]
	ldrb r0, [r0]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x64]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F89C

	thumb_func_start sub_0203F8C4
sub_0203F8C4: ; 0x0203F8C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	ldr r2, [r4, #8]
	ldrb r0, [r0]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203F8C4

	thumb_func_start sub_0203F8E0
sub_0203F8E0: ; 0x0203F8E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E850
	ldrb r4, [r0]
	add r0, r5, #0
	bl sub_0203E850
	ldrb r1, [r0]
	add r0, r4, #0
	bl sub_0203F808
	strb r0, [r5, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203F8E0

	thumb_func_start sub_0203F900
sub_0203F900: ; 0x0203F900
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	ldrh r5, [r0]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203F900

	thumb_func_start sub_0203F92C
sub_0203F92C: ; 0x0203F92C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r1]
	bl sub_0203F808
	strb r0, [r5, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203F92C

	thumb_func_start sub_0203F964
sub_0203F964: ; 0x0203F964
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #7
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xe
	bl sub_0203F098
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203EAB8
	str r0, [r6, #0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203F964

	thumb_func_start sub_0203F99C
sub_0203F99C: ; 0x0203F99C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #5
	add r0, r5, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #7
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xe
	bl sub_0203F098
	add r7, r0, #0
	ldr r0, [sp]
	bl sub_0203E838
	add r1, r0, #0
	mov r0, #1
	strb r0, [r6]
	add r0, r5, #0
	bl sub_0203EAB8
	str r0, [r7, #0]
	ldrb r0, [r4]
	ldr r1, _0203F9E8 ; =sub_0203F9EC
	add r0, r0, #1
	strb r0, [r4]
	ldr r0, [sp]
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203F9E8: .word sub_0203F9EC
	thumb_func_end sub_0203F99C

	thumb_func_start sub_0203F9EC
sub_0203F9EC: ; 0x0203F9EC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_0203F098
	ldrb r0, [r0]
	cmp r0, #0
	bne _0203FA02
	mov r0, #1
	pop {r3, pc}
_0203FA02:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F9EC

	thumb_func_start sub_0203FA08
sub_0203FA08: ; 0x0203FA08
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_0203F098
	mov r1, #0
	strb r1, [r0]
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end sub_0203FA08

	thumb_func_start sub_0203FA1C
sub_0203FA1C: ; 0x0203FA1C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	add r2, r0, #0
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r1, r1, r2
	bl sub_0203E818
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203FA1C

	thumb_func_start sub_0203FA34
sub_0203FA34: ; 0x0203FA34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E850
	add r7, r0, #0
	ldr r0, [r6, #0]
	bl sub_02062910
	cmp r4, r0
	bne _0203FA68
	ldr r1, [r5, #8]
	add r0, r5, #0
	add r1, r1, r7
	bl sub_0203E818
_0203FA68:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203FA34

	thumb_func_start sub_0203FA6C
sub_0203FA6C: ; 0x0203FA6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	bl sub_02050A6C
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r4, [r1]
	add r0, r5, #0
	bl sub_0203E850
	add r2, r0, #0
	cmp r6, r4
	bne _0203FA96
	ldr r1, [r5, #8]
	add r0, r5, #0
	add r1, r1, r2
	bl sub_0203E818
_0203FA96:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203FA6C

	thumb_func_start sub_0203FA9C
sub_0203FA9C: ; 0x0203FA9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #9
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r4, [r1]
	add r0, r5, #0
	bl sub_0203E850
	add r2, r0, #0
	ldr r0, [r6, #0]
	cmp r0, r4
	bne _0203FACC
	ldr r1, [r5, #8]
	add r0, r5, #0
	add r1, r1, r2
	bl sub_0203E818
_0203FACC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203FA9C

	thumb_func_start sub_0203FAD0
sub_0203FAD0: ; 0x0203FAD0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	add r2, r0, #0
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r1, r1, r2
	bl sub_0203E81C
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203FAD0

	thumb_func_start sub_0203FAE8
sub_0203FAE8: ; 0x0203FAE8
	push {r3, lr}
	bl sub_0203E82C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203FAE8

	thumb_func_start sub_0203FAF4
sub_0203FAF4: ; 0x0203FAF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E850
	add r1, r0, #0
	lsl r0, r4, #1
	add r3, r4, r0
	ldr r0, _0203FB24 ; =0x020EABA6
	ldrb r2, [r5, #2]
	add r0, r0, r3
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0203FB20
	ldr r2, [r5, #8]
	add r0, r5, #0
	add r1, r2, r1
	bl sub_0203E818
_0203FB20:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203FB24: .word 0x020EABA6
	thumb_func_end sub_0203FAF4

	thumb_func_start sub_0203FB28
sub_0203FB28: ; 0x0203FB28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E850
	add r1, r0, #0
	lsl r0, r4, #1
	add r3, r4, r0
	ldr r0, _0203FB58 ; =0x020EABA6
	ldrb r2, [r5, #2]
	add r0, r0, r3
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0203FB54
	ldr r2, [r5, #8]
	add r0, r5, #0
	add r1, r2, r1
	bl sub_0203E81C
_0203FB54:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203FB58: .word 0x020EABA6
	thumb_func_end sub_0203FB28

	thumb_func_start sub_0203FB5C
sub_0203FB5C: ; 0x0203FB5C
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203F19C
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203FB5C

	thumb_func_start sub_0203FB74
sub_0203FB74: ; 0x0203FB74
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203F1B0
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203FB74

	thumb_func_start sub_0203FB8C
sub_0203FB8C: ; 0x0203FB8C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203F188
	strb r0, [r4, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FB8C

	thumb_func_start sub_0203FBA8
sub_0203FBA8: ; 0x0203FBA8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldrh r1, [r6]
	add r0, r5, #0
	bl sub_0203F188
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203FBA8

	thumb_func_start sub_0203FBE4
sub_0203FBE4: ; 0x0203FBE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_0203F19C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203FBE4

	thumb_func_start sub_0203FC0C
sub_0203FC0C: ; 0x0203FC0C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203F2BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FC0C

	thumb_func_start sub_0203FC30
sub_0203FC30: ; 0x0203FC30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203F2D8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FC30

	thumb_func_start sub_0203FC54
sub_0203FC54: ; 0x0203FC54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203F2A0
	strb r0, [r5, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FC54

	thumb_func_start sub_0203FC7C
sub_0203FC7C: ; 0x0203FC7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	ldrh r1, [r4]
	add r0, r1, r0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FC7C

	thumb_func_start sub_0203FCAC
sub_0203FCAC: ; 0x0203FCAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	ldrh r1, [r4]
	sub r0, r1, r0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FCAC

	thumb_func_start sub_0203FCDC
sub_0203FCDC: ; 0x0203FCDC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203FCDC

	thumb_func_start sub_0203FD00
sub_0203FD00: ; 0x0203FD00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203FD00

	thumb_func_start sub_0203FD30
sub_0203FD30: ; 0x0203FD30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FD30

	thumb_func_start sub_0203FD5C
sub_0203FD5C: ; 0x0203FD5C
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r2, [r2]
	ldr r1, [r0, #0x78]
	bl ov5_021DD498
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203FD5C

	thumb_func_start sub_0203FD70
sub_0203FD70: ; 0x0203FD70
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	mov r0, #1
	mov r1, #0x1a
	add r2, r5, #0
	mov r3, #0x20
	bl sub_0200B144
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov5_021DD498
	add r0, r5, #0
	bl sub_0200B190
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203FD70

	thumb_func_start sub_0203FDBC
sub_0203FDBC: ; 0x0203FDBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	mov r0, #1
	mov r1, #0x1a
	add r2, r5, #0
	mov r3, #0x20
	bl sub_0200B144
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov5_021DD444
	add r0, r5, #0
	bl sub_0200B190
	ldr r1, _0203FE1C ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0203FE1C: .word sub_02040014
	thumb_func_end sub_0203FDBC

	thumb_func_start sub_0203FE20
sub_0203FE20: ; 0x0203FE20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov5_021DD4CC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203FE20

	thumb_func_start sub_0203FE60
sub_0203FE60: ; 0x0203FE60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov5_021DD4CC
	ldr r1, _0203FEA8 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203FEA8: .word sub_02040014
	thumb_func_end sub_0203FE60

	thumb_func_start sub_0203FEAC
sub_0203FEAC: ; 0x0203FEAC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldrb r3, [r2]
	add r1, #0xac
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0203FECE
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203FECE:
	lsl r1, r3, #4
	add r1, r3, r1
	add r2, #0x90
	lsl r1, r1, #4
	add r4, r2, r1
	ldrh r1, [r2, r1]
	ldr r2, _0203FF28 ; =0x0000FFFF
	cmp r1, r2
	bne _0203FF06
	ldr r2, _0203FF2C ; =0x00000265
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x20
	bl sub_0200B144
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov5_021DD444
	add r0, r6, #0
	bl sub_0200B190
	b _0203FF18
_0203FF06:
	mov r2, #6
	ldrsh r2, [r4, r2]
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	ldrh r2, [r4, #2]
	ldrh r3, [r4, #4]
	bl ov5_021DD4CC
_0203FF18:
	ldr r1, _0203FF30 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0203FF28: .word 0x0000FFFF
_0203FF2C: .word 0x00000265
_0203FF30: .word sub_02040014
	thumb_func_end sub_0203FEAC

	thumb_func_start sub_0203FF34
sub_0203FF34: ; 0x0203FF34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r2, [r5, #8]
	ldr r6, [r1, #0]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	ldr r1, [r5, #8]
	add r2, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r3, [r1]
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r6, #0xc]
	add r1, r7, #0
	bl sub_0204AEE8
	add r6, r0, #0
	add r2, sp, #4
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov5_021DD530
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r1, _0203FFA8 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203FFA8: .word sub_02040014
	thumb_func_end sub_0203FF34

	thumb_func_start sub_0203FFAC
sub_0203FFAC: ; 0x0203FFAC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, sp, #4
	add r1, r5, #0
	bl ov5_021DD42C
	mov r1, #3
	add r0, sp, #4
	strb r1, [r0, #2]
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov5_021DD444
	ldr r1, _0203FFE4 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203FFE4: .word sub_02040014
	thumb_func_end sub_0203FFAC

	thumb_func_start sub_0203FFE8
sub_0203FFE8: ; 0x0203FFE8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r2, [r4, #8]
	mov r3, #1
	add r1, r2, #1
	str r1, [r4, #8]
	mov r1, #0
	str r1, [sp]
	ldrb r2, [r2]
	ldr r1, [r4, #0x78]
	bl ov5_021DD444
	ldr r1, _02040010 ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02040010: .word sub_02040014
	thumb_func_end sub_0203FFE8

	thumb_func_start sub_02040014
sub_02040014: ; 0x02040014
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0203F098
	ldrb r0, [r0]
	bl sub_0205DA04
	pop {r3, pc}
	thumb_func_end sub_02040014

	thumb_func_start sub_02040028
sub_02040028: ; 0x02040028
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov5_021DD444
	ldr r1, _02040060 ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02040060: .word sub_02040014
	thumb_func_end sub_02040028

	thumb_func_start sub_02040064
sub_02040064: ; 0x02040064
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, sp, #4
	add r1, r5, #0
	bl ov5_021DD42C
	lsl r2, r4, #0x18
	mov r3, #1
	add r0, sp, #4
	strb r3, [r0, #1]
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl ov5_021DD444
	ldr r1, _020400A8 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020400A8: .word sub_02040014
	thumb_func_end sub_02040064

	thumb_func_start sub_020400AC
sub_020400AC: ; 0x020400AC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r3, #0
	str r3, [sp]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	lsr r2, r2, #0x18
	bl ov5_021DD444
	ldr r1, _020400E4 ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_020400E4: .word sub_02040014
	thumb_func_end sub_020400AC

	thumb_func_start sub_020400E8
sub_020400E8: ; 0x020400E8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02062950
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	mov r3, #1
	bl ov5_021DD444
	ldr r1, _02040120 ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_02040120: .word sub_02040014
	thumb_func_end sub_020400E8

	thumb_func_start sub_02040124
sub_02040124: ; 0x02040124
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r4, [r1]
	bl sub_02035E38
	cmp r0, #0
	bne _0204014C
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl ov5_021DD444
	b _0204016C
_0204014C:
	add r0, sp, #4
	add r1, r5, #0
	bl ov5_021DD42C
	mov r1, #1
	add r0, sp, #4
	strb r1, [r0]
	strb r1, [r0, #1]
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov5_021DD444
_0204016C:
	ldr r1, _0204017C ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0204017C: .word sub_02040014
	thumb_func_end sub_02040124

	thumb_func_start sub_02040180
sub_02040180: ; 0x02040180
	push {r3, lr}
	ldr r1, _0204018C ; =sub_02040190
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0204018C: .word sub_02040190
	thumb_func_end sub_02040180

	thumb_func_start sub_02040190
sub_02040190: ; 0x02040190
	ldr r0, _020401A4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0204019E
	mov r0, #1
	bx lr
_0204019E:
	mov r0, #0
	bx lr
	nop
_020401A4: .word 0x021BF67C
	thumb_func_end sub_02040190

	thumb_func_start sub_020401A8
sub_020401A8: ; 0x020401A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [r4, #0x64]
	ldr r1, _020401CC ; =sub_020401D0
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_020401CC: .word sub_020401D0
	thumb_func_end sub_020401A8

	thumb_func_start sub_020401D0
sub_020401D0: ; 0x020401D0
	ldr r1, _020401F0 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _020401DE
	mov r0, #1
	bx lr
_020401DE:
	ldr r1, [r0, #0x64]
	sub r1, r1, #1
	str r1, [r0, #0x64]
	bne _020401EA
	mov r0, #1
	bx lr
_020401EA:
	mov r0, #0
	bx lr
	nop
_020401F0: .word 0x021BF67C
	thumb_func_end sub_020401D0

	thumb_func_start sub_020401F4
sub_020401F4: ; 0x020401F4
	push {r3, lr}
	ldr r1, _02040200 ; =sub_02040204
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02040200: .word sub_02040204
	thumb_func_end sub_020401F4

	thumb_func_start sub_02040204
sub_02040204: ; 0x02040204
	push {r4, lr}
	ldr r1, _02040280 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	add r3, r2, #0
	tst r3, r1
	beq _02040216
	mov r0, #1
	pop {r4, pc}
_02040216:
	mov r3, #0x40
	tst r3, r2
	beq _0204022A
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	b _0204027A
_0204022A:
	mov r3, #0x80
	tst r3, r2
	beq _0204023E
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	b _0204027A
_0204023E:
	mov r3, #0x20
	tst r3, r2
	beq _02040252
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	b _0204027A
_02040252:
	mov r3, #0x10
	add r4, r2, #0
	tst r4, r3
	beq _02040266
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	b _0204027A
_02040266:
	lsl r1, r3, #6
	tst r1, r2
	beq _02040276
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F0C0
	b _0204027A
_02040276:
	mov r0, #0
	pop {r4, pc}
_0204027A:
	mov r0, #1
	pop {r4, pc}
	nop
_02040280: .word 0x021BF67C
	thumb_func_end sub_02040204

	thumb_func_start sub_02040284
sub_02040284: ; 0x02040284
	push {r3, lr}
	ldr r1, _02040290 ; =sub_02040294
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02040290: .word sub_02040294
	thumb_func_end sub_02040284

	thumb_func_start sub_02040294
sub_02040294: ; 0x02040294
	ldr r0, _020402B0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _020402A2
	mov r0, #1
	bx lr
_020402A2:
	mov r0, #0xf0
	tst r0, r1
	beq _020402AC
	mov r0, #1
	bx lr
_020402AC:
	mov r0, #0
	bx lr
	; .align 2, 0
_020402B0: .word 0x021BF67C
	thumb_func_end sub_02040294

	thumb_func_start sub_020402B4
sub_020402B4: ; 0x020402B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #6
	add r0, r4, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F098
	add r1, r0, #0
	ldr r0, [r4, #8]
	mov r2, #3
	bl sub_0205D8F4
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F098
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205D944
	mov r0, #1
	strb r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020402B4

	thumb_func_start sub_020402FC
sub_020402FC: ; 0x020402FC
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #1
	add r0, r4, #0
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0201A8FC
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020402FC

	thumb_func_start sub_0204032C
sub_0204032C: ; 0x0204032C
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #1
	add r0, r4, #0
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201A8FC
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204032C

	thumb_func_start sub_02040354
sub_02040354: ; 0x02040354
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0x31
	add r0, r4, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0203F098
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0203F098
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_0203F098
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0203F098
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	strh r1, [r6]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	strh r1, [r7]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r2, [r2]
	ldr r1, [sp]
	strh r2, [r1]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r2, [r2]
	ldr r1, [sp, #4]
	strh r2, [r1]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r2, [r2]
	ldr r1, [sp, #8]
	strh r2, [r1]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	strh r1, [r0]
	ldr r1, _020403E8 ; =sub_020403EC
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020403E8: .word sub_020403EC
	thumb_func_end sub_02040354

	thumb_func_start sub_020403EC
sub_020403EC: ; 0x020403EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0x31
	add r0, r4, #0
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0203F098
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0203F098
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0203F098
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_0203F098
	add r5, r0, #0
	ldrh r0, [r6]
	cmp r0, #0
	bne _02040442
	ldrh r0, [r5]
	cmp r0, #0
	bne _02040442
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02040442:
	ldrh r3, [r7]
	cmp r3, #0
	beq _02040464
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _0204045C
	mov r1, #3
	mov r2, #1
	bl sub_02019184
	b _02040464
_0204045C:
	mov r1, #3
	mov r2, #2
	bl sub_02019184
_02040464:
	ldr r0, [sp, #4]
	ldrh r3, [r0]
	cmp r3, #0
	beq _02040488
	ldr r0, [sp]
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _02040480
	mov r1, #3
	mov r2, #4
	bl sub_02019184
	b _02040488
_02040480:
	mov r1, #3
	mov r2, #5
	bl sub_02019184
_02040488:
	ldrh r0, [r6]
	cmp r0, #0
	beq _02040492
	sub r0, r0, #1
	strh r0, [r6]
_02040492:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0204049C
	sub r0, r0, #1
	strh r0, [r5]
_0204049C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020403EC

	thumb_func_start sub_020404A4
sub_020404A4: ; 0x020404A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0x11
	add r0, r4, #0
	bl sub_0203F098
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r1]
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	cmp r6, #0
	bne _02040504
	add r0, r4, #0
	mov r1, #0xa
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_020629D8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_02040504:
	ldr r0, [r4, #0x64]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	bl ov5_021E1B38
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl ov5_021E1B40
	add r0, r4, #0
	bl ov5_021E1B68
	ldr r2, [sp, #0x18]
	ldr r0, [r5, #0x78]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	bl sub_0200B1B8
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0, #0]
	ldr r1, [r7, #0]
	ldr r2, [r2, #0]
	bl sub_0200C388
	ldr r0, [r4, #0x64]
	bl ov5_021E1B50
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r7, #0]
	mov r1, #1
	bl sub_0201D738
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020404A4

	thumb_func_start sub_02040554
sub_02040554: ; 0x02040554
	push {r3, r4, r5, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r4, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r5, [r2]
	bl sub_0203E838
	add r2, r0, #0
	ldr r0, [r4, #0x64]
	add r1, r5, #0
	bl ov5_021E1B38
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl ov5_021E1B40
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02040554

	thumb_func_start sub_02040580
sub_02040580: ; 0x02040580
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	ldr r0, [r3, #0x64]
	bl ov5_021E1B40
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02040580

	thumb_func_start sub_0204059C
sub_0204059C: ; 0x0204059C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x64]
	bl ov5_021E1B58
	cmp r0, #1
	bne _020405B2
	mov r0, #0
	pop {r4, pc}
_020405B2:
	ldr r1, _020405C0 ; =sub_020405C4
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_020405C0: .word sub_020405C4
	thumb_func_end sub_0204059C

	thumb_func_start sub_020405C4
sub_020405C4: ; 0x020405C4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x64]
	bl ov5_021E1B58
	cmp r0, #1
	bne _020405D8
	mov r0, #1
	pop {r3, pc}
_020405D8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020405C4

	thumb_func_start sub_020405DC
sub_020405DC: ; 0x020405DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #3
	add r0, r4, #0
	bl sub_0203F098
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	str r0, [sp, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r1]
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x78]
	ldr r1, [sp]
	ldr r2, [r6, #0]
	bl sub_0200B1B8
	ldr r0, [sp, #8]
	ldr r1, [r7, #0]
	ldr r0, [r0, #0]
	ldr r2, [r6, #0]
	bl sub_0200C388
	ldr r0, [r4, #0x64]
	bl ov5_021E1B50
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	ldr r1, [r7, #0]
	add r0, r4, #0
	mov r3, #1
	bl sub_0205D994
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	ldr r1, _0204066C ; =sub_02040670
	str r0, [r5, #0x64]
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204066C: .word sub_02040670
	thumb_func_end sub_020405DC

	thumb_func_start sub_02040670
sub_02040670: ; 0x02040670
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #3
	add r0, r5, #0
	bl sub_0203F098
	ldr r1, [r7, #0x64]
	add r6, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0x64]
	bl ov5_021E1B54
	ldrb r0, [r6]
	ldr r5, _0204070C ; =0x0000FFFF
	bl sub_0205DA04
	cmp r0, #1
	bne _020406AA
	mov r0, #2
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020406AA:
	ldr r0, _02040710 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _020406B8
	mov r5, #0
	b _020406D4
_020406B8:
	mov r1, #0x80
	tst r1, r0
	beq _020406C2
	mov r5, #1
	b _020406D4
_020406C2:
	mov r1, #0x20
	tst r1, r0
	beq _020406CC
	mov r5, #2
	b _020406D4
_020406CC:
	mov r1, #0x10
	tst r1, r0
	beq _020406D4
	mov r5, #3
_020406D4:
	ldr r1, _0204070C ; =0x0000FFFF
	cmp r5, r1
	beq _020406F4
	ldrb r0, [r6]
	bl sub_0201D730
	add r7, #0x80
	ldr r0, [r7, #0]
	add r1, r5, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020406F4:
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _02040708
	ldrb r0, [r6]
	bl sub_0201D730
	mov r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02040708:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204070C: .word 0x0000FFFF
_02040710: .word 0x021BF67C
	thumb_func_end sub_02040670

	thumb_func_start sub_02040714
sub_02040714: ; 0x02040714
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _0204072C ; =sub_02040730
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_0204072C: .word sub_02040730
	thumb_func_end sub_02040714

	thumb_func_start sub_02040730
sub_02040730: ; 0x02040730
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, _020407AC ; =0x021BF67C
	ldr r1, _020407B0 ; =0x0000FFFF
	ldr r2, [r0, #0x48]
	mov r0, #3
	add r3, r2, #0
	tst r3, r0
	beq _0204075A
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204075A:
	mov r3, #0x40
	tst r3, r2
	beq _02040764
	mov r1, #0
	b _02040780
_02040764:
	mov r3, #0x80
	tst r3, r2
	beq _0204076E
	mov r1, #1
	b _02040780
_0204076E:
	mov r3, #0x20
	tst r3, r2
	beq _02040778
	mov r1, #2
	b _02040780
_02040778:
	mov r3, #0x10
	tst r3, r2
	beq _02040780
	add r1, r0, #0
_02040780:
	ldr r0, _020407B0 ; =0x0000FFFF
	cmp r1, r0
	beq _02040798
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02040798:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r2
	beq _020407A6
	mov r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_020407A6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020407AC: .word 0x021BF67C
_020407B0: .word 0x0000FFFF
	thumb_func_end sub_02040730

	thumb_func_start sub_020407B4
sub_020407B4: ; 0x020407B4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F0C0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020407B4

	thumb_func_start sub_020407C4
sub_020407C4: ; 0x020407C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #2
	add r0, r4, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	ldr r2, _02040818 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, _0204081C ; =0x020EAB84
	ldr r2, _02040818 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r6, #0]
	ldr r1, _02040820 ; =sub_02040824
	add r0, r5, #0
	str r7, [r5, #0x64]
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02040818: .word 0x000003D9
_0204081C: .word 0x020EAB84
_02040820: .word sub_02040824
	thumb_func_end sub_020407C4

	thumb_func_start sub_02040824
sub_02040824: ; 0x02040824
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #2
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r5, #0x64]
	add r4, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02040858
	mov r0, #0
	pop {r4, r5, r6, pc}
_02040858:
	cmp r0, #0
	bne _02040860
	mov r0, #0
	b _02040862
_02040860:
	mov r0, #1
_02040862:
	strh r0, [r5]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02040824

	thumb_func_start sub_02040868
sub_02040868: ; 0x02040868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x12
	bl sub_0203F098
	add r5, r0, #0
	ldr r1, _02040894 ; =0x000003E2
	add r0, r4, #0
	bl sub_0200E7FC
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02040894: .word 0x000003E2
	thumb_func_end sub_02040868

	thumb_func_start sub_02040898
sub_02040898: ; 0x02040898
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x12
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_0200EBA0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02040898

	thumb_func_start sub_020408B0
sub_020408B0: ; 0x020408B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	str r0, [sp, #0x18]
	str r2, [r5, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x14]
	str r1, [r5, #8]
	ldrb r7, [r2]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_0203F118
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	ldr r1, [sp, #0x28]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	add r3, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DC150
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x64]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020408B0

	thumb_func_start sub_02040938
sub_02040938: ; 0x02040938
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	str r0, [sp, #0x18]
	str r2, [r5, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x14]
	str r1, [r5, #8]
	ldrb r7, [r2]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_0203F118
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	ldr r1, [sp, #0x28]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	add r3, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x78]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DC150
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x64]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02040938

	thumb_func_start sub_020409C0
sub_020409C0: ; 0x020409C0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r3, r1, #1
	str r3, [r4, #8]
	ldrb r1, [r1]
	add r2, r3, #1
	str r2, [r4, #8]
	ldrb r2, [r3]
	ldr r0, [r0, #0]
	bl ov5_021DC1A4
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020409C0

	thumb_func_start sub_020409E8
sub_020409E8: ; 0x020409E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov5_021DC1A4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020409E8

	thumb_func_start sub_02040A2C
sub_02040A2C: ; 0x02040A2C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DC1AC
	ldr r1, _02040A4C ; =sub_02040A50
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02040A4C: .word sub_02040A50
	thumb_func_end sub_02040A2C

	thumb_func_start sub_02040A50
sub_02040A50: ; 0x02040A50
	push {r3, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	ldrh r1, [r0]
	ldr r0, _02040A74 ; =0x0000EEEE
	cmp r1, r0
	beq _02040A6E
	mov r0, #1
	pop {r3, pc}
_02040A6E:
	mov r0, #0
	pop {r3, pc}
	nop
_02040A74: .word 0x0000EEEE
	thumb_func_end sub_02040A50

	thumb_func_start sub_02040A78
sub_02040A78: ; 0x02040A78
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DC1AC
	ldr r1, _02040A98 ; =sub_02040A9C
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02040A98: .word sub_02040A9C
	thumb_func_end sub_02040A78

	thumb_func_start sub_02040A9C
sub_02040A9C: ; 0x02040A9C
	push {r4, r5, r6, lr}
	add r1, r0, #0
	add r0, #0x80
	ldr r1, [r1, #0x64]
	ldr r5, [r0, #0]
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0203F098
	add r6, r0, #0
	ldrh r1, [r4]
	ldr r0, _02040AE4 ; =0x0000EEEE
	cmp r1, r0
	bne _02040AE0
	ldr r0, [r5, #0x7c]
	bl sub_0205B9E8
	cmp r0, #0
	beq _02040ADC
	mov r0, #8
	strh r0, [r4]
	ldr r0, [r6, #0]
	bl ov5_021DC424
	mov r0, #1
	pop {r4, r5, r6, pc}
_02040ADC:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02040AE0:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02040AE4: .word 0x0000EEEE
	thumb_func_end sub_02040A9C

	thumb_func_start sub_02040AE8
sub_02040AE8: ; 0x02040AE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	str r0, [sp, #0x18]
	str r2, [r5, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x14]
	str r1, [r5, #8]
	ldrb r7, [r2]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_0203F118
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	ldr r1, [sp, #0x28]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	add r3, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DC48C
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x64]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02040AE8

	thumb_func_start sub_02040B70
sub_02040B70: ; 0x02040B70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	str r0, [sp, #0x18]
	str r2, [r5, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x14]
	str r1, [r5, #8]
	ldrb r7, [r2]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_0203F118
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	ldr r1, [sp, #0x28]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	add r3, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x78]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DC48C
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x64]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02040B70

	thumb_func_start sub_02040BF8
sub_02040BF8: ; 0x02040BF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r3, r0, #0
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov5_021DC4B0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02040BF8

	thumb_func_start sub_02040C58
sub_02040C58: ; 0x02040C58
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DC4B8
	ldr r1, _02040C78 ; =sub_02040A50
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02040C78: .word sub_02040A50
	thumb_func_end sub_02040C58

	thumb_func_start sub_02040C7C
sub_02040C7C: ; 0x02040C7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov5_021DC528
	ldr r1, _02040CB4 ; =sub_02040A50
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02040CB4: .word sub_02040A50
	thumb_func_end sub_02040C7C

	thumb_func_start sub_02040CB8
sub_02040CB8: ; 0x02040CB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov5_021DC600
	ldr r1, _02040D04 ; =sub_02040A50
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02040D04: .word sub_02040A50
	thumb_func_end sub_02040CB8

	thumb_func_start sub_02040D08
sub_02040D08: ; 0x02040D08
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021DCD94
	ldr r1, _02040D30 ; =sub_02040A50
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02040D30: .word sub_02040A50
	thumb_func_end sub_02040D08

	thumb_func_start sub_02040D34
sub_02040D34: ; 0x02040D34
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021DD3F4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02040D34

	thumb_func_start sub_02040D54
sub_02040D54: ; 0x02040D54
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021DD410
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02040D54

	thumb_func_start sub_02040D74
sub_02040D74: ; 0x02040D74
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E850
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02040ED4
	cmp r0, #0
	bne _02040DAA
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
_02040DAA:
	ldr r1, [r5, #8]
	add r1, r1, r4
	bl sub_02065700
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0203F098
	ldrb r1, [r0]
	add r5, #0x80
	mov r2, #0
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_02040F28
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02040D74

	thumb_func_start sub_02040DD8
sub_02040DD8: ; 0x02040DD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_02040ED4
	str r0, [sp, #4]
	cmp r0, #0
	bne _02040E2E
	bl sub_02022974
_02040E2E:
	mov r0, #4
	add r1, r0, #0
	add r1, #0xfc
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_02063020
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_02063040
	lsl r0, r0, #0x10
	ldr r2, [sp]
	lsr r0, r0, #0x10
	mov r1, #0
	cmp r6, r2
	bhs _02040E64
	mov r2, #0xf
	strh r2, [r4]
	ldr r2, [sp]
	add r1, r1, #1
	sub r2, r2, r6
	strh r2, [r4, #2]
	b _02040E74
_02040E64:
	cmp r6, r2
	bls _02040E74
	mov r2, #0xe
	strh r2, [r4]
	ldr r2, [sp]
	add r1, r1, #1
	sub r2, r6, r2
	strh r2, [r4, #2]
_02040E74:
	cmp r0, r7
	bhs _02040E88
	lsl r2, r1, #2
	mov r3, #0xc
	strh r3, [r4, r2]
	sub r3, r7, r0
	add r0, r4, r2
	strh r3, [r0, #2]
	add r1, r1, #1
	b _02040E9A
_02040E88:
	cmp r0, r7
	bls _02040E9A
	lsl r2, r1, #2
	mov r3, #0xd
	strh r3, [r4, r2]
	sub r3, r0, r7
	add r0, r4, r2
	strh r3, [r0, #2]
	add r1, r1, #1
_02040E9A:
	lsl r2, r1, #2
	mov r0, #0xfe
	strh r0, [r4, r2]
	mov r1, #0
	add r0, r4, r2
	strh r1, [r0, #2]
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02065700
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0203F098
	ldrb r1, [r0]
	add r5, #0x80
	add r2, r4, #0
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02040F28
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02040DD8

	thumb_func_start sub_02040ED4
sub_02040ED4: ; 0x02040ED4
	push {r3, lr}
	cmp r1, #0xf2
	bne _02040EE4
	ldr r0, [r0, #0x38]
	mov r1, #0x30
	bl sub_02062570
	pop {r3, pc}
_02040EE4:
	cmp r1, #0xf1
	bne _02040EF2
	mov r1, #0xb
	bl sub_0203F098
	ldr r0, [r0, #0]
	pop {r3, pc}
_02040EF2:
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02040ED4

	thumb_func_start sub_02040EFC
sub_02040EFC: ; 0x02040EFC
	push {r3, lr}
	ldr r1, _02040F08 ; =sub_02040F0C
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02040F08: .word sub_02040F0C
	thumb_func_end sub_02040EFC

	thumb_func_start sub_02040F0C
sub_02040F0C: ; 0x02040F0C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0203F098
	ldrb r0, [r0]
	cmp r0, #0
	bne _02040F22
	mov r0, #1
	pop {r3, pc}
_02040F22:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02040F0C

	thumb_func_start sub_02040F28
sub_02040F28: ; 0x02040F28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x10
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02040F42
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02040F42:
	str r5, [r4, #0xc]
	str r6, [r4, #4]
	ldr r0, _02040F58 ; =sub_02040F5C
	add r1, r4, #0
	mov r2, #0
	str r7, [r4, #8]
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02040F58: .word sub_02040F5C
	thumb_func_end sub_02040F28

	thumb_func_start sub_02040F5C
sub_02040F5C: ; 0x02040F5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_0206574C
	cmp r0, #1
	bne _02040FA0
	ldr r0, [r5, #4]
	bl sub_02065758
	ldr r0, [r5, #0]
	bl sub_0200DA58
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02040F8A
	bl sub_020181C4
_02040F8A:
	add r0, r5, #0
	bl sub_020181C4
	ldrb r0, [r4]
	cmp r0, #0
	bne _02040F9C
	bl sub_02022974
	pop {r3, r4, r5, pc}
_02040F9C:
	sub r0, r0, #1
	strb r0, [r4]
_02040FA0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02040F5C

	thumb_func_start sub_02040FA4
sub_02040FA4: ; 0x02040FA4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xa
	add r0, r5, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02040FF6
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	ldr r0, [r5, #0x38]
	mov r1, #0x30
	bl sub_02062570
	add r4, r0, #0
	beq _02040FFC
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02040FFC
	add r0, r4, #0
	bl sub_02062D1C
	cmp r0, #0
	beq _02040FFC
	add r0, r4, #0
	bl sub_02062DDC
	ldr r1, _02041000 ; =sub_020410CC
	add r0, r6, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
_02040FF6:
	add r0, r6, #0
	bl sub_020410F4
_02040FFC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02041000: .word sub_020410CC
	thumb_func_end sub_02040FA4

	thumb_func_start sub_02041004
sub_02041004: ; 0x02041004
	push {r4, r5, r6, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0xa
	add r0, r4, #0
	bl sub_0203F098
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	ldr r1, _020410C8 ; =0x021C07E0
	add r6, r0, #0
	ldrb r2, [r1]
	mov r1, #1
	tst r1, r2
	beq _0204103E
	bl sub_02065684
	cmp r0, #1
	bne _0204103E
	add r0, r6, #0
	bl sub_02062DD0
	ldr r1, _020410C8 ; =0x021C07E0
	mov r0, #0xfe
	ldrb r2, [r1]
	and r0, r2
	strb r0, [r1]
_0204103E:
	ldr r0, _020410C8 ; =0x021C07E0
	ldrb r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02041062
	ldr r0, [r5, #0]
	bl sub_02062D1C
	cmp r0, #0
	bne _02041062
	ldr r0, [r5, #0]
	bl sub_02062DD0
	ldr r1, _020410C8 ; =0x021C07E0
	mov r0, #0xfb
	ldrb r2, [r1]
	and r0, r2
	strb r0, [r1]
_02041062:
	ldr r0, _020410C8 ; =0x021C07E0
	ldrb r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _0204108E
	ldr r0, [r4, #0x38]
	mov r1, #0x30
	bl sub_02062570
	add r4, r0, #0
	bl sub_02062D1C
	cmp r0, #0
	bne _0204108E
	add r0, r4, #0
	bl sub_02062DD0
	ldr r1, _020410C8 ; =0x021C07E0
	mov r0, #0xfd
	ldrb r2, [r1]
	and r0, r2
	strb r0, [r1]
_0204108E:
	ldr r0, _020410C8 ; =0x021C07E0
	ldrb r1, [r0]
	mov r0, #8
	tst r0, r1
	beq _020410B8
	ldr r0, [r5, #0]
	bl sub_02069EB8
	add r4, r0, #0
	bl sub_02062D1C
	cmp r0, #0
	bne _020410B8
	add r0, r4, #0
	bl sub_02062DD0
	ldr r1, _020410C8 ; =0x021C07E0
	mov r0, #0xf7
	ldrb r2, [r1]
	and r0, r2
	strb r0, [r1]
_020410B8:
	ldr r0, _020410C8 ; =0x021C07E0
	ldrb r0, [r0]
	cmp r0, #0
	bne _020410C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_020410C4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020410C8: .word 0x021C07E0
	thumb_func_end sub_02041004

	thumb_func_start sub_020410CC
sub_020410CC: ; 0x020410CC
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x30
	ldr r0, [r0, #0x38]
	bl sub_02062570
	add r4, r0, #0
	bl sub_02062D1C
	cmp r0, #0
	bne _020410EE
	add r0, r4, #0
	bl sub_02062DD0
	mov r0, #1
	pop {r4, pc}
_020410EE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020410CC

	thumb_func_start sub_020410F4
sub_020410F4: ; 0x020410F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0xa
	add r0, r4, #0
	bl sub_0203F098
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	str r0, [sp, #4]
	ldr r0, [r4, #0x38]
	mov r1, #0x30
	bl sub_02062570
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02069EB8
	add r6, r0, #0
	ldr r0, [r4, #0x38]
	ldr r1, _020411BC ; =0x021C07E0
	mov r2, #0
	strb r2, [r1]
	bl sub_02062C48
	ldr r0, [sp, #4]
	bl sub_02065684
	cmp r0, #0
	bne _02041148
	ldr r1, _020411BC ; =0x021C07E0
	mov r0, #1
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	ldr r0, [sp, #4]
	bl sub_02062DDC
_02041148:
	ldr r0, [r5, #0]
	bl sub_02062D1C
	cmp r0, #0
	beq _02041162
	ldr r1, _020411BC ; =0x021C07E0
	mov r0, #4
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	ldr r0, [r5, #0]
	bl sub_02062DDC
_02041162:
	cmp r7, #0
	beq _0204118E
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _0204118E
	add r0, r7, #0
	bl sub_02062D1C
	cmp r0, #0
	beq _0204118E
	ldr r1, _020411BC ; =0x021C07E0
	mov r0, #2
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	add r0, r7, #0
	bl sub_02062DDC
_0204118E:
	cmp r6, #0
	beq _020411AC
	add r0, r6, #0
	bl sub_02062D1C
	cmp r0, #0
	beq _020411AC
	ldr r1, _020411BC ; =0x021C07E0
	mov r0, #8
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	add r0, r6, #0
	bl sub_02062DDC
_020411AC:
	ldr r0, [sp]
	ldr r1, _020411C0 ; =sub_02041004
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020411BC: .word 0x021C07E0
_020411C0: .word sub_02041004
	thumb_func_end sub_020410F4

	thumb_func_start sub_020411C4
sub_020411C4: ; 0x020411C4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020411C4

	thumb_func_start sub_020411D4
sub_020411D4: ; 0x020411D4
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_0206251C
	bl sub_02062DD0
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020411D4

	thumb_func_start sub_020411F0
sub_020411F0: ; 0x020411F0
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_0206251C
	bl sub_02062DDC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020411F0

	thumb_func_start sub_0204120C
sub_0204120C: ; 0x0204120C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A4B4
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203A4BC
	str r0, [sp]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x38]
	ldr r3, [r3, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02061A74
	cmp r0, #0
	bne _0204124E
	bl sub_02022974
_0204124E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0204120C

	thumb_func_start sub_02041254
sub_02041254: ; 0x02041254
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0206251C
	cmp r0, #0
	bne _0204127E
	bl sub_02022974
	b _02041282
_0204127E:
	bl sub_02061B28
_02041282:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02041254

	thumb_func_start sub_02041288
sub_02041288: ; 0x02041288
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r1, [r0, #0x1c]
	add r2, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	ldr r0, [r0, #0x38]
	add r1, r6, #0
	bl sub_020619DC
	str r0, [r4, #0]
	bl sub_020642F8
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02062D80
	ldr r0, [r4, #0]
	bl sub_02063070
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r4, r0, #0
	ldr r1, [r1, #0x28]
	bl ov5_021E931C
	add r5, #0x80
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x24]
	bl sub_02020690
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02041288

	thumb_func_start sub_02041320
sub_02041320: ; 0x02041320
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02061AF4
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xff
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	bl sub_02063070
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r4, r0, #0
	ldr r1, [r1, #0x28]
	bl ov5_021E931C
	add r5, #0x80
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x24]
	bl sub_02020690
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041320

	thumb_func_start sub_02041364
sub_02041364: ; 0x02041364
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0203F098
	mov r1, #2
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	lsl r1, r1, #0xc
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r1, [r0, #0x1c]
	add r2, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	ldr r0, [r0, #0x38]
	add r1, r6, #0
	bl sub_020619DC
	str r0, [r4, #0]
	bl sub_020642F8
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02062D80
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02041364

	thumb_func_start sub_020413D8
sub_020413D8: ; 0x020413D8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02061AF4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020413D8

	thumb_func_start sub_020413F0
sub_020413F0: ; 0x020413F0
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	bl sub_0206447C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	bl sub_0203F098
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02041414
	mov r0, #0
	pop {r3, r4, r5, pc}
_02041414:
	add r1, r4, #0
	bl ov5_021ECDFC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020413F0

	thumb_func_start sub_02041420
sub_02041420: ; 0x02041420
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	strh r0, [r6]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02041420

	thumb_func_start sub_02041464
sub_02041464: ; 0x02041464
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063020
	strh r0, [r6]
	add r0, r5, #0
	bl sub_02063040
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02041464

	thumb_func_start sub_020414C4
sub_020414C4: ; 0x020414C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020414C4

	thumb_func_start sub_020414EC
sub_020414EC: ; 0x020414EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	cmp r7, #0
	beq _02041542
	lsl r0, r7, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02041550
_02041542:
	lsl r0, r7, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02041550:
	bl sub_020E1740
	str r0, [sp]
	cmp r6, #0
	beq _0204156C
	lsl r0, r6, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0204157A
_0204156C:
	lsl r0, r6, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0204157A:
	bl sub_020E1740
	str r0, [sp, #4]
	cmp r4, #0
	beq _02041596
	lsl r0, r4, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _020415A4
_02041596:
	lsl r0, r4, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_020415A4:
	bl sub_020E1740
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r1, sp, #0
	bl sub_020630AC
	add r5, #0x80
	ldr r1, [r5, #0]
	add r0, sp, #0
	ldr r1, [r1, #0x24]
	bl sub_02020990
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020414EC

	thumb_func_start sub_020415D0
sub_020415D0: ; 0x020415D0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	bl sub_02062E5C
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020415D0

	thumb_func_start sub_02041604
sub_02041604: ; 0x02041604
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020633A8
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02041604

	thumb_func_start sub_0204163C
sub_0204163C: ; 0x0204163C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	cmp r0, #0
	beq _0204167E
	bl sub_02062948
	strh r0, [r4]
_0204167E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204163C

	thumb_func_start sub_02041684
sub_02041684: ; 0x02041684
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x30
	ldr r0, [r0, #0x38]
	bl sub_02062570
	mov r1, #0xfe
	bl sub_020633C8
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02041684

	thumb_func_start sub_0204169C
sub_0204169C: ; 0x0204169C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CA1C
	bl sub_0202CBA8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204169C

	thumb_func_start sub_020416C8
sub_020416C8: ; 0x020416C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CA1C
	add r1, r6, #0
	bl sub_0202CBC8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020416C8

	thumb_func_start sub_02041708
sub_02041708: ; 0x02041708
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CA1C
	lsl r2, r4, #0x10
	add r1, r6, #0
	asr r2, r2, #0x10
	bl sub_0202CAE0
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02041708

	thumb_func_start sub_0204174C
sub_0204174C: ; 0x0204174C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	bl sub_02076AF8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204174C

	thumb_func_start sub_02041790
sub_02041790: ; 0x02041790
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r5, #0
	add r1, #0x80
	add r4, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	bl sub_0203D3C0
	str r0, [r4, #0]
	ldr r1, _020417BC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_020417BC: .word sub_02041D60
	thumb_func_end sub_02041790

	thumb_func_start sub_020417C0
sub_020417C0: ; 0x020417C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r5, #0
	add r1, #0x80
	add r4, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	bl sub_0203D3E4
	str r0, [r4, #0]
	ldr r1, _020417EC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_020417EC: .word sub_02041D60
	thumb_func_end sub_020417C0

	thumb_func_start sub_020417F0
sub_020417F0: ; 0x020417F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x20
	ldr r0, [r0, #0x10]
	bl sub_0203D50C
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020417F0

	thumb_func_start sub_02041814
sub_02041814: ; 0x02041814
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02041840
	bl sub_02022974
_02041840:
	ldr r0, [r4, #0]
	bl sub_0203D408
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #7
	bne _02041852
	mov r0, #0xff
	strh r0, [r5]
_02041852:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02041814

	thumb_func_start sub_02041860
sub_02041860: ; 0x02041860
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r7, [r4, #0]
	cmp r7, #0
	bne _020418A0
	bl sub_02022974
_020418A0:
	ldr r0, [r4, #0]
	bl sub_0203D408
	cmp r0, #7
	bne _020418B0
	mov r0, #0xff
	strh r0, [r5]
	b _020418D2
_020418B0:
	cmp r0, #6
	bne _020418D2
	add r0, r7, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r7, #0x2d
	strh r0, [r5]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	ldrb r0, [r7]
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #0
	beq _020418D2
	sub r0, r0, #1
	strh r0, [r6]
_020418D2:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02041860

	thumb_func_start sub_020418E0
sub_020418E0: ; 0x020418E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	ldr r4, [r6, #0]
	cmp r4, #0
	bne _02041934
	bl sub_02022974
_02041934:
	ldr r0, [r6, #0]
	bl sub_0203D408
	cmp r0, #7
	bne _02041944
	mov r0, #0xff
	strh r0, [r5]
	b _02041978
_02041944:
	cmp r0, #6
	bne _02041978
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	strh r0, [r5]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r1, [r0]
	ldr r0, [sp]
	add r4, #0x2e
	strh r1, [r0]
	ldrh r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	ldrb r0, [r4]
	strh r0, [r7]
	ldrh r0, [r7]
	cmp r0, #0
	beq _02041978
	sub r0, r0, #1
	strh r0, [r7]
_02041978:
	ldr r0, [r6, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020418E0

	thumb_func_start sub_02041984
sub_02041984: ; 0x02041984
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	ldr r4, [r6, #0]
	cmp r4, #0
	bne _020419D8
	bl sub_02022974
_020419D8:
	ldr r0, [r6, #0]
	bl sub_0203D408
	cmp r0, #7
	bne _020419E8
	mov r0, #0xff
	strh r0, [r5]
	b _02041A1C
_020419E8:
	cmp r0, #6
	bne _02041A1C
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	strh r0, [r5]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r1, [r0]
	ldr r0, [sp]
	add r4, #0x2e
	strh r1, [r0]
	ldrh r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	ldrb r0, [r4]
	strh r0, [r7]
	ldrh r0, [r7]
	cmp r0, #0
	beq _02041A1C
	sub r0, r0, #1
	strh r0, [r7]
_02041A1C:
	ldr r0, [r6, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02041984

	thumb_func_start sub_02041A28
sub_02041A28: ; 0x02041A28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r1, r5, #0
	str r6, [sp, #4]
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r2, [sp, #8]
	mov r0, #0x20
	add r3, r7, #0
	bl sub_0203D578
	str r0, [r4, #0]
	ldr r1, _02041AAC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02041AAC: .word sub_02041D60
	thumb_func_end sub_02041A28

	thumb_func_start sub_02041AB0
sub_02041AB0: ; 0x02041AB0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02041AF0
	bl sub_02022974
_02041AF0:
	ldr r0, [r4, #0]
	bl sub_0203D408
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #7
	bne _02041B02
	mov r0, #0xff
	strh r0, [r6]
_02041B02:
	ldr r0, [r4, #0]
	bl sub_0203D438
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #1
	bne _02041B14
	mov r0, #1
	b _02041B16
_02041B14:
	mov r0, #0
_02041B16:
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02041AB0

	thumb_func_start sub_02041B24
sub_02041B24: ; 0x02041B24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r5, #0
	add r1, #0x80
	add r2, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	bl sub_0203D5C8
	str r0, [r4, #0]
	ldr r1, _02041B64 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02041B64: .word sub_02041D60
	thumb_func_end sub_02041B24

	thumb_func_start sub_02041B68
sub_02041B68: ; 0x02041B68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02041B94
	bl sub_02022974
_02041B94:
	ldr r0, [r4, #0]
	bl sub_0203D440
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041B68

	thumb_func_start sub_02041BA8
sub_02041BA8: ; 0x02041BA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r5, #0
	add r1, #0x80
	add r3, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	add r2, r6, #0
	bl sub_0203E63C
	str r0, [r4, #0]
	ldr r1, _02041BFC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02041BFC: .word sub_02041D60
	thumb_func_end sub_02041BA8

	thumb_func_start sub_02041C00
sub_02041C00: ; 0x02041C00
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02041C2C
	bl sub_02022974
_02041C2C:
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0x16]
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041C00

	thumb_func_start sub_02041C40
sub_02041C40: ; 0x02041C40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	add r2, r7, #0
	bl ov5_021DBD98
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02041C40

	thumb_func_start sub_02041C8C
sub_02041C8C: ; 0x02041C8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02041C8C

	thumb_func_start sub_02041CB8
sub_02041CB8: ; 0x02041CB8
	mov r0, #0
	bx lr
	thumb_func_end sub_02041CB8

	thumb_func_start sub_02041CBC
sub_02041CBC: ; 0x02041CBC
	mov r0, #0
	bx lr
	thumb_func_end sub_02041CBC

	thumb_func_start sub_02041CC0
sub_02041CC0: ; 0x02041CC0
	mov r0, #1
	bx lr
	thumb_func_end sub_02041CC0

	thumb_func_start sub_02041CC4
sub_02041CC4: ; 0x02041CC4
	mov r0, #0
	bx lr
	thumb_func_end sub_02041CC4

	thumb_func_start sub_02041CC8
sub_02041CC8: ; 0x02041CC8
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x13
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	beq _02041CE6
	mov r0, #0
	pop {r3, r4, r5, pc}
_02041CE6:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041CC8

	thumb_func_start sub_02041CF4
sub_02041CF4: ; 0x02041CF4
	push {r4, r5, r6, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x13
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	ldr r6, [r4, #0]
	bl sub_020509B4
	cmp r0, #0
	beq _02041D14
	mov r0, #0
	pop {r4, r5, r6, pc}
_02041D14:
	ldr r0, [r6, #8]
	cmp r0, #1
	bne _02041D2C
	mov r0, #0xb
	bl sub_0202BCFC
	add r5, #0x9c
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	bl sub_0202B758
_02041D2C:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02041CF4

	thumb_func_start sub_02041D3C
sub_02041D3C: ; 0x02041D3C
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0209C238
	cmp r0, #0
	bne _02041D58
	mov r0, #0
	pop {r4, pc}
_02041D58:
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02041D3C

	thumb_func_start sub_02041D60
sub_02041D60: ; 0x02041D60
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020509B4
	cmp r0, #0
	bne _02041D72
	mov r0, #1
	pop {r3, pc}
_02041D72:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02041D60

	thumb_func_start sub_02041D78
sub_02041D78: ; 0x02041D78
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02055868
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02041D78

	thumb_func_start sub_02041D88
sub_02041D88: ; 0x02041D88
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02055820
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02041D88

	thumb_func_start sub_02041D98
sub_02041D98: ; 0x02041D98
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0202A750
	cmp r5, #0
	bne _02041DB6
	add r1, r4, #0
	bl sub_02029D10
	cmp r0, #0
	bne _02041DC4
	mov r0, #0
	pop {r3, r4, r5, pc}
_02041DB6:
	add r1, r4, #0
	bl sub_02029D2C
	cmp r0, #0
	bne _02041DC4
	mov r0, #0
	pop {r3, r4, r5, pc}
_02041DC4:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041D98

	thumb_func_start sub_02041DC8
sub_02041DC8: ; 0x02041DC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202A750
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02041D98
	cmp r0, #0
	bne _02041DEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02041DEC:
	ldr r0, [sp]
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	str r7, [r0, #0]
	str r4, [r0, #8]
	str r6, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02041DC8

	thumb_func_start sub_02041E18
sub_02041E18: ; 0x02041E18
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov5_021EAF50
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02041E18

	thumb_func_start sub_02041E28
sub_02041E28: ; 0x02041E28
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_0207DDC0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02041E28

	thumb_func_start sub_02041E34
sub_02041E34: ; 0x02041E34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldr r1, [r4, #0]
	ldr r1, [r1, #4]
	strh r1, [r0]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041E34

	thumb_func_start sub_02041E64
sub_02041E64: ; 0x02041E64
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_0203608C
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02041E64

	thumb_func_start sub_02041E84
sub_02041E84: ; 0x02041E84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r2, _02041F10 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0xb
	str r0, [sp]
	ldr r0, _02041F10 ; =0x000003D9
	mov r1, #3
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	str r4, [sp, #8]
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xa
	ldr r0, [r0, #8]
	mov r3, #5
	bl sub_0200EBF0
	add r5, #0x80
	str r0, [r6, #0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020451B4
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02041F10: .word 0x000003D9
	thumb_func_end sub_02041E84

	thumb_func_start sub_02041F14
sub_02041F14: ; 0x02041F14
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r2, _02041FA8 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0xb
	str r0, [sp]
	ldr r0, _02041FA8 ; =0x000003D9
	mov r1, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xa
	ldr r0, [r0, #8]
	mov r3, #5
	bl sub_0200EC48
	str r0, [r6, #0]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	add r5, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r5, #0]
	lsr r1, r1, #0x10
	bl sub_020451B4
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02041FA8: .word 0x000003D9
	thumb_func_end sub_02041F14

	thumb_func_start sub_02041FAC
sub_02041FAC: ; 0x02041FAC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #1
	strb r1, [r0]
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02041FAC

	thumb_func_start sub_02041FC4
sub_02041FC4: ; 0x02041FC4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #2
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02041FC4

	thumb_func_start sub_02041FDC
sub_02041FDC: ; 0x02041FDC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _02041FF4 ; =sub_02041FF8
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02041FF4: .word sub_02041FF8
	thumb_func_end sub_02041FDC

	thumb_func_start sub_02041FF8
sub_02041FF8: ; 0x02041FF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	ldr r0, [r4, #0]
	ldrb r0, [r0]
	cmp r0, #3
	beq _02042024
	mov r0, #1
	pop {r3, r4, r5, pc}
_02042024:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041FF8

	thumb_func_start sub_02042028
sub_02042028: ; 0x02042028
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0203F118
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	ldr r1, [r4, #0]
	bl ov5_021DB888
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02042028

	thumb_func_start sub_0204205C
sub_0204205C: ; 0x0204205C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0204209C
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02071CB4
	cmp r0, #0
	beq _02042092
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl ov8_0224C5DC
	cmp r0, #0
	bne _0204209C
_02042092:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl ov5_021DBED4
_0204209C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204205C

	thumb_func_start sub_020420A0
sub_020420A0: ; 0x020420A0
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_0209ACF4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020420A0

	thumb_func_start sub_020420AC
sub_020420AC: ; 0x020420AC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_0209B344
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020420AC

	thumb_func_start sub_020420CC
sub_020420CC: ; 0x020420CC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	ldr r2, [r5, #0]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r2, #0x10]
	ldr r2, [r2, #0xc]
	add r3, r4, #0
	bl sub_0203DAC0
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020420CC

	thumb_func_start sub_02042124
sub_02042124: ; 0x02042124
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r5, #0
	add r1, #0x80
	add r6, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0xb
	mov r2, #0
	add r3, r7, #0
	bl sub_02041DC8
	str r0, [r4, #0]
	cmp r0, #0
	bne _0204216C
	mov r0, #1
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_0204216C:
	mov r0, #0
	strh r0, [r6]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203DB24
	ldr r1, _02042188 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02042188: .word sub_02041CC8
	thumb_func_end sub_02042124

	thumb_func_start sub_0204218C
sub_0204218C: ; 0x0204218C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r5, #0
	add r1, #0x80
	add r6, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0xb
	mov r2, #1
	add r3, r7, #0
	bl sub_02041DC8
	str r0, [r4, #0]
	cmp r0, #0
	bne _020421D4
	mov r0, #1
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_020421D4:
	mov r0, #0
	strh r0, [r6]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203DB24
	ldr r1, _020421F0 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020421F0: .word sub_02041CC8
	thumb_func_end sub_0204218C

	thumb_func_start sub_020421F4
sub_020421F4: ; 0x020421F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, r6, #0
	bl sub_02041D98
	cmp r0, #1
	bne _02042228
	mov r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02042228:
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020421F4

	thumb_func_start sub_02042230
sub_02042230: ; 0x02042230
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #1
	add r2, r6, #0
	bl sub_02041D98
	cmp r0, #1
	bne _02042264
	mov r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02042264:
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02042230

	thumb_func_start sub_0204226C
sub_0204226C: ; 0x0204226C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	mov r1, #0
	bl sub_02029CA8
	add r1, r4, #0
	bl sub_0202A0A0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204226C

	thumb_func_start sub_0204229C
sub_0204229C: ; 0x0204229C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E224
	ldr r1, _020422B4 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020422B4: .word sub_02041D60
	thumb_func_end sub_0204229C

	thumb_func_start sub_020422B8
sub_020422B8: ; 0x020422B8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E704
	ldr r1, _020422D0 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020422D0: .word sub_02041D60
	thumb_func_end sub_020422B8

	thumb_func_start sub_020422D4
sub_020422D4: ; 0x020422D4
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x74]
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	bl sub_020980DC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020422D4

	thumb_func_start sub_020422E8
sub_020422E8: ; 0x020422E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	mov r1, #5
	add r4, r0, #0
	mov r0, #0xb
	lsl r1, r1, #6
	bl sub_02018144
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	mov r2, #2
	bl sub_0206B70C
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203D884
	ldr r1, _0204232C ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0204232C: .word sub_02041CC8
	thumb_func_end sub_020422E8

	thumb_func_start sub_02042330
sub_02042330: ; 0x02042330
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xb
	bl sub_02099674
	str r0, [r4, #0]
	ldr r1, _02042364 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02042364: .word sub_02041CC8
	thumb_func_end sub_02042330

	thumb_func_start sub_02042368
sub_02042368: ; 0x02042368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	mov r1, #4
	bl sub_0207D69C
	cmp r0, #0
	bne _0204239C
	mov r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204239C:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202AB28
	bl sub_0202AC98
	cmp r0, #0x64
	blo _020423B6
	mov r0, #2
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_020423B6:
	mov r0, #0
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042368

	thumb_func_start sub_020423BC
sub_020423BC: ; 0x020423BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	mov r2, #8
	str r0, [r6, #0]
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	strh r7, [r4, #4]
	strh r0, [r4, #6]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r6, #0]
	bl sub_0203D9D8
	ldr r1, _02042430 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02042430: .word sub_02041CC8
	thumb_func_end sub_020423BC

	thumb_func_start sub_02042434
sub_02042434: ; 0x02042434
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	str r1, [r0, #4]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203D754
	ldr r1, _0204247C ; =sub_02041CF4
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0204247C: .word sub_02041CF4
	thumb_func_end sub_02042434

	thumb_func_start sub_02042480
sub_02042480: ; 0x02042480
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203DDFC
	ldr r1, _02042498 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02042498: .word sub_02041D60
	thumb_func_end sub_02042480

	thumb_func_start sub_0204249C
sub_0204249C: ; 0x0204249C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02072204
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204249C

	thumb_func_start sub_020424AC
sub_020424AC: ; 0x020424AC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_0203DDDC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020424AC

	thumb_func_start sub_020424BC
sub_020424BC: ; 0x020424BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203DE34
	str r0, [r4, #0]
	ldr r1, _020424E4 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020424E4: .word sub_02041CC8
	thumb_func_end sub_020424BC

	thumb_func_start sub_020424E8
sub_020424E8: ; 0x020424E8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02052E58
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020424E8

	thumb_func_start sub_020424F8
sub_020424F8: ; 0x020424F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E244
	str r0, [r4, #0]
	ldr r1, _02042520 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02042520: .word sub_02041CC8
	thumb_func_end sub_020424F8

	thumb_func_start sub_02042524
sub_02042524: ; 0x02042524
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #4
	ldr r0, [r0, #0xc]
	add r2, sp, #0
	bl sub_0202444C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	mov r1, #0
	strh r1, [r0]
	ldr r1, [sp]
	cmp r1, #2
	bne _02042556
	mov r1, #1
	strh r1, [r0]
_02042556:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042524

	thumb_func_start sub_02042560
sub_02042560: ; 0x02042560
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _020425B4
	mov r0, #1
	strh r0, [r4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0203E0FC
	ldr r1, _020425BC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	b _020425B8
_020425B4:
	mov r0, #0
	strh r0, [r4]
_020425B8:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020425BC: .word sub_02041D60
	thumb_func_end sub_02042560

	thumb_func_start sub_020425C0
sub_020425C0: ; 0x020425C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_0207DDE0
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020425C0

	thumb_func_start sub_020425E0
sub_020425E0: ; 0x020425E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	str r0, [r4, #0]
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [r6, #4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203E0C0
	ldr r1, _02042624 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02042624: .word sub_02041D60
	thumb_func_end sub_020425E0

	thumb_func_start sub_02042628
sub_02042628: ; 0x02042628
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r1, [r4, #0]
	ldr r1, [r1, #0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B044
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042628

	thumb_func_start sub_02042658
sub_02042658: ; 0x02042658
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0204266C
	mov r0, #1
	b _0204266E
_0204266C:
	mov r0, #0
_0204266E:
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0204268A
	bl sub_02022974
_0204268A:
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0203D264
	str r0, [r6, #0]
	ldr r1, _020426A4 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020426A4: .word sub_02041D60
	thumb_func_end sub_02042658

	thumb_func_start sub_020426A8
sub_020426A8: ; 0x020426A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020426D4
	bl sub_02022974
_020426D4:
	ldr r0, [r4, #0]
	bl sub_0203D2C4
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020426A8

	thumb_func_start sub_020426E8
sub_020426E8: ; 0x020426E8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x74]
	add r2, r1, #0
	mov r3, #7
	bl sub_0203DFE8
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020426E8

	thumb_func_start sub_02042718
sub_02042718: ; 0x02042718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x75
	add r2, sp, #0xc
	add r7, r0, #0
	bl sub_02074470
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	str r6, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x74]
	mov r1, #1
	mov r3, #0xa
	bl sub_0203DFE8
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02042718

	thumb_func_start sub_02042784
sub_02042784: ; 0x02042784
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x74]
	mov r1, #6
	mov r3, #0xa
	bl sub_0203DFE8
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02042784

	thumb_func_start sub_020427B4
sub_020427B4: ; 0x020427B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0209C1EC
	str r0, [r4, #0]
	ldr r1, _020427DC ; =sub_02041D3C
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020427DC: .word sub_02041D3C
	thumb_func_end sub_020427B4

	thumb_func_start sub_020427E0
sub_020427E0: ; 0x020427E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_0205BE38
	add r5, r0, #0
	bl sub_02025FD4
	cmp r5, r0
	bne _02042806
	mov r0, #0
	b _02042808
_02042806:
	mov r0, #1
_02042808:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020427E0

	thumb_func_start sub_02042810
sub_02042810: ; 0x02042810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r2, r0, #0
	ldr r0, _02042864 ; =0x0000FFFF
	add r5, #0x80
	strh r0, [r2]
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x10]
	mov r3, #0
	bl sub_0203D80C
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02042864: .word 0x0000FFFF
	thumb_func_end sub_02042810

	thumb_func_start sub_02042868
sub_02042868: ; 0x02042868
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r3, r0, #0
	ldr r0, _020428D0 ; =0x0000FFFF
	add r5, #0x80
	strh r0, [r4]
	strh r0, [r3]
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x10]
	add r2, r4, #0
	bl sub_0203D80C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020428D0: .word 0x0000FFFF
	thumb_func_end sub_02042868

	thumb_func_start sub_020428D4
sub_020428D4: ; 0x020428D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl sub_0200BE48
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020428D4

	thumb_func_start sub_02042918
sub_02042918: ; 0x02042918
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r4, [sp]
	add r3, r0, #0
	str r6, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r7, #0
	add r2, r7, #0
	bl sub_0200F174
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02042918

	thumb_func_start sub_02042960
sub_02042960: ; 0x02042960
	push {r3, lr}
	ldr r1, _0204296C ; =sub_02042970
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0204296C: .word sub_02042970
	thumb_func_end sub_02042960

	thumb_func_start sub_02042970
sub_02042970: ; 0x02042970
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #1
	bne _0204297E
	mov r0, #1
	pop {r3, pc}
_0204297E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02042970

	thumb_func_start sub_02042984
sub_02042984: ; 0x02042984
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r4, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	mvn r2, r2
	add r3, r7, #0
	bl sub_02053A80
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02042984

	thumb_func_start sub_020429F4
sub_020429F4: ; 0x020429F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r4, [sp]
	mov r2, #0
	add r5, #0x80
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x10]
	mvn r2, r2
	add r3, r7, #0
	bl sub_02054800
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020429F4

	thumb_func_start sub_02042A50
sub_02042A50: ; 0x02042A50
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02054864
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02042A50

	thumb_func_start sub_02042A60
sub_02042A60: ; 0x02042A60
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A728
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldr r1, [r5, #0]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042A60

	thumb_func_start sub_02042A8C
sub_02042A8C: ; 0x02042A8C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	ldr r1, [r4, #0]
	ldr r1, [r1, #0x1c]
	ldr r1, [r1, #0]
	strh r1, [r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02042A8C

	thumb_func_start sub_02042AB0
sub_02042AB0: ; 0x02042AB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	add r2, r4, #0
	bl ov5_021E0734
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042AB0

	thumb_func_start sub_02042AE0
sub_02042AE0: ; 0x02042AE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205F16C
	cmp r0, #1
	bne _02042B0E
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	b _02042B1A
_02042B0E:
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA94
_02042B1A:
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl ov5_021E00EC
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042AE0

	thumb_func_start sub_02042B3C
sub_02042B3C: ; 0x02042B3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	add r2, r4, #0
	bl ov5_021E0998
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042B3C

	thumb_func_start sub_02042B6C
sub_02042B6C: ; 0x02042B6C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r5, #0x80
	ldr r0, [r5, #0]
	add r1, r4, #0
	sub r2, r2, #2
	add r3, r6, #0
	bl sub_02053AB4
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02042B6C

	thumb_func_start sub_02042BB8
sub_02042BB8: ; 0x02042BB8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r5, r0, #0
	mov r1, #0
	bl sub_0203A754
	add r0, r5, #0
	bl sub_0203A74C
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F7C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02042BB8

	thumb_func_start sub_02042BE8
sub_02042BE8: ; 0x02042BE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r5, r0, #0
	mov r1, #0
	bl sub_0203A754
	add r0, r5, #0
	bl sub_0203A74C
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F7C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02042BE8

	thumb_func_start sub_02042C18
sub_02042C18: ; 0x02042C18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB98
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	add r2, r6, #0
	bl ov6_02243F88
	str r0, [r4, #0]
	ldr r1, _02042C7C ; =sub_02042C80
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02042C7C: .word sub_02042C80
	thumb_func_end sub_02042C18

	thumb_func_start sub_02042C80
sub_02042C80: ; 0x02042C80
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov6_02243FBC
	cmp r0, #1
	bne _02042CA2
	ldr r0, [r4, #0]
	bl ov6_02243FC8
	mov r0, #1
	pop {r4, pc}
_02042CA2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02042C80

	thumb_func_start sub_02042CA8
sub_02042CA8: ; 0x02042CA8
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl ov5_021E0DD4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02042CA8

	thumb_func_start sub_02042CB4
sub_02042CB4: ; 0x02042CB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _02042CDC
	mov r0, #1
	b _02042CDE
_02042CDC:
	mov r0, #0
_02042CDE:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042CB4

	thumb_func_start sub_02042CE4
sub_02042CE4: ; 0x02042CE4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	add r0, r1, #1
	str r0, [r4, #8]
	ldrb r0, [r1]
	cmp r0, #1
	bne _02042D2C
	add r0, r4, #0
	add r0, #0x80
	mov r1, #0x12
	ldr r0, [r0, #0]
	lsl r1, r1, #6
	bl sub_020553F0
	add r0, r4, #0
	add r0, #0x80
	mov r1, #0x12
	ldr r0, [r0, #0]
	lsl r1, r1, #6
	mov r2, #1
	bl sub_02055554
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB54
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB5C
	b _02042D6C
_02042D2C:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB54
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB5C
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_020553F0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_02055428
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #1
	bl sub_02055554
_02042D6C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02042CE4

	thumb_func_start sub_02042D70
sub_02042D70: ; 0x02042D70
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, _02042D80 ; =0x000004A5
	bl sub_020553F0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02042D80: .word 0x000004A5
	thumb_func_end sub_02042D70

	thumb_func_start sub_02042D84
sub_02042D84: ; 0x02042D84
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldrb r1, [r2]
	ldr r0, [r0, #0x3c]
	bl sub_0205EFC4
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02042D84

	thumb_func_start sub_02042D9C
sub_02042D9C: ; 0x02042D9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02042D9C

	thumb_func_start sub_02042DC4
sub_02042DC4: ; 0x02042DC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB84
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02042DC4

	thumb_func_start sub_02042DDC
sub_02042DDC: ; 0x02042DDC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB5C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02042DDC

	thumb_func_start sub_02042DEC
sub_02042DEC: ; 0x02042DEC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0202D814
	add r1, r6, #0
	add r2, r4, #0
	bl ov6_0224322C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02042DEC

	thumb_func_start sub_02042E38
sub_02042E38: ; 0x02042E38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B054
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02042E38

	thumb_func_start sub_02042E64
sub_02042E64: ; 0x02042E64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #8
	add r0, r4, #0
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #3
	bl sub_0203F098
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [sp]
	ldr r2, [r6, #0]
	mov r3, #0xb
	bl sub_020792F8
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F098
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	ldr r1, [r6, #0]
	add r0, r4, #0
	mov r3, #1
	bl sub_0205D994
	strb r0, [r7]
	ldr r1, _02042F00 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02042F00: .word sub_02040014
	thumb_func_end sub_02042E64

	thumb_func_start sub_02042F04
sub_02042F04: ; 0x02042F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov7_0224B414
	ldr r1, _02042F70 ; =sub_02042F74
	add r0, r5, #0
	str r6, [r5, #0x64]
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02042F70: .word sub_02042F74
	thumb_func_end sub_02042F04

	thumb_func_start sub_02042F74
sub_02042F74: ; 0x02042F74
	push {r4, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	bl ov7_0224B460
	cmp r0, #0
	bne _02042F94
	mov r0, #0
	pop {r4, pc}
_02042F94:
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02042F74

	thumb_func_start sub_02042F9C
sub_02042F9C: ; 0x02042F9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov7_0224B47C
	ldr r1, _02043008 ; =sub_0204300C
	add r0, r5, #0
	str r6, [r5, #0x64]
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02043008: .word sub_0204300C
	thumb_func_end sub_02042F9C

	thumb_func_start sub_0204300C
sub_0204300C: ; 0x0204300C
	push {r4, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	bl ov7_0224B4C8
	cmp r0, #0
	bne _0204302C
	mov r0, #0
	pop {r4, pc}
_0204302C:
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204300C

	thumb_func_start sub_02043034
sub_02043034: ; 0x02043034
	push {r3, lr}
	bl sub_0203E838
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043034

	thumb_func_start sub_02043040
sub_02043040: ; 0x02043040
	push {r3, lr}
	bl sub_0203E838
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043040

	thumb_func_start sub_0204304C
sub_0204304C: ; 0x0204304C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	add r5, #0x80
	ldr r4, [r6, #0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x10]
	add r1, #0x2c
	mov r2, #5
	bl sub_0205167C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204304C

	thumb_func_start sub_0204307C
sub_0204307C: ; 0x0204307C
	mov r0, #1
	bx lr
	thumb_func_end sub_0204307C

	thumb_func_start sub_02043080
sub_02043080: ; 0x02043080
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r1, sp, #0
	bl sub_0203A734
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02043080

	thumb_func_start sub_02043100
sub_02043100: ; 0x02043100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	ldr r0, [r0, #0]
	bl ov5_021DCCC8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043100

	thumb_func_start sub_02043130
sub_02043130: ; 0x02043130
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	str r0, [sp, #8]
	bl sub_0203F098
	add r7, r0, #0
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r6, [r0]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	ldr r1, [r7, #0]
	ldr r3, [sp, #0xc]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r4, #0
	bl ov5_021DCB24
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043130

	thumb_func_start sub_02043190
sub_02043190: ; 0x02043190
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026EAC
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043190

	thumb_func_start sub_020431C0
sub_020431C0: ; 0x020431C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026E64
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020431C0

	thumb_func_start sub_020431F0
sub_020431F0: ; 0x020431F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026E0C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020431F0

	thumb_func_start sub_02043220
sub_02043220: ; 0x02043220
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026DD0
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043220

	thumb_func_start sub_02043250
sub_02043250: ; 0x02043250
	mov r0, #0
	bx lr
	thumb_func_end sub_02043250

	thumb_func_start sub_02043254
sub_02043254: ; 0x02043254
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	ldr r1, [r5, #8]
	str r0, [sp]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	cmp r6, #0
	bne _020432BA
	add r0, r7, #0
	bl sub_02026F58
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xa
	bl sub_0206AF3C
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0205E078
	b _020432D4
_020432BA:
	add r0, r7, #0
	bl sub_02026F20
	add r5, r0, #0
	ldr r0, [sp]
	bl sub_02025F30
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0205E0E4
_020432D4:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043254

	thumb_func_start sub_020432DC
sub_020432DC: ; 0x020432DC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_02051270
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020432DC

	thumb_func_start sub_02043330
sub_02043330: ; 0x02043330
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_02051270
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043330

	thumb_func_start sub_02043384
sub_02043384: ; 0x02043384
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_02051ABC
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043384

	thumb_func_start sub_020433D8
sub_020433D8: ; 0x020433D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_020512E4
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020433D8

	thumb_func_start sub_0204342C
sub_0204342C: ; 0x0204342C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0xb
	add r3, r4, #0
	bl sub_02051480
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204342C

	thumb_func_start sub_02043460
sub_02043460: ; 0x02043460
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_02051590
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02043460

	thumb_func_start sub_0204346C
sub_0204346C: ; 0x0204346C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov5_021EFBDC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204346C

	thumb_func_start sub_0204347C
sub_0204347C: ; 0x0204347C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021EFB94
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204347C

	thumb_func_start sub_020434A4
sub_020434A4: ; 0x020434A4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_0205120C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020434A4

	thumb_func_start sub_020434C0
sub_020434C0: ; 0x020434C0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov5_021EFC90
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020434C0

	thumb_func_start sub_020434D0
sub_020434D0: ; 0x020434D0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E0D0
	ldr r1, _020434E8 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020434E8: .word sub_02041D60
	thumb_func_end sub_020434D0

	thumb_func_start sub_020434EC
sub_020434EC: ; 0x020434EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r5, [r1, #0xc]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020247E0
	cmp r0, #0
	beq _02043518
	mov r0, #0
	strh r0, [r4]
	b _0204353C
_02043518:
	add r0, r5, #0
	bl sub_020247C0
	cmp r0, #0
	bne _02043528
	mov r0, #1
	strh r0, [r4]
	b _0204353C
_02043528:
	add r0, r5, #0
	bl sub_02024800
	cmp r0, #0
	beq _02043538
	mov r0, #2
	strh r0, [r4]
	b _0204353C
_02043538:
	mov r0, #3
	strh r0, [r4]
_0204353C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020434EC

	thumb_func_start sub_02043540
sub_02043540: ; 0x02043540
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021E200C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043540

	thumb_func_start sub_02043568
sub_02043568: ; 0x02043568
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025340
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02043568

	thumb_func_start sub_02043578
sub_02043578: ; 0x02043578
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020247C8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043578

	thumb_func_start sub_020435A0
sub_020435A0: ; 0x020435A0
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl ov5_021DDBC8
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020435A0

	thumb_func_start sub_020435AC
sub_020435AC: ; 0x020435AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020567E0
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020435AC

	thumb_func_start sub_020435DC
sub_020435DC: ; 0x020435DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02056B24
	add r1, r5, #0
	bl sub_020567F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020435DC

	thumb_func_start sub_02043608
sub_02043608: ; 0x02043608
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r1, r6, #0
	bl sub_020567E8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02043608

	thumb_func_start sub_02043648
sub_02043648: ; 0x02043648
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [r4, #0x64]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020364F0
	ldr r1, _02043674 ; =sub_02043678
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02043674: .word sub_02043678
	thumb_func_end sub_02043648

	thumb_func_start sub_02043678
sub_02043678: ; 0x02043678
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E18
	cmp r0, #2
	bge _02043688
	mov r0, #1
	pop {r4, pc}
_02043688:
	ldr r0, [r4, #0x64]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	pop {r4, pc}
	thumb_func_end sub_02043678

	thumb_func_start sub_02043694
sub_02043694: ; 0x02043694
	push {r3, lr}
	bl sub_020365F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043694

	thumb_func_start sub_020436A0
sub_020436A0: ; 0x020436A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0205BC50
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020436A0

	thumb_func_start sub_020436D0
sub_020436D0: ; 0x020436D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r1, r0, #0
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r1, [r1, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205BF44
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020436D0

	thumb_func_start sub_02043708
sub_02043708: ; 0x02043708
	push {r4, lr}
	bl sub_0203E838
	add r4, r0, #0
	cmp r4, #5
	beq _02043728
	cmp r4, #7
	beq _02043728
	cmp r4, #9
	beq _02043728
	cmp r4, #6
	beq _02043728
	cmp r4, #0xc
	beq _02043728
	cmp r4, #0xa
	bne _0204372E
_02043728:
	bl sub_02036BC8
	b _02043736
_0204372E:
	cmp r4, #0xb
	bne _02043736
	bl sub_02036BD8
_02043736:
	bl sub_0203608C
	cmp r0, #0
	bne _02043744
	add r0, r4, #0
	bl sub_0205BEA8
_02043744:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02043708

	thumb_func_start sub_02043748
sub_02043748: ; 0x02043748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, #0x80
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	bl sub_0203D174
	bl sub_02014EC4
	add r5, r0, #0
	cmp r4, #0
	bne _0204379E
	ldr r0, [r7, #0]
	bl sub_02062910
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	b _020437A0
_0204379E:
	mov r2, #0
_020437A0:
	str r5, [sp]
	ldr r0, [r6, #0]
	ldr r3, [sp, #4]
	add r1, r4, #0
	bl sub_0205C040
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043748

	thumb_func_start sub_020437B4
sub_020437B4: ; 0x020437B4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02099514
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020437B4

	thumb_func_start sub_020437C4
sub_020437C4: ; 0x020437C4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0205C2B0
	bl sub_02036AC4
	ldr r1, _020437E4 ; =sub_020437E8
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020437E4: .word sub_020437E8
	thumb_func_end sub_020437C4

	thumb_func_start sub_020437E8
sub_020437E8: ; 0x020437E8
	push {r3, lr}
	bl sub_02035E18
	cmp r0, #2
	bge _020437F6
	mov r0, #1
	pop {r3, pc}
_020437F6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020437E8

	thumb_func_start sub_020437FC
sub_020437FC: ; 0x020437FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl sub_02062910
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r2, [sp]
	ldr r0, [r0, #0x7c]
	ldr r3, [r7, #0]
	bl sub_0205BCF4
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020437FC

	thumb_func_start sub_02043854
sub_02043854: ; 0x02043854
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205BA7C
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0204388E
	add r5, #0x80
	ldr r0, [r5, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_020181C4
_0204388E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043854

	thumb_func_start sub_02043894
sub_02043894: ; 0x02043894
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xa
	add r0, r5, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r6, #0]
	bl sub_02062910
	add r1, r0, #0
	ldr r0, [r5, #0x7c]
	bl sub_0205B780
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02043894

	thumb_func_start sub_020438CC
sub_020438CC: ; 0x020438CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xa
	add r0, r5, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r6, #0]
	bl sub_02062910
	add r1, r0, #0
	ldr r0, [r5, #0x7c]
	add r2, r7, #0
	bl sub_0205B804
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020438CC

	thumb_func_start sub_0204391C
sub_0204391C: ; 0x0204391C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _02043934 ; =sub_02043938
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02043934: .word sub_02043938
	thumb_func_end sub_0204391C

	thumb_func_start sub_02043938
sub_02043938: ; 0x02043938
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	ldr r0, [r5, #0x7c]
	bl sub_0205B8D8
	ldr r1, [r6, #0x64]
	add r4, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0203F118
	cmp r4, #0
	bne _0204395C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0204395C:
	strh r4, [r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043938

	thumb_func_start sub_02043964
sub_02043964: ; 0x02043964
	push {r3, lr}
	add r0, #0x80
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x38]
	add r1, #0x80
	ldr r1, [r1, #0]
	bl sub_0205C820
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02043964

	thumb_func_start sub_02043978
sub_02043978: ; 0x02043978
	push {r3, lr}
	mov r0, #4
	bl sub_0205BEA8
	bl sub_02036BA0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02043978

	thumb_func_start sub_02043988
sub_02043988: ; 0x02043988
	push {r3, lr}
	bl sub_02036BD8
	bl sub_02036AC4
	mov r0, #0
	bl sub_0205BEA8
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02043988

	thumb_func_start sub_0204399C
sub_0204399C: ; 0x0204399C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0x7c]
	add r1, r6, #0
	bl sub_0205B930
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204399C

	thumb_func_start sub_020439D8
sub_020439D8: ; 0x020439D8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _020439F0 ; =sub_020439F4
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_020439F0: .word sub_020439F4
	thumb_func_end sub_020439D8

	thumb_func_start sub_020439F4
sub_020439F4: ; 0x020439F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205B8DC
	cmp r0, #1
	blo _02043A28
	add r5, #0x80
	strh r0, [r4]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205C154
	mov r0, #1
	pop {r3, r4, r5, pc}
_02043A28:
	mov r0, #0
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020439F4

	thumb_func_start sub_02043A30
sub_02043A30: ; 0x02043A30
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _02043A48 ; =sub_02043A4C
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02043A48: .word sub_02043A4C
	thumb_func_end sub_02043A30

	thumb_func_start sub_02043A4C
sub_02043A4C: ; 0x02043A4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205B91C
	ldr r1, _02043A90 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	beq _02043A82
	add r5, #0x80
	ldr r0, [r5, #0]
	mov r1, #8
	ldr r0, [r0, #0x7c]
	bl sub_0205B9EC
_02043A82:
	cmp r0, #0
	beq _02043A8C
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02043A8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02043A90: .word 0x021BF67C
	thumb_func_end sub_02043A4C

	thumb_func_start sub_02043A94
sub_02043A94: ; 0x02043A94
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02054708
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02043A94

	thumb_func_start sub_02043AA4
sub_02043AA4: ; 0x02043AA4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025F20
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02025F30
	add r1, r0, #0
	ldr r2, [r4, #0]
	add r0, r6, #0
	bl sub_0205C980
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043AA4

	thumb_func_start sub_02043AE0
sub_02043AE0: ; 0x02043AE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025F20
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0205C9BC
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02025F30
	ldrh r1, [r4]
	mov r2, #2
	bl sub_0205CA14
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043AE0

	thumb_func_start sub_02043B48
sub_02043B48: ; 0x02043B48
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025F20
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0205C9BC
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043B48

	thumb_func_start sub_02043BA0
sub_02043BA0: ; 0x02043BA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02025F90
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043BA0

	thumb_func_start sub_02043BD4
sub_02043BD4: ; 0x02043BD4
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_02052C5C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02043BD4

	thumb_func_start sub_02043BE0
sub_02043BE0: ; 0x02043BE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r1, r4, #0
	bl sub_0203A764
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043BE0

	thumb_func_start sub_02043C0C
sub_02043C0C: ; 0x02043C0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025F30
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043C0C

	thumb_func_start sub_02043C3C
sub_02043C3C: ; 0x02043C3C
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_02050A60
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_02097284
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043C3C

	thumb_func_start sub_02043C54
sub_02043C54: ; 0x02043C54
	mov r0, #0
	bx lr
	thumb_func_end sub_02043C54

	thumb_func_start sub_02043C58
sub_02043C58: ; 0x02043C58
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205987C
	ldr r1, _02043C6C ; =sub_02043C70
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02043C6C: .word sub_02043C70
	thumb_func_end sub_02043C58

	thumb_func_start sub_02043C70
sub_02043C70: ; 0x02043C70
	push {r3, lr}
	bl sub_02036780
	cmp r0, #1
	beq _02043C86
	bl sub_02033E1C
	cmp r0, #1
	beq _02043C86
	mov r0, #1
	pop {r3, pc}
_02043C86:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043C70

	thumb_func_start sub_02043C8C
sub_02043C8C: ; 0x02043C8C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020598A0
	ldr r1, _02043CA0 ; =sub_02043C70
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02043CA0: .word sub_02043C70
	thumb_func_end sub_02043C8C

	thumb_func_start sub_02043CA4
sub_02043CA4: ; 0x02043CA4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020597B4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043CA4

	thumb_func_start sub_02043CB4
sub_02043CB4: ; 0x02043CB4
	push {r3, lr}
	bl sub_0203E838
	bl sub_020593F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043CB4

	thumb_func_start sub_02043CC4
sub_02043CC4: ; 0x02043CC4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	add r1, r6, #0
	bl sub_0207D69C
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02043CC4

	thumb_func_start sub_02043D04
sub_02043D04: ; 0x02043D04
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r3, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203A4C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043D04

	thumb_func_start sub_02043D54
sub_02043D54: ; 0x02043D54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r5, r0, #0
	add r1, r7, #0
	str r4, [sp]
	bl sub_02063340
	add r0, r5, #0
	bl sub_020642F8
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043D54

	thumb_func_start sub_02043DE4
sub_02043DE4: ; 0x02043DE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0203A52C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043DE4

	thumb_func_start sub_02043E1C
sub_02043E1C: ; 0x02043E1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0203A4FC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043E1C

	thumb_func_start sub_02043E54
sub_02043E54: ; 0x02043E54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r3, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203A55C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043E54

	thumb_func_start sub_02043EA4
sub_02043EA4: ; 0x02043EA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r3, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203A594
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043EA4

	thumb_func_start sub_02043EF4
sub_02043EF4: ; 0x02043EF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	bne _02043F32
	bl sub_02022974
_02043F32:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ECDFC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043EF4

	thumb_func_start sub_02043F40
sub_02043F40: ; 0x02043F40
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xc
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _02043F68
	strh r0, [r1]
_02043F68:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043F40

	thumb_func_start sub_02043F6C
sub_02043F6C: ; 0x02043F6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	lsl r1, r4, #5
	ldr r3, [r5, #8]
	add r2, r0, #0
	add r0, r3, #1
	str r0, [r5, #8]
	add r5, #0x80
	lsl r4, r6, #5
	ldrb r3, [r3]
	ldr r0, [r5, #0]
	add r1, r7, r1
	add r2, r2, r4
	bl ov5_021D4BF4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043F6C

	thumb_func_start sub_02043FC4
sub_02043FC4: ; 0x02043FC4
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021D4D48
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043FC4

	thumb_func_start sub_02043FDC
sub_02043FDC: ; 0x02043FDC
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021D4D68
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043FDC

	thumb_func_start sub_02043FF4
sub_02043FF4: ; 0x02043FF4
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021D4C88
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043FF4

	thumb_func_start sub_0204400C
sub_0204400C: ; 0x0204400C
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021D4CEC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204400C

	thumb_func_start sub_02044024
sub_02044024: ; 0x02044024
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071B10
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044024

	thumb_func_start sub_02044034
sub_02044034: ; 0x02044034
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov8_0224997C
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044034

	thumb_func_start sub_02044044
sub_02044044: ; 0x02044044
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071C18
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044044

	thumb_func_start sub_02044054
sub_02044054: ; 0x02044054
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov8_02249FB8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044054

	thumb_func_start sub_02044064
sub_02044064: ; 0x02044064
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071B30
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044064

	thumb_func_start sub_02044074
sub_02044074: ; 0x02044074
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071BF8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044074

	thumb_func_start sub_02044084
sub_02044084: ; 0x02044084
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl sub_02071B6C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044084

	thumb_func_start sub_020440A0
sub_020440A0: ; 0x020440A0
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl ov8_0224AD34
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020440A0

	thumb_func_start sub_020440BC
sub_020440BC: ; 0x020440BC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071BD0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020440BC

	thumb_func_start sub_020440CC
sub_020440CC: ; 0x020440CC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071C34
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020440CC

	thumb_func_start sub_020440DC
sub_020440DC: ; 0x020440DC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071C5C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020440DC

	thumb_func_start sub_020440EC
sub_020440EC: ; 0x020440EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02063020
	strh r0, [r6]
	add r0, r4, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	strh r0, [r7]
	add r0, r4, #0
	bl sub_02063040
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020440EC

	thumb_func_start sub_02044158
sub_02044158: ; 0x02044158
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E2FC
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044158

	thumb_func_start sub_02044168
sub_02044168: ; 0x02044168
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r0, [r5, #0x64]
	ldr r0, [r6, #0]
	bl sub_02062910
	add r1, r5, #0
	add r1, #0x80
	add r2, r0, #0
	ldr r1, [r1, #0]
	add r0, r7, #0
	bl ov23_02252C98
	str r0, [r4, #0]
	ldr r1, _020441C4 ; =sub_020441C8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020441C4: .word sub_020441C8
	thumb_func_end sub_02044168

	thumb_func_start sub_020441C8
sub_020441C8: ; 0x020441C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov23_02252C70
	strh r0, [r5]
	ldrh r1, [r5]
	ldr r0, _02044204 ; =0x0000FFFE
	cmp r1, r0
	beq _020441FE
	mov r0, #1
	pop {r3, r4, r5, pc}
_020441FE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02044204: .word 0x0000FFFE
	thumb_func_end sub_020441C8

	thumb_func_start sub_02044208
sub_02044208: ; 0x02044208
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	bl ov23_02252C9C
	strb r0, [r4]
	ldr r1, _0204423C ; =sub_02044240
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204423C: .word sub_02044240
	thumb_func_end sub_02044208

	thumb_func_start sub_02044240
sub_02044240: ; 0x02044240
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0203F098
	ldrb r0, [r0]
	bl sub_0205DA04
	pop {r3, pc}
	thumb_func_end sub_02044240

	thumb_func_start sub_02044254
sub_02044254: ; 0x02044254
	push {r3, lr}
	bl ov23_02252CD4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044254

	thumb_func_start sub_02044260
sub_02044260: ; 0x02044260
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r5, [r2]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02252CE0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044260

	thumb_func_start sub_02044288
sub_02044288: ; 0x02044288
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r5, [r2]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02252CF4
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044288

	thumb_func_start sub_020442B0
sub_020442B0: ; 0x020442B0
	mov r0, #1
	bx lr
	thumb_func_end sub_020442B0

	thumb_func_start sub_020442B4
sub_020442B4: ; 0x020442B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0206251C
	add r4, r0, #0
	bne _020442DC
	bl sub_02022974
_020442DC:
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D64
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020442B4

	thumb_func_start sub_020442E8
sub_020442E8: ; 0x020442E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0206251C
	add r4, r0, #0
	bne _02044310
	bl sub_02022974
_02044310:
	add r0, r4, #0
	mov r1, #1
	bl sub_02062D64
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020442E8

	thumb_func_start sub_0204431C
sub_0204431C: ; 0x0204431C
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_020736D8
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0204431C

	thumb_func_start sub_02044328
sub_02044328: ; 0x02044328
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02028430
	mov r1, #0
	bl sub_02028494
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044328

	thumb_func_start sub_02044354
sub_02044354: ; 0x02044354
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_020703FC
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02044354

	thumb_func_start sub_02044374
sub_02044374: ; 0x02044374
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02055BA8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044374

	thumb_func_start sub_02044398
sub_02044398: ; 0x02044398
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	bl sub_0201D2E8
	add r1, r5, #0
	bl sub_020E1F6C
	strh r1, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044398

	thumb_func_start sub_020443D0
sub_020443D0: ; 0x020443D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	bl sub_0201D2E8
	add r1, r5, #0
	bl sub_020E1F6C
	strh r1, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020443D0

	thumb_func_start sub_02044408
sub_02044408: ; 0x02044408
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021EE920
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02044408

	thumb_func_start sub_02044444
sub_02044444: ; 0x02044444
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EE9BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044444

	thumb_func_start sub_02044468
sub_02044468: ; 0x02044468
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r3, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov5_021EEA84
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02044468

	thumb_func_start sub_020444BC
sub_020444BC: ; 0x020444BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r3, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov5_021EEA54
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020444BC

	thumb_func_start sub_02044510
sub_02044510: ; 0x02044510
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #0x82
	lsl r1, r1, #8
	bl sub_0206B0C4
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044510

	thumb_func_start sub_02044528
sub_02044528: ; 0x02044528
	push {r4, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #1
	bl sub_0206AF2C
	ldr r0, [r4, #0xc]
	bl sub_0202B628
	mov r1, #1
	bl sub_0202B634
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_02053494
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02044528

	thumb_func_start sub_02044558
sub_02044558: ; 0x02044558
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, r0, #0
	add r0, r7, #0
	sub r0, #0x10
	cmp r0, #0x18
	bhi _02044654
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020445DA: ; jump table
	.short _0204460C - _020445DA - 2 ; case 0
	.short _02044618 - _020445DA - 2 ; case 1
	.short _02044624 - _020445DA - 2 ; case 2
	.short _02044632 - _020445DA - 2 ; case 3
	.short _02044654 - _020445DA - 2 ; case 4
	.short _02044632 - _020445DA - 2 ; case 5
	.short _02044632 - _020445DA - 2 ; case 6
	.short _02044632 - _020445DA - 2 ; case 7
	.short _02044632 - _020445DA - 2 ; case 8
	.short _02044632 - _020445DA - 2 ; case 9
	.short _02044632 - _020445DA - 2 ; case 10
	.short _02044654 - _020445DA - 2 ; case 11
	.short _02044654 - _020445DA - 2 ; case 12
	.short _02044654 - _020445DA - 2 ; case 13
	.short _02044654 - _020445DA - 2 ; case 14
	.short _02044654 - _020445DA - 2 ; case 15
	.short _02044654 - _020445DA - 2 ; case 16
	.short _02044654 - _020445DA - 2 ; case 17
	.short _02044654 - _020445DA - 2 ; case 18
	.short _02044654 - _020445DA - 2 ; case 19
	.short _02044646 - _020445DA - 2 ; case 20
	.short _02044646 - _020445DA - 2 ; case 21
	.short _02044646 - _020445DA - 2 ; case 22
	.short _02044646 - _020445DA - 2 ; case 23
	.short _02044646 - _020445DA - 2 ; case 24
_0204460C:
	mov r0, #4
	mov r6, #1
	bl sub_0202BDD4
	str r0, [r5, #0]
	b _02044658
_02044618:
	mov r0, #4
	mov r6, #1
	bl sub_0202BDE0
	str r0, [r5, #0]
	b _02044658
_02044624:
	ldr r0, [sp]
	mov r1, #4
	mov r6, #1
	bl sub_0202BDEC
	str r0, [r5, #0]
	b _02044658
_02044632:
	sub r7, #0x13
	lsl r0, r7, #0x18
	ldr r1, [sp]
	lsr r0, r0, #0x18
	mov r2, #4
	mov r6, #1
	bl sub_0202BE00
	str r0, [r5, #0]
	b _02044658
_02044646:
	mov r0, #4
	add r1, r7, #0
	mov r6, #1
	bl sub_0202BE2C
	str r0, [r5, #0]
	b _02044658
_02044654:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02044658:
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r2, r6, #0
	bl sub_0202B758
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02044558

	thumb_func_start sub_0204466C
sub_0204466C: ; 0x0204466C
	mov r0, #0
	bx lr
	thumb_func_end sub_0204466C

	thumb_func_start sub_02044670
sub_02044670: ; 0x02044670
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029E2C
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02044670

	thumb_func_start sub_020446B4
sub_020446B4: ; 0x020446B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02029D50
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020446B4

	thumb_func_start sub_02044710
sub_02044710: ; 0x02044710
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r7, #0
	bl sub_02029D94
	cmp r6, r0
	bhi _0204476A
	mov r0, #1
	b _0204476C
_0204476A:
	mov r0, #0
_0204476C:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02044710

	thumb_func_start sub_02044774
sub_02044774: ; 0x02044774
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	bl sub_02029EFC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044774

	thumb_func_start sub_020447A4
sub_020447A4: ; 0x020447A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r6, #0
	bl sub_02029D80
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020447A4

	thumb_func_start sub_020447E8
sub_020447E8: ; 0x020447E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02026F0C
	cmp r0, #1
	bne _0204481C
	mov r0, #1
	strh r0, [r4]
_0204481C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020447E8

	thumb_func_start sub_02044820
sub_02044820: ; 0x02044820
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02026EF4
	cmp r0, #1
	bne _02044854
	mov r0, #1
	strh r0, [r4]
_02044854:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044820

	thumb_func_start sub_02044858
sub_02044858: ; 0x02044858
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x20
	mov r2, #0
	bl sub_0203E53C
	str r0, [r4, #0]
	ldr r1, _02044884 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02044884: .word sub_02041CC8
	thumb_func_end sub_02044858

	thumb_func_start sub_02044888
sub_02044888: ; 0x02044888
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x20
	mov r2, #1
	bl sub_0203E53C
	str r0, [r4, #0]
	ldr r1, _020448B4 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020448B4: .word sub_02041CC8
	thumb_func_end sub_02044888

	thumb_func_start sub_020448B8
sub_020448B8: ; 0x020448B8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl ov6_022475B0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020448B8

	thumb_func_start sub_020448C8
sub_020448C8: ; 0x020448C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl ov6_02247624
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020448C8

	thumb_func_start sub_020448F0
sub_020448F0: ; 0x020448F0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020448F0

	thumb_func_start sub_02044908
sub_02044908: ; 0x02044908
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CF28
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044908

	thumb_func_start sub_02044928
sub_02044928: ; 0x02044928
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r7, #0
	bl sub_0202CFB8
	ldr r1, _0204497C ; =0xFFFF0000
	and r1, r0
	lsr r1, r1, #0x10
	strh r1, [r4]
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204497C: .word 0xFFFF0000
	thumb_func_end sub_02044928

	thumb_func_start sub_02044980
sub_02044980: ; 0x02044980
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	ldr r1, [r5, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	lsl r2, r4, #0x10
	add r4, r2, #0
	orr r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _020449B4
	cmp r0, #1
	beq _020449C8
	cmp r0, #2
	beq _020449DC
	b _020449EE
_020449B4:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202CF70
	b _020449EE
_020449C8:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202CE90
	b _020449EE
_020449DC:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202CED0
_020449EE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02044980

	thumb_func_start sub_020449F4
sub_020449F4: ; 0x020449F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CF70
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020449F4

	thumb_func_start sub_02044A28
sub_02044A28: ; 0x02044A28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E850
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CF70
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02044A28

	thumb_func_start sub_02044A50
sub_02044A50: ; 0x02044A50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	ldr r1, [r5, #8]
	str r0, [sp, #4]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r4, [r1]
	add r0, r7, #0
	bl sub_0203A784
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0203A788
	add r7, r0, #0
	cmp r4, #0
	beq _02044AA0
	cmp r4, #1
	beq _02044AB6
	b _02044AE2
_02044AA0:
	ldr r0, [sp]
	bl sub_0206AE3C
	ldr r0, [sp, #4]
	bl sub_0206D000
	mov r0, #0x1e
	strh r0, [r6]
	mov r0, #0
	strh r0, [r7]
	b _02044AE2
_02044AB6:
	ldr r0, [sp]
	bl sub_0206AE4C
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0206D720
	mov r0, #4
	bl sub_0202BDE0
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0202B758
	mov r0, #0
	strh r0, [r6]
	strh r0, [r7]
_02044AE2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02044A50

	thumb_func_start sub_02044AE8
sub_02044AE8: ; 0x02044AE8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0206C0E8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044AE8

	thumb_func_start sub_02044AF8
sub_02044AF8: ; 0x02044AF8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov6_02243004
	strh r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02044AF8

	thumb_func_start sub_02044B28
sub_02044B28: ; 0x02044B28
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071CD0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044B28

	thumb_func_start sub_02044B38
sub_02044B38: ; 0x02044B38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	mov r1, #0
	add r6, r0, #0
	mov r0, #0x41
	add r2, r1, #0
	bl sub_02004550
	add r5, #0x80
	ldrh r1, [r4]
	ldr r0, [r5, #0]
	add r2, r6, #0
	bl ov6_02242B58
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02044B38

	thumb_func_start sub_02044B70
sub_02044B70: ; 0x02044B70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov6_02242C3C
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02044B70

	thumb_func_start sub_02044BA0
sub_02044BA0: ; 0x02044BA0
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldrb r1, [r2]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED2C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02044BA0

	thumb_func_start sub_02044BB8
sub_02044BB8: ; 0x02044BB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B354
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044BB8

	thumb_func_start sub_02044BE8
sub_02044BE8: ; 0x02044BE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r7, #0
	bl sub_02026EAC
	add r4, r0, #0
	bl sub_0201D2E8
	add r1, r4, #0
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp]
	mov r1, #0x19
	strh r1, [r0]
	mov r4, #1
	mov r5, #0
_02044C2A:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02026FE8
	cmp r0, #1
	bne _02044C50
	add r0, r4, #0
	bl sub_020775A4
	cmp r0, #0
	beq _02044C50
	cmp r5, r6
	bne _02044C4A
	ldr r0, [sp]
	strh r4, [r0]
	b _02044C5C
_02044C4A:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02044C50:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _02044C60 ; =0x000001ED
	cmp r4, r0
	bls _02044C2A
_02044C5C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02044C60: .word 0x000001ED
	thumb_func_end sub_02044BE8

	thumb_func_start sub_02044C64
sub_02044C64: ; 0x02044C64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r1, r4, #0
	bl sub_0206B270
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044C64

	thumb_func_start sub_02044C90
sub_02044C90: ; 0x02044C90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B260
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044C90

	thumb_func_start sub_02044CBC
sub_02044CBC: ; 0x02044CBC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D884
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044CBC

	thumb_func_start sub_02044CCC
sub_02044CCC: ; 0x02044CCC
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldrb r1, [r2]
	ldr r0, [r0, #0xc]
	bl sub_0206C41C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044CCC

	thumb_func_start sub_02044CE4
sub_02044CE4: ; 0x02044CE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r4, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r1, [r1]
	mov r0, #0xb
	bl ov6_02246184
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044CE4

	thumb_func_start sub_02044D08
sub_02044D08: ; 0x02044D08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov6_02246224
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044D08

	thumb_func_start sub_02044D38
sub_02044D38: ; 0x02044D38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov6_0224622C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044D38

	thumb_func_start sub_02044D68
sub_02044D68: ; 0x02044D68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	ldr r1, [r4, #0]
	mov r3, #0xb
	bl sub_0206C740
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044D68

	thumb_func_start sub_02044D9C
sub_02044D9C: ; 0x02044D9C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov6_02246204
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044D9C

	thumb_func_start sub_02044DB4
sub_02044DB4: ; 0x02044DB4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027508
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044DB4

	thumb_func_start sub_02044DC8
sub_02044DC8: ; 0x02044DC8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_020274B0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044DC8

	thumb_func_start sub_02044DDC
sub_02044DDC: ; 0x02044DDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	mov r0, #0
	strh r0, [r6]
	cmp r4, #1
	bne _02044E22
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027454
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	bl sub_02025FF8
	b _02044E3C
_02044E22:
	cmp r4, #2
	bne _02044E38
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027474
	strh r0, [r6]
	b _02044E3C
_02044E38:
	bl sub_02022974
_02044E3C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02044DDC

	thumb_func_start sub_02044E40
sub_02044E40: ; 0x02044E40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r5, r0, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	add r1, r4, r6
	add r2, r7, r1
	ldr r1, [sp, #4]
	add r2, r1, r2
	ldr r1, [sp, #8]
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, [sp]
	strh r1, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02044E40

	thumb_func_start sub_02044EDC
sub_02044EDC: ; 0x02044EDC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020138A4
	ldr r0, [sp, #0xc]
	strh r0, [r4]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02044EDC

	thumb_func_start sub_02044F04
sub_02044F04: ; 0x02044F04
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl ov7_0224BE7C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02044F04

	thumb_func_start sub_02044F24
sub_02044F24: ; 0x02044F24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	bl ov5_021F0E90
	strh r0, [r4]
	add r0, r5, #0
	bl ov5_021F0E84
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02044F24

	thumb_func_start sub_02044FA4
sub_02044FA4: ; 0x02044FA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r4, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl ov6_02246C24
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02044FA4

	thumb_func_start sub_02044FCC
sub_02044FCC: ; 0x02044FCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	add r5, #0x80
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r5, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov6_02246F00
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044FCC

	thumb_func_start sub_0204500C
sub_0204500C: ; 0x0204500C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r7, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r6, [r2]
	bl sub_0203E838
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r4, [sp]
	add r5, #0x80
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r3, [sp, #8]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0206C784
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204500C

	thumb_func_start sub_0204504C
sub_0204504C: ; 0x0204504C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r1, #0xc
	strh r1, [r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204504C

	thumb_func_start sub_02045068
sub_02045068: ; 0x02045068
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	add r0, r6, #0
	bl sub_0203D174
	bl sub_02025E38
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_02024420
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r1, r7, #0
	bl ov6_022479D0
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02045106
	cmp r5, #7
	ble _02045110
_02045106:
	mov r0, #0xff
	strh r0, [r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02045110:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02079CFC
	cmp r0, #0
	beq _02045120
	mov r0, #0
	b _0204512A
_02045120:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02079CD8
	add r0, r5, #1
_0204512A:
	strh r0, [r4]
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02045068

	thumb_func_start sub_02045134
sub_02045134: ; 0x02045134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020298A0
	bl sub_020295B8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02045134

	thumb_func_start sub_02045160
sub_02045160: ; 0x02045160
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl ov6_02247078
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045160

	thumb_func_start sub_0204517C
sub_0204517C: ; 0x0204517C
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl ov6_022470E8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204517C

	thumb_func_start sub_02045198
sub_02045198: ; 0x02045198
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl ov6_022470F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045198

	thumb_func_start sub_020451B4
sub_020451B4: ; 0x020451B4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027560
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x32
	mov r3, #0x20
	bl sub_02073D80
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020272A4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020451B4

	thumb_func_start sub_020451F8
sub_020451F8: ; 0x020451F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_020451B4
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020451F8

	thumb_func_start sub_0204521C
sub_0204521C: ; 0x0204521C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024420
	bl sub_02079A50
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x87
	lsl r0, r0, #2
	sub r0, r0, r1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204521C

	thumb_func_start sub_02045250
sub_02045250: ; 0x02045250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x16
	bl sub_0203F098
	add r4, r0, #0
	mov r0, #0
	add r5, #0x80
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	bl ov5_021E1000
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045250

	thumb_func_start sub_02045274
sub_02045274: ; 0x02045274
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x16
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021E100C
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045274

	thumb_func_start sub_0204528C
sub_0204528C: ; 0x0204528C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r4, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl ov6_02247D30
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204528C

	thumb_func_start sub_020452B4
sub_020452B4: ; 0x020452B4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020716D4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020452B4

	thumb_func_start sub_020452C4
sub_020452C4: ; 0x020452C4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0207183C
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020452C4

	thumb_func_start sub_020452D4
sub_020452D4: ; 0x020452D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_02071818
	cmp r0, #0
	beq _020452FA
	mov r0, #1
	b _020452FC
_020452FA:
	mov r0, #0
_020452FC:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020452D4

	thumb_func_start sub_02045304
sub_02045304: ; 0x02045304
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov6_02247F5C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045304

	thumb_func_start sub_02045314
sub_02045314: ; 0x02045314
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov6_02247FBC
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045314

	thumb_func_start sub_02045324
sub_02045324: ; 0x02045324
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CFEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045324

	thumb_func_start sub_02045344
sub_02045344: ; 0x02045344
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A230
	strh r0, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02045344

	thumb_func_start sub_02045384
sub_02045384: ; 0x02045384
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, sp, #4
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp]
	bl sub_0207A0F8
	add r4, #0x80
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r7, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _020453FA
_020453C4:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, _02045400 ; =0x00000182
	cmp r0, r1
	bne _020453F4
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #4
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202736C
_020453F4:
	add r5, r5, #1
	cmp r5, r6
	blt _020453C4
_020453FA:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02045400: .word 0x00000182
	thumb_func_end sub_02045384

	thumb_func_start sub_02045404
sub_02045404: ; 0x02045404
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp, #8]
	bl sub_0207A0F8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r4, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02045488
_0204543C:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_0207A0FC
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	ldr r1, _020454BC ; =0x0000019F
	cmp r7, r1
	bne _02045480
	cmp r0, #0
	bne _02045480
	cmp r5, #0
	bne _02045478
	mov r0, #1
	str r0, [sp, #0x10]
_02045478:
	cmp r5, #1
	bne _02045480
	mov r0, #1
	str r0, [sp, #0xc]
_02045480:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0204543C
_02045488:
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0204549C
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0204549C
	ldr r0, [sp]
	mov r1, #2
	strh r1, [r0]
	b _020454B6
_0204549C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _020454B0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020454B0
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0]
	b _020454B6
_020454B0:
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
_020454B6:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020454BC: .word 0x0000019F
	thumb_func_end sub_02045404

	thumb_func_start sub_020454C0
sub_020454C0: ; 0x020454C0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE0C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020454C0

	thumb_func_start sub_020454D4
sub_020454D4: ; 0x020454D4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE1C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020454D4

	thumb_func_start sub_020454E8
sub_020454E8: ; 0x020454E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl sub_0203E414
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020454E8

	thumb_func_start sub_0204550C
sub_0204550C: ; 0x0204550C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02055BDC
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204550C

	thumb_func_start sub_02045530
sub_02045530: ; 0x02045530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r7, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r7, r0, #0
	bne _020455AE
	bl sub_02022974
_020455AE:
	str r6, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x74]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r1, r7, #0
	bl sub_0205E318
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02045530

	thumb_func_start sub_020455C4
sub_020455C4: ; 0x020455C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r5, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	bne _02045618
	bl sub_02022974
_02045618:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0205E3F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020455C4

	thumb_func_start sub_02045628
sub_02045628: ; 0x02045628
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0205E1F8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045628

	thumb_func_start sub_02045650
sub_02045650: ; 0x02045650
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	mov r6, #0
	add r7, r0, #0
	add r4, r6, #0
	add r5, sp, #4
_0204567E:
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x22
	mov r2, #1
	bl sub_02029D50
	cmp r0, #1
	bne _02045694
	mov r0, #1
	strh r0, [r5]
	add r6, r6, #1
_02045694:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #0x10
	blt _0204567E
	cmp r6, #0
	bne _020456AC
	ldr r0, [sp]
	ldr r1, _020456E4 ; =0x0000FFFF
	add sp, #0x24
	strh r1, [r0]
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020456AC:
	bl sub_0201D2E8
	add r1, r6, #0
	bl sub_020E1F6C
	mov r4, #0
	add r2, sp, #4
_020456BA:
	ldrh r0, [r2]
	cmp r0, #1
	bne _020456C6
	cmp r1, #0
	beq _020456CE
	sub r1, r1, #1
_020456C6:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, #0x10
	blt _020456BA
_020456CE:
	cmp r4, #0x10
	blt _020456D6
	bl sub_02022974
_020456D6:
	ldr r0, [sp]
	add r4, #0x22
	strh r4, [r0]
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_020456E4: .word 0x0000FFFF
	thumb_func_end sub_02045650

	thumb_func_start sub_020456E8
sub_020456E8: ; 0x020456E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldr r1, _02045704 ; =0x021BF6DC
	ldrb r1, [r1, #6]
	strh r1, [r0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02045704: .word 0x021BF6DC
	thumb_func_end sub_020456E8

	thumb_func_start sub_02045708
sub_02045708: ; 0x02045708
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206B364
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045708

	thumb_func_start sub_02045720
sub_02045720: ; 0x02045720
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r5, #0x80
	ldr r0, [r5, #0]
	ldrb r4, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	cmp r4, #0
	beq _02045754
	add r1, r6, #0
	bl sub_0206B1B0
	b _0204575A
_02045754:
	add r1, r6, #0
	bl sub_0206B1D8
_0204575A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02045720

	thumb_func_start sub_02045760
sub_02045760: ; 0x02045760
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200C01C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02045760

	thumb_func_start sub_02045798
sub_02045798: ; 0x02045798
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206B394
	cmp r0, #0xa
	blo _020457C8
	mov r0, #1
	b _020457CA
_020457C8:
	mov r0, #0
_020457CA:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02045798

	thumb_func_start sub_020457D0
sub_020457D0: ; 0x020457D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B314
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020457D0

	thumb_func_start sub_020457FC
sub_020457FC: ; 0x020457FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029EA0
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020457FC

	thumb_func_start sub_02045840
sub_02045840: ; 0x02045840
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02050568
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045840

	thumb_func_start sub_02045850
sub_02045850: ; 0x02045850
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0206B334
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02045850

	thumb_func_start sub_02045860
sub_02045860: ; 0x02045860
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02014EC4
	bl sub_02014EE4
	cmp r0, #0x20
	bne _020458B2
	ldr r0, _020458C8 ; =0x0000FFFF
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020458B2:
	strh r0, [r4]
	bl sub_02014F64
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl sub_0200BE48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020458C8: .word 0x0000FFFF
	thumb_func_end sub_02045860

	thumb_func_start sub_020458CC
sub_020458CC: ; 0x020458CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02014EC4
	bl sub_02014F48
	cmp r0, #1
	bne _020458F8
	mov r0, #1
	b _020458FA
_020458F8:
	mov r0, #0
_020458FA:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020458CC

	thumb_func_start sub_02045900
sub_02045900: ; 0x02045900
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206B3DC
	cmp r0, #5
	blo _02045930
	mov r0, #1
	b _02045932
_02045930:
	mov r0, #0
_02045932:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02045900

	thumb_func_start sub_02045938
sub_02045938: ; 0x02045938
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	ldr r6, [r4, #0]
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_02025CCC
	add r7, r0, #0
	bl sub_02025D5C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02055BB8
	cmp r4, r0
	bne _02045982
	add r0, r7, #0
	bl sub_02025D60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02055BC4
	cmp r4, r0
	bne _02045982
	mov r0, #1
	strh r0, [r5]
	b _02045986
_02045982:
	mov r0, #0
	strh r0, [r5]
_02045986:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02045938

	thumb_func_start sub_0204598C
sub_0204598C: ; 0x0204598C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020270DC
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204598C

	thumb_func_start sub_020459BC
sub_020459BC: ; 0x020459BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r6, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r2, [r1, #0x1c]
	ldr r1, [r2, #8]
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	ldr r1, [r2, #0xc]
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r7, #3
	blo _02045A00
	ldr r7, _02045A7C ; =0x0000010E
	b _02045A36
_02045A00:
	cmp r0, #0x1e
	blo _02045A0A
	mov r7, #0x43
	lsl r7, r7, #2
	b _02045A36
_02045A0A:
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	cmp r1, #0x19
	bge _02045A1C
	ldr r7, _02045A80 ; =0x0000010D
	b _02045A36
_02045A1C:
	bl sub_0201D2E8
	mov r1, #6
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	mov r0, #6
	mul r0, r7
	add r0, r1, r0
	lsl r1, r0, #1
	ldr r0, _02045A84 ; =0x020EABFC
	ldrh r7, [r0, r1]
_02045A36:
	cmp r5, #0xb
	bne _02045A4E
	cmp r4, #1
	bne _02045A42
	mov r4, #0
	b _02045A58
_02045A42:
	cmp r4, #0x14
	bne _02045A4A
	mov r4, #2
	b _02045A58
_02045A4A:
	mov r4, #5
	b _02045A58
_02045A4E:
	cmp r5, #0x14
	bne _02045A56
	mov r4, #1
	b _02045A58
_02045A56:
	mov r4, #3
_02045A58:
	mov r5, #0
_02045A5A:
	cmp r5, r4
	beq _02045A6C
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0203A574
_02045A6C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _02045A5A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02045A7C: .word 0x0000010E
_02045A80: .word 0x0000010D
_02045A84: .word 0x020EABFC
	thumb_func_end sub_020459BC

	thumb_func_start sub_02045A88
sub_02045A88: ; 0x02045A88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B3EC
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045A88

	thumb_func_start sub_02045AB8
sub_02045AB8: ; 0x02045AB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B40C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045AB8

	thumb_func_start sub_02045AE8
sub_02045AE8: ; 0x02045AE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B42C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045AE8

	thumb_func_start sub_02045B18
sub_02045B18: ; 0x02045B18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	mov r6, #0
	add r4, sp, #4
_02045B34:
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	strb r0, [r4]
	add r6, r6, #1
	add r4, r4, #1
	cmp r6, #5
	blt _02045B34
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	mov r0, #4
	bl sub_0202A93C
	lsl r2, r4, #0x18
	add r1, sp, #4
	lsr r2, r2, #0x18
	mov r3, #0
	str r0, [sp]
	bl sub_0202A9E4
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202AB28
	ldr r1, [sp]
	bl sub_0202AB74
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_020181C4
	ldr r0, _02045BA4 ; =0x0000FFFF
	cmp r4, r0
	bne _02045B9C
	strh r0, [r7]
	b _02045B9E
_02045B9C:
	strh r6, [r7]
_02045B9E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02045BA4: .word 0x0000FFFF
	thumb_func_end sub_02045B18

	thumb_func_start sub_02045BA8
sub_02045BA8: ; 0x02045BA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202AB28
	bl sub_0202AB54
	ldr r1, _02045BE0 ; =0x0000FFFF
	cmp r0, r1
	bne _02045BD6
	mov r0, #0
	b _02045BD8
_02045BD6:
	mov r0, #1
_02045BD8:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02045BE0: .word 0x0000FFFF
	thumb_func_end sub_02045BA8

	thumb_func_start sub_02045BE4
sub_02045BE4: ; 0x02045BE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202AB28
	bl sub_0202ACC0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045BE4

	thumb_func_start sub_02045C10
sub_02045C10: ; 0x02045C10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	cmp r4, #4
	bls _02045C42
	bl sub_02022974
_02045C42:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206B16C
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02045C10

	thumb_func_start sub_02045C50
sub_02045C50: ; 0x02045C50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	add r2, sp, #0
	bl sub_0202444C
	ldr r1, [sp]
	add r4, r0, #0
	cmp r1, #0
	bne _02045C88
	mov r1, #0
	strh r1, [r5]
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02045C88:
	cmp r1, #1
	bne _02045C9E
	mov r1, #0
	bl sub_0202E174
	strh r0, [r5]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02045C9E:
	cmp r1, #2
	bne _02045CAE
	mov r1, #0
	strh r1, [r5]
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02045CAE:
	mov r0, #0
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045C50

	thumb_func_start sub_02045CB8
sub_02045CB8: ; 0x02045CB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r5, #0
	add r1, #0x80
	add r4, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	add r2, r6, #0
	bl sub_0203D410
	str r0, [r4, #0]
	ldr r1, _02045CF8 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02045CF8: .word sub_02041D60
	thumb_func_end sub_02045CB8

	thumb_func_start sub_02045CFC
sub_02045CFC: ; 0x02045CFC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02045D3C
	bl sub_02022974
_02045D3C:
	ldr r0, [r4, #0]
	bl sub_0203D408
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #7
	bne _02045D4E
	mov r0, #0xff
	strh r0, [r6]
_02045D4E:
	ldr r0, [r4, #0]
	bl sub_0203D438
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #1
	bne _02045D60
	mov r0, #1
	b _02045D62
_02045D60:
	mov r0, #0
_02045D62:
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02045CFC

	thumb_func_start sub_02045D70
sub_02045D70: ; 0x02045D70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	cmp r4, #0x64
	bls _02045D92
	mov r4, #0x64
_02045D92:
	bl sub_0201D2E8
	mov r1, #0x65
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, r4
	bgt _02045DA8
	mov r0, #1
	b _02045DAA
_02045DA8:
	mov r0, #0
_02045DAA:
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02045D70

	thumb_func_start sub_02045DB0
sub_02045DB0: ; 0x02045DB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	cmp r4, #0
	beq _02045DEC
	cmp r4, #1
	beq _02045DF6
	cmp r4, #2
	beq _02045E00
	b _02045E0A
_02045DEC:
	mov r2, #0
	mov r3, #0x20
	bl ov6_0224899C
	b _02045E0E
_02045DF6:
	mov r2, #1
	mov r3, #0x20
	bl ov6_0224899C
	b _02045E0E
_02045E00:
	mov r2, #2
	mov r3, #0x20
	bl ov6_0224899C
	b _02045E0E
_02045E0A:
	bl sub_02022974
_02045E0E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045DB0

	thumb_func_start sub_02045E14
sub_02045E14: ; 0x02045E14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B374
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045E14

	thumb_func_start sub_02045E44
sub_02045E44: ; 0x02045E44
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	cmp r0, #0
	bne _02045E68
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl ov6_0223E384
	b _02045E72
_02045E68:
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl ov6_0223E4EC
_02045E72:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02045E44

	thumb_func_start sub_02045E78
sub_02045E78: ; 0x02045E78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02039074
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045E78

	thumb_func_start sub_02045EA0
sub_02045EA0: ; 0x02045EA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202B370
	bl sub_0202AF94
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045EA0

	thumb_func_start sub_02045ECC
sub_02045ECC: ; 0x02045ECC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	ldr r1, _02045F00 ; =0x0000FF79
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _02045EFC
	bl sub_02028828
_02045EFC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02045F00: .word 0x0000FF79
	thumb_func_end sub_02045ECC

	thumb_func_start sub_02045F04
sub_02045F04: ; 0x02045F04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	mov r1, #0
	strh r1, [r0]
	ldr r1, _02045F44 ; =0x0000012A
	cmp r4, r1
	blo _02045F3E
	add r1, #0xf
	cmp r4, r1
	bhi _02045F3E
	mov r1, #1
	strh r1, [r0]
_02045F3E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02045F44: .word 0x0000012A
	thumb_func_end sub_02045F04

	thumb_func_start sub_02045F48
sub_02045F48: ; 0x02045F48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r7, r0, #0
	mov r0, #0x20
	bl sub_0200B358
	mov r2, #0x5d
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x20
	bl sub_0200B144
	add r5, r0, #0
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200BE48
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200BE48
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	bl sub_0200BE48
	add r0, r4, #0
	mov r1, #3
	add r2, r7, #0
	bl sub_0200BE48
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0200B29C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B1EC
	str r0, [sp]
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02023BE0
	cmp r0, #0
	bne _02046016
	mov r0, #1
	b _02046018
_02046016:
	mov r0, #0
_02046018:
	strh r0, [r6]
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp]
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0200B3F0
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02045F48

	thumb_func_start sub_02046038
sub_02046038: ; 0x02046038
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025CCC
	mov r1, #1
	bl sub_02025D6C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02046038

	thumb_func_start sub_02046050
sub_02046050: ; 0x02046050
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_0205BC50
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02046050

	thumb_func_start sub_02046080
sub_02046080: ; 0x02046080
	push {r3, lr}
	bl sub_02039734
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02046080

	thumb_func_start sub_0204608C
sub_0204608C: ; 0x0204608C
	push {r3, lr}
	bl sub_02039794
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204608C

	thumb_func_start sub_02046098
sub_02046098: ; 0x02046098
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203A7A8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02046098

	thumb_func_start sub_020460A8
sub_020460A8: ; 0x020460A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A72C
	str r4, [r0, #0]
	str r6, [r0, #8]
	mov r1, #0
	str r7, [r0, #0xc]
	mvn r1, r1
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #0x10]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020460A8

	thumb_func_start sub_02046108
sub_02046108: ; 0x02046108
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	ldr r2, [r5, #8]
	add r1, r0, #0
	add r0, r2, #1
	str r0, [r5, #8]
	add r5, #0x80
	ldr r0, [r5, #0]
	ldrb r4, [r2]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	bne _02046138
	bl sub_02022974
_02046138:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062D80
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046108

	thumb_func_start sub_02046144
sub_02046144: ; 0x02046144
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02071F28
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02046144

	thumb_func_start sub_0204616C
sub_0204616C: ; 0x0204616C
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x28
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020247E0
	cmp r0, #0
	bne _02046196
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	bl ov5_021E1F98
	str r0, [r4, #0]
	bl ov5_021E1F04
_02046196:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204616C

	thumb_func_start sub_0204619C
sub_0204619C: ; 0x0204619C
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x28
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020247E0
	cmp r0, #0
	bne _020461C2
	ldr r0, [r4, #0]
	bl ov5_021E1F7C
	ldr r0, [r4, #0]
	bl ov5_021E1FF4
_020461C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204619C

	thumb_func_start sub_020461C8
sub_020461C8: ; 0x020461C8
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl sub_02070428
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020461C8

	thumb_func_start sub_020461E0
sub_020461E0: ; 0x020461E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r6, [r1]
	mov r0, #0xb
	mov r1, #0x2c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r6, #0
	add r0, #0xfb
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r4, [r7, #0]
	cmp r0, #1
	bhi _02046224
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	b _02046226
_02046224:
	mov r0, #0
_02046226:
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x24
	strb r6, [r0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, _0204628C ; =0x020F8BE0
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	str r0, [r4, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0x1c]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0x98
	ldr r0, [r0, #0]
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x74]
	bl sub_02050A38
	ldr r1, _02046290 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204628C: .word 0x020F8BE0
_02046290: .word sub_02041CC8
	thumb_func_end sub_020461E0

	thumb_func_start sub_02046294
sub_02046294: ; 0x02046294
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x10
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0203F098
	add r1, r0, #0
	ldr r2, [r6, #0x78]
	ldr r3, [r4, #0]
	add r0, r5, #0
	bl ov8_0224B67C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02046294

	thumb_func_start sub_020462C0
sub_020462C0: ; 0x020462C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _020462D8
	mov r1, #0x1a
	bl ov5_021D5F24
	add r0, r4, #0
	bl sub_0200DA58
_020462D8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020462C0

	thumb_func_start sub_020462DC
sub_020462DC: ; 0x020462DC
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r0, _020462F0 ; =sub_020462C0
	ldr r1, [r1, #0]
	mov r2, #0x80
	bl sub_0200D9E8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020462F0: .word sub_020462C0
	thumb_func_end sub_020462DC

	thumb_func_start sub_020462F4
sub_020462F4: ; 0x020462F4
	push {r4, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F24
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020462F4

	thumb_func_start sub_02046314
sub_02046314: ; 0x02046314
	push {r3, lr}
	add r1, r0, #0
	ldr r2, [r1, #8]
	add r0, r2, #1
	str r0, [r1, #8]
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r2]
	ldr r0, [r1, #0x74]
	add r1, #0x80
	lsl r3, r2, #2
	ldr r2, _0204633C ; =0x02100AF0
	ldr r1, [r1, #0]
	ldr r2, [r2, r3]
	mov r3, #3
	bl ov7_0224CDA4
	mov r0, #1
	pop {r3, pc}
	nop
_0204633C: .word 0x02100AF0
	thumb_func_end sub_02046314

	thumb_func_start sub_02046340
sub_02046340: ; 0x02046340
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_0203E564
	str r0, [r4, #0]
	ldr r1, _020463B0 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020463B0: .word sub_02041CC8
	thumb_func_end sub_02046340

	thumb_func_start sub_020463B4
sub_020463B4: ; 0x020463B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x20
	bl sub_0203E608
	str r0, [r4, #0]
	ldr r1, _020463E0 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_020463E0: .word sub_02041D60
	thumb_func_end sub_020463B4

	thumb_func_start sub_020463E4
sub_020463E4: ; 0x020463E4
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020463E4

	thumb_func_start sub_02046400
sub_02046400: ; 0x02046400
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r1, [r0, #0]
	lsl r0, r4, #1
	add r1, r1, r0
	ldrh r0, [r1, #8]
	strh r0, [r6]
	ldrh r0, [r1, #0xe]
	strh r0, [r7]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02046400

	thumb_func_start sub_0204645C
sub_0204645C: ; 0x0204645C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldr r1, _02046518 ; =0x00000FFF
	str r0, [sp]
	strh r1, [r6]
	strh r1, [r7]
	strh r1, [r4]
	strh r1, [r0]
	bl sub_0201D2E8
	mov r1, #7
	and r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _0204651C ; =0x020EAB96
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	ldr r1, _02046518 ; =0x00000FFF
	strh r0, [r6]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02046524
	add r1, r0, #0
	cmp r1, #8
	beq _020464E4
	ldr r0, _0204651C ; =0x020EAB96
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	strh r0, [r7]
_020464E4:
	ldr r2, _02046518 ; =0x00000FFF
	add r0, r5, #0
	add r3, r2, #0
	bl sub_02046524
	cmp r0, #8
	beq _020464FA
	lsl r1, r0, #1
	ldr r0, _0204651C ; =0x020EAB96
	ldrh r0, [r0, r1]
	strh r0, [r4]
_020464FA:
	ldr r0, _02046518 ; =0x00000FFF
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_02046568
	cmp r0, #5
	beq _02046514
	lsl r1, r0, #1
	ldr r0, _02046520 ; =0x020EAB8C
	ldrh r1, [r0, r1]
	ldr r0, [sp]
	strh r1, [r0]
_02046514:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02046518: .word 0x00000FFF
_0204651C: .word 0x020EAB96
_02046520: .word 0x020EAB8C
	thumb_func_end sub_0204645C

	thumb_func_start sub_02046524
sub_02046524: ; 0x02046524
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r4, #0
_02046530:
	bl sub_0201D2E8
	mov r1, #9
	bl sub_020E2178
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #8
	beq _02046562
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #8
	blo _02046550
	mov r0, #8
	b _02046562
_02046550:
	cmp r0, r5
	beq _02046530
	cmp r0, r6
	beq _02046530
	cmp r0, r7
	beq _02046530
	ldr r1, [sp]
	cmp r0, r1
	beq _02046530
_02046562:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02046524

	thumb_func_start sub_02046568
sub_02046568: ; 0x02046568
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r4, #0
_02046574:
	bl sub_0201D2E8
	mov r1, #6
	bl sub_020E2178
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #5
	beq _020465A6
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #8
	blo _02046594
	mov r0, #5
	b _020465A6
_02046594:
	cmp r0, r5
	beq _02046574
	cmp r0, r6
	beq _02046574
	cmp r0, r7
	beq _02046574
	ldr r1, [sp]
	cmp r0, r1
	beq _02046574
_020465A6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02046568

	thumb_func_start sub_020465AC
sub_020465AC: ; 0x020465AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _02046616
	mov r0, #1
	strh r0, [r4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0203E6C0
	ldr r1, _02046620 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	b _0204661A
_02046616:
	mov r0, #0
	strh r0, [r4]
_0204661A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02046620: .word sub_02041D60
	thumb_func_end sub_020465AC

	thumb_func_start sub_02046624
sub_02046624: ; 0x02046624
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _02046652
	ldrh r1, [r4]
	ldr r0, [r5, #0x74]
	bl sub_0205749C
_02046652:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02046624

	thumb_func_start sub_02046658
sub_02046658: ; 0x02046658
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x74]
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	bl sub_020985E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02046658

	thumb_func_start sub_0204666C
sub_0204666C: ; 0x0204666C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r1, #0
	strh r1, [r0]
	ldr r1, _020466A0 ; =0x021BF67C
	ldr r2, [r1, #0x44]
	mov r1, #1
	tst r2, r1
	beq _0204668E
	strh r1, [r0]
_0204668E:
	ldr r1, _020466A0 ; =0x021BF67C
	ldr r2, [r1, #0x44]
	mov r1, #2
	tst r1, r2
	beq _0204669C
	mov r1, #1
	strh r1, [r0]
_0204669C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_020466A0: .word 0x021BF67C
	thumb_func_end sub_0204666C

	thumb_func_start sub_020466A4
sub_020466A4: ; 0x020466A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	str r1, [sp]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0
	strh r1, [r0]
	strh r1, [r7]
	strh r1, [r6]
	strh r1, [r4]
	ldr r0, [sp]
	strh r1, [r5]
	ldr r0, [r0, #0xc]
	bl sub_0204676C
	lsr r1, r0, #1
	mov r2, #1
	and r1, r2
	cmp r1, #1
	bne _02046736
	ldr r1, [sp, #4]
	strh r2, [r1]
_02046736:
	lsr r2, r0, #2
	mov r1, #1
	and r2, r1
	cmp r2, #1
	bne _02046742
	strh r1, [r7]
_02046742:
	lsr r2, r0, #3
	mov r1, #1
	and r2, r1
	cmp r2, #1
	bne _0204674E
	strh r1, [r6]
_0204674E:
	lsr r2, r0, #4
	mov r1, #1
	and r2, r1
	cmp r2, #1
	bne _0204675A
	strh r1, [r4]
_0204675A:
	lsr r1, r0, #5
	mov r0, #1
	and r1, r0
	cmp r1, #1
	bne _02046766
	strh r0, [r5]
_02046766:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020466A4

	thumb_func_start sub_0204676C
sub_0204676C: ; 0x0204676C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r6, #0
	bl sub_0207A268
	str r0, [sp, #8]
	bl sub_0207A0F8
	add r7, r0, #0
	add r4, r6, #0
	cmp r7, #0
	ble _020467C2
_02046786:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	ldr r1, _02046864 ; =0x000001DF
	cmp r0, r1
	bne _020467BC
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _020467BC
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	mov r1, #1
	lsl r1, r0
	orr r6, r1
_020467BC:
	add r4, r4, #1
	cmp r4, r7
	blt _02046786
_020467C2:
	ldr r0, [sp]
	bl sub_02026310
	add r7, r0, #0
	mov r4, #0
_020467CC:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02026218
	bl sub_02026220
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	ldr r1, _02046864 ; =0x000001DF
	cmp r0, r1
	bne _02046806
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02046806
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	mov r1, #1
	lsl r1, r0
	orr r6, r1
_02046806:
	add r4, r4, #1
	cmp r4, #2
	blt _020467CC
	ldr r0, [sp]
	bl sub_02024420
	str r0, [sp, #4]
	mov r7, #0
_02046816:
	mov r5, #0
_02046818:
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02079C9C
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	ldr r1, _02046864 ; =0x000001DF
	cmp r0, r1
	bne _02046850
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02046850
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	mov r1, #1
	lsl r1, r0
	orr r6, r1
_02046850:
	add r5, r5, #1
	cmp r5, #0x1e
	blt _02046818
	add r7, r7, #1
	cmp r7, #0x12
	blo _02046816
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02046864: .word 0x000001DF
	thumb_func_end sub_0204676C

	thumb_func_start sub_02046868
sub_02046868: ; 0x02046868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CFEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02046868

	thumb_func_start sub_02046888
sub_02046888: ; 0x02046888
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov9_0224F158
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046888

	thumb_func_start sub_020468AC
sub_020468AC: ; 0x020468AC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov9_0224F16C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020468AC

	thumb_func_start sub_020468D0
sub_020468D0: ; 0x020468D0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov9_02249FD0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020468D0

	thumb_func_start sub_020468E0
sub_020468E0: ; 0x020468E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r6, r0, #0
	mov r0, #0xb
	bl sub_020182A4
	add r4, r0, #0
	mov r0, #4
	bl sub_020182A4
	add r7, r0, #0
	mov r0, #0x20
	bl sub_020182A4
	add r5, r0, #0
	cmp r6, #0
	bne _0204691A
	ldr r0, _02046938 ; =0x021C07E0
	str r4, [r0, #8]
	str r7, [r0, #4]
	str r5, [r0, #0xc]
	b _02046932
_0204691A:
	ldr r0, _02046938 ; =0x021C07E0
	ldr r0, [r0, #8]
	cmp r4, r0
	beq _02046926
	bl sub_02022974
_02046926:
	ldr r0, _02046938 ; =0x021C07E0
	ldr r0, [r0, #0xc]
	cmp r5, r0
	beq _02046932
	bl sub_02022974
_02046932:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02046938: .word 0x021C07E0
	thumb_func_end sub_020468E0

	thumb_func_start sub_0204693C
sub_0204693C: ; 0x0204693C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E714
	ldr r1, _02046954 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02046954: .word sub_02041D60
	thumb_func_end sub_0204693C

	thumb_func_start sub_02046958
sub_02046958: ; 0x02046958
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov9_0224E884
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046958

	thumb_func_start sub_0204697C
sub_0204697C: ; 0x0204697C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov9_0224E8A8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204697C

	thumb_func_start sub_0204698C
sub_0204698C: ; 0x0204698C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_020138EC
	add r2, r5, #0
	add r2, #0xc4
	add r5, #0xc8
	ldr r3, [r2, #0]
	ldr r2, [r5, #0]
	sub r3, r0, r3
	sbc r1, r2
	mov r2, #0
	mov r0, #0x78
	sub r0, r3, r0
	sbc r1, r2
	blt _020469C6
	mov r0, #1
	b _020469C8
_020469C6:
	mov r0, #0
_020469C8:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204698C

	thumb_func_start sub_020469D0
sub_020469D0: ; 0x020469D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp]
	add r1, r5, #0
	bl sub_02077A9C
	ldr r0, [sp]
	bl sub_0207A0F8
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _02046A44
_02046A0C:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02046A3E
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _02046A48 ; =0x000001E7
	cmp r0, r1
	bne _02046A3E
	ldr r0, [r6, #0xc]
	bl sub_02027560
	add r1, r4, #0
	bl sub_0202736C
_02046A3E:
	add r5, r5, #1
	cmp r5, r7
	blt _02046A0C
_02046A44:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02046A48: .word 0x000001E7
	thumb_func_end sub_020469D0

	thumb_func_start sub_02046A4C
sub_02046A4C: ; 0x02046A4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r1, #0
	str r0, [sp]
	strh r1, [r0]
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _02046ACC
_02046A7E:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02046AC6
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _02046AD0 ; =0x000001E6
	cmp r0, r1
	bne _02046AC6
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02046AC6
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02046AC6:
	add r5, r5, #1
	cmp r5, r7
	blt _02046A7E
_02046ACC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02046AD0: .word 0x000001E6
	thumb_func_end sub_02046A4C

	thumb_func_start sub_02046AD4
sub_02046AD4: ; 0x02046AD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	mov r4, #0
	add r6, r4, #0
	add r5, r4, #0
_02046AF0:
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r1, r5, #0
	bl sub_02025F34
	cmp r0, #1
	bne _02046B0C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02046B0C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _02046AF0
	cmp r6, #8
	bhi _02046B50
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02046B26: ; jump table
	.short _02046B38 - _02046B26 - 2 ; case 0
	.short _02046B3C - _02046B26 - 2 ; case 1
	.short _02046B3C - _02046B26 - 2 ; case 2
	.short _02046B40 - _02046B26 - 2 ; case 3
	.short _02046B40 - _02046B26 - 2 ; case 4
	.short _02046B44 - _02046B26 - 2 ; case 5
	.short _02046B44 - _02046B26 - 2 ; case 6
	.short _02046B48 - _02046B26 - 2 ; case 7
	.short _02046B4C - _02046B26 - 2 ; case 8
_02046B38:
	mov r1, #1
	b _02046B52
_02046B3C:
	mov r1, #2
	b _02046B52
_02046B40:
	mov r1, #3
	b _02046B52
_02046B44:
	mov r1, #4
	b _02046B52
_02046B48:
	mov r1, #5
	b _02046B52
_02046B4C:
	mov r1, #6
	b _02046B52
_02046B50:
	mov r1, #1
_02046B52:
	ldr r0, _02046B94 ; =0x020EBAFC
	mov r2, #0
	add r6, sp, #4
_02046B58:
	lsl r3, r2, #2
	add r5, r0, r3
	ldrh r3, [r5, #2]
	cmp r1, r3
	blt _02046B6E
	ldrh r5, [r5]
	lsl r3, r4, #1
	strh r5, [r6, r3]
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
_02046B6E:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #0x13
	blo _02046B58
	ldr r1, _02046B98 ; =0x0000FFFF
	lsl r0, r4, #1
	add r2, sp, #4
	strh r1, [r2, r0]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #0x74]
	add r7, #0x80
	ldr r1, [r7, #0]
	bl ov7_0224CDA4
	mov r0, #1
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02046B94: .word 0x020EBAFC
_02046B98: .word 0x0000FFFF
	thumb_func_end sub_02046AD4

	thumb_func_start sub_02046B9C
sub_02046B9C: ; 0x02046B9C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	cmp r2, #8
	beq _02046BD0
	cmp r2, #9
	beq _02046BD0
	cmp r2, #0xa
	beq _02046BD0
	cmp r2, #0xb
	beq _02046BD0
	cmp r2, #0xc
	beq _02046BD0
	cmp r2, #0xd
	beq _02046BD0
	cmp r2, #0x13
	bne _02046BD4
_02046BD0:
	mov r0, #1
	b _02046BD6
_02046BD4:
	mov r0, #0
_02046BD6:
	lsl r3, r2, #2
	str r0, [sp]
	ldr r2, _02046BF0 ; =0x02100B1C
	ldr r0, [r4, #0x74]
	add r4, #0x80
	ldr r2, [r2, r3]
	ldr r1, [r4, #0]
	mov r3, #0
	bl ov7_0224CDA4
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02046BF0: .word 0x02100B1C
	thumb_func_end sub_02046B9C

	thumb_func_start sub_02046BF4
sub_02046BF4: ; 0x02046BF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	cmp r2, #1
	bhi _02046C14
	mov r0, #1
	b _02046C16
_02046C14:
	mov r0, #0
_02046C16:
	lsl r3, r2, #2
	str r0, [sp]
	ldr r2, _02046C30 ; =0x02100AF8
	ldr r0, [r4, #0x74]
	add r4, #0x80
	ldr r2, [r2, r3]
	ldr r1, [r4, #0]
	mov r3, #1
	bl ov7_0224CDA4
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02046C30: .word 0x02100AF8
	thumb_func_end sub_02046BF4

	thumb_func_start sub_02046C34
sub_02046C34: ; 0x02046C34
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #0
	lsl r3, r2, #2
	str r0, [sp]
	ldr r2, _02046C68 ; =0x02100B00
	ldr r0, [r4, #0x74]
	add r4, #0x80
	ldr r2, [r2, r3]
	ldr r1, [r4, #0]
	mov r3, #2
	bl ov7_0224CDA4
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02046C68: .word 0x02100B00
	thumb_func_end sub_02046C34

	thumb_func_start sub_02046C6C
sub_02046C6C: ; 0x02046C6C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_0203E518
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02046C6C

	thumb_func_start sub_02046C7C
sub_02046C7C: ; 0x02046C7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl sub_02094754
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046C7C

	thumb_func_start sub_02046CAC
sub_02046CAC: ; 0x02046CAC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [r4, #0x64]
	ldr r1, _02046CDC ; =sub_02046CE0
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02046CDC: .word sub_02046CE0
	thumb_func_end sub_02046CAC

	thumb_func_start sub_02046CE0
sub_02046CE0: ; 0x02046CE0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r1, [r4, #0x64]
	ldr r0, [r0, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0209476C
	pop {r4, pc}
	thumb_func_end sub_02046CE0

	thumb_func_start sub_02046CFC
sub_02046CFC: ; 0x02046CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #4
	bl sub_02025F04
	add r7, r0, #0
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	strb r1, [r0]
	ldr r1, [sp, #4]
	strb r1, [r0, #1]
	ldr r1, [sp, #0xc]
	strb r1, [r0, #2]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A954
	add r1, sp, #0x14
	strb r0, [r1, #3]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027474
	add r1, sp, #0x14
	strb r0, [r1, #4]
	strb r6, [r1, #5]
	ldr r0, [sp, #0x10]
	str r7, [sp, #0x20]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	str r4, [sp, #0x24]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r5, #0x80
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x30]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	str r0, [sp, #0x34]
	add r0, sp, #0x14
	bl sub_02093800
	ldr r1, [sp]
	str r0, [r1, #0]
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02046CFC

	thumb_func_start sub_02046E14
sub_02046E14: ; 0x02046E14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r5, #0x80
	ldr r3, [r5, #0]
	add r2, r0, #0
	ldr r1, [r3, #0xc]
	add r3, #0x9c
	ldr r0, [r4, #0]
	ldr r3, [r3, #0]
	bl sub_02094C44
	ldr r0, [r4, #0]
	bl sub_02093AD4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046E14

	thumb_func_start sub_02046E60
sub_02046E60: ; 0x02046E60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r6, #0]
	add r1, r7, #0
	bl sub_02094630
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02046E60

	thumb_func_start sub_02046EB4
sub_02046EB4: ; 0x02046EB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r6, #0]
	add r1, r7, #0
	bl sub_02094648
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02046EB4

	thumb_func_start sub_02046F08
sub_02046F08: ; 0x02046F08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r6, #0]
	add r1, r7, #0
	bl sub_02094680
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02046F08

	thumb_func_start sub_02046F5C
sub_02046F5C: ; 0x02046F5C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02046F5C

	thumb_func_start sub_02046FB8
sub_02046FB8: ; 0x02046FB8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_020943B0
	ldr r1, _02046FD8 ; =sub_02046FDC
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02046FD8: .word sub_02046FDC
	thumb_func_end sub_02046FB8

	thumb_func_start sub_02046FDC
sub_02046FDC: ; 0x02046FDC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_020944CC
	pop {r3, pc}
	thumb_func_end sub_02046FDC

	thumb_func_start sub_02046FF0
sub_02046FF0: ; 0x02046FF0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	ldr r1, [r1, #0]
	bl sub_020933F8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02046FF0

	thumb_func_start sub_0204700C
sub_0204700C: ; 0x0204700C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	bl sub_020946A4
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204700C

	thumb_func_start sub_02047048
sub_02047048: ; 0x02047048
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	bl sub_020946CC
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047048

	thumb_func_start sub_02047084
sub_02047084: ; 0x02047084
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	bl sub_020946F0
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047084

	thumb_func_start sub_020470C0
sub_020470C0: ; 0x020470C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094750
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020470C0

	thumb_func_start sub_020470F0
sub_020470F0: ; 0x020470F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	bl sub_02094720
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020470F0

	thumb_func_start sub_0204712C
sub_0204712C: ; 0x0204712C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094790
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204712C

	thumb_func_start sub_0204715C
sub_0204715C: ; 0x0204715C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_020947A4
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204715C

	thumb_func_start sub_0204718C
sub_0204718C: ; 0x0204718C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_020947C8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204718C

	thumb_func_start sub_020471BC
sub_020471BC: ; 0x020471BC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_020947D8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020471BC

	thumb_func_start sub_02047200
sub_02047200: ; 0x02047200
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_020947F0
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047200

	thumb_func_start sub_02047244
sub_02047244: ; 0x02047244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094804
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02047244

	thumb_func_start sub_02047274
sub_02047274: ; 0x02047274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02094828
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047274

	thumb_func_start sub_020472E8
sub_020472E8: ; 0x020472E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094868
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020472E8

	thumb_func_start sub_02047318
sub_02047318: ; 0x02047318
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	mov r3, #0xb
	bl sub_02094898
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047318

	thumb_func_start sub_02047358
sub_02047358: ; 0x02047358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094904
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02047358

	thumb_func_start sub_02047388
sub_02047388: ; 0x02047388
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02094850
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02047388

	thumb_func_start sub_020473A0
sub_020473A0: ; 0x020473A0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02094860
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020473A0

	thumb_func_start sub_020473B8
sub_020473B8: ; 0x020473B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02094A58
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020473B8

	thumb_func_start sub_020473E4
sub_020473E4: ; 0x020473E4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r1, _02047400 ; =sub_02047404
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02047400: .word sub_02047404
	thumb_func_end sub_020473E4

	thumb_func_start sub_02047404
sub_02047404: ; 0x02047404
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02094B1C
	cmp r0, #1
	bne _0204741E
	mov r0, #1
	pop {r3, pc}
_0204741E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02047404

	thumb_func_start sub_02047424
sub_02047424: ; 0x02047424
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02047424

	thumb_func_start sub_02047438
sub_02047438: ; 0x02047438
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02047438

	thumb_func_start sub_0204744C
sub_0204744C: ; 0x0204744C
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_02094BB4
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _0204749C
	ldr r0, [sp, #0x10]
	cmp r0, #1
	beq _0204749C
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _0204749C
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _020474A2
_0204749C:
	mov r0, #1
	strh r0, [r5]
	b _020474A6
_020474A2:
	mov r0, #0
	strh r0, [r5]
_020474A6:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_0204744C

	thumb_func_start sub_020474AC
sub_020474AC: ; 0x020474AC
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl ov6_02247A0C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020474AC

	thumb_func_start sub_020474B8
sub_020474B8: ; 0x020474B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r0, [r6, #0]
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl sub_0200B824
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020474B8

	thumb_func_start sub_020474F4
sub_020474F4: ; 0x020474F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r4, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r5, [r1]
	add r0, r6, #0
	bl sub_0203D174
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0200B498
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020474F4

	thumb_func_start sub_02047528
sub_02047528: ; 0x02047528
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0xf
	add r0, r4, #0
	bl sub_0203F098
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	ldr r2, [r4, #0xc]
	bl sub_0200B4BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02047528

	thumb_func_start sub_0204754C
sub_0204754C: ; 0x0204754C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0xf
	add r0, r4, #0
	bl sub_0203F098
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	ldr r2, [r4, #0xc]
	bl sub_0200B4E4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204754C

	thumb_func_start sub_02047570
sub_02047570: ; 0x02047570
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r7, #0]
	add r1, r4, #0
	bl sub_0200B538
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047570

	thumb_func_start sub_020475B8
sub_020475B8: ; 0x020475B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B7EC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020475B8

	thumb_func_start sub_020475F0
sub_020475F0: ; 0x020475F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B70C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020475F0

	thumb_func_start sub_02047628
sub_02047628: ; 0x02047628
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B7B4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047628

	thumb_func_start sub_02047660
sub_02047660: ; 0x02047660
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	bl sub_0207D268
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B630
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047660

	thumb_func_start sub_0204769C
sub_0204769C: ; 0x0204769C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B630
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204769C

	thumb_func_start sub_020476D4
sub_020476D4: ; 0x020476D4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020476D4

	thumb_func_start sub_0204771C
sub_0204771C: ; 0x0204771C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	ldr r1, [r5, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r4, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r3, [r2]
	cmp r4, #0
	bne _02047764
	bl sub_0205DFC4
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_02047764:
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204771C

	thumb_func_start sub_0204777C
sub_0204777C: ; 0x0204777C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl sub_0203E850
	ldr r1, [r5, #8]
	str r0, [sp, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r4, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r3, [r2]
	cmp r4, #0
	bne _020477B8
	bl sub_0205DFC4
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_020477B8:
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204777C

	thumb_func_start sub_020477D0
sub_020477D0: ; 0x020477D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r7, #0]
	add r1, r4, #0
	bl sub_0200B5CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020477D0

	thumb_func_start sub_02047818
sub_02047818: ; 0x02047818
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_02024420
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	add r2, r1, #0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02079C9C
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B5CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02047818

	thumb_func_start sub_02047874
sub_02047874: ; 0x02047874
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B928
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047874

	thumb_func_start sub_020478AC
sub_020478AC: ; 0x020478AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B960
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020478AC

	thumb_func_start sub_020478E4
sub_020478E4: ; 0x020478E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r7, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r7, #8]
	add r0, r4, #0
	ldrb r5, [r1]
	bl sub_02025F30
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02025F8C
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #2
	bl sub_0205CA14
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r5, #0
	bl sub_0200B998
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020478E4

	thumb_func_start sub_02047930
sub_02047930: ; 0x02047930
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	ldr r1, [r5, #8]
	str r0, [sp, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r5, [r1]
	add r0, r6, #0
	mov r1, #4
	bl sub_02047998
	add r6, r0, #0
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200B48C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047930

	thumb_func_start sub_02047998
sub_02047998: ; 0x02047998
	push {r3, r4, r5, lr}
	mov r2, #0x67
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02047998

	thumb_func_start sub_020479C0
sub_020479C0: ; 0x020479C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4, #0]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B054
	mov r1, #4
	bl sub_02047998
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020479C0

	thumb_func_start sub_02047A10
sub_02047A10: ; 0x02047A10
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4, #0]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B064
	mov r1, #4
	bl sub_02047998
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047A10

	thumb_func_start sub_02047A60
sub_02047A60: ; 0x02047A60
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4, #0]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B08C
	mov r1, #4
	bl sub_02047998
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047A60

	thumb_func_start sub_02047AB0
sub_02047AB0: ; 0x02047AB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BC80
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047AB0

	thumb_func_start sub_02047AE8
sub_02047AE8: ; 0x02047AE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BB04
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047AE8

	thumb_func_start sub_02047B20
sub_02047B20: ; 0x02047B20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BA94
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047B20

	thumb_func_start sub_02047B58
sub_02047B58: ; 0x02047B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x16
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	mov r1, #4
	add r2, r4, #0
	bl sub_02071D10
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047B58

	thumb_func_start sub_02047BB8
sub_02047BB8: ; 0x02047BB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r4, #0
	ldrb r6, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	sub r5, #0x95
	add r4, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x20
	bl sub_0209742C
	add r5, r0, #0
	cmp r4, #2
	bhs _02047C0E
	mov r0, #1
	b _02047C10
_02047C0E:
	mov r0, #0
_02047C10:
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047BB8

	thumb_func_start sub_02047C30
sub_02047C30: ; 0x02047C30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B6D8
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047C30

	thumb_func_start sub_02047C68
sub_02047C68: ; 0x02047C68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BFAC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047C68

	thumb_func_start sub_02047CA0
sub_02047CA0: ; 0x02047CA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	mov r0, #0xb
	ldrb r6, [r1]
	add r1, r0, #0
	bl sub_02023790
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202783C
	bl sub_02027894
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	ldr r0, _02047CFC ; =0x020E4C44
	mov r3, #0
	ldrb r0, [r0]
	str r3, [sp]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	add r2, r4, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02047CFC: .word 0x020E4C44
	thumb_func_end sub_02047CA0

	thumb_func_start sub_02047D00
sub_02047D00: ; 0x02047D00
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r4, #0
	ldrb r5, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	ldr r1, [sp]
	bl sub_0207A0FC
	add r4, #0x36
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r7, #0]
	add r1, r5, #0
	bl sub_0200B630
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047D00

	thumb_func_start sub_02047D68
sub_02047D68: ; 0x02047D68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #3
	bl sub_020923C0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B668
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047D68

	thumb_func_start sub_02047DAC
sub_02047DAC: ; 0x02047DAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	sub r2, r2, #1
	lsl r2, r2, #0x10
	ldr r0, [r6, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0200BE64
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047DAC

	thumb_func_start sub_02047DE8
sub_02047DE8: ; 0x02047DE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BA08
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047DE8

	thumb_func_start sub_02047E20
sub_02047E20: ; 0x02047E20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B744
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047E20

	thumb_func_start sub_02047E58
sub_02047E58: ; 0x02047E58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B77C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047E58

	thumb_func_start sub_02047E90
sub_02047E90: ; 0x02047E90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BCB8
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047E90

	thumb_func_start sub_02047EC8
sub_02047EC8: ; 0x02047EC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BB3C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047EC8

	thumb_func_start sub_02047F00
sub_02047F00: ; 0x02047F00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BACC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047F00

	thumb_func_start sub_02047F38
sub_02047F38: ; 0x02047F38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r6, #0]
	add r2, r7, #0
	bl sub_0200B594
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047F38

	thumb_func_start sub_02047F80
sub_02047F80: ; 0x02047F80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r5, #0x80
	ldr r0, [r5, #0]
	ldrb r4, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B08C
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B594
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047F80

	thumb_func_start sub_02047FB4
sub_02047FB4: ; 0x02047FB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BFE4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047FB4

	thumb_func_start sub_02047FEC
sub_02047FEC: ; 0x02047FEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B998
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047FEC

	thumb_func_start sub_02048024
sub_02048024: ; 0x02048024
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	sub r2, r2, #1
	lsl r2, r2, #0x10
	ldr r0, [r6, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0200BE98
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02048024

	thumb_func_start sub_02048060
sub_02048060: ; 0x02048060
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl sub_0200C324
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02048060

	thumb_func_start sub_02048080
sub_02048080: ; 0x02048080
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r3, r1, #1
	str r3, [r4, #8]
	ldrb r1, [r1]
	add r2, r3, #1
	str r2, [r4, #8]
	ldrb r2, [r3]
	ldr r0, [r0, #0]
	bl sub_0200C338
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048080

	thumb_func_start sub_020480A8
sub_020480A8: ; 0x020480A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B2A4
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020480A8

	thumb_func_start sub_020480D8
sub_020480D8: ; 0x020480D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, #0x80
	ldr r7, [r0, #0]
	ldr r0, [r7, #0xc]
	bl sub_02024420
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, _02048250 ; =0x00000000
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	beq _0204819A
_02048150:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02048190
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	bl sub_02048268
	cmp r0, #0
	beq _02048190
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _02048190
	str r0, [sp, #0x1c]
	str r5, [sp, #0x18]
_02048190:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blo _02048150
_0204819A:
	mov r6, #0
	str r6, [sp, #0x14]
	str r6, [sp, #0x10]
	add r7, r6, #0
_020481A2:
	mov r5, #0
_020481A4:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r5, #0
	bl sub_02079C9C
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	cmp r0, #0
	beq _020481F4
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _020481F4
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	bl sub_02048268
	cmp r0, #0
	beq _020481F4
	cmp r6, r0
	bge _020481F4
	add r6, r0, #0
	add r0, r5, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
_020481F4:
	add r5, r5, #1
	cmp r5, #0x1e
	blo _020481A4
	ldr r0, [sp, #0x10]
	add r7, #0x1e
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x12
	blo _020481A2
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02048220
	cmp r6, #0
	bne _02048220
	ldr r0, [sp, #0xc]
	mov r1, #0
	strh r1, [r0]
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldr r0, [sp, #4]
	strh r1, [r0]
	b _0204824A
_02048220:
	ldr r0, [sp, #0x1c]
	cmp r0, r6
	blo _0204823A
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldr r0, [sp, #4]
	mov r1, #0
	strh r1, [r0]
	b _0204824A
_0204823A:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	ldr r0, [sp, #8]
	mov r1, #1
	strh r6, [r0]
	ldr r0, [sp, #4]
	strh r1, [r0]
_0204824A:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02048250: .word 0x00000000
	thumb_func_end sub_020480D8

	thumb_func_start sub_02048254
sub_02048254: ; 0x02048254
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B2C8
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02048254

	thumb_func_start sub_02048268
sub_02048268: ; 0x02048268
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	add r7, r6, #0
_02048274:
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp]
	cmp r0, r1
	bne _020482C0
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #5
	blo _02048274
_020482C0:
	ldr r1, _020482D0 ; =0x021C07F0
	ldr r0, [sp, #8]
	strh r0, [r1, #2]
	ldr r0, [sp, #4]
	strh r0, [r1]
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020482D0: .word 0x021C07F0
	thumb_func_end sub_02048268

	thumb_func_start sub_020482D4
sub_020482D4: ; 0x020482D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02005690
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020482D4

	thumb_func_start sub_020482FC
sub_020482FC: ; 0x020482FC
	push {r3, lr}
	bl sub_0203E838
	bl sub_0200549C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020482FC

	thumb_func_start sub_0204830C
sub_0204830C: ; 0x0204830C
	push {r3, lr}
	bl sub_0203E838
	bl sub_020041FC
	mov r1, #0
	bl sub_020055D0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204830C

	thumb_func_start sub_02048320
sub_02048320: ; 0x02048320
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_020554A4
	bl sub_0200549C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02048320

	thumb_func_start sub_02048338
sub_02048338: ; 0x02048338
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_020553F0
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048338

	thumb_func_start sub_02048350
sub_02048350: ; 0x02048350
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0200564C
	ldr r1, _02048374 ; =sub_02048378
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02048374: .word sub_02048378
	thumb_func_end sub_02048350

	thumb_func_start sub_02048378
sub_02048378: ; 0x02048378
	push {r3, lr}
	bl sub_02005684
	cmp r0, #0
	bne _02048386
	mov r0, #1
	pop {r3, pc}
_02048386:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02048378

	thumb_func_start sub_0204838C
sub_0204838C: ; 0x0204838C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	mov r0, #0x7f
	mov r2, #0
	bl sub_0200560C
	ldr r1, _020483AC ; =sub_02048378
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_020483AC: .word sub_02048378
	thumb_func_end sub_0204838C

	thumb_func_start sub_020483B0
sub_020483B0: ; 0x020483B0
	push {r3, lr}
	ldr r1, [r0, #8]
	add r3, r1, #1
	str r3, [r0, #8]
	ldrb r2, [r1]
	add r1, r3, #1
	str r1, [r0, #8]
	ldrb r1, [r3]
	add r0, r2, #0
	bl sub_020049F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020483B0

	thumb_func_start sub_020483CC
sub_020483CC: ; 0x020483CC
	push {r3, lr}
	bl sub_0203E838
	add r1, r0, #0
	mov r0, #4
	bl sub_02005588
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020483CC

	thumb_func_start sub_020483E0
sub_020483E0: ; 0x020483E0
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r0, [r2]
	bl sub_020041CC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020483E0

	thumb_func_start sub_020483F4
sub_020483F4: ; 0x020483F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020483F4

	thumb_func_start sub_02048410
sub_02048410: ; 0x02048410
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	mov r1, #0
	bl sub_020057A4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02048410

	thumb_func_start sub_0204842C
sub_0204842C: ; 0x0204842C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [r4, #0x64]
	ldr r1, _02048450 ; =sub_02048454
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02048450: .word sub_02048454
	thumb_func_end sub_0204842C

	thumb_func_start sub_02048454
sub_02048454: ; 0x02048454
	push {r3, lr}
	ldr r0, [r0, #0x64]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020057D4
	cmp r0, #0
	bne _02048468
	mov r0, #1
	pop {r3, pc}
_02048468:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02048454

	thumb_func_start sub_0204846C
sub_0204846C: ; 0x0204846C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r0, r5, #0
	mov r1, #0
	bl sub_02005844
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204846C

	thumb_func_start sub_020484A0
sub_020484A0: ; 0x020484A0
	push {r3, lr}
	ldr r1, _020484AC ; =sub_020484B0
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020484AC: .word sub_020484B0
	thumb_func_end sub_020484A0

	thumb_func_start sub_020484B0
sub_020484B0: ; 0x020484B0
	push {r3, lr}
	bl sub_0200598C
	cmp r0, #0
	bne _020484BE
	mov r0, #1
	pop {r3, pc}
_020484BE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020484B0

	thumb_func_start sub_020484C4
sub_020484C4: ; 0x020484C4
	push {r3, lr}
	bl sub_0203E838
	bl sub_02006150
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020484C4

	thumb_func_start sub_020484D4
sub_020484D4: ; 0x020484D4
	push {r3, lr}
	ldr r1, _020484E0 ; =sub_020484E4
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020484E0: .word sub_020484E4
	thumb_func_end sub_020484D4

	thumb_func_start sub_020484E4
sub_020484E4: ; 0x020484E4
	push {r3, lr}
	bl sub_020061E4
	cmp r0, #0
	bne _020484F2
	mov r0, #1
	pop {r3, pc}
_020484F2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020484E4

	thumb_func_start sub_020484F8
sub_020484F8: ; 0x020484F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	bl sub_02006260
	cmp r0, #1
	bne _02048528
	mov r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02048528:
	mov r0, #0
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020484F8

	thumb_func_start sub_02048530
sub_02048530: ; 0x02048530
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_0200637C
	cmp r0, #0
	bne _02048554
	mov r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
_02048554:
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048530

	thumb_func_start sub_0204855C
sub_0204855C: ; 0x0204855C
	push {r3, lr}
	bl sub_020063B8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204855C

	thumb_func_start sub_02048568
sub_02048568: ; 0x02048568
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	bl sub_020063C0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02048568

	thumb_func_start sub_0204857C
sub_0204857C: ; 0x0204857C
	push {r3, lr}
	mov r1, #0
	mov r0, #0x3f
	add r2, r1, #0
	bl sub_02004550
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0204857C

	thumb_func_start sub_0204858C
sub_0204858C: ; 0x0204858C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02004AD4
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204858C

	thumb_func_start sub_020485C0
sub_020485C0: ; 0x020485C0
	push {r3, lr}
	ldr r1, _020485D0 ; =0x000004C2
	mov r0, #0x16
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020485D0: .word 0x000004C2
	thumb_func_end sub_020485C0

	thumb_func_start sub_020485D4
sub_020485D4: ; 0x020485D4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	mov r0, #4
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020485D4

	thumb_func_start sub_020485F4
sub_020485F4: ; 0x020485F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_020041FC
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020485F4

	thumb_func_start sub_02048614
sub_02048614: ; 0x02048614
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	bne _02048674
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0203F098
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0203F098
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_0203F098
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x1d
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_0203F098
	b _020486B4
_02048674:
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_0203F098
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x20
	bl sub_0203F098
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x21
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0203F098
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0203F098
_020486B4:
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x10]
	ldr r0, [r0, #0]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [r6, #0]
	ldr r2, [r4, #0x3c]
	ldr r3, [r3, #0]
	add r0, r4, #0
	bl sub_02067FB8
	str r0, [r7, #0]
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02048614

	thumb_func_start sub_020486E0
sub_020486E0: ; 0x020486E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	cmp r6, #0
	bne _0204871E
	add r5, #0x80
	ldr r0, [r5, #0]
	mov r1, #0x1e
	bl sub_0203F098
	b _02048728
_0204871E:
	add r5, #0x80
	ldr r0, [r5, #0]
	mov r1, #0x25
	bl sub_0203F098
_02048728:
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02048736
	mov r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02048736:
	bl sub_02067FD4
	cmp r0, #1
	bne _0204874C
	ldr r0, [r5, #0]
	bl sub_02067FE8
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	strh r0, [r4]
_0204874C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020486E0

	thumb_func_start sub_02048750
sub_02048750: ; 0x02048750
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x1c
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldrh r1, [r5]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048750

	thumb_func_start sub_02048778
sub_02048778: ; 0x02048778
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x1b
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x22
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	cmp r7, #0
	bne _020487C2
	ldrh r1, [r4]
	b _020487C4
_020487C2:
	ldrh r1, [r6]
_020487C4:
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02048778

	thumb_func_start sub_020487CC
sub_020487CC: ; 0x020487CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_0203F254
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020487CC

	thumb_func_start sub_020487FC
sub_020487FC: ; 0x020487FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #8
	add r0, r4, #0
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x17
	bl sub_0203F098
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r6, #0
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02048862
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206B034
	add r6, r0, #0
_02048862:
	mov r0, #0xb
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x74]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r3, r6, #0
	bl sub_020515CC
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020487FC

	thumb_func_start sub_0204887C
sub_0204887C: ; 0x0204887C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x74]
	add r1, r7, #0
	add r3, r6, #0
	bl sub_020515CC
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204887C

	thumb_func_start sub_020488E0
sub_020488E0: ; 0x020488E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_0203F254
	bl sub_0203F28C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _02048942
	mov r0, #0
	mov r1, #2
	add r2, r0, #0
	b _0204895C
_02048942:
	ldrh r0, [r4]
	bl sub_0203F278
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _02048956
	mov r0, #3
	mov r1, #5
	mov r2, #6
	b _0204895C
_02048956:
	mov r0, #7
	mov r1, #9
	mov r2, #0xa
_0204895C:
	strh r0, [r7]
	strh r1, [r6]
	strh r2, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020488E0

	thumb_func_start sub_02048968
sub_02048968: ; 0x02048968
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_0203F254
	bl sub_0203F28C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _020489CA
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	b _020489E4
_020489CA:
	ldrh r0, [r4]
	bl sub_0203F278
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _020489DE
	mov r0, #0x12
	mov r1, #0
	mov r2, #6
	b _020489E4
_020489DE:
	mov r0, #0x13
	mov r1, #0
	mov r2, #0xa
_020489E4:
	strh r0, [r7]
	strh r1, [r6]
	strh r2, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02048968

	thumb_func_start sub_020489F0
sub_020489F0: ; 0x020489F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_0203F254
	bl sub_0203F28C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020489F0

	thumb_func_start sub_02048A24
sub_02048A24: ; 0x02048A24
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	bl sub_0205560C
	bl sub_02004950
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048A24

	thumb_func_start sub_02048A44
sub_02048A44: ; 0x02048A44
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_02052C5C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02048A44

	thumb_func_start sub_02048A50
sub_02048A50: ; 0x02048A50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02052868
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02048A50

	thumb_func_start sub_02048A80
sub_02048A80: ; 0x02048A80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02052878
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02048A80

	thumb_func_start sub_02048AB0
sub_02048AB0: ; 0x02048AB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02052888
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02048AB0

	thumb_func_start sub_02048AE0
sub_02048AE0: ; 0x02048AE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_02054AB0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02048AE0

	thumb_func_start sub_02048B0C
sub_02048B0C: ; 0x02048B0C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	mov r1, #0xb
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [r4, #0x74]
	mov r1, #1
	add r3, r2, #0
	bl sub_020515CC
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02048B0C

	thumb_func_start sub_02048B34
sub_02048B34: ; 0x02048B34
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02062C00
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_02062910
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0203F2BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048B34

	thumb_func_start sub_02048B60
sub_02048B60: ; 0x02048B60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0203E850
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_02062C00
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02062910
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0203F2A0
	cmp r0, #1
	bne _02048BA4
	ldr r1, [r6, #8]
	add r0, r6, #0
	add r1, r1, r4
	bl sub_0203E818
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02048BA4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02048B60

	thumb_func_start sub_02048BA8
sub_02048BA8: ; 0x02048BA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldr r1, [r5, #0]
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048BA8

	thumb_func_start sub_02048BD0
sub_02048BD0: ; 0x02048BD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202B4A0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r7, [r0, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	cmp r0, #6
	bls _02048C04
	b _02048DD0
_02048C04:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02048C10: ; jump table
	.short _02048C1E - _02048C10 - 2 ; case 0
	.short _02048C54 - _02048C10 - 2 ; case 1
	.short _02048C8A - _02048C10 - 2 ; case 2
	.short _02048CC0 - _02048C10 - 2 ; case 3
	.short _02048CF6 - _02048C10 - 2 ; case 4
	.short _02048D2C - _02048C10 - 2 ; case 5
	.short _02048D66 - _02048C10 - 2 ; case 6
_02048C1E:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202B4AC
	strh r0, [r4]
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02048C54:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202B4C4
	strh r0, [r4]
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02048C8A:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200C054
	b _02048DD0
_02048CC0:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200C054
	b _02048DD0
_02048CF6:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0202B42C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r2, #0
	str r2, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x74]
	mov r1, #5
	mov r3, #7
	bl sub_0203DFE8
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02048D2C:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0202B4AC
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_0202B384
	cmp r6, #0
	beq _02048D60
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0206D430
_02048D60:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02048D66:
	mov r0, #0x40
	mov r1, #0x20
	bl sub_02023790
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r1, r6, #0
	add r7, r0, #0
	bl sub_02025EF4
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	add r3, r6, #0
	bl sub_0202B444
	add r0, r7, #0
	bl sub_02025F30
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0202B470
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl sub_0202B494
	bl sub_0201D35C
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0202B40C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl sub_0202B384
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0206D424
_02048DD0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02048BD0

	thumb_func_start sub_02048DD8
sub_02048DD8: ; 0x02048DD8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	cmp r0, #6
	bls _02048DE6
	b _02048F68
_02048DE6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02048DF2: ; jump table
	.short _02048E00 - _02048DF2 - 2 ; case 0
	.short _02048E20 - _02048DF2 - 2 ; case 1
	.short _02048EBC - _02048DF2 - 2 ; case 2
	.short _02048E62 - _02048DF2 - 2 ; case 3
	.short _02048EC6 - _02048DF2 - 2 ; case 4
	.short _02048EFE - _02048DF2 - 2 ; case 5
	.short _02048F4A - _02048DF2 - 2 ; case 6
_02048E00:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov6_0224660C
	strh r0, [r5]
	b _02048F68
_02048E20:
	add r0, r4, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	ldr r0, _02048F6C ; =0x0000026E
	add r4, #0x80
	strh r0, [r5]
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov6_02246978
	strh r0, [r6]
	b _02048F68
_02048E62:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	add r2, r6, #0
	add r3, r7, #0
	bl ov6_022469E0
	b _02048F68
_02048EBC:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl ov6_022465FC
	b _02048F68
_02048EC6:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	ldr r0, _02048F70 ; =0x0000026F
	add r4, #0x80
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl ov6_02246B40
	strh r0, [r6]
	b _02048F68
_02048EFE:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl ov6_022468B0
	strh r0, [r5]
	b _02048F68
_02048F4A:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov6_02246920
	strh r0, [r5]
_02048F68:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02048F6C: .word 0x0000026E
_02048F70: .word 0x0000026F
	thumb_func_end sub_02048DD8

	thumb_func_start sub_02048F74
sub_02048F74: ; 0x02048F74
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0206D4AC
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048F74

	thumb_func_start sub_02048F98
sub_02048F98: ; 0x02048F98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0207A0FC
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0206D60C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048F98

	thumb_func_start sub_02048FD0
sub_02048FD0: ; 0x02048FD0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0206D7C4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02048FD0

	thumb_func_start sub_02048FE0
sub_02048FE0: ; 0x02048FE0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0206DB20
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02048FE0

	thumb_func_start sub_02048FF0
sub_02048FF0: ; 0x02048FF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r4, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl sub_0206DB5C
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048FF0

	thumb_func_start sub_02049018
sub_02049018: ; 0x02049018
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	cmp r0, #0
	beq _02049038
	cmp r0, #1
	beq _02049088
	b _020490E6
_02049038:
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	ldr r0, _020490EC ; =0x0000026D
	add r5, #0x80
	strh r0, [r6]
	ldr r0, [sp]
	ldr r1, [r5, #0]
	ldr r2, [r4, #0]
	bl sub_020491D0
	strh r0, [r7]
	b _020490E6
_02049088:
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r3, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020491B8
	add r0, r4, #0
	mov r1, #3
	bl sub_0202CFEC
_020490E6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020490EC: .word 0x0000026D
	thumb_func_end sub_02049018

	thumb_func_start sub_020490F0
sub_020490F0: ; 0x020490F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_020491F4
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020490F0

	thumb_func_start sub_0204912C
sub_0204912C: ; 0x0204912C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	cmp r0, #0
	beq _02049150
	cmp r0, #1
	beq _02049182
	cmp r0, #2
	beq _0204919C
	b _020491B4
_02049150:
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #4
	bl sub_0206CF48
	b _020491B4
_02049182:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206CFB4
	b _020491B4
_0204919C:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206CF9C
_020491B4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204912C

	thumb_func_start sub_020491B8
sub_020491B8: ; 0x020491B8
	push {r3, lr}
	sub r1, r1, #1
	lsl r3, r1, #4
	ldr r1, _020491CC ; =0x020EBB48
	ldr r3, [r1, r3]
	cmp r3, #0
	beq _020491CA
	add r1, r2, #0
	blx r3
_020491CA:
	pop {r3, pc}
	; .align 2, 0
_020491CC: .word 0x020EBB48
	thumb_func_end sub_020491B8

	thumb_func_start sub_020491D0
sub_020491D0: ; 0x020491D0
	push {r4, lr}
	sub r0, r0, #1
	lsl r4, r0, #4
	ldr r0, _020491EC ; =0x020EBB4C
	ldr r3, [r0, r4]
	cmp r3, #0
	beq _020491E4
	add r0, r1, #0
	add r1, r2, #0
	blx r3
_020491E4:
	ldr r0, _020491F0 ; =0x020EBB54
	ldr r0, [r0, r4]
	pop {r4, pc}
	nop
_020491EC: .word 0x020EBB4C
_020491F0: .word 0x020EBB54
	thumb_func_end sub_020491D0

	thumb_func_start sub_020491F4
sub_020491F4: ; 0x020491F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl sub_0202440C
	mov r1, #1
	add r2, r5, #0
	bl sub_0202E6B0
	cmp r0, #0
	bne _02049210
	mov r0, #0
	pop {r3, r4, r5, pc}
_02049210:
	sub r0, r5, #1
	lsl r1, r0, #4
	ldr r0, _02049228 ; =0x020EBB50
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02049220
	mov r0, #1
	pop {r3, r4, r5, pc}
_02049220:
	add r0, r4, #0
	blx r1
	pop {r3, r4, r5, pc}
	nop
_02049228: .word 0x020EBB50
	thumb_func_end sub_020491F4

	thumb_func_start sub_0204922C
sub_0204922C: ; 0x0204922C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0x40
	mov r1, #4
	str r3, [sp, #8]
	bl sub_02023790
	add r1, r7, #0
	add r4, r0, #0
	bl sub_02023D28
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204922C

	thumb_func_start sub_02049268
sub_02049268: ; 0x02049268
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0207A268
	bl sub_02054A74
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B538
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02049268

	thumb_func_start sub_02049288
sub_02049288: ; 0x02049288
	push {r4, lr}
	ldr r0, [r0, #4]
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	bl ov25_02253DD8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B928
	pop {r4, pc}
	thumb_func_end sub_02049288

	thumb_func_start sub_020492A0
sub_020492A0: ; 0x020492A0
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7E4
	ldrh r0, [r0, #2]
	mov r1, #4
	add r2, sp, #8
	bl sub_0200B274
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, sp, #8
	add r3, r1, #0
	bl sub_0204922C
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020492A0

	thumb_func_start sub_020492D4
sub_020492D4: ; 0x020492D4
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E810
	ldrh r0, [r0, #2]
	mov r1, #4
	add r2, sp, #8
	bl sub_0200B274
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, sp, #8
	add r3, r1, #0
	bl sub_0204922C
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020492D4

	thumb_func_start sub_02049308
sub_02049308: ; 0x02049308
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, [r0, #0xc]
	add r6, r1, #0
	bl sub_0202440C
	bl sub_0202E81C
	add r5, r0, #0
	mov r0, #0x40
	mov r1, #4
	bl sub_02023790
	add r1, r5, #6
	add r4, r0, #0
	bl sub_02023D28
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrb r3, [r5, #2]
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02049308

	thumb_func_start sub_02049348
sub_02049348: ; 0x02049348
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E7FC
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02049348

	thumb_func_start sub_02049358
sub_02049358: ; 0x02049358
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02056B24
	bl sub_020567E0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02049358

	thumb_func_start sub_02049368
sub_02049368: ; 0x02049368
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E7D8
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02049368

	thumb_func_start sub_02049378
sub_02049378: ; 0x02049378
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	mov r1, #0
	bl sub_02029D10
	pop {r3, pc}
	thumb_func_end sub_02049378

	thumb_func_start sub_02049388
sub_02049388: ; 0x02049388
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E7F0
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02049388

	thumb_func_start sub_02049398
sub_02049398: ; 0x02049398
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E7E4
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02049398

	thumb_func_start sub_020493A8
sub_020493A8: ; 0x020493A8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E810
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_020493A8

	thumb_func_start sub_020493B8
sub_020493B8: ; 0x020493B8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E81C
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_020493B8

	thumb_func_start sub_020493C8
sub_020493C8: ; 0x020493C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E808
	ldrb r0, [r0, #7]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020493C8

	thumb_func_start sub_020493F4
sub_020493F4: ; 0x020493F4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E81C
	ldrb r0, [r0, #1]
	cmp r0, #6
	bhi _020494C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02049466: ; jump table
	.short _020494C4 - _02049466 - 2 ; case 0
	.short _020494C4 - _02049466 - 2 ; case 1
	.short _020494B0 - _02049466 - 2 ; case 2
	.short _020494B0 - _02049466 - 2 ; case 3
	.short _02049488 - _02049466 - 2 ; case 4
	.short _02049474 - _02049466 - 2 ; case 5
	.short _0204949C - _02049466 - 2 ; case 6
_02049474:
	ldr r0, [sp]
	mov r1, #0x19
	strh r1, [r0]
	mov r0, #0x24
	strh r0, [r7]
	mov r0, #0
	strh r0, [r6]
	mov r0, #0xe
	strh r0, [r5]
	b _020494D6
_02049488:
	ldr r0, [sp]
	mov r1, #0x25
	strh r1, [r0]
	mov r0, #0x3d
	strh r0, [r7]
	mov r0, #1
	strh r0, [r6]
	mov r0, #0xf
	strh r0, [r5]
	b _020494D6
_0204949C:
	ldr r0, [sp]
	mov r1, #0x3b
	strh r1, [r0]
	mov r0, #0x3d
	strh r0, [r7]
	mov r0, #1
	strh r0, [r6]
	mov r0, #0xf
	strh r0, [r5]
	b _020494D6
_020494B0:
	ldr r0, [sp]
	mov r1, #0x48
	strh r1, [r0]
	mov r0, #0x24
	strh r0, [r7]
	mov r0, #0
	strh r0, [r6]
	mov r0, #0xe
	strh r0, [r5]
	b _020494D6
_020494C4:
	ldr r0, [sp]
	mov r1, #0x2f
	strh r1, [r0]
	mov r0, #0x15
	strh r0, [r7]
	mov r0, #0
	strh r0, [r6]
	mov r0, #0xe
	strh r0, [r5]
_020494D6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020493F4

	thumb_func_start sub_020494DC
sub_020494DC: ; 0x020494DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204A124
	add r5, #0x80
	ldr r1, [r5, #0]
	add r1, #0xac
	str r0, [r1, #0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020494DC

	thumb_func_start sub_0204950C
sub_0204950C: ; 0x0204950C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	bl sub_0204A110
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204950C

	thumb_func_start sub_0204951C
sub_0204951C: ; 0x0204951C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0204A32C
	add r4, #0x80
	ldr r1, [r4, #0]
	mov r0, #0
	add r1, #0xac
	str r0, [r1, #0]
	pop {r4, pc}
	thumb_func_end sub_0204951C

	thumb_func_start sub_02049538
sub_02049538: ; 0x02049538
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	bl sub_0203E838
	str r0, [sp]
	add r0, r7, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0203E838
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [sp, #4]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r7, #0
	add r0, #0x80
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0xac
	ldr r5, [r0, #0]
	ldr r0, [sp]
	cmp r0, #0x3a
	bgt _02049606
	cmp r0, #0
	blt _0204960E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02049590: ; jump table
	.short _020497EE - _02049590 - 2 ; case 0
	.short _02049610 - _02049590 - 2 ; case 1
	.short _02049630 - _02049590 - 2 ; case 2
	.short _02049636 - _02049590 - 2 ; case 3
	.short _02049642 - _02049590 - 2 ; case 4
	.short _02049650 - _02049590 - 2 ; case 5
	.short _02049658 - _02049590 - 2 ; case 6
	.short _020497EE - _02049590 - 2 ; case 7
	.short _02049660 - _02049590 - 2 ; case 8
	.short _0204966C - _02049590 - 2 ; case 9
	.short _0204967A - _02049590 - 2 ; case 10
	.short _02049688 - _02049590 - 2 ; case 11
	.short _02049694 - _02049590 - 2 ; case 12
	.short _020497EE - _02049590 - 2 ; case 13
	.short _0204969E - _02049590 - 2 ; case 14
	.short _020496A8 - _02049590 - 2 ; case 15
	.short _020496B2 - _02049590 - 2 ; case 16
	.short _020497EE - _02049590 - 2 ; case 17
	.short _020497EE - _02049590 - 2 ; case 18
	.short _020497EE - _02049590 - 2 ; case 19
	.short _020497EE - _02049590 - 2 ; case 20
	.short _020497EE - _02049590 - 2 ; case 21
	.short _020497EE - _02049590 - 2 ; case 22
	.short _020497EE - _02049590 - 2 ; case 23
	.short _020497EE - _02049590 - 2 ; case 24
	.short _020497EE - _02049590 - 2 ; case 25
	.short _020497EE - _02049590 - 2 ; case 26
	.short _020497EE - _02049590 - 2 ; case 27
	.short _020497EE - _02049590 - 2 ; case 28
	.short _020497EE - _02049590 - 2 ; case 29
	.short _020496C4 - _02049590 - 2 ; case 30
	.short _020496DC - _02049590 - 2 ; case 31
	.short _020496F6 - _02049590 - 2 ; case 32
	.short _020497EE - _02049590 - 2 ; case 33
	.short _020497EE - _02049590 - 2 ; case 34
	.short _02049702 - _02049590 - 2 ; case 35
	.short _020497EE - _02049590 - 2 ; case 36
	.short _0204970C - _02049590 - 2 ; case 37
	.short _02049716 - _02049590 - 2 ; case 38
	.short _02049724 - _02049590 - 2 ; case 39
	.short _020497EE - _02049590 - 2 ; case 40
	.short _02049734 - _02049590 - 2 ; case 41
	.short _020497EE - _02049590 - 2 ; case 42
	.short _02049740 - _02049590 - 2 ; case 43
	.short _020497EE - _02049590 - 2 ; case 44
	.short _0204974A - _02049590 - 2 ; case 45
	.short _020497EE - _02049590 - 2 ; case 46
	.short _02049754 - _02049590 - 2 ; case 47
	.short _0204975E - _02049590 - 2 ; case 48
	.short _0204976A - _02049590 - 2 ; case 49
	.short _02049776 - _02049590 - 2 ; case 50
	.short _0204978A - _02049590 - 2 ; case 51
	.short _02049794 - _02049590 - 2 ; case 52
	.short _0204979E - _02049590 - 2 ; case 53
	.short _020497A8 - _02049590 - 2 ; case 54
	.short _020497B6 - _02049590 - 2 ; case 55
	.short _0204972C - _02049590 - 2 ; case 56
	.short _020497C4 - _02049590 - 2 ; case 57
	.short _020497E0 - _02049590 - 2 ; case 58
_02049606:
	ldr r0, [sp]
	cmp r0, #0x64
	bne _0204960E
	b _020497D0
_0204960E:
	b _020497EE
_02049610:
	cmp r6, #0
	bne _02049622
	ldrb r0, [r5, #0xe]
	ldr r1, [r2, #0xc]
	mov r2, #1
	bl sub_02049EC4
	strh r0, [r4]
	b _020497F6
_02049622:
	ldr r1, [r2, #0xc]
	add r0, r6, #0
	mov r2, #1
	bl sub_02049EC4
	strh r0, [r4]
	b _020497F6
_02049630:
	bl sub_02049F8C
	b _020497F6
_02049636:
	ldr r0, [r2, #0xc]
	bl sub_0202D740
	bl sub_02049F98
	b _020497F6
_02049642:
	ldr r0, [r2, #0xc]
	bl sub_0202D740
	bl sub_02049FA0
	strh r0, [r4]
	b _020497F6
_02049650:
	add r0, r2, #0
	bl sub_02049FA8
	b _020497F6
_02049658:
	add r0, r2, #0
	bl sub_02049FE8
	b _020497F6
_02049660:
	ldr r0, [r2, #0xc]
	add r1, r6, #0
	bl sub_02049FF8
	strh r0, [r4]
	b _020497F6
_0204966C:
	ldr r1, [r2, #0xc]
	mov r0, #0
	mov r2, #2
	bl sub_0204AABC
	strh r0, [r4]
	b _020497F6
_0204967A:
	mov r0, #0
	ldr r1, [r2, #0xc]
	add r2, r0, #0
	bl sub_0204AABC
	strh r0, [r4]
	b _020497F6
_02049688:
	lsl r1, r6, #0x18
	ldr r0, [r2, #0xc]
	lsr r1, r1, #0x18
	bl sub_0204A030
	b _020497F6
_02049694:
	ldr r0, [r2, #0xc]
	bl sub_0204A050
	strh r0, [r4]
	b _020497F6
_0204969E:
	ldr r0, [r2, #0xc]
	bl sub_0204A064
	strh r0, [r4]
	b _020497F6
_020496A8:
	ldr r0, [r2, #0xc]
	bl sub_0204A100
	strh r0, [r4]
	b _020497F6
_020496B2:
	ldrh r3, [r4]
	ldr r0, [r7, #0x74]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl sub_0206BCE4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020496C4:
	add r0, r2, #0
	mov r1, #0x13
	bl sub_0203F098
	add r2, r0, #0
	ldr r1, [r7, #0x74]
	add r0, r5, #0
	bl sub_0204A358
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020496DC:
	add r0, r2, #0
	mov r1, #0x13
	bl sub_0203F098
	add r7, #0x80
	ldr r2, [r7, #0]
	add r1, r0, #0
	ldr r2, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204A378
	strh r0, [r4]
	b _020497F6
_020496F6:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204A410
	strh r0, [r4]
	b _020497F6
_02049702:
	add r0, r5, #0
	bl sub_0204A57C
	strh r0, [r4]
	b _020497F6
_0204970C:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204A660
	b _020497F6
_02049716:
	ldr r1, [r2, #0xc]
	add r2, #0x9c
	ldr r2, [r2, #0]
	add r0, r5, #0
	bl sub_0204A7A4
	b _020497F6
_02049724:
	add r0, r5, #0
	bl sub_0204A8C8
	b _020497F6
_0204972C:
	add r0, r5, #0
	bl sub_0204A97C
	b _020497F6
_02049734:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0204A9E0
	strh r0, [r4]
	b _020497F6
_02049740:
	add r0, r5, #0
	bl sub_0204A9F8
	strh r0, [r4]
	b _020497F6
_0204974A:
	add r0, r5, #0
	bl sub_0204A9FC
	strh r0, [r4]
	b _020497F6
_02049754:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204AA7C
	b _020497F6
_0204975E:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204AB68
	strh r0, [r4]
	b _020497F6
_0204976A:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204ABA0
	strh r0, [r4]
	b _020497F6
_02049776:
	ldrb r1, [r5, #0x10]
	mov r0, #0xe0
	bic r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5, #0x10]
	b _020497F6
_0204978A:
	ldrb r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	strh r0, [r4]
	b _020497F6
_02049794:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204A4C8
	b _020497F6
_0204979E:
	add r0, r5, r6
	add r0, #0x2a
	ldrb r0, [r0]
	strh r0, [r4]
	b _020497F6
_020497A8:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	mov r2, #1
	bl sub_0204AABC
	strh r0, [r4]
	b _020497F6
_020497B6:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02049AE0
	strh r0, [r4]
	b _020497F6
_020497C4:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204ABF4
	strh r0, [r4]
	b _020497F6
_020497D0:
	cmp r5, #0
	bne _020497DA
	mov r0, #1
	strh r0, [r4]
	b _020497F6
_020497DA:
	mov r0, #0
	strh r0, [r4]
	b _020497F6
_020497E0:
	ldr r0, _020497FC ; =0x00000884
	mov r1, #0
	add r0, r5, r0
	mov r2, #0x46
	bl sub_020C4CF4
	b _020497F6
_020497EE:
	bl sub_02022974
	mov r0, #0
	strh r0, [r4]
_020497F6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020497FC: .word 0x00000884
	thumb_func_end sub_02049538

	thumb_func_start sub_02049800
sub_02049800: ; 0x02049800
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r1, #0xac
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	lsl r2, r6, #4
	add r2, r6, r2
	mov r1, #0x38
	lsl r2, r2, #4
	mul r1, r7
	add r2, r4, r2
	add r3, r2, r1
	mov r2, #0xb2
	lsl r2, r2, #2
	ldrh r1, [r3, r2]
	lsl r1, r1, #0x15
	lsr r4, r1, #0x15
	ldr r1, [sp]
	strh r4, [r1]
	add r1, r2, #4
	ldrh r1, [r3, r1]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02049800

	thumb_func_start sub_02049880
sub_02049880: ; 0x02049880
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0206BDBC
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02049880

	thumb_func_start sub_020498A8
sub_020498A8: ; 0x020498A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0206BF04
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020498A8

	thumb_func_start sub_020498D0
sub_020498D0: ; 0x020498D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r6, [r0, #0]
	mov r0, #0
	strh r0, [r4]
	cmp r7, #0
	beq _0204992C
	cmp r7, #1
	beq _02049944
	cmp r7, #2
	beq _02049958
	b _0204996C
_0204992C:
	mov r0, #0x3e
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0xc]
	bl sub_0204B060
	b _0204996C
_02049944:
	mov r0, #0x3f
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0204B0BC
	b _0204996C
_02049958:
	mov r0, #0x40
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [sp, #4]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0204B0D4
_0204996C:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0205E6D8
	cmp r0, #1
	bne _02049996
	bl sub_0203608C
	ldr r1, _020499B8 ; =0x0000083E
	add r1, r6, r1
	bl sub_02036614
	cmp r0, #1
	bne _02049990
	mov r0, #1
	strh r0, [r4]
	b _020499B0
_02049990:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02049996:
	add r0, r6, #0
	bl sub_0209BA80
	ldr r1, _020499B8 ; =0x0000083E
	ldr r0, [sp]
	add r1, r6, r1
	mov r2, #0x46
	bl sub_020359DC
	cmp r0, #1
	bne _020499B0
	mov r0, #1
	strh r0, [r4]
_020499B0:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020499B8: .word 0x0000083E
	thumb_func_end sub_020498D0

	thumb_func_start sub_020499BC
sub_020499BC: ; 0x020499BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r1, #0xac
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0205E6D8
	cmp r0, #1
	bne _02049A04
	add r5, #0x80
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x10]
	add r2, r7, #0
	bl sub_0206BD88
	b _02049A14
_02049A04:
	ldr r0, _02049A18 ; =0x000008DA
	ldr r1, _02049A1C ; =sub_02049A20
	strh r7, [r4, r0]
	sub r0, r0, #5
	strb r6, [r4, r0]
	add r0, r5, #0
	bl sub_0203E764
_02049A14:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02049A18: .word 0x000008DA
_02049A1C: .word sub_02049A20
	thumb_func_end sub_020499BC

	thumb_func_start sub_02049A20
sub_02049A20: ; 0x02049A20
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0xac
	ldr r4, [r1, #0]
	ldr r1, _02049A5C ; =0x000008DA
	ldrh r1, [r4, r1]
	bl sub_0203F118
	ldr r1, _02049A60 ; =0x000008D5
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _02049A40
	mov r3, #1
	b _02049A42
_02049A40:
	mov r3, #2
_02049A42:
	ldr r1, _02049A64 ; =0x000008D4
	ldrb r2, [r4, r1]
	cmp r2, r3
	bne _02049A58
	mov r2, #0
	strb r2, [r4, r1]
	add r1, r1, #4
	ldrh r1, [r4, r1]
	strh r1, [r0]
	mov r0, #1
	pop {r4, pc}
_02049A58:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02049A5C: .word 0x000008DA
_02049A60: .word 0x000008D5
_02049A64: .word 0x000008D4
	thumb_func_end sub_02049A20

	thumb_func_start sub_02049A68
sub_02049A68: ; 0x02049A68
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D764
	add r1, sp, #0
	bl sub_0202D708
	add r0, sp, #0
	ldrb r1, [r0]
	strh r1, [r4]
	ldrb r0, [r0, #1]
	strh r0, [r6]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02049A68

	thumb_func_start sub_02049AB4
sub_02049AB4: ; 0x02049AB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D764
	bl sub_0202D5F0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02049AB4

	thumb_func_start sub_02049AE0
sub_02049AE0: ; 0x02049AE0
	cmp r1, #2
	bne _02049AEC
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	bx lr
_02049AEC:
	cmp r1, #1
	bne _02049B12
	ldrb r1, [r0, #0xf]
	cmp r1, #2
	bne _02049B04
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	lsl r1, r0, #1
	ldr r0, _02049B20 ; =0x020EBC78
	ldrh r0, [r0, r1]
	bx lr
_02049B04:
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _02049B0E
	mov r0, #0x61
	bx lr
_02049B0E:
	mov r0, #0
	bx lr
_02049B12:
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _02049B1C
	mov r0, #0x61
	bx lr
_02049B1C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02049B20: .word 0x020EBC78
	thumb_func_end sub_02049AE0

	thumb_func_start sub_02049B24
sub_02049B24: ; 0x02049B24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r1, [r5, #8]
	ldr r0, [r0, #0]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r6, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	mov r1, #0x26
	bl sub_0203F098
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r4, #0
	bl ov5_021DD140
	str r0, [r7, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02049B24

	thumb_func_start sub_02049B54
sub_02049B54: ; 0x02049B54
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DD084
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02049B54

	thumb_func_start sub_02049B6C
sub_02049B6C: ; 0x02049B6C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0203F098
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov5_021DD1A4
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02049B6C

	thumb_func_start sub_02049B8C
sub_02049B8C: ; 0x02049B8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02049B8C

	thumb_func_start sub_02049BBC
sub_02049BBC: ; 0x02049BBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x44
	add r2, r6, #0
	bl sub_0202CF70
	add r0, r4, #0
	bl sub_0202D750
	add r1, r6, #0
	mov r2, #5
	bl sub_0202D230
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02049BBC

	thumb_func_start sub_02049C00
sub_02049C00: ; 0x02049C00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x45
	add r2, r6, #0
	bl sub_0202CF70
	add r0, r4, #0
	bl sub_0202D750
	add r1, r6, #0
	mov r2, #6
	bl sub_0202D230
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02049C00

	thumb_func_start sub_02049C44
sub_02049C44: ; 0x02049C44
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r5, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	cmp r0, r6
	bhs _02049C8A
	mov r0, #0
	b _02049C8C
_02049C8A:
	mov r0, #1
_02049C8C:
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02049C44

	thumb_func_start sub_02049C94
sub_02049C94: ; 0x02049C94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	cmp r7, #1
	bne _02049CEA
	mov r1, #0x1a
	b _02049CEC
_02049CEA:
	mov r1, #0
_02049CEC:
	add r1, r1, r6
	lsl r2, r1, #2
	ldr r1, _02049D00 ; =0x020EBC82
	ldrh r1, [r1, r2]
	strh r1, [r4]
	ldr r1, _02049D04 ; =0x020EBC84
	ldrh r1, [r1, r2]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02049D00: .word 0x020EBC82
_02049D04: .word 0x020EBC84
	thumb_func_end sub_02049C94

	thumb_func_start sub_02049D08
sub_02049D08: ; 0x02049D08
	cmp r0, #6
	bhi _02049D32
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02049D18: ; jump table
	.short _02049D26 - _02049D18 - 2 ; case 0
	.short _02049D2A - _02049D18 - 2 ; case 1
	.short _02049D2E - _02049D18 - 2 ; case 2
	.short _02049D2E - _02049D18 - 2 ; case 3
	.short _02049D26 - _02049D18 - 2 ; case 4
	.short _02049D26 - _02049D18 - 2 ; case 5
	.short _02049D2E - _02049D18 - 2 ; case 6
_02049D26:
	mov r0, #3
	bx lr
_02049D2A:
	mov r0, #4
	bx lr
_02049D2E:
	mov r0, #2
	bx lr
_02049D32:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02049D08

	thumb_func_start sub_02049D38
sub_02049D38: ; 0x02049D38
	push {r4, r5}
	mov r5, #0
	cmp r3, #0
	ble _02049D5E
_02049D40:
	ldrh r4, [r0]
	cmp r1, r4
	bne _02049D56
	cmp r2, #0
	beq _02049D56
	ldrh r4, [r0, #2]
	cmp r2, r4
	bne _02049D56
	mov r0, #1
	pop {r4, r5}
	bx lr
_02049D56:
	add r5, r5, #1
	add r0, r0, #4
	cmp r5, r3
	blt _02049D40
_02049D5E:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02049D38

	thumb_func_start sub_02049D64
sub_02049D64: ; 0x02049D64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov lr, r0
	sub r0, r5, #1
	mov r7, #0
	mov ip, r0
	cmp r0, #0
	ble _02049DB0
	mov r3, lr
_02049D76:
	add r2, r7, #1
	cmp r2, r5
	bge _02049DA6
	ldrh r6, [r3]
	lsl r1, r2, #2
	mov r0, lr
	add r4, r0, r1
_02049D84:
	ldrh r0, [r4]
	cmp r6, r0
	bne _02049D8E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02049D8E:
	ldrh r1, [r3, #2]
	cmp r1, #0
	beq _02049D9E
	ldrh r0, [r4, #2]
	cmp r1, r0
	bne _02049D9E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02049D9E:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, r5
	blt _02049D84
_02049DA6:
	add r7, r7, #1
	mov r0, ip
	add r3, r3, #4
	cmp r7, r0
	blt _02049D76
_02049DB0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02049D64

	thumb_func_start sub_02049DB4
sub_02049DB4: ; 0x02049DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp]
	add r7, r1, #0
	add r6, r2, #0
	add r0, sp, #0x20
	mov r1, #0
	mov r2, #0x10
	str r3, [sp, #4]
	bl sub_020C4CF4
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02049EBC
	ldr r0, [sp]
	str r0, [sp, #0x10]
_02049DD8:
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #2]
	add r0, sp, #0x20
	strh r1, [r0, #2]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r6
	bge _02049EAA
	lsl r1, r0, #2
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #0xc]
_02049DFA:
	ldr r0, [sp, #0xc]
	cmp r7, #2
	ldrh r1, [r0]
	add r0, sp, #0x20
	strh r1, [r0, #4]
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #2]
	add r0, sp, #0x20
	strh r1, [r0, #6]
	bne _02049E20
	add r0, sp, #0x20
	add r1, r7, #0
	bl sub_02049D64
	cmp r0, #0
	beq _02049E9A
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02049E20:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	bge _02049E9A
	lsl r1, r0, #2
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #8]
_02049E32:
	ldr r0, [sp, #8]
	cmp r7, #3
	ldrh r1, [r0]
	add r0, sp, #0x20
	strh r1, [r0, #8]
	ldr r0, [sp, #8]
	ldrh r1, [r0, #2]
	add r0, sp, #0x20
	strh r1, [r0, #0xa]
	bne _02049E58
	add r0, sp, #0x20
	add r1, r7, #0
	bl sub_02049D64
	cmp r0, #0
	beq _02049E8A
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02049E58:
	ldr r0, [sp, #0x14]
	add r4, r0, #1
	cmp r4, r6
	bge _02049E8A
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
_02049E66:
	ldrh r1, [r5]
	add r0, sp, #0x20
	strh r1, [r0, #0xc]
	ldrh r1, [r5, #2]
	strh r1, [r0, #0xe]
	add r0, sp, #0x20
	add r1, r7, #0
	bl sub_02049D64
	cmp r0, #0
	beq _02049E82
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02049E82:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02049E66
_02049E8A:
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blt _02049E32
_02049E9A:
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r6
	blt _02049DFA
_02049EAA:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1c]
	cmp r1, r0
	blt _02049DD8
_02049EBC:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02049DB4

	thumb_func_start sub_02049EC4
sub_02049EC4: ; 0x02049EC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	add r0, r1, #0
	str r2, [sp, #4]
	bl sub_0207A268
	str r0, [sp, #0xc]
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x10]
	ldr r0, [sp]
	cmp r1, r0
	bge _02049EEA
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02049EEA:
	ldr r0, [sp, #0x10]
	mov r7, #0
	add r4, r7, #0
	cmp r0, #0
	bls _02049F6A
_02049EF4:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp, #8]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02049F20
	mov r6, #0
_02049F20:
	ldr r0, [sp, #8]
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02049F5E
	add r0, r5, #0
	bl sub_02078804
	cmp r0, #1
	beq _02049F5E
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02049F4E
	add r0, sp, #0x14
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02049D38
	cmp r0, #1
	beq _02049F5E
_02049F4E:
	lsl r1, r4, #2
	add r0, sp, #0x14
	add r2, r0, r1
	strh r5, [r0, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	strh r6, [r2, #2]
	lsr r4, r0, #0x18
_02049F5E:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r7, r0
	blo _02049EF4
_02049F6A:
	ldr r0, [sp]
	cmp r4, r0
	bge _02049F76
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02049F76:
	ldr r1, [sp]
	add r0, sp, #0x14
	add r3, r1, #0
	sub r3, r4, r3
	add r2, r4, #0
	add r3, r3, #1
	bl sub_02049DB4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02049EC4

	thumb_func_start sub_02049F8C
sub_02049F8C: ; 0x02049F8C
	ldr r3, _02049F94 ; =sub_020C3EE4
	mov r0, #0
	bx r3
	nop
_02049F94: .word sub_020C3EE4
	thumb_func_end sub_02049F8C

	thumb_func_start sub_02049F98
sub_02049F98: ; 0x02049F98
	ldr r3, _02049F9C ; =sub_0202D060
	bx r3
	; .align 2, 0
_02049F9C: .word sub_0202D060
	thumb_func_end sub_02049F98

	thumb_func_start sub_02049FA0
sub_02049FA0: ; 0x02049FA0
	ldr r3, _02049FA4 ; =sub_0202D214
	bx r3
	; .align 2, 0
_02049FA4: .word sub_0202D214
	thumb_func_end sub_02049FA0

	thumb_func_start sub_02049FA8
sub_02049FA8: ; 0x02049FA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	ldr r1, [r5, #0x1c]
	ldr r1, [r1, #0]
	str r1, [r4, #0]
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #4]
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AD9C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02049FA8

	thumb_func_start sub_02049FE8
sub_02049FE8: ; 0x02049FE8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206ADAC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02049FE8

	thumb_func_start sub_02049FF8
sub_02049FF8: ; 0x02049FF8
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #5
	bne _0204A004
	mov r0, #0
	pop {r4, pc}
_0204A004:
	cmp r4, #6
	bne _0204A020
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x71
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x71
	bl sub_02030698
	pop {r4, pc}
_0204A020:
	bl sub_0203068C
	lsl r1, r4, #1
	add r1, r1, #1
	mov r2, #0xff
	bl sub_02030698
	pop {r4, pc}
	thumb_func_end sub_02049FF8

	thumb_func_start sub_0204A030
sub_0204A030: ; 0x0204A030
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202D750
	cmp r4, #0
	bne _0204A046
	mov r1, #5
	mov r2, #2
	bl sub_0202D414
	pop {r4, pc}
_0204A046:
	mov r1, #5
	mov r2, #1
	bl sub_0202D414
	pop {r4, pc}
	thumb_func_end sub_0204A030

	thumb_func_start sub_0204A050
sub_0204A050: ; 0x0204A050
	push {r3, lr}
	bl sub_0202D750
	mov r1, #5
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	thumb_func_end sub_0204A050

	thumb_func_start sub_0204A064
sub_0204A064: ; 0x0204A064
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0202D740
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202D750
	mov r1, #0
	add r6, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0202D0BC
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	bne _0204A08C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204A08C:
	cmp r4, #6
	bne _0204A0AC
	add r0, r5, #0
	bl sub_0203068C
	add r7, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0x64
	mov r3, #0
	bl sub_020306E4
	b _0204A0BC
_0204A0AC:
	add r1, r4, #0
	add r1, #8
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #2
	bl sub_0202D414
_0204A0BC:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_0202D3B4
	add r0, r5, #0
	bl sub_0203068C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E750
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205E750
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_020306E4
	cmp r4, #4
	beq _0204A0FA
	cmp r4, #6
	beq _0204A0FA
	add r0, r5, #0
	bl sub_0206C02C
_0204A0FA:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204A064

	thumb_func_start sub_0204A100
sub_0204A100: ; 0x0204A100
	push {r3, lr}
	bl sub_0202D764
	bl sub_0202D5E8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	thumb_func_end sub_0204A100

	thumb_func_start sub_0204A110
sub_0204A110: ; 0x0204A110
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0204A11E
	bl sub_02022974
_0204A11E:
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_0204A110

	thumb_func_start sub_0204A124
sub_0204A124: ; 0x0204A124
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r1, _0204A31C ; =0x000008DC
	mov r0, #0xb
	add r7, r2, #0
	bl sub_02018144
	ldr r2, _0204A31C ; =0x000008DC
	mov r1, #0
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0xb
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_0202D740
	str r0, [r4, #0x70]
	add r0, r6, #0
	bl sub_0202D750
	str r0, [r4, #0x74]
	ldr r0, _0204A320 ; =0x12345678
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, [r4, #0x70]
	bl sub_0202D21C
	cmp r5, #0
	bne _0204A1B4
	strb r7, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	bl sub_02049D08
	strb r0, [r4, #0xe]
	mov r0, #1
	strb r0, [r4, #0xc]
	mov r2, #0
	strb r2, [r4, #0xd]
	mov r1, #0xff
_0204A178:
	add r0, r4, r2
	add r0, #0x2a
	strb r1, [r0]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, #4
	blo _0204A178
	ldr r1, _0204A324 ; =0x0000FFFF
	mov r2, #0
_0204A18C:
	lsl r0, r2, #1
	add r0, r4, r0
	strh r1, [r0, #0x3e]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, #0xe
	blo _0204A18C
	ldr r0, [r4, #0x70]
	bl sub_0202D060
	ldrb r1, [r4, #0xf]
	add r0, sp, #8
	add r2, sp, #8
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl sub_0202D140
	b _0204A272
_0204A1B4:
	mov r1, #0
	ldr r0, [r4, #0x70]
	add r2, r1, #0
	bl sub_0202D0BC
	strb r0, [r4, #0xf]
	ldr r0, [r4, #0x70]
	mov r1, #1
	mov r2, #0
	bl sub_0202D0BC
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	bl sub_02049D08
	strb r0, [r4, #0xe]
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #5
	add r2, #0x2a
	bl sub_0202D0BC
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #8
	add r2, #0x3e
	bl sub_0202D0BC
	ldr r0, [r4, #0x70]
	mov r1, #0xa
	mov r2, #0
	bl sub_0202D0BC
	str r0, [r4, #8]
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bne _0204A272
	ldr r0, [r4, #0x70]
	mov r1, #9
	mov r2, #0
	bl sub_0202D0BC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1d
	ldrb r1, [r4, #0x10]
	mov r2, #0xe0
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r4, #0x10]
	ldrb r3, [r4, #0x10]
	ldr r2, _0204A328 ; =0x000007E8
	ldr r0, [r4, #0x70]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1d
	add r2, r4, r2
	lsl r3, r3, #4
	mov r1, #6
	add r2, r2, r3
	bl sub_0202D0BC
	ldrb r0, [r4, #0x10]
	mov r1, #7
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1d
	ldr r0, [r4, #0x70]
	bl sub_0202D0BC
	add r3, r0, #0
	ldr r0, _0204A328 ; =0x000007E8
	mov r1, #0xa6
	lsl r1, r1, #2
	add r0, r4, r0
	lsl r2, r5, #4
	add r0, r0, r2
	add r2, r5, r2
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, r4, r1
	lsl r2, r2, #4
	add r1, r1, r2
	mov r2, #0x4b
	lsl r2, r2, #2
	add r2, r5, r2
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_0204B404
_0204A272:
	add r0, r6, #0
	bl sub_02025E38
	bl sub_02025F30
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	beq _0204A2F8
	add r0, r6, #0
	bl sub_0203068C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0202CD88
	ldrb r1, [r4, #0xf]
	add r7, r0, #0
	cmp r1, #6
	bne _0204A2A6
	add r0, r6, #0
	bl sub_020507E4
	bl sub_0206B6FC
	b _0204A2B8
_0204A2A6:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x74]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_0204A2B8:
	cmp r0, #0
	beq _0204A2EE
	ldrb r1, [r4, #0xf]
	cmp r1, #6
	bne _0204A2D4
	mov r0, #0x71
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x71
	bl sub_02030698
	b _0204A2E0
_0204A2D4:
	lsl r1, r1, #1
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #0xff
	bl sub_02030698
_0204A2E0:
	strh r0, [r4, #0x1a]
	ldrb r1, [r4, #0xf]
	ldr r0, [r4, #0x74]
	mov r2, #0
	bl sub_0202D3B4
	strh r0, [r4, #0x1c]
_0204A2EE:
	add r0, r7, #0
	mov r1, #0x1d
	bl sub_0202CFB8
	str r0, [r4, #0x20]
_0204A2F8:
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	bne _0204A316
	ldrh r0, [r4, #0x1a]
	mov r1, #7
	bl sub_020E1F6C
	add r2, r0, #0
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x74]
	mov r1, #6
	lsr r2, r2, #0x10
	bl sub_0202D3FC
	strh r0, [r4, #0x1c]
_0204A316:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0204A31C: .word 0x000008DC
_0204A320: .word 0x12345678
_0204A324: .word 0x0000FFFF
_0204A328: .word 0x000007E8
	thumb_func_end sub_0204A124

	thumb_func_start sub_0204A32C
sub_0204A32C: ; 0x0204A32C
	push {r4, lr}
	add r4, r0, #0
	beq _0204A34E
	ldr r1, [r4, #0]
	ldr r0, _0204A350 ; =0x12345678
	cmp r1, r0
	beq _0204A33E
	bl sub_02022974
_0204A33E:
	ldr r2, _0204A354 ; =0x000008DC
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_020181C4
_0204A34E:
	pop {r4, pc}
	; .align 2, 0
_0204A350: .word 0x12345678
_0204A354: .word 0x000008DC
	thumb_func_end sub_0204A32C

	thumb_func_start sub_0204A358
sub_0204A358: ; 0x0204A358
	push {r3, lr}
	sub sp, #0x10
	ldrb r0, [r0, #0xe]
	mov r3, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x11
	str r3, [sp, #0xc]
	bl sub_0206BBFC
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_0204A358

	thumb_func_start sub_0204A378
sub_0204A378: ; 0x0204A378
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r1, #0]
	str r1, [sp]
	str r0, [sp, #4]
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _0204A396
	ldr r0, [sp, #4]
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #7
	bne _0204A3A6
_0204A396:
	ldr r0, [sp, #4]
	bl sub_020181C4
	ldr r1, [sp]
	mov r0, #0
	str r0, [r1, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204A3A6:
	add r0, r2, #0
	bl sub_0207A268
	str r0, [sp, #8]
	ldrb r0, [r5, #0xe]
	mov r4, #0
	cmp r0, #0
	ble _0204A3FA
_0204A3B6:
	ldr r0, [sp, #4]
	add r0, r0, r4
	add r0, #0x2c
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, r4
	add r0, #0x2a
	strb r1, [r0]
	add r1, r5, r4
	add r1, #0x2a
	ldrb r1, [r1]
	ldr r0, [sp, #8]
	bl sub_0207A0FC
	lsl r1, r4, #1
	add r6, r5, r1
	add r7, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r6, #0x2e]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r6, #0x36]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrb r0, [r5, #0xe]
	cmp r4, r0
	blt _0204A3B6
_0204A3FA:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204A378

	thumb_func_start sub_0204A410
sub_0204A410: ; 0x0204A410
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	add r0, r1, #0
	bl sub_0207A268
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	ble _0204A498
	add r7, sp, #0xc
	add r4, sp, #0x14
_0204A42C:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r1, r1, r5
	add r1, #0x2a
	ldrb r1, [r1]
	bl sub_0207A0FC
	str r0, [sp, #8]
	lsl r6, r5, #1
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, r6]
	ldr r0, [sp, #8]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r7, r6]
	cmp r5, #0
	beq _0204A48A
	mov r0, #0
	cmp r5, #0
	bls _0204A48A
	ldrh r1, [r4, r6]
	ldrh r2, [r7, r6]
_0204A462:
	lsl r6, r0, #1
	ldrh r3, [r4, r6]
	cmp r1, r3
	bne _0204A470
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0204A470:
	cmp r2, #0
	beq _0204A480
	ldrh r3, [r7, r6]
	cmp r2, r3
	bne _0204A480
	add sp, #0x1c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0204A480:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r5
	blo _0204A462
_0204A48A:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp]
	ldrb r0, [r0, #0xe]
	cmp r5, r0
	blt _0204A42C
_0204A498:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204A410

	thumb_func_start sub_0204A4A0
sub_0204A4A0: ; 0x0204A4A0
	push {r3, r4}
	mov r4, #0
	cmp r2, #0
	bls _0204A4C0
_0204A4A8:
	lsl r3, r4, #1
	ldrh r3, [r0, r3]
	cmp r1, r3
	bne _0204A4B6
	mov r0, #1
	pop {r3, r4}
	bx lr
_0204A4B6:
	add r3, r4, #1
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	cmp r4, r2
	blo _0204A4A8
_0204A4C0:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0204A4A0

	thumb_func_start sub_0204A4C8
sub_0204A4C8: ; 0x0204A4C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r1, [r5, #0xf]
	cmp r1, #2
	beq _0204A4DC
	cmp r1, #6
	beq _0204A4DC
	cmp r1, #3
	bne _0204A53A
_0204A4DC:
	cmp r1, #3
	bne _0204A4E8
	ldrh r2, [r5, #0x14]
	ldrh r0, [r5, #0x1c]
	cmp r2, r0
	bhi _0204A4F6
_0204A4E8:
	cmp r1, #6
	bne _0204A4F4
	ldrh r2, [r5, #0x14]
	ldrh r0, [r5, #0x1c]
	cmp r2, r0
	bhi _0204A4F6
_0204A4F4:
	ldrh r2, [r5, #0x1c]
_0204A4F6:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x3e
	mov r4, #0
	add r6, r5, #0
	str r0, [sp, #4]
_0204A508:
	lsr r2, r4, #0x1f
	add r2, r4, r2
	lsl r2, r2, #0x17
	ldrb r3, [r5, #0xf]
	ldr r1, [sp]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_0204B0F0
	add r7, r0, #0
	lsl r2, r4, #0x10
	ldr r0, [sp, #4]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl sub_0204A4A0
	cmp r0, #0
	bne _0204A508
	add r4, r4, #1
	strh r7, [r6, #0x3e]
	add r6, r6, #2
	cmp r4, #0xe
	blt _0204A508
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204A53A:
	str r0, [sp, #8]
	add r0, #0x3e
	mov r4, #0
	add r6, r5, #0
	str r0, [sp, #8]
_0204A544:
	ldrh r1, [r5, #0x1c]
	lsl r2, r4, #0x18
	ldrb r3, [r5, #0xf]
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_0204B0F0
	add r7, r0, #0
	lsl r2, r4, #0x10
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl sub_0204A4A0
	cmp r0, #0
	bne _0204A544
	add r4, r4, #1
	strh r7, [r6, #0x3e]
	add r6, r6, #2
	cmp r4, #7
	blt _0204A544
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204A4C8

	thumb_func_start sub_0204A578
sub_0204A578: ; 0x0204A578
	ldrb r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0204A578

	thumb_func_start sub_0204A57C
sub_0204A57C: ; 0x0204A57C
	ldrb r2, [r0, #0x10]
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x1f
	beq _0204A588
	mov r0, #1
	bx lr
_0204A588:
	ldrb r1, [r0, #0xc]
	cmp r1, #7
	bls _0204A59C
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r2, r1
	strb r2, [r0, #0x10]
	add r0, r1, #0
	bx lr
_0204A59C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0204A57C

	thumb_func_start sub_0204A5A0
sub_0204A5A0: ; 0x0204A5A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0204A5B2
	cmp r0, #1
	bne _0204A5E8
_0204A5B2:
	add r0, r4, #0
	bl sub_0207A268
	ldrb r1, [r5, #0xf]
	cmp r1, #0
	bne _0204A5D4
	add r5, #0x2a
	ldrb r1, [r5]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #1
	bl sub_0206DBB0
	pop {r4, r5, r6, pc}
_0204A5D4:
	add r5, #0x2a
	ldrb r1, [r5]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0206DBB0
_0204A5E8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204A5A0

	thumb_func_start sub_0204A5EC
sub_0204A5EC: ; 0x0204A5EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	ldrb r2, [r5, #0xf]
	add r6, r1, #0
	add r4, r3, #0
	cmp r2, #0
	beq _0204A606
	cmp r2, #1
	beq _0204A60C
	cmp r2, #4
	beq _0204A620
	pop {r3, r4, r5, r6, r7, pc}
_0204A606:
	mov r2, #0
	bl sub_0204AE20
_0204A60C:
	cmp r4, #7
	blo _0204A65E
	add r0, r6, #0
	bl sub_0202440C
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0206CFE4
	pop {r3, r4, r5, r6, r7, pc}
_0204A620:
	mov r2, #1
	bl sub_0204AE20
	ldrh r1, [r5, #0x28]
	ldrh r2, [r5, #0x24]
	ldrh r3, [r5, #0x26]
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x70]
	lsr r1, r1, #0x18
	bl sub_0202D1E8
	ldrb r1, [r5, #0xf]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r5, #0x70]
	mov r1, #0
	bl sub_0202D140
	ldrb r1, [r5, #0xc]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r5, #0x70]
	mov r1, #1
	bl sub_0202D140
	ldr r0, [r5, #0x74]
	ldr r1, [r5, #0x70]
	bl sub_0202D334
_0204A65E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204A5EC

	thumb_func_start sub_0204A660
sub_0204A660: ; 0x0204A660
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202CD88
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_0203068C
	str r0, [sp]
	ldrb r0, [r5, #0xf]
	cmp r0, #5
	bne _0204A680
	b _0204A79A
_0204A680:
	cmp r0, #6
	bne _0204A688
	mov r4, #0x70
	b _0204A68A
_0204A688:
	lsl r4, r0, #1
_0204A68A:
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02030698
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r6, [r5, #0x1a]
	ldrb r3, [r5, #0xd]
	ldr r0, [sp]
	add r1, r4, #0
	add r3, r6, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_02030848
	add r6, r0, #0
	cmp r6, #1
	bls _0204A6DA
	ldr r1, [sp, #8]
	cmp r1, r6
	blo _0204A6D0
	cmp r1, r6
	bne _0204A6DA
	mov r1, #7
	bl sub_020E1F6C
	cmp r1, #0
	bne _0204A6DA
_0204A6D0:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0204A5A0
_0204A6DA:
	ldrb r1, [r5, #0xf]
	cmp r1, #6
	bne _0204A6FA
	add r0, r7, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl sub_02030698
	b _0204A708
_0204A6FA:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
_0204A708:
	add r0, r4, #1
	bl sub_0205E6A8
	add r1, r4, #1
	add r2, r0, #0
	ldrh r4, [r5, #0x1a]
	ldrb r3, [r5, #0xd]
	ldr r0, [sp]
	add r3, r4, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r1, [r5, #0xf]
	add r4, r0, #0
	cmp r1, #6
	bne _0204A746
	add r0, r7, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	mov r3, #0
	bl sub_020306E4
	b _0204A754
_0204A746:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #2
	bl sub_0202D414
_0204A754:
	ldrb r2, [r5, #0xd]
	ldr r0, [sp, #4]
	mov r1, #0x1d
	bl sub_0202CF70
	ldrb r1, [r5, #0xf]
	ldr r0, [r5, #0x74]
	mov r2, #2
	bl sub_0202D3B4
	ldrb r0, [r5, #0xf]
	cmp r0, #6
	beq _0204A77C
	add r0, r7, #0
	bl sub_0202CD88
	mov r1, #0xf
	mov r2, #1
	bl sub_0202CF70
_0204A77C:
	add r0, r5, #0
	bl sub_0204ACC8
	ldr r0, _0204A7A0 ; =0x0000270F
	add r4, r4, #1
	cmp r4, r0
	bls _0204A78C
	add r4, r0, #0
_0204A78C:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204A5EC
_0204A79A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0204A7A0: .word 0x0000270F
	thumb_func_end sub_0204A660

	thumb_func_start sub_0204A7A4
sub_0204A7A4: ; 0x0204A7A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	add r7, r1, #0
	str r2, [sp]
	cmp r0, #5
	bne _0204A7B6
	b _0204A8C4
_0204A7B6:
	add r0, r7, #0
	bl sub_0202CD88
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0203068C
	ldrb r1, [r5, #0xf]
	str r0, [sp, #4]
	cmp r1, #6
	bne _0204A7D0
	mov r4, #0x70
	b _0204A7D2
_0204A7D0:
	lsl r4, r1, #1
_0204A7D2:
	cmp r1, #6
	bne _0204A7F0
	add r0, r7, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl sub_02030698
	b _0204A7FE
_0204A7F0:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
_0204A7FE:
	add r0, r4, #1
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r6, [r5, #0x1a]
	ldrb r3, [r5, #0xd]
	ldr r0, [sp, #4]
	add r1, r4, #1
	add r3, r6, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r1, [r5, #0xf]
	add r6, r0, #0
	cmp r1, #6
	bne _0204A83C
	add r0, r7, #0
	bl sub_0203068C
	str r0, [sp, #0xc]
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x64
	mov r3, #1
	bl sub_020306E4
	b _0204A84A
_0204A83C:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_0202D414
_0204A84A:
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02030698
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	lsl r3, r6, #0x10
	ldr r0, [sp, #4]
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl sub_02030848
	ldr r0, [sp, #8]
	mov r1, #0x1d
	mov r2, #7
	bl sub_0202CF70
	ldrb r1, [r5, #0xf]
	ldr r0, [r5, #0x74]
	mov r2, #3
	bl sub_0202D3B4
	ldrb r0, [r5, #0xf]
	cmp r0, #6
	beq _0204A892
	ldr r0, [sp, #8]
	mov r1, #0xf
	mov r2, #1
	bl sub_0202CF70
_0204A892:
	ldr r0, [sp, #8]
	mov r1, #0xe
	bl sub_0202CFEC
	add r0, r5, #0
	bl sub_0204ACC8
	lsl r3, r6, #0x10
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0204A5EC
	ldrb r0, [r5, #0xf]
	cmp r0, #4
	bne _0204A8C4
	ldr r0, [r5, #4]
	bl sub_0202C238
	add r1, r0, #0
	ldr r0, [sp]
	mov r2, #4
	bl sub_0202B758
_0204A8C4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204A7A4

	thumb_func_start sub_0204A8C8
sub_0204A8C8: ; 0x0204A8C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl sub_0202D140
	ldrb r1, [r4, #0xc]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #1
	bl sub_0202D140
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #5
	add r2, #0x2a
	bl sub_0202D140
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x24]
	ldrh r3, [r4, #0x26]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x70]
	lsr r1, r1, #0x18
	bl sub_0202D1E8
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #8
	add r2, #0x3e
	bl sub_0202D140
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #0xa
	add r2, #8
	bl sub_0202D140
	ldr r0, [r4, #0x70]
	mov r1, #1
	bl sub_0202D21C
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bne _0204A96E
	ldrb r0, [r4, #0x10]
	add r2, sp, #0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1d
	add r0, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #9
	bl sub_0202D140
	ldrb r3, [r4, #0x10]
	ldr r2, _0204A974 ; =0x000007E8
	ldr r0, [r4, #0x70]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1d
	add r2, r4, r2
	lsl r3, r3, #4
	mov r1, #6
	add r2, r2, r3
	bl sub_0202D140
	ldr r2, _0204A978 ; =0x00000838
	ldr r0, [r4, #0x70]
	add r3, r4, r2
	ldrb r2, [r4, #0x10]
	mov r1, #7
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1d
	add r2, r3, r2
	bl sub_0202D140
_0204A96E:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0204A974: .word 0x000007E8
_0204A978: .word 0x00000838
	thumb_func_end sub_0204A8C8

	thumb_func_start sub_0204A97C
sub_0204A97C: ; 0x0204A97C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0204A9D8 ; =0x000007E8
	mov r4, #0
	add r6, r5, r0
	mov r0, #0xa6
	lsl r0, r0, #2
	add r7, r5, r0
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x2e
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x36
	str r0, [sp, #0x14]
_0204A99E:
	ldr r0, [sp, #0x10]
	mov r2, #0x4b
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r2, r2, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #4]
	add r2, r4, r2
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	ldrb r3, [r5, #0xe]
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl sub_0204B3B8
	add r2, r5, r4
	ldr r1, _0204A9DC ; =0x00000838
	add r4, r4, #1
	strb r0, [r2, r1]
	mov r0, #0x11
	lsl r0, r0, #4
	add r6, #0x10
	add r7, r7, r0
	cmp r4, #5
	blt _0204A99E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204A9D8: .word 0x000007E8
_0204A9DC: .word 0x00000838
	thumb_func_end sub_0204A97C

	thumb_func_start sub_0204A9E0
sub_0204A9E0: ; 0x0204A9E0
	lsl r2, r1, #4
	add r1, r1, r2
	lsl r1, r1, #4
	add r0, r0, r1
	add r0, #0x7c
	ldrh r0, [r0]
	ldr r3, _0204A9F4 ; =sub_0204AF9C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx r3
	; .align 2, 0
_0204A9F4: .word sub_0204AF9C
	thumb_func_end sub_0204A9E0

	thumb_func_start sub_0204A9F8
sub_0204A9F8: ; 0x0204A9F8
	ldrb r0, [r0, #0xf]
	bx lr
	thumb_func_end sub_0204A9F8

	thumb_func_start sub_0204A9FC
sub_0204A9FC: ; 0x0204A9FC
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end sub_0204A9FC

	thumb_func_start sub_0204AA04
sub_0204AA04: ; 0x0204AA04
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	cmp r1, #5
	bne _0204AA12
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204AA12:
	cmp r1, #4
	bne _0204AA24
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_0202D2C0
	ldr r1, _0204AA70 ; =0x020EBD44
	ldrb r5, [r1, r0]
	b _0204AA62
_0204AA24:
	cmp r1, #3
	beq _0204AA2C
	cmp r1, #6
	bne _0204AA42
_0204AA2C:
	ldr r0, [r4, #0x74]
	mov r2, #0
	bl sub_0202D3B4
	cmp r0, #7
	blo _0204AA3C
	mov r5, #0x12
	b _0204AA62
_0204AA3C:
	ldr r1, _0204AA74 ; =0x020EBD28
	ldrb r5, [r1, r0]
	b _0204AA62
_0204AA42:
	ldr r0, [r4, #0x74]
	mov r2, #0
	bl sub_0202D3B4
	ldrb r1, [r4, #0x10]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1e
	beq _0204AA56
	mov r5, #0x14
	b _0204AA62
_0204AA56:
	cmp r0, #7
	blo _0204AA5E
	mov r5, #7
	b _0204AA62
_0204AA5E:
	ldr r1, _0204AA78 ; =0x020EBD30
	ldrb r5, [r1, r0]
_0204AA62:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	mov r2, #5
	bl sub_0202D230
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204AA70: .word 0x020EBD44
_0204AA74: .word 0x020EBD28
_0204AA78: .word 0x020EBD30
	thumb_func_end sub_0204AA04

	thumb_func_start sub_0204AA7C
sub_0204AA7C: ; 0x0204AA7C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	ldrb r1, [r4, #0xf]
	bl sub_02049FF8
	cmp r0, #0x32
	bhs _0204AA90
	mov r0, #0
	pop {r4, pc}
_0204AA90:
	cmp r0, #0x64
	ldr r0, [r4, #0x74]
	blo _0204AAA6
	mov r1, #1
	mov r2, #0
	bl sub_0202D414
	cmp r0, #0
	beq _0204AAB6
	mov r0, #0
	pop {r4, pc}
_0204AAA6:
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D414
	cmp r0, #0
	beq _0204AAB6
	mov r0, #0
	pop {r4, pc}
_0204AAB6:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204AA7C

	thumb_func_start sub_0204AABC
sub_0204AABC: ; 0x0204AABC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0202D750
	add r6, r0, #0
	cmp r4, #0
	beq _0204AAD8
	cmp r4, #1
	beq _0204AAE0
	cmp r4, #2
	beq _0204AB1C
	b _0204AB60
_0204AAD8:
	mov r1, #0
	bl sub_0202D2C0
	pop {r4, r5, r6, pc}
_0204AAE0:
	mov r1, #4
	mov r2, #2
	bl sub_0202D414
	add r0, r6, #0
	mov r1, #0
	bl sub_0202D2C0
	add r4, r0, #0
	cmp r4, #0xa
	bne _0204AB02
	ldrb r1, [r5, #0x10]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_0204AB02:
	add r0, r6, #0
	mov r1, #3
	bl sub_0202D2C0
	add r0, r4, #1
	cmp r0, #5
	blt _0204AB18
	ldrb r1, [r5, #0x10]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0x10]
_0204AB18:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0204AB1C:
	mov r1, #3
	bl sub_0202D288
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0202D2C0
	cmp r0, #1
	bne _0204AB34
	mov r0, #0
	pop {r4, r5, r6, pc}
_0204AB34:
	sub r1, r0, #1
	ldr r0, _0204AB64 ; =0x020EBD38
	ldrb r0, [r0, r1]
	cmp r4, r0
	blo _0204AB5C
	add r0, r6, #0
	mov r1, #4
	bl sub_0202D2C0
	add r0, r6, #0
	mov r1, #2
	bl sub_0202D288
	add r0, r6, #0
	mov r1, #4
	mov r2, #2
	bl sub_0202D414
	mov r0, #1
	pop {r4, r5, r6, pc}
_0204AB5C:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0204AB60:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204AB64: .word 0x020EBD38
	thumb_func_end sub_0204AABC

	thumb_func_start sub_0204AB68
sub_0204AB68: ; 0x0204AB68
	push {r3, lr}
	add r2, r0, #0
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq _0204AB76
	mov r0, #0
	pop {r3, pc}
_0204AB76:
	ldrb r0, [r2, #0x10]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1e
	cmp r0, #1
	beq _0204AB86
	cmp r0, #2
	beq _0204AB90
	b _0204AB9A
_0204AB86:
	add r0, r1, #0
	mov r1, #0x1a
	bl sub_0204AC54
	pop {r3, pc}
_0204AB90:
	add r0, r1, #0
	mov r1, #0x1b
	bl sub_0204AC54
	pop {r3, pc}
_0204AB9A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204AB68

	thumb_func_start sub_0204ABA0
sub_0204ABA0: ; 0x0204ABA0
	push {r4, lr}
	add r2, r0, #0
	ldrb r0, [r2, #0xf]
	cmp r0, #5
	bne _0204ABAE
	mov r0, #0
	pop {r4, pc}
_0204ABAE:
	cmp r0, #6
	bne _0204ABB6
	mov r0, #0
	pop {r4, pc}
_0204ABB6:
	ldrb r4, [r2, #0x10]
	lsl r4, r4, #0x1b
	lsr r4, r4, #0x1f
	bne _0204ABC2
	mov r0, #0
	pop {r4, pc}
_0204ABC2:
	cmp r0, #4
	bhi _0204ABEA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204ABD2: ; jump table
	.short _0204ABEA - _0204ABD2 - 2 ; case 0
	.short _0204ABDC - _0204ABD2 - 2 ; case 1
	.short _0204ABE0 - _0204ABD2 - 2 ; case 2
	.short _0204ABE4 - _0204ABD2 - 2 ; case 3
	.short _0204ABE8 - _0204ABD2 - 2 ; case 4
_0204ABDC:
	mov r3, #0x1c
	b _0204ABEA
_0204ABE0:
	mov r3, #0x1d
	b _0204ABEA
_0204ABE4:
	mov r3, #0x1e
	b _0204ABEA
_0204ABE8:
	mov r3, #0x1f
_0204ABEA:
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0204AC54
	pop {r4, pc}
	thumb_func_end sub_0204ABA0

	thumb_func_start sub_0204ABF4
sub_0204ABF4: ; 0x0204ABF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xf]
	cmp r1, #6
	bne _0204AC1A
	add r0, r4, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl sub_02030698
	b _0204AC28
_0204AC1A:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
_0204AC28:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0
	bne _0204AC38
	add r0, r4, #0
	bl sub_0206C02C
	b _0204AC3E
_0204AC38:
	add r0, r4, #0
	bl sub_0206C068
_0204AC3E:
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r1, _0204AC50 ; =0x0000FFFF
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
	nop
_0204AC50: .word 0x0000FFFF
	thumb_func_end sub_0204ABF4

	thumb_func_start sub_0204AC54
sub_0204AC54: ; 0x0204AC54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r2, #0
	mov r2, #1
	add r1, sp, #0xc
	str r0, [sp]
	strb r2, [r1]
	bl sub_0207A268
	mov r4, #0
	str r4, [sp, #8]
	str r0, [sp, #4]
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	ble _0204ACB4
_0204AC74:
	add r1, r7, r4
	add r1, #0x2a
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	bl sub_0207A0FC
	add r1, r5, #0
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204ACAC
	add r0, r6, #0
	add r1, r5, #0
	add r2, sp, #0xc
	bl sub_02074B30
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0206DDB8
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
_0204ACAC:
	ldrb r0, [r7, #0xe]
	add r4, r4, #1
	cmp r4, r0
	blt _0204AC74
_0204ACB4:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0204ACC0
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204ACC0:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204AC54

	thumb_func_start sub_0204ACC8
sub_0204ACC8: ; 0x0204ACC8
	ldrb r1, [r0, #0xf]
	cmp r1, #5
	beq _0204ACDA
	cmp r1, #0
	beq _0204ACDA
	cmp r1, #6
	beq _0204ACDA
	cmp r1, #4
	bne _0204ACDE
_0204ACDA:
	mov r0, #0
	bx lr
_0204ACDE:
	ldrh r2, [r0, #0x1a]
	ldrb r1, [r0, #0xd]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0x32
	bhs _0204ACF0
	mov r0, #0
	bx lr
_0204ACF0:
	ldrb r2, [r0, #0x10]
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #0x10]
	mov r0, #1
	bx lr
	thumb_func_end sub_0204ACC8

	thumb_func_start sub_0204ACFC
sub_0204ACFC: ; 0x0204ACFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	lsl r0, r0, #0x10
	ldrh r1, [r1]
	ldr r2, _0204AE18 ; =0xFFFFF800
	lsr r3, r0, #0x10
	lsr r0, r2, #0x15
	and r1, r2
	and r0, r3
	orr r1, r0
	ldr r0, [sp]
	mov r2, #0
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x70
	bl sub_02074470
	ldr r1, [sp]
	lsl r0, r0, #0x10
	ldrh r2, [r1]
	ldr r1, _0204AE1C ; =0xFFFF07FF
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	and r1, r2
	lsr r0, r0, #0x10
	orr r1, r0
	ldr r0, [sp]
	mov r2, #0
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #6
	bl sub_02074470
	ldr r1, [sp]
	mov r4, #0
	strh r0, [r1, #2]
	add r0, r1, #0
	str r0, [sp, #4]
	add r0, #0x1e
	add r6, r1, #0
	add r7, r4, #0
	str r0, [sp, #4]
_0204AD60:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	strh r0, [r6, #4]
	add r0, r5, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #4]
	lsl r0, r7
	ldrb r1, [r1]
	add r4, r4, #1
	add r6, r6, #2
	orr r1, r0
	ldr r0, [sp, #4]
	add r7, r7, #2
	strb r1, [r0]
	cmp r4, #4
	blt _0204AD60
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	mov r2, #0
	strb r0, [r1, #0x1f]
	add r0, r5, #0
	mov r1, #7
	bl sub_02074470
	ldr r1, [sp]
	str r0, [r1, #0xc]
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074470
	ldr r1, [sp]
	mov r2, #0
	str r0, [r1, #0x10]
	add r0, r5, #0
	mov r1, #0xaf
	bl sub_02074470
	ldr r1, [sp]
	mov r4, #0
	str r0, [r1, #0x14]
	add r6, r4, #0
_0204ADCC:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xd
	add r2, r6, #0
	bl sub_02074470
	ldr r1, [sp]
	add r1, r1, r4
	add r4, r4, #1
	strb r0, [r1, #0x18]
	cmp r4, #6
	blt _0204ADCC
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	mov r2, #0
	add r1, #0x20
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #9
	bl sub_02074470
	ldr r1, [sp]
	ldr r2, [sp]
	add r1, #0x21
	strb r0, [r1]
	add r2, #0x22
	add r0, r5, #0
	mov r1, #0x75
	str r2, [sp]
	bl sub_02074470
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204AE18: .word 0xFFFFF800
_0204AE1C: .word 0xFFFF07FF
	thumb_func_end sub_0204ACFC

	thumb_func_start sub_0204AE20
sub_0204AE20: ; 0x0204AE20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r4, r1, #0
	mov r1, #0xa8
	str r2, [sp]
	bl sub_02018184
	mov r1, #0
	mov r2, #0xa8
	str r0, [sp, #4]
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_0207A268
	ldr r5, [sp, #4]
	add r7, r0, #0
	mov r4, #0
_0204AE48:
	add r1, r6, r4
	add r1, #0x2a
	ldrb r1, [r1]
	add r0, r7, #0
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0204ACFC
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #3
	blt _0204AE48
	ldr r0, [r6, #0x74]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl sub_0202D2F0
	ldr r0, [sp, #4]
	mov r1, #0
	mov r2, #0xa8
	bl sub_020C4CF4
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204AE20

	thumb_func_start sub_0204AE84
sub_0204AE84: ; 0x0204AE84
	cmp r0, #0x64
	bhs _0204AE8C
	mov r0, #3
	bx lr
_0204AE8C:
	cmp r0, #0x78
	bhs _0204AE94
	mov r0, #6
	bx lr
_0204AE94:
	cmp r0, #0x8c
	bhs _0204AE9C
	mov r0, #9
	bx lr
_0204AE9C:
	cmp r0, #0xa0
	bhs _0204AEA4
	mov r0, #0xc
	bx lr
_0204AEA4:
	cmp r0, #0xb4
	bhs _0204AEAC
	mov r0, #0xf
	bx lr
_0204AEAC:
	cmp r0, #0xc8
	bhs _0204AEB4
	mov r0, #0x12
	bx lr
_0204AEB4:
	cmp r0, #0xdc
	bhs _0204AEBC
	mov r0, #0x15
	bx lr
_0204AEBC:
	mov r0, #0x1f
	bx lr
	thumb_func_end sub_0204AE84

	thumb_func_start sub_0204AEC0
sub_0204AEC0: ; 0x0204AEC0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	bne _0204AED0
	bl sub_0201D2E8
	pop {r4, pc}
_0204AED0:
	ldr r0, [r4, #8]
	bl sub_0206BFF0
	ldr r1, _0204AEE4 ; =0x0000FFFF
	str r0, [r4, #8]
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	; .align 2, 0
_0204AEE4: .word 0x0000FFFF
	thumb_func_end sub_0204AEC0

	thumb_func_start sub_0204AEE8
sub_0204AEE8: ; 0x0204AEE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r7, r1, #0
	str r2, [sp, #8]
	mov r0, #0xe
	mov r1, #4
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x38]
	bl sub_02023790
	add r6, r0, #0
	mov r0, #2
	mov r1, #4
	bl sub_02023790
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02027560
	mov r2, #0x67
	str r0, [sp, #0x18]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x10]
	mov r0, #0x13
	mov r1, #0xe
	mov r2, #4
	bl sub_0200B368
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	add r2, r7, #0
	str r0, [sp, #0x14]
	str r3, [sp, #4]
	bl sub_0200B60C
	mov r4, #0
_0204AF3E:
	add r0, r4, #0
	bl sub_02078824
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	bl sub_02026FE8
	cmp r0, #0
	beq _0204AF78
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrb r1, [r5]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #8]
	add r1, r1, #1
	bl sub_0200B48C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_0204AF78:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x12
	blo _0204AF3E
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204AEE8
