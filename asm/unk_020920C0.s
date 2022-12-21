	.include "macros/function.inc"
	.include "include/unk_020920C0.inc"

	

	.text


	thumb_func_start sub_020920C0
sub_020920C0: ; 0x020920C0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r1, [r0, #0x12]
	cmp r1, #3
	bhi _02092110
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020920DC: ; jump table
	.short _020920E4 - _020920DC - 2 ; case 0
	.short _020920E4 - _020920DC - 2 ; case 1
	.short _02092110 - _020920DC - 2 ; case 2
	.short _02092110 - _020920DC - 2 ; case 3
_020920E4:
	ldr r0, [r0, #0x2c]
	ldr r1, _02092128 ; =0x000006A7
	cmp r0, #0
	beq _020920F6
	ldrb r2, [r4, r1]
	mov r0, #0xf
	bic r2, r0
	strb r2, [r4, r1]
	b _0209211E
_020920F6:
	ldrb r2, [r4, r1]
	mov r0, #0xf
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r4, r1]
	mov r1, #4
	ldr r0, [r4, #0]
	mov r2, #0
	add r3, r1, #0
	bl sub_0201C63C
	b _0209211E
_02092110:
	ldr r1, _02092128 ; =0x000006A7
	mov r0, #0xf
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #0xf
	orr r0, r2
	strb r0, [r4, r1]
_0209211E:
	add r0, r4, #0
	bl sub_0209219C
	pop {r4, pc}
	nop
_02092128: .word 0x000006A7
	thumb_func_end sub_020920C0

	thumb_func_start sub_0209212C
sub_0209212C: ; 0x0209212C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0]
	add r4, r1, #0
	mov r1, #4
	add r5, r2, #0
	bl sub_02019FE4
	add r7, r0, #0
	lsl r0, r5, #2
	add r1, r5, r0
	ldrb r2, [r4]
	mov r0, #1
	mov r3, #0
	add r5, r2, #0
	and r5, r0
	mov r0, #0xf
	mul r0, r5
	lsr r5, r2, #1
	mov r2, #0x96
	mul r2, r5
	add r0, r0, r2
	add r0, r1, r0
	add r0, #0x1e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov ip, r0
_02092160:
	mov r0, #0x1e
	add r1, r3, #0
	mul r1, r0
	mov r0, ip
	mov r2, #0
	add r5, r0, r1
_0209216C:
	ldrb r0, [r4, #1]
	ldrb r6, [r4, #3]
	lsl r1, r0, #0xc
	add r0, r2, r5
	add r1, r1, r0
	add r6, r3, r6
	lsl r6, r6, #5
	ldrb r0, [r4, #2]
	add r6, r2, r6
	add r0, r0, r6
	lsl r0, r0, #1
	strh r1, [r7, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #5
	blo _0209216C
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #5
	blo _02092160
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209212C

	thumb_func_start sub_0209219C
sub_0209219C: ; 0x0209219C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _020921DC ; =0x000006A7
	ldrb r0, [r6, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #0xf
	beq _020921D8
	lsl r1, r0, #2
	ldr r0, _020921E0 ; =0x02100D84
	mov r5, #0
	ldr r4, [r0, r1]
	add r7, r5, #0
_020921B6:
	lsl r1, r5, #2
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	beq _020921D0
	add r0, r6, #0
	add r1, r4, r1
	add r2, r7, #0
	bl sub_0209212C
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _020921B6
_020921D0:
	ldr r0, [r6, #0]
	mov r1, #4
	bl sub_0201C3C0
_020921D8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020921DC: .word 0x000006A7
_020921E0: .word 0x02100D84
	thumb_func_end sub_0209219C

	thumb_func_start sub_020921E4
sub_020921E4: ; 0x020921E4
	push {r3, lr}
	bl sub_020921FC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _020921F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
_020921F8:
	mov r0, #0xff
	pop {r3, pc}
	thumb_func_end sub_020921E4

	thumb_func_start sub_020921FC
sub_020921FC: ; 0x020921FC
	push {r3, lr}
	ldr r1, _0209221C ; =0x000006A7
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #0xf
	bne _02092210
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02092210:
	lsl r1, r0, #2
	ldr r0, _02092220 ; =0x02100D78
	ldr r0, [r0, r1]
	bl sub_02022664
	pop {r3, pc}
	; .align 2, 0
_0209221C: .word 0x000006A7
_02092220: .word 0x02100D78
	thumb_func_end sub_020921FC

	thumb_func_start sub_02092224
sub_02092224: ; 0x02092224
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0209227C ; =0x000006A7
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #0xf
	bne _0209223E
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0209223E:
	lsl r1, r0, #2
	ldr r0, _02092280 ; =0x02100D78
	ldr r0, [r0, r1]
	bl sub_02022644
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02092276
	ldr r1, _02092284 ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _02092288 ; =0x021BF6BC
	ldr r0, [r5, #0]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #4
	bl sub_0201C784
	cmp r0, #0
	bne _02092276
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02092276:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209227C: .word 0x000006A7
_02092280: .word 0x02100D78
_02092284: .word 0x0000FFFE
_02092288: .word 0x021BF6BC
	thumb_func_end sub_02092224

	thumb_func_start sub_0209228C
sub_0209228C: ; 0x0209228C
	push {r4, r5, r6, lr}
	ldr r1, _02092358 ; =0x000006A7
	add r5, r0, #0
	ldrb r2, [r5, r1]
	lsl r2, r2, #0x1c
	lsr r3, r2, #0x1a
	ldr r2, _0209235C ; =0x02100D84
	ldr r4, [r2, r3]
	add r2, r1, #6
	ldrb r2, [r5, r2]
	cmp r2, #0
	beq _020922AE
	cmp r2, #1
	beq _020922E8
	cmp r2, #2
	beq _020922F0
	b _02092352
_020922AE:
	sub r1, #0xc3
	add r0, r1, #0
	bl sub_02005748
	add r0, r5, #0
	bl sub_0209219C
	ldr r1, _02092360 ; =0x000006AE
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #2
	lsl r1, r1, #2
	add r1, r4, r1
	bl sub_0209212C
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
	add r0, r5, #0
	bl sub_0208F600
	ldr r0, _02092364 ; =0x000006AC
	mov r1, #0
	strb r1, [r5, r0]
	mov r1, #1
	add r0, r0, #1
	strb r1, [r5, r0]
	b _02092352
_020922E8:
	mov r2, #2
	add r0, r1, #6
	strb r2, [r5, r0]
	b _02092352
_020922F0:
	add r2, r1, #5
	ldrb r2, [r5, r2]
	cmp r2, #3
	beq _02092304
	add r0, r1, #5
	ldrb r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #5
	strb r2, [r5, r0]
	b _02092352
_02092304:
	bl sub_0208F684
	ldr r0, _02092360 ; =0x000006AE
	ldrb r6, [r5, r0]
	add r0, r5, #0
	bl sub_02092224
	cmp r6, r0
	beq _02092352
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _0209233A
	lsl r1, r6, #2
	ldrb r0, [r4, r1]
	cmp r0, #1
	beq _0209233A
	cmp r0, #7
	beq _0209233A
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #0
	bl sub_0209212C
	b _02092346
_0209233A:
	lsl r1, r6, #2
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #1
	bl sub_0209212C
_02092346:
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
	mov r0, #1
	pop {r4, r5, r6, pc}
_02092352:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02092358: .word 0x000006A7
_0209235C: .word 0x02100D84
_02092360: .word 0x000006AE
_02092364: .word 0x000006AC
	thumb_func_end sub_0209228C

	thumb_func_start sub_02092368
sub_02092368: ; 0x02092368
	push {r4, r5}
	ldr r4, _0209239C ; =0x000006A7
	ldrb r3, [r0, r4]
	lsl r3, r3, #0x1c
	lsr r5, r3, #0x1a
	ldr r3, _020923A0 ; =0x02100D84
	ldr r3, [r3, r5]
	add r5, r4, #7
	ldrb r5, [r0, r5]
	lsl r5, r5, #2
	add r5, r3, r5
	ldrb r5, [r5, #2]
	lsl r5, r5, #3
	add r5, #0x14
	strh r5, [r1]
	add r1, r4, #7
	ldrb r0, [r0, r1]
	lsl r0, r0, #2
	add r0, r3, r0
	ldrb r0, [r0, #3]
	lsl r0, r0, #3
	add r0, #0x14
	strh r0, [r2]
	pop {r4, r5}
	bx lr
	nop
_0209239C: .word 0x000006A7
_020923A0: .word 0x02100D84
	thumb_func_end sub_02092368

	thumb_func_start sub_020923A4
sub_020923A4: ; 0x020923A4
	ldr r2, _020923B8 ; =0x000006A7
	ldrb r0, [r0, r2]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1a
	ldr r0, _020923BC ; =0x02100D84
	ldr r2, [r0, r2]
	lsl r0, r1, #2
	ldrb r0, [r2, r0]
	bx lr
	nop
_020923B8: .word 0x000006A7
_020923BC: .word 0x02100D84
	thumb_func_end sub_020923A4

	.rodata


	.global Unk_020F511C
Unk_020F511C: ; 0x020F511C
	.incbin "incbin/arm9_rodata.bin", 0x104DC, 0x104E8 - 0x104DC

	.global Unk_020F5128
Unk_020F5128: ; 0x020F5128
	.incbin "incbin/arm9_rodata.bin", 0x104E8, 0x104F4 - 0x104E8

	.global Unk_020F5134
Unk_020F5134: ; 0x020F5134
	.incbin "incbin/arm9_rodata.bin", 0x104F4, 0x1050C - 0x104F4

	.global Unk_020F514C
Unk_020F514C: ; 0x020F514C
	.incbin "incbin/arm9_rodata.bin", 0x1050C, 0x10524 - 0x1050C

	.global Unk_020F5164
Unk_020F5164: ; 0x020F5164
	.incbin "incbin/arm9_rodata.bin", 0x10524, 0x10548 - 0x10524

	.global Unk_020F5188
Unk_020F5188: ; 0x020F5188
	.incbin "incbin/arm9_rodata.bin", 0x10548, 0x24



	.data


	.global Unk_02100D78
Unk_02100D78: ; 0x02100D78
	.incbin "incbin/arm9_data.bin", 0x2098, 0x20A4 - 0x2098

	.global Unk_02100D84
Unk_02100D84: ; 0x02100D84
	.incbin "incbin/arm9_data.bin", 0x20A4, 0xC

