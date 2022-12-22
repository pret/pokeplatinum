	.include "macros/function.inc"
	.include "include/ov63_0222CCE4.inc"

	

	.text


	thumb_func_start ov63_0222CCE4
ov63_0222CCE4: ; 0x0222CCE4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0xc
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	ldr r1, [sp]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	add r2, r5, #0
	bl ov63_0222AE60
	str r0, [r4, #0]
	strh r5, [r4, #8]
	ldrh r2, [r4, #8]
	mov r1, #0x14
	ldr r0, [sp, #0x18]
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #4]
	ldrh r3, [r4, #8]
	mov r2, #0x14
	mov r1, #0
	mul r2, r3
	bl memset
	mov r0, #2
	strb r0, [r4, #0xa]
	strb r6, [r4, #0xb]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222CCE4

	thumb_func_start ov63_0222CD2C
ov63_0222CD2C: ; 0x0222CD2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x28]
	add r7, r0, #0
	str r1, [sp, #4]
	add r0, r5, #0
	mov r1, #0xc
	add r6, r2, #0
	str r3, [sp, #8]
	bl sub_02018144
	add r4, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov63_0222AE60
	str r0, [r4, #0]
	strh r6, [r4, #8]
	ldrh r2, [r4, #8]
	mov r1, #0x14
	add r0, r5, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #4]
	ldrh r3, [r4, #8]
	mov r2, #0x14
	mov r1, #0
	mul r2, r3
	bl memset
	mov r0, #2
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #8]
	strb r0, [r4, #0xb]
	str r5, [sp]
	ldrb r2, [r4, #0xb]
	ldr r0, [r4, #0]
	ldr r3, [sp, #0x20]
	bl ov63_0222AF94
	ldrb r1, [r4, #0xb]
	ldr r0, [r4, #0]
	ldr r2, _0222CD98 ; =0x00009C41
	add r3, r5, #0
	bl ov63_0222B0A0
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0222CD98: .word 0x00009C41
	thumb_func_end ov63_0222CD2C

	thumb_func_start ov63_0222CD9C
ov63_0222CD9C: ; 0x0222CD9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222CDC8
	add r4, r6, #0
_0222CDAA:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl ov63_0222D07C
	cmp r0, #0
	bne _0222CDBE
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl ov63_0222CECC
_0222CDBE:
	ldrh r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _0222CDAA
_0222CDC8:
	ldr r0, [r5, #0]
	bl ov63_0222B0B8
	add r0, r5, #0
	bl ov63_0222CE24
	ldr r0, [r5, #0]
	bl ov63_0222AF14
	ldr r0, [r5, #4]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222CD9C

	thumb_func_start ov63_0222CDE8
ov63_0222CDE8: ; 0x0222CDE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ov63_0222AFE4
	cmp r0, #0
	bne _0222CE0A
	str r4, [sp]
	ldrb r2, [r5, #0xb]
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r3, r7, #0
	bl ov63_0222AF94
_0222CE0A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222CDE8

	thumb_func_start ov63_0222CE0C
ov63_0222CE0C: ; 0x0222CE0C
	ldr r3, _0222CE14 ; =ov63_0222AFD0
	ldr r0, [r0, #0]
	bx r3
	nop
_0222CE14: .word ov63_0222AFD0
	thumb_func_end ov63_0222CE0C

	thumb_func_start ov63_0222CE18
ov63_0222CE18: ; 0x0222CE18
	ldr r3, _0222CE20 ; =ov63_0222AFE4
	ldr r0, [r0, #0]
	bx r3
	nop
_0222CE20: .word ov63_0222AFE4
	thumb_func_end ov63_0222CE18

	thumb_func_start ov63_0222CE24
ov63_0222CE24: ; 0x0222CE24
	ldr r3, _0222CE2C ; =ov63_0222AFF8
	ldr r0, [r0, #0]
	bx r3
	nop
_0222CE2C: .word ov63_0222AFF8
	thumb_func_end ov63_0222CE24

	thumb_func_start ov63_0222CE30
ov63_0222CE30: ; 0x0222CE30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xb]
	add r3, r2, #0
	ldr r0, [r5, #0]
	add r2, r4, #0
	bl ov63_0222B02C
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222CE30

	thumb_func_start ov63_0222CE44
ov63_0222CE44: ; 0x0222CE44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov63_0222D08C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl ov63_0222BF90
	strh r0, [r4, #8]
	add r0, r5, #0
	mov r1, #6
	bl ov63_0222BF90
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #4
	bl ov63_0222BF90
	strh r0, [r4, #0xc]
	str r5, [r4, #0]
	strb r7, [r4, #0x12]
	mov r0, #1
	strb r0, [r4, #0x13]
	mov r1, #0
	strh r1, [r4, #0xe]
	add r0, r5, #0
	strh r1, [r4, #0x10]
	bl ov63_0222BF90
	add r1, sp, #4
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #1
	bl ov63_0222BF90
	add r1, sp, #4
	strh r0, [r1, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	ldrb r1, [r4, #0x12]
	bl ov63_0222D034
	add r1, sp, #4
	strh r0, [r1, #4]
	ldrb r0, [r6, #0xa]
	strh r0, [r1, #6]
	add r0, r5, #0
	mov r1, #7
	bl ov63_0222BF90
	add r2, r0, #0
	ldr r0, [r6, #0]
	ldr r3, [sp]
	add r1, sp, #4
	bl ov63_0222B0C0
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov63_0222CF14
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222CE44

	thumb_func_start ov63_0222CECC
ov63_0222CECC: ; 0x0222CECC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov63_0222B210
	mov r1, #0x14
	mov r0, #0
_0222CEDA:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0222CEDA
	pop {r4, pc}
	thumb_func_end ov63_0222CECC

	thumb_func_start ov63_0222CEE4
ov63_0222CEE4: ; 0x0222CEE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222CF10
	add r4, r6, #0
_0222CEF2:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl ov63_0222D07C
	cmp r0, #0
	bne _0222CF06
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl ov63_0222CF14
_0222CF06:
	ldrh r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _0222CEF2
_0222CF10:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222CEE4

	thumb_func_start ov63_0222CF14
ov63_0222CF14: ; 0x0222CF14
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _0222CF9E
	ldr r0, [r5, #0]
	mov r1, #5
	bl ov63_0222BF90
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #6
	bl ov63_0222BF90
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #8
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	ldrh r0, [r5, #8]
	cmp r0, r6
	bne _0222CF50
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	bne _0222CF50
	cmp r1, #0
	bne _0222CF66
_0222CF50:
	strh r6, [r5, #8]
	strh r4, [r5, #0xa]
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl ov63_0222D0C4
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov63_0222D110
_0222CF66:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl ov63_0222D0E0
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, #4]
	bl ov63_0222B238
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	ldrb r1, [r5, #0x12]
	bl ov63_0222D034
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r5, #4]
	bl ov63_0222B278
	ldr r0, [r5, #4]
	bl ov63_0222B33C
_0222CF9E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222CF14

	thumb_func_start ov63_0222CFA4
ov63_0222CFA4: ; 0x0222CFA4
	strb r1, [r0, #0x13]
	bx lr
	thumb_func_end ov63_0222CFA4

	thumb_func_start ov63_0222CFA8
ov63_0222CFA8: ; 0x0222CFA8
	ldr r3, _0222CFB0 ; =ov63_0222D110
	mov r1, #1
	ldrh r2, [r0, #0xa]
	bx r3
	; .align 2, 0
_0222CFB0: .word ov63_0222D110
	thumb_func_end ov63_0222CFA8

	thumb_func_start ov63_0222CFB4
ov63_0222CFB4: ; 0x0222CFB4
	ldr r3, _0222CFBC ; =ov63_0222B33C
	ldr r0, [r0, #4]
	bx r3
	nop
_0222CFBC: .word ov63_0222B33C
	thumb_func_end ov63_0222CFB4

	thumb_func_start ov63_0222CFC0
ov63_0222CFC0: ; 0x0222CFC0
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #8]
	ldr r0, [r4, #4]
	bl ov63_0222D0C4
	add r1, r0, #0
	ldrh r2, [r4, #0xa]
	add r0, r4, #0
	bl ov63_0222D110
	add r0, r4, #0
	bl ov63_0222CF14
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222CFC0

	thumb_func_start ov63_0222CFE0
ov63_0222CFE0: ; 0x0222CFE0
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r3, sp, #8
	mov r1, #4
	mov r2, #6
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #4]
	bl ov63_0222B238
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222CFE0

	thumb_func_start ov63_0222CFFC
ov63_0222CFFC: ; 0x0222CFFC
	ldr r3, _0222D004 ; =ov63_0222B2B0
	ldr r0, [r0, #4]
	bx r3
	nop
_0222D004: .word ov63_0222B2B0
	thumb_func_end ov63_0222CFFC

	thumb_func_start ov63_0222D008
ov63_0222D008: ; 0x0222D008
	ldr r3, _0222D010 ; =ov63_0222B294
	ldr r0, [r0, #4]
	bx r3
	nop
_0222D010: .word ov63_0222B294
	thumb_func_end ov63_0222D008

	thumb_func_start ov63_0222D014
ov63_0222D014: ; 0x0222D014
	ldr r3, _0222D01C ; =ov63_0222B284
	ldr r0, [r0, #4]
	bx r3
	nop
_0222D01C: .word ov63_0222B284
	thumb_func_end ov63_0222D014

	thumb_func_start ov63_0222D020
ov63_0222D020: ; 0x0222D020
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	mov r1, #0
	bl ov63_0222D110
	ldr r0, [r4, #4]
	bl ov63_0222B33C
	pop {r4, pc}
	thumb_func_end ov63_0222D020

	thumb_func_start ov63_0222D034
ov63_0222D034: ; 0x0222D034
	cmp r1, #1
	bne _0222D040
	lsl r1, r0, #1
	ldr r0, _0222D048 ; =0x00009C40
	sub r0, r0, r1
	bx lr
_0222D040:
	lsl r1, r0, #1
	ldr r0, _0222D04C ; =0x00009C41
	sub r0, r0, r1
	bx lr
	; .align 2, 0
_0222D048: .word 0x00009C40
_0222D04C: .word 0x00009C41
	thumb_func_end ov63_0222D034

	thumb_func_start ov63_0222D050
ov63_0222D050: ; 0x0222D050
	push {r3, lr}
	ldr r0, [r0, #4]
	bl ov63_0222B234
	bl sub_02021F48
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D050

	thumb_func_start ov63_0222D060
ov63_0222D060: ; 0x0222D060
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r3, sp, #8
	mov r1, #4
	mov r2, #6
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #4]
	bl ov63_0222B2E0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222D060

	thumb_func_start ov63_0222D07C
ov63_0222D07C: ; 0x0222D07C
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0222D086
	mov r0, #1
	bx lr
_0222D086:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222D07C

	thumb_func_start ov63_0222D08C
ov63_0222D08C: ; 0x0222D08C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222D0BA
	add r4, r6, #0
_0222D09A:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl ov63_0222D07C
	cmp r0, #1
	bne _0222D0B0
	mov r0, #0x14
	ldr r1, [r5, #4]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_0222D0B0:
	ldrh r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _0222D09A
_0222D0BA:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D08C

	thumb_func_start ov63_0222D0C4
ov63_0222D0C4: ; 0x0222D0C4
	push {r4, lr}
	add r4, r1, #0
	bl ov63_0222B2BC
	cmp r0, #2
	bne _0222D0D4
	mov r0, #0
	pop {r4, pc}
_0222D0D4:
	ldr r0, _0222D0DC ; =0x0222DCA8
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0222D0DC: .word 0x0222DCA8
	thumb_func_end ov63_0222D0C4

	thumb_func_start ov63_0222D0E0
ov63_0222D0E0: ; 0x0222D0E0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	bl ov63_0222C0FC
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	strh r0, [r5]
	mov r0, #6
	ldrsh r0, [r1, r0]
	strh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D0E0

	thumb_func_start ov63_0222D110
ov63_0222D110: ; 0x0222D110
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	str r2, [sp]
	bl ov63_0222B2D4
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl ov63_0222B2C4
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	ldr r2, [sp]
	add r1, r4, #0
	bl ov63_0222B308
	cmp r6, r4
	beq _0222D15A
	ldr r0, _0222D15C ; =0x0222DC9C
	ldrb r0, [r0, r4]
	cmp r0, #1
	bne _0222D14E
	ldrh r0, [r5, #0x10]
	cmp r0, r4
	bne _0222D14E
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	bl ov63_0222B2C8
_0222D14E:
	ldr r0, _0222D15C ; =0x0222DC9C
	ldrb r0, [r0, r6]
	cmp r0, #1
	bne _0222D15A
	strh r6, [r5, #0x10]
	strh r7, [r5, #0xe]
_0222D15A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D15C: .word 0x0222DC9C
	thumb_func_end ov63_0222D110

	.rodata


	.global Unk_ov63_0222DC9C
Unk_ov63_0222DC9C: ; 0x0222DC9C
	.incbin "incbin/overlay63_rodata.bin", 0x39C, 0x3A8 - 0x39C

	.global Unk_ov63_0222DCA8
Unk_ov63_0222DCA8: ; 0x0222DCA8
	.incbin "incbin/overlay63_rodata.bin", 0x3A8, 0xC

