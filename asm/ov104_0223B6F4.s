	.include "macros/function.inc"
	.include "include/ov104_0223B6F4.inc"

	

	.text


	thumb_func_start ov104_0223B6F4
ov104_0223B6F4: ; 0x0223B6F4
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _0223B712
	mov r0, #7
	add r3, r2, #1
	mul r0, r1
	add r0, r3, r0
	cmp r0, #0x15
	bne _0223B70A
	ldr r0, _0223B748 ; =0x00000139
	pop {r3, r4, r5, pc}
_0223B70A:
	cmp r0, #0x31
	bne _0223B712
	ldr r0, _0223B74C ; =0x0000013A
	pop {r3, r4, r5, pc}
_0223B712:
	cmp r1, #8
	blo _0223B718
	mov r1, #7
_0223B718:
	cmp r2, #6
	beq _0223B720
	cmp r2, #0xd
	bne _0223B72E
_0223B720:
	ldr r0, _0223B750 ; =0x0224125C
	lsl r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223B754 ; =0x0224125E
	ldrh r0, [r0, r1]
	sub r5, r0, r4
	b _0223B73A
_0223B72E:
	ldr r0, _0223B758 ; =0x02241258
	lsl r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223B75C ; =0x0224125A
	ldrh r0, [r0, r1]
	sub r5, r0, r4
_0223B73A:
	bl sub_0201D2E8
	add r1, r5, #0
	bl _s32_div_f
	add r0, r4, r1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B748: .word 0x00000139
_0223B74C: .word 0x0000013A
_0223B750: .word 0x0224125C
_0223B754: .word 0x0224125E
_0223B758: .word 0x02241258
_0223B75C: .word 0x0224125A
	thumb_func_end ov104_0223B6F4

	thumb_func_start ov104_0223B760
ov104_0223B760: ; 0x0223B760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r7, r3, #0
	mov r4, #0
	add r5, r6, #0
_0223B770:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov104_0223B6F4
	mov r1, #0
	strh r0, [r5]
	cmp r4, #0
	ble _0223B796
	lsl r0, r4, #1
	ldrh r3, [r6, r0]
	add r2, r6, #0
_0223B788:
	ldrh r0, [r2]
	cmp r0, r3
	beq _0223B796
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, r4
	blt _0223B788
_0223B796:
	cmp r1, r4
	bne _0223B79E
	add r5, r5, #2
	add r4, r4, #1
_0223B79E:
	cmp r4, r7
	blt _0223B770
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223B760

	thumb_func_start ov104_0223B7A8
ov104_0223B7A8: ; 0x0223B7A8
	push {r3, lr}
	cmp r0, #3
	bhi _0223B7D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B7BA: ; jump table
	.short _0223B7C2 - _0223B7BA - 2 ; case 0
	.short _0223B7C2 - _0223B7BA - 2 ; case 1
	.short _0223B7C6 - _0223B7BA - 2 ; case 2
	.short _0223B7C6 - _0223B7BA - 2 ; case 3
_0223B7C2:
	mov r0, #3
	pop {r3, pc}
_0223B7C6:
	cmp r1, #0
	bne _0223B7CE
	mov r0, #2
	pop {r3, pc}
_0223B7CE:
	mov r0, #4
	pop {r3, pc}
_0223B7D2:
	bl GF_AssertFail
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223B7A8

	thumb_func_start ov104_0223B7DC
ov104_0223B7DC: ; 0x0223B7DC
	push {r3, lr}
	cmp r0, #3
	bhi _0223B806
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B7EE: ; jump table
	.short _0223B7F6 - _0223B7EE - 2 ; case 0
	.short _0223B7F6 - _0223B7EE - 2 ; case 1
	.short _0223B7FA - _0223B7EE - 2 ; case 2
	.short _0223B7FA - _0223B7EE - 2 ; case 3
_0223B7F6:
	mov r0, #3
	pop {r3, pc}
_0223B7FA:
	cmp r1, #0
	bne _0223B802
	mov r0, #2
	pop {r3, pc}
_0223B802:
	mov r0, #4
	pop {r3, pc}
_0223B806:
	bl GF_AssertFail
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223B7DC

	thumb_func_start ov104_0223B810
