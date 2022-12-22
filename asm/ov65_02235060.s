	.include "macros/function.inc"
	.include "include/ov65_02235060.inc"

	

	.text


	thumb_func_start ov65_02235060
ov65_02235060: ; 0x02235060
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _02235120 ; =0x000006FC
	mov r1, #0
	add r5, r0, #0
	str r3, [sp]
	bl memset
	ldr r0, [sp, #0x24]
	str r4, [r5, #4]
	sub r0, r0, #1
	lsr r7, r0, #3
	ldr r0, [sp]
	add r2, r6, #0
	str r0, [r5, #0x10]
	add r0, r5, #0
	ldr r1, [r5, #4]
	add r0, #0x14
	bl ov65_0223587C
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl ov65_02235918
	add r0, r7, #0
	bl ov65_02236474
	add r2, sp, #4
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	strh r0, [r2, #4]
	ldrh r1, [r2, #2]
	strh r1, [r2, #6]
	ldrh r0, [r2, #4]
	add r2, r4, #0
	bl ov63_0222BCE8
	ldr r1, _02235124 ; =0x000006E4
	str r0, [r5, r1]
	add r0, r7, #0
	bl ov65_02236480
	add r1, r0, #0
	ldr r0, _02235124 ; =0x000006E4
	ldr r0, [r5, r0]
	bl ov63_0222BD50
	mov r0, #0x30
	add r1, r4, #0
	bl ov63_0222BE18
	ldr r1, _02235128 ; =0x000006E8
	add r2, r4, #0
	str r0, [r5, r1]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov65_022357E8
	mov r0, #0x6f
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov63_0222D19C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov65_0223582C
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_02235920
	mov r1, #0x6d
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl ov65_022362B0
	mov r0, #0x80
	add r1, r4, #0
	bl ov63_0222D848
	ldr r1, _0223512C ; =0x000006F8
	str r0, [r5, r1]
	mov r0, #1
	str r0, [r5, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02235120: .word 0x000006FC
_02235124: .word 0x000006E4
_02235128: .word 0x000006E8
_0223512C: .word 0x000006F8
	thumb_func_end ov65_02235060

	thumb_func_start ov65_02235130
ov65_02235130: ; 0x02235130
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02235184 ; =0x000006F8
	ldr r0, [r4, r0]
	bl ov63_0222D880
	add r0, r4, #0
	bl ov65_0223586C
	mov r1, #0x6d
	lsl r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov65_022362EC
	add r0, r4, #0
	bl ov65_0223560C
	add r0, r4, #0
	bl ov65_0223581C
	ldr r0, _02235188 ; =0x000006E8
	ldr r0, [r4, r0]
	bl ov63_0222BE58
	ldr r0, _0223518C ; =0x000006E4
	ldr r0, [r4, r0]
	bl ov63_0222BD30
	add r0, r4, #0
	add r0, #0x14
	bl ov65_022358CC
	ldr r0, [r4, #0x10]
	bl ov65_0223591C
	ldr r2, _02235190 ; =0x000006FC
	add r0, r4, #0
	mov r1, #0
	bl memset
	pop {r4, pc}
	; .align 2, 0
_02235184: .word 0x000006F8
_02235188: .word 0x000006E8
_0223518C: .word 0x000006E4
_02235190: .word 0x000006FC
	thumb_func_end ov65_02235130

	thumb_func_start ov65_02235194
ov65_02235194: ; 0x02235194
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov65_02235194

	thumb_func_start ov65_02235198
ov65_02235198: ; 0x02235198
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02235234 ; =0x000006E8
	ldr r0, [r4, r0]
	bl ov63_0222BE84
	add r0, r4, #0
	bl ov65_0223573C
	add r0, r4, #0
	bl ov65_022356E8
	mov r1, #0x6f
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0x24
	ldr r1, [r4, r1]
	ldr r1, [r1, #0]
	bl ov63_0222D160
	ldr r1, _02235238 ; =0x000006F4
	ldr r0, [r4, r1]
	sub r1, r1, #4
	add r1, r4, r1
	bl ov63_0222D228
	ldr r0, _0223523C ; =0x000006EC
	ldr r0, [r4, r0]
	bl ov63_0222CEE4
	add r0, r4, #0
	bl ov65_02235778
	add r0, r4, #0
	bl ov65_02235B78
	add r0, r4, #0
	bl ov65_02235634
	cmp r0, #1
	bne _0223522E
	add r0, r4, #0
	bl ov65_02235BE8
	cmp r0, #1
	bne _02235208
	add r0, r4, #0
	bl ov65_02235B30
	ldr r0, _02235240 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #0x80
	tst r0, r1
	beq _02235208
	mov r0, #1
	pop {r4, pc}
_02235208:
	ldr r0, _02235240 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223522E
	add r0, r4, #0
	bl ov65_02235254
	cmp r0, #0
	beq _02235220
	mov r0, #2
	pop {r4, pc}
_02235220:
	add r0, r4, #0
	bl ov65_02235654
	cmp r0, #1
	bne _0223522E
	mov r0, #3
	pop {r4, pc}
_0223522E:
	mov r0, #0
	pop {r4, pc}
	nop
_02235234: .word 0x000006E8
_02235238: .word 0x000006F4
_0223523C: .word 0x000006EC
_02235240: .word 0x021BF67C
	thumb_func_end ov65_02235198

	thumb_func_start ov65_02235244
ov65_02235244: ; 0x02235244
	push {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02235252
	ldr r0, [r0, #0x14]
	bl sub_020219F8
_02235252:
	pop {r3, pc}
	thumb_func_end ov65_02235244

	thumb_func_start ov65_02235254
ov65_02235254: ; 0x02235254
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223526C ; =0x000006CC
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235264
	bl GF_AssertFail
_02235264:
	ldr r0, _0223526C ; =0x000006CC
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0xa]
	pop {r4, pc}
	; .align 2, 0
_0223526C: .word 0x000006CC
	thumb_func_end ov65_02235254

	thumb_func_start ov65_02235270
ov65_02235270: ; 0x02235270
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _022352C4 ; =0x000006CC
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235282
	bl GF_AssertFail
_02235282:
	ldr r0, _022352C4 ; =0x000006CC
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl ov63_0222C0E4
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r3, [r2, r1]
	ldr r0, _022352C8 ; =0x000006E4
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #6
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	ldr r0, [r4, r0]
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov63_0222BDE4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_022352C4: .word 0x000006CC
_022352C8: .word 0x000006E4
	thumb_func_end ov65_02235270

	thumb_func_start ov65_022352CC
ov65_022352CC: ; 0x022352CC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02235324 ; =0x000006CC
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022352DE
	bl GF_AssertFail
_022352DE:
	ldr r0, _02235324 ; =0x000006CC
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl ov63_0222C0E4
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r3, [r2, r1]
	ldr r0, _02235328 ; =0x000006E4
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #6
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	ldr r0, [r4, r0]
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	asr r2, r2, #4
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov63_0222BDE4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02235324: .word 0x000006CC
_02235328: .word 0x000006E4
	thumb_func_end ov65_022352CC

	thumb_func_start ov65_0223532C
ov65_0223532C: ; 0x0223532C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, [r5, #4]
	bl ov63_0222D014
	add r2, r0, #0
	add r1, sp, #0
	add r0, r4, #0
	mov r4, sp
	ldrh r3, [r1, #4]
	sub r4, r4, #4
	sub r2, r2, #2
	strh r3, [r4]
	ldrh r1, [r1, #6]
	strh r1, [r4, #2]
	ldr r1, [r4, #0]
	bl ov65_02235B88
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0223532C

	thumb_func_start ov65_02235370
ov65_02235370: ; 0x02235370
	ldr r3, _02235374 ; =ov65_02235BD8
	bx r3
	; .align 2, 0
_02235374: .word ov65_02235BD8
	thumb_func_end ov65_02235370

	thumb_func_start ov65_02235378
ov65_02235378: ; 0x02235378
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov65_02235378

	thumb_func_start ov65_0223537C
ov65_0223537C: ; 0x0223537C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov65_0223537C

	thumb_func_start ov65_02235380
ov65_02235380: ; 0x02235380
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	bl ov65_02235D7C
	add r4, r0, #0
	ldr r0, _022353E4 ; =0x000006CC
	add r1, sp, #0xc
	str r4, [r5, r0]
	add r0, r5, #0
	bl ov65_02235D08
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	str r3, [sp, #8]
	bl ov65_02235DE4
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02235E48
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov65_02235DAC
	mov r1, #0x6f
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x24
	ldr r1, [r5, r1]
	ldr r1, [r1, #0]
	bl ov63_0222D160
	ldr r1, _022353E8 ; =0x000006F4
	ldr r0, [r5, r1]
	sub r1, r1, #4
	add r1, r5, r1
	bl ov63_0222D228
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022353E4: .word 0x000006CC
_022353E8: .word 0x000006F4
	thumb_func_end ov65_02235380

	thumb_func_start ov65_022353EC
ov65_022353EC: ; 0x022353EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r2, #0
	add r7, r1, #0
	bl ov65_02235D7C
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x14
	sub r2, r6, #1
	bl ov65_02235C64
	ldr r0, _02235474 ; =0x000006CC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02235442
	ldr r0, [r0, #0]
	bl ov63_0222C0E4
	add r1, sp, #0xc
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r2, #8
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	ldrsh r2, [r1, r2]
	cmp r0, r2
	bne _02235442
	mov r0, #6
	mov r2, #0xa
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bne _02235442
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02235442:
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x14
	add r3, r6, #0
	bl ov65_02235DE4
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02235E68
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov65_02235DAC
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02235474: .word 0x000006CC
	thumb_func_end ov65_022353EC

	thumb_func_start ov65_02235478
ov65_02235478: ; 0x02235478
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #6
	bl ov63_0222BF90
	ldr r0, _022354B0 ; =ov65_022361B0
	mov r1, #0
	str r0, [r4, #0x10]
	ldr r0, _022354B4 ; =ov65_02235EF8
	str r0, [r4, #0x18]
	mov r0, #2
	strh r0, [r4, #0xc]
	strh r1, [r4, #8]
	ldr r0, [r4, #4]
	bl ov63_0222CFA4
	ldr r0, [r4, #4]
	bl ov63_0222CFA8
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	bl ov65_02236250
	pop {r3, r4, r5, pc}
	nop
_022354B0: .word ov65_022361B0
_022354B4: .word ov65_02235EF8
	thumb_func_end ov65_02235478

	thumb_func_start ov65_022354B8
ov65_022354B8: ; 0x022354B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov63_0222CECC
	ldr r0, [r4, #0]
	bl ov63_0222BF08
	mov r1, #0x1c
	mov r0, #0
_022354CC:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _022354CC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_022354B8

	thumb_func_start ov65_022354D8
ov65_022354D8: ; 0x022354D8
	push {r3, lr}
	ldr r0, [r0, #0]
	mov r1, #4
	bl ov63_0222BF90
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ov65_022354D8

	thumb_func_start ov65_022354E8
ov65_022354E8: ; 0x022354E8
	push {r3, lr}
	ldr r0, [r0, #0]
	mov r1, #6
	bl ov63_0222BF90
	bl ov63_0222C0AC
	pop {r3, pc}
	thumb_func_end ov65_022354E8

	thumb_func_start ov65_022354F8
ov65_022354F8: ; 0x022354F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r2, #0
	str r0, [r5, #0x14]
	ldr r0, _02235568 ; =ov65_0223622C
	mov r1, #4
	str r0, [r5, #0x10]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	mov r0, #5
	strh r0, [r5, #0xc]
	ldr r0, [r5, #0]
	bl ov63_0222BF90
	add r3, r0, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl ov65_02236230
	ldr r0, [r5, #4]
	mov r1, #0
	bl ov63_0222CFA4
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov63_0222D020
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov63_0222BF90
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov63_0222BF90
	add r1, sp, #0
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r5, #4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222CFE0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02235568: .word ov65_0223622C
	thumb_func_end ov65_022354F8

	thumb_func_start ov65_0223556C
ov65_0223556C: ; 0x0223556C
	push {r3, lr}
	cmp r1, #0
	beq _0223558A
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0223558A
	str r0, [r1, #0x10]
	mov r0, #0
	str r0, [r1, #0x14]
	ldrh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	ldr r0, [r1, #4]
	mov r1, #1
	bl ov63_0222CFA4
_0223558A:
	pop {r3, pc}
	thumb_func_end ov65_0223556C

	thumb_func_start ov65_0223558C
ov65_0223558C: ; 0x0223558C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl ov65_02236278
	cmp r0, #0
	bne _022355A2
	strb r4, [r5, #0xb]
	pop {r4, r5, r6, pc}
_022355A2:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov65_0223628C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_0223558C

	thumb_func_start ov65_022355B0
ov65_022355B0: ; 0x022355B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov65_02235654
	cmp r0, #1
	bne _022355E6
	add r0, r5, #0
	bl ov65_022352CC
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	sub r0, r0, #3
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	bmi _022355D2
	cmp r4, #4
	blt _022355D6
_022355D2:
	bl GF_AssertFail
_022355D6:
	mov r0, #0x6d
	lsl r0, r0, #4
	lsl r1, r4, #0x18
	add r0, r5, r0
	lsr r1, r1, #0x18
	bl ov65_02236440
	pop {r3, r4, r5, pc}
_022355E6:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022355B0

	thumb_func_start ov65_022355EC
ov65_022355EC: ; 0x022355EC
	mov r1, #0x6d
	lsl r1, r1, #4
	ldr r3, _022355F8 ; =ov65_02236464
	add r0, r0, r1
	bx r3
	nop
_022355F8: .word ov65_02236464
	thumb_func_end ov65_022355EC

	thumb_func_start ov65_022355FC
ov65_022355FC: ; 0x022355FC
	mov r1, #0x6d
	lsl r1, r1, #4
	ldr r3, _02235608 ; =ov65_02236304
	add r1, r0, r1
	bx r3
	nop
_02235608: .word ov65_02236304
	thumb_func_end ov65_022355FC

	thumb_func_start ov65_0223560C
ov65_0223560C: ; 0x0223560C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x63
	lsl r0, r0, #2
	mov r6, #0
	add r4, r5, r0
	add r7, r0, #0
_0223561A:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02235626
	add r0, r4, #0
	bl ov65_022354B8
_02235626:
	add r6, r6, #1
	add r5, #0x1c
	add r4, #0x1c
	cmp r6, #0x30
	blt _0223561A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_0223560C

	thumb_func_start ov65_02235634
ov65_02235634: ; 0x02235634
	push {r3, lr}
	ldr r1, _02235650 ; =0x000006CC
	ldr r0, [r0, r1]
	mov r1, #5
	ldr r0, [r0, #0]
	bl ov63_0222BF90
	cmp r0, #0
	bne _0223564A
	mov r0, #1
	pop {r3, pc}
_0223564A:
	mov r0, #0
	pop {r3, pc}
	nop
_02235650: .word 0x000006CC
	thumb_func_end ov65_02235634

	thumb_func_start ov65_02235654
ov65_02235654: ; 0x02235654
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _022356E0 ; =0x000006CC
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, _022356E0 ; =0x000006CC
	mov r1, #6
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl ov63_0222BF90
	add r4, r0, #0
	add r0, sp, #0
	mov r2, sp
	ldrh r1, [r0, #0xc]
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #0xe]
	add r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C078
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #8
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r3, [r2, r1]
	ldr r0, _022356E4 ; =0x000006E4
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #0xa
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	ldr r0, [r5, r0]
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov63_0222BDE4
	cmp r4, #0
	bne _022356DA
	cmp r0, #2
	bne _022356DA
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_022356DA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022356E0: .word 0x000006CC
_022356E4: .word 0x000006E4
	thumb_func_end ov65_02235654

	thumb_func_start ov65_022356E8
ov65_022356E8: ; 0x022356E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02235730 ; =0x000006F8
	add r1, sp, #8
	ldr r0, [r5, r0]
	bl ov63_0222D8D0
	cmp r0, #1
	bne _0223572C
	ldr r7, _02235734 ; =0x000006E8
	add r6, sp, #0
	add r4, sp, #8
_02235702:
	ldr r0, _02235738 ; =0x000006E4
	ldr r1, [r5, r7]
	ldr r0, [r5, r0]
	add r2, r4, #0
	add r3, r6, #0
	bl ov63_0222CA88
	cmp r0, #1
	bne _0223571E
	ldr r0, _02235734 ; =0x000006E8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl ov63_0222BE70
_0223571E:
	ldr r0, _02235730 ; =0x000006F8
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov63_0222D8D0
	cmp r0, #1
	beq _02235702
_0223572C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02235730: .word 0x000006F8
_02235734: .word 0x000006E8
_02235738: .word 0x000006E4
	thumb_func_end ov65_022356E8

	thumb_func_start ov65_0223573C
ov65_0223573C: ; 0x0223573C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x63
	lsl r0, r0, #2
	mov r6, #0
	add r4, r7, #0
	add r5, r7, r0
_0223574A:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223576A
	mov r2, #0x67
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r7, #0
	add r1, r5, #0
	blx r2
	cmp r0, #1
	bne _0223576A
	add r0, r5, #0
	bl ov65_022354B8
_0223576A:
	add r6, r6, #1
	add r4, #0x1c
	add r5, #0x1c
	cmp r6, #0x30
	blt _0223574A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_0223573C

	thumb_func_start ov65_02235778
ov65_02235778: ; 0x02235778
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x63
	lsl r0, r0, #2
	mov r6, #0
	add r4, r7, #0
	add r5, r7, r0
_02235786:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223579C
	mov r2, #0x69
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r7, #0
	add r1, r5, #0
	blx r2
_0223579C:
	add r6, r6, #1
	add r4, #0x1c
	add r5, #0x1c
	cmp r6, #0x30
	blt _02235786
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02235778

	thumb_func_start ov65_022357A8
ov65_022357A8: ; 0x022357A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	ldr r1, _022357E4 ; =0x000006E8
	ldr r1, [r4, r1]
	bl ov63_0222C1C4
	cmp r0, #0
	beq _022357DE
	mov r2, #0x63
	mov r1, #0
	add r5, r4, #0
	lsl r2, r2, #2
_022357C2:
	ldr r3, [r5, r2]
	cmp r3, r0
	bne _022357D6
	mov r0, #0x63
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, pc}
_022357D6:
	add r1, r1, #1
	add r5, #0x1c
	cmp r1, #0x30
	blt _022357C2
_022357DE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022357E4: .word 0x000006E8
	thumb_func_end ov65_022357A8

	thumb_func_start ov65_022357E8
ov65_022357E8: ; 0x022357E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r3, r1, #0
	mov r1, #0
	add r5, r0, #0
	add r4, r2, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r2, #0x30
	bl ov63_0222CD2C
	ldr r1, _02235818 ; =0x000006EC
	add r2, r4, #0
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #2
	bl ov63_0222CE30
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02235818: .word 0x000006EC
	thumb_func_end ov65_022357E8

	thumb_func_start ov65_0223581C
ov65_0223581C: ; 0x0223581C
	ldr r1, _02235824 ; =0x000006EC
	ldr r3, _02235828 ; =ov63_0222CD9C
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_02235824: .word 0x000006EC
_02235828: .word ov63_0222CD9C
	thumb_func_end ov65_0223581C

	thumb_func_start ov65_0223582C
ov65_0223582C: ; 0x0223582C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, _02235864 ; =0x02238BCC
	add r4, r1, #0
	add r5, r0, #0
	add r2, sp, #0
	mov r1, #0xb
_0223583A:
	ldrb r0, [r6]
	add r6, r6, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0223583A
	add r0, sp, #0
	ldrb r1, [r0, #9]
	add r2, sp, #0
	add r1, r1, r3
	strb r1, [r0, #9]
	add r0, r5, #0
	ldr r1, [r5, #0x10]
	add r0, #0x18
	add r3, r4, #0
	bl ov63_0222D1C0
	ldr r1, _02235868 ; =0x000006F4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02235864: .word 0x02238BCC
_02235868: .word 0x000006F4
	thumb_func_end ov65_0223582C

	thumb_func_start ov65_0223586C
ov65_0223586C: ; 0x0223586C
	ldr r1, _02235874 ; =0x000006F4
	ldr r3, _02235878 ; =ov63_0222D214
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_02235874: .word 0x000006F4
_02235878: .word ov63_0222D214
	thumb_func_end ov65_0223586C

	thumb_func_start ov65_0223587C
ov65_0223587C: ; 0x0223587C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	str r2, [sp]
	mov r0, #0x60
	add r1, r7, #4
	add r2, r6, #0
	bl sub_020095C4
	mov r2, #0x32
	str r0, [r7, #0]
	add r0, r7, #4
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	mov r4, #0
	add r5, r7, #0
_022358A0:
	mov r0, #0x10
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022358A0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl ov65_022358F8
	add r0, r7, #0
	add r1, r6, #0
	bl ov65_02235908
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0223587C

	thumb_func_start ov65_022358CC
ov65_022358CC: ; 0x022358CC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ov65_02235910
	add r0, r7, #0
	bl ov65_02235900
	mov r6, #0x4b
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_022358E2:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022358E2
	ldr r0, [r7, #0]
	bl sub_02021964
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_022358CC

	thumb_func_start ov65_022358F8
ov65_022358F8: ; 0x022358F8
	ldr r3, _022358FC ; =ov65_02235960
	bx r3
	; .align 2, 0
_022358FC: .word ov65_02235960
	thumb_func_end ov65_022358F8

	thumb_func_start ov65_02235900
ov65_02235900: ; 0x02235900
	ldr r3, _02235904 ; =ov65_02235A60
	bx r3
	; .align 2, 0
_02235904: .word ov65_02235A60
	thumb_func_end ov65_02235900

	thumb_func_start ov65_02235908
ov65_02235908: ; 0x02235908
	ldr r3, _0223590C ; =ov65_02235A94
	bx r3
	; .align 2, 0
_0223590C: .word ov65_02235A94
	thumb_func_end ov65_02235908

	thumb_func_start ov65_02235910
ov65_02235910: ; 0x02235910
	ldr r3, _02235914 ; =ov65_02235B14
	bx r3
	; .align 2, 0
_02235914: .word ov65_02235B14
	thumb_func_end ov65_02235910

	thumb_func_start ov65_02235918
ov65_02235918: ; 0x02235918
	bx lr
	; .align 2, 0
	thumb_func_end ov65_02235918

	thumb_func_start ov65_0223591C
ov65_0223591C: ; 0x0223591C
	bx lr
	; .align 2, 0
	thumb_func_end ov65_0223591C

	thumb_func_start ov65_02235920
ov65_02235920: ; 0x02235920
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #1
	add r4, r2, #0
	lsl r0, r0, #8
	mov r2, #0
	add r5, r1, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x1e
	add r3, r2, #0
	str r5, [sp, #4]
	bl sub_02007130
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	mov r1, #0x1d
	add r2, r6, #0
	str r5, [sp, #0xc]
	bl sub_020070E8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02235920

	thumb_func_start ov65_02235960
ov65_02235960: ; 0x02235960
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	mov r1, #0x32
	add r5, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r6, r2, #0
	str r4, [sp, #8]
	add r1, #0xfa
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #0x25
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x32
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r1, #0xfe
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #0x24
	mov r3, #0
	bl sub_02009B04
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x32
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r4, [sp, #8]
	sub r1, #0xc
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #0x26
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x32
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	sub r1, #0xc
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #0x27
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_0200A3DC
	cmp r0, #1
	beq _022359F4
	bl GF_AssertFail
_022359F4:
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_0200A640
	cmp r0, #1
	beq _02235A06
	bl GF_AssertFail
_02235A06:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009D4C
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02009D4C
	mov r1, #0x32
	add r0, r1, #0
	str r1, [sp]
	sub r0, #0x33
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0x4d
	str r0, [sp, #0xc]
	mov r2, #2
	str r2, [sp, #0x10]
	add r2, r1, #0
	add r2, #0xfa
	ldr r2, [r5, r2]
	lsl r3, r3, #2
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xfe
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	ldr r2, [r5, r3]
	str r2, [sp, #0x1c]
	add r2, r3, #4
	ldr r2, [r5, r2]
	add r3, #0x18
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov65_02235960

	thumb_func_start ov65_02235A60
ov65_02235A60: ; 0x02235A60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r7, #0x4b
	lsl r7, r7, #2
	add r6, r7, #0
	mov r4, #0
	add r6, #0x10
_02235A82:
	ldr r0, [r5, r7]
	ldr r1, [r5, r6]
	bl sub_02009D68
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02235A82
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02235A60

	thumb_func_start ov65_02235A94
ov65_02235A94: ; 0x02235A94
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r0, #0
	add r2, sp, #0
	mov r0, #0
	add r3, r1, #0
	add r5, r2, #0
	add r1, r0, #0
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r1, [r4, #0]
	str r1, [sp]
	mov r1, #0x53
	lsl r1, r1, #2
	add r1, r4, r1
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #0x28]
	lsl r1, r1, #0xc
	str r0, [sp, #0x24]
	add r0, r2, #0
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r3, [sp, #0x2c]
	bl sub_02021AA0
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021D6C
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02235A94

	thumb_func_start ov65_02235B14
ov65_02235B14: ; 0x02235B14
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021BD4
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02235B14

	thumb_func_start ov65_02235B30
ov65_02235B30: ; 0x02235B30
	push {r4, lr}
	sub sp, #0x10
	add r1, sp, #0
	add r4, r0, #0
	bl ov65_02235D08
	add r2, sp, #0
	mov r0, #0
	ldrsh r1, [r2, r0]
	add r1, #8
	strh r1, [r2]
	mov r1, #2
	ldrsh r3, [r2, r1]
	add r3, #0x20
	strh r3, [r2, #2]
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldrsh r0, [r2, r1]
	add r1, sp, #4
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021C50
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02235B30

	thumb_func_start ov65_02235B78
ov65_02235B78: ; 0x02235B78
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _02235B84 ; =sub_02021CAC
	mov r1, #0
	bx r3
	; .align 2, 0
_02235B84: .word sub_02021CAC
	thumb_func_end ov65_02235B78

	thumb_func_start ov65_02235B88
ov65_02235B88: ; 0x02235B88
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r1, sp, #0x18
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r4, r2, #0
	add r0, #8
	lsl r0, r0, #0x10
	asr r0, r0, #4
	str r0, [sp]
	mov r0, #6
	ldrsh r0, [r1, r0]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021C50
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021F58
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov65_02235B88

	thumb_func_start ov65_02235BD8
ov65_02235BD8: ; 0x02235BD8
	mov r1, #0x62
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _02235BE4 ; =sub_02021CAC
	mov r1, #0
	bx r3
	; .align 2, 0
_02235BE4: .word sub_02021CAC
	thumb_func_end ov65_02235BD8

	thumb_func_start ov65_02235BE8
ov65_02235BE8: ; 0x02235BE8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02235C5C ; =0x000006CC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02235BFC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02235BFC:
	ldr r0, [r0, #0]
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _02235C5C ; =0x000006CC
	mov r1, #6
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl ov63_0222BF90
	add r4, r0, #0
	ldr r0, _02235C60 ; =0x000006E4
	add r2, sp, #0
	mov r1, #4
	ldrsh r3, [r2, r1]
	ldr r0, [r5, r0]
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #6
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x10
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x10
	bl ov63_0222BDE4
	cmp r0, #0xf
	bne _02235C54
	cmp r4, #1
	bne _02235C54
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_02235C54:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02235C5C: .word 0x000006CC
_02235C60: .word 0x000006E4
	thumb_func_end ov65_02235BE8

	thumb_func_start ov65_02235C64
ov65_02235C64: ; 0x02235C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #7
	add r4, r2, #0
	and r4, r0
	ldr r0, _02235D04 ; =0x000006E4
	str r1, [sp]
	ldr r0, [r5, r0]
	lsr r7, r2, #3
	bl ov63_0222BD48
	add r6, r0, #0
	ldr r0, _02235D04 ; =0x000006E4
	ldr r0, [r5, r0]
	bl ov63_0222BD4C
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bls _02235CFC
	add r0, r7, #3
	str r0, [sp, #0x14]
	add r0, r4, #7
	str r0, [sp, #0xc]
_02235C9A:
	mov r4, #0
	cmp r6, #0
	bls _02235CF0
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_02235CB0:
	ldr r0, _02235D04 ; =0x000006E4
	lsl r1, r4, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl ov63_0222BDE4
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _02235CEA
	ldr r0, _02235D04 ; =0x000006E4
	lsl r1, r4, #0x10
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	lsr r1, r1, #0x10
	bl ov63_0222BDE4
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _02235CEA
	ldr r0, [sp]
	lsl r1, r4, #4
	strh r1, [r0]
	ldr r0, [sp, #8]
	lsl r1, r0, #4
	ldr r0, [sp]
	add sp, #0x18
	strh r1, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
_02235CEA:
	add r4, r4, #1
	cmp r4, r6
	blo _02235CB0
_02235CF0:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _02235C9A
_02235CFC:
	bl GF_AssertFail
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02235D04: .word 0x000006E4
	thumb_func_end ov65_02235C64

	thumb_func_start ov65_02235D08
ov65_02235D08: ; 0x02235D08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, _02235D78 ; =0x000006E4
	str r1, [sp]
	ldr r0, [r7, r0]
	bl ov63_0222BD48
	add r5, r0, #0
	ldr r0, _02235D78 ; =0x000006E4
	ldr r0, [r7, r0]
	bl ov63_0222BD4C
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bls _02235D70
_02235D2E:
	mov r4, #0
	cmp r5, #0
	bls _02235D64
	ldr r0, [sp, #8]
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_02235D3A:
	ldr r0, _02235D78 ; =0x000006E4
	lsl r1, r4, #0x10
	ldr r0, [r7, r0]
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl ov63_0222BDE4
	cmp r0, #0xf
	bne _02235D5E
	ldr r0, [sp]
	lsl r1, r4, #4
	strh r1, [r0]
	ldr r0, [sp, #8]
	lsl r1, r0, #4
	ldr r0, [sp]
	add sp, #0xc
	strh r1, [r0, #2]
	pop {r4, r5, r6, r7, pc}
_02235D5E:
	add r4, r4, #1
	cmp r4, r5
	blo _02235D3A
_02235D64:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _02235D2E
_02235D70:
	bl GF_AssertFail
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02235D78: .word 0x000006E4
	thumb_func_end ov65_02235D08

	thumb_func_start ov65_02235D7C
ov65_02235D7C: ; 0x02235D7C
	push {r4, lr}
	mov r2, #0x63
	mov r1, #0
	add r4, r0, #0
	lsl r2, r2, #2
_02235D86:
	ldr r3, [r4, r2]
	cmp r3, #0
	bne _02235D9A
	mov r2, #0x63
	lsl r2, r2, #2
	add r2, r0, r2
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02235D9A:
	add r1, r1, #1
	add r4, #0x1c
	cmp r1, #0x30
	blt _02235D86
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02235D7C

	thumb_func_start ov65_02235DAC
ov65_02235DAC: ; 0x02235DAC
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldr r0, _02235DE0 ; =0x000006EC
	add r5, r1, #0
	ldr r0, [r3, r0]
	ldr r1, [r5, #0]
	ldr r3, [r3, #4]
	add r4, r2, #0
	bl ov63_0222CE44
	str r0, [r5, #4]
	cmp r4, #0
	bne _02235DDC
	ldr r0, [r5, #4]
	mov r1, #0
	bl ov63_0222CFA4
	ldr r0, [r5, #4]
	bl ov63_0222CFA8
	ldr r0, [r5, #4]
	mov r1, #0
	bl ov63_0222D008
_02235DDC:
	pop {r3, r4, r5, pc}
	nop
_02235DE0: .word 0x000006EC
	thumb_func_end ov65_02235DAC

	thumb_func_start ov65_02235DE4
ov65_02235DE4: ; 0x02235DE4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #0
	ldrsh r1, [r2, r1]
	add r5, sp, #0
	strh r1, [r5]
	mov r1, #2
	ldrsh r1, [r2, r1]
	strh r1, [r5, #2]
	ldr r1, [sp, #0x20]
	strh r3, [r5, #4]
	strh r1, [r5, #6]
	add r1, sp, #8
	ldrb r2, [r1, #0x14]
	strh r2, [r5, #8]
	ldrh r1, [r1, #0x10]
	strh r1, [r5, #0xa]
	ldr r1, _02235E18 ; =0x000006E8
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl ov63_0222BEC0
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02235E18: .word 0x000006E8
	thumb_func_end ov65_02235DE4

	thumb_func_start ov65_02235E1C
ov65_02235E1C: ; 0x02235E1C
	ldrh r0, [r0, #0xc]
	cmp r0, #5
	bhi _02235E42
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235E2E: ; jump table
	.short _02235E3A - _02235E2E - 2 ; case 0
	.short _02235E3E - _02235E2E - 2 ; case 1
	.short _02235E3E - _02235E2E - 2 ; case 2
	.short _02235E3A - _02235E2E - 2 ; case 3
	.short _02235E3A - _02235E2E - 2 ; case 4
	.short _02235E3E - _02235E2E - 2 ; case 5
_02235E3A:
	mov r0, #1
	bx lr
_02235E3E:
	mov r0, #0
	bx lr
_02235E42:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov65_02235E1C

	thumb_func_start ov65_02235E48
ov65_02235E48: ; 0x02235E48
	add r2, r1, #0
	ldr r1, _02235E5C ; =ov65_02236044
	ldr r3, _02235E60 ; =ov65_02236250
	str r1, [r2, #0x10]
	ldr r1, _02235E64 ; =ov65_02235EF4
	str r1, [r2, #0x18]
	mov r1, #0
	strh r1, [r2, #0xc]
	bx r3
	nop
_02235E5C: .word ov65_02236044
_02235E60: .word ov65_02236250
_02235E64: .word ov65_02235EF4
	thumb_func_end ov65_02235E48

	thumb_func_start ov65_02235E68
ov65_02235E68: ; 0x02235E68
	ldr r0, _02235E7C ; =ov65_02236158
	str r0, [r1, #0x10]
	ldr r0, _02235E80 ; =ov65_02235EF8
	str r0, [r1, #0x18]
	mov r0, #0x2d
	strh r0, [r1, #8]
	mov r0, #1
	strh r0, [r1, #0xc]
	bx lr
	nop
_02235E7C: .word ov65_02236158
_02235E80: .word ov65_02235EF8
	thumb_func_end ov65_02235E68

	thumb_func_start ov65_02235E84
ov65_02235E84: ; 0x02235E84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02235EBC ; =ov65_022361C8
	add r4, r1, #0
	str r0, [r4, #0x10]
	ldr r0, _02235EC0 ; =ov65_02235EF4
	str r0, [r4, #0x18]
	bl sub_0201D35C
	ldr r1, _02235EC4 ; =0x000003FF
	add r2, r4, #0
	and r1, r0
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	strh r0, [r4, #8]
	mov r0, #3
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl ov65_02236250
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov63_0222CFA4
	pop {r3, r4, r5, pc}
	nop
_02235EBC: .word ov65_022361C8
_02235EC0: .word ov65_02235EF4
_02235EC4: .word 0x000003FF
	thumb_func_end ov65_02235E84

	thumb_func_start ov65_02235EC8
ov65_02235EC8: ; 0x02235EC8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02235EEC ; =ov65_02236214
	add r2, r4, #0
	str r1, [r4, #0x10]
	ldr r1, _02235EF0 ; =ov65_02235F94
	str r1, [r4, #0x18]
	mov r1, #0x1c
	strh r1, [r4, #8]
	mov r1, #4
	strh r1, [r4, #0xc]
	bl ov65_02236250
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov63_0222CFA4
	pop {r4, pc}
	; .align 2, 0
_02235EEC: .word ov65_02236214
_02235EF0: .word ov65_02235F94
	thumb_func_end ov65_02235EC8

	thumb_func_start ov65_02235EF4
ov65_02235EF4: ; 0x02235EF4
	bx lr
	; .align 2, 0
	thumb_func_end ov65_02235EF4

	thumb_func_start ov65_02235EF8
ov65_02235EF8: ; 0x02235EF8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl ov63_0222CFB4
	ldr r0, [r4, #4]
	bl ov63_0222CFFC
	cmp r0, #0
	bne _02235F16
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov63_0222D008
_02235F16:
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov63_0222BF90
	add r1, sp, #0
	strh r0, [r1, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov63_0222BF90
	add r1, sp, #0
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1]
	ldrh r0, [r1, #6]
	strh r0, [r1, #2]
	ldrh r0, [r4, #8]
	bl sub_0201D15C
	ldr r2, _02235F90 ; =0xFFF40000
	asr r1, r0, #0x1f
	asr r3, r2, #0x14
	bl _ull_mul
	mov r5, #2
	mov r6, #0
	lsl r5, r5, #0xa
	mov r3, #6
	add r2, sp, #0
	add r5, r0, r5
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r5, #0xc
	orr r1, r0
	ldrsh r3, [r2, r3]
	asr r0, r1, #0xc
	add r0, r3, r0
	strh r0, [r2, #6]
	mov r3, sp
	ldrh r1, [r2, #4]
	ldr r0, [r4, #4]
	sub r3, r3, #4
	strh r1, [r3]
	ldrh r1, [r2, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222CFE0
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r4, #4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222D060
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02235F90: .word 0xFFF40000
	thumb_func_end ov65_02235EF8

	thumb_func_start ov65_02235F94
ov65_02235F94: ; 0x02235F94
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov63_0222BF90
	add r1, sp, #0
	strh r0, [r1, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov63_0222BF90
	add r1, sp, #0
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1]
	ldrh r0, [r1, #6]
	strh r0, [r1, #2]
	mov r0, #8
	ldrsh r0, [r4, r0]
	sub r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r0, #0
	ble _0223600A
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
	mov r0, #0xb4
	mul r0, r1
	mov r1, #6
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	add r1, sp, #0
	mov r2, #6
	ldrsh r3, [r1, r2]
	asr r2, r0, #0x1f
	lsr r5, r0, #0x12
	lsl r2, r2, #0xe
	lsl r6, r0, #0xe
	mov r0, #2
	orr r2, r5
	mov r5, #0
	lsl r0, r0, #0xa
	add r6, r6, r0
	adc r2, r5
	lsl r0, r2, #0x14
	lsr r2, r6, #0xc
	orr r2, r0
	asr r0, r2, #0xc
	sub r0, r3, r0
	strh r0, [r1, #6]
_0223600A:
	add r1, sp, #0
	ldrh r2, [r1, #4]
	mov r3, sp
	ldr r0, [r4, #4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222CFE0
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r4, #4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222D060
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov63_0222D020
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02235F94

	thumb_func_start ov65_02236044
ov65_02236044: ; 0x02236044
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #0]
	mov r1, #6
	bl ov63_0222BF90
	add r4, r0, #0
	ldr r0, [r6, #0]
	mov r1, #4
	bl ov63_0222BF90
	add r7, r0, #0
	ldr r0, [r6, #0]
	mov r1, #5
	bl ov63_0222BF90
	cmp r0, #0
	beq _0223606E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223606E:
	ldr r0, _02236154 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _022360A8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov65_022357A8
	str r0, [sp]
	cmp r0, #0
	beq _022360A4
	bl ov65_02235E1C
	cmp r0, #1
	bne _0223609E
	ldr r0, [sp]
	mov r1, #4
	ldr r0, [r0, #0]
	bl ov63_0222BF90
	strb r0, [r6, #0xa]
	b _022360A8
_0223609E:
	mov r0, #0
	strb r0, [r6, #0xa]
	b _022360A8
_022360A4:
	mov r0, #0
	strb r0, [r6, #0xa]
_022360A8:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _022360B2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022360B2:
	ldr r0, _02236154 ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x44]
	add r2, r0, #0
	tst r2, r1
	beq _022360C0
	mov r1, #3
_022360C0:
	mov r2, #0x40
	tst r2, r0
	beq _022360E4
	cmp r4, #0
	bne _022360D6
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov65_02236230
	b _0223614E
_022360D6:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	add r3, r7, #0
	bl ov65_02236230
	b _0223614E
_022360E4:
	mov r2, #0x80
	tst r2, r0
	beq _02236108
	cmp r4, #1
	bne _022360FA
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov65_02236230
	b _0223614E
_022360FA:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r7, #0
	bl ov65_02236230
	b _0223614E
_02236108:
	mov r2, #0x20
	tst r2, r0
	beq _0223612C
	cmp r4, #2
	bne _0223611E
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov65_02236230
	b _0223614E
_0223611E:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	add r3, r7, #0
	bl ov65_02236230
	b _0223614E
_0223612C:
	mov r2, #0x10
	tst r0, r2
	beq _0223614E
	cmp r4, #3
	bne _02236142
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov65_02236230
	b _0223614E
_02236142:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	add r3, r7, #0
	bl ov65_02236230
_0223614E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236154: .word 0x021BF67C
	thumb_func_end ov65_02236044

	thumb_func_start ov65_02236158
ov65_02236158: ; 0x02236158
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #8
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _022361A8
	ldr r0, [r4, #4]
	bl ov63_0222CFC0
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov63_0222CFA4
	ldr r0, _022361AC ; =0x000006CC
	mov r1, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl ov63_0222BF90
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov63_0222BF90
	cmp r0, r6
	bne _0223619E
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02235E48
	b _022361A8
_0223619E:
	ldrb r2, [r4, #0xb]
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0223628C
_022361A8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022361AC: .word 0x000006CC
	thumb_func_end ov65_02236158

	thumb_func_start ov65_022361B0
ov65_022361B0: ; 0x022361B0
	mov r0, #8
	ldrsh r2, [r1, r0]
	add r2, r2, #1
	strh r2, [r1, #8]
	ldrsh r0, [r1, r0]
	cmp r0, #0x2d
	ble _022361C2
	mov r0, #1
	bx lr
_022361C2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov65_022361B0

	thumb_func_start ov65_022361C8
ov65_022361C8: ; 0x022361C8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0223620A
	bl sub_0201D35C
	ldr r1, _02236210 ; =0x000003FF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	strh r0, [r5, #8]
	bl sub_0201D35C
	add r4, r0, #0
	mov r1, #3
	and r4, r1
	ldr r0, [r5, #0]
	mov r1, #4
	bl ov63_0222BF90
	add r3, r0, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl ov65_02236230
_0223620A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02236210: .word 0x000003FF
	thumb_func_end ov65_022361C8

	thumb_func_start ov65_02236214
ov65_02236214: ; 0x02236214
	mov r0, #8
	ldrsh r2, [r1, r0]
	sub r2, r2, #1
	strh r2, [r1, #8]
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _02236226
	mov r0, #0x1c
	strh r0, [r1, #8]
_02236226:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov65_02236214

	thumb_func_start ov65_0223622C
ov65_0223622C: ; 0x0223622C
	mov r0, #0
	bx lr
	thumb_func_end ov65_0223622C

	thumb_func_start ov65_02236230
ov65_02236230: ; 0x02236230
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	ldr r1, _0223624C ; =0x000006F8
	strb r3, [r4, #3]
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl ov63_0222D894
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223624C: .word 0x000006F8
	thumb_func_end ov65_02236230

	thumb_func_start ov65_02236250
ov65_02236250: ; 0x02236250
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [r4, #0]
	mov r1, #6
	bl ov63_0222BF90
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov63_0222BF90
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov65_02236230
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02236250

	thumb_func_start ov65_02236278
ov65_02236278: ; 0x02236278
	ldr r1, [r0, #0x18]
	ldr r0, _02236288 ; =ov65_02235EF8
	cmp r1, r0
	beq _02236284
	mov r0, #1
	bx lr
_02236284:
	mov r0, #0
	bx lr
	; .align 2, 0
_02236288: .word ov65_02235EF8
	thumb_func_end ov65_02236278

	thumb_func_start ov65_0223628C
ov65_0223628C: ; 0x0223628C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	beq _0223629A
	cmp r4, #1
	beq _022362A0
	b _022362A6
_0223629A:
	bl ov65_02235E84
	b _022362AA
_022362A0:
	bl ov65_02235EC8
	b _022362AA
_022362A6:
	bl GF_AssertFail
_022362AA:
	strb r4, [r5, #0xb]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0223628C

	thumb_func_start ov65_022362B0
ov65_022362B0: ; 0x022362B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r3, r0, #0
	add r5, r4, #0
	mov r1, #0x14
	mov r0, #0
_022362BC:
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _022362BC
	ldr r3, [r3, #4]
	add r0, r2, #0
	mov r1, #0x1f
	add r2, r4, #4
	bl sub_020071EC
	str r0, [r4, #0]
	mov r0, #0xf
	strb r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #9]
	lsl r1, r0, #1
	ldr r0, _022362E8 ; =0x02238BC8
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
	nop
_022362E8: .word 0x02238BC8
	thumb_func_end ov65_022362B0

	thumb_func_start ov65_022362EC
ov65_022362EC: ; 0x022362EC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r1, #0x14
	mov r0, #0
_022362FA:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _022362FA
	pop {r4, pc}
	thumb_func_end ov65_022362EC

	thumb_func_start ov65_02236304
ov65_02236304: ; 0x02236304
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov65_02236318
	add r0, r4, #0
	bl ov65_02236384
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02236304

	thumb_func_start ov65_02236318
ov65_02236318: ; 0x02236318
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, #0xa]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0223637E
	ldrb r0, [r5, #9]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5, #9]
	ldrb r0, [r5, #9]
	lsl r1, r0, #1
	ldr r0, _02236380 ; =0x02238BC8
	ldrh r0, [r0, r1]
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #9]
	cmp r0, #1
	bne _02236350
	mov r6, #2
	b _02236352
_02236350:
	mov r6, #1
_02236352:
	mov r4, #0
	mov r7, #1
_02236356:
	add r0, r7, #0
	ldrb r1, [r5, #8]
	lsl r0, r4
	tst r0, r1
	beq _02236378
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_02236410
	add r1, r4, #1
	lsl r1, r1, #1
	add r2, r0, #0
	mov r0, #0xf
	add r1, #0xe0
	mov r3, #2
	bl sub_0201DC68
_02236378:
	add r4, r4, #1
	cmp r4, #4
	blt _02236356
_0223637E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02236380: .word 0x02238BC8
	thumb_func_end ov65_02236318

	thumb_func_start ov65_02236384
ov65_02236384: ; 0x02236384
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r3, [r4, #0xd]
	mov r0, #0
	add r1, r0, #0
	lsl r5, r3, #2
	ldr r3, _02236400 ; =0x02238BD7
	add r2, r0, #0
	ldrb r3, [r3, r5]
	cmp r3, #1
	bne _022363AC
	mov r3, #0xe
	ldrsh r5, [r4, r3]
	sub r5, r5, #1
	strh r5, [r4, #0xe]
	ldrsh r3, [r4, r3]
	cmp r3, #0
	bgt _022363B6
	mov r2, #1
	b _022363B6
_022363AC:
	ldrb r3, [r4, #0x10]
	cmp r3, #0
	beq _022363B6
	strb r0, [r4, #0x10]
	mov r2, #1
_022363B6:
	cmp r2, #0
	beq _022363E2
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #8
	blo _022363CE
	add r0, r4, #0
	bl ov65_0223641C
	pop {r3, r4, r5, pc}
_022363CE:
	lsl r1, r0, #2
	ldr r0, _02236404 ; =0x02238BD8
	ldrb r0, [r0, r1]
	ldr r1, _02236408 ; =0x02238BDA
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	lsl r2, r0, #2
	ldr r0, _0223640C ; =0x02238BD9
	ldrb r1, [r1, r2]
	ldrb r0, [r0, r2]
_022363E2:
	cmp r0, #0
	beq _022363FE
	add r0, r4, #0
	bl ov65_02236410
	ldrb r1, [r4, #0xc]
	add r2, r0, #0
	mov r0, #0xf
	add r1, r1, #1
	lsl r1, r1, #1
	add r1, #0xe0
	mov r3, #2
	bl sub_0201DC68
_022363FE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02236400: .word 0x02238BD7
_02236404: .word 0x02238BD8
_02236408: .word 0x02238BDA
_0223640C: .word 0x02238BD9
	thumb_func_end ov65_02236384

	thumb_func_start ov65_02236410
ov65_02236410: ; 0x02236410
	ldr r0, [r0, #4]
	ldr r2, [r0, #0xc]
	add r0, r1, #1
	lsl r0, r0, #1
	add r0, r2, r0
	bx lr
	thumb_func_end ov65_02236410

	thumb_func_start ov65_0223641C
ov65_0223641C: ; 0x0223641C
	ldrb r1, [r0, #0xc]
	ldrb r3, [r0, #8]
	mov r2, #1
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strh r1, [r0, #0xe]
	strb r1, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov65_0223641C

	thumb_func_start ov65_02236438
ov65_02236438: ; 0x02236438
	mov r1, #1
	strb r1, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov65_02236438

	thumb_func_start ov65_02236440
ov65_02236440: ; 0x02236440
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xd]
	cmp r1, #0
	beq _02236450
	bl ov65_0223641C
_02236450:
	mov r0, #1
	ldrb r1, [r5, #8]
	lsl r0, r4
	eor r0, r1
	strb r0, [r5, #8]
	add r0, r5, #0
	strb r4, [r5, #0xc]
	bl ov65_02236438
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02236440

	thumb_func_start ov65_02236464
ov65_02236464: ; 0x02236464
	push {r3, lr}
	ldrb r1, [r0, #0xd]
	cmp r1, #0
	beq _02236470
	bl ov65_02236438
_02236470:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov65_02236464

	.rodata


	.global Unk_ov65_02238BC8
Unk_ov65_02238BC8: ; 0x02238BC8
	.incbin "incbin/overlay65_rodata.bin", 0x29C, 0x2A0 - 0x29C

	.global Unk_ov65_02238BCC
Unk_ov65_02238BCC: ; 0x02238BCC
	.incbin "incbin/overlay65_rodata.bin", 0x2A0, 0x2AB - 0x2A0

	.global Unk_ov65_02238BD7
Unk_ov65_02238BD7: ; 0x02238BD7
	.incbin "incbin/overlay65_rodata.bin", 0x2AB, 0x20

