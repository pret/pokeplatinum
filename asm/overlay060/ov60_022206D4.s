	.include "macros/function.inc"
	.include "overlay060/ov60_022206D4.inc"

	

	.text


	arm_func_start ov60_022206D4
ov60_022206D4: ; 0x022206D4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	bne _022206F4
	ldr r0, _02220748 ; =0x022290FC
	ldr r1, _0222074C ; =0x02229108
	ldr r2, _02220750 ; =0x022290E0
	mov r3, #0x1b
	bl __msl_assertion_failed
_022206F4:
	ldr ip, [r5, #0x40]
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r4, #0
	movne r3, r4
	ldreq r4, [r5, #0xc0]
	ldreq r3, [r5, #0x100]
	ldr r0, [r5, #0x44]
	mov r2, r4
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x38]
	blx ip
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	moveq r0, #1
	streq r0, [r5, #0xd8]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02220748: .word Unk_ov60_022290FC
_0222074C: .word Unk_ov60_02229108
_02220750: .word Unk_ov60_022290E0
	arm_func_end ov60_022206D4

	arm_func_start ov60_02220754
ov60_02220754: ; 0x02220754
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _02220780
	ldr r0, _022207C4 ; =0x022290FC
	ldr r1, _022207C8 ; =0x02229108
	ldr r2, _022207CC ; =0x022290C8
	mov r3, #0x45
	bl __msl_assertion_failed
_02220780:
	ldr ip, [r6, #0x3c]
	cmp ip, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6, #0x100]
	mov r2, r5
	str r0, [sp]
	ldr r0, [r6, #0x104]
	mov r3, r4
	str r0, [sp, #4]
	ldr r0, [r6, #0x44]
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	blx ip
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_022207C4: .word Unk_ov60_022290FC
_022207C8: .word Unk_ov60_02229108
_022207CC: .word Unk_ov60_022290C8
	arm_func_end ov60_02220754

	arm_func_start ov60_022207D0
ov60_022207D0: ; 0x022207D0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	movs r4, r0
	bne _022207F4
	ldr r0, _02220838 ; =0x022290FC
	ldr r1, _0222083C ; =0x02229108
	ldr r2, _02220840 ; =0x022290B4
	mov r3, #0x5e
	bl __msl_assertion_failed
_022207F4:
	ldr r0, [r4, #0x150]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x140]
	bl ov4_021E9BBC
	str r0, [sp]
	ldr r0, [r4, #0x44]
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x148]
	ldr r2, [r4, #0x14c]
	ldr r3, [r4, #0x144]
	ldr ip, [r4, #0x150]
	blx ip
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02220838: .word Unk_ov60_022290FC
_0222083C: .word Unk_ov60_02229108
_02220840: .word Unk_ov60_022290B4
	arm_func_end ov60_022207D0

	.data


	.global Unk_ov60_022290B4
Unk_ov60_022290B4: ; 0x022290B4
	.incbin "incbin/overlay60_data.bin", 0x274, 0x288 - 0x274

	.global Unk_ov60_022290C8
Unk_ov60_022290C8: ; 0x022290C8
	.incbin "incbin/overlay60_data.bin", 0x288, 0x2A0 - 0x288

	.global Unk_ov60_022290E0
Unk_ov60_022290E0: ; 0x022290E0
	.incbin "incbin/overlay60_data.bin", 0x2A0, 0x2BC - 0x2A0

	.global Unk_ov60_022290FC
Unk_ov60_022290FC: ; 0x022290FC
	.incbin "incbin/overlay60_data.bin", 0x2BC, 0x2C8 - 0x2BC

	.global Unk_ov60_02229108
Unk_ov60_02229108: ; 0x02229108
	.incbin "incbin/overlay60_data.bin", 0x2C8, 0x11

