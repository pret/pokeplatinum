	.include "macros/function.inc"
	.include "overlay062/ov62_0223CAEC.inc"

	

	.text


	thumb_func_start ov62_0223CAEC
ov62_0223CAEC: ; 0x0223CAEC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, _0223CBC0 ; =0x00000B0C
	bne _0223CB1A
	ldr r3, _0223CBC4 ; =0x02248F00
	add r2, r4, r0
	mov r6, #5
_0223CB06:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0223CB06
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	ldr r0, _0223CBC8 ; =0x00000748
	str r1, [r4, r0]
	b _0223CB46
_0223CB1A:
	ldr r3, _0223CBCC ; =0x02248F2C
	add r2, r4, r0
	mov r6, #5
_0223CB20:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0223CB20
	ldr r0, [r3, #0]
	ldr r1, _0223CBD0 ; =0x00000714
	str r0, [r2, #0]
	ldr r3, [r4, r1]
	mov r1, #0x72
	ldr r2, [r4, #0xc]
	lsl r1, r1, #2
	mul r1, r2
	ldrb r1, [r3, r1]
	ldr r0, [r5, #0x4c]
	add r1, #0x5e
	bl sub_0200B1EC
	ldr r1, _0223CBC8 ; =0x00000748
	str r0, [r4, r1]
_0223CB46:
	mov r1, #0xb1
	ldr r0, [r4, #0x20]
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r3, [r4, #0xc]
	ldr r0, _0223CBD4 ; =0x0000074C
	lsl r2, r3, #2
	add r2, r3, r2
	add r0, r4, r0
	lsl r2, r2, #6
	add r2, r0, r2
	sub r0, r1, #4
	str r2, [r4, r0]
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223CBD8 ; =0x0000049C
	add r0, r5, r0
	bl ov62_02233310
	ldr r0, [r4, #0xc]
	ldr r3, _0223CBC0 ; =0x00000B0C
	str r0, [sp]
	ldr r0, [r4, #0x14]
	ldr r2, _0223CBC8 ; =0x00000748
	str r0, [sp, #4]
	ldr r0, [r4, r2]
	sub r2, r2, #4
	str r0, [sp, #8]
	ldr r0, _0223CBD8 ; =0x0000049C
	ldr r2, [r4, r2]
	add r0, r5, r0
	add r1, r5, #0
	add r3, r4, r3
	bl ov62_02232778
	ldr r1, _0223CBDC ; =0x0000047C
	add r0, r5, r1
	add r1, #0x20
	add r1, r5, r1
	bl ov62_02233638
	ldr r0, _0223CBD8 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #1
	bl ov62_0223331C
	ldr r0, _0223CBD8 ; =0x0000049C
	mov r1, #0x70
	add r0, r5, r0
	mov r2, #0xb8
	bl ov62_02233434
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223CBC0: .word 0x00000B0C
_0223CBC4: .word 0x02248F00
_0223CBC8: .word 0x00000748
_0223CBCC: .word 0x02248F2C
_0223CBD0: .word 0x00000714
_0223CBD4: .word 0x0000074C
_0223CBD8: .word 0x0000049C
_0223CBDC: .word 0x0000047C
	thumb_func_end ov62_0223CAEC

	thumb_func_start ov62_0223CBE0
ov62_0223CBE0: ; 0x0223CBE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	ldr r0, _0223CF00 ; =0x00000714
	add r1, r4, #0
	add r1, #0xe0
	str r1, [r4, r0]
	add r1, r0, #0
	sub r1, #0xdc
	add r1, r4, r1
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0223CC12
	cmp r0, #1
	bne _0223CC08
	b _0223CD0C
_0223CC08:
	cmp r0, #2
	bne _0223CC0E
	b _0223CDF8
_0223CC0E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223CC12:
	mov r6, #0
	add r5, r6, #0
	str r6, [sp]
_0223CC18:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	bne _0223CC70
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #6
	add r0, r4, r0
	add r2, r5, r0
	ldr r1, _0223CF04 ; =0x00002710
	ldr r0, _0223CF08 ; =0x0000074C
	str r1, [r2, r0]
	sub r0, #0x34
	ldr r2, [r4, r0]
	ldr r1, [r4, #0xc]
	mov r0, #0x48
	mul r0, r1
	add r0, r2, r0
	add r0, r6, r0
	ldrb r0, [r0, #4]
	mov r1, #4
	bl ov62_02232234
	ldr r2, [r4, #0xc]
	lsl r1, r2, #2
	add r1, r2, r1
	lsl r1, r1, #6
	add r1, r4, r1
	add r2, r5, r1
	mov r1, #0x75
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r2, [r4, #0xc]
	asr r0, r6, #0x1f
	lsl r1, r2, #2
	add r1, r2, r1
	lsl r1, r1, #6
	add r1, r4, r1
	add r2, r5, r1
	ldr r1, _0223CF0C ; =0x00000754
	str r6, [r2, r1]
	add r1, r1, #4
	str r0, [r2, r1]
	b _0223CCFA
_0223CC70:
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #6
	add r0, r4, r0
	add r2, r5, r0
	ldr r1, _0223CF10 ; =0x00004E20
	ldr r0, _0223CF08 ; =0x0000074C
	str r1, [r2, r0]
	sub r0, #0x38
	ldr r2, [r4, r0]
	mov r0, #0x72
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	mul r0, r1
	add r0, r2, r0
	add r0, r6, r0
	ldrb r0, [r0, #4]
	mov r1, #4
	bl ov62_02232234
	ldr r2, [r4, #0xc]
	lsl r1, r2, #2
	add r1, r2, r1
	lsl r1, r1, #6
	add r1, r4, r1
	add r2, r5, r1
	mov r1, #0x75
	lsl r1, r1, #4
	str r0, [r2, r1]
	sub r1, #0x3c
	ldr r2, [r4, r1]
	mov r1, #0x72
	ldr r0, [r4, #0xc]
	lsl r1, r1, #2
	mul r1, r0
	add r2, r2, r1
	ldr r1, [sp]
	add r1, r1, r2
	add r1, #0x14
	ldmia r1!, {r2, r3}
	lsl r1, r0, #2
	add r0, r0, r1
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, r5, r0
	ldr r0, _0223CF0C ; =0x00000754
	add r0, r1, r0
	stmia r0!, {r2, r3}
	ldr r1, [r4, #0xc]
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #6
	add r0, r4, r0
	add r3, r0, r5
	ldr r0, _0223CF0C ; =0x00000754
	ldr r2, [r3, r0]
	add r0, r0, #4
	ldr r1, [r3, r0]
	ldr r7, _0223CF14 ; =0x8AC72304
	ldr r0, _0223CF18 ; =0x89E7FFFF
	sub r0, r2, r0
	sbc r1, r7
	blo _0223CCFA
	ldr r1, _0223CF18 ; =0x89E7FFFF
	ldr r0, _0223CF0C ; =0x00000754
	str r1, [r3, r0]
	ldr r1, _0223CF14 ; =0x8AC72304
	add r0, r0, #4
	str r1, [r3, r0]
_0223CCFA:
	ldr r0, [sp]
	add r6, r6, #1
	add r0, #8
	add r5, #0x10
	str r0, [sp]
	cmp r6, #0x10
	blt _0223CC18
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223CD0C:
	mov r1, #0
	add r0, r1, #0
	add r7, r1, #0
_0223CD12:
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	cmp r2, #0
	bne _0223CD62
	lsl r2, r3, #2
	add r2, r3, r2
	lsl r2, r2, #6
	add r2, r4, r2
	add r5, r0, r2
	ldr r3, _0223CF1C ; =0x00007530
	ldr r2, _0223CF08 ; =0x0000074C
	str r3, [r5, r2]
	sub r2, #0x34
	ldr r3, [r4, #0xc]
	mov r5, #0x48
	ldr r2, [r4, r2]
	mul r5, r3
	add r2, r2, r5
	lsl r5, r3, #2
	add r3, r3, r5
	add r2, r1, r2
	lsl r3, r3, #6
	add r3, r4, r3
	add r5, r0, r3
	mov r3, #0x75
	ldrb r2, [r2, #0x14]
	lsl r3, r3, #4
	str r2, [r5, r3]
	ldr r5, [r4, #0xc]
	asr r3, r1, #0x1f
	lsl r2, r5, #2
	add r2, r5, r2
	lsl r2, r2, #6
	add r2, r4, r2
	ldr r5, _0223CF0C ; =0x00000754
	add r2, r0, r2
	str r1, [r2, r5]
	add r5, r5, #4
	str r3, [r2, r5]
	b _0223CDEA
_0223CD62:
	lsl r2, r3, #2
	add r2, r3, r2
	lsl r2, r2, #6
	add r2, r4, r2
	add r5, r0, r2
	ldr r3, _0223CF20 ; =0x00009C40
	ldr r2, _0223CF08 ; =0x0000074C
	str r3, [r5, r2]
	sub r2, #0x38
	mov r5, #0x72
	ldr r3, [r4, #0xc]
	lsl r5, r5, #2
	ldr r2, [r4, r2]
	mul r5, r3
	add r2, r2, r5
	lsl r5, r3, #2
	add r2, r1, r2
	add r3, r3, r5
	add r2, #0x94
	lsl r3, r3, #6
	add r3, r4, r3
	add r5, r0, r3
	mov r3, #0x75
	ldrb r2, [r2]
	lsl r3, r3, #4
	str r2, [r5, r3]
	add r2, r3, #0
	sub r2, #0x3c
	mov r3, #0x72
	ldr r5, [r4, #0xc]
	lsl r3, r3, #2
	ldr r2, [r4, r2]
	mul r3, r5
	add r2, r2, r3
	add r6, r7, r2
	add r6, #0xa0
	ldmia r6!, {r2, r3}
	lsl r6, r5, #2
	add r5, r5, r6
	lsl r5, r5, #6
	add r5, r4, r5
	add r6, r0, r5
	ldr r5, _0223CF0C ; =0x00000754
	add r5, r6, r5
	stmia r5!, {r2, r3}
	ldr r3, [r4, #0xc]
	lsl r2, r3, #2
	add r2, r3, r2
	lsl r2, r2, #6
	add r2, r4, r2
	add r5, r2, r0
	ldr r2, _0223CF0C ; =0x00000754
	ldr r3, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	ldr r6, _0223CF14 ; =0x8AC72304
	str r6, [sp, #0xc]
	ldr r6, _0223CF18 ; =0x89E7FFFF
	sub r3, r3, r6
	ldr r3, [sp, #0xc]
	sbc r2, r3
	blo _0223CDEA
	ldr r3, _0223CF18 ; =0x89E7FFFF
	ldr r2, _0223CF0C ; =0x00000754
	str r3, [r5, r2]
	ldr r3, _0223CF14 ; =0x8AC72304
	add r2, r2, #4
	str r3, [r5, r2]
_0223CDEA:
	add r1, r1, #1
	add r0, #0x10
	add r7, #8
	cmp r1, #0xc
	blt _0223CD12
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223CDF8:
	mov r7, #0
	add r0, r7, #0
	add r1, r7, #0
	str r7, [sp, #0x10]
_0223CE00:
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	cmp r2, #0
	bne _0223CE50
	lsl r2, r3, #2
	add r2, r3, r2
	lsl r2, r2, #6
	add r2, r4, r2
	add r5, r0, r2
	ldr r3, _0223CF24 ; =0x0000C350
	ldr r2, _0223CF08 ; =0x0000074C
	str r3, [r5, r2]
	sub r2, #0x34
	ldr r3, [r4, #0xc]
	mov r5, #0x48
	ldr r2, [r4, r2]
	mul r5, r3
	add r2, r2, r5
	lsl r5, r3, #2
	add r3, r3, r5
	add r2, r1, r2
	lsl r3, r3, #6
	add r3, r4, r3
	add r5, r0, r3
	mov r3, #0x75
	ldrh r2, [r2, #0x20]
	lsl r3, r3, #4
	str r2, [r5, r3]
	ldr r5, [r4, #0xc]
	asr r3, r7, #0x1f
	lsl r2, r5, #2
	add r2, r5, r2
	lsl r2, r2, #6
	add r2, r4, r2
	ldr r5, _0223CF0C ; =0x00000754
	add r2, r0, r2
	str r7, [r2, r5]
	add r5, r5, #4
	str r3, [r2, r5]
	b _0223CEEA
_0223CE50:
	lsl r2, r3, #2
	add r2, r3, r2
	lsl r2, r2, #6
	add r2, r4, r2
	add r5, r0, r2
	ldr r3, _0223CF28 ; =0x0000EA60
	ldr r2, _0223CF08 ; =0x0000074C
	str r3, [r5, r2]
	sub r2, #0x38
	mov r5, #0x72
	ldr r3, [r4, #0xc]
	lsl r5, r5, #2
	ldr r2, [r4, r2]
	mul r5, r3
	add r2, r2, r5
	add r5, r1, r2
	mov r2, #1
	lsl r2, r2, #8
	ldrh r2, [r5, r2]
	lsl r5, r3, #2
	add r3, r3, r5
	lsl r3, r3, #6
	add r3, r4, r3
	add r5, r0, r3
	mov r3, #0x75
	lsl r3, r3, #4
	str r2, [r5, r3]
	ldr r2, [r4, #0xc]
	str r2, [sp, #4]
	add r2, r3, #0
	sub r2, #0x3c
	mov r3, #0x72
	ldr r5, [sp, #4]
	lsl r3, r3, #2
	ldr r2, [r4, r2]
	mul r3, r5
	add r3, r2, r3
	ldr r2, [sp, #0x10]
	add r3, r2, r3
	mov r2, #0x4a
	lsl r2, r2, #2
	add r5, r3, r2
	ldmia r5!, {r2, r3}
	ldr r5, [sp, #4]
	lsl r6, r5, #2
	add r5, r5, r6
	lsl r5, r5, #6
	add r5, r4, r5
	add r6, r0, r5
	ldr r5, _0223CF0C ; =0x00000754
	add r5, r6, r5
	stmia r5!, {r2, r3}
	ldr r3, [r4, #0xc]
	lsl r2, r3, #2
	add r2, r3, r2
	lsl r2, r2, #6
	add r2, r4, r2
	add r3, r2, r0
	ldr r2, _0223CF0C ; =0x00000754
	str r3, [sp, #8]
	ldr r5, [r3, r2]
	add r2, r2, #4
	ldr r3, [r3, r2]
	ldr r2, _0223CF14 ; =0x8AC72304
	mov ip, r2
	ldr r2, _0223CF18 ; =0x89E7FFFF
	sub r2, r5, r2
	mov r2, ip
	sbc r3, r2
	blo _0223CEEA
	ldr r5, _0223CF18 ; =0x89E7FFFF
	ldr r3, [sp, #8]
	ldr r2, _0223CF0C ; =0x00000754
	str r5, [r3, r2]
	ldr r5, _0223CF14 ; =0x8AC72304
	add r2, r2, #4
	str r5, [r3, r2]
_0223CEEA:
	ldr r2, [sp, #0x10]
	add r7, r7, #1
	add r2, #8
	add r0, #0x10
	add r1, r1, #2
	str r2, [sp, #0x10]
	cmp r7, #0x14
	blt _0223CE00
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223CF00: .word 0x00000714
_0223CF04: .word 0x00002710
_0223CF08: .word 0x0000074C
_0223CF0C: .word 0x00000754
_0223CF10: .word 0x00004E20
_0223CF14: .word 0x8AC72304
_0223CF18: .word 0x89E7FFFF
_0223CF1C: .word 0x00007530
_0223CF20: .word 0x00009C40
_0223CF24: .word 0x0000C350
_0223CF28: .word 0x0000EA60
	thumb_func_end ov62_0223CBE0

	thumb_func_start ov62_0223CF2C
ov62_0223CF2C: ; 0x0223CF2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r1, #0x86
	ldr r0, [sp, #0x14]
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	ldr r5, _0223CFD8 ; =0x02248EA0
	mov r6, #1
	add r4, #0x84
_0223CF44:
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5, #0]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	mul r0, r1
	add r6, r6, r0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x48]
	add r1, #0x50
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov62_0223429C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223CFDC ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x10
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0223CF44
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CFD8: .word 0x02248EA0
_0223CFDC: .word 0x000F0D00
	thumb_func_end ov62_0223CF2C

	thumb_func_start ov62_0223CFE0
ov62_0223CFE0: ; 0x0223CFE0
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r5, [r0, r1]
	mov r4, #0
	add r5, #0x84
_0223CFEC:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _0223CFEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223CFE0

	thumb_func_start ov62_0223D004
ov62_0223D004: ; 0x0223D004
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _0223D0F4 ; =0x02248EC0
	str r0, [sp, #0x1c]
	ldr r4, [sp, #0x1c]
	mov r0, #0
	ldr r5, _0223D0F8 ; =0x02248EE0
	mov r7, #1
	str r0, [sp, #0x18]
	add r4, #0x24
_0223D020:
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0223D068
	ldr r0, [r6, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r6, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r6, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r6, #0]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r1, [r6, #8]
	ldr r0, [r6, #0xc]
	b _0223D0A0
_0223D068:
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5, #0]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
_0223D0A0:
	mul r0, r1
	add r7, r7, r0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	mov r1, #0x43
	ldr r0, [r0, #0x48]
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223D0FC ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r6, #0x10
	add r5, #0x10
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0223D020
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D0F4: .word 0x02248EC0
_0223D0F8: .word 0x02248EE0
_0223D0FC: .word 0x000F0D00
	thumb_func_end ov62_0223D004

	thumb_func_start ov62_0223D100
ov62_0223D100: ; 0x0223D100
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r5, [r0, r1]
	mov r4, #0
	add r5, #0x24
_0223D10C:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _0223D10C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223D100

	thumb_func_start ov62_0223D124
ov62_0223D124: ; 0x0223D124
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x57
	blt _0223D134
	mov r5, #0
	bl GF_AssertFail
_0223D134:
	ldr r6, _0223D158 ; =0x022497E8
	lsl r5, r5, #2
	ldr r1, [r6, r5]
	ldr r0, _0223D15C ; =0x0000FFFF
	cmp r1, r0
	bne _0223D144
	bl GF_AssertFail
_0223D144:
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0202CD88
	ldr r1, [r6, r5]
	bl sub_0202CFB8
	pop {r4, r5, r6, pc}
	nop
_0223D158: .word 0x022497E8
_0223D15C: .word 0x0000FFFF
	thumb_func_end ov62_0223D124

	thumb_func_start ov62_0223D160
ov62_0223D160: ; 0x0223D160
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x30
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x14]
	mov r0, #0x66
	bl ov62_02231690
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #0x4c]
	bne _0223D1A6
	ldr r1, _0223D390 ; =0x00000718
	ldr r3, [r4, #0xc]
	mov r2, #0x48
	ldr r1, [r4, r1]
	mul r2, r3
	ldrb r1, [r1, r2]
	sub r1, r1, #1
	bl sub_0200B1EC
	b _0223D1BA
_0223D1A6:
	ldr r1, _0223D394 ; =0x00000714
	mov r2, #0x72
	ldr r3, [r4, #0xc]
	lsl r2, r2, #2
	ldr r1, [r4, r1]
	mul r2, r3
	ldrb r1, [r1, r2]
	sub r1, r1, #1
	bl sub_0200B1EC
_0223D1BA:
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223D398 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x24
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	add r0, #0x24
	bl sub_0201A9A4
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #0x48]
	bne _0223D200
	ldr r1, [r4, #0x14]
	add r1, #0x52
	bl sub_0200B1EC
	b _0223D206
_0223D200:
	mov r1, #0x5b
	bl sub_0200B1EC
_0223D206:
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223D398 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x34
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	add r0, #0x34
	bl sub_0201A9A4
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, _0223D39C ; =0x0000088C
	mov r1, #0x66
	ldr r0, [r5, r0]
	bl sub_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0223D254
	cmp r0, #1
	beq _0223D292
	cmp r0, #2
	beq _0223D2BC
	b _0223D326
_0223D254:
	ldr r0, _0223D39C ; =0x0000088C
	ldr r0, [r5, r0]
	bl sub_02030CDC
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x48]
	mov r1, #0x55
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	mov r1, #4
	bl ov62_02232234
	add r1, r0, #0
	ldr r0, _0223D3A0 ; =0x00000744
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	b _0223D326
_0223D292:
	ldr r0, _0223D39C ; =0x0000088C
	ldr r0, [r5, r0]
	bl sub_02030CCC
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x48]
	mov r1, #0x56
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	mov r1, #0
	bl sub_0200C2E0
	b _0223D326
_0223D2BC:
	ldr r0, _0223D39C ; =0x0000088C
	ldr r0, [r5, r0]
	bl sub_02030BBC
	str r0, [sp, #0x10]
	ldr r0, _0223D39C ; =0x0000088C
	ldr r0, [r5, r0]
	bl sub_02030BEC
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x48]
	mov r1, #0x57
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0223D2E4
	ldr r0, _0223D3A4 ; =0x000001EE
	str r0, [sp, #0x10]
_0223D2E4:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0223D308
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	mov r1, #0x66
	add r2, sp, #0x2c
	bl sub_0200B274
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x2c
	bl sub_02023D28
	b _0223D312
_0223D308:
	ldr r0, [r5, #0x48]
	mov r1, #0x15
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
_0223D312:
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
_0223D326:
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	mov r3, #0
	bl sub_0200B48C
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223D398 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, [sp, #0x14]
	add r0, #0x34
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r4, #0x34
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200C41C
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x1fc
	add sp, #0x30
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D390: .word 0x00000718
_0223D394: .word 0x00000714
_0223D398: .word 0x000F0D00
_0223D39C: .word 0x0000088C
_0223D3A0: .word 0x00000744
_0223D3A4: .word 0x000001EE
	thumb_func_end ov62_0223D160

	thumb_func_start ov62_0223D3A8
ov62_0223D3A8: ; 0x0223D3A8
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _0223D3DC
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_020129D0
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #0x80
	mov r2, #0xe8
	bl sub_0200D4C4
	b _0223D402
_0223D3DC:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_020129D0
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #0x50
	mov r2, #0xe8
	bl sub_0200D4C4
_0223D402:
	add r0, r4, #0
	add r0, #0xac
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r0, #0]
	sub r2, #0x2c
	bl sub_020128C4
	add r4, #0xc8
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0]
	sub r2, #0x2c
	bl sub_020128C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_0223D3A8

	thumb_func_start ov62_0223D424
ov62_0223D424: ; 0x0223D424
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #2
	bl ov62_0223131C
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0xa4
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0xc0
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0xa4
	add r1, #0x14
	mov r2, #0x35
	bl ov62_0223124C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0xc0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x20
	mov r2, #0xe8
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #0x80
	mov r2, #0xe8
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xac
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r0, #0]
	sub r2, #0x2c
	bl sub_020128C4
	add r0, r4, #0
	add r0, #0xc8
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r0, #0]
	sub r2, #0x2c
	bl sub_020128C4
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_020129D0
	add r4, #0xc8
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_020129D0
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223D3A8
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223D424

	thumb_func_start ov62_0223D4E4
ov62_0223D4E4: ; 0x0223D4E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r0, r4, #0
	add r0, #0xa4
	bl ov62_022312B0
	add r0, r4, #0
	add r0, #0xc0
	bl ov62_022312B0
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, #0xc4
	ldr r0, [r4, #0]
	bl sub_0200D0F4
	add r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223D4E4

	thumb_func_start ov62_0223D518
ov62_0223D518: ; 0x0223D518
	push {r3, r4, r5}
	sub sp, #0xc
	ldr r5, _0223D53C ; =0x02248E88
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldr r0, [r2, #0x14]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	str r0, [r2, #0x20]
	add sp, #0xc
	pop {r3, r4, r5}
	bx lr
	nop
_0223D53C: .word 0x02248E88
	thumb_func_end ov62_0223D518

	thumb_func_start ov62_0223D540
ov62_0223D540: ; 0x0223D540
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _0223D5A2
	cmp r0, #0
	beq _0223D558
	cmp r0, #1
	beq _0223D576
	b _0223D594
_0223D558:
	add r0, r5, #0
	bl ov62_02234520
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	str r1, [r4, #0xc]
	add r0, r5, #0
	mov r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_0223D576:
	add r0, r5, #0
	bl ov62_02234520
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl _s32_div_f
	str r1, [r4, #0x14]
	add r0, r5, #0
	mov r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_0223D594:
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #7
	bl ov62_0222FB60
_0223D5A2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223D540

	thumb_func_start ov62_0223D5A4
ov62_0223D5A4: ; 0x0223D5A4
	push {r3, r4, r5, lr}
	ldr r1, _0223D634 ; =0x00000B38
	add r5, r0, #0
	mov r0, #0x66
	bl sub_02018144
	ldr r2, _0223D634 ; =0x00000B38
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	add r0, #0xc
	ldr r0, [r5, r0]
	str r0, [r4, #0x1c]
	mov r0, #3
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0208BE68
	cmp r0, #0
	bne _0223D5DA
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
_0223D5DA:
	mov r0, #3
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov62_0223D518
	ldr r1, [r5, #0x48]
	ldr r0, _0223D638 ; =0x00000744
	str r1, [r4, r0]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov62_022315C8
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223D63C ; =0x02248E94
	ldr r2, _0223D640 ; =ov62_0223D540
	mov r1, #3
	add r3, r5, #0
	bl sub_02023FCC
	add r4, #0xdc
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl ov62_0222FB60
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D634: .word 0x00000B38
_0223D638: .word 0x00000744
_0223D63C: .word 0x02248E94
_0223D640: .word ov62_0223D540
	thumb_func_end ov62_0223D5A4

	thumb_func_start ov62_0223D644
ov62_0223D644: ; 0x0223D644
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223D65A
	cmp r1, #1
	beq _0223D6B8
	b _0223D72E
_0223D65A:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _0223D66E
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223D66E:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223D73E
_0223D6B8:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02231454
	add r0, r5, #0
	bl ov62_0223D424
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #0
	bl sub_02019060
	mov r0, #7
	mov r1, #2
	bl sub_02019060
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223376C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223D73E
_0223D72E:
	bl ov62_02233790
	cmp r0, #0
	beq _0223D73E
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
_0223D73E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223D644

	thumb_func_start ov62_0223D744
ov62_0223D744: ; 0x0223D744
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223D75E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223D75E:
	ldr r0, [r4, #8]
	cmp r0, #6
	bls _0223D766
	b _0223DA8C
_0223D766:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D772: ; jump table
	.short _0223D780 - _0223D772 - 2 ; case 0
	.short _0223D7C0 - _0223D772 - 2 ; case 1
	.short _0223D7D8 - _0223D772 - 2 ; case 2
	.short _0223D8C2 - _0223D772 - 2 ; case 3
	.short _0223D8E2 - _0223D772 - 2 ; case 4
	.short _0223D9A6 - _0223D772 - 2 ; case 5
	.short _0223DA04 - _0223D772 - 2 ; case 6
_0223D780:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r1, _0223DABC ; =0x00000117
	add r0, r4, #0
	bl ov62_02231AAC
	ldr r0, _0223DAC0 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223D7C0:
	add r0, r4, #0
	bl ov62_0224112C
	bl ov61_0222B2B8
	cmp r0, #1
	beq _0223D7D0
	b _0223DAB4
_0223D7D0:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223D7D8:
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	bne _0223D816
	ldr r0, _0223DAC0 ; =0x00000565
	mov r1, #0
	bl sub_020057A4
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #4
	bl ov62_022348B8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #5
	str r0, [r4, #8]
	b _0223DAB4
_0223D816:
	mov r0, #0x71
	lsl r0, r0, #4
	add r1, r5, r0
	add r0, #0xc
	str r1, [r5, r0]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02025E5C
	bl sub_0202CC58
	ldr r1, _0223DAC4 ; =0x00000728
	strh r0, [r5, r1]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02025E5C
	bl sub_0202CC5C
	ldr r1, _0223DAC8 ; =0x0000072A
	strb r0, [r5, r1]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02025E5C
	bl sub_0202CC60
	ldr r1, _0223DACC ; =0x0000072B
	strb r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0]
	add r0, r1, #1
	strb r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0, #1]
	add r0, r1, #0
	add r0, #9
	strb r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0, #2]
	add r0, r1, #0
	add r0, #0x11
	strb r2, [r5, r0]
	add r1, r1, #1
	ldrb r1, [r5, r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov62_0223D124
	mov r1, #0x73
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov62_0223D124
	ldr r1, _0223DAD0 ; =0x00000738
	str r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov62_0223D124
	mov r1, #0x1d
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, _0223DAC0 ; =0x00000565
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223D8C2:
	add r0, r4, #0
	bl ov62_0224112C
	ldr r1, _0223DAD4 ; =0x0000088C
	ldr r2, _0223DAD8 ; =0x0000072C
	ldr r1, [r4, r1]
	add r2, r5, r2
	bl ov61_0222B2D8
	cmp r0, #1
	beq _0223D8DA
	b _0223DAB4
_0223D8DA:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223D8E2:
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	bne _0223D920
	ldr r0, _0223DAC0 ; =0x00000565
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #5
	bl ov62_022348B8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #5
	str r0, [r4, #8]
	b _0223DAB4
_0223D920:
	ldr r1, [r5, #0x1c]
	mov r0, #0
	cmp r1, #0
	bne _0223D948
	ldr r1, _0223DADC ; =0x00000718
	ldr r2, [r5, r1]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0223D944
	add r1, r2, #0
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _0223D944
	add r2, #0x90
	ldrb r1, [r2]
	cmp r1, #0
	bne _0223D966
_0223D944:
	mov r0, #1
	b _0223D966
_0223D948:
	ldr r1, _0223DAE0 ; =0x00000714
	ldr r3, [r5, r1]
	ldrb r1, [r3]
	cmp r1, #0
	beq _0223D964
	mov r1, #0x72
	lsl r1, r1, #2
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _0223D964
	lsl r1, r1, #1
	ldrb r1, [r3, r1]
	cmp r1, #0
	bne _0223D966
_0223D964:
	mov r0, #1
_0223D966:
	cmp r0, #0
	beq _0223D992
	mov r2, #0
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl ov62_022348B8
	mov r1, #0x4b
	mov r0, #0x51
	lsl r1, r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #5
	str r0, [r4, #8]
	b _0223DAB4
_0223D992:
	ldr r0, _0223DAC0 ; =0x00000565
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0223DAE4 ; =0x0000055F
	bl sub_02005748
	mov r0, #0xff
	str r0, [r4, #8]
	b _0223DAB4
_0223D9A6:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223D4E4
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_02024034
	add r5, #8
	add r0, r5, #0
	bl ov62_02231688
	add r0, r4, #0
	bl ov62_0223146C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223DA04:
	add r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _0223DAB4
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223DA5A
	add r0, r4, #0
	bl ov62_022318E8
	add r0, r5, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r5, #0
	bl sub_020181C4
	b _0223DAB4
_0223DA5A:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223DAB4
_0223DA8C:
	add r0, r4, #0
	bl ov62_0223CBE0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
_0223DAB4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223DABC: .word 0x00000117
_0223DAC0: .word 0x00000565
_0223DAC4: .word 0x00000728
_0223DAC8: .word 0x0000072A
_0223DACC: .word 0x0000072B
_0223DAD0: .word 0x00000738
_0223DAD4: .word 0x0000088C
_0223DAD8: .word 0x0000072C
_0223DADC: .word 0x00000718
_0223DAE0: .word 0x00000714
_0223DAE4: .word 0x0000055F
	thumb_func_end ov62_0223D744

	thumb_func_start ov62_0223DAE8
ov62_0223DAE8: ; 0x0223DAE8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223DB00
	cmp r1, #1
	beq _0223DBAC
	b _0223DC0E
_0223DB00:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x21
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x22
	mov r3, #7
	bl sub_0200710C
	add r0, r5, #0
	bl ov62_0223D004
	add r0, r5, #0
	bl ov62_0223D160
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223DC1C ; =0x0000047C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #2
	bl ov62_022335BC
	add r0, r5, #0
	bl ov62_0223CAEC
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223CF2C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223DC14
_0223DBAC:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223DBDC
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223DBDC:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223DC14
_0223DC0E:
	mov r1, #6
	bl ov62_0222FB60
_0223DC14:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223DC1C: .word 0x0000047C
	thumb_func_end ov62_0223DAE8

	thumb_func_start ov62_0223DC20
ov62_0223DC20: ; 0x0223DC20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _0223DC60 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223DC64 ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022332AC
	ldr r0, _0223DC68 ; =0x00000748
	add r1, r5, #0
	ldr r0, [r4, r0]
	str r0, [sp]
	ldr r0, _0223DC64 ; =0x0000049C
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x14]
	add r0, r5, r0
	bl ov62_02232C78
	add r4, #0xdc
	ldr r0, [r4, #0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223DC60: .word 0x0000047C
_0223DC64: .word 0x0000049C
_0223DC68: .word 0x00000748
	thumb_func_end ov62_0223DC20

	thumb_func_start ov62_0223DC6C
ov62_0223DC6C: ; 0x0223DC6C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223DC82
	cmp r1, #1
	beq _0223DCD8
	b _0223DD2A
_0223DC82:
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223DD34 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233600
	ldr r0, _0223DD38 ; =0x0000049C
	add r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223DD3C ; =0x00000748
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223DCA4
	bl sub_020237BC
_0223DCA4:
	ldr r0, _0223DD38 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_022334FC
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, _0223DD40 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0208B9E0
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223DD30
_0223DCD8:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223DCF8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223DCF8:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223DD30
_0223DD2A:
	mov r1, #8
	bl ov62_0222FB60
_0223DD30:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223DD34: .word 0x0000047C
_0223DD38: .word 0x0000049C
_0223DD3C: .word 0x00000748
_0223DD40: .word 0x000006F4
	thumb_func_end ov62_0223DC6C

	thumb_func_start ov62_0223DD44
ov62_0223DD44: ; 0x0223DD44
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223DD5A
	cmp r1, #1
	beq _0223DD8A
	b _0223DDD6
_0223DD5A:
	bl ov62_0223CFE0
	add r0, r5, #0
	bl ov62_0223D100
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223D4E4
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r4, #0xdc
	ldr r0, [r4, #0]
	bl sub_02024034
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223DE5A
_0223DD8A:
	mov r1, #1
	bl ov62_02234540
	add r4, #8
	add r0, r4, #0
	bl ov62_02231688
	add r0, r5, #0
	bl ov62_0223146C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223DE5A
_0223DDD6:
	bl ov62_02233790
	cmp r0, #0
	beq _0223DE5A
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223DE2A
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r4, #0
	bl sub_020181C4
	b _0223DE5A
_0223DE2A:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223DE5A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223DD44

	thumb_func_start ov62_0223DE60
ov62_0223DE60: ; 0x0223DE60
	push {r3, lr}
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0223DE60

	thumb_func_start ov62_0223DE6C
ov62_0223DE6C: ; 0x0223DE6C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223DE86
	cmp r1, #1
	beq _0223DEBC
	cmp r1, #2
	beq _0223DED4
	b _0223DEFE
_0223DE86:
	bl ov62_0223CBE0
	add r0, r4, #0
	bl ov62_0223D518
	add r0, r5, #0
	bl ov62_0223D100
	ldr r0, _0223DF08 ; =0x0000049C
	add r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223DF0C ; =0x00000748
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223DEAA
	bl sub_020237BC
_0223DEAA:
	ldr r0, _0223DF08 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_022334FC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223DF04
_0223DEBC:
	mov r2, #1
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223DF04
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223DF04
_0223DED4:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223DF04
	add r0, r5, #0
	bl ov62_0223D004
	add r0, r5, #0
	bl ov62_0223D160
	add r0, r5, #0
	bl ov62_0223CAEC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223DF04
_0223DEFE:
	mov r1, #6
	bl ov62_0222FB60
_0223DF04:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223DF08: .word 0x0000049C
_0223DF0C: .word 0x00000748
	thumb_func_end ov62_0223DE6C

	thumb_func_start ov62_0223DF10
ov62_0223DF10: ; 0x0223DF10
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r1, [r1, #0]
	ldr r4, [r0, r2]
	cmp r1, #1
	bne _0223DF2A
	mov r0, #0x71
	lsl r0, r0, #4
	add r1, r4, r0
	add r0, #0xc
	str r1, [r4, r0]
	pop {r4, pc}
_0223DF2A:
	bl ov62_0224112C
	ldr r1, _0223DF48 ; =0x0000071C
	add r1, r4, r1
	bl ov61_0222BD78
	ldr r1, _0223DF48 ; =0x0000071C
	mov r2, #4
	ldr r0, [r4, r1]
	sub r1, #0xc
	add r1, r4, r1
	bl MI_CpuCopy8
	pop {r4, pc}
	nop
_0223DF48: .word 0x0000071C
	thumb_func_end ov62_0223DF10

	thumb_func_start ov62_0223DF4C
ov62_0223DF4C: ; 0x0223DF4C
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r1, [r1, #0]
	ldr r4, [r0, r2]
	cmp r1, #1
	bne _0223DF6E
	add r1, r4, #0
	ldr r0, _0223DF9C ; =0x00000714
	add r1, #0xe0
	str r1, [r4, r0]
	add r1, r0, #0
	sub r1, #0xdc
	add r1, r4, r1
	add r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
_0223DF6E:
	bl ov62_0224112C
	ldr r2, _0223DF9C ; =0x00000714
	add r1, r4, r2
	add r2, r2, #4
	add r2, r4, r2
	bl ov61_0222BDAC
	ldr r0, _0223DF9C ; =0x00000714
	add r1, r4, #0
	ldr r0, [r4, r0]
	ldr r2, _0223DFA0 ; =0x00000558
	add r1, #0xe0
	bl MI_CpuCopy8
	ldr r1, _0223DFA4 ; =0x00000718
	mov r2, #0xd8
	ldr r0, [r4, r1]
	sub r1, #0xe0
	add r1, r4, r1
	bl MI_CpuCopy8
	pop {r4, pc}
	; .align 2, 0
_0223DF9C: .word 0x00000714
_0223DFA0: .word 0x00000558
_0223DFA4: .word 0x00000718
	thumb_func_end ov62_0223DF4C

	.rodata


	.global Unk_ov62_02248E88
Unk_ov62_02248E88: ; 0x02248E88
	.incbin "incbin/overlay62_rodata.bin", 0x75C, 0x768 - 0x75C

	.global Unk_ov62_02248E94
Unk_ov62_02248E94: ; 0x02248E94
	.incbin "incbin/overlay62_rodata.bin", 0x768, 0x774 - 0x768

	.global Unk_ov62_02248EA0
Unk_ov62_02248EA0: ; 0x02248EA0
	.incbin "incbin/overlay62_rodata.bin", 0x774, 0x794 - 0x774

	.global Unk_ov62_02248EC0
Unk_ov62_02248EC0: ; 0x02248EC0
	.incbin "incbin/overlay62_rodata.bin", 0x794, 0x7B4 - 0x794

	.global Unk_ov62_02248EE0
Unk_ov62_02248EE0: ; 0x02248EE0
	.incbin "incbin/overlay62_rodata.bin", 0x7B4, 0x7D4 - 0x7B4

	.global Unk_ov62_02248F00
Unk_ov62_02248F00: ; 0x02248F00
	.incbin "incbin/overlay62_rodata.bin", 0x7D4, 0x800 - 0x7D4

	.global Unk_ov62_02248F2C
Unk_ov62_02248F2C: ; 0x02248F2C
	.incbin "incbin/overlay62_rodata.bin", 0x800, 0x82C - 0x800

	.global Unk_ov62_02248F58
Unk_ov62_02248F58: ; 0x02248F58
	.incbin "incbin/overlay62_rodata.bin", 0x82C, 0x24


	.data


	.global Unk_ov62_022497E8
Unk_ov62_022497E8: ; 0x022497E8
	.incbin "incbin/overlay62_data.bin", 0x28, 0x15C

