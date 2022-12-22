	.include "macros/function.inc"
	.include "include/unk_0202DAB4.inc"

	

	.text


	thumb_func_start sub_0202DAB4
sub_0202DAB4: ; 0x0202DAB4
	ldr r0, _0202DAB8 ; =0x00001328
	bx lr
	; .align 2, 0
_0202DAB8: .word 0x00001328
	thumb_func_end sub_0202DAB4

	thumb_func_start sub_0202DABC
sub_0202DABC: ; 0x0202DABC
	ldr r3, _0202DAC4 ; =sub_02025C84
	mov r0, #0x1f
	bx r3
	nop
_0202DAC4: .word sub_02025C84
	thumb_func_end sub_0202DABC

	thumb_func_start sub_0202DAC8
sub_0202DAC8: ; 0x0202DAC8
	cmp r0, #0
	beq _0202DAD4
	cmp r0, #0xe
	bhs _0202DAD4
	mov r0, #1
	bx lr
_0202DAD4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0202DAC8

	thumb_func_start sub_0202DAD8
sub_0202DAD8: ; 0x0202DAD8
	push {r3, r4, r5, lr}
	cmp r1, #0
	blt _0202DAFC
	cmp r1, #8
	bge _0202DAFC
	mov r2, #1
	lsl r2, r2, #8
	add r4, r0, r2
	lsl r0, r1, #6
	add r0, r1, r0
	lsl r5, r0, #2
	ldrh r0, [r4, r5]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DAFC
	add r0, r4, r5
	pop {r3, r4, r5, pc}
_0202DAFC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DAD8

	thumb_func_start sub_0202DB00
sub_0202DB00: ; 0x0202DB00
	push {r3, r4, r5, lr}
	cmp r1, #0
	blt _0202DB26
	cmp r1, #3
	bge _0202DB26
	mov r2, #0x92
	lsl r2, r2, #4
	add r4, r0, r2
	mov r0, #0xd6
	lsl r0, r0, #2
	add r5, r1, #0
	mul r5, r0
	ldrh r0, [r4, r5]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DB26
	add r0, r4, r5
	pop {r3, r4, r5, pc}
_0202DB26:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202DB00

	thumb_func_start sub_0202DB2C
sub_0202DB2C: ; 0x0202DB2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_0202DCE0
	cmp r0, #0
	bne _0202DB48
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202DB48:
	mov r7, #0x41
	lsl r7, r7, #2
	ldr r5, [sp]
	mov r4, #0
	sub r6, r7, #4
