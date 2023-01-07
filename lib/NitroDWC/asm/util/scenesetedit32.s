	.include "macros/function.inc"
	.include "include/scenesetedit32.inc"

	

	.text


	arm_func_start ov18_02234DB4
ov18_02234DB4: ; 0x02234DB4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _02234EDC ; =0x02249230
	mov r0, #0x2c
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	mov r1, #4
	strb r3, [sp]
	strb r2, [sp, #1]
	bl ov18_02245068
	ldr r2, _02234EE0 ; =0x02253320
	add r1, sp, #4
	str r0, [r2, #0]
	add r0, sp, #8
	bl ov18_0222F724
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02234E2C
	ldr r0, _02234EE0 ; =0x02253320
	ldr r0, [r0, #0]
	add r0, r0, #8
	bl ov18_0223E068
	ldr r0, _02234EE0 ; =0x02253320
	mov r1, #0x20
	ldr r0, [r0, #0]
	add r0, r0, #8
	bl ov18_02245E50
	ldr r1, _02234EE0 ; =0x02253320
	ldr r1, [r1, #0]
	strb r0, [r1, #0x29]
_02234E2C:
	bl ov18_02234EE8
	ldr r0, [sp, #8]
	add r0, r0, #9
	bl ov18_0222BBC0
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02234E5C
	mov r0, #0x35
	sub r1, r0, #0x36
	mov r2, #0
	bl ov18_0222B594
	b _02234E74
_02234E5C:
	ldr r2, [sp, #8]
	add r0, sp, #0
	ldrb r0, [r0, r2]
	mvn r1, #0
	mov r2, #0
	bl ov18_0222B594
_02234E74:
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r2, _02234EE0 ; =0x02253320
	mov r1, #0x3e
	ldr r2, [r2, #0]
	str r0, [r2, #0]
	mov r0, #0
	bl ov18_02243F60
	ldr r1, _02234EE0 ; =0x02253320
	ldr r2, [r1, #0]
	str r0, [r2, #4]
	ldr r0, [r1, #0]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl ov18_02235584
	bl ov18_02235490
	ldr r0, _02234EE4 ; =ov18_02234FA4
	bl ov18_0222F6C4
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_02234EDC: .word Unk_ov18_02249230
_02234EE0: .word Unk_ov18_02253320
_02234EE4: .word ov18_02234FA4
	arm_func_end ov18_02234DB4

	arm_func_start ov18_02234EE8
ov18_02234EE8: ; 0x02234EE8
	stmfd sp!, {r3, lr}
	ldr r0, _02234F7C ; =0x0224A150
	ldr r1, _02234F80 ; =0x020C0160
	bl ov18_0222B700
	ldr r0, _02234F84 ; =0x0224A164
	ldr r1, _02234F88 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02234F8C ; =0x0224A17C
	ldr r1, _02234F90 ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _02234F94 ; =0x0224A194
	ldr r1, _02234F98 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02234F9C ; =0x04001008
	ldr r1, _02234FA0 ; =0x0400000A
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
	orr r0, r0, #2
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
_02234F7C: .word Unk_ov18_0224A150
_02234F80: .word 0x020C0160
_02234F84: .word Unk_ov18_0224A164
_02234F88: .word 0x020C07EC
_02234F8C: .word Unk_ov18_0224A17C
_02234F90: .word GX_LoadBGPltt
_02234F94: .word Unk_ov18_0224A194
_02234F98: .word GX_LoadBG2Scr
_02234F9C: .word 0x04001008
_02234FA0: .word 0x0400000A
	arm_func_end ov18_02234EE8

	arm_func_start ov18_02234FA4
ov18_02234FA4: ; 0x02234FA4
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
	ldr r0, _02234FF4 ; =ov18_02234FF8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234FF4: .word ov18_02234FF8
	arm_func_end ov18_02234FA4

	arm_func_start ov18_02234FF8
ov18_02234FF8: ; 0x02234FF8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222BE30
	mov r0, #0x14
	bl ov18_0223E994
	ldr r0, _0223506C ; =0x02253320
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	bne _02235044
	mov r0, #0
	bl ov18_0222C1DC
_02235044:
	ldr r0, _0223506C ; =0x02253320
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _02235060
	mov r0, #0
	bl ov18_0222C1F0
_02235060:
	ldr r0, _02235070 ; =ov18_02235074
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223506C: .word Unk_ov18_02253320
_02235070: .word ov18_02235074
	arm_func_end ov18_02234FF8

	arm_func_start ov18_02235074
ov18_02235074: ; 0x02235074
	stmfd sp!, {r3, lr}
	bl ov18_0222C1C8
	cmp r0, #0xff
	ldmeqia sp!, {r3, pc}
	ldr r0, _02235090 ; =ov18_02235094
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235090: .word ov18_02235094
	arm_func_end ov18_02235074

	arm_func_start ov18_02235094
ov18_02235094: ; 0x02235094
	stmfd sp!, {r3, lr}
	bl ov18_022350A4
	bl ov18_02235264
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02235094

	arm_func_start ov18_022350A4
ov18_022350A4: ; 0x022350A4
	stmfd sp!, {r4, lr}
	bl ov18_0222C1C8
	mov r4, r0
	cmp r4, #0x83
	bgt _022350E4
	cmp r4, #0x80
	blt _022350D8
	beq _022350F0
	cmp r4, #0x82
	beq _02235154
	cmp r4, #0x83
	beq _02235178
	b _022351E4
_022350D8:
	cmp r4, #0
	beq _02235248
	b _022351E4
_022350E4:
	ldr r0, _02235254 ; =0x0000E01D
	cmp r4, r0
	b _022351E4
_022350F0:
	ldr r0, _02235258 ; =0x02253320
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	beq _02235248
	mov r0, #3
	bl ov18_0223E994
	ldr r1, _02235258 ; =0x02253320
	mov r0, #0
	ldr r3, [r1, #0]
	ldrb r2, [r3, #0x29]
	sub r2, r2, #1
	strb r2, [r3, #0x29]
	ldr r3, [r1, #0]
	ldrb r2, [r3, #0x29]
	add r2, r3, r2
	strb r0, [r2, #8]
	ldr r1, [r1, #0]
	ldrb r1, [r1, #0x29]
	cmp r1, #0
	bne _02235148
	bl ov18_0222C1DC
_02235148:
	mov r0, #1
	bl ov18_0222C1F0
	b _02235248
_02235154:
	mov r0, #7
	bl ov18_0223E994
	ldr r1, _02235258 ; =0x02253320
	ldr r0, _0223525C ; =ov18_02235268
	ldr r1, [r1, #0]
	mov r2, #0
	strb r2, [r1, #0x2a]
	bl ov18_0222F6C4
	ldmia sp!, {r4, pc}
_02235178:
	bl ov18_022356F8
	cmp r0, #0
	beq _022351A0
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02235258 ; =0x02253320
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0x2a]
	b _022351B8
_022351A0:
	ldr r0, _02235258 ; =0x02253320
	mov r2, #2
	ldr r1, [r0, #0]
	mov r0, #9
	strb r2, [r1, #0x2a]
	bl ov18_0223E994
_022351B8:
	ldr r0, _02235258 ; =0x02253320
	ldr r1, _02235260 ; =0xC1FFFCFF
	ldr r2, [r0, #0]
	ldr r0, _0223525C ; =ov18_02235268
	ldr r3, [r2, #4]
	ldr r2, [r3, #0]
	and r1, r2, r1
	orr r1, r1, #0x200
	str r1, [r3, #0]
	bl ov18_0222F6C4
	ldmia sp!, {r4, pc}
_022351E4:
	ldr r0, _02235258 ; =0x02253320
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	beq _02235248
	mov r0, #1
	bl ov18_0223E994
	ldr r1, _02235258 ; =0x02253320
	mov r0, #1
	ldr r3, [r1, #0]
	ldrb r2, [r3, #0x29]
	add r2, r3, r2
	strb r4, [r2, #8]
	ldr r2, [r1, #0]
	ldrb r1, [r2, #0x29]
	add r1, r1, #1
	strb r1, [r2, #0x29]
	bl ov18_0222C1DC
	ldr r0, _02235258 ; =0x02253320
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _02235248
	mov r0, #0
	bl ov18_0222C1F0
_02235248:
	bl ov18_02235490
	bl ov18_02235584
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02235254: .word 0x0000E01D
_02235258: .word Unk_ov18_02253320
_0223525C: .word ov18_02235268
_02235260: .word 0xC1FFFCFF
	arm_func_end ov18_022350A4

	arm_func_start ov18_02235264
ov18_02235264: ; 0x02235264
	bx lr
	arm_func_end ov18_02235264

	arm_func_start ov18_02235268
ov18_02235268: ; 0x02235268
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02235280 ; =ov18_02235284
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235280: .word ov18_02235284
	arm_func_end ov18_02235268

	arm_func_start ov18_02235284
ov18_02235284: ; 0x02235284
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222C194
	mov r0, #0x15
	bl ov18_0223E994
	ldr r0, _022352B0 ; =ov18_022352B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022352B0: .word ov18_022352B4
	arm_func_end ov18_02235284

	arm_func_start ov18_022352B4
ov18_022352B4: ; 0x022352B4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r0, _02235378 ; =0x02249230
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	bl ov18_0222C204
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, pc}
	ldr r0, _0223537C ; =0x02253320
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	bne _02235304
	ldr r0, _02235380 ; =ov18_0223538C
	bl ov18_0222F6C4
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
_02235304:
	cmp r0, #2
	bne _02235338
	mov r2, #1
	mov ip, #0
	sub r3, r2, #2
	mov r0, #6
	mov r1, #3
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _02235384 ; =ov18_02235884
	bl ov18_0222F6C4
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
_02235338:
	add r1, sp, #4
	mov r0, #0
	bl ov18_0222F724
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	ldr r1, [sp, #4]
	add r0, sp, #8
	ldr r0, [r0, r1, lsl #2]
	sub r3, r2, #2
	mov r1, #2
	bl ov18_0223FC48
	ldr r0, _02235388 ; =ov18_022355EC
	bl ov18_0222F6C4
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235378: .word Unk_ov18_02249230
_0223537C: .word Unk_ov18_02253320
_02235380: .word ov18_0223538C
_02235384: .word ov18_02235884
_02235388: .word ov18_022355EC
	arm_func_end ov18_022352B4

	arm_func_start ov18_0223538C
ov18_0223538C: ; 0x0223538C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	bl ov18_0222B668
	ldr r0, _02235474 ; =0x02253320
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov18_02245B74
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02235478 ; =0x0224A1A8
	ldr r1, _0223547C ; =0x020C0160
	bl ov18_0222B700
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	add r0, sp, #4
	add r1, sp, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _02235410
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r1, [sp, #4]
	mov r0, #0
	bl ov18_0222F710
	ldr r0, _02235480 ; =ov18_02236BE0
	bl ov18_0222F6C4
	b _02235464
_02235410:
	ldr r0, _02235474 ; =0x02253320
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	mov r0, #0
	bne _02235448
	mov r1, #1
	bl ov18_0222F6D4
	mov r0, #1
	mov r1, #0
	bl ov18_0222F710
	ldr r0, _02235484 ; =ov18_02233818
	bl ov18_0222F6C4
	b _02235464
_02235448:
	mov r1, r0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, #1
	bl ov18_0222F710
	ldr r0, _02235488 ; =ov18_0223C21C
	bl ov18_0222F6C4
_02235464:
	ldr r0, _0223548C ; =0x02253320
	bl ov18_0224508C
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235474: .word Unk_ov18_02253320
_02235478: .word Unk_ov18_0224A1A8
_0223547C: .word 0x020C0160
_02235480: .word ov18_02236BE0
_02235484: .word ov18_02233818
_02235488: .word ov18_0223C21C
_0223548C: .word Unk_ov18_02253320
	arm_func_end ov18_0223538C

	arm_func_start ov18_02235490
ov18_02235490: ; 0x02235490
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	ldr r0, _02235578 ; =0x02253320
	add r5, sp, #0x14
	mov r1, #0
	strh r1, [r5, #2]
	mov r4, #0x20
	strh r1, [r5, #4]
	mov r3, #0xe
	strh r1, [r5, #6]
	mov r2, #0x10
	ldr r0, [r0, #0]
	strh r1, [r5]
	strh r4, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	ldr r0, [r0, #0]
	bl ov18_02244B5C
	mov sl, #0
	ldr r7, _0223557C ; =0x0000E01D
	ldr r6, _02235580 ; =0x0224924C
	mov sb, sl
	strh sl, [sp, #0x12]
	mov r8, #0x31
	mov r5, #2
	mov r4, #0x480
	add fp, sp, #0x10
_022354FC:
	ldr r0, _02235578 ; =0x02253320
	cmp sl, #0x10
	ldr r0, [r0, #0]
	moveq sb, #0
	streqh r8, [sp, #0x16]
	add r1, r0, sl
	ldrb r1, [r1, #8]
	ldrb r2, [r6, sb]
	cmp r1, #0x20
	streqh r7, [sp, #0x10]
	strneh r1, [sp, #0x10]
	ldrh r1, [sp, #0x1a]
	strh r2, [sp, #0x14]
	stmia sp, {r1, r5}
	str r4, [sp, #8]
	str fp, [sp, #0xc]
	ldrh r1, [sp, #0x14]
	ldrh r2, [sp, #0x16]
	ldrh r3, [sp, #0x18]
	ldr r0, [r0, #0]
	bl ov18_02244A9C
	add sl, sl, #1
	cmp sl, #0x20
	add sb, sb, #1
	blt _022354FC
	ldr r0, _02235578 ; =0x02253320
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov18_02244C08
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02235578: .word Unk_ov18_02253320
_0223557C: .word 0x0000E01D
_02235580: .word Unk_ov18_0224924C
	arm_func_end ov18_02235490

	arm_func_start ov18_02235584
ov18_02235584: ; 0x02235584
	stmfd sp!, {r3, lr}
	ldr r0, _022355DC ; =0x02253320
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x29]
	ldr ip, [r1, #4]
	ldr r1, _022355E0 ; =0x02249248
	cmp r0, #0x20
	and r2, r0, #0xf
	mov lr, r0, asr #4
	movhs lr, #1
	ldr r0, _022355E4 ; =0x0224924C
	movhs r2, #0xf
	ldrb r3, [r0, r2]
	ldr r2, [ip]
	ldr r0, _022355E8 ; =0xFE00FF00
	ldrb r1, [r1, lr]
	and r0, r2, r0
	mov r2, r3, lsl #0x17
	orr r0, r0, r1
	orr r0, r0, r2, lsr #7
	str r0, [ip]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022355DC: .word Unk_ov18_02253320
_022355E0: .word Unk_ov18_02249248
_022355E4: .word Unk_ov18_0224924C
_022355E8: .word 0xFE00FF00
	arm_func_end ov18_02235584

	arm_func_start ov18_022355EC
ov18_022355EC: ; 0x022355EC
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	ldr r1, _02235640 ; =0x02253320
	ldr r2, [r1, #0]
	strb r0, [r2, #0x2a]
	ldr r0, [r1, #0]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	beq _0223561C
	cmp r0, #1
	beq _02235628
	ldmia sp!, {r3, pc}
_0223561C:
	mov r0, #7
	bl ov18_0223E994
	b _02235630
_02235628:
	mov r0, #0xe
	bl ov18_0223E994
_02235630:
	bl ov18_0223FF74
	ldr r0, _02235644 ; =ov18_02235648
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235640: .word Unk_ov18_02253320
_02235644: .word ov18_02235648
	arm_func_end ov18_022355EC

	arm_func_start ov18_02235648
ov18_02235648: ; 0x02235648
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _022356E4 ; =0x02249230
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r1, [sp, #4]
	str r0, [sp, #8]
	bl ov18_0223FFCC
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {pc}
	ldr r0, _022356E8 ; =0x02253320
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x2a]
	cmp r0, #0
	bne _022356AC
	ldr r3, [r1, #4]
	ldr r1, _022356EC ; =0xC1FFFCFF
	ldr r2, [r3, #0]
	ldr r0, _022356F0 ; =ov18_02234FF8
	and r1, r2, r1
	str r1, [r3, #0]
	bl ov18_0222F6C4
	add sp, sp, #0xc
	ldmia sp!, {pc}
_022356AC:
	add r0, sp, #0
	mov r1, #0
	bl ov18_0222F724
	ldr r0, _022356E8 ; =0x02253320
	ldr r2, [sp]
	add r1, sp, #4
	ldr r0, [r0, #0]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, #8
	blx r1
	ldr r0, _022356F4 ; =ov18_0223538C
	bl ov18_0222F6C4
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_022356E4: .word Unk_ov18_02249230
_022356E8: .word Unk_ov18_02253320
_022356EC: .word 0xC1FFFCFF
_022356F0: .word ov18_02234FF8
_022356F4: .word ov18_0223538C
	arm_func_end ov18_02235648

	arm_func_start ov18_022356F8
ov18_022356F8: ; 0x022356F8
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #4
	add r1, sp, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #1
	bne _02235728
	mov r0, #0x35
	sub r1, r0, #0x36
	mov r2, #0
	bl ov18_0222B594
_02235728:
	add r0, sp, #4
	add r1, sp, #0
	bl ov18_0222F724
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02235760
	ldr r0, _02235880 ; =0x02253320
	add sp, sp, #8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
_02235760:
	ldr r0, [sp]
	cmp r0, #1
	bne _02235788
	ldr r0, _02235880 ; =0x02253320
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_02235788:
	ldr r0, _02235880 ; =0x02253320
	mov r1, #0x20
	ldr r0, [r0, #0]
	add r0, r0, #8
	bl ov18_02245E50
	cmp r0, #0x10
	bgt _022357DC
	cmp r0, #0xa
	blt _022357C0
	beq _02235804
	cmp r0, #0xd
	cmpne r0, #0x10
	beq _022357F8
	b _02235874
_022357C0:
	cmp r0, #0
	bgt _022357D0
	beq _022357F8
	b _02235874
_022357D0:
	cmp r0, #5
	beq _022357F8
	b _02235874
_022357DC:
	cmp r0, #0x1a
	bgt _022357EC
	beq _02235804
	b _02235874
_022357EC:
	cmp r0, #0x20
	beq _02235804
	b _02235874
_022357F8:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r3, pc}
_02235804:
	cmp r0, #0
	mov r2, #0
	ble _02235868
	ldr r1, _02235880 ; =0x02253320
	ldr r3, [r1, #0]
_02235818:
	ldrb r1, [r3, #8]
	cmp r1, #0x30
	blo _0223582C
	cmp r1, #0x39
	bls _02235858
_0223582C:
	cmp r1, #0x41
	blo _0223583C
	cmp r1, #0x46
	bls _02235858
_0223583C:
	cmp r1, #0x61
	blo _0223584C
	cmp r1, #0x66
	bls _02235858
_0223584C:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, pc}
_02235858:
	add r2, r2, #1
	cmp r2, r0
	add r3, r3, #1
	blt _02235818
_02235868:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r3, pc}
_02235874:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235880: .word Unk_ov18_02253320
	arm_func_end ov18_022356F8

	arm_func_start ov18_02235884
ov18_02235884: ; 0x02235884
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _022358AC ; =ov18_022358B0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022358AC: .word ov18_022358B0
	arm_func_end ov18_02235884

	arm_func_start ov18_022358B0
ov18_022358B0: ; 0x022358B0
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _022358E8 ; =0x02253320
	ldr r1, _022358EC ; =0xC1FFFCFF
	ldr r2, [r0, #0]
	ldr r0, _022358F0 ; =ov18_02234FF8
	ldr r3, [r2, #4]
	ldr r2, [r3, #0]
	and r1, r2, r1
	str r1, [r3, #0]
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022358E8: .word Unk_ov18_02253320
_022358EC: .word 0xC1FFFCFF
_022358F0: .word ov18_02234FF8
	arm_func_end ov18_022358B0

	.rodata


	.global Unk_ov18_02249230
Unk_ov18_02249230: ; 0x02249230
	.incbin "incbin/overlay18_rodata.bin", 0x2DFC, 0x2DFE - 0x2DFC

	.global Unk_ov18_02249232
Unk_ov18_02249232: ; 0x02249232
	.incbin "incbin/overlay18_rodata.bin", 0x2DFE, 0x2E04 - 0x2DFE

	.global Unk_ov18_02249238
Unk_ov18_02249238: ; 0x02249238
	.incbin "incbin/overlay18_rodata.bin", 0x2E04, 0x2E0C - 0x2E04

	.global Unk_ov18_02249240
Unk_ov18_02249240: ; 0x02249240
	.incbin "incbin/overlay18_rodata.bin", 0x2E0C, 0x2E14 - 0x2E0C

	.global Unk_ov18_02249248
Unk_ov18_02249248: ; 0x02249248
	.incbin "incbin/overlay18_rodata.bin", 0x2E14, 0x2E18 - 0x2E14

	.global Unk_ov18_0224924C
Unk_ov18_0224924C: ; 0x0224924C
	.incbin "incbin/overlay18_rodata.bin", 0x2E18, 0x10



	.data


	.global Unk_ov18_0224A150
Unk_ov18_0224A150: ; 0x0224A150
	.incbin "incbin/overlay18_data.bin", 0x9F0, 0xA04 - 0x9F0

	.global Unk_ov18_0224A164
Unk_ov18_0224A164: ; 0x0224A164
	.incbin "incbin/overlay18_data.bin", 0xA04, 0xA1C - 0xA04

	.global Unk_ov18_0224A17C
Unk_ov18_0224A17C: ; 0x0224A17C
	.incbin "incbin/overlay18_data.bin", 0xA1C, 0xA34 - 0xA1C

	.global Unk_ov18_0224A194
Unk_ov18_0224A194: ; 0x0224A194
	.incbin "incbin/overlay18_data.bin", 0xA34, 0xA48 - 0xA34

	.global Unk_ov18_0224A1A8
Unk_ov18_0224A1A8: ; 0x0224A1A8
	.incbin "incbin/overlay18_data.bin", 0xA48, 0x15



	.bss


	.global Unk_ov18_02253320
Unk_ov18_02253320: ; 0x02253320
	.space 0x4

