	.include "macros/function.inc"
	.include "include/ov19_021DA814.inc"

	

	.text


	thumb_func_start ov19_021DA814
ov19_021DA814: ; 0x021DA814
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	str r1, [r4, #0x44]
	str r3, [r4, #0x3c]
	str r2, [r4, #0x40]
	str r3, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r1, #0xa
	add r3, r4, #0
	ldr r0, [sp, #0x10]
	str r1, [sp]
	mov r2, #1
	add r3, #0x10
	bl sub_02007204
	str r0, [r4, #8]
	mov r0, #0xa
	str r0, [sp]
	add r3, r4, #0
	ldr r0, [sp, #0x10]
	mov r1, #0xb
	mov r2, #1
	add r3, #0x14
	bl sub_02007220
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DA858
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021DA85E
_021DA858:
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_021DA85E:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov19_021DA814

	thumb_func_start ov19_021DA864
ov19_021DA864: ; 0x021DA864
	push {r3, r4, r5, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r0, #0x18
	add r4, r1, #0
	bl sub_020A818C
	mov r3, #0
	mov r0, #0x9d
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	lsl r0, r0, #8
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #9
	bl sub_0200718C
	ldr r0, [r5, #0x44]
	bl ov19_021D77D0
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r5, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r3, [r5, #0x10]
	add r0, sp, #0x14
	add r1, #0x18
	bl ov19_021D783C
	ldr r0, [r5, #0x44]
	bl ov19_021D7820
	add r2, r0, #0
	mov r0, #0x2c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #0x14
	add r2, #0xb7
	mov r3, #0xb0
	bl ov19_021D785C
	mov r1, #1
	str r0, [r5, #4]
	bl sub_02021E90
	add sp, #0x38
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DA864

	thumb_func_start ov19_021DA8D8
ov19_021DA8D8: ; 0x021DA8D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DA8EA
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
_021DA8EA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DA8F8
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0xc]
_021DA8F8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DA8D8

	thumb_func_start ov19_021DA8FC
ov19_021DA8FC: ; 0x021DA8FC
	push {r3, lr}
	cmp r1, #0
	beq _021DA90C
	cmp r1, #1
	beq _021DA916
	cmp r1, #2
	beq _021DA920
	pop {r3, pc}
_021DA90C:
	ldr r0, [r0, #4]
	mov r1, #0
	bl sub_02021D6C
	pop {r3, pc}
_021DA916:
	ldr r0, [r0, #4]
	mov r1, #1
	bl sub_02021D6C
	pop {r3, pc}
_021DA920:
	ldr r0, [r0, #4]
	mov r1, #2
	bl sub_02021D6C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov19_021DA8FC