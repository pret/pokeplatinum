	.include "macros/function.inc"
	.include "include/file_pos.inc"

	.extern OSi_ThreadInfo
	.extern Unk_021D0920
	.extern Unk_021D0944
	.extern Unk_021D0968
	.extern errno
	.extern __files


	.text


	arm_func_start _ftell
_ftell: ; 0x020D4A64
	ldr r1, [r0, #4]
	mov r1, r1, lsl #0x16
	mov r1, r1, lsr #0x1d
	and r1, r1, #0xff
	add r1, r1, #0xff
	and r1, r1, #0xff
	cmp r1, #1
	bhi _020D4A90
	ldrb r1, [r0, #0xd]
	cmp r1, #0
	beq _020D4AA4
_020D4A90:
	ldr r0, _020D4ADC ; =0x021D0D40
	mov r1, #0x28
	str r1, [r0, #0]
	sub r0, r1, #0x29
	bx lr
_020D4AA4:
	ldr r1, [r0, #8]
	mov r1, r1, lsl #0x1d
	movs ip, r1, lsr #0x1d
	ldreq r0, [r0, #0x18]
	bxeq lr
	ldr r2, [r0, #0x24]
	ldr r1, [r0, #0x1c]
	ldr r3, [r0, #0x34]
	sub r0, r2, r1
	cmp ip, #3
	add r0, r3, r0
	subhs r1, ip, #2
	subhs r0, r0, r1
	bx lr
	; .align 2, 0
_020D4ADC: .word errno
	arm_func_end _ftell

	arm_func_start ftell
ftell: ; 0x020D4AE0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020D4BE0 ; =0x02101490
	mov r7, r0
	cmp r7, r1
	moveq r6, #2
	beq _020D4B18
	ldr r0, _020D4BE4 ; =0x021014DC
	cmp r7, r0
	moveq r6, #3
	beq _020D4B18
	ldr r0, _020D4BE8 ; =0x02101528
	cmp r7, r0
	moveq r6, #4
	movne r6, #5
_020D4B18:
	mov r0, #0x18
	mul r4, r6, r0
	ldr r5, _020D4BEC ; =0x021D0968
	add r0, r5, r4
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D4B58
	ldr r0, _020D4BF0 ; =0x021CCC80
	ldr r2, _020D4BF4 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D4BF8 ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
	b _020D4BB0
_020D4B58:
	ldr r0, _020D4BF0 ; =0x021CCC80
	ldr r1, _020D4BF4 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, r6, lsl #2]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D4B88
	ldr r1, _020D4BF8 ; =0x021D0944
	ldr r0, [r1, r6, lsl #2]
	add r0, r0, #1
	str r0, [r1, r6, lsl #2]
	b _020D4BB0
_020D4B88:
	add r0, r5, r4
	bl OS_LockMutex
	ldr r0, _020D4BF0 ; =0x021CCC80
	ldr r2, _020D4BF4 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D4BF8 ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
_020D4BB0:
	mov r0, r7
	bl _ftell
	ldr r1, _020D4BF8 ; =0x021D0944
	mov r7, r0
	ldr r0, [r1, r6, lsl #2]
	subs r0, r0, #1
	str r0, [r1, r6, lsl #2]
	bne _020D4BD8
	add r0, r5, r4
	bl OS_UnlockMutex
_020D4BD8:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D4BE0: .word __files
_020D4BE4: .word 0x021014DC
_020D4BE8: .word 0x02101528
_020D4BEC: .word Unk_021D0968
_020D4BF0: .word OSi_ThreadInfo
_020D4BF4: .word Unk_021D0920
_020D4BF8: .word Unk_021D0944
	arm_func_end ftell

	arm_func_start _fseek
_fseek: ; 0x020D4BFC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #4]
	mov r4, r2
	mov r1, r1, lsl #0x16
	mov r1, r1, lsr #0x1d
	and r1, r1, #0xff
	cmp r1, #1
	ldreqb r1, [r5, #0xd]
	cmpeq r1, #0
	beq _020D4C48
	ldr r0, _020D4DE0 ; =0x021D0D40
	mov r1, #0x28
	str r1, [r0, #0]
	sub r0, r1, #0x29
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020D4C48:
	ldr r1, [r5, #8]
	mov r1, r1, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #1
	bne _020D4C98
	mov r1, #0
	bl __flush_buffer
	cmp r0, #0
	beq _020D4C98
	mov r0, #1
	strb r0, [r5, #0xd]
	mov r2, #0
	ldr r0, _020D4DE0 ; =0x021D0D40
	mov r1, #0x28
	str r2, [r5, #0x28]
	str r1, [r0, #0]
	sub r0, r1, #0x29
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020D4C98:
	cmp r4, #1
	bne _020D4CB8
	mov r0, r5
	mov r4, #0
	bl _ftell
	ldr r1, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x14]
_020D4CB8:
	cmp r4, #2
	beq _020D4D4C
	ldr r0, [r5, #4]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	cmp r0, #3
	beq _020D4D4C
	ldr r0, [r5, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	sub r0, r0, #2
	cmp r0, #1
	bhi _020D4D4C
	ldr r2, [sp, #0x14]
	ldr r0, [r5, #0x18]
	cmp r2, r0
	bhs _020D4D08
	ldr r0, [r5, #0x34]
	cmp r2, r0
	bhs _020D4D18
_020D4D08:
	ldr r0, [r5, #8]
	bic r0, r0, #7
	str r0, [r5, #8]
	b _020D4D58
_020D4D18:
	ldr r1, [r5, #0x1c]
	sub r0, r2, r0
	add r0, r1, r0
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #8]
	bic r0, r0, #7
	orr r0, r0, #2
	str r0, [r5, #8]
	b _020D4D58
_020D4D4C:
	ldr r0, [r5, #8]
	bic r0, r0, #7
	str r0, [r5, #8]
_020D4D58:
	ldr r0, [r5, #8]
	mov r0, r0, lsl #0x1d
	movs r0, r0, lsr #0x1d
	bne _020D4DD0
	ldr ip, [r5, #0x38]
	cmp ip, #0
	beq _020D4DBC
	ldr r0, [r5, #0]
	ldr r3, [r5, #0x48]
	add r1, sp, #0x14
	mov r2, r4
	blx ip
	cmp r0, #0
	beq _020D4DBC
	mov r0, #1
	strb r0, [r5, #0xd]
	mov r2, #0
	ldr r0, _020D4DE0 ; =0x021D0D40
	mov r1, #0x28
	str r2, [r5, #0x28]
	str r1, [r0, #0]
	sub r0, r1, #0x29
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020D4DBC:
	mov r1, #0
	strb r1, [r5, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [r5, #0x18]
	str r1, [r5, #0x28]
_020D4DD0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D4DE0: .word errno
	arm_func_end _fseek

	arm_func_start fseek
fseek: ; 0x020D4DE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r3, _020D4EF4 ; =0x02101490
	mov sb, r0
	cmp sb, r3
	mov r8, r1
	mov r7, r2
	moveq r6, #2
	beq _020D4E24
	ldr r0, _020D4EF8 ; =0x021014DC
	cmp sb, r0
	moveq r6, #3
	beq _020D4E24
	ldr r0, _020D4EFC ; =0x02101528
	cmp sb, r0
	moveq r6, #4
	movne r6, #5
_020D4E24:
	mov r0, #0x18
	mul r4, r6, r0
	ldr r5, _020D4F00 ; =0x021D0968
	add r0, r5, r4
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D4E64
	ldr r0, _020D4F04 ; =0x021CCC80
	ldr r2, _020D4F08 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D4F0C ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
	b _020D4EBC
_020D4E64:
	ldr r0, _020D4F04 ; =0x021CCC80
	ldr r1, _020D4F08 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, r6, lsl #2]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D4E94
	ldr r1, _020D4F0C ; =0x021D0944
	ldr r0, [r1, r6, lsl #2]
	add r0, r0, #1
	str r0, [r1, r6, lsl #2]
	b _020D4EBC
_020D4E94:
	add r0, r5, r4
	bl OS_LockMutex
	ldr r0, _020D4F04 ; =0x021CCC80
	ldr r2, _020D4F08 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D4F0C ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
_020D4EBC:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl _fseek
	ldr r1, _020D4F0C ; =0x021D0944
	mov r7, r0
	ldr r0, [r1, r6, lsl #2]
	subs r0, r0, #1
	str r0, [r1, r6, lsl #2]
	bne _020D4EEC
	add r0, r5, r4
	bl OS_UnlockMutex
_020D4EEC:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020D4EF4: .word __files
_020D4EF8: .word 0x021014DC
_020D4EFC: .word 0x02101528
_020D4F00: .word Unk_021D0968
_020D4F04: .word OSi_ThreadInfo
_020D4F08: .word Unk_021D0920
_020D4F0C: .word Unk_021D0944
	arm_func_end fseek

	arm_func_start rewind
rewind: ; 0x020D4F10
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	mov r2, r1
	strb r1, [r4, #0xd]
	bl fseek
	mov r0, #0
	strb r0, [r4, #0xd]
	ldmia sp!, {r4, pc}
	arm_func_end rewind