ov104_0223B810: ; 0x0223B810
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	add r6, r1, #0
	mov r1, #0
	bl ov104_0223B7A8
	str r0, [sp, #0x14]
	ldrb r0, [r5, #0x10]
	mov r1, #0
	bl ov104_0223B7DC
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	bl sub_02097284
	ldrb r0, [r5, #0x10]
	bl ov104_0223B9E4
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02051D8C
	ldr r1, [r6, #0xc]
	add r4, r0, #0
	str r1, [sp]
	ldr r1, [r6, #0x10]
	str r1, [sp, #4]
	ldr r1, [r6, #0x20]
	str r1, [sp, #8]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x1c]
	mov r1, #0
	bl sub_020521B8
	mov r1, #0x15
	lsl r0, r1, #4
	str r1, [r4, r0]
	mov r0, #0x55
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	bl sub_0207A014
	bl sub_0203608C
	cmp r0, #0
	bne _0223B878
	mov r6, #0
	b _0223B87A
_0223B878:
	mov r6, #2
_0223B87A:
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0223B8B2
_0223B88C:
	ldr r0, [r5, #0x28]
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r7, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_0205213C
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _0223B88C
_0223B8B2:
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02052894
	ldrb r1, [r5, #0x11]
	add r0, sp, #0x1c
	mov r2, #0xb
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x30]
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	mov r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x1c
	mov r3, #1
	bl ov104_0222E284
	ldrb r0, [r5, #0x10]
	mov r1, #0
	bl ov104_0223B7DC
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_0207A014
	mov r7, #0
	add r6, r4, #0
_0223B8F8:
	add r0, r5, #0
	bl ov104_0223BB10
	str r0, [r6, #0x34]
	add r7, r7, #1
	add r6, #0x34
	cmp r7, #4
	blt _0223B8F8
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0223B938
_0223B918:
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r7, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_0205213C
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	cmp r6, r0
	blt _0223B918
_0223B938:
	add r0, r7, #0
	bl sub_020181C4
	ldrb r0, [r5, #0x10]
	cmp r0, #2
	beq _0223B948
	cmp r0, #3
	bne _0223B9DC
_0223B948:
	add r0, r4, #0
	bl sub_02052894
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_02032EE8
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r4, r1]
	bl sub_02025E80
	ldrb r1, [r5, #0x11]
	add r0, sp, #0x1c
	mov r2, #0xb
	add r1, r1, #7
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x30]
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	mov r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x1c
	mov r3, #3
	bl ov104_0222E284
	ldrb r0, [r5, #0x10]
	mov r1, #0
	bl ov104_0223B7DC
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0207A014
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223B9D6
	add r6, r0, #0
_0223B9B0:
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r7, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	bl sub_0205213C
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223B9B0
_0223B9D6:
	add r0, r7, #0
	bl sub_020181C4
_0223B9DC:
	add r0, r4, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223B810

	thumb_func_start ov104_0223B9E4
ov104_0223B9E4: ; 0x0223B9E4
	cmp r0, #3
	bhi _0223BA0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B9F4: ; jump table
	.short _0223B9FC - _0223B9F4 - 2 ; case 0
	.short _0223BA00 - _0223B9F4 - 2 ; case 1
	.short _0223BA04 - _0223B9F4 - 2 ; case 2
	.short _0223BA08 - _0223B9F4 - 2 ; case 3
_0223B9FC:
	mov r0, #0x81
	bx lr
_0223BA00:
	mov r0, #0x83
	bx lr
_0223BA04:
	mov r0, #0x8f
	bx lr
_0223BA08:
	mov r0, #0x8f
	bx lr
_0223BA0C:
	mov r0, #0x81
	bx lr
	thumb_func_end ov104_0223B9E4

	thumb_func_start ov104_0223BA10
ov104_0223BA10: ; 0x0223BA10
	mov r0, #0x32
	bx lr
	thumb_func_end ov104_0223BA10

	thumb_func_start ov104_0223BA14
ov104_0223BA14: ; 0x0223BA14
	cmp r0, #2
	beq _0223BA1C
	cmp r0, #3
	bne _0223BA20
_0223BA1C:
	mov r0, #1
	bx lr
_0223BA20:
	mov r0, #0
	bx lr
	thumb_func_end ov104_0223BA14

	thumb_func_start ov104_0223BA24
ov104_0223BA24: ; 0x0223BA24
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0223BA7A
_0223BA34:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xac
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223BA74
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223BA66
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #0
	bl sub_02074B30
_0223BA66:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #0
	bl sub_02074B30
_0223BA74:
	add r4, r4, #1
	cmp r4, r6
	blt _0223BA34
_0223BA7A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223BA24

	thumb_func_start ov104_0223BA7C
ov104_0223BA7C: ; 0x0223BA7C
	push {r4, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r4, r1, #0
	bl sub_02025E38
	mov r3, #0
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #4
	bl sub_02077EE4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223BA7C

	thumb_func_start ov104_0223BAA0
ov104_0223BAA0: ; 0x0223BAA0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r1, r4, #0
	bl ov104_0223BA7C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A048
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223BAA0

	thumb_func_start ov104_0223BAB8
ov104_0223BAB8: ; 0x0223BAB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_0207A008
	ldrb r0, [r5, #0x10]
	mov r1, #1
	bl ov104_0223B7DC
	str r0, [sp]
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0
	ble _0223BB06
	mov r0, #0xa2
	lsl r0, r0, #2
	add r4, r5, r0
_0223BAE2:
	add r0, r5, #0
	bl ov104_0223BA10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0222DF40
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	add r2, r6, #0
	bl ov104_0223BAA0
	ldr r0, [sp]
	add r7, r7, #1
	add r4, #0x38
	cmp r7, r0
	blt _0223BAE2
_0223BB06:
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223BAB8

	thumb_func_start ov104_0223BB10
ov104_0223BB10: ; 0x0223BB10
	push {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	bne _0223BB30
	ldrb r1, [r0, #0x11]
	lsl r1, r1, #1
	add r1, r0, r1
	ldrh r2, [r1, #0x30]
	ldr r1, _0223BB5C ; =0x0000FEC7
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _0223BB30
	mov r0, #7
	pop {r3, pc}
_0223BB30:
	bl ov104_0223BB60
	add r0, r0, #1
	mov r1, #7
	cmp r0, #4
	bhi _0223BB58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BB48: ; jump table
	.short _0223BB58 - _0223BB48 - 2 ; case 0
	.short _0223BB52 - _0223BB48 - 2 ; case 1
	.short _0223BB52 - _0223BB48 - 2 ; case 2
	.short _0223BB56 - _0223BB48 - 2 ; case 3
	.short _0223BB56 - _0223BB48 - 2 ; case 4
_0223BB52:
	mov r1, #0
	b _0223BB58
_0223BB56:
	mov r1, #1
_0223BB58:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
_0223BB5C: .word 0x0000FEC7
	thumb_func_end ov104_0223BB10

	thumb_func_start ov104_0223BB60
ov104_0223BB60: ; 0x0223BB60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	ldrh r4, [r5, #0x16]
	bl ov104_0223BA14
	cmp r0, #1
	bne _0223BB7C
	ldr r0, _0223BB80 ; =0x00000A12
	ldrh r1, [r5, r0]
	ldrh r0, [r5, #0x16]
	cmp r1, r0
	bls _0223BB7C
	add r4, r1, #0
_0223BB7C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BB80: .word 0x00000A12
	thumb_func_end ov104_0223BB60

	thumb_func_start ov104_0223BB84
ov104_0223BB84: ; 0x0223BB84
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl ov104_0223BB60
	add r1, r0, #0
	add r0, sp, #0xc
	bl ov104_0223BBC4
	mov r0, #6
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #3
	lsl r1, r4, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, sp, #0xc
	mov r3, #0xb
	bl sub_020198C0
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0x48
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223BB84

	thumb_func_start ov104_0223BBC4
ov104_0223BBC4: ; 0x0223BBC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r0, r1, #0
	bl ov104_0223BC24
	mov r3, #0
	add r4, sp, #4
	mov r1, #4
_0223BBD6:
	strb r3, [r4]
	sub r2, r1, r3
	strb r2, [r4, #5]
	add r3, r3, #1
	add r4, r4, #1
	cmp r3, #5
	blo _0223BBD6
	mov r1, #0x60
	mov r7, #0
	mul r1, r0
	mov r5, #1
	add r1, #0x10
	add r2, r7, #0
	lsl r5, r5, #0xa
_0223BBF2:
	ldr r4, [sp]
	lsl r6, r2, #1
	mov r0, #0
	add r3, sp, #4
	add r4, r4, r6
_0223BBFC:
	ldrb r6, [r3]
	add r6, r6, r1
	strh r6, [r4]
	cmp r0, #5
	blo _0223BC0C
	ldrh r6, [r4]
	orr r6, r5
	strh r6, [r4]
_0223BC0C:
	add r0, r0, #1
	add r3, r3, #1
	add r4, r4, #2
	cmp r0, #0xa
	blo _0223BBFC
	add r7, r7, #1
	add r1, #0x20
	add r2, #0xa
	cmp r7, #3
	blo _0223BBF2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223BBC4

	thumb_func_start ov104_0223BC24
ov104_0223BC24: ; 0x0223BC24
	cmp r0, #8
	blo _0223BC2A
	mov r0, #7
_0223BC2A:
	bx lr
	thumb_func_end ov104_0223BC24

	thumb_func_start ov104_0223BC2C
ov104_0223BC2C: ; 0x0223BC2C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0205E630
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r3, r6, #0
	bl sub_02030824
	add r0, r4, #0
	bl sub_0205E658
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205E658
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02030698
	add r1, r0, r6
	ldr r0, _0223BCB8 ; =0x0000270F
	cmp r1, r0
	ble _0223BC96
	add r0, r4, #0
	bl sub_0205E658
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E658
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r3, _0223BCB8 ; =0x0000270F
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020306E4
	pop {r3, r4, r5, r6, r7, pc}
_0223BC96:
	add r0, r4, #0
	bl sub_0205E658
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205E658
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r3, r6, #0
	bl sub_02030804
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BCB8: .word 0x0000270F
	thumb_func_end ov104_0223BC2C

	.rodata


	.global Unk_ov104_02241258
Unk_ov104_02241258: ; 0x02241258
	.incbin "incbin/overlay104_rodata.bin", 0x1FC8, 0x40

