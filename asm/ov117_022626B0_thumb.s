	.include "macros/function.inc"
	.include "include/ov117_022626B0_thumb.inc"

	.text

	thumb_func_start ov117_022626B0
ov117_022626B0: ; 0x022626B0
	push {r3, r4, r5, lr}
	mov r1, #0x9e
	add r5, r0, #0
	mov r0, #0x6e
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x9e
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0]
	ldr r1, [r0, #0x34]
	mov r0, #0x27
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov117_02262B98
	add r0, r4, #0
	blx ov117_02262E0C
	add r0, r4, #0
	blx ov117_02262E5C
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x34]
	cmp r0, #1
	beq _02262706
	cmp r0, #2
	bne _0226271A
	mov r1, #1
	mov r0, #0x26
	lsl r1, r1, #0x12
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0x1a
	lsl r1, r1, #0xe
	add r0, r0, #4
	str r1, [r4, r0]
	b _02262728
_02262706:
	mov r1, #9
	mov r0, #0x26
	lsl r1, r1, #0x10
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #7
	lsl r1, r1, #0x10
	add r0, r0, #4
	str r1, [r4, r0]
	b _02262728
_0226271A:
	mov r1, #6
	mov r0, #0x26
	lsl r1, r1, #0x10
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_02262728:
	mov r0, #0x87
	mov r1, #0x80
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0x28
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r5, #0
	blx ov117_022638D8
	add r0, r5, #0
	blx ov117_02263A00
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx ov117_02263A6C
	mov r1, #2
	mov r0, #0x92
	lsl r1, r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_022626B0

	thumb_func_start ov117_02262760
ov117_02262760: ; 0x02262760
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8d
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	blx ov117_02263AE4
	add r0, r5, #0
	blx ov117_022639BC
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02262760

	thumb_func_start ov117_02262798
ov117_02262798: ; 0x02262798
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0x91
	add r5, r0, #0
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0x20]
	cmp r0, #2
	bne _022627D8
	ldr r0, _02262938 ; =0x00001758
	add r2, r1, #0
	ldr r3, [r5, r0]
	sub r2, #0x38
	str r3, [r4, r2]
	add r2, r0, #4
	ldr r3, [r5, r2]
	add r2, r1, #0
	sub r2, #0x34
	str r3, [r4, r2]
	add r2, r0, #0
	add r2, #8
	ldr r3, [r5, r2]
	add r2, r1, #0
	sub r2, #0x30
	str r3, [r4, r2]
	add r0, #0xc
	ldr r0, [r5, r0]
	sub r1, #0x2c
	str r0, [r4, r1]
	b _02262820
_022627D8:
	ldr r0, _0226293C ; =0x00002FB8
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _022627E8
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02262800
_022627E8:
	mov r1, #0x83
	lsl r1, r1, #2
	mov r2, #0
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	add r1, #0xc
	str r2, [r4, r1]
	b _02262820
