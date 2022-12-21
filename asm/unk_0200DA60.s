	.include "macros/function.inc"
	.include "include/unk_0200DA60.inc"

	

	.text


	thumb_func_start sub_0200DA60
sub_0200DA60: ; 0x0200DA60
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	cmp r3, #0
	str r2, [sp]
	bne _0200DA86
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x20]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02006E3C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0200DA86:
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r1, #1
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02006E3C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200DA60

	thumb_func_start sub_0200DAA0
sub_0200DAA0: ; 0x0200DAA0
	mov r0, #0x18
	bx lr
	thumb_func_end sub_0200DAA0

	thumb_func_start sub_0200DAA4
sub_0200DAA4: ; 0x0200DAA4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r5, r1, #0
	add r4, r3, #0
	cmp r0, #0
	beq _0200DABA
	mov r1, #1
	b _0200DABC
_0200DABA:
	mov r1, #0
_0200DABC:
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0
	bl sub_02006E3C
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	bne _0200DADE
	mov r1, #0x2d
	b _0200DAE0
_0200DADE:
	mov r1, #0x18
_0200DAE0:
	cmp r5, #4
	bhs _0200DAFA
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02006E84
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0200DAFA:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02006E84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200DAA4

	thumb_func_start sub_0200DB10
sub_0200DB10: ; 0x0200DB10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r5, [sp, #0x40]
	sub r7, r2, #1
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x10]
	sub r6, r2, #1
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	lsl r3, r6, #0x18
	str r5, [sp, #0xc]
	add r2, sp, #0x28
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r1, sp, #0x28
	ldrh r4, [r1, #0x1c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r1, #0x10]
	add r2, r4, #1
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	add r0, sp, #0x28
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r4, #2
	add r0, r0, r1
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x14]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x14]
	add r2, r4, #5
	lsl r2, r2, #0x10
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, sp, #0x28
	ldrb r1, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	add r2, r4, #6
	add r7, r0, r1
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	add r2, r4, #7
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r4, #8
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200DB10

	thumb_func_start sub_0200DC48
sub_0200DC48: ; 0x0200DC48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201C290
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201C29C
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201C2A0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0201C294
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_0201C298
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	str r1, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x18]
	bl sub_0200DB10
	cmp r4, #0
	bne _0200DC98
	add r0, r5, #0
	bl sub_0201A954
_0200DC98:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DC48

	thumb_func_start sub_0200DC9C
sub_0200DC9C: ; 0x0200DC9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201C290
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201C29C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C2A0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201C298
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	add r1, r1, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	sub r3, r6, #1
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	cmp r4, #0
	bne _0200DCFE
	add r0, r5, #0
	bl sub_0201ACF4
_0200DCFE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200DC9C

	thumb_func_start sub_0200DD04
sub_0200DD04: ; 0x0200DD04
	add r0, r0, #2
	bx lr
	thumb_func_end sub_0200DD04

	thumb_func_start sub_0200DD08
sub_0200DD08: ; 0x0200DD08
	add r0, #0x19
	bx lr
	thumb_func_end sub_0200DD08

	thumb_func_start sub_0200DD0C
