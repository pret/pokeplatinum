	.include "macros/function.inc"
	.include "include/ov18_02233068.inc"

	

	.text


	arm_func_start ov18_02233068
ov18_02233068: ; 0x02233068
	ldr r0, _02233084 ; =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_02233084: .word 0x027FFFA8
	arm_func_end ov18_02233068

	arm_func_start ov18_02233088
ov18_02233088: ; 0x02233088
	stmfd sp!, {r3, lr}
	ldr r0, _022330E0 ; =0x0225330C
	mov r1, #0
	strh r1, [r0, #2]
	bl ov18_022330E8
	bl ov18_0222BC1C
	mov r0, #0x36
	sub r1, r0, #0x37
	mov r2, #0
	bl ov18_0222B594
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0x22
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	bl ov18_0222F030
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _022330E4 ; =ov18_02233190
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022330E0: .word 0x0225330C
_022330E4: .word ov18_02233190
	arm_func_end ov18_02233088

	arm_func_start ov18_022330E8
ov18_022330E8: ; 0x022330E8
	stmfd sp!, {r3, lr}
	ldr r0, _02233170 ; =0x0224A0E0
	ldr r1, _02233174 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02233178 ; =0x0224A0F8
	ldr r1, _0223317C ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _02233180 ; =0x0224A110
	ldr r1, _02233184 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02233188 ; =0x04001008
	ldr r1, _0223318C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233170: .word 0x0224A0E0
_02233174: .word 0x020C07EC
_02233178: .word 0x0224A0F8
_0223317C: .word GX_LoadBGPltt
_02233180: .word 0x0224A110
_02233184: .word GX_LoadBG2Scr
_02233188: .word 0x04001008
_0223318C: .word 0x0400000A
	arm_func_end ov18_022330E8

	arm_func_start ov18_02233190
ov18_02233190: ; 0x02233190
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022331E0 ; =ov18_022331E4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022331E0: .word ov18_022331E4
	arm_func_end ov18_02233190

	arm_func_start ov18_022331E4
ov18_022331E4: ; 0x022331E4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _0223321C ; =ov18_02233220
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223321C: .word ov18_02233220
	arm_func_end ov18_022331E4

	arm_func_start ov18_02233220
ov18_02233220: ; 0x02233220
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	ldr r1, _0223325C ; =ov18_02233540
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02233260 ; =0x0225330C
	str r0, [r1, #4]
	ldr r0, _02233264 ; =ov18_02233268
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223325C: .word ov18_02233540
_02233260: .word 0x0225330C
_02233264: .word ov18_02233268
	arm_func_end ov18_02233220

	arm_func_start ov18_02233268
ov18_02233268: ; 0x02233268
	stmfd sp!, {r3, lr}
	bl ov18_0223333C
	bl ov18_02233374
	bl ov18_02233378
	bl ov18_0222F190
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	cmp r0, #1
	beq _02233298
	cmp r0, #2
	beq _022332CC
	ldmia sp!, {r3, pc}
_02233298:
	ldr r2, _02233330 ; =0x0225330C
	ldr r1, [r2, #4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #1
	strb r0, [r2]
	bl ov18_022463CC
	ldr r1, _02233330 ; =0x0225330C
	mov r2, #0
	ldr r0, _02233334 ; =ov18_022335A8
	str r2, [r1, #4]
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_022332CC:
	ldr r0, _02233330 ; =0x0225330C
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0223E9FC
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xc
	str ip, [sp]
	bl ov18_0223FC48
	mov r0, #9
	bl ov18_0223E994
	bl ov18_0222B0C0
	ldr r1, _02233330 ; =0x0225330C
	mov r0, #1
	ldr r1, [r1, #4]
	bl ov18_022463CC
	ldr r1, _02233330 ; =0x0225330C
	mov r2, #0
	ldr r0, _02233338 ; =ov18_0223355C
	str r2, [r1, #4]
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233330: .word 0x0225330C
_02233334: .word ov18_022335A8
_02233338: .word ov18_0223355C
	arm_func_end ov18_02233268

	arm_func_start ov18_0223333C
ov18_0223333C: ; 0x0223333C
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _0223335C
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
_0223335C:
	bl ov18_02233068
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223333C

	arm_func_start ov18_02233374
ov18_02233374: ; 0x02233374
	bx lr
	arm_func_end ov18_02233374

	arm_func_start ov18_02233378
ov18_02233378: ; 0x02233378
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _022333BC ; =0x0225330C
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #1
	bl ov18_022463AC
	ldr r0, _022333BC ; =0x0225330C
	mov r1, #0
	str r1, [r0, #4]
	bl ov18_0222B0C0
	ldr r0, _022333C0 ; =ov18_022335F4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022333BC: .word 0x0225330C
_022333C0: .word ov18_022335F4
	arm_func_end ov18_02233378

	arm_func_start ov18_022333C4
ov18_022333C4: ; 0x022333C4
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	ldr r0, _022333F8 ; =0x0225330C
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _022333E4
	mov r0, #1
	bl ov18_022463CC
_022333E4:
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022333FC ; =ov18_02233400
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022333F8: .word 0x0225330C
_022333FC: .word ov18_02233400
	arm_func_end ov18_022333C4

	arm_func_start ov18_02233400
ov18_02233400: ; 0x02233400
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
	ldr r0, _0223345C ; =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223343C
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223343C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02233460 ; =ov18_02233464
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223345C: .word 0x0225330C
_02233460: .word ov18_02233464
	arm_func_end ov18_02233400

	arm_func_start ov18_02233464
ov18_02233464: ; 0x02233464
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02233534 ; =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02233498
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_02233498:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02233534 ; =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bl ov18_0222F140
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02233534 ; =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	bne _022334E8
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_022334E8:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02233534 ; =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223351C
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02233538 ; =ov18_0223B3F4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223351C:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223353C ; =ov18_02233624
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233534: .word 0x0225330C
_02233538: .word ov18_0223B3F4
_0223353C: .word ov18_02233624
	arm_func_end ov18_02233464

	arm_func_start ov18_02233540
ov18_02233540: ; 0x02233540
	stmfd sp!, {r3, lr}
	bl ov18_022451C0
	mov r0, #0
	bl ov18_02246254
	bl ov18_0223333C
	bl ov18_02233378
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02233540

	arm_func_start ov18_0223355C
ov18_0223355C: ; 0x0223355C
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02233584 ; =ov18_02233588
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233584: .word ov18_02233588
	arm_func_end ov18_0223355C

	arm_func_start ov18_02233588
ov18_02233588: ; 0x02233588
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _022335A4 ; =ov18_022333C4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022335A4: .word ov18_022333C4
	arm_func_end ov18_02233588

	arm_func_start ov18_022335A8
ov18_022335A8: ; 0x022335A8
	stmfd sp!, {r3, lr}
	bl ov18_0223333C
	bl ov18_02233374
	bl ov18_02233378
	ldr r1, _022335E8 ; =0x0225330C
	ldr r0, _022335EC ; =0x00000438
	ldrh r2, [r1, #2]
	add r2, r2, #1
	strh r2, [r1, #2]
	ldrh r1, [r1, #2]
	cmp r1, r0
	ldmloia sp!, {r3, pc}
	bl ov18_0223E9FC
	ldr r0, _022335F0 ; =ov18_022333C4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022335E8: .word 0x0225330C
_022335EC: .word 0x00000438
_022335F0: .word ov18_022333C4
	arm_func_end ov18_022335A8

	arm_func_start ov18_022335F4
ov18_022335F4: ; 0x022335F4
	stmfd sp!, {r3, lr}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r1, _0223361C ; =0x0225330C
	mov r2, #0
	ldr r0, _02233620 ; =ov18_022333C4
	strb r2, [r1]
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223361C: .word 0x0225330C
_02233620: .word ov18_022333C4
	arm_func_end ov18_022335F4

	.data


	.global Unk_ov18_0224A0E0
Unk_ov18_0224A0E0: ; 0x0224A0E0
	.incbin "incbin/overlay18_data.bin", 0x980, 0x998 - 0x980

	.global Unk_ov18_0224A0F8
Unk_ov18_0224A0F8: ; 0x0224A0F8
	.incbin "incbin/overlay18_data.bin", 0x998, 0x9B0 - 0x998

	.global Unk_ov18_0224A110
Unk_ov18_0224A110: ; 0x0224A110
	.incbin "incbin/overlay18_data.bin", 0x9B0, 0x14



	.bss


	.global Unk_ov18_0225330C
Unk_ov18_0225330C: ; 0x0225330C
	.space 0x4

	.global Unk_ov18_0225330E
Unk_ov18_0225330E: ; 0x0225330E
	.space 0x4

	.global Unk_ov18_02253310
Unk_ov18_02253310: ; 0x02253310
	.space 0x4