_0202DB52:
	ldrh r0, [r5, r6]
	bl sub_0202DAC8
	cmp r0, #0
	bne _0202DB94
	lsl r0, r4, #6
	mov r2, #1
	add r0, r4, r0
	lsl r4, r0, #2
	ldr r1, [sp]
	lsl r2, r2, #8
	add r1, r1, r2
	ldr r0, [sp, #4]
	add r1, r1, r4
	add r2, r2, #4
	bl MI_CpuCopy8
	ldr r1, _0202DBA8 ; =0x00000102
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, r1
	ldrh r0, [r1, r4]
	bic r0, r2
	ldr r2, [sp, #8]
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #3
	and r2, r3
	orr r0, r2
	strh r0, [r1, r4]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0202DB9C
_0202DB94:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #8
	blt _0202DB52
_0202DB9C:
	mov r0, #0x1f
	bl sub_02025C84
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202DBA8: .word 0x00000102
	thumb_func_end sub_0202DB2C

	thumb_func_start sub_0202DBAC
sub_0202DBAC: ; 0x0202DBAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #8]
	bl sub_0202DD08
	cmp r0, #0
	bne _0202DBC6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0202DBC6:
	ldr r1, _0202DC44 ; =0x00000152
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0202DBE4
	ldr r0, [sp]
	bl sub_0202DCE0
	cmp r0, #0
	bne _0202DBE4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0202DBE4:
	mov r7, #0xd6
	mov r6, #0x92
	ldr r5, [sp]
	mov r4, #0
	lsl r7, r7, #2
	lsl r6, r6, #4
_0202DBF0:
	ldrh r0, [r5, r6]
	bl sub_0202DAC8
	cmp r0, #0
	bne _0202DC30
	mov r2, #0x92
	ldr r1, [sp]
	lsl r2, r2, #4
	add r3, r1, r2
	mov r2, #0xd6
	lsl r2, r2, #2
	add r1, r4, #0
	mul r1, r2
	ldr r0, [sp, #4]
	add r1, r3, r1
	bl MI_CpuCopy8
	ldr r1, _0202DC44 ; =0x00000152
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0202DC2A
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl sub_0202DB2C
_0202DC2A:
	mov r0, #1
	str r0, [sp, #8]
	b _0202DC38
_0202DC30:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #3
	blt _0202DBF0
_0202DC38:
	mov r0, #0x1f
	bl sub_02025C84
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202DC44: .word 0x00000152
	thumb_func_end sub_0202DBAC

	thumb_func_start sub_0202DC48
sub_0202DC48: ; 0x0202DC48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #8
	blt _0202DC56
	bl GF_AssertFail
_0202DC56:
	lsl r0, r5, #6
	add r0, r5, r0
	lsl r0, r0, #2
	mov r1, #1
	mov r3, #0
	add r2, r4, r0
	lsl r1, r1, #8
	strh r3, [r2, r1]
	add r1, r1, #2
	add r3, r4, r1
	ldrh r2, [r3, r0]
	mov r1, #3
	bic r2, r1
	strh r2, [r3, r0]
	mov r0, #0x1f
	bl sub_02025C84
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DC48

	thumb_func_start sub_0202DC7C
sub_0202DC7C: ; 0x0202DC7C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0202DC8A
	bl GF_AssertFail
_0202DC8A:
	mov r0, #0xd6
	lsl r0, r0, #2
	mul r0, r4
	add r2, r5, r0
	mov r0, #0x92
	mov r1, #0
	lsl r0, r0, #4
	strh r1, [r2, r0]
	mov r1, #0xa7
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	add r0, r5, #0
	bl sub_0202DE8C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202DDE8
	mov r0, #0x1f
	bl sub_02025C84
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DC7C

	thumb_func_start sub_0202DCB8
sub_0202DCB8: ; 0x0202DCB8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0202DCC6
	bl GF_AssertFail
_0202DCC6:
	mov r0, #0xd6
	lsl r0, r0, #2
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x92
	mov r2, #0
	lsl r0, r0, #4
	strh r2, [r1, r0]
	mov r0, #0x1f
	bl sub_02025C84
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DCB8

	thumb_func_start sub_0202DCE0
sub_0202DCE0: ; 0x0202DCE0
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x41
	lsl r7, r7, #2
	add r5, r0, #0
	mov r4, #0
	sub r6, r7, #4
_0202DCEC:
	ldrh r0, [r5, r6]
	bl sub_0202DAC8
	cmp r0, #0
	bne _0202DCFA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202DCFA:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #8
	blt _0202DCEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202DCE0

	thumb_func_start sub_0202DD08
sub_0202DD08: ; 0x0202DD08
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xd6
	mov r6, #0x92
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #2
	lsl r6, r6, #4
_0202DD16:
	ldrh r0, [r5, r6]
	bl sub_0202DAC8
	cmp r0, #0
	bne _0202DD24
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202DD24:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #3
	blt _0202DD16
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202DD08

	thumb_func_start sub_0202DD30
sub_0202DD30: ; 0x0202DD30
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _0202DD3E
	bl GF_AssertFail
_0202DD3E:
	lsl r0, r4, #6
	add r0, r4, r0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #1
	lsl r0, r0, #8
	ldrh r0, [r1, r0]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DD58
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202DD58:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DD30

	thumb_func_start sub_0202DD5C
sub_0202DD5C: ; 0x0202DD5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0202DD6A
	bl GF_AssertFail
_0202DD6A:
	mov r0, #0xd6
	lsl r0, r0, #2
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x92
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DD84
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202DD84:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DD5C

	thumb_func_start sub_0202DD88
sub_0202DD88: ; 0x0202DD88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0202DD8E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202DD5C
	cmp r0, #1
	bne _0202DD9E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202DD9E:
	add r4, r4, #1
	cmp r4, #3
	blt _0202DD8E
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DD88

	thumb_func_start sub_0202DDA8
sub_0202DDA8: ; 0x0202DDA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0202DDE4 ; =0x00000102
	add r7, r1, #0
	mov r6, #0
	add r4, r5, r0
_0202DDB4:
	mov r0, #1
	lsl r0, r0, #8
	ldrh r0, [r5, r0]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DDD0
	ldrh r0, [r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r7, r0
	bne _0202DDD0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202DDD0:
	mov r0, #0x41
	lsl r0, r0, #2
	add r6, r6, #1
	add r5, r5, r0
	add r4, r4, r0
	cmp r6, #8
	blt _0202DDB4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202DDE4: .word 0x00000102
	thumb_func_end sub_0202DDA8

	thumb_func_start sub_0202DDE8
sub_0202DDE8: ; 0x0202DDE8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _0202DE28 ; =0x00000102
	str r0, [sp]
	mov r6, #0
	add r4, r0, #0
	add r5, r0, r1
_0202DDF6:
	mov r0, #1
	lsl r0, r0, #8
	ldrh r0, [r4, r0]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DE18
	ldrh r0, [r5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r7, r0
	bne _0202DE18
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0202DC48
	pop {r3, r4, r5, r6, r7, pc}
_0202DE18:
	mov r0, #0x41
	lsl r0, r0, #2
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, r0
	cmp r6, #8
	blt _0202DDF6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202DE28: .word 0x00000102
	thumb_func_end sub_0202DDE8

	thumb_func_start sub_0202DE2C
sub_0202DE2C: ; 0x0202DE2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	lsl r0, r0, #0xa
	cmp r4, r0
	blt _0202DE3E
	bl GF_AssertFail
_0202DE3E:
	mov r0, #1
	mov r1, #7
	add r2, r4, #0
	and r2, r1
	add r1, r0, #0
	lsl r1, r2
	asr r2, r4, #2
	lsr r2, r2, #0x1d
	add r2, r4, r2
	asr r2, r2, #3
	ldrb r2, [r5, r2]
	tst r1, r2
	bne _0202DE5A
	mov r0, #0
_0202DE5A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DE2C

	thumb_func_start sub_0202DE5C
sub_0202DE5C: ; 0x0202DE5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	lsl r0, r0, #0xa
	cmp r4, r0
	blt _0202DE6E
	bl GF_AssertFail
_0202DE6E:
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r1, r0, #3
	mov r2, #7
	ldrb r0, [r5, r1]
	mov r3, #1
	and r2, r4
	lsl r3, r2
	orr r0, r3
	strb r0, [r5, r1]
	mov r0, #0x1f
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DE5C

	thumb_func_start sub_0202DE8C
sub_0202DE8C: ; 0x0202DE8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	mov r0, #7
	and r0, r4
	add r2, r1, #0
	lsl r2, r0
	mvn r0, r2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r0, r1, #0xb
	cmp r4, r0
	blt _0202DEAC
	bl GF_AssertFail
_0202DEAC:
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r1, r0, #3
	ldrb r0, [r5, r1]
	and r0, r6
	strb r0, [r5, r1]
	mov r0, #0x1f
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202DE8C

	thumb_func_start sub_0202DEC4
sub_0202DEC4: ; 0x0202DEC4
	ldr r3, _0202DECC ; =sub_0202DE2C
	ldr r1, _0202DED0 ; =0x000007FF
	bx r3
	nop
_0202DECC: .word sub_0202DE2C
_0202DED0: .word 0x000007FF
	thumb_func_end sub_0202DEC4

	thumb_func_start sub_0202DED4
sub_0202DED4: ; 0x0202DED4
	ldr r3, _0202DEDC ; =sub_0202DE5C
	ldr r1, _0202DEE0 ; =0x000007FF
	bx r3
	nop
_0202DEDC: .word sub_0202DE5C
_0202DEE0: .word 0x000007FF
	thumb_func_end sub_0202DED4

	thumb_func_start sub_0202DEE4
sub_0202DEE4: ; 0x0202DEE4
	push {r3, lr}
	ldr r1, _0202DF00 ; =0x021C07A0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0202DEF6
	bl sub_0202442C
	ldr r1, _0202DF00 ; =0x021C07A0
	str r0, [r1, #0]
_0202DEF6:
	mov r0, #0x1f
	bl sub_02025C84
	pop {r3, pc}
	nop
_0202DF00: .word 0x021C07A0
	thumb_func_end sub_0202DEE4

	thumb_func_start sub_0202DF04
sub_0202DF04: ; 0x0202DF04
	ldr r0, _0202DF14 ; =0x021C07A0
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0202DF10
	mov r1, #0
	str r1, [r0, #0]
_0202DF10:
	bx lr
	nop
_0202DF14: .word 0x021C07A0
	thumb_func_end sub_0202DF04

	thumb_func_start sub_0202DF18
sub_0202DF18: ; 0x0202DF18
	push {r3, r4, r5, lr}
	ldr r4, _0202DF3C ; =0x021C07A0
	mov r5, #0
_0202DF1E:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0202DD30
	cmp r0, #1
	bne _0202DF2E
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_0202DF2E:
	add r5, r5, #1
	cmp r5, #8
	blt _0202DF1E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	nop
_0202DF3C: .word 0x021C07A0
	thumb_func_end sub_0202DF18

	thumb_func_start sub_0202DF40
sub_0202DF40: ; 0x0202DF40
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0202DF58 ; =0x021C07A0
	ldr r0, [r0, #0]
	bl sub_0202DAD8
	cmp r0, #0
	beq _0202DF54
	ldrh r0, [r0]
	pop {r3, pc}
_0202DF54:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0202DF58: .word 0x021C07A0
	thumb_func_end sub_0202DF40

	thumb_func_start sub_0202DF5C
sub_0202DF5C: ; 0x0202DF5C
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0202DF74 ; =0x021C07A0
	ldr r0, [r0, #0]
	bl sub_0202DAD8
	cmp r0, #0
	beq _0202DF70
	add r0, r0, #4
	pop {r3, pc}
_0202DF70:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0202DF74: .word 0x021C07A0
	thumb_func_end sub_0202DF5C

	thumb_func_start sub_0202DF78
sub_0202DF78: ; 0x0202DF78
	add r1, r0, #0
	ldr r0, _0202DF84 ; =0x021C07A0
	ldr r3, _0202DF88 ; =sub_0202DC48
	ldr r0, [r0, #0]
	bx r3
	nop
_0202DF84: .word 0x021C07A0
_0202DF88: .word sub_0202DC48
	thumb_func_end sub_0202DF78

	.bss


	.global Unk_021C07A0
Unk_021C07A0: ; 0x021C07A0
	.space 0x4

