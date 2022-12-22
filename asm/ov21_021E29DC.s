	.include "macros/function.inc"
	.include "include/ov21_021E29DC.inc"

	

	.text


	thumb_func_start ov21_021E29DC
ov21_021E29DC: ; 0x021E29DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021E2A5C
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E2AE0
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E2B08
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E2C20
	str r0, [r5, #0x24]
	ldr r0, _021E2A24 ; =ov21_021E2C24
	str r0, [r5, #8]
	ldr r0, _021E2A28 ; =ov21_021E2C2C
	str r0, [r5, #0xc]
	ldr r0, _021E2A2C ; =ov21_021E2C5C
	str r0, [r5, #0x10]
	ldr r0, _021E2A30 ; =ov21_021E2C64
	str r0, [r5, #0x14]
	ldr r0, _021E2A34 ; =ov21_021E2D10
	str r0, [r5, #0x18]
	ldr r0, _021E2A38 ; =ov21_021E2D38
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E2A24: .word ov21_021E2C24
_021E2A28: .word ov21_021E2C2C
_021E2A2C: .word ov21_021E2C5C
_021E2A30: .word ov21_021E2C64
_021E2A34: .word ov21_021E2D10
_021E2A38: .word ov21_021E2D38
	thumb_func_end ov21_021E29DC

	thumb_func_start ov21_021E2A3C
ov21_021E2A3C: ; 0x021E2A3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E2BA8
	ldr r0, [r4, #4]
	bl ov21_021E2BBC
	ldr r0, [r4, #0x20]
	bl ov21_021E2BD0
	pop {r4, pc}
	thumb_func_end ov21_021E2A3C

	thumb_func_start ov21_021E2A54
ov21_021E2A54: ; 0x021E2A54
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E2A54

	thumb_func_start ov21_021E2A5C
ov21_021E2A5C: ; 0x021E2A5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x34
	bl sub_02018144
	add r4, r0, #0
	bne _021E2A6E
	bl GF_AssertFail
_021E2A6E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x34
	bl memset
	add r0, r5, #0
	bl ov21_021D13B4
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #2
	bl ov21_021D1410
	ldr r0, [r0, #0]
	mov r1, #3
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl ov21_021D1410
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r1, #4
	bl ov21_021D1410
	str r0, [r4, #0x18]
	add r0, r5, #0
	mov r1, #6
	bl ov21_021D1410
	str r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #7
	bl ov21_021D1410
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #6
	bl ov21_021D1430
	str r0, [r4, #0x24]
	add r0, r5, #0
	mov r1, #0
	bl ov21_021D1410
	ldr r0, [r0, #0]
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E2A5C

	thumb_func_start ov21_021E2AE0
ov21_021E2AE0: ; 0x021E2AE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E2AF2
	bl GF_AssertFail
_021E2AF2:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E2AE0

	thumb_func_start ov21_021E2B08
ov21_021E2B08: ; 0x021E2B08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov21_021E2C20
	add r7, r0, #0
	mov r1, #0x14
	mul r7, r1
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021E2B28
	bl GF_AssertFail
_021E2B28:
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl memset
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #2
	bl ov21_021D47F0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x14
	add r2, r6, #0
	mov r3, #4
	bl ov21_021D4A94
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x28
	add r2, r6, #0
	mov r3, #8
	bl ov21_021D48B8
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3c
	add r2, r6, #0
	mov r3, #0x10
	bl ov21_021D491C
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x50
	add r2, r6, #0
	mov r3, #0x20
	bl ov21_021D4980
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x64
	add r2, r6, #0
	mov r3, #0x40
	bl ov21_021D49E4
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x78
	add r2, r6, #0
	mov r3, #0x80
	bl ov21_021D4A3C
	add r1, r4, #0
	mov r3, #1
	add r0, r5, #0
	add r1, #0x8c
	add r2, r6, #0
	lsl r3, r3, #8
	bl ov21_021D4B50
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E2B08

	thumb_func_start ov21_021E2BA8
ov21_021E2BA8: ; 0x021E2BA8
	push {r4, lr}
	add r4, r0, #0
	bne _021E2BB2
	bl GF_AssertFail
_021E2BB2:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E2BA8

	thumb_func_start ov21_021E2BBC
ov21_021E2BBC: ; 0x021E2BBC
	push {r4, lr}
	add r4, r0, #0
	bne _021E2BC6
	bl GF_AssertFail
_021E2BC6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E2BBC

	thumb_func_start ov21_021E2BD0
ov21_021E2BD0: ; 0x021E2BD0
	push {r4, lr}
	add r4, r0, #0
	bne _021E2BDA
	bl GF_AssertFail
_021E2BDA:
	add r0, r4, #0
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x14
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x28
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x3c
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x50
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x64
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x78
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x8c
	bl ov21_021D4660
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021E2BD0

	thumb_func_start ov21_021E2C20
ov21_021E2C20: ; 0x021E2C20
	mov r0, #8
	bx lr
	thumb_func_end ov21_021E2C20

	thumb_func_start ov21_021E2C24
ov21_021E2C24: ; 0x021E2C24
	ldr r1, [r1, #0x10]
	mov r0, #1
	str r0, [r1, #0x1c]
	bx lr
	thumb_func_end ov21_021E2C24

	thumb_func_start ov21_021E2C2C
ov21_021E2C2C: ; 0x021E2C2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021E2C3A
	mov r0, #1
	pop {r4, pc}
_021E2C3A:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021E2C44
	mov r0, #0
	pop {r4, pc}
_021E2C44:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021E2C56
	add r0, r1, #0
	bl ov21_021E3320
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E2C56:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E2C2C

	thumb_func_start ov21_021E2C5C
ov21_021E2C5C: ; 0x021E2C5C
	mov r0, #0
	str r0, [r1, #8]
	mov r0, #1
	bx lr
	thumb_func_end ov21_021E2C5C

	thumb_func_start ov21_021E2C64
ov21_021E2C64: ; 0x021E2C64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r1, #3
	bhi _021E2D06
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E2C82: ; jump table
	.short _021E2C8A - _021E2C82 - 2 ; case 0
	.short _021E2CAA - _021E2C82 - 2 ; case 1
	.short _021E2CE2 - _021E2C82 - 2 ; case 2
	.short _021E2CFA - _021E2C82 - 2 ; case 3
_021E2C8A:
	ldr r0, [r4, #4]
	mov r1, #0x28
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x28
	bl memset
	ldr r1, [r7, #8]
	ldr r0, [r4, #8]
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E2D0A
_021E2CAA:
	ldr r3, [r4, #4]
	add r1, r6, #0
	bl ov21_021E3080
	add r0, r6, #0
	bl ov21_021E3BE0
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2f
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #4
	add r2, r1, #0
	sub r2, #0x14
	bl ov21_021D23F8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E2D0A
_021E2CE2:
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	cmp r0, #0
	beq _021E2D0A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E2D0A
_021E2CFA:
	add r0, r6, #0
	bl ov21_021E3BFC
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E2D06:
	bl GF_AssertFail
_021E2D0A:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E2C64

	thumb_func_start ov21_021E2D10
ov21_021E2D10: ; 0x021E2D10
	push {r3, r4, r5, lr}
	ldr r4, [r1, #8]
	add r5, r2, #0
	ldr r1, [r5, #8]
	ldr r0, [r4, #0]
	cmp r0, r1
	beq _021E2D32
	add r0, r4, #0
	bl ov21_021E331C
	ldr r1, [r5, #8]
	ldr r2, [r4, #0]
	add r0, r4, #0
	bl ov21_021E3FC0
	ldr r0, [r5, #8]
	str r0, [r4, #0]
_021E2D32:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E2D10

	thumb_func_start ov21_021E2D38
ov21_021E2D38: ; 0x021E2D38
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r3, [r4, #0]
	add r5, r0, #0
	ldr r1, [r4, #8]
	cmp r3, #4
	bhi _021E2DF4
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021E2D54: ; jump table
	.short _021E2D5E - _021E2D54 - 2 ; case 0
	.short _021E2DB8 - _021E2D54 - 2 ; case 1
	.short _021E2DD0 - _021E2D54 - 2 ; case 2
	.short _021E2DDC - _021E2D54 - 2 ; case 3
	.short _021E2DEE - _021E2D54 - 2 ; case 4
_021E2D5E:
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	beq _021E2D8E
	add r0, r1, #0
	bl ov21_021E3BE0
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2f
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #4
	add r3, r1, #0
	sub r3, #0x14
	bl ov21_021D23F8
	b _021E2DB0
_021E2D8E:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x3f
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #4
	add r3, r1, #0
	sub r3, #0x14
	bl ov21_021D23F8
_021E2DB0:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E2DF8
_021E2DB8:
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	cmp r0, #0
	beq _021E2DF8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E2DF8
_021E2DD0:
	bl ov21_021E30BC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E2DF8
_021E2DDC:
	add r0, r1, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E2DF8
_021E2DEE:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_021E2DF4:
	bl GF_AssertFail
_021E2DF8:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E2D38

	thumb_func_start ov21_021E2E00
ov21_021E2E00: ; 0x021E2E00
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021E2E10
	mov r0, #1
	str r0, [r4, #0x30]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E2E00

	thumb_func_start ov21_021E2E10
ov21_021E2E10: ; 0x021E2E10
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0]
	mov r0, #2
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
	mov r1, #0
	str r1, [r4, #0x28]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CDC
	ldr r0, [r4, #8]
	cmp r0, #4
	bhi _021E2EBE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E2E3E: ; jump table
	.short _021E2E48 - _021E2E3E - 2 ; case 0
	.short _021E2E64 - _021E2E3E - 2 ; case 1
	.short _021E2E88 - _021E2E3E - 2 ; case 2
	.short _021E2EAC - _021E2E3E - 2 ; case 3
	.short _021E2EB6 - _021E2E3E - 2 ; case 4
_021E2E48:
	ldr r0, [r4, #0x10]
	mov r1, #0x38
	str r1, [r0, #8]
	ldr r0, [r4, #0x10]
	mov r2, #0x50
	str r2, [r0, #0xc]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CD4
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
	pop {r4, pc}
_021E2E64:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ov21_021DCA4C
	ldr r0, [r4, #0x1c]
	mov r1, #4
	bl ov21_021DCA54
	ldr r0, [r4, #0x1c]
	mov r1, #0x38
	mov r2, #0x50
	bl ov21_021DCA44
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
	pop {r4, pc}
_021E2E88:
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov21_021E4070
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl ov21_021E4078
	ldr r0, [r4, #0x20]
	mov r1, #0x38
	mov r2, #0x50
	bl ov21_021E4068
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
	pop {r4, pc}
_021E2EAC:
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
	pop {r4, pc}
_021E2EB6:
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
_021E2EBE:
	pop {r4, pc}
	thumb_func_end ov21_021E2E10

	thumb_func_start ov21_021E2EC0
ov21_021E2EC0: ; 0x021E2EC0
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E2EC0

	thumb_func_start ov21_021E2EC4
ov21_021E2EC4: ; 0x021E2EC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #1
	add r7, r1, #0
	str r2, [sp]
	str r0, [sp, #4]
	cmp r7, #4
	bhi _021E2FC2
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E2EE2: ; jump table
	.short _021E2EEC - _021E2EE2 - 2 ; case 0
	.short _021E2F14 - _021E2EE2 - 2 ; case 1
	.short _021E2F4A - _021E2EE2 - 2 ; case 2
	.short _021E2F80 - _021E2EE2 - 2 ; case 3
	.short _021E2FA0 - _021E2EE2 - 2 ; case 4
_021E2EEC:
	add r0, r2, #0
	bl ov21_021E2EC0
	cmp r0, #0
	beq _021E2EFA
	mov r1, #2
	b _021E2EFC
_021E2EFA:
	mov r1, #1
_021E2EFC:
	ldr r0, [r4, #0x10]
	mov r6, #0x30
	str r1, [r0, #0x14]
	ldr r2, [r4, #0]
	mov r0, #4
	ldr r1, [r2, #0]
	mov r5, #0x48
	orr r0, r1
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r4, #8]
	b _021E2FC6
_021E2F14:
	add r0, r2, #0
	bl ov21_021E2EC0
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	beq _021E2F30
	mov r1, #1
	bl ov21_021DCA4C
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ov21_021DCA54
	b _021E2F36
_021E2F30:
	mov r1, #0
	bl ov21_021DCA4C
_021E2F36:
	ldr r2, [r4, #0]
	mov r0, #8
	ldr r1, [r2, #0]
	mov r6, #0x28
	orr r0, r1
	str r0, [r2, #0]
	mov r0, #1
	str r0, [r4, #8]
	mov r5, #0x78
	b _021E2FC6
_021E2F4A:
	add r0, r2, #0
	bl ov21_021E2EC0
	cmp r0, #0
	ldr r0, [r4, #0x20]
	beq _021E2F66
	mov r1, #1
	bl ov21_021E4070
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov21_021E4078
	b _021E2F6C
_021E2F66:
	mov r1, #0
	bl ov21_021E4070
_021E2F6C:
	ldr r2, [r4, #0]
	mov r0, #0x10
	ldr r1, [r2, #0]
	mov r6, #0x30
	orr r0, r1
	str r0, [r2, #0]
	mov r0, #2
	str r0, [r4, #8]
	mov r5, #0x40
	b _021E2FC6
_021E2F80:
	ldr r0, [r4, #4]
	bl ov21_021D37CC
	cmp r0, #2
	bne _021E2F9A
	ldr r2, [r4, #0]
	mov r0, #0x20
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
	mov r0, #3
	str r0, [r4, #8]
	b _021E2FC6
_021E2F9A:
	mov r0, #0
	str r0, [sp, #4]
	b _021E2FC6
_021E2FA0:
	ldr r0, [r4, #4]
	bl ov21_021D3954
	cmp r0, #1
	bne _021E2FBC
	ldr r2, [r4, #0]
	mov r0, #1
	ldr r1, [r2, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r2, #0]
	mov r0, #4
	str r0, [r4, #8]
	b _021E2FC6
_021E2FBC:
	mov r0, #0
	str r0, [sp, #4]
	b _021E2FC6
_021E2FC2:
	bl GF_AssertFail
_021E2FC6:
	ldr r0, [sp]
	cmp r0, #4
	bhi _021E3076
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E2FD8: ; jump table
	.short _021E2FE2 - _021E2FD8 - 2 ; case 0
	.short _021E301A - _021E2FD8 - 2 ; case 1
	.short _021E3048 - _021E2FD8 - 2 ; case 2
	.short _021E307A - _021E2FD8 - 2 ; case 3
	.short _021E307A - _021E2FD8 - 2 ; case 4
_021E2FE2:
	add r0, r7, #0
	bl ov21_021E2EC0
	cmp r0, #0
	beq _021E2FFA
	ldr r0, [r4, #0x10]
	mov r1, #2
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CDC
	b _021E3006
_021E2FFA:
	ldr r0, [r4, #0x10]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CDC
_021E3006:
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	str r6, [r0, #8]
	ldr r0, [r4, #0x10]
	add r2, r5, #0
	str r5, [r0, #0xc]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CD4
	b _021E307A
_021E301A:
	add r0, r7, #0
	bl ov21_021E2EC0
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	beq _021E3036
	mov r1, #1
	bl ov21_021DCA4C
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ov21_021DCA54
	b _021E303C
_021E3036:
	mov r1, #0
	bl ov21_021DCA4C
_021E303C:
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	add r2, r5, #0
	bl ov21_021DCA44
	b _021E307A
_021E3048:
	add r0, r7, #0
	bl ov21_021E2EC0
	cmp r0, #0
	ldr r0, [r4, #0x20]
	beq _021E3064
	mov r1, #1
	bl ov21_021E4070
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov21_021E4078
	b _021E306A
_021E3064:
	mov r1, #0
	bl ov21_021E4070
_021E306A:
	ldr r0, [r4, #0x20]
	add r1, r6, #0
	add r2, r5, #0
	bl ov21_021E4068
	b _021E307A
_021E3076:
	bl GF_AssertFail
_021E307A:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E2EC4

	thumb_func_start ov21_021E3080
ov21_021E3080: ; 0x021E3080
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r1, #0
	add r1, r2, #0
	add r6, r0, #0
	add r2, r4, #0
	bl ov21_021E30E4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov21_021E3178
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov21_021E3268
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov21_021E3270
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov21_021E3FC0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E3080

	thumb_func_start ov21_021E30BC
ov21_021E30BC: ; 0x021E30BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov21_021E326C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E3224
	add r0, r4, #0
	bl ov21_021E3304
	ldr r0, [r5, #0]
	mov r1, #2
	ldr r0, [r0, #0]
	bl sub_02019EBC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E30BC

	thumb_func_start ov21_021E30E4
ov21_021E30E4: ; 0x021E30E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	mov r2, #0
	str r2, [sp]
	add r5, r0, #0
	str r4, [sp, #4]
	add r6, r1, #0
	ldr r0, [r5, #0]
	mov r1, #6
	add r3, r2, #0
	bl ov21_021D276C
	ldr r0, [r6, #4]
	bl ov21_021D36D8
	cmp r0, #1
	bne _021E311A
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	mov r2, #0
	ldr r0, [r5, #0]
	mov r1, #0x18
	add r3, r2, #0
	bl ov21_021D276C
_021E311A:
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x21
	mov r3, #2
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x39
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	ldrh r0, [r2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0]
	mov r1, #2
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E30E4

	thumb_func_start ov21_021E3178
ov21_021E3178: ; 0x021E3178
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r0, #0]
	add r5, r1, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E3214 ; =0x00000827
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x57
	bl sub_02009A4C
	str r0, [r5, #0x18]
	bl sub_0200A3DC
	ldr r0, [r5, #0x18]
	bl sub_02009D4C
	ldr r0, _021E3218 ; =0x000007DC
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0xc
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x1c]
	bl sub_0200A640
	ldr r0, [r5, #0x1c]
	bl sub_02009D4C
	ldr r0, _021E321C ; =0x00000825
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x55
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x20]
	ldr r0, _021E3220 ; =0x00000826
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x56
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x24]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3214: .word 0x00000827
_021E3218: .word 0x000007DC
_021E321C: .word 0x00000825
_021E3220: .word 0x00000826
	thumb_func_end ov21_021E3178

	thumb_func_start ov21_021E3224
ov21_021E3224: ; 0x021E3224
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #0]
	ldr r0, [r5, #0x18]
	bl sub_0200A4E4
	ldr r0, [r5, #0x1c]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x20]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3224

	thumb_func_start ov21_021E3268
ov21_021E3268: ; 0x021E3268
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E3268

	thumb_func_start ov21_021E326C
ov21_021E326C: ; 0x021E326C
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E326C

	thumb_func_start ov21_021E3270
ov21_021E3270: ; 0x021E3270
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r7, [r0, #0]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	add r5, r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	add r4, r2, #0
	bl sub_0200A72C
	mov r1, #0x10
	str r1, [sp, #0x1c]
	mov r1, #0
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x18]
	mov r1, #1
	str r0, [sp, #0x14]
	str r1, [sp, #0x2c]
	str r4, [sp, #0x30]
	bl sub_0201FAB4
	str r0, [sp, #8]
	mov r6, #0
_021E32A8:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #8
	mov r2, #2
	bl ov21_021D4D6C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	add r3, r6, #0
	ldr r0, [r7, r0]
	ldr r2, _021E3300 ; =0x000002B9
	add r1, r4, #0
	add r3, #0x66
	bl ov21_021D4DAC
	str r4, [sp, #0x10]
	add r0, sp, #0xc
	bl ov21_021D4CA0
	str r0, [r5, #4]
	ldr r0, [r0, #0]
	ldr r1, [sp, #8]
	bl sub_02012A60
	ldr r0, [r5, #4]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
	add r0, r4, #0
	bl ov21_021D4DA0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #5
	blt _021E32A8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021E3300: .word 0x000002B9
	thumb_func_end ov21_021E3270

	thumb_func_start ov21_021E3304
ov21_021E3304: ; 0x021E3304
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E330A:
	ldr r0, [r5, #4]
	bl ov21_021D4D1C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021E330A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E3304

	thumb_func_start ov21_021E331C
ov21_021E331C: ; 0x021E331C
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E331C

	thumb_func_start ov21_021E3320
ov21_021E3320: ; 0x021E3320
	mov r1, #1
	str r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E3320

	thumb_func_start ov21_021E332C
ov21_021E332C: ; 0x021E332C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021E33C4
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E3400
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E3428
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E3458
	str r0, [r5, #0x24]
	ldr r0, _021E3374 ; =ov21_021E345C
	str r0, [r5, #8]
	ldr r0, _021E3378 ; =ov21_021E34AC
	str r0, [r5, #0xc]
	ldr r0, _021E337C ; =ov21_021E3520
	str r0, [r5, #0x10]
	ldr r0, _021E3380 ; =ov21_021E3540
	str r0, [r5, #0x14]
	ldr r0, _021E3384 ; =ov21_021E35D0
	str r0, [r5, #0x18]
	ldr r0, _021E3388 ; =ov21_021E3604
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E3374: .word ov21_021E345C
_021E3378: .word ov21_021E34AC
_021E337C: .word ov21_021E3520
_021E3380: .word ov21_021E3540
_021E3384: .word ov21_021E35D0
_021E3388: .word ov21_021E3604
	thumb_func_end ov21_021E332C

	thumb_func_start ov21_021E338C
ov21_021E338C: ; 0x021E338C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E342C
	ldr r0, [r4, #4]
	bl ov21_021E3440
	ldr r0, [r4, #0x20]
	bl ov21_021E3454
	pop {r4, pc}
	thumb_func_end ov21_021E338C

	thumb_func_start ov21_021E33A4
ov21_021E33A4: ; 0x021E33A4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E33A4

	thumb_func_start ov21_021E33AC
ov21_021E33AC: ; 0x021E33AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E33AC

	thumb_func_start ov21_021E33B4
ov21_021E33B4: ; 0x021E33B4
	ldr r0, [r0, #0]
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E33B4

	thumb_func_start ov21_021E33BC
ov21_021E33BC: ; 0x021E33BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E33BC

	thumb_func_start ov21_021E33C4
ov21_021E33C4: ; 0x021E33C4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x34
	bl sub_02018144
	add r4, r0, #0
	bne _021E33D6
	bl GF_AssertFail
_021E33D6:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x34
	bl memset
	add r0, r5, #0
	bl ov21_021D13C8
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E33C4

	thumb_func_start ov21_021E3400
ov21_021E3400: ; 0x021E3400
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E3412
	bl GF_AssertFail
_021E3412:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3400

	thumb_func_start ov21_021E3428
ov21_021E3428: ; 0x021E3428
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E3428

	thumb_func_start ov21_021E342C
ov21_021E342C: ; 0x021E342C
	push {r4, lr}
	add r4, r0, #0
	bne _021E3436
	bl GF_AssertFail
_021E3436:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E342C

	thumb_func_start ov21_021E3440
ov21_021E3440: ; 0x021E3440
	push {r4, lr}
	add r4, r0, #0
	bne _021E344A
	bl GF_AssertFail
_021E344A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E3440

	thumb_func_start ov21_021E3454
ov21_021E3454: ; 0x021E3454
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E3454

	thumb_func_start ov21_021E3458
ov21_021E3458: ; 0x021E3458
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E3458

	thumb_func_start ov21_021E345C
ov21_021E345C: ; 0x021E345C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0x1c
	bl sub_02018144
	add r6, r0, #0
	add r2, r6, #0
	mov r1, #0x1c
	mov r0, #0
_021E3472:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E3472
	ldr r2, [r5, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl ov21_021E3688
	ldr r2, [r5, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl ov21_021E3C6C
	add r0, r6, #0
	add r1, r4, #0
	bl ov21_021E3E8C
	mov r1, #0
	mov r0, #4
_021E349A:
	add r1, r1, #1
	str r0, [r4, #0xc]
	add r4, r4, #4
	cmp r1, #6
	blt _021E349A
	str r6, [r5, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E345C

	thumb_func_start ov21_021E34AC
ov21_021E34AC: ; 0x021E34AC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E34C0
	mov r0, #0
	str r0, [r5, #0x24]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E34C0:
	ldr r1, [r0, #0x10]
	cmp r1, #1
	bne _021E34CA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E34CA:
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _021E34E4
	mov r3, #1
	str r3, [r5, #0x24]
	ldr r1, [r5, #4]
	mov r2, #0
	str r2, [r1, #0x30]
	str r3, [r5, #0x28]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	b _021E351C
_021E34E4:
	mov r0, #1
	str r0, [r5, #0x28]
	add r0, r5, #0
	bl ov21_021E3C2C
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E3EEC
	add r0, r5, #0
	bl ov21_021E3724
	ldr r0, [r5, #8]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E3514
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021E3514
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E3D48
_021E3514:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E3734
_021E351C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E34AC

	thumb_func_start ov21_021E3520
ov21_021E3520: ; 0x021E3520
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #8]
	add r0, r5, #0
	bl ov21_021E37B4
	add r0, r5, #0
	bl ov21_021E3E74
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3520

	thumb_func_start ov21_021E3540
ov21_021E3540: ; 0x021E3540
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	add r7, r2, #0
	ldr r6, [r3, #8]
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E35CC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E355E: ; jump table
	.short _021E3568 - _021E355E - 2 ; case 0
	.short _021E3582 - _021E355E - 2 ; case 1
	.short _021E3592 - _021E355E - 2 ; case 2
	.short _021E35B6 - _021E355E - 2 ; case 3
	.short _021E35C8 - _021E355E - 2 ; case 4
_021E3568:
	ldr r0, [r4, #4]
	mov r1, #0x28
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x28
	bl memset
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E35CC
_021E3582:
	ldr r3, [r4, #4]
	add r1, r5, #0
	bl ov21_021E3900
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E35CC
_021E3592:
	mov r1, #0
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #4
	sub r2, #0x10
	mov r3, #0x3f
	bl sub_0200AAE0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov21_021E3F2C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E35CC
_021E35B6:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _021E35CC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E35CC
_021E35C8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E35CC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E3540

	thumb_func_start ov21_021E35D0
ov21_021E35D0: ; 0x021E35D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r3, #8]
	add r7, r2, #0
	ldr r5, [r1, #8]
	str r0, [sp, #4]
	mov r6, #0
	add r4, r7, #0
_021E35E2:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0xc]
	bl ov21_021D144C
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #6
	blt _021E35E2
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl ov21_021E3F48
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E35D0

	thumb_func_start ov21_021E3604
ov21_021E3604: ; 0x021E3604
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E3684
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E361E: ; jump table
	.short _021E3628 - _021E361E - 2 ; case 0
	.short _021E3642 - _021E361E - 2 ; case 1
	.short _021E3654 - _021E361E - 2 ; case 2
	.short _021E3670 - _021E361E - 2 ; case 3
	.short _021E3680 - _021E361E - 2 ; case 4
_021E3628:
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	add r1, r0, #0
	sub r1, #0x14
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E3684
_021E3642:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _021E3684
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E3684
_021E3654:
	add r1, r5, #0
	bl ov21_021E393C
	mov r0, #0x79
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov21_021D2584
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E3684
_021E3670:
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E3684
_021E3680:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E3684:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3604

	thumb_func_start ov21_021E3688
ov21_021E3688: ; 0x021E3688
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0x18
	bl sub_02018144
	str r0, [r5, #4]
	mov r0, #0x30
	str r0, [sp]
	mov r1, #8
	ldr r0, [r5, #4]
	mov r2, #0x28
	add r3, r1, #0
	bl ov21_021D154C
	mov r0, #0xf8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #8
	add r0, #0x14
	mov r2, #0x28
	mov r3, #0xd0
	bl ov21_021D154C
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #8
	add r0, r0, #4
	mov r2, #0x28
	mov r3, #0x30
	bl ov21_021D154C
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #8
	add r0, #8
	mov r2, #0x28
	mov r3, #0x58
	bl ov21_021D154C
	mov r0, #0xa8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #8
	add r0, #0xc
	mov r2, #0x28
	mov r3, #0x80
	bl ov21_021D154C
	mov r0, #0xd0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #8
	add r0, #0x10
	mov r2, #0x28
	mov r3, #0xa8
	bl ov21_021D154C
	str r4, [r5, #8]
	str r5, [r5, #0xc]
	str r6, [sp]
	add r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E3720 ; =ov21_021E37CC
	mov r1, #6
	add r3, #8
	bl sub_02023FCC
	str r0, [r5, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E3720: .word ov21_021E37CC
	thumb_func_end ov21_021E3688

	thumb_func_start ov21_021E3724
ov21_021E3724: ; 0x021E3724
	mov r2, #0
	mov r1, #3
_021E3728:
	add r2, r2, #1
	str r1, [r0, #0xc]
	add r0, r0, #4
	cmp r2, #6
	blt _021E3728
	bx lr
	thumb_func_end ov21_021E3724

	thumb_func_start ov21_021E3734
ov21_021E3734: ; 0x021E3734
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	bne _021E3744
	ldr r0, [r0, #0]
	bl sub_0202404C
_021E3744:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E3754
	ldr r0, [r4, #0x20]
	cmp r0, #2
	beq _021E3754
	mov r0, #1
	str r0, [r4, #0x20]
_021E3754:
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	cmp r0, #4
	bhi _021E37AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E3768: ; jump table
	.short _021E3772 - _021E3768 - 2 ; case 0
	.short _021E377E - _021E3768 - 2 ; case 1
	.short _021E378A - _021E3768 - 2 ; case 2
	.short _021E3796 - _021E3768 - 2 ; case 3
	.short _021E37A2 - _021E3768 - 2 ; case 4
_021E3772:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	beq _021E37B2
	mov r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021E377E:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _021E37B2
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_021E378A:
	ldr r0, [r4, #0x14]
	cmp r0, #2
	beq _021E37B2
	mov r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E3796:
	ldr r0, [r4, #0x18]
	cmp r0, #2
	beq _021E37B2
	mov r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
_021E37A2:
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	beq _021E37B2
	mov r0, #1
	str r0, [r4, #0x1c]
	pop {r4, pc}
_021E37AE:
	bl GF_AssertFail
_021E37B2:
	pop {r4, pc}
	thumb_func_end ov21_021E3734

	thumb_func_start ov21_021E37B4
ov21_021E37B4: ; 0x021E37B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02024034
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E37B4

	thumb_func_start ov21_021E37CC
ov21_021E37CC: ; 0x021E37CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [r2, #0]
	add r7, r0, #0
	lsl r0, r7, #2
	add r0, r6, r0
	ldr r5, [r2, #4]
	ldr r4, [r6, #4]
	cmp r1, #0
	str r1, [r0, #0xc]
	beq _021E37E6
	cmp r1, #2
	beq _021E37EC
	pop {r3, r4, r5, r6, r7, pc}
_021E37E6:
	mov r0, #0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E37EC:
	ldr r0, [r5, #0x14]
	mov r1, #2
	add r2, r7, #0
	bl ov21_021D4F20
	cmp r7, #5
	bhi _021E38F6
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E3806: ; jump table
	.short _021E3820 - _021E3806 - 2 ; case 0
	.short _021E383E - _021E3806 - 2 ; case 1
	.short _021E385C - _021E3806 - 2 ; case 2
	.short _021E387A - _021E3806 - 2 ; case 3
	.short _021E38B4 - _021E3806 - 2 ; case 4
	.short _021E3812 - _021E3806 - 2 ; case 5
_021E3812:
	add r0, r4, #0
	bl ov21_021E2E00
	ldr r0, _021E38F8 ; =0x000005DD
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E3820:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _021E38F6
	add r0, r6, #0
	mov r1, #0
	bl ov21_021E3C18
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E383E:
	ldr r2, [r4, #8]
	cmp r2, #1
	beq _021E38F6
	add r0, r6, #0
	mov r1, #1
	bl ov21_021E3C18
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E385C:
	ldr r2, [r4, #8]
	cmp r2, #2
	beq _021E38F6
	add r0, r6, #0
	mov r1, #2
	bl ov21_021E3C18
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E387A:
	ldr r2, [r4, #8]
	cmp r2, #3
	beq _021E38F6
	add r0, r6, #0
	mov r1, #3
	bl ov21_021E3C18
	cmp r0, #0
	beq _021E389C
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E389C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021E38F6
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _021E38AE
	ldr r0, _021E38F8 ; =0x000005DD
	bl sub_02005748
_021E38AE:
	mov r0, #1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E38B4:
	ldr r2, [r4, #8]
	cmp r2, #4
	beq _021E38F6
	add r0, r6, #0
	mov r1, #4
	bl ov21_021E3C18
	cmp r0, #0
	beq _021E38D6
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E38D6:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021E38F6
	ldr r0, [r4, #4]
	bl ov21_021D3954
	cmp r0, #1
	bne _021E38F2
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _021E38F2
	ldr r0, _021E38F8 ; =0x000005DD
	bl sub_02005748
_021E38F2:
	mov r0, #0
	str r0, [r5, #0x10]
_021E38F6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E38F8: .word 0x000005DD
_021E38FC: .word 0x0000068B
	thumb_func_end ov21_021E37CC

	thumb_func_start ov21_021E3900
ov21_021E3900: ; 0x021E3900
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov21_021E3960
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov21_021E39FC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov21_021E3AF0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov21_021E3BD8
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E3FE4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E3900

	thumb_func_start ov21_021E393C
ov21_021E393C: ; 0x021E393C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021E3BDC
	add r0, r5, #0
	bl ov21_021E3BC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E3AAC
	ldr r0, [r4, #0]
	mov r1, #5
	ldr r0, [r0, #0]
	bl sub_02019EBC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E393C

	thumb_func_start ov21_021E3960
ov21_021E3960: ; 0x021E3960
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #4]
	add r4, r2, #0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021E399E
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #6
	mov r2, #4
	bl ov21_021D276C
	ldr r0, [r6, #8]
	bl ov21_021D36D8
	cmp r0, #1
	bne _021E399E
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #0x18
	mov r2, #4
	mov r3, #0
	bl ov21_021D276C
_021E399E:
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x22
	mov r3, #5
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x3b
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	ldrh r0, [r2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0]
	mov r1, #5
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E3960

	thumb_func_start ov21_021E39FC
ov21_021E39FC: ; 0x021E39FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E3A9C ; =0x00000894
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r2, #0x60
	mov r3, #1
	bl sub_02009A4C
	str r0, [r5, #0x18]
	bl sub_0200A3DC
	ldr r0, [r5, #0x18]
	bl sub_02009D4C
	ldr r0, _021E3AA0 ; =0x0000083F
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0xb
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x1c]
	bl sub_0200A640
	ldr r0, [r5, #0x1c]
	bl sub_02009D4C
	ldr r0, _021E3AA4 ; =0x00000892
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x5e
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x20]
	ldr r0, _021E3AA8 ; =0x00000893
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x5f
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x24]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3A9C: .word 0x00000894
_021E3AA0: .word 0x0000083F
_021E3AA4: .word 0x00000892
_021E3AA8: .word 0x00000893
	thumb_func_end ov21_021E39FC

	thumb_func_start ov21_021E3AAC
ov21_021E3AAC: ; 0x021E3AAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #0x1c]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x20]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3AAC

	thumb_func_start ov21_021E3AF0
ov21_021E3AF0: ; 0x021E3AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	ldr r3, _021E3BBC ; =0x00000893
	add r5, r0, #0
	mov r0, #0
	add r6, r2, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #5
	str r2, [sp, #0x10]
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	add r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r2, r3, #0
	add r0, sp, #0x4c
	sub r2, #0x54
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r7, #7
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x20
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	mov r0, #0x36
	str r6, [sp, #0x48]
	lsl r0, r0, #0xe
	mov r6, #0x39
	str r0, [sp, #0x38]
	mov r4, #0
	lsl r7, r7, #0xe
	lsl r6, r6, #0xe
_021E3B60:
	cmp r4, #5
	bhi _021E3BA2
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E3B70: ; jump table
	.short _021E3B80 - _021E3B70 - 2 ; case 0
	.short _021E3B84 - _021E3B70 - 2 ; case 1
	.short _021E3B8C - _021E3B70 - 2 ; case 2
	.short _021E3B94 - _021E3B70 - 2 ; case 3
	.short _021E3B9C - _021E3B70 - 2 ; case 4
	.short _021E3B7C - _021E3B70 - 2 ; case 5
_021E3B7C:
	str r6, [sp, #0x34]
	b _021E3BA2
_021E3B80:
	str r7, [sp, #0x34]
	b _021E3BA2
_021E3B84:
	mov r0, #0x11
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	b _021E3BA2
_021E3B8C:
	mov r0, #0x1b
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	b _021E3BA2
_021E3B94:
	mov r0, #0x25
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	b _021E3BA2
_021E3B9C:
	mov r0, #0x2f
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
_021E3BA2:
	add r0, sp, #0x2c
	bl sub_02021B90
	add r1, r4, #0
	stmia r5!, {r0}
	bl sub_02021D6C
	add r4, r4, #1
	cmp r4, #6
	blt _021E3B60
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3BBC: .word 0x00000893
	thumb_func_end ov21_021E3AF0

	thumb_func_start ov21_021E3BC0
ov21_021E3BC0: ; 0x021E3BC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E3BC6:
	ldr r0, [r5, #0]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _021E3BC6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E3BC0

	thumb_func_start ov21_021E3BD8
ov21_021E3BD8: ; 0x021E3BD8
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E3BD8

	thumb_func_start ov21_021E3BDC
ov21_021E3BDC: ; 0x021E3BDC
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E3BDC

	thumb_func_start ov21_021E3BE0
ov21_021E3BE0: ; 0x021E3BE0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #1
_021E3BE8:
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021E3BE8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3BE0

	thumb_func_start ov21_021E3BFC
ov21_021E3BFC: ; 0x021E3BFC
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021E3C04:
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021E3C04
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3BFC

	thumb_func_start ov21_021E3C18
ov21_021E3C18: ; 0x021E3C18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021E2EC4
	cmp r0, #1
	bne _021E3C2A
	mov r1, #0
	str r1, [r4, #0x28]
_021E3C2A:
	pop {r4, pc}
	thumb_func_end ov21_021E3C18

	thumb_func_start ov21_021E3C2C
ov21_021E3C2C: ; 0x021E3C2C
	ldr r3, _021E3C30 ; =ov21_021E3C34
	bx r3
	; .align 2, 0
_021E3C30: .word ov21_021E3C34
	thumb_func_end ov21_021E3C2C

	thumb_func_start ov21_021E3C34
ov21_021E3C34: ; 0x021E3C34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #4]
	bl ov21_021E3C64
	ldr r0, _021E3C5C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _021E3C58
	add r0, r4, #0
	bl ov21_021E2E00
	mov r0, #1
	str r0, [r5, #0x2c]
	ldr r0, _021E3C60 ; =0x000005DD
	bl sub_02005748
_021E3C58:
	pop {r3, r4, r5, pc}
	nop
_021E3C5C: .word 0x021BF67C
_021E3C60: .word 0x000005DD
	thumb_func_end ov21_021E3C34

	thumb_func_start ov21_021E3C64
ov21_021E3C64: ; 0x021E3C64
	mov r1, #0
	str r1, [r0, #0x2c]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E3C64

	thumb_func_start ov21_021E3C6C
ov21_021E3C6C: ; 0x021E3C6C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0xa8
	bl sub_02018144
	str r0, [r5, #0x18]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #0x18
	ldr r0, [r5, #0x18]
	mov r1, #0x1c
	add r3, r2, #0
	bl ov21_021D4FE4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r2, #0x18
	add r0, #0x1c
	mov r1, #0x44
	add r3, r2, #0
	bl ov21_021D4FE4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r2, #0x18
	add r0, #0x38
	mov r1, #0x6c
	add r3, r2, #0
	bl ov21_021D4FE4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r2, #0x18
	add r0, #0x54
	mov r1, #0x94
	add r3, r2, #0
	bl ov21_021D4FE4
	ldr r0, [r4, #8]
	bl ov21_021D3954
	cmp r0, #1
	bne _021E3CFA
	mov r1, #0
	b _021E3CFC
_021E3CFA:
	mov r1, #2
_021E3CFC:
	mov r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r2, #0x18
	add r0, #0x70
	mov r1, #0xbc
	add r3, r2, #0
	bl ov21_021D4FE4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r2, #0x18
	add r0, #0x8c
	mov r1, #0xe4
	add r3, r2, #0
	bl ov21_021D4FE4
	add r0, r6, #0
	bl ov21_021D4EE4
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	mov r2, #6
	mov r3, #1
	bl ov21_021D4F04
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3C6C

	thumb_func_start ov21_021E3D48
ov21_021E3D48: ; 0x021E3D48
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	cmp r0, #0
	beq _021E3D58
	b _021E3E66
_021E3D58:
	ldr r0, _021E3E68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021E3D6C
	ldr r0, [r6, #0x14]
	mov r1, #0
	mov r2, #1
	bl ov21_021D4F20
_021E3D6C:
	ldr r0, _021E3E68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021E3D80
	mov r1, #0
	ldr r0, [r6, #0x14]
	sub r2, r1, #1
	bl ov21_021D4F20
_021E3D80:
	ldr r0, _021E3E68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021E3E66
	ldr r0, [r6, #0x14]
	bl ov21_021D4F7C
	cmp r0, #5
	bhi _021E3E66
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E3DA0: ; jump table
	.short _021E3DAC - _021E3DA0 - 2 ; case 0
	.short _021E3DC6 - _021E3DA0 - 2 ; case 1
	.short _021E3DE0 - _021E3DA0 - 2 ; case 2
	.short _021E3DFA - _021E3DA0 - 2 ; case 3
	.short _021E3E26 - _021E3DA0 - 2 ; case 4
	.short _021E3E52 - _021E3DA0 - 2 ; case 5
_021E3DAC:
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _021E3E66
	add r0, r4, #0
	mov r1, #0
	bl ov21_021E3C18
	mov r0, #2
	str r0, [r4, #0xc]
	ldr r0, _021E3E6C ; =0x0000068B
	bl sub_02005748
	pop {r4, r5, r6, pc}
_021E3DC6:
	ldr r2, [r5, #8]
	cmp r2, #1
	beq _021E3E66
	add r0, r4, #0
	mov r1, #1
	bl ov21_021E3C18
	mov r0, #2
	str r0, [r4, #0x10]
	ldr r0, _021E3E6C ; =0x0000068B
	bl sub_02005748
	pop {r4, r5, r6, pc}
_021E3DE0:
	ldr r2, [r5, #8]
	cmp r2, #2
	beq _021E3E66
	add r0, r4, #0
	mov r1, #2
	bl ov21_021E3C18
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, _021E3E6C ; =0x0000068B
	bl sub_02005748
	pop {r4, r5, r6, pc}
_021E3DFA:
	ldr r2, [r5, #8]
	cmp r2, #3
	beq _021E3E66
	add r0, r4, #0
	mov r1, #3
	bl ov21_021E3C18
	cmp r0, #0
	beq _021E3E18
	mov r0, #2
	str r0, [r4, #0x18]
	ldr r0, _021E3E6C ; =0x0000068B
	bl sub_02005748
	pop {r4, r5, r6, pc}
_021E3E18:
	ldr r0, [r5, #8]
	cmp r0, #2
	beq _021E3E66
	ldr r0, _021E3E70 ; =0x000005DD
	bl sub_02005748
	pop {r4, r5, r6, pc}
_021E3E26:
	ldr r2, [r5, #8]
	cmp r2, #4
	beq _021E3E66
	add r0, r4, #0
	mov r1, #4
	bl ov21_021E3C18
	cmp r0, #0
	beq _021E3E44
	mov r0, #2
	str r0, [r4, #0x1c]
	ldr r0, _021E3E6C ; =0x0000068B
	bl sub_02005748
	pop {r4, r5, r6, pc}
_021E3E44:
	ldr r0, [r5, #8]
	cmp r0, #2
	beq _021E3E66
	ldr r0, _021E3E70 ; =0x000005DD
	bl sub_02005748
	pop {r4, r5, r6, pc}
_021E3E52:
	add r0, r5, #0
	bl ov21_021E2E00
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #2
	str r0, [r4, #0x20]
	ldr r0, _021E3E70 ; =0x000005DD
	bl sub_02005748
_021E3E66:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E3E68: .word 0x021BF67C
_021E3E6C: .word 0x0000068B
_021E3E70: .word 0x000005DD
	thumb_func_end ov21_021E3D48

	thumb_func_start ov21_021E3E74
ov21_021E3E74: ; 0x021E3E74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_020181C4
	ldr r0, [r4, #0x14]
	bl ov21_021D4EFC
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov21_021E3E74

	thumb_func_start ov21_021E3E8C
ov21_021E3E8C: ; 0x021E3E8C
	push {r3, lr}
	ldr r3, [r1, #4]
	mov r2, #0
	str r2, [r1, #0x30]
	ldr r1, [r3, #8]
	cmp r1, #4
	bhi _021E3EE8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E3EA6: ; jump table
	.short _021E3EB0 - _021E3EA6 - 2 ; case 0
	.short _021E3EBA - _021E3EA6 - 2 ; case 1
	.short _021E3EC6 - _021E3EA6 - 2 ; case 2
	.short _021E3ED2 - _021E3EA6 - 2 ; case 3
	.short _021E3EDE - _021E3EA6 - 2 ; case 4
_021E3EB0:
	ldr r0, [r0, #0x14]
	mov r1, #4
	bl ov21_021D4F20
	pop {r3, pc}
_021E3EBA:
	ldr r0, [r0, #0x14]
	mov r1, #4
	mov r2, #1
	bl ov21_021D4F20
	pop {r3, pc}
_021E3EC6:
	ldr r0, [r0, #0x14]
	mov r1, #4
	mov r2, #2
	bl ov21_021D4F20
	pop {r3, pc}
_021E3ED2:
	ldr r0, [r0, #0x14]
	mov r1, #4
	mov r2, #3
	bl ov21_021D4F20
	pop {r3, pc}
_021E3EDE:
	mov r1, #4
	ldr r0, [r0, #0x14]
	add r2, r1, #0
	bl ov21_021D4F20
_021E3EE8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E3E8C

	thumb_func_start ov21_021E3EEC
ov21_021E3EEC: ; 0x021E3EEC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E3F26
	ldr r0, [r4, #8]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E3F26
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _021E3F18
	ldr r0, _021E3F28 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _021E3F26
	mov r0, #1
	str r0, [r4, #0x30]
	pop {r4, pc}
_021E3F18:
	ldr r0, _021E3F28 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	tst r0, r1
	beq _021E3F26
	mov r0, #0
	str r0, [r4, #0x30]
_021E3F26:
	pop {r4, pc}
	; .align 2, 0
_021E3F28: .word 0x021BF67C
	thumb_func_end ov21_021E3EEC

	thumb_func_start ov21_021E3F2C
ov21_021E3F2C: ; 0x021E3F2C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0]
	add r6, r2, #0
	bl ov21_021D25B8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E3F48
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3F2C

	thumb_func_start ov21_021E3F48
ov21_021E3F48: ; 0x021E3F48
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	ldr r0, [r6, #8]
	add r4, r1, #0
	bl ov21_021D3998
	cmp r0, #0
	beq _021E3F7E
	add r0, r5, #0
	mov r1, #1
	bl ov21_021E3F98
	ldr r1, [r6, #0x30]
	cmp r1, #0
	bne _021E3F86
	cmp r0, #0
	beq _021E3F74
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0]
	bl ov21_021D25B8
_021E3F74:
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E3F88
	pop {r4, r5, r6, pc}
_021E3F7E:
	add r0, r5, #0
	mov r1, #0
	bl ov21_021E3F98
_021E3F86:
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3F48

	thumb_func_start ov21_021E3F88
ov21_021E3F88: ; 0x021E3F88
	ldr r3, _021E3F94 ; =ov21_021D2544
	add r2, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r2, #0]
	bx r3
	nop
_021E3F94: .word ov21_021D2544
	thumb_func_end ov21_021E3F88

	thumb_func_start ov21_021E3F98
ov21_021E3F98: ; 0x021E3F98
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	add r5, r1, #0
	bl ov21_021D25A0
	cmp r5, r0
	beq _021E3FBC
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	bl ov21_021D2584
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E3FBC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3F98

	thumb_func_start ov21_021E3FC0
ov21_021E3FC0: ; 0x021E3FC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_020129D0
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_020129D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3FC0

	thumb_func_start ov21_021E3FE4
ov21_021E3FE4: ; 0x021E3FE4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #8]
	bl ov21_021D3954
	cmp r0, #0
	bne _021E3FFA
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02021CAC
_021E3FFA:
	pop {r4, pc}
	thumb_func_end ov21_021E3FE4