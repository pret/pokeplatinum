	.include "macros/function.inc"
	.include "include/setting.inc"

	

	.text


	arm_func_start ov18_0223DD74
ov18_0223DD74: ; 0x0223DD74
	stmfd sp!, {r3, lr}
	ldr r0, _0223DDAC ; =0x000006F8
	mov r1, #0x20
	bl ov18_02245068
	ldr r1, _0223DDB0 ; =0x02253384
	add r2, r0, #0xf8
	str r0, [r1, #0]
	ldr r1, _0223DDB4 ; =0x0000A001
	add r0, r2, #0x400
	bl MATHi_CRC16InitTableRev
	ldr r0, _0223DDB0 ; =0x02253384
	ldr r0, [r0, #0]
	bl sub_020A2A34
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223DDAC: .word 0x000006F8
_0223DDB0: .word Unk_ov18_02253384
_0223DDB4: .word 0x0000A001
	arm_func_end ov18_0223DD74

	arm_func_start ov18_0223DDB8
ov18_0223DDB8: ; 0x0223DDB8
	ldr ip, _0223DDC4 ; =ov18_0224508C
	ldr r0, _0223DDC8 ; =0x02253384
	bx ip
	; .align 2, 0
_0223DDC4: .word ov18_0224508C
_0223DDC8: .word Unk_ov18_02253384
	arm_func_end ov18_0223DDB8

	arm_func_start ov18_0223DDCC
ov18_0223DDCC: ; 0x0223DDCC
	ldr r0, _0223DDDC ; =0x02253384
	ldr r0, [r0, #0]
	add r0, r0, #0x400
	bx lr
	; .align 2, 0
_0223DDDC: .word Unk_ov18_02253384
	arm_func_end ov18_0223DDCC

	arm_func_start ov18_0223DDE0
ov18_0223DDE0: ; 0x0223DDE0
	ldr r1, _0223DDF0 ; =0x02253384
	ldr r1, [r1, #0]
	strb r0, [r1, #0x4f5]
	bx lr
	; .align 2, 0
_0223DDF0: .word Unk_ov18_02253384
	arm_func_end ov18_0223DDE0

	arm_func_start ov18_0223DDF4
ov18_0223DDF4: ; 0x0223DDF4
	ldr r1, _0223DE04 ; =0x02253384
	ldr r1, [r1, #0]
	strb r0, [r1, #0x4f6]
	bx lr
	; .align 2, 0
_0223DE04: .word Unk_ov18_02253384
	arm_func_end ov18_0223DDF4

	arm_func_start ov18_0223DE08
ov18_0223DE08: ; 0x0223DE08
	stmfd sp!, {r3, lr}
	ldr r1, _0223DE34 ; =0x02253384
	mov r2, #0x20
	ldr r1, [r1, #0]
	add r1, r1, #0x440
	bl MI_CpuCopy8
	ldr r0, _0223DE34 ; =0x02253384
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x4e7]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223DE34: .word Unk_ov18_02253384
	arm_func_end ov18_0223DE08

	arm_func_start ov18_0223DE38
ov18_0223DE38: ; 0x0223DE38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _0223DFCC ; =0x02253384
	mov r6, r0
	ldr r0, [r1, #0]
	mov r1, #0
	add r0, r0, #0x480
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, r6
	mov r1, #0x20
	bl ov18_02245E50
	mov r5, r0
	cmp r5, #0xa
	bgt _0223DE80
	bge _0223DE98
	cmp r5, #0
	beq _0223DE98
	b _0223DEF0
_0223DE80:
	cmp r5, #0x1a
	bgt _0223DE90
	beq _0223DE98
	b _0223DEF0
_0223DE90:
	cmp r5, #0x20
	bne _0223DEF0
_0223DE98:
	ldr r0, _0223DFCC ; =0x02253384
	cmp r5, #0
	ldr r2, [r0, #0]
	mov r4, #0
	ldrb r1, [r2, #0x4e6]
	bic r1, r1, #0xfc
	strb r1, [r2, #0x4e6]
	ldr r0, [r0, #0]
	add r8, r0, #0x480
	ble _0223DF1C
_0223DEC0:
	ldrb r0, [r6, r4]
	add sb, r6, r4
	bl ov18_0223E8BC
	mov r7, r0
	ldrb r0, [sb, #1]
	bl ov18_0223E8BC
	add r0, r0, r7, lsl #4
	add r4, r4, #2
	cmp r4, r5
	strb r0, [r8], #1
	blt _0223DEC0
	b _0223DF1C
_0223DEF0:
	ldr r1, _0223DFCC ; =0x02253384
	mov r0, r6
	ldr r4, [r1, #0]
	mov r2, #0x10
	ldrb r3, [r4, #0x4e6]
	bic r3, r3, #0xfc
	orr r3, r3, #4
	strb r3, [r4, #0x4e6]
	ldr r1, [r1, #0]
	add r1, r1, #0x480
	bl MI_CpuCopy8
_0223DF1C:
	cmp r5, #5
	bgt _0223DF34
	bge _0223DF78
	cmp r5, #0
	beq _0223DF60
	b _0223DFB0
_0223DF34:
	cmp r5, #0xd
	bgt _0223DF54
	cmp r5, #0xa
	blt _0223DFB0
	beq _0223DF78
	cmp r5, #0xd
	beq _0223DF94
	b _0223DFB0
_0223DF54:
	cmp r5, #0x1a
	beq _0223DF94
	b _0223DFB0
_0223DF60:
	ldr r0, _0223DFCC ; =0x02253384
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	strb r0, [r1, #0x4e6]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0223DF78:
	ldr r0, _0223DFCC ; =0x02253384
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #1
	strb r0, [r1, #0x4e6]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0223DF94:
	ldr r0, _0223DFCC ; =0x02253384
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r1, #0x4e6]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0223DFB0:
	ldr r0, _0223DFCC ; =0x02253384
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #3
	strb r0, [r1, #0x4e6]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0223DFCC: .word Unk_ov18_02253384
	arm_func_end ov18_0223DE38

	arm_func_start ov18_0223DFD0
ov18_0223DFD0: ; 0x0223DFD0
	ldr r1, _0223DFE4 ; =0x02253384
	ldr ip, _0223DFE8 ; =ov18_0223E834
	ldr r1, [r1, #0]
	add r1, r1, #0x4c0
	bx ip
	; .align 2, 0
_0223DFE4: .word Unk_ov18_02253384
_0223DFE8: .word ov18_0223E834
	arm_func_end ov18_0223DFD0

	arm_func_start ov18_0223DFEC
ov18_0223DFEC: ; 0x0223DFEC
	ldr r1, _0223E000 ; =0x02253384
	ldr ip, _0223E004 ; =ov18_0223E834
	ldr r1, [r1, #0]
	add r1, r1, #0x4f0
	bx ip
	; .align 2, 0
_0223E000: .word Unk_ov18_02253384
_0223E004: .word ov18_0223E834
	arm_func_end ov18_0223DFEC

	arm_func_start ov18_0223E008
ov18_0223E008: ; 0x0223E008
	ldr r1, _0223E020 ; =0x02253384
	ldr ip, _0223E024 ; =ov18_0223E834
	ldr r1, [r1, #0]
	add r1, r1, #0xc4
	add r1, r1, #0x400
	bx ip
	; .align 2, 0
_0223E020: .word Unk_ov18_02253384
_0223E024: .word ov18_0223E834
	arm_func_end ov18_0223E008

	arm_func_start ov18_0223E028
ov18_0223E028: ; 0x0223E028
	ldr r1, _0223E040 ; =0x02253384
	ldr ip, _0223E044 ; =ov18_0223E834
	ldr r1, [r1, #0]
	add r1, r1, #0xc8
	add r1, r1, #0x400
	bx ip
	; .align 2, 0
_0223E040: .word Unk_ov18_02253384
_0223E044: .word ov18_0223E834
	arm_func_end ov18_0223E028

	arm_func_start ov18_0223E048
ov18_0223E048: ; 0x0223E048
	ldr r1, _0223E060 ; =0x02253384
	ldr ip, _0223E064 ; =ov18_0223E834
	ldr r1, [r1, #0]
	add r1, r1, #0xcc
	add r1, r1, #0x400
	bx ip
	; .align 2, 0
_0223E060: .word Unk_ov18_02253384
_0223E064: .word ov18_0223E834
	arm_func_end ov18_0223E048

	arm_func_start ov18_0223E068
ov18_0223E068: ; 0x0223E068
	ldr r2, _0223E084 ; =0x02253384
	mov r1, r0
	ldr r0, [r2, #0]
	ldr ip, _0223E088 ; =MI_CpuCopy8
	mov r2, #0x20
	add r0, r0, #0x440
	bx ip
	; .align 2, 0
_0223E084: .word Unk_ov18_02253384
_0223E088: .word MI_CpuCopy8
	arm_func_end ov18_0223E068

	arm_func_start ov18_0223E08C
ov18_0223E08C: ; 0x0223E08C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E0C4 ; =0x02253384
	ldr r1, _0223E0C8 ; =0x0224A5A8
	ldr r3, [r2, #0]
	ldrb r2, [r3, #0x4c2]
	str r2, [sp]
	ldrb r2, [r3, #0x4c3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4c0]
	ldrb r3, [r3, #0x4c1]
	bl OS_SPrintf
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223E0C4: .word Unk_ov18_02253384
_0223E0C8: .word Unk_ov18_0224A5A8
	arm_func_end ov18_0223E08C

	arm_func_start ov18_0223E0CC
ov18_0223E0CC: ; 0x0223E0CC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E104 ; =0x02253384
	ldr r1, _0223E108 ; =0x0224A5A8
	ldr r3, [r2, #0]
	ldrb r2, [r3, #0x4f2]
	str r2, [sp]
	ldrb r2, [r3, #0x4f3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4f0]
	ldrb r3, [r3, #0x4f1]
	bl OS_SPrintf
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223E104: .word Unk_ov18_02253384
_0223E108: .word Unk_ov18_0224A5A8
	arm_func_end ov18_0223E0CC

	arm_func_start ov18_0223E10C
ov18_0223E10C: ; 0x0223E10C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E148 ; =0x02253384
	ldr r1, _0223E14C ; =0x0224A5A8
	ldr ip, [r2]
	add r3, ip, #0xc4
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [ip, #0x4c4]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223E148: .word Unk_ov18_02253384
_0223E14C: .word Unk_ov18_0224A5A8
	arm_func_end ov18_0223E10C

	arm_func_start ov18_0223E150
ov18_0223E150: ; 0x0223E150
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E18C ; =0x02253384
	ldr r1, _0223E190 ; =0x0224A5A8
	ldr ip, [r2]
	add r3, ip, #0xc8
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [ip, #0x4c8]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223E18C: .word Unk_ov18_02253384
_0223E190: .word Unk_ov18_0224A5A8
	arm_func_end ov18_0223E150

	arm_func_start ov18_0223E194
ov18_0223E194: ; 0x0223E194
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E1D0 ; =0x02253384
	ldr r1, _0223E1D4 ; =0x0224A5A8
	ldr ip, [r2]
	add r3, ip, #0xcc
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [ip, #0x4cc]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223E1D0: .word Unk_ov18_02253384
_0223E1D4: .word Unk_ov18_0224A5A8
	arm_func_end ov18_0223E194

	arm_func_start ov18_0223E1D8
ov18_0223E1D8: ; 0x0223E1D8
	ldr r1, _0223E1EC ; =0x02253384
	ldr r1, [r1, #0]
	add r0, r1, r0, lsl #8
	ldrb r0, [r0, #0xe7]
	bx lr
	; .align 2, 0
_0223E1EC: .word Unk_ov18_02253384
	arm_func_end ov18_0223E1D8

	arm_func_start ov18_0223E1F0
ov18_0223E1F0: ; 0x0223E1F0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0223E2C8 ; =0x02253384
	mov r3, #0x78
	ldr r5, [r1, #0]
	add r4, r5, r0, lsl #8
	mov lr, r4
	add ip, r5, #0x400
_0223E20C:
	ldrb r2, [lr]
	ldrb r1, [lr, #1]
	add lr, lr, #2
	subs r3, r3, #1
	strb r2, [ip]
	strb r1, [ip, #1]
	add ip, ip, #2
	bne _0223E20C
	ldr r1, _0223E2CC ; =0x022495C4
	strb r0, [r5, #0x4f4]
	add r0, r4, #0xc0
	mov r2, #4
	bl memcmp
	cmp r0, #0
	ldrne r0, _0223E2C8 ; =0x02253384
	movne r1, #0
	ldreq r0, _0223E2C8 ; =0x02253384
	moveq r1, #1
	ldr r0, [r0, #0]
	mov r2, #4
	strb r1, [r0, #0x4f5]
	ldr r1, _0223E2CC ; =0x022495C4
	add r0, r4, #0xc8
	bl memcmp
	cmp r0, #0
	bne _0223E28C
	ldr r1, _0223E2CC ; =0x022495C4
	add r0, r4, #0xcc
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _0223E2A0
_0223E28C:
	ldr r0, _0223E2C8 ; =0x02253384
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x4f6]
	b _0223E2B0
_0223E2A0:
	ldr r0, _0223E2C8 ; =0x02253384
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0x4f6]
_0223E2B0:
	ldr r1, _0223E2C8 ; =0x02253384
	ldrb r0, [r4, #0xd0]
	ldr r1, [r1, #0]
	add r1, r1, #0x4f0
	bl sub_020A2BD8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223E2C8: .word Unk_ov18_02253384
_0223E2CC: .word Unk_ov18_022495C4
	arm_func_end ov18_0223E1F0

	arm_func_start ov18_0223E2D0
ov18_0223E2D0: ; 0x0223E2D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0223E3A8 ; =0x02253384
	mov r2, #0x78
	ldr r1, [r0, #0]
	add r4, r1, #0x400
	ldrb r0, [r4, #0xf4]
	mov ip, r4
	add r5, r1, r0, lsl #8
	mov r3, r5
_0223E2F4:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _0223E2F4
	ldrb r0, [r4, #0xf5]
	mov r2, #4
	cmp r0, #0
	beq _0223E348
	add r0, r5, #0xc0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r5, #0xc4
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r0, #0
	b _0223E36C
_0223E348:
	add r0, r4, #0xc0
	add r1, r5, #0xc0
	bl MI_CpuCopy8
	add r0, r4, #0xc4
	add r1, r5, #0xc4
	mov r2, #4
	bl MI_CpuCopy8
	add r0, r4, #0xf0
	bl sub_020A2B94
_0223E36C:
	strb r0, [r5, #0xd0]
	ldrb r0, [r4, #0xf6]
	mov r2, #8
	cmp r0, #0
	beq _0223E390
	add r0, r5, #0xc8
	mov r1, #0
	bl MI_CpuFill8
	b _0223E39C
_0223E390:
	add r0, r4, #0xc8
	add r1, r5, #0xc8
	bl MI_CpuCopy8
_0223E39C:
	ldrb r0, [r4, #0xf4]
	bl ov18_0223E6CC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223E3A8: .word Unk_ov18_02253384
	arm_func_end ov18_0223E2D0

	arm_func_start ov18_0223E3AC
ov18_0223E3AC: ; 0x0223E3AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0223E4BC ; =0x02253384
	mov r6, r0
	ldr r4, [r1, #0]
	mov r1, #0
	add r0, r4, #0x400
	mov r2, #0xef
	bl MI_CpuFill8
	mov r0, r6
	add r1, r4, #0x440
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r6, #0x20]
	cmp r0, #1
	beq _0223E3FC
	cmp r0, #2
	beq _0223E414
	cmp r0, #3
	beq _0223E42C
	b _0223E444
_0223E3FC:
	ldrb r0, [r4, #0x4e6]
	mov r5, #5
	bic r0, r0, #3
	orr r0, r0, #1
	strb r0, [r4, #0x4e6]
	b _0223E454
_0223E414:
	ldrb r0, [r4, #0x4e6]
	mov r5, #0xd
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r4, #0x4e6]
	b _0223E454
_0223E42C:
	ldrb r0, [r4, #0x4e6]
	mov r5, #0x10
	bic r0, r0, #3
	orr r0, r0, #3
	strb r0, [r4, #0x4e6]
	b _0223E454
_0223E444:
	ldrb r0, [r4, #0x4e6]
	mov r5, #0
	bic r0, r0, #3
	strb r0, [r4, #0x4e6]
_0223E454:
	ldrb r0, [r4, #0x4e6]
	add r8, r6, #0x28
	add r7, r4, #0x480
	bic r0, r0, #0xfc
	strb r0, [r4, #0x4e6]
	mov r6, #0
_0223E46C:
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl MI_CpuCopy8
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #0x10
	add r8, r8, #0x20
	blt _0223E46C
	mov r3, #2
	add r0, r4, #0x4f0
	mov r1, #0
	mov r2, #4
	strb r3, [r4, #0x4e7]
	bl MI_CpuFill8
	mov r0, #1
	strb r0, [r4, #0x4f5]
	strb r0, [r4, #0x4f6]
	bl ov18_0223E2D0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223E4BC: .word Unk_ov18_02253384
	arm_func_end ov18_0223E3AC

	arm_func_start ov18_0223E4C0
ov18_0223E4C0: ; 0x0223E4C0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0223E5CC ; =0x02253384
	mov r5, r0
	ldr r0, [r1, #0]
	mov r1, #0
	add r4, r0, #0x400
	mov r0, r4
	mov r2, #0xef
	bl MI_CpuFill8
	mov r0, r5
	add r1, r4, #0xd1
	mov r2, #5
	bl MI_CpuCopy8
	add r0, r5, #6
	add r1, r4, #0xd6
	mov r2, #5
	bl MI_CpuCopy8
	add r0, r5, #0xc
	add r1, r4, #0xdb
	mov r2, #5
	bl MI_CpuCopy8
	add r0, r5, #0x12
	add r1, r4, #0xe0
	mov r2, #5
	bl MI_CpuCopy8
	add r0, r5, #0x18
	add r1, r4, #0x60
	mov r2, #0x20
	bl MI_CpuCopy8
	add r0, r5, #0x39
	add r1, r4, #0x80
	mov r2, #0xd
	bl MI_CpuCopy8
	add r0, r5, #0x47
	add r1, r4, #0x90
	mov r2, #0xd
	bl MI_CpuCopy8
	add r0, r5, #0x55
	add r1, r4, #0xa0
	mov r2, #0xd
	bl MI_CpuCopy8
	add r0, r5, #0x63
	add r1, r4, #0xb0
	mov r2, #0xd
	bl MI_CpuCopy8
	add r0, r5, #0x71
	add r1, r4, #0x40
	mov r2, #0x20
	bl MI_CpuCopy8
	ldrb r2, [r4, #0xe6]
	mov r1, #1
	add r0, r4, #0xf0
	bic r2, r2, #3
	orr r2, r2, #2
	strb r2, [r4, #0xe6]
	and r2, r2, #0xff
	bic r2, r2, #0xfc
	strb r2, [r4, #0xe6]
	strb r1, [r4, #0xe7]
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r0, #1
	strb r0, [r4, #0xf5]
	strb r0, [r4, #0xf6]
	bl ov18_0223E2D0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223E5CC: .word Unk_ov18_02253384
	arm_func_end ov18_0223E4C0

	arm_func_start ov18_0223E5D0
ov18_0223E5D0: ; 0x0223E5D0
	ldr r0, _0223E5DC ; =0x02253384
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_0223E5DC: .word Unk_ov18_02253384
	arm_func_end ov18_0223E5D0

	arm_func_start ov18_0223E5E0
ov18_0223E5E0: ; 0x0223E5E0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0223E618 ; =0x02253384
	mov r5, r0
	ldr r0, [r1, #0]
	mov r1, #0
	add r4, r0, r5, lsl #8
	mov r0, r4
	mov r2, #0xef
	bl MI_CpuFill8
	mov r1, #0xff
	mov r0, r5
	strb r1, [r4, #0xe7]
	bl ov18_0223E6CC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223E618: .word Unk_ov18_02253384
	arm_func_end ov18_0223E5E0

	arm_func_start ov18_0223E61C
ov18_0223E61C: ; 0x0223E61C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r1, _0223E6C8 ; =0x02253384
	mov r0, #0
	ldr r1, [r1, #0]
	mov r2, #0x400
	bl MIi_CpuClear16
	ldr r0, _0223E6C8 ; =0x02253384
	mov r3, #0
	mov r2, #0xff
_0223E644:
	ldr r1, [r0, #0]
	add r1, r1, r3, lsl #8
	add r3, r3, #1
	strb r2, [r1, #0xe7]
	cmp r3, #3
	blt _0223E644
	add r0, sp, #0
	bl sub_020A3A3C
	add r0, sp, #0
	bl sub_020A3338
	mov r8, #0
	ldr r4, _0223E6C8 ; =0x02253384
	mov r6, r0
	mov r7, r8
	mov r5, #0xe
_0223E680:
	ldr r1, [r4, #0]
	mov r0, r6
	add r1, r1, r7
	mov r2, r5
	add r1, r1, #0xf0
	bl MI_CpuCopy8
	add r8, r8, #1
	cmp r8, #2
	add r7, r7, #0x100
	blt _0223E680
	mov r4, #0
_0223E6AC:
	mov r0, r4
	bl ov18_0223E6CC
	add r4, r4, #1
	cmp r4, #4
	blt _0223E6AC
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223E6C8: .word Unk_ov18_02253384
	arm_func_end ov18_0223E61C

	arm_func_start ov18_0223E6CC
ov18_0223E6CC: ; 0x0223E6CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r1, _0223E830 ; =0x02253384
	mov r7, r0
	ldr r0, [r1, #0]
	mov r6, #0
	add r2, r0, r7, lsl #8
	ldrb r5, [r2, #0xe7]
	add r0, sp, #4
	mov r1, r6
	mov r2, #0x10
	mov r4, #1
	bl MI_CpuFill8
	add r0, sp, #4
	mov r2, r4
	str r2, [r0, r7, lsl #2]
	cmp r7, #2
	bgt _0223E7A8
	ldr r0, _0223E830 ; =0x02253384
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0xef]
	tst r1, r4, lsl r7
	movne r6, r2
	cmp r5, #0xff
	bne _0223E76C
	cmp r6, #0
	beq _0223E76C
	ldrb r1, [r0, #0xef]
	mvn r3, r4, lsl r7
	and r2, r1, r3
	ldr r1, _0223E830 ; =0x02253384
	strb r2, [r0, #0xef]
	ldr r2, [r1, #0]
	mov r0, #1
	ldrb r1, [r2, #0x1ef]
	and r1, r1, r3
	strb r1, [r2, #0x1ef]
	str r0, [sp, #8]
	str r0, [sp, #4]
	b _0223E7A8
_0223E76C:
	cmp r5, #0xff
	beq _0223E7A8
	cmp r6, #0
	bne _0223E7A8
	ldrb r3, [r0, #0xef]
	ldr r1, _0223E830 ; =0x02253384
	mov r2, #1
	orr r3, r3, r4, lsl r7
	strb r3, [r0, #0xef]
	ldr r1, [r1, #0]
	ldrb r0, [r1, #0x1ef]
	orr r0, r0, r4, lsl r7
	strb r0, [r1, #0x1ef]
	str r2, [sp, #8]
	str r2, [sp, #4]
_0223E7A8:
	mov r6, #0
	ldr r8, _0223E830 ; =0x02253384
	mov r7, r6
	mov r4, #0xfe
	add r5, sp, #4
_0223E7BC:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _0223E7EC
	ldr r1, [r8]
	mov r2, r4
	add r0, r1, #0xf8
	add r0, r0, #0x400
	add r1, r1, r7
	bl MATH_CalcCRC16
	ldr r1, [r8]
	add r1, r1, r6, lsl #8
	strh r0, [r1, #0xfe]
_0223E7EC:
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #0x100
	blt _0223E7BC
	mov r0, #0x100
	mov r1, #0x20
	bl ov18_02245068
	mov r2, r0
	ldr r0, _0223E830 ; =0x02253384
	add r1, sp, #4
	ldr r0, [r0, #0]
	str r2, [sp]
	bl sub_020A2A60
	add r0, sp, #0
	bl ov18_0224508C
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223E830: .word Unk_ov18_02253384
	arm_func_end ov18_0223E6CC

	arm_func_start ov18_0223E834
ov18_0223E834: ; 0x0223E834
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r7, #0
	mov r8, r7
	mov r4, #0x20
	add r6, sp, #0
	mov r5, #3
	mov fp, r7
_0223E868:
	mov r1, r6
	mov r2, r5
	add r0, sl, r8
	bl MI_CpuCopy8
	mov r1, fp
	mov r2, r6
_0223E880:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0223E89C
	add r1, r1, #1
	cmp r1, #3
	strb r4, [r2], #1
	blt _0223E880
_0223E89C:
	mov r0, r6
	bl atoi
	strb r0, [sb, r7]
	add r7, r7, #1
	cmp r7, #4
	add r8, r8, #3
	blt _0223E868
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov18_0223E834

	arm_func_start ov18_0223E8BC
ov18_0223E8BC: ; 0x0223E8BC
	cmp r0, #0x39
	subls r0, r0, #0x30
	bxls lr
	cmp r0, #0x46
	subls r0, r0, #0x37
	subhi r0, r0, #0x57
	bx lr
	arm_func_end ov18_0223E8BC

	.rodata


	.global Unk_ov18_022495C4
Unk_ov18_022495C4: ; 0x022495C4
	.space 0x4



	.data


	.global Unk_ov18_0224A5A8
Unk_ov18_0224A5A8: ; 0x0224A5A8
	.ascii "%3d%3d%3d%3d"
	.space 0x4



	.bss


	.global Unk_ov18_02253384
Unk_ov18_02253384: ; 0x02253384
	.space 0x4

