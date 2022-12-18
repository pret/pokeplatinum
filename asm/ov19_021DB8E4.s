	.include "macros/function.inc"
	.include "include/ov19_021DB8E4.inc"

	

	.text


	thumb_func_start ov19_021DB8E4
ov19_021DB8E4: ; 0x021DB8E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [r5, #0]
	ldr r0, [sp, #0x34]
	str r3, [r5, #4]
	str r0, [sp, #0x34]
	str r2, [r5, #0xc]
	ldr r0, [sp, #0x30]
	mov r4, #1
	str r0, [r5, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r2, r3, #0
	str r4, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	mov r1, #4
	add r3, r4, #0
	bl sub_020070E8
	ldr r0, [sp, #0x34]
	mov r1, #0x1b
	add r2, sp, #0x14
	mov r3, #0xa
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	add r1, #0xe4
	mov r2, #0x40
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x34]
	mov r1, #0x14
	add r2, sp, #0x14
	mov r3, #0xa
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, #0xc]
	add r1, r5, r1
	mov r2, #0x20
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0x2a
	mov r4, #1
	str r0, [sp, #0x10]
	add r0, #0xe4
	lsl r1, r1, #4
	lsl r4, r4, #0x10
	mov r7, #7
	str r0, [sp, #0x10]
	add r6, r0, r1
_021DB96C:
	asr r0, r4, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r3, _021DBA88 ; =0x00007FFF
	add r1, r6, #0
	mov r2, #0x30
	bl ov19_021D78C8
	ldr r0, _021DBA8C ; =0x00002492
	sub r7, r7, #1
	sub r4, r4, r0
	sub r6, #0x60
	cmp r7, #1
	bge _021DB96C
	add r0, r5, #0
	mov r1, #3
	add r0, #0xe4
	lsl r1, r1, #8
	bl sub_020C2C54
	mov r0, #0xe1
	lsl r0, r0, #2
	mov r1, #0x1a
	add r0, r5, r0
	lsl r1, r1, #4
	mov r2, #0x60
	bl sub_020C0160
	add r0, r5, #0
	mov r1, #0x1a
	add r0, #0xe4
	lsl r1, r1, #4
	mov r2, #0x60
	bl sub_020C01B8
	mov r0, #0xa
	str r0, [sp]
	add r3, r5, #0
	ldr r0, [sp, #0x34]
	mov r1, #0x11
	mov r2, #1
	add r3, #0x18
	bl sub_020071B4
	str r0, [r5, #0x14]
	mov r0, #0xa
	str r0, [sp]
	add r3, r5, #0
	ldr r0, [sp, #0x34]
	mov r1, #0x12
	mov r2, #1
	add r3, #0x20
	bl sub_02007204
	str r0, [r5, #0x1c]
	mov r0, #0xa
	str r0, [sp]
	add r3, r5, #0
	ldr r0, [sp, #0x34]
	mov r1, #2
	mov r2, #1
	add r3, #0x38
	bl sub_020071D0
	str r0, [r5, #0x34]
	mov r0, #0xa
	str r0, [sp]
	add r3, r5, #0
	ldr r0, [sp, #0x34]
	mov r1, #3
	mov r2, #1
	add r3, #0x30
	bl sub_020071D0
	str r0, [r5, #0x2c]
	mov r0, #2
	mov r1, #0xd
	mov r2, #4
	mov r3, #0xa
	bl sub_0200C440
	str r0, [r5, #0x44]
	mov r0, #0x7d
	lsl r0, r0, #2
	mov r1, #0xa
	bl sub_02023790
	ldr r1, _021DBA90 ; =0x00004BFC
	ldr r2, _021DBA94 ; =0x00000187
	str r0, [r5, r1]
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	mov r1, #0x20
	ldr r0, [r0, #0x14]
	mov r3, #0xa
	str r0, [r5, #0x3c]
	add r0, r5, #0
	add r0, #0x40
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x42
	strh r1, [r0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	ldr r1, _021DBA98 ; =0x00004BF8
	add r2, r5, #0
	str r0, [r5, r1]
	mov r1, #0
	add r0, r1, #0
_021DBA4C:
	add r1, r1, #1
	str r0, [r2, #0x48]
	add r2, r2, #4
	cmp r1, #0x12
	blt _021DBA4C
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, _021DBA90 ; =0x00004BFC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021DBA82
_021DBA7C:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DBA82:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DBA88: .word 0x00007FFF
_021DBA8C: .word 0x00002492
_021DBA90: .word 0x00004BFC
_021DBA94: .word 0x00000187
_021DBA98: .word 0x00004BF8
	thumb_func_end ov19_021DB8E4

	thumb_func_start ov19_021DBA9C
ov19_021DBA9C: ; 0x021DBA9C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xa
	mov r1, #3
	bl sub_0201A778
	str r0, [r7, #0x10]
	cmp r0, #0
	beq _021DBACA
	mov r6, #0
	ldr r4, _021DBACC ; =0x021E0210
	add r5, r6, #0
_021DBAB4:
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #4]
	add r1, r1, r5
	add r2, r4, #0
	bl sub_0201A8D4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #3
	blo _021DBAB4
_021DBACA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DBACC: .word 0x021E0210
	thumb_func_end ov19_021DBA9C

	thumb_func_start ov19_021DBAD0
ov19_021DBAD0: ; 0x021DBAD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021DBB40 ; =0x00004BF8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021DBAE0
	bl sub_0200B190
_021DBAE0:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DBAEA
	bl sub_020181C4
_021DBAEA:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DBAF4
	bl sub_020181C4
_021DBAF4:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021DBAFE
	bl sub_020181C4
_021DBAFE:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DBB08
	bl sub_020181C4
_021DBB08:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021DBB12
	bl sub_0200C560
_021DBB12:
	ldr r0, _021DBB44 ; =0x00004BFC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021DBB1E
	bl sub_020237BC
_021DBB1E:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021DBB3E
	mov r6, #0
	add r4, r6, #0
_021DBB28:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl sub_0201A8FC
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #3
	blt _021DBB28
	ldr r0, [r5, #0x10]
	bl sub_020181C4
_021DBB3E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DBB40: .word 0x00004BF8
_021DBB44: .word 0x00004BFC
	thumb_func_end ov19_021DBAD0

	thumb_func_start ov19_021DBB48
ov19_021DBB48: ; 0x021DBB48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov19_021D5EA8
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov19_021DBDF4
	add r0, r4, #0
	mov r1, #0
	bl ov19_021DC034
	pop {r4, pc}
	thumb_func_end ov19_021DBB48

	thumb_func_start ov19_021DBB68
ov19_021DBB68: ; 0x021DBB68
	ldr r3, _021DBB6C ; =ov19_021DC090
	bx r3
	; .align 2, 0
_021DBB6C: .word ov19_021DC090
	thumb_func_end ov19_021DBB68

	thumb_func_start ov19_021DBB70
ov19_021DBB70: ; 0x021DBB70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov19_021D5EA8
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov19_021DBF18
	add r0, r4, #0
	bl ov19_021DBF4C
	add r0, r4, #0
	bl ov19_021DBFC4
	pop {r4, pc}
	thumb_func_end ov19_021DBB70

	thumb_func_start ov19_021DBB94
ov19_021DBB94: ; 0x021DBB94
	ldr r3, _021DBB9C ; =ov19_021DC034
	mov r1, #1
	bx r3
	nop
_021DBB9C: .word ov19_021DC034
	thumb_func_end ov19_021DBB94

	thumb_func_start ov19_021DBBA0
ov19_021DBBA0: ; 0x021DBBA0
	ldr r3, _021DBBA4 ; =ov19_021DC090
	bx r3
	; .align 2, 0
_021DBBA4: .word ov19_021DC090
	thumb_func_end ov19_021DBBA0

	thumb_func_start ov19_021DBBA8
ov19_021DBBA8: ; 0x021DBBA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #8]
	ldr r0, [r0, #0xc]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl ov19_021D5E90
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x28]
	bl sub_02079AA8
	cmp r0, #0x18
	blt _021DBBC8
	sub r0, #8
_021DBBC8:
	add r0, #0xd0
	mov r1, #0xc
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r1, #9
	add r0, #0x3c
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0201A6D0
	mov r4, #0
	mov r0, #0xb
	str r4, [sp, #0x20]
	str r0, [sp, #0x18]
_021DBBEA:
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	mov r6, #0xa
	str r0, [sp, #0x2c]
	add r0, #0x3c
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x30]
_021DBC00:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl sub_02079C9C
	add r4, r4, #1
	add r5, r0, #0
	bl sub_02073D20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r7, r0, #0
	beq _021DBC7E
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _021DBC50
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r7, #0
	mov r2, #0x1b
	bl sub_020759CC
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	b _021DBC60
_021DBC50:
	ldr r0, _021DBD2C ; =0x000001EA
	cmp r7, r0
	beq _021DBC5A
	mov r0, #8
	b _021DBC5C
_021DBC5A:
	mov r0, #1
_021DBC5C:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_021DBC60:
	ldr r0, _021DBD30 ; =0x021E0228
	ldr r2, [sp, #0x30]
	ldrb r0, [r0, r1]
	mov r3, #2
	add r0, #0xe0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #2
	str r0, [sp]
	str r1, [sp, #4]
	lsl r1, r6, #0x10
	ldr r0, [sp, #0x2c]
	lsr r1, r1, #0x10
	bl sub_0201A6D0
_021DBC7E:
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl sub_02073D48
	ldr r0, [sp, #0x24]
	add r6, r6, #2
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #6
	blo _021DBC00
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #5
	blo _021DBBEA
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _021DBCE8
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _021DBCB4
	cmp r0, #2
	beq _021DBCC6
	b _021DBCD4
_021DBCB4:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _021DBD34 ; =0x00300010
	and r1, r0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	str r1, [r0, #8]
	b _021DBCD4
_021DBCC6:
	ldr r0, _021DBD38 ; =0x04001000
	ldr r1, [r0, #0]
	ldr r0, _021DBD34 ; =0x00300010
	and r1, r0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	str r1, [r0, #8]
_021DBCD4:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x48]
	lsl r1, r1, #5
	bl sub_020A8224
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021DBCE8:
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x18]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl sub_020C2C54
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _021DBD02
	cmp r0, #2
	beq _021DBD16
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021DBD02:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [r0, #0x18]
	lsl r1, r1, #5
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl sub_020C02BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021DBD16:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [r0, #0x18]
	lsl r1, r1, #5
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl sub_020C0314
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021DBD2C: .word 0x000001EA
_021DBD30: .word 0x021E0228
_021DBD34: .word 0x00300010
_021DBD38: .word 0x04001000
	thumb_func_end ov19_021DBBA8

	thumb_func_start ov19_021DBD3C
ov19_021DBD3C: ; 0x021DBD3C
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov19_021DBD3C

	thumb_func_start ov19_021DBD40
ov19_021DBD40: ; 0x021DBD40
	add r0, #0xe0
	ldr r0, [r0, #0]
	sub r0, r0, #3
	bpl _021DBD4A
	add r0, #0x12
_021DBD4A:
	bx lr
	thumb_func_end ov19_021DBD40

	thumb_func_start ov19_021DBD4C
ov19_021DBD4C: ; 0x021DBD4C
	push {r3, r4}
	mov r4, #0
	ldr r1, _021DBD64 ; =0x00004BE4
	add r3, r4, #0
_021DBD54:
	add r2, r0, r4
	add r4, r4, #1
	strb r3, [r2, r1]
	cmp r4, #0x12
	blt _021DBD54
	pop {r3, r4}
	bx lr
	nop
_021DBD64: .word 0x00004BE4
	thumb_func_end ov19_021DBD4C

	thumb_func_start ov19_021DBD68
ov19_021DBD68: ; 0x021DBD68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	mov r2, #0xf9
	add r4, r1, #0
	lsl r2, r2, #2
	add r3, r5, r2
	lsl r1, r4, #0xa
	ldr r0, [r0, #0x14]
	add r1, r3, r1
	add r2, #0x1c
	bl sub_020C4B68
	mov r1, #0xf9
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, #0x1c
	bl sub_020C2C54
	ldr r0, _021DBD98 ; =0x00004BE4
	mov r2, #1
	add r1, r5, r4
	strb r2, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DBD98: .word 0x00004BE4
	thumb_func_end ov19_021DBD68

	thumb_func_start ov19_021DBD9C
ov19_021DBD9C: ; 0x021DBD9C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0x63
	lsl r1, r1, #5
	lsl r0, r0, #4
	add r6, r1, r0
	add r4, r2, #0
	ldr r0, _021DBDF0 ; =0x00004BE4
	add r1, r5, r4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021DBDCC
	mov r2, #0xf9
	lsl r2, r2, #2
	add r1, r5, r2
	lsl r0, r4, #0xa
	add r0, r1, r0
	lsl r1, r6, #5
	add r2, #0x1c
	bl sub_020C02BC
	add sp, #0x28
	pop {r4, r5, r6, pc}
_021DBDCC:
	add r0, sp, #4
	bl sub_020A818C
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov19_021DBBA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DBD68
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021DBDF0: .word 0x00004BE4
	thumb_func_end ov19_021DBD9C

	thumb_func_start ov19_021DBDF4
ov19_021DBDF4: ; 0x021DBDF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r6, r0, #0
	bl ov19_021DBD4C
	ldr r0, [r6, #0]
	bl ov19_021D77D8
	add r4, r0, #0
	ldr r0, [r6, #0]
	bl ov19_021D77D0
	add r2, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, [r6, #0x20]
	add r0, sp, #0x40
	bl ov19_021D783C
	add r0, r6, #0
	bl ov19_021DBD40
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x63
	lsl r0, r0, #4
	str r0, [sp, #8]
	add r4, r6, #0
	mov r5, #0x20
_021DBE34:
	add r0, sp, #0x1c
	bl sub_020A818C
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #1
	bl ov19_021DBBA8
	add r0, sp, #0x1c
	str r0, [sp, #0x40]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #1
	mov r2, #2
	str r0, [sp, #4]
	lsl r2, r2, #8
	ldr r0, [r6, #8]
	add r1, sp, #0x40
	lsr r3, r2, #1
	bl ov19_021D785C
	str r0, [r4, #0x48]
	cmp r0, #0
	bne _021DBE6E
	bl sub_02022974
_021DBE6E:
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl sub_02021CAC
	cmp r5, #0
	ble _021DBE8C
	lsl r0, r5, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021DBE9A
_021DBE8C:
	lsl r0, r5, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021DBE9A:
	bl sub_020E1740
	str r0, [sp, #0x10]
	mov r0, #0x16
	lsl r0, r0, #0xe
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x48]
	add r1, sp, #0x10
	bl sub_02021C50
	add r0, r6, #0
	add r1, r7, #0
	bl ov19_021DBD68
	add r7, r7, #1
	cmp r7, #0x12
	blt _021DBEC2
	mov r7, #0
_021DBEC2:
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r5, #0x20
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #7
	blt _021DBE34
	mov r4, #0
	add r5, r6, #0
_021DBEDA:
	ldr r0, [r6, #0xc]
	bl ov19_021D5E90
	add r1, r4, #0
	bl sub_02079B54
	add r1, r5, #0
	add r1, #0x94
	add r4, r4, #1
	add r5, r5, #4
	str r0, [r1, #0]
	cmp r4, #0x12
	blt _021DBEDA
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DBDF4

	thumb_func_start ov19_021DBEF8
ov19_021DBEF8: ; 0x021DBEF8
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021DBF00:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021DBF0C
	bl sub_02021BD4
	str r6, [r5, #0x48]
_021DBF0C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _021DBF00
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DBEF8

	thumb_func_start ov19_021DBF18
ov19_021DBF18: ; 0x021DBF18
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ov19_021DBD40
	add r4, r0, #0
	mov r6, #0
	add r5, r7, #0
_021DBF26:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov19_021DBD9C
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl sub_02021CAC
	add r4, r4, #1
	cmp r4, #0x12
	blt _021DBF40
	mov r4, #0
_021DBF40:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #7
	blt _021DBF26
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DBF18

	thumb_func_start ov19_021DBF4C
ov19_021DBF4C: ; 0x021DBF4C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl ov19_021D5E90
	add r1, r5, #0
	ldr r2, _021DBFA8 ; =0x00004BFC
	add r1, #0xe0
	ldr r1, [r1, #0]
	ldr r2, [r5, r2]
	ldr r4, [r5, #0x10]
	bl sub_02079AF4
	ldr r1, _021DBFA8 ; =0x00004BFC
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #7
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DBFAC ; =0x00020807
	ldr r2, _021DBFA8 ; =0x00004BFC
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	lsr r5, r6, #1
	mov r3, #0x30
	add r0, r4, #0
	sub r3, r3, r5
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021DBFA8: .word 0x00004BFC
_021DBFAC: .word 0x00020807
	thumb_func_end ov19_021DBF4C

	thumb_func_start ov19_021DBFB0
ov19_021DBFB0: ; 0x021DBFB0
	push {r4, lr}
	ldr r4, [r0, #0x10]
	mov r1, #7
	add r0, r4, #0
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r4, pc}
	thumb_func_end ov19_021DBFB0

	thumb_func_start ov19_021DBFC4
ov19_021DBFC4: ; 0x021DBFC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, [r7, #0x10]
	mov r1, #4
	str r0, [sp, #0xc]
	add r0, #0x10
	str r0, [sp, #0xc]
	bl sub_0201ADA4
	add r0, r7, #0
	bl ov19_021DBD40
	mov r6, #0
	add r4, r0, #0
	add r5, r6, #0
_021DBFE4:
	ldr r0, [sp, #0xc]
	lsl r1, r4, #2
	str r0, [sp]
	add r1, r7, r1
	str r5, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r1, #0x94
	mov r2, #2
	ldr r0, [r7, #0x44]
	ldr r1, [r1, #0]
	add r3, r2, #0
	bl sub_0200C5BC
	add r4, r4, #1
	cmp r4, #0x12
	blt _021DC008
	mov r4, #0
_021DC008:
	add r6, r6, #1
	add r5, #0x20
	cmp r6, #7
	blt _021DBFE4
	ldr r0, [sp, #0xc]
	bl sub_0201ACCC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DBFC4

	thumb_func_start ov19_021DC01C
ov19_021DC01C: ; 0x021DC01C
	push {r4, lr}
	ldr r4, [r0, #0x10]
	mov r1, #4
	add r4, #0x10
	add r0, r4, #0
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DC01C

	thumb_func_start ov19_021DC034
ov19_021DC034: ; 0x021DC034
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xa
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	beq _021DC06E
	ldr r0, _021DC070 ; =0x021E0208
	lsl r1, r6, #2
	ldr r0, [r0, r1]
	str r5, [r4, #0]
	mov r2, #0
	strb r2, [r4, #4]
	add r1, r4, #0
	strb r2, [r4, #5]
	bl sub_0200D9E8
	add r1, r5, #0
	add r1, #0xdc
	add r5, #0xdc
	str r0, [r1, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _021DC06E
	add r0, r4, #0
	bl sub_020181C4
_021DC06E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DC070: .word 0x021E0208
	thumb_func_end ov19_021DC034

	thumb_func_start ov19_021DC074
ov19_021DC074: ; 0x021DC074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	mov r2, #0
	add r0, #0xdc
	str r2, [r0, #0]
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DC074

	thumb_func_start ov19_021DC090
ov19_021DC090: ; 0x021DC090
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DC09C
	mov r0, #1
	bx lr
_021DC09C:
	mov r0, #0
	bx lr
	thumb_func_end ov19_021DC090

	thumb_func_start ov19_021DC0A0
ov19_021DC0A0: ; 0x021DC0A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldrb r2, [r4, #4]
	ldr r5, [r4, #0]
	cmp r2, #3
	bls _021DC0B0
	b _021DC1C6
_021DC0B0:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DC0BC: ; jump table
	.short _021DC0C4 - _021DC0BC - 2 ; case 0
	.short _021DC14A - _021DC0BC - 2 ; case 1
	.short _021DC170 - _021DC0BC - 2 ; case 2
	.short _021DC1C2 - _021DC0BC - 2 ; case 3
_021DC0C4:
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsl r1, r0, #1
	cmp r1, #0xa
	bge _021DC11A
	mov r1, #0xa
	sub r1, r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [r5, #0x30]
	ldr r0, [r5, #4]
	mov r1, #1
	add r2, #0xc
	mov r3, #0
	bl sub_020198C0
	ldrb r6, [r4, #5]
	mov r0, #0x20
	mov r3, #0xa
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r5, #0x30]
	mov r2, #0
	add r1, #0xc
	str r1, [sp, #8]
	sub r1, r3, r6
	lsl r1, r1, #0x18
	str r2, [sp, #0xc]
	lsr r1, r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_020198E8
	b _021DC13A
_021DC11A:
	mov r0, #5
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r2, [r5, #0x30]
	ldr r0, [r5, #4]
	mov r1, #1
	add r2, #0xc
	mov r3, #0
	bl sub_020198C0
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
_021DC13A:
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02019448
	mov r0, #7
	add sp, #0x1c
	strb r0, [r4, #5]
	pop {r3, r4, r5, r6, pc}
_021DC14A:
	ldrb r0, [r4, #5]
	add r3, r5, #0
	mov r2, #0x60
	add r1, r0, #0
	add r3, #0xe4
	mul r1, r2
	add r0, r3, r1
	mov r1, #0x1a
	lsl r1, r1, #4
	bl sub_020C0160
	add r0, r5, #0
	bl ov19_021DBF18
	ldrb r0, [r4, #4]
	add sp, #0x1c
	add r0, r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021DC170:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _021DC17A
	sub r0, r0, #1
	strb r0, [r4, #5]
_021DC17A:
	ldrb r0, [r4, #5]
	add r3, r5, #0
	mov r2, #0x60
	add r1, r0, #0
	add r3, #0xe4
	mul r1, r2
	add r0, r3, r1
	mov r1, #0x1a
	lsl r1, r1, #4
	bl sub_020C0160
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021DC1C6
	ldr r0, [r5, #0x10]
	bl sub_0201A9F4
	ldr r0, [r5, #0x10]
	add r0, #0x10
	bl sub_0201A9F4
	add r0, r5, #0
	bl ov19_021DBF4C
	add r0, r5, #0
	bl ov19_021DBFC4
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02019448
	ldrb r0, [r4, #4]
	add sp, #0x1c
	add r0, r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021DC1C2:
	bl ov19_021DC074
_021DC1C6:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DC0A0

	thumb_func_start ov19_021DC1CC
ov19_021DC1CC: ; 0x021DC1CC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r1, #0
	ldrb r2, [r5, #4]
	ldr r4, [r5, #0]
	cmp r2, #0
	beq _021DC1E6
	cmp r2, #1
	beq _021DC202
	cmp r2, #2
	beq _021DC294
	add sp, #0x1c
	pop {r4, r5, pc}
_021DC1E6:
	add r0, r4, #0
	bl ov19_021DBEF8
	add r0, r4, #0
	bl ov19_021DBFB0
	add r0, r4, #0
	bl ov19_021DC01C
	ldrb r0, [r5, #4]
	add sp, #0x1c
	add r0, r0, #1
	strb r0, [r5, #4]
	pop {r4, r5, pc}
_021DC202:
	mov r0, #5
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	ldrb r0, [r5, #5]
	add r0, r0, #1
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	lsl r1, r0, #1
	cmp r1, #0xa
	bge _021DC282
	add r1, r0, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #5
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r2, [r4, #0x30]
	ldr r0, [r4, #4]
	mov r1, #1
	add r2, #0xc
	mov r3, #0
	bl sub_020198C0
	ldrb r1, [r5, #5]
	mov r2, #5
	mov r0, #0x20
	sub r2, r2, r1
	lsl r2, r2, #0x18
	mov r3, #0xa
	sub r1, r3, r1
	lsl r1, r1, #0x18
	str r0, [sp]
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0x30]
	lsr r1, r1, #0x18
	add r2, #0xc
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_020198E8
	b _021DC288
_021DC282:
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
_021DC288:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019448
	add sp, #0x1c
	pop {r4, r5, pc}
_021DC294:
	bl ov19_021DC074
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov19_021DC1CC

	thumb_func_start ov19_021DC29C
ov19_021DC29C: ; 0x021DC29C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xa
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	beq _021DC350
	ldr r0, [r5, #0xc]
	bl ov19_021D5F88
	add r6, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	ldr r2, [r5, #0x38]
	ldr r0, [r5, #4]
	mov r1, #1
	add r2, #0xc
	mov r3, #0
	bl sub_020198C0
	ldr r0, [r5, #0x10]
	mov r1, #4
	add r0, #0x20
	bl sub_0201ADA4
	ldr r2, _021DC354 ; =0x00004BF8
	add r1, r6, #0
	ldr r0, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DC358 ; =0x00020104
	ldr r2, _021DC35C ; =0x00004BFC
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r2, [r5, r2]
	add r0, #0x20
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [r5, #0x10]
	add r0, #0x20
	bl sub_0201A954
	add r0, r5, #0
	add r1, r6, #0
	bl ov19_021DC4F8
	mov r1, #0
	strh r1, [r4, #0x16]
	str r5, [r4, #0]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	str r1, [r4, #8]
	mov r1, #0xe
	lsl r1, r1, #0xe
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	mov r1, #6
	bl sub_020E1F6C
	str r0, [r4, #0x10]
	mov r0, #6
	strh r0, [r4, #0x14]
	ldr r0, _021DC360 ; =ov19_021DC37C
	add r1, r4, #0
	mov r2, #0
	bl ov19_021D77C8
	add r5, #0xdc
	str r0, [r5, #0]
_021DC350:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DC354: .word 0x00004BF8
_021DC358: .word 0x00020104
_021DC35C: .word 0x00004BFC
_021DC360: .word ov19_021DC37C
	thumb_func_end ov19_021DC29C

	thumb_func_start ov19_021DC364
ov19_021DC364: ; 0x021DC364
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DC370
	mov r0, #1
	bx lr
_021DC370:
	mov r0, #0
	bx lr
	thumb_func_end ov19_021DC364

	thumb_func_start ov19_021DC374
ov19_021DC374: ; 0x021DC374
	mov r1, #0
	add r0, #0xdc
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov19_021DC374

	thumb_func_start ov19_021DC37C
ov19_021DC37C: ; 0x021DC37C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _021DC38E
	cmp r0, #1
	beq _021DC394
	pop {r3, r4, r5, pc}
_021DC38E:
	add r0, r0, #1
	strh r0, [r4, #0x16]
	pop {r3, r4, r5, pc}
_021DC394:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021DC3C2
	sub r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r2, #3
	add r3, r1, r0
	str r3, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #1
	asr r3, r3, #0xc
	bl sub_02019184
	mov r1, #0xe
	ldr r2, [r4, #8]
	lsl r1, r1, #0x10
	ldr r0, [r4, #0]
	sub r1, r1, r2
	bl ov19_021DC5B8
	pop {r3, r4, r5, pc}
_021DC3C2:
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	mov r1, #0xe
	ldr r2, [r4, #0xc]
	lsl r1, r1, #0x10
	ldr r0, [r4, #0]
	sub r1, r1, r2
	bl ov19_021DC5B8
	ldr r1, _021DC3F0 ; =ov19_021DC374
	ldr r2, [r4, #0]
	add r0, r4, #0
	bl ov19_021D79B8
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DC3F0: .word ov19_021DC374
	thumb_func_end ov19_021DC37C

	thumb_func_start ov19_021DC3F4
ov19_021DC3F4: ; 0x021DC3F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xa
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	beq _021DC434
	mov r1, #0
	strh r1, [r4, #0x16]
	str r5, [r4, #0]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	mov r0, #0xe
	lsl r0, r0, #0xe
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	mov r1, #6
	bl sub_020E1F6C
	str r0, [r4, #0x10]
	mov r0, #6
	strh r0, [r4, #0x14]
	ldr r0, _021DC438 ; =ov19_021DC46C
	add r1, r4, #0
	mov r2, #0
	bl ov19_021D77C8
	add r5, #0xdc
	str r0, [r5, #0]
_021DC434:
	pop {r3, r4, r5, pc}
	nop
_021DC438: .word ov19_021DC46C
	thumb_func_end ov19_021DC3F4

	thumb_func_start ov19_021DC43C
ov19_021DC43C: ; 0x021DC43C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DC45E
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	bl ov19_021DC5E0
	mov r0, #1
	pop {r4, pc}
_021DC45E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DC43C

	thumb_func_start ov19_021DC464
ov19_021DC464: ; 0x021DC464
	mov r1, #0
	add r0, #0xdc
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov19_021DC464

	thumb_func_start ov19_021DC46C
ov19_021DC46C: ; 0x021DC46C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021DC4A4
	sub r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r2, #3
	add r3, r1, r0
	str r3, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #1
	asr r3, r3, #0xc
	bl sub_02019184
	mov r1, #0xe
	ldr r2, [r4, #8]
	lsl r1, r1, #0x10
	ldr r0, [r4, #0]
	sub r1, r1, r2
	bl ov19_021DC5B8
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021DC4A4:
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	mov r1, #0xe
	ldr r2, [r4, #0xc]
	lsl r1, r1, #0x10
	ldr r0, [r4, #0]
	sub r1, r1, r2
	bl ov19_021DC5B8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019448
	ldr r1, _021DC4F4 ; =ov19_021DC464
	ldr r2, [r4, #0]
	add r0, r4, #0
	bl ov19_021D79B8
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DC4F4: .word ov19_021DC464
	thumb_func_end ov19_021DC46C

	thumb_func_start ov19_021DC4F8
ov19_021DC4F8: ; 0x021DC4F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x54
	add r5, r0, #0
	add r4, r1, #0
	beq _021DC5AE
	ldr r0, [r5, #0]
	bl ov19_021D77D8
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov19_021D77D0
	add r2, r0, #0
	ldr r0, [r6, #0x20]
	add r1, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [r6, #0x1c]
	add r0, sp, #0x30
	bl ov19_021D783C
	add r0, sp, #0xc
	bl sub_020A818C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_0207CE78
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x10
	mov r2, #0
	add r3, sp, #8
	bl sub_02006F50
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _021DC5B4 ; =0x00300010
	mov r2, #1
	and r1, r0
	ldr r0, [sp, #8]
	add r3, sp, #0xc
	str r1, [r0, #8]
	mov r1, #0xbe
	ldr r0, [sp, #8]
	lsl r1, r1, #8
	bl sub_020A8224
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #2
	bl sub_0207CE78
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x10
	mov r2, #1
	mov r3, #0xc0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	add r1, sp, #0x30
	mov r2, #0x12
	mov r3, #0xe0
	bl ov19_021D785C
	add r1, r5, #0
	add r1, #0x90
	add r5, #0x90
	str r0, [r1, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021DC5A8
	mov r1, #6
	bl sub_02021E90
_021DC5A8:
	add r0, r6, #0
	bl sub_020181C4
_021DC5AE:
	add sp, #0x54
	pop {r3, r4, r5, r6, pc}
	nop
_021DC5B4: .word 0x00300010
	thumb_func_end ov19_021DC4F8

	thumb_func_start ov19_021DC5B8
ov19_021DC5B8: ; 0x021DC5B8
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r2, #0x90
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _021DC5DC
	mov r2, #0x12
	lsl r2, r2, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp]
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, sp, #0
	bl sub_02021C50
_021DC5DC:
	add sp, #0xc
	pop {pc}
	thumb_func_end ov19_021DC5B8

	thumb_func_start ov19_021DC5E0
ov19_021DC5E0: ; 0x021DC5E0
	push {r3, lr}
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DC5EE
	bl sub_02021BD4
_021DC5EE:
	pop {r3, pc}
	thumb_func_end ov19_021DC5E0

	.rodata


	.global Unk_ov19_021E0208
Unk_ov19_021E0208: ; 0x021E0208
	.incbin "incbin/overlay19_rodata.bin", 0x418, 0x420 - 0x418

	.global Unk_ov19_021E0210
Unk_ov19_021E0210: ; 0x021E0210
	.incbin "incbin/overlay19_rodata.bin", 0x420, 0x438 - 0x420

	.global Unk_ov19_021E0228
Unk_ov19_021E0228: ; 0x021E0228
	.incbin "incbin/overlay19_rodata.bin", 0x438, 0xA