sub_0200DD0C: ; 0x0200DD0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	ldrb r7, [r0, #0x10]
	add r6, r2, #0
	add r5, r1, #0
	add r0, r7, #0
	add r4, r3, #0
	bl sub_0200DD04
	add r1, r0, #0
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0
	bl sub_02006E3C
	cmp r5, #4
	bhs _0200DD5C
	add r0, r7, #0
	bl sub_0200DD08
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0200DD5C:
	add r0, r7, #0
	bl sub_0200DD08
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200DD0C

	thumb_func_start sub_0200DD7C
sub_0200DD7C: ; 0x0200DD7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r2, [sp, #0x4c]
	add r7, r0, #0
	str r2, [sp, #0x4c]
	ldr r2, [sp, #0x18]
	ldr r5, [sp, #0x50]
	sub r6, r2, #1
	ldr r2, [sp, #0x14]
	sub r2, r2, #2
	str r2, [sp, #0x28]
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, sp, #0x38
	lsl r3, r3, #0x18
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	add r0, sp, #0x38
	ldrh r4, [r0, #0x1c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x24]
	str r5, [sp, #0xc]
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	add r2, r4, #2
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	lsr r2, r2, #0x10
	bl sub_02019CB8
	add r0, sp, #0x38
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x14]
	add r2, r4, #3
	add r0, r0, r1
	str r0, [sp, #0x2c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x2c]
	add r2, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x20]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x2c]
	add r2, r4, #5
	add r0, r0, #2
	str r0, [sp, #0x1c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	add r2, r4, #6
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	add r2, r4, #7
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #9
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xb
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r2, r4, #0
	ldr r3, [sp, #0x28]
	add r2, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x4c]
	lsr r2, r2, #0x10
	add r6, r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x24]
	str r5, [sp, #0xc]
	add r2, #0xd
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	add r2, r4, #0
	add r2, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	lsr r2, r2, #0x10
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0xf
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r2, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	str r5, [sp, #0xc]
	add r4, #0x11
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200DD7C

	thumb_func_start sub_0200E010
sub_0200E010: ; 0x0200E010
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0201C290
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201C29C
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201C2A0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0201C294
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C298
	str r4, [sp]
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_0200DD7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E010

	thumb_func_start sub_0200E060
sub_0200E060: ; 0x0200E060
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	add r2, r3, #0
	add r5, r0, #0
	bl sub_0200E010
	cmp r4, #0
	bne _0200E07A
	add r0, r5, #0
	bl sub_0201A954
_0200E07A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200E130
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200E060

	thumb_func_start sub_0200E084
sub_0200E084: ; 0x0200E084
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201C290
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201C29C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C2A0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201C298
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	add r1, r1, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	sub r3, r6, #2
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	cmp r4, #0
	bne _0200E0E6
	add r0, r5, #0
	bl sub_0201ACF4
_0200E0E6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E084

	thumb_func_start sub_0200E0EC
sub_0200E0EC: ; 0x0200E0EC
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp, #0x1c]
	add r1, sp, #0x14
	strh r3, [r1, #0xc]
	add r4, r2, #0
	add r0, sp, #0x20
	ldrh r2, [r0, #0x10]
	add r3, r4, #0
	strh r2, [r1, #0xe]
	ldr r2, [sp, #0x34]
	str r2, [sp, #0x14]
	ldrh r2, [r0, #0x18]
	strh r2, [r1, #4]
	ldrh r2, [r0, #0x1c]
	strh r2, [r1, #6]
	ldrh r1, [r0, #0x20]
	add r2, r5, #0
	str r1, [sp]
	ldrh r1, [r0, #0x24]
	str r1, [sp, #4]
	ldrh r1, [r0, #0x28]
	str r1, [sp, #8]
	ldrh r0, [r0, #0x2c]
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl sub_0201A1E4
	add sp, #0x24
	pop {r4, r5, pc}
	thumb_func_end sub_0200E0EC

	thumb_func_start sub_0200E130
sub_0200E130: ; 0x0200E130
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
	ldr r0, [r0, #0]
	bl sub_02018364
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_0201C290
	mov r1, #6
	str r0, [sp, #0x28]
	add r0, r6, #0
	lsl r1, r1, #6
	bl sub_02018144
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	bl sub_02019F28
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0x26
	mov r1, #0x16
	mov r2, #0
	add r3, sp, #0x3c
	bl sub_02006F50
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	mov r7, #0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	add r0, #0xa
	lsl r0, r0, #5
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	add r0, #0xb
	lsl r0, r0, #5
	str r0, [sp, #0x38]
_0200E184:
	ldr r1, [sp, #0x34]
	lsl r6, r7, #7
	add r0, r5, r6
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r6, #0
	ldr r1, [sp, #0x38]
	add r0, #0x20
	add r0, r5, r0
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r6, #0
	ldr r1, [sp, #0x34]
	add r0, #0x40
	add r0, r5, r0
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020D50B8
	ldr r1, [sp, #0x38]
	add r6, #0x60
	add r0, r5, r6
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #3
	blo _0200E184
	mov r1, #0x30
	str r1, [sp]
	str r5, [sp, #4]
	mov r3, #0xc
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r2, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	mov r1, #4
	bl sub_0200E0EC
	ldr r0, [sp, #0x24]
	mov r3, #6
	add r0, #0x12
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0]
	add r2, r5, #0
	lsl r3, r3, #6
	bl sub_0201958C
	ldr r0, [sp, #0x24]
	bl sub_020027A8
	ldr r0, [sp, #0x2c]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E130

	thumb_func_start sub_0200E218
sub_0200E218: ; 0x0200E218
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	add r7, r2, #0
	add r5, r3, #0
	bl sub_0200DD04
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x26
	add r3, sp, #0x10
	bl sub_02006F50
	str r0, [sp, #0xc]
	mov r1, #9
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #6
	bl sub_02018144
	ldr r1, [sp, #0x10]
	mov r2, #9
	ldr r1, [r1, #0x14]
	lsl r2, r2, #6
	add r4, r0, #0
	bl sub_020D50B8
	mov r0, #9
	mov r3, #0
	lsl r0, r0, #6
	mov r1, #0xf
_0200E25E:
	ldrb r2, [r4, r3]
	lsl r6, r2, #0x14
	and r2, r1
	lsl r2, r2, #0x18
	lsr r6, r6, #0x18
	lsr r2, r2, #0x18
	cmp r6, #0
	bne _0200E270
	add r6, r5, #0
_0200E270:
	cmp r2, #0
	bne _0200E276
	add r2, r5, #0
_0200E276:
	lsl r6, r6, #4
	orr r2, r6
	strb r2, [r4, r3]
	add r3, r3, #1
	cmp r3, r0
	blo _0200E25E
	str r7, [sp]
	mov r3, #9
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r4, #0
	lsl r3, r3, #6
	bl sub_0201958C
	ldr r0, [sp, #0xc]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E218

	thumb_func_start sub_0200E2A4
sub_0200E2A4: ; 0x0200E2A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	add r5, r2, #0
	mov r0, #0xf
	add r6, r1, #0
	add r7, r3, #0
	str r5, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r1, #0
	ldr r4, [sp, #0x38]
	str r1, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, #0x24
	add r3, r6, #0
	str r4, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0x24
	mov r1, #1
	add r2, r4, #0
	bl sub_02006AC0
	add r1, sp, #0x18
	str r0, [sp, #0x14]
	bl sub_020A71B0
	add r2, sp, #0x20
	ldr r1, [sp, #0x18]
	ldrb r2, [r2, #0x10]
	lsl r3, r7, #0x15
	ldr r1, [r1, #0xc]
	lsl r2, r2, #5
	add r1, r1, r2
	add r0, r6, #0
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_0201972C
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl sub_02018238
	add r0, sp, #0x20
	ldrb r3, [r0, #0x10]
	cmp r3, #1
	bhi _0200E318
	ldrh r0, [r0, #0x14]
	add r5, #0x1e
	lsl r2, r5, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	lsr r2, r2, #0x10
	str r4, [sp, #4]
	bl sub_0200E31C
_0200E318:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E2A4

	thumb_func_start sub_0200E31C
sub_0200E31C: ; 0x0200E31C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [sp, #0x20]
	cmp r3, #0
	bne _0200E330
	add r1, #0x21
	lsl r0, r1, #0x10
	b _0200E334
_0200E330:
	add r0, r1, #2
	lsl r0, r0, #0x10
_0200E334:
	lsr r1, r0, #0x10
	mov r0, #3
	str r2, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x24
	add r3, r4, #0
	bl sub_02006E3C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200E31C

	thumb_func_start sub_0200E354
sub_0200E354: ; 0x0200E354
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r6, [sp, #0x5c]
	sub r7, r2, #1
	ldr r2, [sp, #0x18]
	ldr r5, [sp, #0x60]
	str r2, [sp, #0x34]
	sub r2, #9
	str r2, [sp, #0x34]
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [sp, #0x34]
	str r5, [sp, #0xc]
	add r2, sp, #0x48
	lsl r3, r3, #0x18
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	str r0, [sp, #0x10]
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	add r0, sp, #0x48
	ldrh r4, [r0, #0x1c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x30]
	str r5, [sp, #0xc]
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, sp, #0x48
	ldrb r0, [r0, #0x10]
	add r2, r4, #2
	lsl r2, r2, #0x10
	str r0, [sp, #0x3c]
	add r0, r0, #7
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	lsr r2, r2, #0x10
	sub r0, r0, #7
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r2, r4, #3
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	lsr r2, r2, #0x10
	add r0, r1, r0
	str r0, [sp, #0x38]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x38]
	add r2, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x2c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x38]
	add r0, r0, #2
	str r0, [sp, #0x28]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, r4, #5
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r4, #6
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r4, #7
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [sp, #0x18]
	add r2, #8
	sub r3, r3, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	add r2, #9
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, #0xb
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	add r6, r0, r6
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x34]
	str r5, [sp, #0xc]
	add r2, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x30]
	str r5, [sp, #0xc]
	add r2, #0xd
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r2, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r2, #0xe
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	add r2, #0xf
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r4, #0x11
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E354

	thumb_func_start sub_0200E61C
sub_0200E61C: ; 0x0200E61C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x10]
	add r7, r0, #0
	str r2, [sp, #0x14]
	bl sub_0201C290
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_0201C29C
	sub r0, r0, #7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl sub_0201C2A0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x24]
_0200E646:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r3, r2, #0
	add r0, r1, r0
	mov r1, #6
	mul r3, r1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x18
	mov r4, #0
	add r5, r1, r3
	lsr r6, r0, #0x18
_0200E65E:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	add r2, r4, r5
	add r3, r3, r4
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r7, #0]
	ldr r1, [sp, #0x20]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _0200E65E
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	cmp r0, #4
	blo _0200E646
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E61C

	thumb_func_start sub_0200E69C
sub_0200E69C: ; 0x0200E69C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r1, [sp, #0x10]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201C290
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bhi _0200E6FA
	add r0, r4, #0
	bl sub_0201C29C
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_0201C2A0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0201C294
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200E354
	add r1, r6, #0
	add r1, #0x1e
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0200E61C
	b _0200E72C
_0200E6FA:
	add r0, r4, #0
	bl sub_0201C29C
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_0201C2A0
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_0201C294
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200DD7C
_0200E72C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200E738
	add r0, r4, #0
	bl sub_0201A954
_0200E738:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200E130
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E69C

	thumb_func_start sub_0200E744
sub_0200E744: ; 0x0200E744
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x10]
	bl sub_0201C290
	str r0, [sp, #0x14]
	cmp r4, #1
	bhi _0200E7A2
	add r0, r5, #0
	bl sub_0201C29C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C2A0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C298
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r0, r0, #2
	lsl r0, r0, #0x18
	sub r4, #9
	lsl r3, r4, #0x18
	add r6, #0xb
	str r1, [sp]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	b _0200E7EA
_0200E7A2:
	add r0, r5, #0
	bl sub_0201C29C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C2A0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201C298
	sub r1, r6, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	add r1, r7, #5
	lsl r1, r1, #0x18
	add r0, r0, #2
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	sub r3, r4, #2
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_02019CB8
_0200E7EA:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200E7F6
	add r0, r5, #0
	bl sub_0201ACF4
_0200E7F6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E744

	thumb_func_start sub_0200E7FC
sub_0200E7FC: ; 0x0200E7FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x20]
	ldr r0, [r0, #0]
	str r1, [sp, #0x24]
	bl sub_02018364
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	bl sub_0201C290
	bl sub_02019F28
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	ldr r1, _0200E914 ; =0x0000048C
	bl sub_02018144
	ldr r1, [sp, #0x24]
	add r4, r0, #0
	ldr r0, _0200E918 ; =0x00000404
	add r1, #0x12
	lsl r1, r1, #5
	add r0, r4, r0
	add r1, r5, r1
	mov r2, #0x80
	bl sub_020D50B8
	ldr r0, [sp, #0x28]
	mov r1, #0x80
	bl sub_02018144
	ldr r1, [sp, #0x24]
	mov r2, #0x20
	add r1, #0xa
	lsl r1, r1, #5
	str r1, [sp, #0x2c]
	add r1, r5, r1
	add r6, r0, #0
	bl sub_020D50B8
	ldr r0, [sp, #0x24]
	mov r2, #0x20
	add r0, #0xb
	lsl r7, r0, #5
	add r0, r6, #0
	add r0, #0x20
	add r1, r5, r7
	bl sub_020D50B8
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	add r0, #0x40
	add r1, r5, r1
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r6, #0
	add r0, #0x60
	add r1, r5, r7
	mov r2, #0x20
	bl sub_020D50B8
	mov r5, #0
	add r7, r4, #4
_0200E87E:
	lsl r0, r5, #7
	add r0, r7, r0
	add r1, r6, #0
	mov r2, #0x80
	bl sub_020D50B8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0200E87E
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp, #0x28]
	mov r1, #0x17
	str r0, [sp]
	mov r0, #0x26
	mov r2, #0
	add r3, sp, #0x30
	bl sub_02006F50
	mov r2, #0x80
	add r5, r0, #0
	str r2, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	mov r3, #0x10
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	bl sub_0200E0EC
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp, #0x20]
	ldr r1, _0200E91C ; =0x00000484
	str r0, [r4, #0]
	ldr r0, [sp, #0x24]
	mov r2, #0
	strh r0, [r4, r1]
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #3
	ldrb r3, [r4, r0]
	mov r0, #0x7f
	bic r3, r0
	add r0, r1, #3
	strb r3, [r4, r0]
	add r0, r1, #4
	ldrb r3, [r4, r0]
	mov r0, #3
	bic r3, r0
	add r0, r1, #4
	strb r3, [r4, r0]
	ldr r0, _0200E920 ; =sub_0200EB20
	add r1, r4, #0
	bl sub_0200DA04
	add r0, r4, #0
	mov r1, #1
	bl sub_0200E924
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0200E914: .word 0x0000048C
_0200E918: .word 0x00000404
_0200E91C: .word 0x00000484
_0200E920: .word sub_0200EB20
	thumb_func_end sub_0200E7FC

	thumb_func_start sub_0200E924
sub_0200E924: ; 0x0200E924
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_0201C290
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_0201C29C
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	bl sub_0201C2A0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0]
	bl sub_0201C294
	str r0, [sp, #0x20]
	cmp r6, #2
	bne _0200EA2E
	ldr r2, _0200EB1C ; =0x00000484
	add r1, r4, #0
	ldrh r0, [r5, r2]
	sub r2, #0x80
	add r2, r5, r2
	add r0, #0x12
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r3, #0x80
	ldr r0, [r0, #0]
	bl sub_0201958C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r7, r0, #2
	ldr r0, [sp, #0x20]
	ldr r2, _0200EB1C ; =0x00000484
	add r6, r1, r0
	add r0, r6, #1
	str r0, [sp, #0x14]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, r2]
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x14]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	add r6, r6, #2
	lsl r3, r6, #0x18
	add r2, #0xb
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	add r7, r0, #3
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	add r2, #0xa
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	lsl r3, r6, #0x18
	ldr r0, [r0, #0]
	add r2, #0xb
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl sub_02019448
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0200EA2E:
	ldr r3, _0200EB1C ; =0x00000484
	add r2, r5, #4
	ldrh r0, [r5, r3]
	add r3, r3, #3
	add r1, r4, #0
	add r0, #0x12
	str r0, [sp]
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0]
	lsl r3, r3, #0x19
	lsr r3, r3, #0x19
	lsl r3, r3, #7
	add r2, r2, r3
	ldr r0, [r0, #0]
	mov r3, #0x80
	bl sub_0201958C
	cmp r6, #0
	beq _0200EB16
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r7, r0, #2
	ldr r0, [sp, #0x20]
	ldr r2, _0200EB1C ; =0x00000484
	add r6, r1, r0
	add r0, r6, #1
	str r0, [sp, #0x10]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, r2]
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x10]
	add r2, #0x12
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	add r6, r6, #2
	lsl r3, r6, #0x18
	add r2, #0x13
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x10]
	add r7, r0, #3
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	add r2, #0x14
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	lsl r3, r6, #0x18
	ldr r0, [r0, #0]
	add r2, #0x15
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl sub_02019448
_0200EB16:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0200EB1C: .word 0x00000484
	thumb_func_end sub_0200E924

	thumb_func_start sub_0200EB20
sub_0200EB20: ; 0x0200EB20
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0200EB88 ; =0x00000488
	ldrb r2, [r1, r0]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	beq _0200EB42
	cmp r2, #1
	bne _0200EB3A
	add r0, r1, #0
	mov r1, #2
	bl sub_0200E924
_0200EB3A:
	add r0, r4, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_0200EB42:
	sub r2, r0, #2
	ldrb r2, [r1, r2]
	add r3, r2, #1
	sub r2, r0, #2
	strb r3, [r1, r2]
	ldrb r2, [r1, r2]
	cmp r2, #0x10
	bne _0200EB84
	mov r3, #0
	sub r2, r0, #2
	strb r3, [r1, r2]
	sub r2, r0, #1
	ldrb r2, [r1, r2]
	mov r4, #0x7f
	bic r2, r4
	sub r4, r0, #1
	ldrb r4, [r1, r4]
	sub r0, r0, #1
	lsl r4, r4, #0x19
	lsr r4, r4, #0x19
	add r5, r4, #1
	mov r4, #7
	and r4, r5
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	mov r4, #0x7f
	and r4, r5
	orr r2, r4
	strb r2, [r1, r0]
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0200E924
_0200EB84:
	pop {r3, r4, r5, pc}
	nop
_0200EB88: .word 0x00000488
	thumb_func_end sub_0200EB20

	thumb_func_start sub_0200EB8C
sub_0200EB8C: ; 0x0200EB8C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200EB8C

	thumb_func_start sub_0200EBA0
sub_0200EBA0: ; 0x0200EBA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0200EBC0 ; =sub_0200EB8C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	ldr r1, _0200EBC4 ; =0x00000488
	mov r0, #3
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_0200EBC0: .word sub_0200EB8C
_0200EBC4: .word 0x00000488
	thumb_func_end sub_0200EBA0

	thumb_func_start sub_0200EBC8
sub_0200EBC8: ; 0x0200EBC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0200EBE8 ; =sub_0200EB8C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	ldr r1, _0200EBEC ; =0x00000488
	mov r0, #3
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_0200EBE8: .word sub_0200EB8C
_0200EBEC: .word 0x00000488
	thumb_func_end sub_0200EBC8

	thumb_func_start sub_0200EBF0
sub_0200EBF0: ; 0x0200EBF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	ldr r5, [sp, #0x30]
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	str r5, [sp]
	bl sub_0200ED14
	add r4, r0, #0
	add r1, r5, #0
	bl sub_0200ED50
	add r0, r4, #0
	bl sub_0200ED7C
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_0200EDD4
	add r2, sp, #0x10
	ldrh r1, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	add r0, r4, #0
	bl sub_0200EE24
	add r2, sp, #0x10
	ldrb r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	add r0, r4, #0
	bl sub_0200EF7C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02019448
	ldr r0, _0200EC44 ; =0x0000016F
	add r0, r4, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0200EC44: .word 0x0000016F
	thumb_func_end sub_0200EBF0

	thumb_func_start sub_0200EC48
sub_0200EC48: ; 0x0200EC48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	ldr r5, [sp, #0x2c]
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	str r5, [sp]
	bl sub_0200ED14
	add r4, r0, #0
	add r1, r5, #0
	bl sub_0200ED50
	add r0, r4, #0
	bl sub_0200ED7C
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_0200EDD4
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl sub_0200EE64
	add r2, sp, #0x10
	ldrb r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	add r0, r4, #0
	bl sub_0200EF7C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02019448
	ldr r0, _0200EC98 ; =0x0000016F
	add r0, r4, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0200EC98: .word 0x0000016F
	thumb_func_end sub_0200EC48

	thumb_func_start sub_0200EC9C
sub_0200EC9C: ; 0x0200EC9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200ED10 ; =0x0000016F
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #1
	beq _0200ECB4
	cmp r1, #2
	beq _0200ECD2
	cmp r1, #3
	beq _0200ECE4
	b _0200ECF8
_0200ECB4:
	add r0, r4, #0
	bl sub_0200F12C
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	add r0, r4, #0
	bl ov5_021D375C
	add r0, r5, #0
	bl sub_020067D0
	pop {r3, r4, r5, pc}
_0200ECD2:
	mov r1, #3
	strb r1, [r4, r0]
	sub r0, #0xb
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02021D6C
	b _0200ECF8
_0200ECE4:
	sub r0, #0xb
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_02021E74
	cmp r0, #6
	bne _0200ECF8
	ldr r0, _0200ED10 ; =0x0000016F
	mov r1, #0
	strb r1, [r4, r0]
_0200ECF8:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0]
	bl sub_020219F8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0200ED10: .word 0x0000016F
	thumb_func_end sub_0200EC9C

	thumb_func_start sub_0200ED14
sub_0200ED14: ; 0x0200ED14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	mov r1, #0x17
	add r6, r2, #0
	ldr r0, _0200ED48 ; =sub_0200EC9C
	ldr r3, [sp, #0x18]
	lsl r1, r1, #4
	mov r2, #0
	bl sub_0200679C
	bl sub_0201CED0
	ldr r1, _0200ED4C ; =0x0000016F
	mov r2, #0
	strb r2, [r0, r1]
	sub r2, r1, #7
	str r5, [r0, r2]
	sub r2, r1, #3
	strb r4, [r0, r2]
	sub r2, r1, #2
	strb r6, [r0, r2]
	sub r1, r1, #1
	strb r7, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200ED48: .word sub_0200EC9C
_0200ED4C: .word 0x0000016F
	thumb_func_end sub_0200ED14

	thumb_func_start sub_0200ED50
sub_0200ED50: ; 0x0200ED50
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r5, _0200ED78 ; =0x020E5028
	add r4, sp, #0
	add r6, r0, #0
	add r3, r1, #0
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r1, r2, #0
	add r0, r6, #0
	mov r2, #1
	bl ov5_021D3190
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0200ED78: .word 0x020E5028
	thumb_func_end sub_0200ED50

	thumb_func_start sub_0200ED7C
sub_0200ED7C: ; 0x0200ED7C
	push {r3, r4, lr}
	sub sp, #0xc
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, _0200EDD0 ; =0x00015CD5
	mov r2, #0x31
	str r1, [sp, #8]
	mov r1, #0x26
	mov r3, #0
	add r4, r0, #0
	bl ov5_021D3270
	ldr r0, _0200EDD0 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0x2f
	mov r3, #0
	bl ov5_021D3360
	ldr r0, _0200EDD0 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0x2e
	mov r3, #0
	bl ov5_021D3388
	mov r0, #1
	str r0, [sp]
	ldr r0, _0200EDD0 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x30
	mov r3, #0
	bl ov5_021D33B0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0200EDD0: .word 0x00015CD5
	thumb_func_end sub_0200ED7C

	thumb_func_start sub_0200EDD4
sub_0200EDD4: ; 0x0200EDD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r5, _0200EE20 ; =0x020E5040
	add r6, r2, #0
	add r4, r0, #0
	add r7, r1, #0
	add r3, sp, #0
	mov r2, #6
_0200EDE4:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0200EDE4
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r7, #5
	lsl r1, r0, #3
	add r0, sp, #0
	strh r1, [r0]
	add r1, r6, #5
	lsl r1, r1, #3
	strh r1, [r0, #2]
	add r0, r4, #0
	add r1, sp, #0
	bl ov5_021D3584
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	bl sub_020219F8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0200EE20: .word 0x020E5040
	thumb_func_end sub_0200EDD4

	thumb_func_start sub_0200EE24
sub_0200EE24: ; 0x0200EE24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _0200EE60 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	add r6, r2, #0
	bl sub_0200762C
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #2
	bl sub_02075FB4
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0200EE98
	add r0, r7, #0
	bl sub_02007B6C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0200EE60: .word 0x00000162
	thumb_func_end sub_0200EE24

	thumb_func_start sub_0200EE64
sub_0200EE64: ; 0x0200EE64
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0200EE94 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	bl sub_0200762C
	add r6, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_02075EF4
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0200EE98
	add r0, r6, #0
	bl sub_02007B6C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200EE94: .word 0x00000162
	thumb_func_end sub_0200EE64

	thumb_func_start sub_0200EE98
sub_0200EE98: ; 0x0200EE98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _0200EF6C ; =0x00000162
	add r6, r1, #0
	mov r1, #0x19
	ldrh r0, [r5, r0]
	lsl r1, r1, #8
	bl sub_02018144
	add r2, sp, #0x18
	ldr r3, _0200EF70 ; =0x020E5018
	add r4, r0, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r4, [sp]
	ldr r2, _0200EF6C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #2]
	ldrh r2, [r5, r2]
	add r3, r7, #0
	bl sub_020135F0
	ldr r3, _0200EF74 ; =0x020E5008
	add r2, sp, #8
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x32
	lsl r0, r0, #6
	add r0, r4, r0
	str r0, [sp]
	ldr r2, _0200EF6C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #2]
	ldrh r2, [r5, r2]
	add r3, r7, #0
	bl sub_020135F0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0200EF78 ; =0x00015CD5
	bl sub_02009DC8
	bl sub_0200A534
	mov r1, #1
	str r0, [sp, #4]
	bl sub_020A81B0
	mov r1, #0x19
	add r7, r0, #0
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_020C2C54
	mov r2, #0x19
	add r0, r4, #0
	add r1, r7, #0
	lsl r2, r2, #8
	bl sub_020C02BC
	add r0, r4, #0
	bl sub_020181C4
	ldr r2, _0200EF6C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #4]
	ldrh r2, [r5, r2]
	bl sub_02013660
	add r4, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, _0200EF78 ; =0x00015CD5
	bl sub_02009DC8
	ldr r1, [sp, #4]
	bl sub_0200A72C
	mov r1, #1
	bl sub_020A81FC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020C2C54
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020C0160
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200EF6C: .word 0x00000162
_0200EF70: .word 0x020E5018
_0200EF74: .word 0x020E5008
_0200EF78: .word 0x00015CD5
	thumb_func_end sub_0200EE98

	thumb_func_start sub_0200EF7C
sub_0200EF7C: ; 0x0200EF7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _0200F128 ; =0x0000016E
	add r5, r0, #0
	ldrb r0, [r5, r3]
	add r4, r1, #0
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	add r6, r2, #0
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #1
	ldrb r0, [r5, r3]
	sub r1, r3, #2
	lsl r2, r2, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #2
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #4
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #3
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #5
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #6
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #7
	ldrb r0, [r5, r3]
	sub r1, r3, #2
	lsl r2, r2, #0x10
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r6, #8
	ldrb r0, [r5, r3]
	lsl r2, r6, #0x10
	sub r1, r3, #2
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200F128: .word 0x0000016E
	thumb_func_end sub_0200EF7C

	thumb_func_start sub_0200F12C
sub_0200F12C: ; 0x0200F12C
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _0200F170 ; =0x0000016E
	add r4, r0, #0
	ldrb r0, [r4, r3]
	mov r2, #0
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r4, r3]
	ldrb r1, [r4, r1]
	ldr r0, [r4, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldrb r1, [r4, r1]
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0200F170: .word 0x0000016E
	thumb_func_end sub_0200F12C

	.rodata


	.global Unk_020E5008
Unk_020E5008: ; 0x020E5008
	.incbin "incbin/arm9_rodata.bin", 0x3C8, 0x3D8 - 0x3C8

	.global Unk_020E5018
Unk_020E5018: ; 0x020E5018
	.incbin "incbin/arm9_rodata.bin", 0x3D8, 0x3E8 - 0x3D8

	.global Unk_020E5028
Unk_020E5028: ; 0x020E5028
	.incbin "incbin/arm9_rodata.bin", 0x3E8, 0x400 - 0x3E8

	.global Unk_020E5040
Unk_020E5040: ; 0x020E5040
	.incbin "incbin/arm9_rodata.bin", 0x400, 0x34

