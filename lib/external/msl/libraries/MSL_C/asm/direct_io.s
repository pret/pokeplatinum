	.include "macros/function.inc"
	.include "include/direct_io.inc"

	.extern OSi_ThreadInfo
	.extern Unk_021D0920
	.extern Unk_021D0944
	.extern Unk_021D0968
	.extern __files


	.text


	arm_func_start fread
fread: ; 0x020D4204
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r4, _020D42FC ; =0x02101490
	mov r7, r3
	cmp r7, r4
	moveq r6, #2
	mov sl, r0
	movne r6, #5
	mov r0, #0x18
	mul r4, r6, r0
	ldr r5, _020D4300 ; =0x021D0968
	mov sb, r1
	add r0, r5, r4
	mov r8, r2
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D4268
	ldr r0, _020D4304 ; =0x021CCC80
	ldr r2, _020D4308 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D430C ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
	b _020D42C0
_020D4268:
	ldr r0, _020D4304 ; =0x021CCC80
	ldr r1, _020D4308 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, r6, lsl #2]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D4298
	ldr r1, _020D430C ; =0x021D0944
	ldr r0, [r1, r6, lsl #2]
	add r0, r0, #1
	str r0, [r1, r6, lsl #2]
	b _020D42C0
_020D4298:
	add r0, r5, r4
	bl OS_LockMutex
	ldr r0, _020D4304 ; =0x021CCC80
	ldr r2, _020D4308 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D430C ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
_020D42C0:
	mov r0, sl
	mov r1, sb
	mov r2, r8
	mov r3, r7
	bl __fread
	ldr r1, _020D430C ; =0x021D0944
	mov r7, r0
	ldr r0, [r1, r6, lsl #2]
	subs r0, r0, #1
	str r0, [r1, r6, lsl #2]
	bne _020D42F4
	add r0, r5, r4
	bl OS_UnlockMutex
_020D42F4:
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020D42FC: .word __files
_020D4300: .word Unk_021D0968
_020D4304: .word OSi_ThreadInfo
_020D4308: .word Unk_021D0920
_020D430C: .word Unk_021D0944
	arm_func_end fread

	arm_func_start __fread
__fread: ; 0x020D4310
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r7, r3
	mov sb, r0
	mov r8, r1
	mov r0, r7
	mov r1, #0
	mov r4, r2
	bl fwide
	cmp r0, #0
	bne _020D4348
	mov r0, r7
	mvn r1, #0
	bl fwide
_020D4348:
	muls r4, r8, r4
	beq _020D436C
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _020D436C
	ldr r1, [r7, #4]
	mov r0, r1, lsl #0x16
	movs r0, r0, lsr #0x1d
	bne _020D4378
_020D436C:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020D4378:
	mov r0, r1, lsl #0x13
	movs r0, r0, lsr #0x1f
	movne r0, r1, lsl #0x19
	movne r0, r0, lsr #0x1e
	ldr r1, [r7, #8]
	cmpne r0, #2
	mov r6, #1
	mov r0, r1, lsl #0x1d
	movne r6, #0
	movs r0, r0, lsr #0x1d
	bne _020D43CC
	ldr r0, [r7, #4]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	tst r0, #1
	beq _020D43CC
	bic r0, r1, #7
	orr r0, r0, #2
	str r0, [r7, #8]
	mov r0, #0
	str r0, [r7, #0x28]
_020D43CC:
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #2
	bhs _020D43F8
	mov r0, #1
	strb r0, [r7, #0xd]
	mov r0, #0
	add sp, sp, #4
	str r0, [r7, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020D43F8:
	ldr r0, [r7, #4]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	tst r0, #1
	beq _020D4430
	bl __flush_line_buffered_output_files
	cmp r0, #0
	beq _020D4430
	mov r0, #1
	strb r0, [r7, #0xd]
	mov r0, #0
	add sp, sp, #4
	str r0, [r7, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020D4430:
	cmp r4, #0
	mov r5, #0
	beq _020D44F4
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #3
	blo _020D44F4
	mov sl, r5
_020D4454:
	mov r0, r7
	mov r1, sl
	bl fwide
	cmp r0, #1
	ldr r0, [r7, #8]
	bne _020D4488
	mov r0, r0, lsl #0x1d
	add r0, r7, r0, lsr #28
	ldrh r0, [r0, #0xe]
	add r5, r5, #2
	sub r4, r4, #2
	strh r0, [sb], #2
	b _020D44A0
_020D4488:
	mov r0, r0, lsl #0x1d
	add r0, r7, r0, lsr #29
	ldrb r0, [r0, #0xf]
	add r5, r5, #1
	sub r4, r4, #1
	strb r0, [sb], #1
_020D44A0:
	ldr r1, [r7, #8]
	cmp r4, #0
	mov r0, r1, lsl #0x1d
	mov r0, r0, lsr #0x1d
	sub r0, r0, #1
	bic r1, r1, #7
	and r0, r0, #7
	orr r0, r1, r0
	str r0, [r7, #8]
	beq _020D44DC
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #3
	bhs _020D4454
_020D44DC:
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #2
	ldreq r0, [r7, #0x30]
	streq r0, [r7, #0x28]
_020D44F4:
	cmp r4, #0
	beq _020D45B8
	ldr r0, [r7, #0x28]
	cmp r0, #0
	cmpeq r6, #0
	beq _020D45B8
	mov sl, #0
_020D4510:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	bne _020D4564
	mov r0, r7
	mov r1, sl
	mov r2, sl
	bl __load_buffer
	cmp r0, #0
	beq _020D4564
	cmp r0, #1
	mov r0, #1
	streqb r0, [r7, #0xd]
	beq _020D4554
	ldr r1, [r7, #8]
	bic r1, r1, #7
	str r1, [r7, #8]
	strb r0, [r7, #0xc]
_020D4554:
	mov r0, #0
	str r0, [r7, #0x28]
	mov r4, #0
	b _020D45B8
_020D4564:
	ldr r0, [r7, #0x28]
	str r0, [sp]
	cmp r0, r4
	strhi r4, [sp]
	ldr r1, [r7, #0x24]
	ldr r2, [sp]
	mov r0, sb
	bl memcpy
	ldr r2, [sp]
	ldr r0, [r7, #0x24]
	subs r4, r4, r2
	add r0, r0, r2
	str r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	ldr r0, [sp]
	add sb, sb, r2
	sub r0, r1, r0
	add r5, r5, r2
	str r0, [r7, #0x28]
	cmpne r6, #0
	bne _020D4510
_020D45B8:
	cmp r4, #0
	beq _020D4644
	cmp r6, #0
	bne _020D4644
	ldr r6, [r7, #0x1c]
	ldr sl, [r7, #0x20]
	add r1, sp, #0
	str sb, [r7, #0x1c]
	mov r0, r7
	mov r2, #1
	str r4, [r7, #0x20]
	bl __load_buffer
	cmp r0, #0
	beq _020D4624
	cmp r0, #1
	mov r0, #1
	bne _020D460C
	strb r0, [r7, #0xd]
	mov r0, #0
	str r0, [r7, #0x28]
	b _020D4624
_020D460C:
	ldr r1, [r7, #8]
	bic r1, r1, #7
	str r1, [r7, #8]
	strb r0, [r7, #0xc]
	mov r0, #0
	str r0, [r7, #0x28]
_020D4624:
	ldr r1, [sp]
	mov r0, r7
	str r6, [r7, #0x1c]
	str sl, [r7, #0x20]
	add r5, r5, r1
	bl __prep_buffer
	mov r0, #0
	str r0, [r7, #0x28]
_020D4644:
	mov r0, r5
	mov r1, r8
	bl _u32_div_f
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end __fread

	arm_func_start __fwrite
__fwrite: ; 0x020D4658
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r3
	mov sl, r0
	str r1, [sp]
	mov r0, sb
	mov r1, #0
	mov r4, r2
	bl fwide
	cmp r0, #0
	bne _020D4690
	mov r0, sb
	mvn r1, #0
	bl fwide
_020D4690:
	ldr r0, [sp]
	muls r5, r0, r4
	beq _020D46B8
	ldrb r0, [sb, #0xd]
	cmp r0, #0
	bne _020D46B8
	ldr r1, [sb, #4]
	mov r0, r1, lsl #0x16
	movs r0, r0, lsr #0x1d
	bne _020D46C4
_020D46B8:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D46C4:
	mov r0, r1, lsl #0x13
	movs r0, r0, lsr #0x1f
	movne r0, r1, lsl #0x19
	movne r0, r0, lsr #0x1e
	cmpne r0, #2
	ldr r1, [sb, #8]
	cmpne r0, #1
	mov r8, #1
	mov r0, r1, lsl #0x1d
	movne r8, #0
	movs r0, r0, lsr #0x1d
	bne _020D471C
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	tst r0, #2
	beq _020D471C
	bic r0, r1, #7
	orr r1, r0, #1
	mov r0, sb
	str r1, [sb, #8]
	bl __prep_buffer
_020D471C:
	ldr r0, [sb, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #1
	beq _020D4748
	mov r0, #1
	strb r0, [sb, #0xd]
	mov r0, #0
	add sp, sp, #8
	str r0, [sb, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D4748:
	cmp r5, #0
	mov r6, #0
	beq _020D4870
	ldr r0, [sb, #0x1c]
	ldr r2, [sb, #0x24]
	cmp r2, r0
	cmpeq r8, #0
	beq _020D4870
	ldr r1, [sb, #0x20]
	sub r0, r2, r0
	sub r0, r1, r0
	str r0, [sb, #0x28]
	mov fp, #0xa
	mov r4, #0
_020D4780:
	ldr r0, [sb, #0x28]
	mov r7, r4
	str r0, [sp, #4]
	cmp r0, r5
	strhi r5, [sp, #4]
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	bne _020D47D0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _020D47D0
	mov r0, sl
	mov r1, fp
	bl __memrchr
	movs r7, r0
	addne r0, r7, #1
	subne r0, r0, sl
	strne r0, [sp, #4]
_020D47D0:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _020D4810
	ldr r0, [sb, #0x24]
	mov r1, sl
	bl memcpy
	ldr r2, [sp, #4]
	ldr r0, [sb, #0x24]
	add sl, sl, r2
	add r0, r0, r2
	str r0, [sb, #0x24]
	ldr r1, [sb, #0x28]
	ldr r0, [sp, #4]
	sub r5, r5, r2
	sub r0, r1, r0
	str r0, [sb, #0x28]
_020D4810:
	ldr r0, [sb, #0x28]
	cmp r0, #0
	beq _020D4834
	cmp r7, #0
	bne _020D4834
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1e
	bne _020D485C
_020D4834:
	mov r0, sb
	mov r1, #0
	bl __flush_buffer
	cmp r0, #0
	beq _020D485C
	mov r0, #1
	strb r0, [sb, #0xd]
	mov r5, #0
	str r5, [sb, #0x28]
	b _020D4870
_020D485C:
	ldr r0, [sp, #4]
	cmp r5, #0
	add r6, r6, r0
	cmpne r8, #0
	bne _020D4780
_020D4870:
	cmp r5, #0
	beq _020D48DC
	cmp r8, #0
	bne _020D48DC
	ldr r4, [sb, #0x1c]
	ldr r7, [sb, #0x20]
	add r2, sl, r5
	str sl, [sb, #0x1c]
	str r5, [sb, #0x20]
	add r1, sp, #4
	mov r0, sb
	str r2, [sb, #0x24]
	bl __flush_buffer
	cmp r0, #0
	ldreq r0, [sp, #4]
	addeq r6, r6, r0
	beq _020D48C4
	mov r0, #1
	strb r0, [sb, #0xd]
	mov r0, #0
	str r0, [sb, #0x28]
_020D48C4:
	str r4, [sb, #0x1c]
	mov r0, sb
	str r7, [sb, #0x20]
	bl __prep_buffer
	mov r0, #0
	str r0, [sb, #0x28]
_020D48DC:
	ldr r0, [sb, #4]
	ldr r1, [sp]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	cmp r0, #2
	movne r0, #0
	strne r0, [sb, #0x28]
	mov r0, r6
	bl _u32_div_f
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end __fwrite
