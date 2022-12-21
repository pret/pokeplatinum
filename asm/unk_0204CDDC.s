	.include "macros/function.inc"
	.include "include/unk_0204CDDC.inc"

	

	.text


	thumb_func_start sub_0204CDDC
sub_0204CDDC: ; 0x0204CDDC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B218
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204CDDC

	thumb_func_start sub_0204CDF0
sub_0204CDF0: ; 0x0204CDF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B228
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CDF0

	thumb_func_start sub_0204CE1C
sub_0204CE1C: ; 0x0204CE1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xf
	bhs _0204CE5A
	mov r0, #0
	b _0204CE9C
_0204CE5A:
	cmp r0, #0x1e
	bhs _0204CE62
	mov r0, #1
	b _0204CE9C
_0204CE62:
	cmp r0, #0x2d
	bhs _0204CE6A
	mov r0, #2
	b _0204CE9C
_0204CE6A:
	cmp r0, #0x3c
	bhs _0204CE72
	mov r0, #3
	b _0204CE9C
_0204CE72:
	cmp r0, #0x46
	bhs _0204CE7A
	mov r0, #4
	b _0204CE9C
_0204CE7A:
	cmp r0, #0x50
	bhs _0204CE82
	mov r0, #5
	b _0204CE9C
_0204CE82:
	cmp r0, #0x58
	bhs _0204CE8A
	mov r0, #6
	b _0204CE9C
_0204CE8A:
	cmp r0, #0x5d
	bhs _0204CE92
	mov r0, #7
	b _0204CE9C
_0204CE92:
	cmp r0, #0x62
	bhs _0204CE9A
	mov r0, #8
	b _0204CE9C
_0204CE9A:
	mov r0, #9
_0204CE9C:
	mov r2, #0x4b
	lsl r2, r2, #2
	cmp r4, r2
	bgt _0204CED4
	bge _0204CF44
	cmp r4, #0x36
	bgt _0204CEC4
	bge _0204CF3C
	cmp r4, #0x19
	bgt _0204CEB4
	beq _0204CF40
	b _0204CF48
_0204CEB4:
	cmp r4, #0x27
	bgt _0204CF48
	cmp r4, #0x23
	blt _0204CF48
	beq _0204CF40
	cmp r4, #0x27
	beq _0204CF44
	b _0204CF48
_0204CEC4:
	cmp r4, #0xff
	bgt _0204CECC
	beq _0204CF44
	b _0204CF48
_0204CECC:
	sub r2, #0xf
	cmp r4, r2
	beq _0204CF44
	b _0204CF48
_0204CED4:
	add r1, r2, #0
	add r1, #0x75
	cmp r4, r1
	bgt _0204CF18
	add r1, r2, #0
	add r1, #0x75
	cmp r4, r1
	bge _0204CF40
	add r1, r2, #0
	add r1, #0x57
	cmp r4, r1
	bgt _0204CEF4
	add r2, #0x57
	cmp r4, r2
	beq _0204CF38
	b _0204CF48
_0204CEF4:
	add r2, #0x58
	sub r1, r4, r2
	cmp r1, #7
	bhi _0204CF48
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0204CF08: ; jump table
	.short _0204CF38 - _0204CF08 - 2 ; case 0
	.short _0204CF38 - _0204CF08 - 2 ; case 1
	.short _0204CF30 - _0204CF08 - 2 ; case 2
	.short _0204CF30 - _0204CF08 - 2 ; case 3
	.short _0204CF30 - _0204CF08 - 2 ; case 4
	.short _0204CF34 - _0204CF08 - 2 ; case 5
	.short _0204CF34 - _0204CF08 - 2 ; case 6
	.short _0204CF34 - _0204CF08 - 2 ; case 7
_0204CF18:
	ldr r1, _0204CF60 ; =0x000001AB
	cmp r4, r1
	bgt _0204CF28
	bge _0204CF3C
	sub r1, r1, #2
	cmp r4, r1
	beq _0204CF3C
	b _0204CF48
_0204CF28:
	add r1, #0xd
	cmp r4, r1
	beq _0204CF40
	b _0204CF48
_0204CF30:
	mov r2, #0
	b _0204CF4A
_0204CF34:
	mov r2, #1
	b _0204CF4A
_0204CF38:
	mov r2, #2
	b _0204CF4A
_0204CF3C:
	mov r2, #3
	b _0204CF4A
_0204CF40:
	mov r2, #4
	b _0204CF4A
_0204CF44:
	mov r2, #5
	b _0204CF4A
_0204CF48:
	mov r2, #0
_0204CF4A:
	add r3, r2, #0
	mov r1, #0x14
	mul r3, r1
	ldr r2, _0204CF64 ; =0x020EBF84
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0204CF60: .word 0x000001AB
_0204CF64: .word 0x020EBF84
	thumb_func_end sub_0204CE1C

	thumb_func_start sub_0204CF68
sub_0204CF68: ; 0x0204CF68
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0xf
	and r0, r1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204CF68

	thumb_func_start sub_0204CF8C
sub_0204CF8C: ; 0x0204CF8C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	cmp r5, #9
	bhs _0204CFBA
	mov r1, #0
	b _0204CFBC
_0204CFBA:
	mov r1, #1
_0204CFBC:
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CF8C

	thumb_func_start sub_0204CFC4
sub_0204CFC4: ; 0x0204CFC4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldr r1, _0204CFF8 ; =0x020EBF64
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0204CFF8: .word 0x020EBF64
	thumb_func_end sub_0204CFC4

	.rodata


	.global Unk_020EBF64
Unk_020EBF64: ; 0x020EBF64
	.incbin "incbin/arm9_rodata.bin", 0x7324, 0x7344 - 0x7324

	.global Unk_020EBF84
Unk_020EBF84: ; 0x020EBF84
	.incbin "incbin/arm9_rodata.bin", 0x7344, 0x78

