	.include "macros/function.inc"
	.include "include/unk_020068C8.inc"

	

	.text


	thumb_func_start sub_020068C8
sub_020068C8: ; 0x020068C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	add r0, sp, #8
	strh r1, [r0]
	add r0, sp, #0x18
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_020C7DA0
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020C8080
	add r0, sp, #0x18
	mov r1, #0xc
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #2
	bl sub_020C81D4
	ldr r4, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #4
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x18
	add r1, sp, #8
	mov r2, #2
	bl sub_020C81D4
	add r0, sp, #8
	ldrh r0, [r0]
	cmp r0, r5
	bgt _0200692E
	bl sub_02022974
_0200692E:
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x18
	add r1, r6, #4
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020C81D4
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x18
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0x14]
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x10
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020C81D4
	add r2, r6, r7
	ldr r1, [sp, #0x10]
	add r2, #8
	add r2, r2, r1
	ldr r1, [sp, #4]
	add r0, sp, #0x18
	add r1, r1, r2
	mov r2, #0
	bl sub_020C81E4
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _0200698A
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
_0200698A:
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02006994
	bl sub_02022974
_02006994:
	ldr r1, [sp]
	ldr r2, [sp, #0x14]
	add r0, sp, #0x18
	bl sub_020C81D4
	add r0, sp, #0x18
	bl sub_020C80C8
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020068C8

	thumb_func_start sub_020069A8
sub_020069A8: ; 0x020069A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	add r0, sp, #8
	strh r1, [r0]
	add r0, sp, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_020C7DA0
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020C8080
	add r0, sp, #0x18
	mov r1, #0xc
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #2
	bl sub_020C81D4
	ldr r4, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #4
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x18
	add r1, sp, #8
	mov r2, #2
	bl sub_020C81D4
	add r0, sp, #8
	ldrh r0, [r0]
	cmp r0, r5
	bgt _02006A0E
	bl sub_02022974
_02006A0E:
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x18
	add r1, r6, #4
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020C81D4
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x18
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0x14]
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x10
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020C81D4
	add r2, r6, r7
	ldr r1, [sp, #0x10]
	add r2, #8
	add r2, r2, r1
	ldr r1, [sp, #4]
	add r0, sp, #0x18
	add r1, r1, r2
	mov r2, #0
	bl sub_020C81E4
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _02006A6A
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
_02006A6A:
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02006A74
	bl sub_02022974
_02006A74:
	ldr r0, [sp, #0x7c]
	cmp r0, #0
	bne _02006A84
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl sub_02018144
	b _02006A8C
_02006A84:
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl sub_02018184
_02006A8C:
	add r4, r0, #0
	ldr r2, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020C81D4
	add r0, sp, #0x18
	bl sub_020C80C8
	add r0, r4, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020069A8

	thumb_func_start sub_02006AA4
sub_02006AA4: ; 0x02006AA4
	push {r3, r4, lr}
	sub sp, #4
	mov r3, #0
	lsl r4, r1, #2
	ldr r1, _02006ABC ; =0x02100498
	str r3, [sp]
	ldr r1, [r1, r4]
	bl sub_020068C8
	add sp, #4
	pop {r3, r4, pc}
	nop
_02006ABC: .word 0x02100498
	thumb_func_end sub_02006AA4

	thumb_func_start sub_02006AC0
sub_02006AC0: ; 0x02006AC0
	push {r4, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	lsl r4, r0, #2
	ldr r0, _02006AD8 ; =0x02100498
	str r3, [sp, #4]
	ldr r0, [r0, r4]
	bl sub_020069A8
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02006AD8: .word 0x02100498
	thumb_func_end sub_02006AC0

	thumb_func_start sub_02006ADC
sub_02006ADC: ; 0x02006ADC
	push {r4, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r4, #1
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _02006AF8 ; =0x02100498
	ldr r0, [r0, r4]
	bl sub_020069A8
	add sp, #8
	pop {r4, pc}
	nop
_02006AF8: .word 0x02100498
	thumb_func_end sub_02006ADC

	thumb_func_start sub_02006AFC
sub_02006AFC: ; 0x02006AFC
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	lsl r4, r1, #2
	ldr r1, _02006B14 ; =0x02100498
	ldr r1, [r1, r4]
	bl sub_020068C8
	add sp, #4
	pop {r3, r4, pc}
	nop
_02006B14: .word 0x02100498
	thumb_func_end sub_02006AFC

	thumb_func_start sub_02006B18
sub_02006B18: ; 0x02006B18
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _02006B34 ; =0x02100498
	ldr r0, [r0, r4]
	bl sub_020069A8
	add sp, #8
	pop {r4, pc}
	nop
_02006B34: .word 0x02100498
	thumb_func_end sub_02006B18

	thumb_func_start sub_02006B38
sub_02006B38: ; 0x02006B38
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _02006B54 ; =0x02100498
	ldr r0, [r0, r4]
	bl sub_020069A8
	add sp, #8
	pop {r4, pc}
	nop
_02006B54: .word 0x02100498
	thumb_func_end sub_02006B38

	thumb_func_start sub_02006B58
sub_02006B58: ; 0x02006B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r1, #0
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #0xc]
	str r1, [sp, #8]
	str r1, [sp, #4]
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0x10
	bl sub_020C7DA0
	ldr r1, _02006C20 ; =0x02100498
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, sp, #0x10
	bl sub_020C8080
	add r0, sp, #0x10
	mov r1, #0xc
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #2
	bl sub_020C81D4
	ldr r4, [sp, #0xc]
	add r0, sp, #0x10
	add r1, r4, #4
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x10
	add r1, sp, #0
	mov r2, #2
	bl sub_020C81D4
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, r5
	bgt _02006BBE
	bl sub_02022974
_02006BBE:
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x10
	add r1, r6, #4
	bl sub_020C81E4
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020C81D4
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x10
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0xc]
	bl sub_020C81E4
	add r0, sp, #0x10
	add r1, sp, #8
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x10
	add r1, sp, #4
	mov r2, #4
	bl sub_020C81D4
	add r2, r6, r7
	ldr r1, [sp, #8]
	add r2, #8
	add r1, r2, r1
	add r0, sp, #0x10
	mov r2, #0
	bl sub_020C81E4
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	bne _02006C18
	bl sub_02022974
_02006C18:
	ldr r0, [sp, #0xc]
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02006C20: .word 0x02100498
	thumb_func_end sub_02006B58

	thumb_func_start sub_02006C24
sub_02006C24: ; 0x02006C24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x54
	bl sub_02018144
	add r4, r0, #0
	beq _02006CA0
	mov r1, #0
	str r1, [r4, #0x48]
	bl sub_020C7DA0
	ldr r1, _02006CA4 ; =0x02100498
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_020C8080
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_020C81E4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x48
	mov r2, #2
	bl sub_020C81D4
	ldr r1, [r4, #0x48]
	add r0, r4, #0
	add r1, r1, #4
	mov r2, #0
	bl sub_020C81E4
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	mov r2, #2
	bl sub_020C81D4
	ldr r1, [r4, #0x48]
	ldr r0, [sp]
	mov r2, #0
	add r5, r1, r0
	add r0, r4, #0
	add r1, r5, #4
	bl sub_020C81E4
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r0, [sp]
	add r0, r5, r0
	str r0, [r4, #0x4c]
_02006CA0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02006CA4: .word 0x02100498
	thumb_func_end sub_02006C24

	thumb_func_start sub_02006CA8
sub_02006CA8: ; 0x02006CA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C80C8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02006CA8

	thumb_func_start sub_02006CB8
sub_02006CB8: ; 0x02006CB8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	bhi _02006CCE
	bl sub_02022974
_02006CCE:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020C81D4
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r2, [r5, #0x4c]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r0, r6, #0
	sub r1, r2, r1
	bl sub_02018144
	add r4, r0, #0
	beq _02006D20
	ldr r3, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r3, r2
	bl sub_020C81D4
_02006D20:
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02006CB8

	thumb_func_start sub_02006D28
sub_02006D28: ; 0x02006D28
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	bhi _02006D3E
	bl sub_02022974
_02006D3E:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020C81D4
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r2, [r5, #0x4c]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	ldr r3, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	sub r2, r3, r2
	bl sub_020C81D4
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02006D28

	thumb_func_start sub_02006D84
sub_02006D84: ; 0x02006D84
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	cmp r0, r4
	bhi _02006D98
	bl sub_02022974
_02006D98:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020C81D4
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r1, [sp]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006D84

	thumb_func_start sub_02006DC8
sub_02006DC8: ; 0x02006DC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, r4
	bhi _02006DDE
	bl sub_02022974
_02006DDE:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r2, [r5, #0x4c]
	ldr r1, [sp]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	add r1, r6, r1
	mov r2, #0
	bl sub_020C81E4
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_020C81D4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02006DC8

	thumb_func_start sub_02006E18
sub_02006E18: ; 0x02006E18
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _02006E24 ; =sub_020C81D4
	bx r3
	nop
_02006E24: .word sub_020C81D4
	thumb_func_end sub_02006E18

	thumb_func_start sub_02006E28
sub_02006E28: ; 0x02006E28
	ldr r3, _02006E30 ; =sub_020C81E4
	mov r2, #1
	bx r3
	nop
_02006E30: .word sub_020C81E4
	thumb_func_end sub_02006E28

	thumb_func_start sub_02006E34
sub_02006E34: ; 0x02006E34
	add r0, #0x50
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02006E34

	.data


	.global Unk_020FED00
Unk_020FED00: ; 0x020FED00
	.incbin "incbin/arm9_data.bin", 0x20, 0x2C - 0x20

	.global Unk_020FED0C
Unk_020FED0C: ; 0x020FED0C
	.incbin "incbin/arm9_data.bin", 0x2C, 0x3C - 0x2C

	.global Unk_020FED1C
Unk_020FED1C: ; 0x020FED1C
	.incbin "incbin/arm9_data.bin", 0x3C, 0x4C - 0x3C

	.global Unk_020FED2C
Unk_020FED2C: ; 0x020FED2C
	.incbin "incbin/arm9_data.bin", 0x4C, 0x5C - 0x4C

	.global Unk_020FED3C
Unk_020FED3C: ; 0x020FED3C
	.incbin "incbin/arm9_data.bin", 0x5C, 0x6C - 0x5C

	.global Unk_020FED4C
Unk_020FED4C: ; 0x020FED4C
	.incbin "incbin/arm9_data.bin", 0x6C, 0x80 - 0x6C

	.global Unk_020FED60
Unk_020FED60: ; 0x020FED60
	.incbin "incbin/arm9_data.bin", 0x80, 0x94 - 0x80

	.global Unk_020FED74
Unk_020FED74: ; 0x020FED74
	.incbin "incbin/arm9_data.bin", 0x94, 0xA8 - 0x94

	.global Unk_020FED88
Unk_020FED88: ; 0x020FED88
	.incbin "incbin/arm9_data.bin", 0xA8, 0xBC - 0xA8

	.global Unk_020FED9C
Unk_020FED9C: ; 0x020FED9C
	.incbin "incbin/arm9_data.bin", 0xBC, 0xD0 - 0xBC

	.global Unk_020FEDB0
Unk_020FEDB0: ; 0x020FEDB0
	.incbin "incbin/arm9_data.bin", 0xD0, 0xE4 - 0xD0

	.global Unk_020FEDC4
Unk_020FEDC4: ; 0x020FEDC4
	.incbin "incbin/arm9_data.bin", 0xE4, 0xF8 - 0xE4

	.global Unk_020FEDD8
Unk_020FEDD8: ; 0x020FEDD8
	.incbin "incbin/arm9_data.bin", 0xF8, 0x10C - 0xF8

	.global Unk_020FEDEC
Unk_020FEDEC: ; 0x020FEDEC
	.incbin "incbin/arm9_data.bin", 0x10C, 0x120 - 0x10C

	.global Unk_020FEE00
Unk_020FEE00: ; 0x020FEE00
	.incbin "incbin/arm9_data.bin", 0x120, 0x134 - 0x120

	.global Unk_020FEE14
Unk_020FEE14: ; 0x020FEE14
	.incbin "incbin/arm9_data.bin", 0x134, 0x148 - 0x134

	.global Unk_020FEE28
Unk_020FEE28: ; 0x020FEE28
	.incbin "incbin/arm9_data.bin", 0x148, 0x15C - 0x148

	.global Unk_020FEE3C
Unk_020FEE3C: ; 0x020FEE3C
	.incbin "incbin/arm9_data.bin", 0x15C, 0x170 - 0x15C

	.global Unk_020FEE50
Unk_020FEE50: ; 0x020FEE50
	.incbin "incbin/arm9_data.bin", 0x170, 0x184 - 0x170

	.global Unk_020FEE64
Unk_020FEE64: ; 0x020FEE64
	.incbin "incbin/arm9_data.bin", 0x184, 0x198 - 0x184

	.global Unk_020FEE78
Unk_020FEE78: ; 0x020FEE78
	.incbin "incbin/arm9_data.bin", 0x198, 0x1AC - 0x198

	.global Unk_020FEE8C
Unk_020FEE8C: ; 0x020FEE8C
	.incbin "incbin/arm9_data.bin", 0x1AC, 0x1C0 - 0x1AC

	.global Unk_020FEEA0
Unk_020FEEA0: ; 0x020FEEA0
	.incbin "incbin/arm9_data.bin", 0x1C0, 0x1D4 - 0x1C0

	.global Unk_020FEEB4
Unk_020FEEB4: ; 0x020FEEB4
	.incbin "incbin/arm9_data.bin", 0x1D4, 0x1E8 - 0x1D4

	.global Unk_020FEEC8
Unk_020FEEC8: ; 0x020FEEC8
	.incbin "incbin/arm9_data.bin", 0x1E8, 0x1FC - 0x1E8

	.global Unk_020FEEDC
Unk_020FEEDC: ; 0x020FEEDC
	.incbin "incbin/arm9_data.bin", 0x1FC, 0x210 - 0x1FC

	.global Unk_020FEEF0
Unk_020FEEF0: ; 0x020FEEF0
	.incbin "incbin/arm9_data.bin", 0x210, 0x224 - 0x210

	.global Unk_020FEF04
Unk_020FEF04: ; 0x020FEF04
	.incbin "incbin/arm9_data.bin", 0x224, 0x238 - 0x224

	.global Unk_020FEF18
Unk_020FEF18: ; 0x020FEF18
	.incbin "incbin/arm9_data.bin", 0x238, 0x250 - 0x238

	.global Unk_020FEF30
Unk_020FEF30: ; 0x020FEF30
	.incbin "incbin/arm9_data.bin", 0x250, 0x268 - 0x250

	.global Unk_020FEF48
Unk_020FEF48: ; 0x020FEF48
	.incbin "incbin/arm9_data.bin", 0x268, 0x280 - 0x268

	.global Unk_020FEF60
Unk_020FEF60: ; 0x020FEF60
	.incbin "incbin/arm9_data.bin", 0x280, 0x298 - 0x280

	.global Unk_020FEF78
Unk_020FEF78: ; 0x020FEF78
	.incbin "incbin/arm9_data.bin", 0x298, 0x2B0 - 0x298

	.global Unk_020FEF90
Unk_020FEF90: ; 0x020FEF90
	.incbin "incbin/arm9_data.bin", 0x2B0, 0x2C8 - 0x2B0

	.global Unk_020FEFA8
Unk_020FEFA8: ; 0x020FEFA8
	.incbin "incbin/arm9_data.bin", 0x2C8, 0x2E0 - 0x2C8

	.global Unk_020FEFC0
Unk_020FEFC0: ; 0x020FEFC0
	.incbin "incbin/arm9_data.bin", 0x2E0, 0x2F8 - 0x2E0

	.global Unk_020FEFD8
Unk_020FEFD8: ; 0x020FEFD8
	.incbin "incbin/arm9_data.bin", 0x2F8, 0x310 - 0x2F8

	.global Unk_020FEFF0
Unk_020FEFF0: ; 0x020FEFF0
	.incbin "incbin/arm9_data.bin", 0x310, 0x328 - 0x310

	.global Unk_020FF008
Unk_020FF008: ; 0x020FF008
	.incbin "incbin/arm9_data.bin", 0x328, 0x340 - 0x328

	.global Unk_020FF020
Unk_020FF020: ; 0x020FF020
	.incbin "incbin/arm9_data.bin", 0x340, 0x358 - 0x340

	.global Unk_020FF038
Unk_020FF038: ; 0x020FF038
	.incbin "incbin/arm9_data.bin", 0x358, 0x370 - 0x358

	.global Unk_020FF050
Unk_020FF050: ; 0x020FF050
	.incbin "incbin/arm9_data.bin", 0x370, 0x388 - 0x370

	.global Unk_020FF068
Unk_020FF068: ; 0x020FF068
	.incbin "incbin/arm9_data.bin", 0x388, 0x3A0 - 0x388

	.global Unk_020FF080
Unk_020FF080: ; 0x020FF080
	.incbin "incbin/arm9_data.bin", 0x3A0, 0x3B8 - 0x3A0

	.global Unk_020FF098
Unk_020FF098: ; 0x020FF098
	.incbin "incbin/arm9_data.bin", 0x3B8, 0x3D0 - 0x3B8

	.global Unk_020FF0B0
Unk_020FF0B0: ; 0x020FF0B0
	.incbin "incbin/arm9_data.bin", 0x3D0, 0x3E8 - 0x3D0

	.global Unk_020FF0C8
Unk_020FF0C8: ; 0x020FF0C8
	.incbin "incbin/arm9_data.bin", 0x3E8, 0x400 - 0x3E8

	.global Unk_020FF0E0
Unk_020FF0E0: ; 0x020FF0E0
	.incbin "incbin/arm9_data.bin", 0x400, 0x418 - 0x400

	.global Unk_020FF0F8
Unk_020FF0F8: ; 0x020FF0F8
	.incbin "incbin/arm9_data.bin", 0x418, 0x430 - 0x418

	.global Unk_020FF110
Unk_020FF110: ; 0x020FF110
	.incbin "incbin/arm9_data.bin", 0x430, 0x448 - 0x430

	.global Unk_020FF128
Unk_020FF128: ; 0x020FF128
	.incbin "incbin/arm9_data.bin", 0x448, 0x460 - 0x448

	.global Unk_020FF140
Unk_020FF140: ; 0x020FF140
	.incbin "incbin/arm9_data.bin", 0x460, 0x478 - 0x460

	.global Unk_020FF158
Unk_020FF158: ; 0x020FF158
	.incbin "incbin/arm9_data.bin", 0x478, 0x490 - 0x478

	.global Unk_020FF170
Unk_020FF170: ; 0x020FF170
	.incbin "incbin/arm9_data.bin", 0x490, 0x4A8 - 0x490

	.global Unk_020FF188
Unk_020FF188: ; 0x020FF188
	.incbin "incbin/arm9_data.bin", 0x4A8, 0x4C0 - 0x4A8

	.global Unk_020FF1A0
Unk_020FF1A0: ; 0x020FF1A0
	.incbin "incbin/arm9_data.bin", 0x4C0, 0x4D8 - 0x4C0

	.global Unk_020FF1B8
Unk_020FF1B8: ; 0x020FF1B8
	.incbin "incbin/arm9_data.bin", 0x4D8, 0x4F0 - 0x4D8

	.global Unk_020FF1D0
Unk_020FF1D0: ; 0x020FF1D0
	.incbin "incbin/arm9_data.bin", 0x4F0, 0x508 - 0x4F0

	.global Unk_020FF1E8
Unk_020FF1E8: ; 0x020FF1E8
	.incbin "incbin/arm9_data.bin", 0x508, 0x520 - 0x508

	.global Unk_020FF200
Unk_020FF200: ; 0x020FF200
	.incbin "incbin/arm9_data.bin", 0x520, 0x538 - 0x520

	.global Unk_020FF218
Unk_020FF218: ; 0x020FF218
	.incbin "incbin/arm9_data.bin", 0x538, 0x550 - 0x538

	.global Unk_020FF230
Unk_020FF230: ; 0x020FF230
	.incbin "incbin/arm9_data.bin", 0x550, 0x568 - 0x550

	.global Unk_020FF248
Unk_020FF248: ; 0x020FF248
	.incbin "incbin/arm9_data.bin", 0x568, 0x580 - 0x568

	.global Unk_020FF260
Unk_020FF260: ; 0x020FF260
	.incbin "incbin/arm9_data.bin", 0x580, 0x598 - 0x580

	.global Unk_020FF278
Unk_020FF278: ; 0x020FF278
	.incbin "incbin/arm9_data.bin", 0x598, 0x5B0 - 0x598

	.global Unk_020FF290
Unk_020FF290: ; 0x020FF290
	.incbin "incbin/arm9_data.bin", 0x5B0, 0x5C8 - 0x5B0

	.global Unk_020FF2A8
Unk_020FF2A8: ; 0x020FF2A8
	.incbin "incbin/arm9_data.bin", 0x5C8, 0x5E0 - 0x5C8

	.global Unk_020FF2C0
Unk_020FF2C0: ; 0x020FF2C0
	.incbin "incbin/arm9_data.bin", 0x5E0, 0x5F8 - 0x5E0

	.global Unk_020FF2D8
Unk_020FF2D8: ; 0x020FF2D8
	.incbin "incbin/arm9_data.bin", 0x5F8, 0x610 - 0x5F8

	.global Unk_020FF2F0
Unk_020FF2F0: ; 0x020FF2F0
	.incbin "incbin/arm9_data.bin", 0x610, 0x628 - 0x610

	.global Unk_020FF308
Unk_020FF308: ; 0x020FF308
	.incbin "incbin/arm9_data.bin", 0x628, 0x640 - 0x628

	.global Unk_020FF320
Unk_020FF320: ; 0x020FF320
	.incbin "incbin/arm9_data.bin", 0x640, 0x658 - 0x640

	.global Unk_020FF338
Unk_020FF338: ; 0x020FF338
	.incbin "incbin/arm9_data.bin", 0x658, 0x670 - 0x658

	.global Unk_020FF350
Unk_020FF350: ; 0x020FF350
	.incbin "incbin/arm9_data.bin", 0x670, 0x688 - 0x670

	.global Unk_020FF368
Unk_020FF368: ; 0x020FF368
	.incbin "incbin/arm9_data.bin", 0x688, 0x6A4 - 0x688

	.global Unk_020FF384
Unk_020FF384: ; 0x020FF384
	.incbin "incbin/arm9_data.bin", 0x6A4, 0x6C0 - 0x6A4

	.global Unk_020FF3A0
Unk_020FF3A0: ; 0x020FF3A0
	.incbin "incbin/arm9_data.bin", 0x6C0, 0x6DC - 0x6C0

	.global Unk_020FF3BC
Unk_020FF3BC: ; 0x020FF3BC
	.incbin "incbin/arm9_data.bin", 0x6DC, 0x6F8 - 0x6DC

	.global Unk_020FF3D8
Unk_020FF3D8: ; 0x020FF3D8
	.incbin "incbin/arm9_data.bin", 0x6F8, 0x714 - 0x6F8

	.global Unk_020FF3F4
Unk_020FF3F4: ; 0x020FF3F4
	.incbin "incbin/arm9_data.bin", 0x714, 0x730 - 0x714

	.global Unk_020FF410
Unk_020FF410: ; 0x020FF410
	.incbin "incbin/arm9_data.bin", 0x730, 0x74C - 0x730

	.global Unk_020FF42C
Unk_020FF42C: ; 0x020FF42C
	.incbin "incbin/arm9_data.bin", 0x74C, 0x768 - 0x74C

	.global Unk_020FF448
Unk_020FF448: ; 0x020FF448
	.incbin "incbin/arm9_data.bin", 0x768, 0x784 - 0x768

	.global Unk_020FF464
Unk_020FF464: ; 0x020FF464
	.incbin "incbin/arm9_data.bin", 0x784, 0x7A0 - 0x784

	.global Unk_020FF480
Unk_020FF480: ; 0x020FF480
	.incbin "incbin/arm9_data.bin", 0x7A0, 0x7BC - 0x7A0

	.global Unk_020FF49C
Unk_020FF49C: ; 0x020FF49C
	.incbin "incbin/arm9_data.bin", 0x7BC, 0x7D8 - 0x7BC

	.global Unk_020FF4B8
Unk_020FF4B8: ; 0x020FF4B8
	.incbin "incbin/arm9_data.bin", 0x7D8, 0x7F4 - 0x7D8

	.global Unk_020FF4D4
Unk_020FF4D4: ; 0x020FF4D4
	.incbin "incbin/arm9_data.bin", 0x7F4, 0x810 - 0x7F4

	.global Unk_020FF4F0
Unk_020FF4F0: ; 0x020FF4F0
	.incbin "incbin/arm9_data.bin", 0x810, 0x82C - 0x810

	.global Unk_020FF50C
Unk_020FF50C: ; 0x020FF50C
	.incbin "incbin/arm9_data.bin", 0x82C, 0x848 - 0x82C

	.global Unk_020FF528
Unk_020FF528: ; 0x020FF528
	.incbin "incbin/arm9_data.bin", 0x848, 0x864 - 0x848

	.global Unk_020FF544
Unk_020FF544: ; 0x020FF544
	.incbin "incbin/arm9_data.bin", 0x864, 0x880 - 0x864

	.global Unk_020FF560
Unk_020FF560: ; 0x020FF560
	.incbin "incbin/arm9_data.bin", 0x880, 0x89C - 0x880

	.global Unk_020FF57C
Unk_020FF57C: ; 0x020FF57C
	.incbin "incbin/arm9_data.bin", 0x89C, 0x8B8 - 0x89C

	.global Unk_020FF598
Unk_020FF598: ; 0x020FF598
	.incbin "incbin/arm9_data.bin", 0x8B8, 0x8D4 - 0x8B8

	.global Unk_020FF5B4
Unk_020FF5B4: ; 0x020FF5B4
	.incbin "incbin/arm9_data.bin", 0x8D4, 0x8F0 - 0x8D4

	.global Unk_020FF5D0
Unk_020FF5D0: ; 0x020FF5D0
	.incbin "incbin/arm9_data.bin", 0x8F0, 0x90C - 0x8F0

	.global Unk_020FF5EC
Unk_020FF5EC: ; 0x020FF5EC
	.incbin "incbin/arm9_data.bin", 0x90C, 0x928 - 0x90C

	.global Unk_020FF608
Unk_020FF608: ; 0x020FF608
	.incbin "incbin/arm9_data.bin", 0x928, 0x944 - 0x928

	.global Unk_020FF624
Unk_020FF624: ; 0x020FF624
	.incbin "incbin/arm9_data.bin", 0x944, 0x960 - 0x944

	.global Unk_020FF640
Unk_020FF640: ; 0x020FF640
	.incbin "incbin/arm9_data.bin", 0x960, 0x97C - 0x960

	.global Unk_020FF65C
Unk_020FF65C: ; 0x020FF65C
	.incbin "incbin/arm9_data.bin", 0x97C, 0x998 - 0x97C

	.global Unk_020FF678
Unk_020FF678: ; 0x020FF678
	.incbin "incbin/arm9_data.bin", 0x998, 0x9B8 - 0x998

	.global Unk_020FF698
Unk_020FF698: ; 0x020FF698
	.incbin "incbin/arm9_data.bin", 0x9B8, 0x9D8 - 0x9B8

	.global Unk_020FF6B8
Unk_020FF6B8: ; 0x020FF6B8
	.incbin "incbin/arm9_data.bin", 0x9D8, 0x9F8 - 0x9D8

	.global Unk_020FF6D8
Unk_020FF6D8: ; 0x020FF6D8
	.incbin "incbin/arm9_data.bin", 0x9F8, 0xA18 - 0x9F8

	.global Unk_020FF6F8
Unk_020FF6F8: ; 0x020FF6F8
	.incbin "incbin/arm9_data.bin", 0xA18, 0xA38 - 0xA18

	.global Unk_020FF718
Unk_020FF718: ; 0x020FF718
	.incbin "incbin/arm9_data.bin", 0xA38, 0xA58 - 0xA38

	.global Unk_020FF738
Unk_020FF738: ; 0x020FF738
	.incbin "incbin/arm9_data.bin", 0xA58, 0xA78 - 0xA58

	.global Unk_020FF758
Unk_020FF758: ; 0x020FF758
	.incbin "incbin/arm9_data.bin", 0xA78, 0xA98 - 0xA78

	.global Unk_020FF778
Unk_020FF778: ; 0x020FF778
	.incbin "incbin/arm9_data.bin", 0xA98, 0xAB8 - 0xA98

	.global Unk_020FF798
Unk_020FF798: ; 0x020FF798
	.incbin "incbin/arm9_data.bin", 0xAB8, 0xAD8 - 0xAB8

	.global Unk_020FF7B8
Unk_020FF7B8: ; 0x020FF7B8
	.incbin "incbin/arm9_data.bin", 0xAD8, 0xAF8 - 0xAD8

	.global Unk_020FF7D8
Unk_020FF7D8: ; 0x020FF7D8
	.incbin "incbin/arm9_data.bin", 0xAF8, 0xB18 - 0xAF8

	.global Unk_020FF7F8
Unk_020FF7F8: ; 0x020FF7F8
	.incbin "incbin/arm9_data.bin", 0xB18, 0xB38 - 0xB18

	.global Unk_020FF818
Unk_020FF818: ; 0x020FF818
	.incbin "incbin/arm9_data.bin", 0xB38, 0xB58 - 0xB38

	.global Unk_020FF838
Unk_020FF838: ; 0x020FF838
	.incbin "incbin/arm9_data.bin", 0xB58, 0xB78 - 0xB58

	.global Unk_020FF858
Unk_020FF858: ; 0x020FF858
	.incbin "incbin/arm9_data.bin", 0xB78, 0xB98 - 0xB78

	.global Unk_020FF878
Unk_020FF878: ; 0x020FF878
	.incbin "incbin/arm9_data.bin", 0xB98, 0xBB8 - 0xB98

	.global Unk_020FF898
Unk_020FF898: ; 0x020FF898
	.incbin "incbin/arm9_data.bin", 0xBB8, 0xBD8 - 0xBB8

	.global Unk_020FF8B8
Unk_020FF8B8: ; 0x020FF8B8
	.incbin "incbin/arm9_data.bin", 0xBD8, 0xBF8 - 0xBD8

	.global Unk_020FF8D8
Unk_020FF8D8: ; 0x020FF8D8
	.incbin "incbin/arm9_data.bin", 0xBF8, 0xC18 - 0xBF8

	.global Unk_020FF8F8
Unk_020FF8F8: ; 0x020FF8F8
	.incbin "incbin/arm9_data.bin", 0xC18, 0xC38 - 0xC18

	.global Unk_020FF918
Unk_020FF918: ; 0x020FF918
	.incbin "incbin/arm9_data.bin", 0xC38, 0xC58 - 0xC38

	.global Unk_020FF938
Unk_020FF938: ; 0x020FF938
	.incbin "incbin/arm9_data.bin", 0xC58, 0xC78 - 0xC58

	.global Unk_020FF958
Unk_020FF958: ; 0x020FF958
	.incbin "incbin/arm9_data.bin", 0xC78, 0xC98 - 0xC78

	.global Unk_020FF978
Unk_020FF978: ; 0x020FF978
	.incbin "incbin/arm9_data.bin", 0xC98, 0xCB8 - 0xC98

	.global Unk_020FF998
Unk_020FF998: ; 0x020FF998
	.incbin "incbin/arm9_data.bin", 0xCB8, 0xCD8 - 0xCB8

	.global Unk_020FF9B8
Unk_020FF9B8: ; 0x020FF9B8
	.incbin "incbin/arm9_data.bin", 0xCD8, 0xCF8 - 0xCD8

	.global Unk_020FF9D8
Unk_020FF9D8: ; 0x020FF9D8
	.incbin "incbin/arm9_data.bin", 0xCF8, 0xD18 - 0xCF8

	.global Unk_020FF9F8
Unk_020FF9F8: ; 0x020FF9F8
	.incbin "incbin/arm9_data.bin", 0xD18, 0xD38 - 0xD18

	.global Unk_020FFA18
Unk_020FFA18: ; 0x020FFA18
	.incbin "incbin/arm9_data.bin", 0xD38, 0xD58 - 0xD38

	.global Unk_020FFA38
Unk_020FFA38: ; 0x020FFA38
	.incbin "incbin/arm9_data.bin", 0xD58, 0xD78 - 0xD58

	.global Unk_020FFA58
Unk_020FFA58: ; 0x020FFA58
	.incbin "incbin/arm9_data.bin", 0xD78, 0xD9C - 0xD78

	.global Unk_020FFA7C
Unk_020FFA7C: ; 0x020FFA7C
	.incbin "incbin/arm9_data.bin", 0xD9C, 0xDC0 - 0xD9C

	.global Unk_020FFAA0
Unk_020FFAA0: ; 0x020FFAA0
	.incbin "incbin/arm9_data.bin", 0xDC0, 0xDE4 - 0xDC0

	.global Unk_020FFAC4
Unk_020FFAC4: ; 0x020FFAC4
	.incbin "incbin/arm9_data.bin", 0xDE4, 0xE08 - 0xDE4

	.global Unk_020FFAE8
Unk_020FFAE8: ; 0x020FFAE8
	.incbin "incbin/arm9_data.bin", 0xE08, 0xE2C - 0xE08

	.global Unk_020FFB0C
Unk_020FFB0C: ; 0x020FFB0C
	.incbin "incbin/arm9_data.bin", 0xE2C, 0xE50 - 0xE2C

	.global Unk_020FFB30
Unk_020FFB30: ; 0x020FFB30
	.incbin "incbin/arm9_data.bin", 0xE50, 0xE74 - 0xE50

	.global Unk_020FFB54
Unk_020FFB54: ; 0x020FFB54
	.incbin "incbin/arm9_data.bin", 0xE74, 0xE98 - 0xE74

	.global Unk_020FFB78
Unk_020FFB78: ; 0x020FFB78
	.incbin "incbin/arm9_data.bin", 0xE98, 0xEBC - 0xE98

	.global Unk_020FFB9C
Unk_020FFB9C: ; 0x020FFB9C
	.incbin "incbin/arm9_data.bin", 0xEBC, 0xEE0 - 0xEBC

	.global Unk_020FFBC0
Unk_020FFBC0: ; 0x020FFBC0
	.incbin "incbin/arm9_data.bin", 0xEE0, 0xF04 - 0xEE0

	.global Unk_020FFBE4
Unk_020FFBE4: ; 0x020FFBE4
	.incbin "incbin/arm9_data.bin", 0xF04, 0xF28 - 0xF04

	.global Unk_020FFC08
Unk_020FFC08: ; 0x020FFC08
	.incbin "incbin/arm9_data.bin", 0xF28, 0xF4C - 0xF28

	.global Unk_020FFC2C
Unk_020FFC2C: ; 0x020FFC2C
	.incbin "incbin/arm9_data.bin", 0xF4C, 0xF70 - 0xF4C

	.global Unk_020FFC50
Unk_020FFC50: ; 0x020FFC50
	.incbin "incbin/arm9_data.bin", 0xF70, 0xF94 - 0xF70

	.global Unk_020FFC74
Unk_020FFC74: ; 0x020FFC74
	.incbin "incbin/arm9_data.bin", 0xF94, 0xFB8 - 0xF94

	.global Unk_020FFC98
Unk_020FFC98: ; 0x020FFC98
	.incbin "incbin/arm9_data.bin", 0xFB8, 0xFDC - 0xFB8

	.global Unk_020FFCBC
Unk_020FFCBC: ; 0x020FFCBC
	.incbin "incbin/arm9_data.bin", 0xFDC, 0x1000 - 0xFDC

	.global Unk_020FFCE0
Unk_020FFCE0: ; 0x020FFCE0
	.incbin "incbin/arm9_data.bin", 0x1000, 0x1024 - 0x1000

	.global Unk_020FFD04
Unk_020FFD04: ; 0x020FFD04
	.incbin "incbin/arm9_data.bin", 0x1024, 0x1048 - 0x1024

	.global Unk_020FFD28
Unk_020FFD28: ; 0x020FFD28
	.incbin "incbin/arm9_data.bin", 0x1048, 0x106C - 0x1048

	.global Unk_020FFD4C
Unk_020FFD4C: ; 0x020FFD4C
	.incbin "incbin/arm9_data.bin", 0x106C, 0x1090 - 0x106C

	.global Unk_020FFD70
Unk_020FFD70: ; 0x020FFD70
	.incbin "incbin/arm9_data.bin", 0x1090, 0x10B4 - 0x1090

	.global Unk_020FFD94
Unk_020FFD94: ; 0x020FFD94
	.incbin "incbin/arm9_data.bin", 0x10B4, 0x10DC - 0x10B4

	.global Unk_020FFDBC
Unk_020FFDBC: ; 0x020FFDBC
	.incbin "incbin/arm9_data.bin", 0x10DC, 0x1104 - 0x10DC

	.global Unk_020FFDE4
Unk_020FFDE4: ; 0x020FFDE4
	.incbin "incbin/arm9_data.bin", 0x1104, 0x112C - 0x1104

	.global Unk_020FFE0C
Unk_020FFE0C: ; 0x020FFE0C
	.incbin "incbin/arm9_data.bin", 0x112C, 0x1154 - 0x112C

	.global Unk_020FFE34
Unk_020FFE34: ; 0x020FFE34
	.incbin "incbin/arm9_data.bin", 0x1154, 0x117C - 0x1154

	.global Unk_020FFE5C
Unk_020FFE5C: ; 0x020FFE5C
	.incbin "incbin/arm9_data.bin", 0x117C, 0x11A4 - 0x117C

	.global Unk_020FFE84
Unk_020FFE84: ; 0x020FFE84
	.incbin "incbin/arm9_data.bin", 0x11A4, 0x11CC - 0x11A4

	.global Unk_020FFEAC
Unk_020FFEAC: ; 0x020FFEAC
	.incbin "incbin/arm9_data.bin", 0x11CC, 0x11F4 - 0x11CC

	.global Unk_020FFED4
Unk_020FFED4: ; 0x020FFED4
	.incbin "incbin/arm9_data.bin", 0x11F4, 0x121C - 0x11F4

	.global Unk_020FFEFC
Unk_020FFEFC: ; 0x020FFEFC
	.incbin "incbin/arm9_data.bin", 0x121C, 0x1244 - 0x121C

	.global Unk_020FFF24
Unk_020FFF24: ; 0x020FFF24
	.incbin "incbin/arm9_data.bin", 0x1244, 0x126C - 0x1244

	.global Unk_020FFF4C
Unk_020FFF4C: ; 0x020FFF4C
	.incbin "incbin/arm9_data.bin", 0x126C, 0x1294 - 0x126C

	.global Unk_020FFF74
Unk_020FFF74: ; 0x020FFF74
	.incbin "incbin/arm9_data.bin", 0x1294, 0x12BC - 0x1294

	.global Unk_020FFF9C
Unk_020FFF9C: ; 0x020FFF9C
	.incbin "incbin/arm9_data.bin", 0x12BC, 0x12E4 - 0x12BC

	.global Unk_020FFFC4
Unk_020FFFC4: ; 0x020FFFC4
	.incbin "incbin/arm9_data.bin", 0x12E4, 0x1310 - 0x12E4

	.global Unk_020FFFF0
Unk_020FFFF0: ; 0x020FFFF0
	.incbin "incbin/arm9_data.bin", 0x1310, 0x133C - 0x1310

	.global Unk_0210001C
Unk_0210001C: ; 0x0210001C
	.incbin "incbin/arm9_data.bin", 0x133C, 0x1368 - 0x133C

	.global Unk_02100048
Unk_02100048: ; 0x02100048
	.incbin "incbin/arm9_data.bin", 0x1368, 0x1394 - 0x1368

	.global Unk_02100074
Unk_02100074: ; 0x02100074
	.incbin "incbin/arm9_data.bin", 0x1394, 0x13C0 - 0x1394

	.global Unk_021000A0
Unk_021000A0: ; 0x021000A0
	.incbin "incbin/arm9_data.bin", 0x13C0, 0x13F0 - 0x13C0

	.global Unk_021000D0
Unk_021000D0: ; 0x021000D0
	.incbin "incbin/arm9_data.bin", 0x13F0, 0x1420 - 0x13F0

	.global Unk_02100100
Unk_02100100: ; 0x02100100
	.incbin "incbin/arm9_data.bin", 0x1420, 0x1450 - 0x1420

	.global Unk_02100130
Unk_02100130: ; 0x02100130
	.incbin "incbin/arm9_data.bin", 0x1450, 0x1480 - 0x1450

	.global Unk_02100160
Unk_02100160: ; 0x02100160
	.incbin "incbin/arm9_data.bin", 0x1480, 0x14B0 - 0x1480

	.global Unk_02100190
Unk_02100190: ; 0x02100190
	.incbin "incbin/arm9_data.bin", 0x14B0, 0x14E0 - 0x14B0

	.global Unk_021001C0
Unk_021001C0: ; 0x021001C0
	.incbin "incbin/arm9_data.bin", 0x14E0, 0x1510 - 0x14E0

	.global Unk_021001F0
Unk_021001F0: ; 0x021001F0
	.incbin "incbin/arm9_data.bin", 0x1510, 0x1540 - 0x1510

	.global Unk_02100220
Unk_02100220: ; 0x02100220
	.incbin "incbin/arm9_data.bin", 0x1540, 0x1570 - 0x1540

	.global Unk_02100250
Unk_02100250: ; 0x02100250
	.incbin "incbin/arm9_data.bin", 0x1570, 0x15A0 - 0x1570

	.global Unk_02100280
Unk_02100280: ; 0x02100280
	.incbin "incbin/arm9_data.bin", 0x15A0, 0x15D4 - 0x15A0

	.global Unk_021002B4
Unk_021002B4: ; 0x021002B4
	.incbin "incbin/arm9_data.bin", 0x15D4, 0x1608 - 0x15D4

	.global Unk_021002E8
Unk_021002E8: ; 0x021002E8
	.incbin "incbin/arm9_data.bin", 0x1608, 0x163C - 0x1608

	.global Unk_0210031C
Unk_0210031C: ; 0x0210031C
	.incbin "incbin/arm9_data.bin", 0x163C, 0x1670 - 0x163C

	.global Unk_02100350
Unk_02100350: ; 0x02100350
	.incbin "incbin/arm9_data.bin", 0x1670, 0x16A4 - 0x1670

	.global Unk_02100384
Unk_02100384: ; 0x02100384
	.incbin "incbin/arm9_data.bin", 0x16A4, 0x16D8 - 0x16A4

	.global Unk_021003B8
Unk_021003B8: ; 0x021003B8
	.incbin "incbin/arm9_data.bin", 0x16D8, 0x1710 - 0x16D8

	.global Unk_021003F0
Unk_021003F0: ; 0x021003F0
	.incbin "incbin/arm9_data.bin", 0x1710, 0x1748 - 0x1710

	.global Unk_02100428
Unk_02100428: ; 0x02100428
	.incbin "incbin/arm9_data.bin", 0x1748, 0x1780 - 0x1748

	.global Unk_02100460
Unk_02100460: ; 0x02100460
	.incbin "incbin/arm9_data.bin", 0x1780, 0x17B8 - 0x1780

	.global Unk_02100498
Unk_02100498: ; 0x02100498
	.incbin "incbin/arm9_data.bin", 0x17B8, 0x30C

