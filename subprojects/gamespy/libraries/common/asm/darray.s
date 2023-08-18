	.include "macros/function.inc"
	.include "include/darray.inc"

	

	.text


	arm_func_start ov4_021E99EC
ov4_021E99EC: ; 0x021E99EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x10]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_021E9BC4
	ldr r1, [r4, #0x10]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E99EC

	arm_func_start ov4_021E9A10
ov4_021E9A10: ; 0x021E9A10
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, r0
	str r2, [r4, #4]
	ldr r0, [r4, #8]
	mul r1, r2, r0
	ldr r0, [r4, #0x14]
	bl DWCi_GsRealloc
	str r0, [r4, #0x14]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _021E9A5C ; =0x02217790
	ldr r1, _021E9A60 ; =0x0221779C
	ldr r2, _021E9A64 ; =0x022176FC
	mov r3, #0x41
	bl __msl_assertion_failed
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E9A5C: .word Unk_ov4_02217790
_021E9A60: .word Unk_ov4_0221779C
_021E9A64: .word Unk_ov4_022176FC
	arm_func_end ov4_021E9A10

	arm_func_start ov4_021E9A68
ov4_021E9A68: ; 0x021E9A68
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, r2
	bl ov4_021E9BC4
	ldr r2, [r5, #8]
	mov r1, r4
	bl memcpy
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E9A68

	arm_func_start ov4_021E9A8C
ov4_021E9A8C: ; 0x021E9A8C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x18
	mov r6, r1
	mov r5, r2
	bl DWCi_GsMalloc
	movs r4, r0
	bne _021E9AC0
	ldr r0, _021E9B3C ; =0x022177A8
	ldr r1, _021E9B40 ; =0x0221779C
	ldr r2, _021E9B44 ; =0x022176E4
	mov r3, #0x52
	bl __msl_assertion_failed
_021E9AC0:
	cmp r7, #0
	bne _021E9ADC
	ldr r0, _021E9B48 ; =0x022177B0
	ldr r1, _021E9B40 ; =0x0221779C
	ldr r2, _021E9B44 ; =0x022176E4
	mov r3, #0x53
	bl __msl_assertion_failed
_021E9ADC:
	cmp r6, #0
	moveq r6, #8
	mov r0, #0
	stmia r4, {r0, r6, r7}
	str r6, [r4, #0xc]
	str r5, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E9B30
	ldr r0, [r4, #8]
	mul r0, r1, r0
	bl DWCi_GsMalloc
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _021E9B34
	ldr r0, _021E9B4C ; =0x02217790
	ldr r1, _021E9B40 ; =0x0221779C
	ldr r2, _021E9B44 ; =0x022176E4
	mov r3, #0x5e
	bl __msl_assertion_failed
	b _021E9B34
_021E9B30:
	str r0, [r4, #0x14]
_021E9B34:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E9B3C: .word Unk_ov4_022177A8
_021E9B40: .word Unk_ov4_0221779C
_021E9B44: .word Unk_ov4_022176E4
_021E9B48: .word Unk_ov4_022177B0
_021E9B4C: .word Unk_ov4_02217790
	arm_func_end ov4_021E9A8C

	arm_func_start ov4_021E9B50
ov4_021E9B50: ; 0x021E9B50
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	bne _021E9B70
	ldr r0, _021E9BB0 ; =0x022177A8
	ldr r1, _021E9BB4 ; =0x0221779C
	ldr r2, _021E9BB8 ; =0x022176F0
	mov r3, #0x69
	bl __msl_assertion_failed
_021E9B70:
	ldr r0, [r5, #0]
	mov r4, #0
	cmp r0, #0
	ble _021E9B9C
_021E9B80:
	mov r0, r5
	mov r1, r4
	bl ov4_021E99EC
	ldr r0, [r5, #0]
	add r4, r4, #1
	cmp r4, r0
	blt _021E9B80
_021E9B9C:
	ldr r0, [r5, #0x14]
	bl DWCi_GsFree
	mov r0, r5
	bl DWCi_GsFree
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E9BB0: .word Unk_ov4_022177A8
_021E9BB4: .word Unk_ov4_0221779C
_021E9BB8: .word Unk_ov4_022176F0
	arm_func_end ov4_021E9B50

	arm_func_start ov4_021E9BBC
ov4_021E9BBC: ; 0x021E9BBC
	ldr r0, [r0, #0]
	bx lr
	arm_func_end ov4_021E9BBC

	arm_func_start ov4_021E9BC4
ov4_021E9BC4: ; 0x021E9BC4
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bmi _021E9BE0
	ldr r0, [r5, #0]
	cmp r4, r0
	blt _021E9BF4
_021E9BE0:
	ldr r0, _021E9C20 ; =0x022177BC
	ldr r1, _021E9C24 ; =0x0221779C
	ldr r2, _021E9C28 ; =0x022176D8
	mov r3, #0x94
	bl __msl_assertion_failed
_021E9BF4:
	cmp r4, #0
	blt _021E9C08
	ldr r0, [r5, #0]
	cmp r4, r0
	blt _021E9C10
_021E9C08:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021E9C10:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #8]
	mla r0, r1, r4, r0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E9C20: .word Unk_ov4_022177BC
_021E9C24: .word Unk_ov4_0221779C
_021E9C28: .word Unk_ov4_022176D8
	arm_func_end ov4_021E9BC4

	arm_func_start ov4_021E9C2C
ov4_021E9C2C: ; 0x021E9C2C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _021E9C50
	ldr r0, _021E9C6C ; =0x022177A8
	ldr r1, _021E9C70 ; =0x0221779C
	ldr r2, _021E9C74 ; =0x02217708
	mov r3, #0xa0
	bl __msl_assertion_failed
_021E9C50:
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0]
	mov r0, r5
	mov r1, r4
	bl ov4_021E9C78
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E9C6C: .word Unk_ov4_022177A8
_021E9C70: .word Unk_ov4_0221779C
_021E9C74: .word Unk_ov4_02217708
	arm_func_end ov4_021E9C2C

	arm_func_start ov4_021E9C78
ov4_021E9C78: ; 0x021E9C78
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bmi _021E9C98
	ldr r0, [r6, #0]
	cmp r4, r0
	ble _021E9CAC
_021E9C98:
	ldr r0, _021E9D24 ; =0x022177DC
	ldr r1, _021E9D28 ; =0x0221779C
	ldr r2, _021E9D2C ; =0x02217734
	mov r3, #0xa7
	bl __msl_assertion_failed
_021E9CAC:
	ldr r1, [r6, #0]
	ldr r0, [r6, #4]
	cmp r1, r0
	bne _021E9CC4
	mov r0, r6
	bl ov4_021E9A10
_021E9CC4:
	ldr r0, [r6, #0]
	add r0, r0, #1
	sub r8, r0, #1
	str r0, [r6, #0]
	cmp r4, r8
	bge _021E9D10
	mov r0, r6
	add r1, r4, #1
	bl ov4_021E9BC4
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl ov4_021E9BC4
	mov r1, r0
	ldr r3, [r6, #8]
	sub r0, r8, r4
	mul r2, r3, r0
	mov r0, r7
	bl memmove
_021E9D10:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_021E9A68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021E9D24: .word Unk_ov4_022177DC
_021E9D28: .word Unk_ov4_0221779C
_021E9D2C: .word Unk_ov4_02217734
	arm_func_end ov4_021E9C78

	arm_func_start ov4_021E9D30
ov4_021E9D30: ; 0x021E9D30
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bne _021E9D5C
	ldr r0, _021E9DA4 ; =0x022177FC
	ldr r1, _021E9DA8 ; =0x0221779C
	ldr r2, _021E9DAC ; =0x02217768
	mov r3, #0xb7
	bl __msl_assertion_failed
_021E9D5C:
	add r0, sp, #8
	str r4, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0]
	ldr r3, [r6, #8]
	mov r0, r5
	bl ov4_021EA198
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #8]
	sub r0, r0, r2
	bl _s32_div_f
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl ov4_021E9C78
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E9DA4: .word Unk_ov4_022177FC
_021E9DA8: .word Unk_ov4_0221779C
_021E9DAC: .word Unk_ov4_02217768
	arm_func_end ov4_021E9D30

	arm_func_start ov4_021E9DB0
ov4_021E9DB0: ; 0x021E9DB0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r1
	mov r4, r0
	bmi _021E9DCC
	ldr r0, [r4, #0]
	cmp r7, r0
	blt _021E9DE0
_021E9DCC:
	ldr r0, _021E9E34 ; =0x022177BC
	ldr r1, _021E9E38 ; =0x0221779C
	ldr r2, _021E9E3C ; =0x02217714
	mov r3, #0xc0
	bl __msl_assertion_failed
_021E9DE0:
	ldr r0, [r4, #0]
	sub r6, r0, #1
	cmp r7, r6
	bge _021E9E24
	mov r0, r4
	mov r1, r7
	bl ov4_021E9BC4
	mov r5, r0
	mov r0, r4
	add r1, r7, #1
	bl ov4_021E9BC4
	mov r1, r0
	ldr r3, [r4, #8]
	sub r0, r6, r7
	mul r2, r3, r0
	mov r0, r5
	bl memmove
_021E9E24:
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [r4, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E9E34: .word Unk_ov4_022177BC
_021E9E38: .word Unk_ov4_0221779C
_021E9E3C: .word Unk_ov4_02217714
	arm_func_end ov4_021E9DB0

	arm_func_start ov4_021E9E40
ov4_021E9E40: ; 0x021E9E40
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bmi _021E9E5C
	ldr r0, [r5, #0]
	cmp r4, r0
	blt _021E9E70
_021E9E5C:
	ldr r0, _021E9E8C ; =0x022177BC
	ldr r1, _021E9E90 ; =0x0221779C
	ldr r2, _021E9E94 ; =0x02217724
	mov r3, #0xca
	bl __msl_assertion_failed
_021E9E70:
	mov r0, r5
	mov r1, r4
	bl ov4_021E99EC
	mov r0, r5
	mov r1, r4
	bl ov4_021E9DB0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E9E8C: .word Unk_ov4_022177BC
_021E9E90: .word Unk_ov4_0221779C
_021E9E94: .word Unk_ov4_02217724
	arm_func_end ov4_021E9E40

	arm_func_start ov4_021E9E98
ov4_021E9E98: ; 0x021E9E98
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bmi _021E9EB8
	ldr r0, [r6, #0]
	cmp r4, r0
	blt _021E9ECC
_021E9EB8:
	ldr r0, _021E9EEC ; =0x022177BC
	ldr r1, _021E9EF0 ; =0x0221779C
	ldr r2, _021E9EF4 ; =0x02217744
	mov r3, #0xd3
	bl __msl_assertion_failed
_021E9ECC:
	mov r0, r6
	mov r1, r4
	bl ov4_021E99EC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_021E9A68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E9EEC: .word Unk_ov4_022177BC
_021E9EF0: .word Unk_ov4_0221779C
_021E9EF4: .word Unk_ov4_02217744
	arm_func_end ov4_021E9E98

	arm_func_start ov4_021E9EF8
ov4_021E9EF8: ; 0x021E9EF8
	ldr ip, _021E9F14 ; =qsort
	mov r2, r0
	mov r3, r1
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0]
	ldr r2, [r2, #8]
	bx ip
	; .align 2, 0
_021E9F14: .word qsort
	arm_func_end ov4_021E9EF8

	arm_func_start ov4_021E9F18
ov4_021E9F18: ; 0x021E9F18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov ip, #1
	movs r7, r0
	str ip, [sp, #8]
	ldrne r8, [r7]
	mov r6, r1
	cmpne r8, #0
	mov r5, r2
	mov r4, r3
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x28]
	cmp r1, #0
	mov r1, r4
	beq _021E9F84
	bl ov4_021E9BC4
	add r1, sp, #8
	str r5, [sp]
	str r1, [sp, #4]
	mov r1, r0
	ldr r3, [r7, #8]
	mov r0, r6
	sub r2, r8, r4
	bl ov4_021EA198
	b _021E9FA0
_021E9F84:
	bl ov4_021E9BC4
	str r5, [sp]
	mov r1, r0
	ldr r3, [r7, #8]
	mov r0, r6
	sub r2, r8, r4
	bl ov4_021EA140
_021E9FA0:
	cmp r0, #0
	ldrne r1, [sp, #8]
	cmpne r1, #0
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r7, #0x14]
	ldr r1, [r7, #8]
	sub r0, r0, r2
	bl _s32_div_f
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_021E9F18

	arm_func_start ov4_021E9FD0
ov4_021E9FD0: ; 0x021E9FD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021E9FF8
	ldr r0, _021EA030 ; =0x02217808
	ldr r1, _021EA034 ; =0x0221779C
	ldr r2, _021EA038 ; =0x022176CC
	mov r3, #0xf9
	bl __msl_assertion_failed
_021E9FF8:
	ldr r0, [r7, #0]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
_021EA008:
	mov r0, r7
	mov r1, r4
	bl ov4_021E9BC4
	mov r1, r5
	blx r6
	ldr r0, [r7, #0]
	add r4, r4, #1
	cmp r4, r0
	blt _021EA008
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EA030: .word Unk_ov4_02217808
_021EA034: .word Unk_ov4_0221779C
_021EA038: .word Unk_ov4_022176CC
	arm_func_end ov4_021E9FD0

	arm_func_start ov4_021EA03C
ov4_021EA03C: ; 0x021EA03C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EA064
	ldr r0, _021EA090 ; =0x02217808
	ldr r1, _021EA094 ; =0x0221779C
	ldr r2, _021EA098 ; =0x02217754
	mov r3, #0x104
	bl __msl_assertion_failed
_021EA064:
	ldr r0, [r7, #0]
	subs r4, r0, #1
	ldmmiia sp!, {r3, r4, r5, r6, r7, pc}
_021EA070:
	mov r0, r7
	mov r1, r4
	bl ov4_021E9BC4
	mov r1, r5
	blx r6
	subs r4, r4, #1
	bpl _021EA070
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EA090: .word Unk_ov4_02217808
_021EA094: .word Unk_ov4_0221779C
_021EA098: .word Unk_ov4_02217754
	arm_func_end ov4_021EA03C

	arm_func_start ov4_021EA09C
ov4_021EA09C: ; 0x021EA09C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	bne _021EA0C4
	ldr r0, _021EA104 ; =0x02217808
	ldr r1, _021EA108 ; =0x0221779C
	ldr r2, _021EA10C ; =0x0221777C
	ldr r3, _021EA110 ; =0x00000121
	bl __msl_assertion_failed
_021EA0C4:
	ldr r0, [r8]
	subs r5, r0, #1
	bmi _021EA0FC
_021EA0D0:
	mov r0, r8
	mov r1, r5
	bl ov4_021E9BC4
	mov r1, r6
	mov r4, r0
	blx r7
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	subs r5, r5, #1
	bpl _021EA0D0
_021EA0FC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021EA104: .word Unk_ov4_02217808
_021EA108: .word Unk_ov4_0221779C
_021EA10C: .word Unk_ov4_0221777C
_021EA110: .word 0x00000121
	arm_func_end ov4_021EA09C

	arm_func_start ov4_021EA114
ov4_021EA114: ; 0x021EA114
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov4_021E9BBC
	subs r4, r0, #1
	ldmmiia sp!, {r3, r4, r5, pc}
_021EA128:
	mov r0, r5
	mov r1, r4
	bl ov4_021E9E40
	subs r4, r4, #1
	bpl _021EA128
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EA114

	arm_func_start ov4_021EA140
ov4_021EA140: ; 0x021EA140
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r2
	mov sl, r0
	mov sb, r1
	mov r7, r3
	cmp r8, #0
	ldr r6, [sp, #0x20]
	mov r4, #0
	ble _021EA190
	mov r5, r4
_021EA168:
	mov r0, sl
	add r1, sb, r5
	blx r6
	cmp r0, #0
	mlaeq r0, r7, r4, sb
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r4, r4, #1
	cmp r4, r8
	add r5, r5, r7
	blt _021EA168
_021EA190:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov4_021EA140

	arm_func_start ov4_021EA198
ov4_021EA198: ; 0x021EA198
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, [sp, #0x2c]
	mov r4, #0
	mov fp, r0
	mov sl, r1
	mov sb, r3
	str r4, [r7, #0]
	subs r5, r2, #1
	ldr r8, [sp, #0x28]
	bmi _021EA1F4
_021EA1C0:
	add r0, r4, r5
	mov r6, r0, asr #1
	mla r0, r6, sb, sl
	mov r1, fp
	blx r8
	cmp r0, #0
	moveq r1, #1
	streq r1, [r7]
	cmp r0, #0
	addlt r4, r6, #1
	subge r5, r6, #1
	cmp r4, r5
	ble _021EA1C0
_021EA1F4:
	mla r0, r4, sb, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021EA198

	.data


	.global Unk_ov4_022176CC
Unk_ov4_022176CC: ; 0x022176CC
	.ascii "ArrayMap"
	.space 0x4

	.global Unk_ov4_022176D8
Unk_ov4_022176D8: ; 0x022176D8
	.ascii "ArrayNth"
	.space 0x4

	.global Unk_ov4_022176E4
Unk_ov4_022176E4: ; 0x022176E4
	.ascii "ArrayNew"
	.space 0x4

	.global Unk_ov4_022176F0
Unk_ov4_022176F0: ; 0x022176F0
	.asciz "ArrayFree"
	.space 0x2

	.global Unk_ov4_022176FC
Unk_ov4_022176FC: ; 0x022176FC
	.asciz "ArrayGrow"
	.space 0x2

	.global Unk_ov4_02217708
Unk_ov4_02217708: ; 0x02217708
	.asciz "ArrayAppend"

	.global Unk_ov4_02217714
Unk_ov4_02217714: ; 0x02217714
	.asciz "ArrayRemoveAt"
	.space 0x2

	.global Unk_ov4_02217724
Unk_ov4_02217724: ; 0x02217724
	.asciz "ArrayDeleteAt"
	.space 0x2

	.global Unk_ov4_02217734
Unk_ov4_02217734: ; 0x02217734
	.asciz "ArrayInsertAt"
	.space 0x2

	.global Unk_ov4_02217744
Unk_ov4_02217744: ; 0x02217744
	.ascii "ArrayReplaceAt"
	.space 0x2

	.global Unk_ov4_02217754
Unk_ov4_02217754: ; 0x02217754
	.asciz "ArrayMapBackwards"
	.space 0x2

	.global Unk_ov4_02217768
Unk_ov4_02217768: ; 0x02217768
	.asciz "ArrayInsertSorted"
	.space 0x2

	.global Unk_ov4_0221777C
Unk_ov4_0221777C: ; 0x0221777C
	.ascii "ArrayMapBackwards2"
	.space 0x2

	.global Unk_ov4_02217790
Unk_ov4_02217790: ; 0x02217790
	.asciz "array->list"

	.global Unk_ov4_0221779C
Unk_ov4_0221779C: ; 0x0221779C
	.ascii "darray.c"
	.space 0x4

	.global Unk_ov4_022177A8
Unk_ov4_022177A8: ; 0x022177A8
	.asciz "array"
	.space 0x2

	.global Unk_ov4_022177B0
Unk_ov4_022177B0: ; 0x022177B0
	.ascii "elemSize"
	.space 0x4

	.global Unk_ov4_022177BC
Unk_ov4_022177BC: ; 0x022177BC
	.ascii "(n >= 0) && (n < array->count)"
	.space 0x2

	.global Unk_ov4_022177DC
Unk_ov4_022177DC: ; 0x022177DC
	.asciz "(n >= 0) && (n <= array->count)"

	.global Unk_ov4_022177FC
Unk_ov4_022177FC: ; 0x022177FC
	.ascii "comparator"
	.space 0x2

	.global Unk_ov4_02217808
Unk_ov4_02217808: ; 0x02217808
	.ascii "fn"
	.space 0x2

