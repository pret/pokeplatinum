	.include "macros/function.inc"
	.include "overlay071/ov71_0223C69C.inc"

	

	.text


	thumb_func_start ov71_0223C69C
ov71_0223C69C: ; 0x0223C69C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0223C6D0 ; =0x0223D670
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_0223C6A6:
	lsl r1, r4, #4
	lsl r2, r4, #3
	add r0, r5, #0
	add r1, r6, r1
	add r2, r7, r2
	bl sub_0201A8D4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _0223C6A6
	mov r2, #0
	add r0, r5, #0
	mov r1, #7
	mov r3, #1
	str r2, [sp]
	bl sub_020196C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C6D0: .word 0x0223D670
	thumb_func_end ov71_0223C69C

	thumb_func_start ov71_0223C6D4
ov71_0223C6D4: ; 0x0223C6D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0223C6DA:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xb
	blo _0223C6DA
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov71_0223C6D4

	thumb_func_start ov71_0223C6F0
ov71_0223C6F0: ; 0x0223C6F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	mov r1, #0x88
	str r1, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	add r7, r0, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0x88
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0x88
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x20
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0x88
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x30
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0x88
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x40
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x50
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x60
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r2, #0x9a
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x19
	bl sub_0200B144
	str r0, [sp, #0x14]
	mov r0, #0x20
	mov r1, #0x19
	bl sub_02023790
	add r5, r0, #0
	mov r4, #0
_0223C7AA:
	cmp r4, #3
	bne _0223C7B8
	bne _0223C7E2
	ldrb r0, [r6, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _0223C7E2
_0223C7B8:
	ldr r1, _0223CA20 ; =0x0223D644
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	ldr r0, [sp, #0x14]
	add r2, r5, #0
	bl sub_0200B1B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223CA24 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r0, r4, #4
	add r0, r7, r0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0201D78C
_0223C7E2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _0223C7AA
	mov r0, #0x20
	mov r1, #0x19
	bl sub_02023790
	str r0, [sp, #0x10]
	mov r0, #6
	mov r1, #0x20
	mov r2, #0x19
	bl sub_0200B368
	mov r2, #0
	str r5, [sp]
	add r4, r0, #0
	ldrh r0, [r6, #0x28]
	mov r1, #0x88
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov71_0223CD64
	add r1, r6, #0
	add r0, r5, #0
	add r1, #8
	bl sub_02023D28
	add r0, r7, #0
	mov r2, #0
	add r0, #0x10
	mov r1, #0x88
	add r3, r2, #0
	str r5, [sp]
	bl ov71_0223CDB0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r6, #0x1c]
	add r0, r4, #0
	mov r1, #5
	mov r3, #6
	bl sub_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r1, #0xe
	bl sub_0200B1B8
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x88
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CA24 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r7, #0
	str r1, [sp, #0xc]
	add r0, #0x20
	add r2, r5, #0
	bl sub_0201D78C
	ldrb r0, [r6, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _0223C8D6
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r6, #0x20]
	add r0, r4, #0
	mov r1, #5
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r1, #0x15
	bl sub_0200B1B8
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x88
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CA24 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r7, #0
	add r0, #0x30
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_0223C8D6:
	str r5, [sp]
	ldr r0, [r6, #0x24]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r0, #0x40
	mov r1, #0x88
	add r3, r2, #0
	bl ov71_0223CD64
	ldrb r0, [r6, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _0223C934
	ldr r0, [r6, #0x18]
	bl sub_0202CC58
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r6, #0x18]
	bl sub_0202CC5C
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r1, #1
	add r0, r4, #0
	str r1, [sp, #4]
	bl sub_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r1, #0x10
	bl sub_0200B1B8
	b _0223C964
_0223C934:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r2, [r6, #0x2a]
	add r0, r4, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r3, #2
	add r2, r6, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r2, #0x2e
	ldrb r2, [r2]
	add r0, r4, #0
	bl sub_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r1, #0xf
	bl sub_0200B1B8
_0223C964:
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CA24 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r7, #0
	add r0, #0x50
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r1, #2
	add r2, r6, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, #0x2f
	ldrb r2, [r2]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200B60C
	add r2, r6, #0
	add r2, #0x30
	ldrb r2, [r2]
	add r0, r4, #0
	mov r1, #3
	bl sub_0200C2E0
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r6, #0x31
	ldrb r2, [r6]
	add r0, r4, #0
	mov r1, #4
	bl sub_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r1, #0x11
	bl sub_0200B1B8
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CA24 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r7, #0x60
	add r0, r7, #0
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CA20: .word 0x0223D644
_0223CA24: .word 0x00010200
	thumb_func_end ov71_0223C6F0

	thumb_func_start ov71_0223CA28
ov71_0223CA28: ; 0x0223CA28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x20
	str r1, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x70
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x80
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x90
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r2, #0x9a
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x19
	bl sub_0200B144
	add r7, r0, #0
	mov r0, #0x20
	mov r1, #0x19
	bl sub_02023790
	add r5, r0, #0
	mov r4, #7
_0223CAA4:
	ldr r1, _0223CD3C ; =0x0223D644
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r7, #0
	add r2, r5, #0
	bl sub_0200B1B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223CD40 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r0, r4, #4
	add r0, r6, r0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _0223CAA4
	mov r0, #0x20
	mov r1, #0x19
	bl sub_02023790
	str r0, [sp, #0x14]
	mov r0, #6
	mov r1, #0x20
	mov r2, #0x19
	bl sub_0200B368
	ldr r1, [sp, #0x10]
	add r4, r0, #0
	add r1, #0x33
	ldrb r1, [r1]
	cmp r1, #0
	beq _0223CB6E
	mov r1, #2
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	ldr r2, [sp, #0x10]
	add r3, r1, #0
	add r2, #0x32
	ldrb r2, [r2]
	bl sub_0200B60C
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r2, #0x33
	ldrb r2, [r2]
	mov r1, #3
	bl sub_0200C2E0
	mov r3, #2
	ldr r2, [sp, #0x10]
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, #0x34
	ldrb r2, [r2]
	add r0, r4, #0
	mov r1, #4
	bl sub_0200B60C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	ldrh r2, [r2, #0x2c]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r3, #2
	ldr r2, [sp, #0x10]
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r2, #0x35
	ldrb r2, [r2]
	add r0, r4, #0
	bl sub_0200B60C
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0x11
	bl sub_0200B1B8
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	b _0223CBA6
_0223CB6E:
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0xc
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B48C
	add r0, r7, #0
	mov r1, #0x14
	add r2, r5, #0
	bl sub_0200B1B8
_0223CBA6:
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x70
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0200B1B8
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe0
	sub r3, r1, r0
	mov r0, #0x10
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223CD40 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x70
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	ldr r2, [r2, #0x38]
	mov r1, #5
	mov r3, #6
	bl sub_0200B60C
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0x16
	bl sub_0200B1B8
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x80
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	mov r1, #0x12
	add r2, r5, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x90
	add r2, r5, #0
	mov r3, #0x70
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r2, #0
	ldr r0, [sp, #0x10]
	str r5, [sp]
	ldr r0, [r0, #0x40]
	mov r1, #0xe0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x90
	add r3, r2, #0
	bl ov71_0223CD64
	add r0, r7, #0
	mov r1, #0x13
	add r2, r5, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x90
	add r2, r5, #0
	mov r3, #0xb0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	str r5, [sp]
	ldr r0, [r0, #0x3c]
	mov r1, #0xe0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x90
	mov r2, #0x40
	mov r3, #0
	bl ov71_0223CD64
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	ldr r2, [r2, #0x44]
	mov r1, #5
	mov r3, #6
	bl sub_0200B60C
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0x16
	bl sub_0200B1B8
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r6, #0xa0
	add r0, r6, #0
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r5, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CD3C: .word 0x0223D644
_0223CD40: .word 0x00010200
	thumb_func_end ov71_0223CA28

	thumb_func_start ov71_0223CD44
ov71_0223CD44: ; 0x0223CD44
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	cmp r4, r6
	bhi _0223CD62
_0223CD50:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201ACF4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	bls _0223CD50
_0223CD62:
	pop {r4, r5, r6, pc}
	thumb_func_end ov71_0223CD44

	thumb_func_start ov71_0223CD64
ov71_0223CD64: ; 0x0223CD64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	mov r0, #1
	add r4, r2, #0
	str r0, [sp]
	add r2, sp, #0x18
	add r5, r1, #0
	add r6, r3, #0
	ldrb r2, [r2, #0x18]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x34]
	bl sub_020238A0
	mov r0, #0
	ldr r1, [sp, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	add r3, r3, r4
	str r6, [sp]
	mov r1, #0
	ldr r0, _0223CDAC ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r0, r7, #0
	sub r3, r5, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CDAC: .word 0x00010200
	thumb_func_end ov71_0223CD64

	thumb_func_start ov71_0223CDB0
ov71_0223CDB0: ; 0x0223CDB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0
	add r4, r2, #0
	ldr r1, [sp, #0x28]
	add r6, r3, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	add r3, r3, r4
	str r6, [sp]
	mov r1, #0
	ldr r0, _0223CDE4 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x28]
	add r0, r7, #0
	sub r3, r5, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CDE4: .word 0x00010200
	thumb_func_end ov71_0223CDB0

	thumb_func_start ov71_0223CDE8
ov71_0223CDE8: ; 0x0223CDE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _0223CDFA
	bl GF_AssertFail
_0223CDFA:
	ldr r0, [r5, #0x18]
	bl sub_0202CC58
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	add r0, #0x50
	mov r2, #0xb8
	add r3, r1, #0
	bl sub_0201AE78
	mov r2, #0x9a
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x19
	bl sub_0200B144
	str r0, [sp, #0x10]
	mov r0, #0x20
	mov r1, #0x19
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x20
	mov r1, #0x19
	bl sub_02023790
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0x19
	bl sub_0200B368
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_0202CC58
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r5, #0x18]
	bl sub_0202CC5C
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r1, #1
	add r0, r6, #0
	str r1, [sp, #4]
	bl sub_0200B60C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r1, #0x10
	bl sub_0200B1B8
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223CEC8 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r7, #0x50
	add r0, r7, #0
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CEC8: .word 0x00010200
	thumb_func_end ov71_0223CDE8

	thumb_func_start ov71_0223CECC
ov71_0223CECC: ; 0x0223CECC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #0
	beq _0223CEEC
	mov r1, #0
	str r1, [sp]
	ldr r3, _0223CF08 ; =0x00010200
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r3, #0xcd
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, pc}
_0223CEEC:
	mov r1, #5
	str r1, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r1, #0
	mov r2, #0xcd
	add r3, r1, #0
	bl sub_0201AE78
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223CF08: .word 0x00010200
	thumb_func_end ov71_0223CECC

	.rodata


	.global Unk_ov71_0223D644
Unk_ov71_0223D644: ; 0x0223D644
	.incbin "incbin/overlay71_rodata.bin", 0x19C, 0x1C8 - 0x19C

	.global Unk_ov71_0223D670
Unk_ov71_0223D670: ; 0x0223D670
	.incbin "incbin/overlay71_rodata.bin", 0x1C8, 0x58

