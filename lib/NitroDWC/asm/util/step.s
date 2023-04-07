	.include "macros/function.inc"
	.include "include/step.inc"

	

	.text


	arm_func_start ov18_0223EA28
ov18_0223EA28: ; 0x0223EA28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r0, [sp]
	mov r0, #0x1c
	mov r1, #4
	bl ov18_02245068
	ldr r1, [sp]
	ldr r4, _0223EB10 ; =0x0225338C
	add r3, r1, r1, lsl #2
	ldr r2, _0223EB14 ; =0x022495C8
	ldr r1, _0223EB18 ; =0x022495D7
	mov r8, #0
	mvn r7, #0
	ldr r5, _0223EB1C ; =0x022495E6
	str r0, [r4, #4]
	add sb, r2, r3
	add sl, r1, r3
	sub r6, r7, #0x29
	mov fp, r8
_0223EA70:
	ldrb r1, [sb], #1
	mov r0, #1
	mov r2, r0
	bl ov18_02243F8C
	ldr r2, [r4, #4]
	mov r1, r7
	str r0, [r2, r8, lsl #2]
	ldr r0, [r4, #4]
	mov r2, fp
	ldr r0, [r0, r8, lsl #2]
	bl ov18_02243DE4
	ldr r0, [r4, #4]
	add r3, r5, r8, lsl #2
	ldrh r3, [r3, #2]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r7
	mov r2, r6
	bl ov18_02243CF4
	ldr r0, [r4, #4]
	ldrb r3, [sl], #1
	ldr r0, [r0, r8, lsl #2]
	mov r1, r7
	mov r2, #0
	bl ov18_02243C74
	add r8, r8, #1
	cmp r8, #5
	blt _0223EA70
	mov r0, #0
	ldr r1, _0223EB20 ; =ov18_0223EB24
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223EB10 ; =0x0225338C
	ldr r1, [r1, #4]
	str r0, [r1, #0x14]
	ldr r0, [sp]
	bl ov18_0223F4D0
	mov r0, #0xd
	bl ov18_0223E994
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223EB10: .word Unk_ov18_0225338C
_0223EB14: .word Unk_ov18_022495C8
_0223EB18: .word Unk_ov18_022495D7
_0223EB1C: .word Unk_ov18_022495E6
_0223EB20: .word ov18_0223EB24
	arm_func_end ov18_0223EA28

	arm_func_start ov18_0223EB24
ov18_0223EB24: ; 0x0223EB24
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223EBFC ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x20
	blt _0223EB68
	cmp r0, #0x100
	ble _0223EBA8
_0223EB68:
	ldr r5, _0223EC00 ; =0x022495E6
	ldr r4, _0223EBFC ; =0x0225338C
	mov r7, #0
	mvn r6, #0
_0223EB78:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223EB78
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0223EBA8:
	mov r0, #0x20
	ldr r6, _0223EC00 ; =0x022495E6
	ldr r5, _0223EBFC ; =0x0225338C
	str r0, [sp, #4]
	mov r8, #0
	mvn r7, #0
_0223EBC0:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223EBC0
	ldr r1, _0223EC04 ; =ov18_0223EC08
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223EBFC: .word Unk_ov18_0225338C
_0223EC00: .word Unk_ov18_022495E6
_0223EC04: .word ov18_0223EC08
	arm_func_end ov18_0223EB24

	arm_func_start ov18_0223EC08
ov18_0223EC08: ; 0x0223EC08
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223ECE0 ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #4]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x50
	blt _0223EC4C
	cmp r0, #0x100
	ble _0223EC8C
_0223EC4C:
	ldr r5, _0223ECE4 ; =0x022495E6
	ldr r4, _0223ECE0 ; =0x0225338C
	mov r7, #1
	mvn r6, #0
_0223EC5C:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223EC5C
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0223EC8C:
	mov r0, #0x50
	ldr r6, _0223ECE4 ; =0x022495E6
	ldr r5, _0223ECE0 ; =0x0225338C
	str r0, [sp, #4]
	mov r8, #1
	mvn r7, #0
_0223ECA4:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223ECA4
	ldr r1, _0223ECE8 ; =ov18_0223ECEC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223ECE0: .word Unk_ov18_0225338C
_0223ECE4: .word Unk_ov18_022495E6
_0223ECE8: .word ov18_0223ECEC
	arm_func_end ov18_0223EC08

	arm_func_start ov18_0223ECEC
ov18_0223ECEC: ; 0x0223ECEC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223EDC4 ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x68
	blt _0223ED30
	cmp r0, #0x100
	ble _0223ED70
_0223ED30:
	ldr r5, _0223EDC8 ; =0x022495E6
	ldr r4, _0223EDC4 ; =0x0225338C
	mov r7, #2
	mvn r6, #0
_0223ED40:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223ED40
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0223ED70:
	mov r0, #0x68
	ldr r6, _0223EDC8 ; =0x022495E6
	ldr r5, _0223EDC4 ; =0x0225338C
	str r0, [sp, #4]
	mov r8, #2
	mvn r7, #0
_0223ED88:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223ED88
	ldr r1, _0223EDCC ; =ov18_0223EDD0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223EDC4: .word Unk_ov18_0225338C
_0223EDC8: .word Unk_ov18_022495E6
_0223EDCC: .word ov18_0223EDD0
	arm_func_end ov18_0223ECEC

	arm_func_start ov18_0223EDD0
ov18_0223EDD0: ; 0x0223EDD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223EEA8 ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x98
	blt _0223EE14
	cmp r0, #0x100
	ble _0223EE54
_0223EE14:
	ldr r5, _0223EEAC ; =0x022495E6
	ldr r4, _0223EEA8 ; =0x0225338C
	mov r7, #3
	mvn r6, #0
_0223EE24:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223EE24
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0223EE54:
	mov r0, #0x98
	ldr r6, _0223EEAC ; =0x022495E6
	ldr r5, _0223EEA8 ; =0x0225338C
	str r0, [sp, #4]
	mov r8, #3
	mvn r7, #0
_0223EE6C:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223EE6C
	ldr r1, _0223EEB0 ; =ov18_0223EEB4
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223EEA8: .word Unk_ov18_0225338C
_0223EEAC: .word Unk_ov18_022495E6
_0223EEB0: .word ov18_0223EEB4
	arm_func_end ov18_0223EDD0

	arm_func_start ov18_0223EEB4
ov18_0223EEB4: ; 0x0223EEB4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0223EF4C ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0x10]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r2, r0, #8
	str r2, [sp, #4]
	cmp r2, #0xb0
	blt _0223EEF8
	cmp r2, #0x100
	ble _0223EF18
_0223EEF8:
	ldr r0, _0223EF4C ; =0x0225338C
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x21
	ldr r0, [r0, #0x10]
	bl ov18_02243CF4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0223EF18:
	ldr r0, _0223EF4C ; =0x0225338C
	mov r2, #0xb0
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	ldr r0, [r0, #0x10]
	sub r1, r2, #0xb1
	mov r3, #0x21
	bl ov18_02243CF4
	ldr r1, _0223EF50 ; =ov18_0223EF54
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223EF4C: .word Unk_ov18_0225338C
_0223EF50: .word ov18_0223EF54
	arm_func_end ov18_0223EEB4

	arm_func_start ov18_0223EF54
ov18_0223EF54: ; 0x0223EF54
	stmfd sp!, {r3, lr}
	mov r1, r0
	mov r0, #0
	bl ov18_022463AC
	ldr r0, _0223EF78 ; =0x0225338C
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223EF78: .word Unk_ov18_0225338C
	arm_func_end ov18_0223EF54

	arm_func_start ov18_0223EF7C
ov18_0223EF7C: ; 0x0223EF7C
	stmfd sp!, {r3, lr}
	ldr r1, _0223EFB4 ; =0x0225338C
	mov r0, #0
	ldr ip, [r1, #4]
	mov lr, #1
	ldr r1, _0223EFB8 ; =ov18_0223F0A4
	mov r2, r0
	mov r3, #0x78
	strb lr, [ip, #0x18]
	bl ov18_02246304
	ldr r1, _0223EFB4 ; =0x0225338C
	ldr r1, [r1, #4]
	str r0, [r1, #0x14]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223EFB4: .word Unk_ov18_0225338C
_0223EFB8: .word ov18_0223F0A4
	arm_func_end ov18_0223EF7C

	arm_func_start ov18_0223EFBC
ov18_0223EFBC: ; 0x0223EFBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r0, [sp]
	add r2, r0, r0, lsl #2
	ldr r1, _0223F074 ; =0x022495C8
	ldr r0, _0223F078 ; =0x022495D7
	mov r8, #0
	ldr r5, _0223F07C ; =0x022495E6
	ldr r4, _0223F080 ; =0x0225338C
	add sb, r1, r2
	add sl, r0, r2
	mov r7, r8
	mov fp, #1
	mvn r6, #0
_0223EFF0:
	ldr r0, [r4, #4]
	mov r1, r7
	ldr r0, [r0, r8, lsl #2]
	bl ov18_02243BBC
	mov r2, r0
	ldrb r1, [sb], #2
	mov r0, fp
	bl ov18_02243ECC
	ldr r0, [r4, #4]
	mov r1, r6
	ldr r0, [r0, r8, lsl #2]
	mov r2, #0
	bl ov18_02243DE4
	ldr r0, [r4, #4]
	mov r1, r8, lsl #2
	add r3, r5, r8, lsl #2
	ldrh r2, [r5, r1]
	ldrh r3, [r3, #2]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r6
	bl ov18_02243CF4
	ldr r0, [r4, #4]
	ldrb r3, [sl], #2
	ldr r0, [r0, r8, lsl #2]
	mov r1, r6
	mov r2, #0
	bl ov18_02243C74
	add r8, r8, #2
	cmp r8, #5
	blt _0223EFF0
	ldr r0, [sp]
	bl ov18_0223F4D0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223F074: .word Unk_ov18_022495C8
_0223F078: .word Unk_ov18_022495D7
_0223F07C: .word Unk_ov18_022495E6
_0223F080: .word Unk_ov18_0225338C
	arm_func_end ov18_0223EFBC

	arm_func_start ov18_0223F084
ov18_0223F084: ; 0x0223F084
	ldr r0, _0223F0A0 ; =0x0225338C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_0223F0A0: .word Unk_ov18_0225338C
	arm_func_end ov18_0223F084

	arm_func_start ov18_0223F0A4
ov18_0223F0A4: ; 0x0223F0A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0223F130 ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0x10]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	mov r3, #0x21
	sub r2, r0, #8
	str r2, [sp, #4]
	cmp r2, #0x98
	ble _0223F100
	ldr r0, _0223F130 ; =0x0225338C
	mvn r1, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x10]
	bl ov18_02243CF4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0223F100:
	ldr r0, _0223F130 ; =0x0225338C
	mov r2, #0x98
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	ldr r0, [r0, #0x10]
	sub r1, r2, #0x99
	bl ov18_02243CF4
	ldr r1, _0223F134 ; =ov18_0223F138
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223F130: .word Unk_ov18_0225338C
_0223F134: .word ov18_0223F138
	arm_func_end ov18_0223F0A4

	arm_func_start ov18_0223F138
ov18_0223F138: ; 0x0223F138
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223F208 ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x68
	ble _0223F1B4
	ldr r5, _0223F20C ; =0x022495E6
	ldr r4, _0223F208 ; =0x0225338C
	mov r7, #3
	mvn r6, #0
_0223F184:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223F184
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0223F1B4:
	mov r0, #0x68
	ldr r6, _0223F20C ; =0x022495E6
	ldr r5, _0223F208 ; =0x0225338C
	str r0, [sp, #4]
	mov r8, #3
	mvn r7, #0
_0223F1CC:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223F1CC
	ldr r1, _0223F210 ; =ov18_0223F214
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223F208: .word Unk_ov18_0225338C
_0223F20C: .word Unk_ov18_022495E6
_0223F210: .word ov18_0223F214
	arm_func_end ov18_0223F138

	arm_func_start ov18_0223F214
ov18_0223F214: ; 0x0223F214
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223F2E4 ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x50
	ble _0223F290
	ldr r5, _0223F2E8 ; =0x022495E6
	ldr r4, _0223F2E4 ; =0x0225338C
	mov r7, #2
	mvn r6, #0
_0223F260:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223F260
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0223F290:
	mov r0, #0x50
	ldr r6, _0223F2E8 ; =0x022495E6
	ldr r5, _0223F2E4 ; =0x0225338C
	str r0, [sp, #4]
	mov r8, #2
	mvn r7, #0
_0223F2A8:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223F2A8
	ldr r1, _0223F2EC ; =ov18_0223F2F0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223F2E4: .word Unk_ov18_0225338C
_0223F2E8: .word Unk_ov18_022495E6
_0223F2EC: .word ov18_0223F2F0
	arm_func_end ov18_0223F214

	arm_func_start ov18_0223F2F0
ov18_0223F2F0: ; 0x0223F2F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223F3C0 ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #4]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x20
	ble _0223F36C
	ldr r5, _0223F3C4 ; =0x022495E6
	ldr r4, _0223F3C0 ; =0x0225338C
	mov r7, #1
	mvn r6, #0
_0223F33C:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223F33C
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0223F36C:
	mov r0, #0x20
	ldr r6, _0223F3C4 ; =0x022495E6
	ldr r5, _0223F3C0 ; =0x0225338C
	str r0, [sp, #4]
	mov r8, #1
	mvn r7, #0
_0223F384:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223F384
	ldr r1, _0223F3C8 ; =ov18_0223F3CC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223F3C0: .word Unk_ov18_0225338C
_0223F3C4: .word Unk_ov18_022495E6
_0223F3C8: .word ov18_0223F3CC
	arm_func_end ov18_0223F2F0

	arm_func_start ov18_0223F3CC
ov18_0223F3CC: ; 0x0223F3CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223F494 ; =0x0225338C
	mov r5, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	ldr r7, _0223F498 ; =0x022495E6
	sub r0, r0, #8
	ldr r6, _0223F494 ; =0x0225338C
	mov r4, #0
	str r0, [sp, #4]
	mvn r8, #0
_0223F410:
	add r0, r7, r4, lsl #2
	ldr r1, [r6, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r8
	bl ov18_02243CF4
	add r4, r4, #1
	cmp r4, #5
	blt _0223F410
	ldr r1, [sp, #4]
	ldr r0, _0223F49C ; =0x000001D6
	cmp r1, r0
	addgt sp, sp, #8
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r1, #0x100
	addlt sp, sp, #8
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r5
	mov r0, #0
	bl ov18_022463AC
	ldr r4, _0223F494 ; =0x0225338C
	mov r5, #0
_0223F46C:
	ldr r0, [r4, #4]
	ldr r0, [r0, r5, lsl #2]
	bl ov18_02243B3C
	add r5, r5, #1
	cmp r5, #5
	blt _0223F46C
	ldr r0, _0223F4A0 ; =0x02253390
	bl ov18_0224508C
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223F494: .word Unk_ov18_0225338C
_0223F498: .word Unk_ov18_022495E6
_0223F49C: .word 0x000001D6
_0223F4A0: .word Unk_ov18_02253390
	arm_func_end ov18_0223F3CC

	arm_func_start ov18_0223F4A4
ov18_0223F4A4: ; 0x0223F4A4
	ldr r0, _0223F4CC ; =0x0225338C
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_0223F4CC: .word Unk_ov18_0225338C
	arm_func_end ov18_0223F4A4

	arm_func_start ov18_0223F4D0
ov18_0223F4D0: ; 0x0223F4D0
	stmfd sp!, {r3, lr}
	ldr r1, _0223F50C ; =0x0224A634
	ldr r0, [r1, r0, lsl #2]
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r2, _0223F510 ; =0x0225338C
	ldr r1, _0223F514 ; =ov18_0223F518
	str r0, [r2, #0]
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223F50C: .word Unk_ov18_0224A634
_0223F510: .word Unk_ov18_0225338C
_0223F514: .word ov18_0223F518
	arm_func_end ov18_0223F4D0

	arm_func_start ov18_0223F518
ov18_0223F518: ; 0x0223F518
	stmfd sp!, {r4, lr}
	ldr r1, _0223F560 ; =0x0225338C
	mov r4, r0
	ldr r0, [r1, #0]
	mov r1, #0x600
	bl DC_FlushRange
	ldr r0, _0223F560 ; =0x0225338C
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x600
	bl GXS_LoadBG1Scr
	ldr r0, _0223F560 ; =0x0225338C
	ldr r0, [r0, #0]
	bl ov18_0224382C
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223F560: .word Unk_ov18_0225338C
	arm_func_end ov18_0223F518

	.rodata


	.global Unk_ov18_022495C8
Unk_ov18_022495C8: ; 0x022495C8
	.short 0x1, 0x5, 0x406, 0x200, 0x600, 0x4
	.short 0x5
	.byte 0x3

	.global Unk_ov18_022495D7
Unk_ov18_022495D7: ; 0x022495D7
	.byte 0x2, 0x1, 0x3, 0x1, 0x3, 0x5, 0x1, 0x4, 0x1, 0x5, 0x7, 0x1, 0x7, 0x1, 0x6

	.global Unk_ov18_022495E6
Unk_ov18_022495E6: ; 0x022495E6
	.short 0x20, 0x21, 0x50, 0x30, 0x68, 0x21, 0x98
	.short 0x30, 0xB0, 0x21



	.data


	.global Unk_ov18_0224A5D0
Unk_ov18_0224A5D0: ; 0x0224A5D0
	.ascii "char/jtTop.nsc.l"
	.space 0x4

	.global Unk_ov18_0224A5E4
Unk_ov18_0224A5E4: ; 0x0224A5E4
	.ascii "char/jtStep1.nsc.l"
	.space 0x2

	.global Unk_ov18_0224A5F8
Unk_ov18_0224A5F8: ; 0x0224A5F8
	.ascii "char/jtStep2.nsc.l"
	.space 0x2

	.global Unk_ov18_0224A60C
Unk_ov18_0224A60C: ; 0x0224A60C
	.ascii "char/jtStep3.nsc.l"
	.space 0x2

	.global Unk_ov18_0224A620
Unk_ov18_0224A620: ; 0x0224A620
	.asciz "char/jtOption.nsc.l"

	.global Unk_ov18_0224A634
Unk_ov18_0224A634: ; 0x0224A634
	.word Unk_ov18_0224A5E4
	.word Unk_ov18_0224A5F8
	.word Unk_ov18_0224A60C
	.word Unk_ov18_0224A620
	.word Unk_ov18_0224A5D0


	.bss


	.global Unk_ov18_0225338C
Unk_ov18_0225338C: ; 0x0225338C
	.space 0x4

	.global Unk_ov18_02253390
Unk_ov18_02253390: ; 0x02253390
	.space 0x4

