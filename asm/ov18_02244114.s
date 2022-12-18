	.include "macros/function.inc"
	.include "include/ov18_02244114.inc"

	

	.text


	arm_func_start ov18_02244114
ov18_02244114: ; 0x02244114
	stmfd sp!, {r3, lr}
	mov r0, #0x18
	mov r1, #4
	bl ov18_02245068
	ldr r2, _02244150 ; =0x022533BC
	mov r1, #0x3f
	str r0, [r2, #0]
	ldr r0, _02244154 ; =0x04000050
	mov r2, #0x10
	bl sub_020BF578
	ldr r0, _02244158 ; =0x04001050
	mov r1, #0x3f
	mov r2, #0x10
	bl sub_020BF578
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02244150: .word 0x022533BC
_02244154: .word 0x04000050
_02244158: .word 0x04001050
	arm_func_end ov18_02244114

	arm_func_start ov18_0224415C
ov18_0224415C: ; 0x0224415C
	ldr ip, _02244168 ; =ov18_0224508C
	ldr r0, _0224416C ; =0x022533BC
	bx ip
	; .align 2, 0
_02244168: .word ov18_0224508C
_0224416C: .word 0x022533BC
	arm_func_end ov18_0224415C

	arm_func_start ov18_02244170
ov18_02244170: ; 0x02244170
	cmp r0, #1
	ldreq r0, _02244190 ; =0x022533BC
	ldreq r0, [r0]
	ldrne r0, _02244190 ; =0x022533BC
	ldrne r0, [r0]
	addne r0, r0, #0xc
	ldrb r0, [r0, #9]
	bx lr
	; .align 2, 0
_02244190: .word 0x022533BC
	arm_func_end ov18_02244170

	arm_func_start ov18_02244194
ov18_02244194: ; 0x02244194
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _02244258 ; =0x0224971C
	mov r5, r0
	ldrb r0, [r4, #0xb]
	ldrb r6, [r4, #8]
	ldrb lr, [r4, #9]
	strb r0, [sp, #3]
	cmp r1, #1
	ldreq r0, _0224425C ; =0x022533BC
	strb r6, [sp]
	ldreq r6, [r0]
	ldrne r0, _0224425C ; =0x022533BC
	ldrb ip, [r4, #0xa]
	ldrne r0, [r0]
	mov r4, r3
	addne r6, r0, #0xc
	ldrb r0, [r6, #9]
	strb lr, [sp, #1]
	strb ip, [sp, #2]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	cmp r1, #1
	add r0, sp, #0
	mov r1, r2
	bne _02244214
	ldrsb r2, [r0, r5]
	ldr r0, _02244260 ; =0x04001050
	bl sub_020BF578
	b _02244220
_02244214:
	ldrsb r2, [r0, r5]
	ldr r0, _02244264 ; =0x04000050
	bl sub_020BF578
_02244220:
	ldr r1, _02244268 ; =ov18_0224426C
	mov r2, r6
	mov r0, #1
	mov r3, #0xc8
	bl ov18_02246304
	str r0, [r6, #0]
	mov r0, #0
	strh r0, [r6, #4]
	strb r5, [r6, #8]
	strh r4, [r6, #6]
	mov r0, #1
	strb r0, [r6, #9]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02244258: .word 0x0224971C
_0224425C: .word 0x022533BC
_02244260: .word 0x04001050
_02244264: .word 0x04000050
_02244268: .word ov18_0224426C
	arm_func_end ov18_02244194

	arm_func_start ov18_0224426C
ov18_0224426C: ; 0x0224426C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	ldr r2, _02244384 ; =0x0224971C
	mov r4, r1
	ldrsh r1, [r4, #4]
	ldrb sb, [r2, #4]
	ldrb r8, [r2, #5]
	ldrb r7, [r2, #6]
	ldrb r6, [r2, #7]
	ldrb lr, [r2]
	ldrb ip, [r2, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	add r1, r1, #1
	mov r5, r0
	strh r1, [r4, #4]
	ldrsh r0, [r4, #4]
	ldrh r1, [r4, #6]
	strb sb, [sp, #4]
	mov r0, r0, lsl #4
	strb r8, [sp, #5]
	strb r7, [sp, #6]
	strb r6, [sp, #7]
	strb lr, [sp]
	strb ip, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	bl sub_020BD104
	ldrb r3, [r4, #8]
	add r2, sp, #4
	mov r1, r0
	ldrb r0, [r2, r3]
	tst r0, #1
	rsbne r1, r1, #0x10
	tst r0, #0x10
	ldr r0, _02244388 ; =0x022533BC
	rsbne r1, r1, #0
	ldr r0, [r0, #0]
	cmp r4, r0
	bne _02244318
	ldr r0, _0224438C ; =0x04001050
	bl sub_020BF5E8
	b _02244320
_02244318:
	ldr r0, _02244390 ; =0x04000050
	bl sub_020BF5E8
_02244320:
	ldrsh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	addlt sp, sp, #8
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _02244388 ; =0x022533BC
	ldrb r2, [r4, #8]
	ldr r0, [r0, #0]
	add r1, sp, #0
	cmp r4, r0
	bne _0224435C
	ldrsb r1, [r1, r2]
	ldr r0, _0224438C ; =0x04001050
	bl sub_020BF5E8
	b _02244368
_0224435C:
	ldrsb r1, [r1, r2]
	ldr r0, _02244390 ; =0x04000050
	bl sub_020BF5E8
_02244368:
	mov r2, #0
	mov r1, r5
	mov r0, #1
	strb r2, [r4, #9]
	bl ov18_022463AC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02244384: .word 0x0224971C
_02244388: .word 0x022533BC
_0224438C: .word 0x04001050
_02244390: .word 0x04000050
	arm_func_end ov18_0224426C

	arm_func_start ov18_02244394
ov18_02244394: ; 0x02244394
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _022443E4 ; =0x022533BC
	mov r5, r0
	ldr r4, [r1, #0]
	ldrb r0, [r4, #9]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, _022443E8 ; =ov18_022443EC
	mov r2, r4
	mov r0, #1
	mov r3, #0xc8
	bl ov18_02246304
	str r0, [r4, #0]
	mov r0, #0
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	mov r0, #1
	strb r0, [r4, #9]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022443E4: .word 0x022533BC
_022443E8: .word ov18_022443EC
	arm_func_end ov18_02244394

	arm_func_start ov18_022443EC
ov18_022443EC: ; 0x022443EC
	stmfd sp!, {r3, lr}
	ldrsh r2, [r1, #4]
	add r2, r2, #1
	strh r2, [r1, #4]
	ldrsh r3, [r1, #4]
	ldrh r2, [r1, #6]
	cmp r3, r2
	ldmltia sp!, {r3, pc}
	mov r2, #0
	strb r2, [r1, #9]
	mov r1, r0
	mov r0, #1
	bl ov18_022463AC
	ldmia sp!, {r3, pc}
	arm_func_end ov18_022443EC

	.rodata


	.global Unk_ov18_0224971C
Unk_ov18_0224971C: ; 0x0224971C
	.incbin "incbin/overlay18_rodata.bin", 0x32E8, 0x32EC - 0x32E8

	.global Unk_ov18_02249720
Unk_ov18_02249720: ; 0x02249720
	.incbin "incbin/overlay18_rodata.bin", 0x32EC, 0x32F0 - 0x32EC

	.global Unk_ov18_02249724
Unk_ov18_02249724: ; 0x02249724
	.incbin "incbin/overlay18_rodata.bin", 0x32F0, 0x4



	.bss


	.global Unk_ov18_022533BC
Unk_ov18_022533BC: ; 0x022533BC
	.space 0x4