_02262800:
	ldr r2, _02262940 ; =0x021BF6BC
	add r0, r1, #0
	ldrh r3, [r2, #0x1c]
	sub r0, #0x38
	str r3, [r4, r0]
	add r0, r1, #0
	ldrh r3, [r2, #0x1e]
	sub r0, #0x34
	str r3, [r4, r0]
	add r0, r1, #0
	ldrh r3, [r2, #0x22]
	sub r0, #0x30
	sub r1, #0x2c
	str r3, [r4, r0]
	ldrh r0, [r2, #0x20]
	str r0, [r4, r1]
_02262820:
	add r0, r4, #0
	blx ov117_02263270
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02262846
	add r0, r4, #0
	bl ov117_02262A38
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02262846
	bne _02262846
	mov r0, #0x9d
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
_02262846:
	add r0, r4, #0
	blx ov117_0226334C
	add r0, r4, #0
	bl ov117_02262A70
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx ov117_02263A6C
	mov r0, #0x9a
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _0226287C
	add r1, #8
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0x1e
	ble _02262876
	mov r1, #0x1e
	strh r1, [r4, r0]
_02262876:
	add r0, r4, #0
	bl ov117_02262CFC
_0226287C:
	ldr r0, _02262944 ; =0x00002FBC
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02262934
	sub r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02262934
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	cmp r1, #0
	ble _02262934
	add r0, r2, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	add r2, #0xdc
	mov r7, #0
	cmp r0, r2
	bge _022628C4
	add r0, r4, #0
	bl ov117_02262CB8
	cmp r0, #1
	bne _022628D4
	mov r0, #0x9a
	mov r1, #8
	lsl r0, r0, #2
	strh r1, [r4, r0]
	add r1, r7, #0
	add r0, #0xd
	strb r1, [r4, r0]
	ldr r0, _02262948 ; =0x00000576
	bl sub_02005748
	b _022628D4
_022628C4:
	add r0, r4, #0
	bl ov117_02262CE8
	mov r0, #0x9a
	add r1, r7, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r7, #1
_022628D4:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov117_0226296C
	add r6, r0, #0
	cmp r7, #1
	bne _022628F2
	mov r0, #0x19
	mul r0, r6
	mov r1, #0x64
	bl _s32_div_f
	add r6, r6, r0
_022628F2:
	ldr r1, _0226294C ; =0x00002FC8
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r6, #0
	add r3, sp, #0
	bl ov117_02264E14
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02264E3C
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02263DC4
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov117_02262998
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov117_022629E0
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02262934:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262938: .word 0x00001758
_0226293C: .word 0x00002FB8
_02262940: .word 0x021BF6BC
_02262944: .word 0x00002FBC
_02262948: .word 0x00000576
_0226294C: .word 0x00002FC8
	thumb_func_end ov117_02262798

	thumb_func_start ov117_02262950
ov117_02262950: ; 0x02262950
	push {r3, lr}
	ldr r0, _02262968 ; =0x00000276
	ldrb r2, [r1, r0]
	cmp r2, #1
	bne _02262964
	mov r2, #0
	strb r2, [r1, r0]
	add r0, r1, #0
	bl ov117_02262C3C
_02262964:
	pop {r3, pc}
	nop
_02262968: .word 0x00000276
	thumb_func_end ov117_02262950

	thumb_func_start ov117_0226296C
ov117_0226296C: ; 0x0226296C
	cmp r1, #0x62
	blt _02262976
	mov r2, #0x4b
	lsl r2, r2, #4
	b _0226297A
_02262976:
	mov r2, #0xa
	mul r2, r1
_0226297A:
	mov r1, #0x27
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _02262990 ; =_s32_div_f
	lsl r1, r0, #2
	ldr r0, _02262994 ; =0x02266FD8
	ldr r0, [r0, r1]
	mov r1, #0x64
	mul r0, r2
	bx r3
	nop
_02262990: .word _s32_div_f
_02262994: .word 0x02266FD8
	thumb_func_end ov117_0226296C

	thumb_func_start ov117_02262998
ov117_02262998: ; 0x02262998
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0x62
	blt _022629B2
	add r1, r2, #4
	ldr r3, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	add r3, r3, r1
	add r1, r2, #4
	str r3, [r0, r1]
	b _022629CC
_022629B2:
	blt _022629C4
	add r1, r2, #4
	ldr r3, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	add r3, r3, r1
	add r1, r2, #4
	str r3, [r0, r1]
	b _022629CC
_022629C4:
	mov r3, #2
	lsl r3, r3, #0xc
	add r1, r2, #4
	str r3, [r0, r1]
_022629CC:
	mov r1, #0x92
	lsl r1, r1, #2
	mov r2, #0x11
	ldr r3, [r0, r1]
	lsl r2, r2, #0xc
	cmp r3, r2
	ble _022629DC
	str r2, [r0, r1]
_022629DC:
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02262998

	thumb_func_start ov117_022629E0
ov117_022629E0: ; 0x022629E0
	push {r3, lr}
	cmp r3, #1
	bne _022629FE
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	cmp r2, #0x62
	blt _022629FE
	mov r1, #0
	bl ov117_02261600
	ldr r0, _02262A30 ; =0x0000057A
	bl sub_02005748
	pop {r3, pc}
_022629FE:
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	cmp r2, #0x62
	bge _02262A2E
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x10]
	cmp r1, r2
	bge _02262A1E
	mov r1, #2
	bl ov117_02261600
	ldr r0, _02262A34 ; =0x00000578
	bl sub_02005748
	pop {r3, pc}
_02262A1E:
	cmp r1, r2
	ble _02262A2E
	mov r1, #1
	bl ov117_02261600
	ldr r0, _02262A34 ; =0x00000578
	bl sub_02005748
_02262A2E:
	pop {r3, pc}
	; .align 2, 0
_02262A30: .word 0x0000057A
_02262A34: .word 0x00000578
	thumb_func_end ov117_022629E0

	thumb_func_start ov117_02262A38
ov117_02262A38: ; 0x02262A38
	push {r4, lr}
	mov r1, #0x8e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _02262A6C
	mov r2, #0
	str r2, [r4, r1]
	sub r2, r2, #1
	add r1, r1, #4
	str r2, [r4, r1]
	blx ov117_022638AC
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	sub r2, r2, r0
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x19
	bge _02262A6C
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
_02262A6C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02262A38

	thumb_func_start ov117_02262A70
ov117_02262A70: ; 0x02262A70
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, _02262B80 ; =0x2D8B6127
	add r1, sp, #0x1c
	str r0, [sp, #0x1c]
	mov r0, #0x32
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, _02262B84 ; =0x00007FFF
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	mov r0, #0x33
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r0, #0
	str r0, [sp, #0x2c]
	mov r0, #0x13
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	ldr r0, _02262B88 ; =0xFFFFB000
	add r1, sp, #0x2c
	str r0, [sp, #0x34]
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r0, r0, #6
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	mul r0, r4
	bl _s32_div_f
	mov r1, #0x26
	lsl r1, r1, #4
	add r6, r4, r0
	add r0, r1, #0
	ldr r4, [r5, r1]
	add r0, #8
	add r1, #0xc
	ldrsh r2, [r5, r0]
	ldrsh r0, [r5, r1]
	mov r1, #0x64
	add r0, r2, r0
	mul r0, r4
	bl _s32_div_f
	add r0, r4, r0
	str r0, [sp, #0x20]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	mov r0, #0x1b
	add r1, sp, #0x20
	mov r2, #3
	str r6, [sp, #0x24]
	bl NNS_G3dGeBufferOP_N
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #0x10
	add r1, sp, #0x14
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r0, #0x15
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0x10
	add r1, sp, #0x10
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add r1, r0, #0
	bl ov117_02262D4C
	blx ov117_02262D98
	ldr r1, [r5, #4]
	mov r2, #1
	ldr r0, [r1, #0x2c]
	lsl r4, r0, #0x10
	ldr r0, [r1, #8]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02262B8C ; =0x1FFFFFFF
	and r1, r0
	ldr r0, _02262B90 ; =0x72400000
	orr r0, r1
	str r0, [sp, #0xc]
	mov r0, #0x2a
	add r1, sp, #0xc
	bl NNS_G3dGeBufferOP_N
	lsr r0, r4, #0x11
	str r0, [sp, #8]
	mov r0, #0x2b
	add r1, sp, #8
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, _02262B94 ; =0x001F00C1
	add r1, sp, #4
	str r0, [sp, #4]
	mov r0, #0x29
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	add r0, r5, #0
	blx ov117_02262EAC
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGeFlushBuffer
	add sp, #0x38
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02262B80: .word 0x2D8B6127
_02262B84: .word 0x00007FFF
_02262B88: .word 0xFFFFB000
_02262B8C: .word 0x1FFFFFFF
_02262B90: .word 0x72400000
_02262B94: .word 0x001F00C1
	thumb_func_end ov117_02262A70

	thumb_func_start ov117_02262B98
ov117_02262B98: ; 0x02262B98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xad
	mov r1, #0x1d
	mov r2, #0x6e
	bl sub_02006AC0
	str r0, [r5, #0]
	bl NNS_G3dGetTex
	str r0, [r5, #4]
	bl sub_0201CBCC
	ldr r6, [r5, #4]
	ldrh r0, [r6, #0x30]
	ldr r7, [r6, #0x38]
	lsl r4, r0, #3
	ldr r0, [r6, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	str r0, [sp]
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02262BD0
	bl sub_02022974
_02262BD0:
	mov r0, #0x6e
	add r1, r4, #0
	bl sub_02018144
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x6e
	add r1, r4, #0
	bl sub_02018144
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r6, r7
	add r2, r4, #0
	bl MI_CpuCopy8
	mov r1, #0x25
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r6, r7
	add r2, r4, #0
	bl MI_CpuCopy8
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl DC_FlushRange
	mov r1, #0x96
	ldr r0, [sp]
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r0, r1, #4
	str r4, [r5, r0]
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _02262C2A
	bl sub_02022974
_02262C2A:
	ldr r2, [r5, #4]
	ldr r0, [r5, #0]
	ldr r1, [r2, #0x14]
	add r1, r2, r1
	sub r1, r1, r0
	bl sub_020182F0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02262B98

	thumb_func_start ov117_02262C3C
ov117_02262C3C: ; 0x02262C3C
	push {r4, lr}
	add r4, r0, #0
	bl GX_BeginLoadTexPltt
	mov r2, #0x25
	lsl r2, r2, #4
	add r1, r2, #0
	ldr r0, [r4, r2]
	add r1, #8
	add r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02262C3C

	thumb_func_start ov117_02262C60
ov117_02262C60: ; 0x02262C60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	lsl r0, r1, #1
	add r0, r1, r0
	mov r1, #0x32
	lsl r0, r0, #0xa
	lsl r1, r1, #4
	bl _s32_div_f
	add r0, #0x80
	asr r3, r0, #8
	cmp r3, #0x10
	ble _02262C7E
	mov r3, #0x10
_02262C7E:
	mov r2, #0x93
	mov r0, #0x1f
	lsl r2, r2, #2
	str r0, [sp]
	add r1, r2, #4
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	lsl r3, r3, #0x18
	lsl r2, r2, #0xf
	ldr r1, [r4, r1]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200393C
	mov r1, #0x25
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl DC_FlushRange
	ldr r0, _02262CB4 ; =0x00000276
	mov r1, #1
	strb r1, [r4, r0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02262CB4: .word 0x00000276
	thumb_func_end ov117_02262C60

	thumb_func_start ov117_02262CB8
ov117_02262CB8: ; 0x02262CB8
	push {r4, lr}
	mov r2, #0x97
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mov r4, #0
	add r1, r3, r1
	str r1, [r0, r2]
	add r1, r2, #0
	ldr r3, [r0, r2]
	add r1, #0xc4
	cmp r3, r1
	blt _02262CD8
	add r1, r2, #0
	add r1, #0xc4
	str r1, [r0, r2]
	mov r4, #1
_02262CD8:
	mov r1, #0x97
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	bl ov117_02262C60
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02262CB8

	thumb_func_start ov117_02262CE8
ov117_02262CE8: ; 0x02262CE8
	mov r1, #0x97
	ldr r3, _02262CF8 ; =ov117_02262C60
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	bx r3
	nop
_02262CF8: .word ov117_02262C60
	thumb_func_end ov117_02262CE8

	thumb_func_start ov117_02262CFC
ov117_02262CFC: ; 0x02262CFC
	push {r4, lr}
	mov r2, #0x9a
	add r4, r0, #0
	lsl r2, r2, #2
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _02262D44
	add r1, r2, #0
	add r1, #0xd
	ldrb r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #0
	add r1, #0xd
	strb r3, [r4, r1]
	add r1, r2, #0
	add r1, #0xd
	ldrb r1, [r4, r1]
	cmp r1, #4
	bne _02262D32
	sub r2, #0xc
	ldr r2, [r4, r2]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	bl ov117_02262C60
	pop {r4, pc}
_02262D32:
	cmp r1, #8
	bne _02262D44
	sub r2, #0xc
	ldr r1, [r4, r2]
	bl ov117_02262C60
	ldr r0, _02262D48 ; =0x00000275
	mov r1, #0
	strb r1, [r4, r0]
_02262D44:
	pop {r4, pc}
	nop
_02262D48: .word 0x00000275
	thumb_func_end ov117_02262CFC

	thumb_func_start ov117_02262D4C
ov117_02262D4C: ; 0x02262D4C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	cmp r0, #0
	beq _02262D5A
	mov r0, #1
	b _02262D5C
_02262D5A:
	mov r0, #0
_02262D5C:
	lsl r1, r0, #0xf
	ldr r0, _02262D90 ; =0x21085EF7
	mov r2, #1
	orr r0, r1
	str r0, [sp, #4]
	mov r0, #0x30
	add r1, sp, #4
	bl NNS_G3dGeBufferOP_N
	cmp r4, #0
	beq _02262D76
	mov r0, #1
	b _02262D78
_02262D76:
	mov r0, #0
_02262D78:
	lsl r1, r0, #0xf
	ldr r0, _02262D94 ; =0x00007FFF
	mov r2, #1
	orr r0, r1
	str r0, [sp]
	mov r0, #0x31
	add r1, sp, #0
	bl NNS_G3dGeBufferOP_N
	add sp, #8
	pop {r4, pc}
	nop
_02262D90: .word 0x21085EF7
_02262D94: .word 0x00007FFF
	thumb_func_end ov117_02262D4C
