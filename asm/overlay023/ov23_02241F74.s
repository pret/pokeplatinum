	.include "macros/function.inc"
	.include "overlay023/ov23_02241F74.inc"

	

	.text


	thumb_func_start ov23_02241F74
ov23_02241F74: ; 0x02241F74
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	bl sub_02027AC0
	add r4, r0, #0
	ldr r0, _022420E4 ; =0x02257748
	mov r2, #0x15
	str r6, [r0, #0]
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	ldr r2, _022420E4 ; =0x02257748
	mov r3, #0x4d
	ldr r0, [r2, #0]
	lsl r3, r3, #2
	str r5, [r0, #0xc]
	ldr r1, [r2, #0]
	mov r0, #0
	strb r0, [r1, r3]
	ldr r1, [r2, #0]
	strh r0, [r1, #0x1c]
	ldr r1, [r2, #0]
	strh r0, [r1, #0x1e]
	add r1, r3, #0
	ldr r6, [r2, #0]
	add r1, #0x17
	strb r0, [r6, r1]
	add r0, r3, #0
	ldr r1, [r2, #0]
	mov r6, #1
	add r0, #0x13
	strb r6, [r1, r0]
	add r3, #0xc0
	str r3, [sp]
	ldr r0, _022420E8 ; =0x0000027A
	ldr r2, [r5, #8]
	mov r1, #0x21
	add r3, r4, #0
	bl ov23_02253D48
	ldr r1, _022420E4 ; =0x02257748
	add r3, r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022420EC ; =0x0000027E
	ldr r2, [r5, #8]
	mov r1, #0x21
	bl ov23_02253D48
	ldr r1, _022420E4 ; =0x02257748
	add r3, r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp]
	mov r0, #0x9f
	ldr r2, [r5, #8]
	lsl r0, r0, #2
	mov r1, #0x21
	bl ov23_02253D48
	ldr r1, _022420E4 ; =0x02257748
	add r3, r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022420F0 ; =0x0000027D
	ldr r2, [r5, #8]
	mov r1, #0x21
	bl ov23_02253D48
	ldr r1, _022420E4 ; =0x02257748
	add r3, r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022420F4 ; =0x00000276
	ldr r2, [r5, #8]
	mov r1, #0x21
	bl ov23_02253D48
	ldr r2, _022420E4 ; =0x02257748
	mov r1, #0x4a
	ldr r3, [r2, #0]
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r2, #0]
	ldr r2, _022420F8 ; =0x000003E2
	ldr r0, [r0, #0xc]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r3, #0xa
	bl sub_0200DD0C
	mov r3, #0x80
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x32
	mov r1, #0x34
	mov r2, #0
	add r3, #0xc0
	bl sub_02006E84
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _022420E4 ; =0x02257748
	ldr r2, _022420FC ; =0x000003D9
	ldr r0, [r0, #0]
	mov r1, #3
	ldr r0, [r0, #0xc]
	mov r3, #0xb
	ldr r0, [r0, #8]
	bl sub_0200DAA4
	mov r3, #0
	ldr r0, _022420E4 ; =0x02257748
	add r4, r3, #0
	mov r2, #0xff
	add r1, r3, #0
_02242098:
	ldr r5, [r0, #0]
	add r5, r5, r3
	add r5, #0xc2
	strb r2, [r5]
	ldr r5, [r0, #0]
	add r5, r5, r3
	add r5, #0xd2
	strb r2, [r5]
	ldr r5, [r0, #0]
	add r3, r3, #1
	add r5, r5, r4
	add r5, #0xdc
	add r4, r4, #4
	str r1, [r5, #0]
	cmp r3, #8
	blt _02242098
	ldr r0, _022420E4 ; =0x02257748
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A9F4
	mov r1, #0
	ldr r0, _02242100 ; =ov23_02243310
	add r2, r1, #0
	bl sub_0200D9E8
	ldr r1, _022420E4 ; =0x02257748
	ldr r1, [r1, #0]
	str r0, [r1, #0x14]
	ldr r0, _02242104 ; =ov23_022433F4
	bl sub_02032110
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022420E4: .word 0x02257748
_022420E8: .word 0x0000027A
_022420EC: .word 0x0000027E
_022420F0: .word 0x0000027D
_022420F4: .word 0x00000276
_022420F8: .word 0x000003E2
_022420FC: .word 0x000003D9
_02242100: .word ov23_02243310
_02242104: .word ov23_022433F4
	thumb_func_end ov23_02241F74

	thumb_func_start ov23_02242108
ov23_02242108: ; 0x02242108
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _02242198 ; =0x02257748
	add r5, r4, #0
_02242110:
	ldr r0, [r6, #0]
	add r0, r0, r5
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242120
	bl sub_020237BC
_02242120:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _02242110
	mov r0, #0
	bl sub_02032110
	ldr r0, _02242198 ; =0x02257748
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x14]
	bl sub_0200DA58
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r1, [r1, #0xc]
	add r1, #0x90
	str r2, [r1, #0]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02242198 ; =0x02257748
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02242198: .word 0x02257748
	thumb_func_end ov23_02242108

	thumb_func_start ov23_0224219C
ov23_0224219C: ; 0x0224219C
	ldr r0, _022421A8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421A8: .word 0x02257748
	thumb_func_end ov23_0224219C

	thumb_func_start ov23_022421AC
ov23_022421AC: ; 0x022421AC
	ldr r0, _022421B8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421B8: .word 0x02257748
	thumb_func_end ov23_022421AC

	thumb_func_start ov23_022421BC
ov23_022421BC: ; 0x022421BC
	ldr r0, _022421C8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421C8: .word 0x02257748
	thumb_func_end ov23_022421BC

	thumb_func_start ov23_022421CC
ov23_022421CC: ; 0x022421CC
	ldr r0, _022421D8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421D8: .word 0x02257748
	thumb_func_end ov23_022421CC

	thumb_func_start ov23_022421DC
ov23_022421DC: ; 0x022421DC
	ldr r0, _022421E8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421E8: .word 0x02257748
	thumb_func_end ov23_022421DC

	thumb_func_start ov23_022421EC
ov23_022421EC: ; 0x022421EC
	push {r3, lr}
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254210
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254210
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov23_02254210
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254210
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254210
	pop {r3, pc}
	nop
_02242238: .word 0x02257748
	thumb_func_end ov23_022421EC

	thumb_func_start ov23_0224223C
ov23_0224223C: ; 0x0224223C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r5, #0
	beq _022422A2
	cmp r6, #0
	beq _022422A2
	mov r0, #4
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B498
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0200B498
	bl ov23_0224219C
	bl ov23_02253E3C
	ldr r1, [sp]
	add r2, r7, #0
	bl sub_0200B1B8
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022422A2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224223C

	thumb_func_start ov23_022422A8
ov23_022422A8: ; 0x022422A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r5, #0
	beq _02242300
	mov r0, #4
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200B498
	bl ov23_0224219C
	bl ov23_02253E3C
	ldr r1, [sp]
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02242300:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_022422A8

	thumb_func_start ov23_02242308
ov23_02242308: ; 0x02242308
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02242404 ; =0x02257748
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02242318
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242318:
	mov r5, #0
_0224231A:
	add r0, r5, #0
	bl sub_02032DE0
	cmp r0, #0
	beq _02242346
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02032E30
	add r0, r7, #0
	mov r1, #1
	mov r2, #0x5b
	add r3, r6, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _02242346
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02242346:
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0xc2
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _02242384
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0xc2
	ldrb r0, [r0]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r3, r6, #0
	add r2, r0, r5
	add r2, #0xc2
	mov r0, #0xff
	strb r0, [r2]
	add r0, r7, #0
	mov r2, #0x6f
	bl ov23_0224223C
	cmp r0, #0
	beq _02242384
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02242384:
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _022423B2
	add r0, r5, #0
	bl sub_02032EE8
	ldr r1, [r4, #0]
	add r3, r6, #0
	add r2, r1, r5
	add r2, #0xd2
	mov r1, #0xff
	strb r1, [r2]
	mov r1, #0
	mov r2, #0x70
	bl ov23_022422A8
	cmp r0, #0
	beq _022423B2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022423B2:
	ldr r0, [r4, #0]
	ldr r1, _02242408 ; =0x0000013D
	add r2, r0, r5
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _022423FA
	lsl r4, r5, #2
	add r0, r0, r4
	add r0, #0xdc
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _022423EA
	add r0, r6, #0
	bl sub_02023810
	ldr r0, _02242404 ; =0x02257748
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_020237BC
	ldr r0, _02242404 ; =0x02257748
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0xdc
	str r1, [r0, #0]
_022423EA:
	ldr r0, _02242404 ; =0x02257748
	mov r2, #0
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02242408 ; =0x0000013D
	strb r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022423FA:
	add r5, r5, #1
	cmp r5, #8
	blt _0224231A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242404: .word 0x02257748
_02242408: .word 0x0000013D
	thumb_func_end ov23_02242308

	thumb_func_start ov23_0224240C
ov23_0224240C: ; 0x0224240C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	strh r5, [r0]
	strh r4, [r0, #2]
	ldr r0, _02242454 ; =0x02257748
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0xc]
	bl sub_02054F68
	cmp r0, #0
	beq _0224242E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224242E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_022442D8
	cmp r0, #0
	beq _0224243E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224243E:
	mov r1, #0
	add r0, sp, #0
	mvn r1, r1
	bl ov23_022512D4
	cmp r0, #0xff
	beq _02242450
	mov r0, #1
	pop {r3, r4, r5, pc}
_02242450:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242454: .word 0x02257748
	thumb_func_end ov23_0224240C

	thumb_func_start ov23_02242458
ov23_02242458: ; 0x02242458
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _02242534 ; =0x02257748
	ldr r2, _02242538 ; =0x00000146
	ldr r0, [r3, #0]
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _02242472
	add r1, r2, #0
	sub r1, #0x12
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02242486
_02242472:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _02242480
	sub r2, r2, #1
	strb r2, [r0, r1]
_02242480:
	add sp, #0x18
	mov r0, #0
	pop {r4, pc}
_02242486:
	ldr r1, _0224253C ; =0x021BF6BC
	ldrh r1, [r1, #0x20]
	cmp r1, #0
	beq _0224252C
	add r1, r2, #0
	mov r4, #0x1e
	sub r1, #0x12
	strb r4, [r0, r1]
	ldr r1, [r3, #0]
	add r0, r2, #5
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224252C
	bl sub_02057FAC
	cmp r0, #0
	beq _0224252C
	bl sub_0203608C
	bl ov23_0224ACC0
	cmp r0, #0
	bne _0224252C
	bl sub_020360F0
	cmp r0, #0
	beq _022424C2
	add sp, #0x18
	mov r0, #0
	pop {r4, pc}
_022424C2:
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	beq _022424D4
	add sp, #0x18
	mov r0, #0
	pop {r4, pc}
_022424D4:
	ldr r3, _02242534 ; =0x02257748
	ldr r2, _0224253C ; =0x021BF6BC
	ldr r3, [r3, #0]
	ldrh r1, [r2, #0x1c]
	ldr r3, [r3, #0xc]
	ldrh r2, [r2, #0x1e]
	add r3, #0x8c
	ldr r3, [r3, #0]
	add r0, sp, #0xc
	bl ov5_021EAFA4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	add r2, sp, #8
	add r3, sp, #4
	bl ov5_021E9230
	ldr r1, [sp, #8]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [sp, #4]
	strh r1, [r0, #2]
	ldr r1, _0224253C ; =0x021BF6BC
	ldr r0, _02242534 ; =0x02257748
	ldrh r3, [r1, #0x1c]
	ldr r2, [r0, #0]
	strh r3, [r2, #0x18]
	ldrh r2, [r1, #0x1e]
	ldr r1, [r0, #0]
	strh r2, [r1, #0x1a]
	ldr r2, [sp, #8]
	ldr r1, [r0, #0]
	strh r2, [r1, #0x1c]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	mov r2, #4
	strh r1, [r0, #0x1e]
	mov r0, #0x30
	add r1, sp, #0
	bl sub_020359DC
	add sp, #0x18
	mov r0, #1
	pop {r4, pc}
_0224252C:
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	nop
_02242534: .word 0x02257748
_02242538: .word 0x00000146
_0224253C: .word 0x021BF6BC
	thumb_func_end ov23_02242458

	thumb_func_start ov23_02242540
ov23_02242540: ; 0x02242540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	str r0, [sp]
	ldrh r0, [r6]
	str r1, [sp, #4]
	mov r1, #6
	sub r0, r0, #6
	str r0, [sp, #0xc]
	ldrh r0, [r6, #2]
	mov r4, #1
	sub r0, r0, #6
	str r0, [sp, #8]
	add r0, sp, #0x14
	bl ov23_02241A80
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl ov23_02241A88
	cmp r0, #0
	beq _022425B0
_0224256C:
	add r1, sp, #0x10
	mov r0, #0
	ldrh r2, [r6]
	ldrsh r0, [r1, r0]
	add r5, r2, r0
	mov r0, #2
	ldrh r2, [r6, #2]
	ldrsh r0, [r1, r0]
	add r7, r2, r0
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	blx r2
	cmp r0, #0
	beq _022425A4
	ldr r0, [sp, #0xc]
	sub r1, r5, r0
	ldr r0, [sp, #8]
	sub r0, r7, r0
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r0, [sp]
	cmp r4, #8
	strb r1, [r0, r4]
	bne _022425A2
	add r4, r4, #1
	b _022425B0
_022425A2:
	add r4, r4, #1
_022425A4:
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl ov23_02241A88
	cmp r0, #0
	bne _0224256C
_022425B0:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02242540

	thumb_func_start ov23_022425B8
ov23_022425B8: ; 0x022425B8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	strb r0, [r1]
	ldr r1, _022425F0 ; =ov23_022442D8
	add r0, sp, #0
	add r2, r4, #0
	bl ov23_02242540
	add r2, r0, #0
	mov r0, #0x31
	add r1, sp, #0
	bl sub_02035AC4
	ldr r1, _022425F4 ; =ov23_02241200
	add r0, sp, #0
	add r2, r4, #0
	bl ov23_02242540
	add r2, r0, #0
	mov r0, #0x32
	add r1, sp, #0
	bl sub_02035AC4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022425F0: .word ov23_022442D8
_022425F4: .word ov23_02241200
	thumb_func_end ov23_022425B8

	thumb_func_start ov23_022425F8
ov23_022425F8: ; 0x022425F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02059094
	cmp r0, #0
	beq _02242620
	add r0, r5, #0
	bl ov23_0224ACC0
	cmp r0, #0
	bne _02242620
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_022425B8
_02242620:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_022425F8

	thumb_func_start ov23_02242624
ov23_02242624: ; 0x02242624
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224264E
	ldr r1, _02242650 ; =0x02257748
	add r0, r4, #1
	ldr r1, [r1, #0]
	sub r2, r5, #1
	add r1, #0xfc
	bl MI_CpuCopy8
	ldr r0, _02242650 ; =0x02257748
	sub r2, r5, #1
	ldr r1, [r0, #0]
	mov r0, #0x52
	lsl r0, r0, #2
	strb r2, [r1, r0]
_0224264E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242650: .word 0x02257748
	thumb_func_end ov23_02242624

	thumb_func_start ov23_02242654
ov23_02242654: ; 0x02242654
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _022426EE
	ldr r1, _022426F4 ; =0x02257748
	add r0, r4, #1
	ldr r2, [r1, #0]
	mov r1, #0x41
	lsl r1, r1, #2
	add r1, r2, r1
	sub r2, r5, #1
	bl MI_CpuCopy8
	ldr r2, _022426F4 ; =0x02257748
	ldr r0, _022426F8 ; =0x00000149
	ldr r1, [r2, #0]
	sub r3, r5, #1
	strb r3, [r1, r0]
	ldr r2, [r2, #0]
	ldr r1, _022426FC ; =ov23_02241D04
	add r0, sp, #0x1c
	add r2, #0x1c
	bl ov23_02242540
	ldr r1, _022426F4 ; =0x02257748
	ldr r2, _02242700 ; =0x0000014A
	ldr r3, [r1, #0]
	strb r0, [r3, r2]
	ldr r3, [r1, #0]
	ldrb r0, [r3, r2]
	sub r0, r0, #1
	strb r0, [r3, r2]
	ldr r3, [r1, #0]
	add r1, r2, #0
	add r0, sp, #0x1c
	sub r1, #0x3e
	ldrb r2, [r3, r2]
	add r0, #1
	add r1, r3, r1
	bl MI_CpuCopy8
	ldr r0, _022426F4 ; =0x02257748
	ldr r3, [r0, #0]
	ldrh r0, [r3, #0x1a]
	str r0, [sp]
	add r0, r3, #0
	add r0, #0xfc
	str r0, [sp, #4]
	mov r0, #0x52
	lsl r0, r0, #2
	ldrb r1, [r3, r0]
	str r1, [sp, #8]
	add r1, r0, #0
	sub r1, #0x44
	add r1, r3, r1
	str r1, [sp, #0xc]
	add r1, r0, #1
	ldrb r1, [r3, r1]
	str r1, [sp, #0x10]
	add r1, r0, #0
	sub r1, #0x3c
	add r1, r3, r1
	str r1, [sp, #0x14]
	add r0, r0, #2
	ldrb r0, [r3, r0]
	str r0, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r1, [r3, #0x1c]
	ldrh r2, [r3, #0x1e]
	ldrh r3, [r3, #0x18]
	bl ov23_022489F8
_022426EE:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_022426F4: .word 0x02257748
_022426F8: .word 0x00000149
_022426FC: .word ov23_02241D04
_02242700: .word 0x0000014A
	thumb_func_end ov23_02242654

	thumb_func_start ov23_02242704
ov23_02242704: ; 0x02242704
	cmp r0, #0
	bne _0224270E
	mov r0, #0xe1
	lsl r0, r0, #0xc
	bx lr
_0224270E:
	ldrh r1, [r0, #2]
	ldrh r2, [r0]
	mov r0, #0xf
	lsl r0, r0, #6
	mul r0, r1
	add r0, r2, r0
	bx lr
	thumb_func_end ov23_02242704

	thumb_func_start ov23_0224271C
ov23_0224271C: ; 0x0224271C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02242784 ; =0x02257748
	mov r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	sub r5, r1, #1
	bl ov23_02242704
	str r0, [sp]
	ldr r0, _02242784 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r5, #0
	ble _02242764
_02242742:
	add r1, r4, r5
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r6, r0, #1
	add r0, sp, #4
	add r1, r6, #0
	blx r7
	bl ov23_02242704
	ldr r1, [sp]
	cmp r0, r1
	bge _0224275E
	add r4, r6, #1
	b _02242760
_0224275E:
	add r5, r6, #0
_02242760:
	cmp r4, r5
	blt _02242742
_02242764:
	add r0, sp, #4
	add r1, r4, #0
	blx r7
	bl ov23_02242704
	ldr r1, [sp]
	cmp r1, r0
	bne _0224277A
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224277A:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242784: .word 0x02257748
	thumb_func_end ov23_0224271C

	thumb_func_start ov23_02242788
ov23_02242788: ; 0x02242788
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _022427D8 ; =0x02257748
	mov r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	sub r5, r1, #2
	bl ov23_02242704
	str r0, [sp]
	ldr r0, _022427D8 ; =0x02257748
	add r5, r5, #1
	ldr r1, [r0, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r5, #0
	ble _022427D2
_022427B0:
	add r1, r4, r5
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r6, r0, #1
	add r0, sp, #4
	add r1, r6, #0
	blx r7
	bl ov23_02242704
	ldr r1, [sp]
	cmp r0, r1
	bge _022427CC
	add r4, r6, #1
	b _022427CE
_022427CC:
	add r5, r6, #0
_022427CE:
	cmp r4, r5
	blt _022427B0
_022427D2:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022427D8: .word 0x02257748
	thumb_func_end ov23_02242788

	thumb_func_start ov23_022427DC
ov23_022427DC: ; 0x022427DC
	push {r3, r4}
	ldr r3, _022427F4 ; =0x02257748
	mov r2, #0x45
	ldr r4, [r3, #0]
	lsl r2, r2, #2
	str r1, [r4, r2]
	ldr r1, [r3, #0]
	add r2, #0x18
	str r0, [r1, r2]
	pop {r3, r4}
	bx lr
	nop
_022427F4: .word 0x02257748
	thumb_func_end ov23_022427DC

	thumb_func_start ov23_022427F8
ov23_022427F8: ; 0x022427F8
	push {r3, lr}
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	bne _02242810
	mov r0, #0x1b
	bl sub_020360DC
	bl sub_0203572C
_02242810:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_022427F8

	thumb_func_start ov23_02242814
ov23_02242814: ; 0x02242814
	ldr r0, _02242828 ; =0x02257748
	ldr r2, [r0, #0]
	ldr r0, _0224282C ; =0x00000146
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02242824
	sub r1, r1, #1
	strb r1, [r2, r0]
_02242824:
	bx lr
	nop
_02242828: .word 0x02257748
_0224282C: .word 0x00000146
	thumb_func_end ov23_02242814

	thumb_func_start ov23_02242830
ov23_02242830: ; 0x02242830
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _022428CC ; =0x02257748
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r4, r0, #0
	ldr r0, _022428CC ; =0x02257748
	ldr r2, [r0, #0]
	ldr r0, _022428D0 ; =0x00000146
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02242858
	sub r0, #0x12
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _022428C6
_02242858:
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	bne _022428C6
	add r0, r4, #0
	bl sub_02028E28
	cmp r0, #0x28
	bne _02242876
	mov r0, #0x10
	orr r0, r5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02242876:
	bl sub_0203608C
	bl sub_02058D88
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02058DC0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_02241D04
	cmp r0, #0
	beq _0224289E
	mov r0, #0x20
	orr r0, r5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0224289E:
	mov r0, #0xf
	add r2, r6, #0
	and r2, r0
	lsl r0, r4, #0x1c
	add r1, sp, #0
	lsr r0, r0, #0x18
	strb r5, [r1]
	add r0, r2, r0
	strb r0, [r1, #1]
	mov r0, #0x1c
	add r1, sp, #0
	bl sub_020360D0
	bl sub_0203572C
	ldr r0, _022428CC ; =0x02257748
	mov r2, #8
	ldr r1, [r0, #0]
	ldr r0, _022428D0 ; =0x00000146
	strb r2, [r1, r0]
_022428C6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022428CC: .word 0x02257748
_022428D0: .word 0x00000146
	thumb_func_end ov23_02242830

	thumb_func_start ov23_022428D4
ov23_022428D4: ; 0x022428D4
	mov r0, #2
	bx lr
	thumb_func_end ov23_022428D4

	thumb_func_start ov23_022428D8
ov23_022428D8: ; 0x022428D8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r1, sp, #0
	add r6, r2, #0
	strb r5, [r1]
	bl sub_02058EE0
	add r1, sp, #0
	strh r0, [r1, #2]
	add r0, r5, #0
	bl sub_02058F18
	add r1, sp, #0
	strh r0, [r1, #4]
	add r0, r5, #0
	bl sub_02058DF8
	ldr r1, _02242B10 ; =0x0000FFFF
	cmp r0, r1
	bne _0224290E
	add r0, r5, #0
	bl sub_02058E4C
	ldr r1, _02242B10 ; =0x0000FFFF
	cmp r0, r1
	beq _022429C2
_0224290E:
	add r0, r5, #0
	bl sub_02059094
	cmp r0, #0
	beq _022429C2
	add r0, r5, #0
	bl ov23_0224ACC0
	cmp r0, #0
	bne _022429C2
	add r1, sp, #0
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl sub_0205900C
	add r4, r0, #0
	cmp r4, #0xff
	bne _02242934
	b _02242A3A
_02242934:
	bl ov23_0224C1C8
	cmp r0, #0
	bne _022429C2
	add r0, r4, #0
	bl ov23_0224162C
	cmp r0, #0
	beq _02242968
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #6]
	strb r4, [r0, #8]
	add r1, sp, #4
	strb r5, [r0, #7]
	mov r0, #0x1e
	add r1, #2
	mov r2, #3
	bl sub_02035AC4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242968:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov23_0224A658
	cmp r0, #0
	bne _022429C2
	add r0, r4, #0
	bl ov23_0224ACC0
	cmp r0, #0
	beq _022429B8
	add r0, r4, #0
	bl ov23_02244470
	cmp r0, #0
	bne _02242996
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02245560
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242996:
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #6]
	strb r4, [r0, #8]
	add r1, sp, #4
	strb r5, [r0, #7]
	mov r0, #0x1e
	add r1, #2
	mov r2, #3
	bl sub_02035AC4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_022429B8:
	add r0, r5, #0
	bl sub_02059094
	cmp r0, #0
	bne _022429C4
_022429C2:
	b _02242B0C
_022429C4:
	add r0, r4, #0
	bl sub_02059094
	cmp r0, #0
	beq _022429D8
	add r0, r4, #0
	bl sub_020593E0
	cmp r0, #0
	beq _022429FA
_022429D8:
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #6]
	strb r4, [r0, #8]
	add r1, sp, #4
	strb r5, [r0, #7]
	mov r0, #0x1e
	add r1, #2
	mov r2, #3
	bl sub_02035AC4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_022429FA:
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #6]
	strb r4, [r0, #8]
	strb r5, [r0, #7]
	add r0, r4, #0
	bl sub_02059094
	cmp r0, #0
	beq _02242B0C
	add r1, sp, #4
	mov r0, #0x1e
	add r1, #2
	mov r2, #3
	bl sub_02035AC4
	cmp r0, #0
	beq _02242B0C
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add r0, r4, #0
	mov r1, #0
	bl sub_02059058
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02058FB0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242A3A:
	ldrb r2, [r6]
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl ov23_02244080
	cmp r0, #0
	beq _02242A56
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242A56:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl ov23_0223E354
	cmp r0, #0
	beq _02242A70
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242A70:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl ov23_02251324
	cmp r0, #0
	beq _02242A8A
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242A8A:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl ov23_0224D454
	cmp r0, #0
	beq _02242AA4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242AA4:
	add r1, sp, #0
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl sub_02058108
	cmp r0, #0
	beq _02242AD4
	add r0, r5, #0
	mov r1, #0xff
	mov r2, #0
	bl ov23_0224A658
	cmp r0, #0
	bne _02242B0C
	mov r0, #0x18
	add r1, sp, #0
	bl sub_02035B48
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242AD4:
	ldrb r1, [r6]
	mov r0, #0x20
	tst r0, r1
	beq _02242B0C
	add r0, r5, #0
	bl ov23_0224A6B8
	cmp r0, #0
	bne _02242B0C
	add r2, sp, #0
	ldrh r3, [r2, #4]
	mov r1, #0xf
	ldrb r0, [r6, #1]
	and r3, r1
	ldrh r1, [r2, #2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	add r1, r3, r1
	cmp r0, r1
	bne _02242B0C
	mov r0, #0x3f
	add r1, sp, #0
	bl sub_02035B48
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
_02242B0C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02242B10: .word 0x0000FFFF
	thumb_func_end ov23_022428D8

	thumb_func_start ov23_02242B14
ov23_02242B14: ; 0x02242B14
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203608C
	cmp r0, #0
	bne _02242B6C
	mov r5, #0
	ldr r4, _02242BB0 ; =0x02257748
	add r7, r5, #0
	mov r6, #1
_02242B26:
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _02242B42
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _02242BB4 ; =0x00000135
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02242B42
	add r0, r5, #0
	bl ov23_0224B5CC
_02242B42:
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	ldr r0, [r4, #0]
	beq _02242B56
	add r1, r0, r5
	ldr r0, _02242BB4 ; =0x00000135
	strb r6, [r1, r0]
	b _02242B5C
_02242B56:
	add r1, r0, r5
	ldr r0, _02242BB4 ; =0x00000135
	strb r7, [r1, r0]
_02242B5C:
	add r5, r5, #1
	cmp r5, #8
	blt _02242B26
	bl ov23_022433D0
	add r0, r0, #2
	bl sub_02037B58
_02242B6C:
	ldr r0, _02242BB0 ; =0x02257748
	ldr r2, [r0, #0]
	ldr r0, _02242BB8 ; =0x00000145
	ldrb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _02242B8E
	bl sub_02032CE8
	cmp r0, #0
	beq _02242B8E
	mov r0, #1
	bl sub_02057AE4
_02242B8E:
	bl ov23_02241810
	bl ov23_02243AE8
	bl ov23_0223E878
	ldr r0, _02242BB0 ; =0x02257748
	ldr r1, [r0, #0]
	ldr r0, _02242BBC ; =0x0000014B
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02242BAE
	ldr r0, [r1, #0xc]
	ldr r0, [r0, #8]
	bl ov23_022468A8
_02242BAE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242BB0: .word 0x02257748
_02242BB4: .word 0x00000135
_02242BB8: .word 0x00000145
_02242BBC: .word 0x0000014B
	thumb_func_end ov23_02242B14

	thumb_func_start ov23_02242BC0
ov23_02242BC0: ; 0x02242BC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02242C74 ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02242C70
	mov r1, #0x15
	mov r0, #0xf
	lsl r1, r1, #4
	bl sub_02018144
	add r1, r5, #0
	bl ov23_02241F74
	bl sub_02057C84
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	mov r2, #1
	bl sub_02057524
	bl ov23_02243858
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	bl ov23_022434BC
	bl ov23_0224B5C4
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	bl ov23_0224B144
	bl ov23_022417C4
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	bl ov23_022416E0
	bl ov23_0223E2E8
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	bl ov23_0223E1E4
	bl ov23_02253608
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D174
	bl sub_020298A0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203D174
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_02253598
	add r0, r5, #0
	bl sub_0203D174
	bl sub_020298B0
	bl ov23_0224F588
_02242C70:
	pop {r4, r5, r6, pc}
	nop
_02242C74: .word 0x02257748
	thumb_func_end ov23_02242BC0

	thumb_func_start ov23_02242C78
ov23_02242C78: ; 0x02242C78
	push {r3, lr}
	ldr r0, _02242CAC ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242CA8
	bl ov23_022535EC
	bl ov23_022417CC
	bl ov23_0224B430
	bl ov23_02243520
	bl sub_0205764C
	bl ov23_0223E2F0
	bl ov23_022421EC
	ldr r0, _02242CAC ; =0x02257748
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02242CB0 ; =0x0000014B
	strb r2, [r1, r0]
_02242CA8:
	pop {r3, pc}
	nop
_02242CAC: .word 0x02257748
_02242CB0: .word 0x0000014B
	thumb_func_end ov23_02242C78

	thumb_func_start ov23_02242CB4
ov23_02242CB4: ; 0x02242CB4
	push {r3, lr}
	sub sp, #8
	ldr r0, _02242CFC ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242CF8
	bl sub_020576A0
	bl ov23_02253604
	bl ov23_022417E0
	bl ov23_0224B460
	bl ov23_022435A8
	bl ov23_0223E2F4
	ldr r1, _02242CFC ; =0x02257748
	ldr r0, _02242D00 ; =0x0000014B
	ldr r2, [r1, #0]
	mov r3, #0
	strb r3, [r2, r0]
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	ldr r2, _02242D04 ; =0x000003E2
	ldr r0, [r0, #0xc]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r3, #0xa
	bl sub_0200DD0C
_02242CF8:
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_02242CFC: .word 0x02257748
_02242D00: .word 0x0000014B
_02242D04: .word 0x000003E2
	thumb_func_end ov23_02242CB4

	thumb_func_start ov23_02242D08
ov23_02242D08: ; 0x02242D08
	push {r3, lr}
	ldr r0, _02242D40 ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242D3C
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020287F8
	bl ov23_0224B4E4
	bl ov23_022435DC
	mov r0, #1
	bl sub_020576CC
	bl ov23_022417F4
	bl ov23_0223E2F8
	bl ov23_0224F5B8
	bl ov23_022535CC
	bl ov23_02242108
_02242D3C:
	pop {r3, pc}
	nop
_02242D40: .word 0x02257748
	thumb_func_end ov23_02242D08

	thumb_func_start ov23_02242D44
ov23_02242D44: ; 0x02242D44
	push {r3, lr}
	ldr r1, _02242D5C ; =0x02257748
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02242D5A
	bl ov23_02243670
	bl sub_02057764
	bl ov23_0224B518
_02242D5A:
	pop {r3, pc}
	; .align 2, 0
_02242D5C: .word 0x02257748
	thumb_func_end ov23_02242D44

	thumb_func_start ov23_02242D60
ov23_02242D60: ; 0x02242D60
	push {r4, lr}
	ldr r1, _02242E0C ; =0x02257748
	add r4, r0, #0
	ldr r3, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _02242D78
	mov r0, #0
	strb r0, [r3, r1]
	pop {r4, pc}
_02242D78:
	bl ov23_02242308
	cmp r0, #0
	beq _02242D8E
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242D8E:
	add r0, r4, #0
	bl ov23_022446B0
	cmp r0, #0
	beq _02242DA6
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242DA6:
	add r0, r4, #0
	bl ov23_02244784
	cmp r0, #0
	beq _02242DBE
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242DBE:
	add r0, r4, #0
	bl ov23_0224D020
	cmp r0, #0
	beq _02242DD6
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242DD6:
	add r0, r4, #0
	bl ov23_022415B8
	cmp r0, #0
	beq _02242DEE
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242DEE:
	add r0, r4, #0
	bl ov23_02241D58
	cmp r0, #0
	beq _02242E06
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242E06:
	mov r0, #0
	pop {r4, pc}
	nop
_02242E0C: .word 0x02257748
	thumb_func_end ov23_02242D60

	thumb_func_start ov23_02242E10
ov23_02242E10: ; 0x02242E10
	push {r3, lr}
	ldr r1, _02242E24 ; =0x02257748
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02242E20
	bl ov23_0224D130
	pop {r3, pc}
_02242E20:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02242E24: .word 0x02257748
	thumb_func_end ov23_02242E10

	thumb_func_start ov23_02242E28
ov23_02242E28: ; 0x02242E28
	push {r3, lr}
	ldr r0, _02242E3C ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242E38
	bl ov23_0224D150
	pop {r3, pc}
_02242E38:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02242E3C: .word 0x02257748
	thumb_func_end ov23_02242E28

	thumb_func_start ov23_02242E40
ov23_02242E40: ; 0x02242E40
	push {r3, lr}
	ldr r0, _02242E54 ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242E50
	bl ov23_0224D178
	pop {r3, pc}
_02242E50:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02242E54: .word 0x02257748
	thumb_func_end ov23_02242E40

	thumb_func_start ov23_02242E58
ov23_02242E58: ; 0x02242E58
	cmp r0, #0x20
	ble _02242E6E
	cmp r1, #0x40
	ble _02242E6E
	ldr r2, _02242E74 ; =0x000001DF
	cmp r0, r2
	bge _02242E6E
	cmp r1, r2
	bge _02242E6E
	mov r0, #0
	bx lr
_02242E6E:
	mov r0, #1
	bx lr
	nop
_02242E74: .word 0x000001DF
	thumb_func_end ov23_02242E58

	thumb_func_start ov23_02242E78
ov23_02242E78: ; 0x02242E78
	push {r3, lr}
	ldr r1, _02242ED8 ; =0x02257748
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02242ED2
	cmp r0, #0x10
	bge _02242EC4
	ldr r1, _02242EDC ; =0x00000147
	ldrb r1, [r2, r1]
	cmp r1, #4
	bhi _02242ED2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242E9A: ; jump table
	.short _02242EA4 - _02242E9A - 2 ; case 0
	.short _02242EA8 - _02242E9A - 2 ; case 1
	.short _02242EB2 - _02242E9A - 2 ; case 2
	.short _02242EBE - _02242E9A - 2 ; case 3
	.short _02242EB8 - _02242E9A - 2 ; case 4
_02242EA4:
	mov r0, #0
	pop {r3, pc}
_02242EA8:
	cmp r0, #8
	bge _02242EB2
	bl ov23_0224121C
	pop {r3, pc}
_02242EB2:
	bl ov23_02241F0C
	pop {r3, pc}
_02242EB8:
	bl ov23_02245698
	pop {r3, pc}
_02242EBE:
	bl ov23_0224125C
	pop {r3, pc}
_02242EC4:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_02029894
	bl sub_02029874
	pop {r3, pc}
_02242ED2:
	mov r0, #0
	pop {r3, pc}
	nop
_02242ED8: .word 0x02257748
_02242EDC: .word 0x00000147
	thumb_func_end ov23_02242E78

	thumb_func_start ov23_02242EE0
ov23_02242EE0: ; 0x02242EE0
	push {r3, lr}
	ldr r1, _02242F40 ; =0x02257748
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02242F3A
	cmp r0, #0x10
	bge _02242F2C
	ldr r1, _02242F44 ; =0x00000147
	ldrb r1, [r2, r1]
	cmp r1, #4
	bhi _02242F3A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242F02: ; jump table
	.short _02242F0C - _02242F02 - 2 ; case 0
	.short _02242F10 - _02242F02 - 2 ; case 1
	.short _02242F1A - _02242F02 - 2 ; case 2
	.short _02242F26 - _02242F02 - 2 ; case 3
	.short _02242F20 - _02242F02 - 2 ; case 4
_02242F0C:
	mov r0, #0
	pop {r3, pc}
_02242F10:
	cmp r0, #8
	bge _02242F1A
	bl ov23_0224123C
	pop {r3, pc}
_02242F1A:
	bl ov23_02241F40
	pop {r3, pc}
_02242F20:
	bl ov23_022456CC
	pop {r3, pc}
_02242F26:
	bl ov23_02241294
	pop {r3, pc}
_02242F2C:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_02029894
	bl sub_0202987C
	pop {r3, pc}
_02242F3A:
	mov r0, #0
	pop {r3, pc}
	nop
_02242F40: .word 0x02257748
_02242F44: .word 0x00000147
	thumb_func_end ov23_02242EE0

	thumb_func_start ov23_02242F48
ov23_02242F48: ; 0x02242F48
	push {r3, lr}
	ldr r1, _02242FA0 ; =0x02257748
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02242F9C
	cmp r0, #0x10
	bge _02242F88
	ldr r1, _02242FA4 ; =0x00000147
	ldrb r1, [r2, r1]
	cmp r1, #4
	bhi _02242F9C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242F6A: ; jump table
	.short _02242F9C - _02242F6A - 2 ; case 0
	.short _02242F74 - _02242F6A - 2 ; case 1
	.short _02242F7C - _02242F6A - 2 ; case 2
	.short _02242F84 - _02242F6A - 2 ; case 3
	.short _02242F80 - _02242F6A - 2 ; case 4
_02242F74:
	cmp r0, #8
	bge _02242F7C
	mov r0, #0xc
	pop {r3, pc}
_02242F7C:
	mov r0, #9
	pop {r3, pc}
_02242F80:
	mov r0, #0xb
	pop {r3, pc}
_02242F84:
	mov r0, #0xc
	pop {r3, pc}
_02242F88:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_02029894
	bl sub_0202988C
	cmp r0, #0
	beq _02242F9C
	mov r0, #3
	pop {r3, pc}
_02242F9C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02242FA0: .word 0x02257748
_02242FA4: .word 0x00000147
	thumb_func_end ov23_02242F48

	thumb_func_start ov23_02242FA8
ov23_02242FA8: ; 0x02242FA8
	ldr r0, _02242FB4 ; =0x02257748
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02242FB8 ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02242FB4: .word 0x02257748
_02242FB8: .word 0x00000147
	thumb_func_end ov23_02242FA8

	thumb_func_start ov23_02242FBC
ov23_02242FBC: ; 0x02242FBC
	ldr r0, _02242FC8 ; =0x02257748
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02242FCC ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02242FC8: .word 0x02257748
_02242FCC: .word 0x00000147
	thumb_func_end ov23_02242FBC

	thumb_func_start ov23_02242FD0
ov23_02242FD0: ; 0x02242FD0
	ldr r0, _02242FDC ; =0x02257748
	mov r2, #2
	ldr r1, [r0, #0]
	ldr r0, _02242FE0 ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02242FDC: .word 0x02257748
_02242FE0: .word 0x00000147
	thumb_func_end ov23_02242FD0

	thumb_func_start ov23_02242FE4
ov23_02242FE4: ; 0x02242FE4
	ldr r0, _02242FF0 ; =0x02257748
	mov r2, #4
	ldr r1, [r0, #0]
	ldr r0, _02242FF4 ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02242FF0: .word 0x02257748
_02242FF4: .word 0x00000147
	thumb_func_end ov23_02242FE4

	thumb_func_start ov23_02242FF8
ov23_02242FF8: ; 0x02242FF8
	ldr r0, _02243004 ; =0x02257748
	mov r2, #3
	ldr r1, [r0, #0]
	ldr r0, _02243008 ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02243004: .word 0x02257748
_02243008: .word 0x00000147
	thumb_func_end ov23_02242FF8

	thumb_func_start ov23_0224300C
ov23_0224300C: ; 0x0224300C
	ldr r2, _0224301C ; =0x02257748
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224301A
	add r0, r2, r0
	add r0, #0xc2
	strb r1, [r0]
_0224301A:
	bx lr
	; .align 2, 0
_0224301C: .word 0x02257748
	thumb_func_end ov23_0224300C

	thumb_func_start ov23_02243020
ov23_02243020: ; 0x02243020
	ldr r1, _02243034 ; =0x02257748
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02243030
	add r0, r2, r0
	mov r1, #1
	add r0, #0xd2
	strb r1, [r0]
_02243030:
	bx lr
	nop
_02243034: .word 0x02257748
	thumb_func_end ov23_02243020

	thumb_func_start ov23_02243038
ov23_02243038: ; 0x02243038
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _022430B4 ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022430B2
	lsl r4, r5, #2
	add r0, r0, r4
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022430B2
	mov r0, #0x64
	mov r1, #0xf
	bl sub_02023790
	ldr r1, _022430B4 ; =0x02257748
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0xdc
	str r0, [r1, #0]
	mov r0, #0xb
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #0xb
	bl sub_02023790
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02032EE8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200B498
	bl ov23_0224219C
	bl ov23_02253E3C
	mov r1, #0x73
	add r2, r7, #0
	bl sub_0200B1B8
	ldr r1, _022430B4 ; =0x02257748
	add r0, r6, #0
	ldr r1, [r1, #0]
	add r2, r7, #0
	add r1, r1, r4
	add r1, #0xdc
	ldr r1, [r1, #0]
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
_022430B2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022430B4: .word 0x02257748
	thumb_func_end ov23_02243038

	thumb_func_start ov23_022430B8
ov23_022430B8: ; 0x022430B8
	ldr r1, _022430C8 ; =0x02257748
	mov r2, #1
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _022430CC ; =0x0000013D
	strb r2, [r1, r0]
	bx lr
	nop
_022430C8: .word 0x02257748
_022430CC: .word 0x0000013D
	thumb_func_end ov23_022430B8

	thumb_func_start ov23_022430D0
ov23_022430D0: ; 0x022430D0
	ldr r1, _022430DC ; =0x02257748
	ldr r1, [r1, #0]
	add r1, #0xc0
	strh r0, [r1]
	bx lr
	nop
_022430DC: .word 0x02257748
	thumb_func_end ov23_022430D0

	thumb_func_start ov23_022430E0
ov23_022430E0: ; 0x022430E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _02243150 ; =0x02257748
	add r5, r2, #0
	ldr r3, [r1, #0]
	add r1, r3, #0
	add r1, #0xc0
	ldrh r4, [r1]
	cmp r4, #0
	beq _0224314E
	mov r1, #0
	add r2, r3, #0
_022430F8:
	ldrh r6, [r2, #0x20]
	cmp r4, r6
	bne _02243114
	ldrh r6, [r2, #0x22]
	cmp r0, r6
	bne _02243114
	lsl r1, r1, #3
	add r0, r3, r1
	strh r7, [r0, #0x24]
	ldr r0, _02243150 ; =0x02257748
	ldr r0, [r0, #0]
	add r0, r0, r1
	strh r5, [r0, #0x26]
	pop {r3, r4, r5, r6, r7, pc}
_02243114:
	add r1, r1, #1
	add r2, #8
	cmp r1, #0x14
	blt _022430F8
	mov r6, #0
	add r2, r3, #0
_02243120:
	ldrh r1, [r2, #0x20]
	cmp r1, #0
	bne _02243142
	lsl r1, r6, #3
	add r2, r3, r1
	strh r4, [r2, #0x20]
	ldr r2, _02243150 ; =0x02257748
	ldr r3, [r2, #0]
	add r3, r3, r1
	strh r0, [r3, #0x22]
	ldr r0, [r2, #0]
	add r0, r0, r1
	strh r7, [r0, #0x24]
	ldr r0, [r2, #0]
	add r0, r0, r1
	strh r5, [r0, #0x26]
	pop {r3, r4, r5, r6, r7, pc}
_02243142:
	add r6, r6, #1
	add r2, #8
	cmp r6, #0x14
	blt _02243120
	bl GF_AssertFail
_0224314E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243150: .word 0x02257748
	thumb_func_end ov23_022430E0

	thumb_func_start ov23_02243154
ov23_02243154: ; 0x02243154
	push {r4, r5}
	ldr r1, _02243188 ; =0x02257748
	mov r3, #0
	ldr r1, [r1, #0]
	add r2, r1, #0
	add r2, #0xc0
	ldrh r5, [r2]
	add r4, r1, #0
_02243164:
	ldrh r2, [r4, #0x20]
	cmp r5, r2
	bne _0224317A
	ldrh r2, [r4, #0x22]
	cmp r0, r2
	bne _0224317A
	lsl r0, r3, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x26]
	pop {r4, r5}
	bx lr
_0224317A:
	add r3, r3, #1
	add r4, #8
	cmp r3, #0x14
	blt _02243164
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02243188: .word 0x02257748
	thumb_func_end ov23_02243154

	thumb_func_start ov23_0224318C
ov23_0224318C: ; 0x0224318C
	push {r4, r5}
	ldr r1, _022431C0 ; =0x02257748
	mov r3, #0
	ldr r1, [r1, #0]
	add r2, r1, #0
	add r2, #0xc0
	ldrh r5, [r2]
	add r4, r1, #0
_0224319C:
	ldrh r2, [r4, #0x20]
	cmp r5, r2
	bne _022431B2
	ldrh r2, [r4, #0x22]
	cmp r0, r2
	bne _022431B2
	lsl r0, r3, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x24]
	pop {r4, r5}
	bx lr
_022431B2:
	add r3, r3, #1
	add r4, #8
	cmp r3, #0x14
	blt _0224319C
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_022431C0: .word 0x02257748
	thumb_func_end ov23_0224318C

	thumb_func_start ov23_022431C4
ov23_022431C4: ; 0x022431C4
	push {r4, lr}
	ldrb r4, [r2]
	bl sub_0203608C
	cmp r4, r0
	bne _022431E4
	ldr r0, _022431E8 ; =0x02257748
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl ov23_022534A0
	mov r0, #0x19
	bl sub_020360DC
	bl sub_020594FC
_022431E4:
	pop {r4, pc}
	nop
_022431E8: .word 0x02257748
	thumb_func_end ov23_022431C4

	thumb_func_start ov23_022431EC
ov23_022431EC: ; 0x022431EC
	push {r3, r4}
	ldr r3, _02243200 ; =0x02257748
	ldr r4, [r3, #0]
	str r0, [r4, #0]
	ldr r0, [r3, #0]
	str r1, [r0, #4]
	ldr r0, [r3, #0]
	str r2, [r0, #8]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02243200: .word 0x02257748
	thumb_func_end ov23_022431EC

	thumb_func_start ov23_02243204
ov23_02243204: ; 0x02243204
	ldr r0, _02243218 ; =0x02257748
	mov r2, #0
	ldr r1, [r0, #0]
	str r2, [r1, #0]
	ldr r1, [r0, #0]
	str r2, [r1, #4]
	ldr r0, [r0, #0]
	str r2, [r0, #8]
	bx lr
	nop
_02243218: .word 0x02257748
	thumb_func_end ov23_02243204

	thumb_func_start ov23_0224321C
ov23_0224321C: ; 0x0224321C
	push {r4, lr}
	ldr r0, _02243294 ; =0x02257748
	mov r4, #0
	ldr r2, [r0, #0]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _02243236
	ldr r1, [r2, #0]
	ldr r2, [r2, #8]
	blx r2
	bl ov23_02243204
	mov r4, #1
_02243236:
	bl ov23_022421EC
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	add r0, r4, #0
	pop {r4, pc}
	nop
_02243294: .word 0x02257748
	thumb_func_end ov23_0224321C

	thumb_func_start ov23_02243298
ov23_02243298: ; 0x02243298
	push {r3, r4, r5, lr}
	ldr r2, _0224330C ; =0x02257748
	add r4, r0, #0
	ldr r1, [r2, #0]
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _022432AA
	mov r0, #0
	pop {r3, r4, r5, pc}
_022432AA:
	ldr r3, [r1, #0xc]
	ldr r3, [r3, #0x10]
	cmp r3, #0
	beq _022432CC
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r3, [r1, r0]
	add r3, r3, #1
	str r3, [r1, r0]
	ldr r1, [r2, #0]
	ldr r0, [r1, r0]
	cmp r0, #0x64
	ble _022432C8
	bl GF_AssertFail
_022432C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022432CC:
	bl ov23_0224ACC0
	cmp r0, #0
	beq _022432D8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022432D8:
	add r0, r4, #0
	bl sub_02058D48
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02058D68
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _022432FA
	cmp r4, #0
	beq _022432FA
	mov r0, #0
	pop {r3, r4, r5, pc}
_022432FA:
	ldr r0, _0224330C ; =0x02257748
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	str r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224330C: .word 0x02257748
	thumb_func_end ov23_02243298

	thumb_func_start ov23_02243310
ov23_02243310: ; 0x02243310
	push {r3, lr}
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254250
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254250
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov23_02254250
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254250
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254250
	pop {r3, pc}
	nop
_0224335C: .word 0x02257748
	thumb_func_end ov23_02243310

	thumb_func_start ov23_02243360
ov23_02243360: ; 0x02243360
	push {r3, lr}
	sub sp, #8
	bl ov23_0224DB48
	add r1, sp, #0
	strh r0, [r1]
	bl ov23_0224DB64
	add r1, sp, #0
	strh r0, [r1, #2]
	bl ov23_0224DB84
	add r1, sp, #0
	strb r0, [r1, #4]
	bl ov23_02241670
	add r1, sp, #0
	strb r0, [r1, #5]
	mov r0, #0x46
	add r1, sp, #0
	bl sub_020360D0
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov23_02243360

	thumb_func_start ov23_02243390
ov23_02243390: ; 0x02243390
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldrh r1, [r4]
	add r5, r0, #0
	bl ov23_0224DBA0
	ldrh r1, [r4, #2]
	add r0, r5, #0
	bl ov23_0224DBBC
	ldrb r1, [r4, #4]
	add r0, r5, #0
	bl ov23_0224DBD8
	ldrb r1, [r4, #5]
	add r0, r5, #0
	bl ov23_02241690
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02243390

	thumb_func_start ov23_022433B8
ov23_022433B8: ; 0x022433B8
	mov r0, #6
	bx lr
	thumb_func_end ov23_022433B8

	thumb_func_start ov23_022433BC
ov23_022433BC: ; 0x022433BC
	ldr r1, _022433CC ; =0x02257748
	mov r2, #1
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0xca
	strb r2, [r0]
	bx lr
	nop
_022433CC: .word 0x02257748
	thumb_func_end ov23_022433BC

	thumb_func_start ov23_022433D0
ov23_022433D0: ; 0x022433D0
	ldr r1, _022433F0 ; =0x02257748
	mov r0, #0
	ldr r3, [r1, #0]
	add r2, r0, #0
_022433D8:
	add r1, r3, #0
	add r1, #0xca
	ldrb r1, [r1]
	cmp r1, #0
	beq _022433E4
	add r0, r0, #1
_022433E4:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #8
	blt _022433D8
	bx lr
	nop
_022433F0: .word 0x02257748
	thumb_func_end ov23_022433D0

	thumb_func_start ov23_022433F4
ov23_022433F4: ; 0x022433F4
	ldr r1, _02243404 ; =0x02257748
	ldr r3, _02243408 ; =ov23_0224B5CC
	ldr r1, [r1, #0]
	mov r2, #0
	add r1, r1, r0
	add r1, #0xca
	strb r2, [r1]
	bx r3
	; .align 2, 0
_02243404: .word 0x02257748
_02243408: .word ov23_0224B5CC
	thumb_func_end ov23_022433F4
	.bss


	.global Unk_ov23_02257748
Unk_ov23_02257748: ; 0x02257748
	.space 0x4

