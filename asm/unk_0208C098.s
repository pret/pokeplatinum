	.include "macros/function.inc"
	.include "include/unk_0208C098.inc"

	

	.text


	thumb_func_start sub_0208C098
sub_0208C098: ; 0x0208C098
	lsl r1, r0, #1
	ldr r0, _0208C0A0 ; =0x020F4030
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0208C0A0: .word 0x020F4030
	thumb_func_end sub_0208C098

	thumb_func_start sub_0208C0A4
sub_0208C0A4: ; 0x0208C0A4
	push {r3, lr}
	add r2, r0, #0
	mul r2, r0
	add r0, r1, #0
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #4
	bl SVC_Sqrt
	lsr r0, r0, #2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208C0A4

	thumb_func_start sub_0208C0BC
sub_0208C0BC: ; 0x0208C0BC
	push {r4, lr}
	add r4, r0, #0
	mul r0, r2
	bl _u32_div_f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _0208C0D2
	cmp r4, #0
	beq _0208C0D2
	mov r0, #1
_0208C0D2:
	pop {r4, pc}
	thumb_func_end sub_0208C0BC

	thumb_func_start sub_0208C0D4
sub_0208C0D4: ; 0x0208C0D4
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #8
	lsl r4, r4, #8
	lsr r1, r0, #1
	cmp r4, r1
	bls _0208C0E6
	mov r0, #3
	pop {r4, pc}
_0208C0E6:
	mov r1, #5
	bl _u32_div_f
	cmp r4, r0
	bls _0208C0F4
	mov r0, #2
	pop {r4, pc}
_0208C0F4:
	cmp r4, #0
	beq _0208C0FC
	mov r0, #1
	b _0208C0FE
_0208C0FC:
	mov r0, #0
_0208C0FE:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	thumb_func_end sub_0208C0D4

	thumb_func_start sub_0208C104
sub_0208C104: ; 0x0208C104
	push {r4, lr}
	add r4, r2, #0
	cmp r0, r1
	bne _0208C110
	mov r0, #4
	pop {r4, pc}
_0208C110:
	lsl r2, r4, #0x18
	lsr r2, r2, #0x18
	bl sub_0208C0BC
	add r1, r4, #0
	bl sub_0208C0D4
	pop {r4, pc}
	thumb_func_end sub_0208C104

	thumb_func_start sub_0208C120
sub_0208C120: ; 0x0208C120
	push {lr}
	sub sp, #0xc
	cmp r0, #0
	bne _0208C140
	mov r0, #6
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0
	str r1, [sp, #8]
	add r1, r2, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
_0208C140:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_0208C120

	thumb_func_start sub_0208C15C
sub_0208C15C: ; 0x0208C15C
	push {r4, r5}
	ldr r3, _0208C20C ; =0x021BF67C
	mov r2, #0
	ldr r3, [r3, #0x4c]
	mov r5, #0x40
	ldrsh r4, [r0, r2]
	tst r5, r3
	beq _0208C18E
	add r3, r4, #1
	strh r3, [r0]
	ldrsh r2, [r0, r2]
	cmp r2, r1
	ble _0208C17A
	mov r1, #1
	strh r1, [r0]
_0208C17A:
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _0208C188
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0208C188:
	mov r0, #1
	pop {r4, r5}
	bx lr
_0208C18E:
	mov r5, #0x80
	tst r5, r3
	beq _0208C1B4
	sub r3, r4, #1
	strh r3, [r0]
	ldrsh r2, [r0, r2]
	cmp r2, #0
	bgt _0208C1A0
	strh r1, [r0]
_0208C1A0:
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _0208C1AE
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0208C1AE:
	mov r0, #2
	pop {r4, r5}
	bx lr
_0208C1B4:
	mov r5, #0x20
	tst r5, r3
	beq _0208C1DE
	add r1, r4, #0
	sub r1, #0xa
	strh r1, [r0]
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bgt _0208C1CA
	mov r1, #1
	strh r1, [r0]
_0208C1CA:
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _0208C1D8
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0208C1D8:
	mov r0, #2
	pop {r4, r5}
	bx lr
_0208C1DE:
	mov r5, #0x10
	tst r3, r5
	beq _0208C206
	add r3, r4, #0
	add r3, #0xa
	strh r3, [r0]
	ldrsh r2, [r0, r2]
	cmp r2, r1
	ble _0208C1F2
	strh r1, [r0]
_0208C1F2:
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _0208C200
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0208C200:
	mov r0, #1
	pop {r4, r5}
	bx lr
_0208C206:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0208C20C: .word 0x021BF67C
	thumb_func_end sub_0208C15C

	thumb_func_start sub_0208C210
sub_0208C210: ; 0x0208C210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r2, #0
	str r2, [sp, #4]
	ldr r5, [sp, #0x34]
	ldr r4, [sp, #0x3c]
	bl sub_02006D84
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02018184
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl sub_02006D28
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _0208C24E
	cmp r0, #1
	beq _0208C27A
	cmp r0, #2
	beq _0208C2C4
	b _0208C2EA
_0208C24E:
	add r0, r7, #0
	add r1, sp, #0x14
	bl NNS_G2dGetUnpackedCharacterData
	cmp r4, #0
	bne _0208C262
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0208C262:
	add r0, sp, #0x20
	ldrh r0, [r0, #0x20]
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	str r0, [sp]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	ldr r2, [r2, #0x14]
	add r3, r4, #0
	bl sub_0201958C
	b _0208C2EA
_0208C27A:
	add r0, r7, #0
	add r1, sp, #0x10
	bl NNS_G2dGetUnpackedScreenData
	cmp r4, #0
	bne _0208C28E
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0208C28E:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02019FE4
	cmp r0, #0
	beq _0208C2AC
	ldr r2, [sp, #0x10]
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019574
_0208C2AC:
	add r0, sp, #0x20
	ldrh r0, [r0, #0x20]
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019460
	b _0208C2EA
_0208C2C4:
	add r0, r7, #0
	add r1, sp, #0xc
	bl NNS_G2dGetUnpackedPaletteData
	cmp r4, #0
	bne _0208C2D8
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0208C2D8:
	ldr r1, [sp, #0xc]
	add r3, sp, #0x20
	lsl r0, r5, #0x18
	ldrh r3, [r3, #0x20]
	ldr r1, [r1, #0xc]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_0201972C
_0208C2EA:
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208C210

	thumb_func_start sub_0208C2F4
sub_0208C2F4: ; 0x0208C2F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r1, r5, #0
	add r6, r0, #0
	add r7, r3, #0
	bl sub_02006D84
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02006D28
	add r0, r4, #0
	add r1, r7, #0
	bl NNS_G2dGetUnpackedScreenData
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208C2F4

	.rodata


	.global Unk_020F4030
Unk_020F4030: ; 0x020F4030
	.incbin "incbin/arm9_rodata.bin", 0xF3F0, 0x18

