	.include "macros/function.inc"
	.include "overlay101/ov101_021D7E48.inc"

	

	.text


	thumb_func_start ov101_021D7E48
ov101_021D7E48: ; 0x021D7E48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	ldr r1, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #0x28]
	mov r1, #0x57
	lsl r1, r1, #2
	str r2, [sp, #8]
	add r7, r3, #0
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl sub_02018144
	add r4, r0, #0
	bne _021D7E6C
	bl GF_AssertFail
_021D7E6C:
	ldr r0, [sp]
	add r1, r4, #0
	str r0, [r4, #0]
	strb r7, [r4, #4]
	strb r5, [r4, #5]
	ldr r0, [sp, #0x28]
	strb r6, [r4, #6]
	strb r0, [r4, #7]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x30]
	add r1, #0x10
	strb r0, [r4, #9]
	ldr r0, [sp, #0x34]
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x38]
	strb r0, [r4, #0xb]
	ldr r0, [sp, #4]
	bl sub_020095C4
	str r0, [r4, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_0201DCC8
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_0201DBEC
	ldr r2, [sp]
	add r0, r7, #0
	mov r1, #0
	bl sub_02009714
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, [sp]
	add r0, r5, #0
	mov r1, #1
	bl sub_02009714
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r2, [sp]
	add r0, r6, #0
	mov r1, #2
	bl sub_02009714
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x28]
	ldr r2, [sp]
	mov r1, #3
	bl sub_02009714
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	lsl r1, r7, #3
	bl sub_02018144
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	lsl r1, r5, #3
	bl sub_02018144
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [sp]
	lsl r1, r6, #3
	bl sub_02018144
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [sp, #0x28]
	ldr r0, [sp]
	lsl r1, r1, #3
	bl sub_02018144
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #0
	cmp r7, #0
	bls _021D7F48
	bls _021D7F48
	ldr r0, [sp, #0x2c]
	add r2, r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_021D7F38:
	mov r3, #0x53
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	add r1, r1, #1
	strh r0, [r3, r2]
	add r2, #8
	cmp r1, r7
	blo _021D7F38
_021D7F48:
	mov r3, #0
	cmp r5, #0
	bls _021D7F68
	bls _021D7F68
	ldr r0, [sp, #0x30]
	mov r7, #0x15
	lsl r0, r0, #0x10
	add r2, r3, #0
	lsr r1, r0, #0x10
	lsl r7, r7, #4
_021D7F5C:
	ldr r0, [r4, r7]
	add r3, r3, #1
	strh r1, [r0, r2]
	add r2, #8
	cmp r3, r5
	blo _021D7F5C
_021D7F68:
	mov r1, #0
	cmp r6, #0
	bls _021D7F88
	bls _021D7F88
	ldr r2, [sp, #0x34]
	add r0, r1, #0
	lsl r2, r2, #0x10
	lsr r5, r2, #0x10
	mov r2, #0x55
	lsl r2, r2, #2
_021D7F7C:
	ldr r3, [r4, r2]
	add r1, r1, #1
	strh r5, [r3, r0]
	add r0, #8
	cmp r1, r6
	blo _021D7F7C
_021D7F88:
	ldr r0, [sp, #0x28]
	mov r1, #0
	cmp r0, #0
	bls _021D7FAC
	bls _021D7FAC
	ldr r2, [sp, #0x38]
	mov r3, #0x56
	lsl r2, r2, #0x10
	add r0, r1, #0
	lsr r5, r2, #0x10
	lsl r3, r3, #2
_021D7F9E:
	ldr r2, [r4, r3]
	add r1, r1, #1
	strh r5, [r2, r0]
	ldr r2, [sp, #0x28]
	add r0, #8
	cmp r1, r2
	blo _021D7F9E
_021D7FAC:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7E48

	thumb_func_start ov101_021D7FB4
ov101_021D7FB4: ; 0x021D7FB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	bls _021D7FE2
	mov r7, #0x53
	add r4, r6, #0
	lsl r7, r7, #2
_021D7FC6:
	ldr r1, [r5, r7]
	ldrb r2, [r5, #8]
	add r0, r1, r4
	ldrh r1, [r1, r4]
	cmp r2, r1
	beq _021D7FD8
	ldr r0, [r0, #4]
	bl sub_0200A4E4
_021D7FD8:
	ldrb r0, [r5, #4]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _021D7FC6
_021D7FE2:
	ldrb r0, [r5, #5]
	mov r6, #0
	cmp r0, #0
	bls _021D800C
	mov r7, #0x15
	add r4, r6, #0
	lsl r7, r7, #4
_021D7FF0:
	ldr r1, [r5, r7]
	ldrb r2, [r5, #9]
	add r0, r1, r4
	ldrh r1, [r1, r4]
	cmp r2, r1
	beq _021D8002
	ldr r0, [r0, #4]
	bl sub_0200A6DC
_021D8002:
	ldrb r0, [r5, #5]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _021D7FF0
_021D800C:
	ldrb r0, [r5, #6]
	mov r6, #0
	cmp r0, #0
	bls _021D8036
	mov r7, #0x55
	add r4, r6, #0
	lsl r7, r7, #2
_021D801A:
	ldr r1, [r5, r7]
	ldrb r2, [r5, #0xa]
	add r0, r1, r4
	ldrh r1, [r1, r4]
	cmp r2, r1
	beq _021D802C
	ldr r0, [r0, #4]
	bl sub_02009D4C
_021D802C:
	ldrb r0, [r5, #6]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _021D801A
_021D8036:
	ldrb r0, [r5, #7]
	mov r6, #0
	cmp r0, #0
	bls _021D8060
	mov r7, #0x56
	add r4, r6, #0
	lsl r7, r7, #2
_021D8044:
	ldr r1, [r5, r7]
	ldrb r2, [r5, #0xb]
	add r0, r1, r4
	ldrh r1, [r1, r4]
	cmp r2, r1
	beq _021D8056
	ldr r0, [r0, #4]
	bl sub_02009D4C
_021D8056:
	ldrb r0, [r5, #7]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _021D8044
_021D8060:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	bl sub_0201DC3C
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0201DCF0
	ldr r0, [r5, #0xc]
	bl sub_020219C0
	ldr r0, [r5, #0xc]
	bl sub_02021964
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7FB4

	thumb_func_start ov101_021D80D4
ov101_021D80D4: ; 0x021D80D4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020219F8
	bl sub_0201DCE8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D80D4

	thumb_func_start ov101_021D80E4
ov101_021D80E4: ; 0x021D80E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r5, [r4, #4]
	add r7, r1, #0
	mov r1, #0
	str r2, [sp, #0xc]
	mov ip, r3
	cmp r5, #0
	bls _021D8144
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	ldrb r3, [r4, #8]
	add r2, r6, #0
_021D8102:
	ldrh r0, [r2]
	cmp r3, r0
	bne _021D813C
	ldr r0, [sp, #0x28]
	lsl r5, r1, #3
	mov r1, #0x53
	strh r0, [r6, r5]
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r3, #0
	add r2, r2, r5
	strh r3, [r2, #2]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r4, #0]
	sub r1, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	ldr r1, [sp, #0xc]
	mov r2, ip
	bl sub_02009A4C
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add sp, #0x10
	add r1, r1, r5
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021D813C:
	add r1, r1, #1
	add r2, #8
	cmp r1, r5
	blo _021D8102
_021D8144:
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D80E4

	thumb_func_start ov101_021D814C
ov101_021D814C: ; 0x021D814C
	push {r3, r4, r5, lr}
	ldrb r2, [r0, #4]
	mov r4, #0
	cmp r2, #0
	bls _021D8178
	mov r3, #0x53
	lsl r3, r3, #2
	ldr r5, [r0, r3]
	add r3, r5, #0
_021D815E:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021D8170
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_0200A3DC
	pop {r3, r4, r5, pc}
_021D8170:
	add r4, r4, #1
	add r3, #8
	cmp r4, r2
	blo _021D815E
_021D8178:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D814C

	thumb_func_start ov101_021D8180
ov101_021D8180: ; 0x021D8180
	push {r3, r4, r5, lr}
	ldrb r2, [r0, #4]
	mov r4, #0
	cmp r2, #0
	bls _021D81AC
	mov r3, #0x53
	lsl r3, r3, #2
	ldr r5, [r0, r3]
	add r3, r5, #0
_021D8192:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021D81A4
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_02009D4C
	pop {r3, r4, r5, pc}
_021D81A4:
	add r4, r4, #1
	add r3, #8
	cmp r4, r2
	blo _021D8192
_021D81AC:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D8180

	thumb_func_start ov101_021D81B4
ov101_021D81B4: ; 0x021D81B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldrb r5, [r4, #4]
	add r7, r1, #0
	mov r1, #0
	str r2, [sp, #0x10]
	mov ip, r3
	cmp r5, #0
	bls _021D8218
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r6, [r4, r0]
	ldrb r3, [r4, #9]
	add r2, r6, #0
_021D81D2:
	ldrh r0, [r2]
	cmp r3, r0
	bne _021D8210
	ldr r0, [sp, #0x28]
	lsl r5, r1, #3
	mov r1, #0x15
	strh r0, [r6, r5]
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	mov r3, #0
	add r2, r2, r5
	strh r3, [r2, #2]
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	sub r1, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	ldr r1, [sp, #0x10]
	mov r2, ip
	bl sub_02009B04
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add sp, #0x14
	add r1, r1, r5
	str r0, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_021D8210:
	add r1, r1, #1
	add r2, #8
	cmp r1, r5
	blo _021D81D2
_021D8218:
	bl GF_AssertFail
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D81B4

	thumb_func_start ov101_021D8220
ov101_021D8220: ; 0x021D8220
	push {r3, r4, r5, lr}
	ldrb r2, [r0, #5]
	mov r4, #0
	cmp r2, #0
	bls _021D824C
	mov r3, #0x15
	lsl r3, r3, #4
	ldr r5, [r0, r3]
	add r3, r5, #0
_021D8232:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021D8244
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_0200A640
	pop {r3, r4, r5, pc}
_021D8244:
	add r4, r4, #1
	add r3, #8
	cmp r4, r2
	blo _021D8232
_021D824C:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D8220

	thumb_func_start ov101_021D8254
ov101_021D8254: ; 0x021D8254
	push {r3, r4, r5, lr}
	ldrb r2, [r0, #5]
	mov r4, #0
	cmp r2, #0
	bls _021D8280
	mov r3, #0x15
	lsl r3, r3, #4
	ldr r5, [r0, r3]
	add r3, r5, #0
_021D8266:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021D8278
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_02009D4C
	pop {r3, r4, r5, pc}
_021D8278:
	add r4, r4, #1
	add r3, #8
	cmp r4, r2
	blo _021D8266
_021D8280:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D8254

	thumb_func_start ov101_021D8288
ov101_021D8288: ; 0x021D8288
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r5, [r4, #4]
	str r1, [sp, #0xc]
	mov ip, r2
	add r6, r3, #0
	mov r1, #0
	cmp r5, #0
	bls _021D82E8
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r7, [r4, r0]
	ldrb r3, [r4, #0xa]
	add r2, r7, #0
_021D82A6:
	ldrh r0, [r2]
	cmp r3, r0
	bne _021D82E0
	lsl r5, r1, #3
	mov r0, #0x55
	strh r6, [r7, r5]
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r3, #0
	add r1, r1, r5
	strh r3, [r1, #2]
	str r6, [sp]
	mov r1, #2
	str r1, [sp, #4]
	ldr r1, [r4, #0]
	sub r0, #0x10
	str r1, [sp, #8]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0xc]
	mov r2, ip
	bl sub_02009BC4
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add sp, #0x10
	add r1, r1, r5
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021D82E0:
	add r1, r1, #1
	add r2, #8
	cmp r1, r5
	blo _021D82A6
_021D82E8:
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D8288

	thumb_func_start ov101_021D82F0
ov101_021D82F0: ; 0x021D82F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r5, [r4, #4]
	str r1, [sp, #0xc]
	mov ip, r2
	add r6, r3, #0
	mov r1, #0
	cmp r5, #0
	bls _021D8350
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r7, [r4, r0]
	ldrb r3, [r4, #0xb]
	add r2, r7, #0
_021D830E:
	ldrh r0, [r2]
	cmp r3, r0
	bne _021D8348
	lsl r5, r1, #3
	mov r0, #0x56
	strh r6, [r7, r5]
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r3, #0
	add r1, r1, r5
	strh r3, [r1, #2]
	str r6, [sp]
	mov r1, #3
	str r1, [sp, #4]
	ldr r1, [r4, #0]
	sub r0, #0x10
	str r1, [sp, #8]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0xc]
	mov r2, ip
	bl sub_02009BC4
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add sp, #0x10
	add r1, r1, r5
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021D8348:
	add r1, r1, #1
	add r2, #8
	cmp r1, r5
	blo _021D830E
_021D8350:
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D82F0

	thumb_func_start ov101_021D8358
ov101_021D8358: ; 0x021D8358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	ldrb r1, [r4, #8]
	add r7, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x20]
	cmp r0, r1
	beq _021D83B4
	ldrb r5, [r4, #4]
	mov r2, #0
	cmp r5, #0
	bls _021D83B4
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	mov ip, r3
_021D837C:
	ldrh r1, [r3]
	cmp r0, r1
	bne _021D83AC
	lsl r5, r2, #3
	mov r0, ip
	add r0, r0, r5
	ldr r0, [r0, #4]
	bl sub_0200A4E4
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldr r1, [r4, r1]
	add r1, r1, r5
	ldr r1, [r1, #4]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #8]
	ldr r0, [r4, r0]
	strh r1, [r0, r5]
	b _021D83B4
_021D83AC:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blo _021D837C
_021D83B4:
	ldrb r0, [r4, #9]
	cmp r7, r0
	beq _021D8402
	ldrb r0, [r4, #5]
	mov r1, #0
	cmp r0, #0
	bls _021D8402
	mov r2, #0x15
	lsl r2, r2, #4
	ldr r3, [r4, r2]
	str r3, [sp, #4]
_021D83CA:
	ldrh r2, [r3]
	cmp r7, r2
	bne _021D83FA
	ldr r0, [sp, #4]
	lsl r5, r1, #3
	add r0, r0, r5
	ldr r0, [r0, #4]
	bl sub_0200A6DC
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	add r1, #0x10
	ldr r1, [r4, r1]
	add r1, r1, r5
	ldr r1, [r1, #4]
	bl sub_02009D68
	mov r0, #0x15
	lsl r0, r0, #4
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	strh r1, [r0, r5]
	b _021D8402
_021D83FA:
	add r1, r1, #1
	add r3, #8
	cmp r1, r0
	blo _021D83CA
_021D8402:
	ldrb r1, [r4, #0xa]
	ldr r0, [sp]
	cmp r0, r1
	beq _021D8452
	ldrb r3, [r4, #6]
	mov r5, #0
	cmp r3, #0
	bls _021D8452
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r7, [r4, r0]
	add r2, r7, #0
_021D841A:
	ldrh r1, [r2]
	ldr r0, [sp]
	cmp r0, r1
	bne _021D844A
	lsl r5, r5, #3
	add r0, r7, r5
	ldr r0, [r0, #4]
	bl sub_02009D4C
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldr r1, [r4, r1]
	add r1, r1, r5
	ldr r1, [r1, #4]
	bl sub_02009D68
	mov r0, #0x55
	lsl r0, r0, #2
	ldrb r1, [r4, #0xa]
	ldr r0, [r4, r0]
	strh r1, [r0, r5]
	b _021D8452
_021D844A:
	add r5, r5, #1
	add r2, #8
	cmp r5, r3
	blo _021D841A
_021D8452:
	ldrb r0, [r4, #0xb]
	cmp r6, r0
	beq _021D84A0
	ldrb r1, [r4, #7]
	mov r2, #0
	cmp r1, #0
	bls _021D84A0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r5, r0, #0
_021D8468:
	ldrh r3, [r5]
	cmp r6, r3
	bne _021D8498
	lsl r5, r2, #3
	add r0, r0, r5
	ldr r0, [r0, #4]
	bl sub_02009D4C
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldr r1, [r4, r1]
	add r1, r1, r5
	ldr r1, [r1, #4]
	bl sub_02009D68
	mov r0, #0x56
	lsl r0, r0, #2
	ldrb r1, [r4, #0xb]
	ldr r0, [r4, r0]
	add sp, #8
	strh r1, [r0, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D8498:
	add r2, r2, #1
	add r5, #8
	cmp r2, r1
	blo _021D8468
_021D84A0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D8358

	thumb_func_start ov101_021D84A4
ov101_021D84A4: ; 0x021D84A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r0, #0
	ldrb r0, [r5, #0xb]
	add r4, r1, #0
	ldr r1, [sp, #0x98]
	add r6, r2, #0
	add r7, r3, #0
	cmp r1, r0
	bne _021D84BE
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x98]
_021D84BE:
	ldr r0, [sp, #0x98]
	mov r1, #0x4f
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x88]
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	ldr r2, [sp, #0x90]
	str r0, [sp, #0x10]
	ldr r0, [r5, r1]
	ldr r3, [sp, #0x94]
	str r0, [sp, #0x14]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x8c]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	bl sub_020093B4
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne _021D850E
	ldr r0, [sp, #0x4c]
	str r0, [r4, #8]
	mov r0, #1
	b _021D8510
_021D850E:
	mov r0, #0
_021D8510:
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	add r2, sp, #0x34
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0xa0]
	str r7, [sp, #0x44]
	str r0, [sp, #0x40]
	ldr r0, [r5, #0]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r4, #4]
	cmp r0, #0
	bne _021D853E
	bl GF_AssertFail
_021D853E:
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D84A4

	thumb_func_start ov101_021D8544
ov101_021D8544: ; 0x021D8544
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _021D8554
	ldr r0, [r4, #8]
	bl sub_0200A5B4
_021D8554:
	ldr r0, [r4, #4]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov101_021D8544

	thumb_func_start ov101_021D8560
ov101_021D8560: ; 0x021D8560
	push {r4, lr}
	add r4, r1, #0
	bl sub_02021D28
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov101_021D8560

	thumb_func_start ov101_021D8574
ov101_021D8574: ; 0x021D8574
	push {r4, lr}
	add r4, r1, #0
	bl sub_02021D2C
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov101_021D8574