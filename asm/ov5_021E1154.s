	.include "macros/function.inc"
	.include "include/ov5_021E1154.inc"

	

	.text


	thumb_func_start ov5_021E1154
ov5_021E1154: ; 0x021E1154
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205EB3C
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl sub_0205DEB4
	cmp r0, #1
	bne _021E1176
	mov r2, #3
	b _021E11A4
_021E1176:
	add r0, r4, #0
	bl sub_0205DEC0
	cmp r0, #1
	bne _021E1184
	mov r2, #2
	b _021E11A4
_021E1184:
	add r0, r4, #0
	bl sub_0205DECC
	cmp r0, #1
	bne _021E1192
	mov r2, #0
	b _021E11A4
_021E1192:
	add r0, r4, #0
	bl sub_0205DED8
	cmp r0, #1
	bne _021E11A0
	mov r2, #1
	b _021E11A4
_021E11A0:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E11A4:
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021E11B0
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E1154

	thumb_func_start ov5_021E11B0
ov5_021E11B0: ; 0x021E11B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x18
	add r6, r1, #0
	add r7, r2, #0
	bl ov5_021E132C
	add r4, r0, #0
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	ldr r0, _021E11D8 ; =0x00000658
	str r7, [r4, #0]
	bl sub_02005748
	ldr r1, _021E11DC ; =ov5_021E120C
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E11D8: .word 0x00000658
_021E11DC: .word ov5_021E120C
	thumb_func_end ov5_021E11B0

	thumb_func_start ov5_021E11E0
ov5_021E11E0: ; 0x021E11E0
	cmp r0, #3
	bhi _021E1208
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E11F0: ; jump table
	.short _021E11F8 - _021E11F0 - 2 ; case 0
	.short _021E1200 - _021E11F0 - 2 ; case 1
	.short _021E11FC - _021E11F0 - 2 ; case 2
	.short _021E1204 - _021E11F0 - 2 ; case 3
_021E11F8:
	mov r0, #2
	bx lr
_021E11FC:
	mov r0, #1
	bx lr
_021E1200:
	mov r0, #3
	bx lr
_021E1204:
	mov r0, #0
	bx lr
_021E1208:
	mov r0, #0
	bx lr
	thumb_func_end ov5_021E11E0

	thumb_func_start ov5_021E120C
ov5_021E120C: ; 0x021E120C
	push {r4, r5, r6, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021E1234
	cmp r0, #1
	beq _021E1246
	cmp r0, #2
	beq _021E1276
	b _021E1324
_021E1234:
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_020628BC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _021E1324
_021E1246:
	ldr r0, [r4, #0x10]
	bl sub_02061544
	cmp r0, #0
	beq _021E1324
	ldr r0, [r4, #0]
	mov r1, #0xc
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	mov r2, #1
	bl sub_02061550
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0]
	bl sub_0205EA84
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #7
	str r0, [r4, #4]
	b _021E1324
_021E1276:
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _021E1284
	cmp r0, #4
	beq _021E1284
	cmp r0, #6
	bne _021E1294
_021E1284:
	ldr r0, [r4, #0]
	bl ov5_021E11E0
	str r0, [r4, #0]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0]
	bl sub_0205EA84
_021E1294:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bne _021E1324
	add r0, r5, #0
	bl sub_0205DEB4
	cmp r0, #1
	bne _021E12AC
	mov r0, #3
	str r0, [r4, #0]
	b _021E12E4
_021E12AC:
	add r0, r5, #0
	bl sub_0205DEC0
	cmp r0, #1
	bne _021E12BC
	mov r0, #2
	str r0, [r4, #0]
	b _021E12E4
_021E12BC:
	add r0, r5, #0
	bl sub_0205DECC
	cmp r0, #1
	bne _021E12CC
	mov r0, #0
	str r0, [r4, #0]
	b _021E12E4
_021E12CC:
	add r0, r5, #0
	bl sub_0205DED8
	cmp r0, #1
	bne _021E12DC
	mov r0, #1
	str r0, [r4, #0]
	b _021E12E4
_021E12DC:
	ldr r0, [r4, #0]
	bl ov5_021E11E0
	str r0, [r4, #0]
_021E12E4:
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0]
	add r1, r6, #0
	bl sub_02060B7C
	cmp r0, #0
	bne _021E12F8
	mov r0, #1
	str r0, [r4, #8]
	b _021E1324
_021E12F8:
	add r0, r6, #0
	mov r1, #0x80
	bl sub_020628C4
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_020628C4
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0]
	bl sub_0205EA84
	add r0, r4, #0
	bl ov5_021E1350
	ldr r0, _021E1328 ; =0x00000658
	mov r1, #0
	bl sub_020057A4
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E1324:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E1328: .word 0x00000658
	thumb_func_end ov5_021E120C

	thumb_func_start ov5_021E132C
ov5_021E132C: ; 0x021E132C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	bne _021E1340
	bl GF_AssertFail
_021E1340:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E132C

	thumb_func_start ov5_021E1350
ov5_021E1350: ; 0x021E1350
	ldr r3, _021E1358 ; =sub_02018238
	add r1, r0, #0
	mov r0, #4
	bx r3
	; .align 2, 0
_021E1358: .word sub_02018238
	thumb_func_end ov5_021E1350