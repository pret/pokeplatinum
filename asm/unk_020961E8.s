	.include "macros/function.inc"
	.include "include/unk_020961E8.inc"

	

	.text


	thumb_func_start sub_020961E8
sub_020961E8: ; 0x020961E8
	ldr r3, _020961F4 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _020961F8 ; =0x020F5F68
	mov r1, #0x6e
	bx r3
	nop
_020961F4: .word sub_02032798
_020961F8: .word 0x020F5F68
	thumb_func_end sub_020961E8

	thumb_func_start sub_020961FC
sub_020961FC: ; 0x020961FC
	ldr r0, _02096208 ; =0x00004A34
	ldr r1, [r3, r0]
	add r1, r1, #1
	str r1, [r3, r0]
	bx lr
	nop
_02096208: .word 0x00004A34
	thumb_func_end sub_020961FC

	thumb_func_start sub_0209620C
sub_0209620C: ; 0x0209620C
	cmp r0, #0
	bne _02096216
	ldrb r1, [r2]
	ldr r0, _02096218 ; =0x00004A3C
	str r1, [r3, r0]
_02096216:
	bx lr
	; .align 2, 0
_02096218: .word 0x00004A3C
	thumb_func_end sub_0209620C

	thumb_func_start sub_0209621C
sub_0209621C: ; 0x0209621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0209625C ; =0x00004A34
	add r4, r3, #0
	mov r1, #0
	str r1, [r4, r0]
	mov r1, #1
	add r0, #0xc
	strb r1, [r4, r0]
	bl sub_0203608C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020963C0
	add r0, r4, #0
	bl ov59_021D1D40
	lsl r2, r5, #0x18
	add r0, r4, #0
	mov r1, #0x19
	lsr r2, r2, #0x18
	bl ov59_021D2204
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _02096260 ; =0x00000658
	bl sub_02005748
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209625C: .word 0x00004A34
_02096260: .word 0x00000658
	thumb_func_end sub_0209621C

	thumb_func_start sub_02096264
sub_02096264: ; 0x02096264
	add r0, r3, #0
	ldr r3, _02096270 ; =ov59_021D2204
	mov r1, #2
	mov r2, #0
	bx r3
	nop
_02096270: .word ov59_021D2204
	thumb_func_end sub_02096264

	thumb_func_start sub_02096274
sub_02096274: ; 0x02096274
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _0209630A
	bl sub_0203608C
	cmp r0, #0
	bne _02096354
	ldrb r0, [r5]
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r5, #1]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	strb r0, [r1, #2]
	ldrb r0, [r5, #3]
	strb r0, [r1, #3]
	ldr r0, _02096358 ; =0x00004A48
	strb r6, [r1]
	ldr r0, [r4, r0]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _020962AE
	cmp r0, #1
	b _020962FC
_020962AE:
	bl sub_02035E18
	ldr r1, _02096358 ; =0x00004A48
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _020962D6
	bl ov59_021D2544
	ldr r1, _02096358 ; =0x00004A48
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _020962D6
	bl sub_020318EC
	bl sub_020D2FE4
	ldr r1, _02096358 ; =0x00004A48
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _020962DE
_020962D6:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _020962FC
_020962DE:
	add r0, r1, #0
	add r0, #8
	mov r2, #1
	ldr r3, [r4, r0]
	add r0, r2, #0
	lsl r0, r6
	orr r0, r3
	add r1, #8
	str r0, [r4, r1]
	add r0, sp, #0
	strb r2, [r0, #3]
	bl sub_02035E18
	bl sub_02037B58
_020962FC:
	mov r0, #0x70
	add r1, sp, #0
	mov r2, #4
	bl sub_020359DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209630A:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _02096318
	cmp r0, #1
	beq _0209634A
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02096318:
	ldrb r6, [r5]
	bl sub_0203608C
	cmp r6, r0
	bne _02096354
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _02096336
	add r0, r4, #0
	mov r1, #8
	add r2, r6, #0
	bl ov59_021D2204
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02096336:
	ldrb r1, [r5, #1]
	ldr r0, _0209635C ; =0x00004A5C
	strh r1, [r4, r0]
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #7
	bl ov59_021D2204
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209634A:
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #0x13
	bl ov59_021D2204
_02096354:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02096358: .word 0x00004A48
_0209635C: .word 0x00004A5C
	thumb_func_end sub_02096274

	thumb_func_start sub_02096360
sub_02096360: ; 0x02096360
	push {r4, lr}
	ldrb r2, [r2]
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #1
	bl ov59_021D22EC
	bl sub_0203608C
	cmp r0, #0
	bne _0209637E
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_0209637E:
	pop {r4, pc}
	thumb_func_end sub_02096360

	thumb_func_start sub_02096380
sub_02096380: ; 0x02096380
	bx lr
	; .align 2, 0
	thumb_func_end sub_02096380

	thumb_func_start sub_02096384
sub_02096384: ; 0x02096384
	bx lr
	; .align 2, 0
	thumb_func_end sub_02096384

	thumb_func_start sub_02096388
sub_02096388: ; 0x02096388
	push {r4, lr}
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209639E
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl ov59_021D2204
_0209639E:
	pop {r4, pc}
	thumb_func_end sub_02096388

	thumb_func_start sub_020963A0
sub_020963A0: ; 0x020963A0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _020963BC
	add r0, sp, #0
	strb r4, [r0]
	mov r0, #0x6e
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
_020963BC:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020963A0

	thumb_func_start sub_020963C0
sub_020963C0: ; 0x020963C0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xed
	mov r3, #0
	lsl r0, r0, #2
	add r5, r4, r0
	add r2, r3, #0
	sub r0, #0xc6
_020963D0:
	ldr r1, [r5, #0]
	add r2, r2, #1
	eor r3, r1
	add r5, r5, #4
	cmp r2, r0
	blt _020963D0
	ldr r0, _020963FC ; =0x00000F6C
	str r3, [r4, r0]
	bl sub_0201D2E8
	mov r1, #0xf7
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r1, #0xed
	lsl r1, r1, #2
	mov r2, #0x2f
	mov r0, #0x74
	add r1, r4, r1
	lsl r2, r2, #6
	bl sub_0203597C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020963FC: .word 0x00000F6C
	thumb_func_end sub_020963C0

	thumb_func_start sub_02096400
sub_02096400: ; 0x02096400
	mov r0, #0
	bx lr
	thumb_func_end sub_02096400

	thumb_func_start sub_02096404
sub_02096404: ; 0x02096404
	mov r0, #1
	bx lr
	thumb_func_end sub_02096404

	thumb_func_start sub_02096408
sub_02096408: ; 0x02096408
	mov r0, #4
	bx lr
	thumb_func_end sub_02096408

	thumb_func_start sub_0209640C
sub_0209640C: ; 0x0209640C
	ldr r2, _0209641C ; =0x00000F74
	add r2, r1, r2
	mov r1, #0x2f
	lsl r1, r1, #6
	mul r1, r0
	add r0, r2, r1
	bx lr
	nop
_0209641C: .word 0x00000F74
	thumb_func_end sub_0209640C

	.rodata


	.global Unk_020F5F68
Unk_020F5F68: ; 0x020F5F68
	.incbin "incbin/arm9_rodata.bin", 0x11328, 0x528

