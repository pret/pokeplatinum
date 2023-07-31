	.include "macros/function.inc"
	.include "include/sceneoptmovuser.inc"

	

	.text


	arm_func_start ov18_02232898
ov18_02232898: ; 0x02232898
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	bl ov18_0222FA84
	mov r5, r0
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r1, _0223295C ; =0x02253304
	mov r2, #0
	strb r2, [r1, #1]
	mov r4, r0
	strb r2, [r1]
	bl ov18_02232968
	mov r0, #0
	add r1, sp, #0x10
	mov r2, #0x16
	bl MIi_CpuClear16
	ldrb r2, [r5, #1]
	add r0, r5, #2
	add r1, sp, #0x10
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r1, sp, #0x10
	str r1, [sp, #0xc]
	mov r0, r4
	mov r1, #8
	mov r2, #0x35
	mov r3, #0xf0
	bl ov18_02244A9C
	mov r0, r4
	bl ov18_02244C08
	ldr r0, _02232960 ; =ov18_02232C5C
	bl ov18_0222FA60
	mov r1, #4
	mov r2, #0
	mov r0, #0x1d
	sub r3, r1, #5
	str r2, [sp]
	bl ov18_0223FC48
	ldr r0, _02232964 ; =ov18_022329E8
	bl ov18_0222F6C4
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223295C: .word Unk_ov18_02253304
_02232960: .word ov18_02232C5C
_02232964: .word ov18_022329E8
	arm_func_end ov18_02232898

	arm_func_start ov18_02232968
ov18_02232968: ; 0x02232968
	stmfd sp!, {r3, lr}
	ldr r0, _022329D8 ; =0x0224A0B8
	ldr r1, _022329DC ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _022329E0 ; =0x04001008
	ldr r1, _022329E4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022329D8: .word Unk_ov18_0224A0B8
_022329DC: .word GX_LoadBG2Scr
_022329E0: .word 0x04001008
_022329E4: .word 0x0400000A
	arm_func_end ov18_02232968

	arm_func_start ov18_022329E8
ov18_022329E8: ; 0x022329E8
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02232A18 ; =ov18_02232A1C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232A18: .word ov18_02232A1C
	arm_func_end ov18_022329E8

	arm_func_start ov18_02232A1C
ov18_02232A1C: ; 0x02232A1C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02232A3C ; =ov18_02232A40
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232A3C: .word ov18_02232A40
	arm_func_end ov18_02232A1C

	arm_func_start ov18_02232A40
ov18_02232A40: ; 0x02232A40
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	ldr r0, _02232A60 ; =ov18_02232A64
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232A60: .word ov18_02232A64
	arm_func_end ov18_02232A40

	arm_func_start ov18_02232A64
ov18_02232A64: ; 0x02232A64
	stmfd sp!, {r3, lr}
	bl ov18_02232AD4
	bl ov18_02232AD8
	bl ov18_0223FFB8
	cmp r0, #0
	beq _02232A88
	cmp r0, #1
	beq _02232AA0
	ldmia sp!, {r3, pc}
_02232A88:
	ldr r1, _02232ACC ; =0x02253304
	mov r2, #0
	mov r0, #7
	strb r2, [r1, #1]
	bl ov18_0223E994
	b _02232AB4
_02232AA0:
	ldr r1, _02232ACC ; =0x02253304
	mov r2, #1
	mov r0, #0xe
	strb r2, [r1, #1]
	bl ov18_0223E994
_02232AB4:
	mov r0, #0
	bl ov18_0222FA60
	bl ov18_0223FF74
	ldr r0, _02232AD0 ; =ov18_02232ADC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232ACC: .word Unk_ov18_02253304
_02232AD0: .word ov18_02232ADC
	arm_func_end ov18_02232A64

	arm_func_start ov18_02232AD4
ov18_02232AD4: ; 0x02232AD4
	bx lr
	arm_func_end ov18_02232AD4

	arm_func_start ov18_02232AD8
ov18_02232AD8: ; 0x02232AD8
	bx lr
	arm_func_end ov18_02232AD8

	arm_func_start ov18_02232ADC
ov18_02232ADC: ; 0x02232ADC
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02232B30 ; =0x02253304
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232B10
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02232B10:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02232B34 ; =ov18_02232B38
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232B30: .word Unk_ov18_02253304
_02232B34: .word ov18_02232B38
	arm_func_end ov18_02232ADC

	arm_func_start ov18_02232B38
ov18_02232B38: ; 0x02232B38
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02232B8C ; =0x02253304
	ldrb r1, [r0]
	cmp r1, #0
	ldreqb r0, [r0, #1]
	cmpeq r0, #1
	bne _02232B7C
	bl ov18_0222FA78
	b _02232B80
_02232B7C:
	bl ov18_0222F9E8
_02232B80:
	ldr r0, _02232B90 ; =ov18_02232B94
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232B8C: .word Unk_ov18_02253304
_02232B90: .word ov18_02232B94
	arm_func_end ov18_02232B38

	arm_func_start ov18_02232B94
ov18_02232B94: ; 0x02232B94
	stmfd sp!, {r3, lr}
	ldr r0, _02232C4C ; =0x02253304
	ldrb r1, [r0]
	cmp r1, #0
	bne _02232BB4
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232BC0
_02232BB4:
	bl ov18_0222FA44
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
_02232BC0:
	mov r0, #0
	bl ov18_022448E0
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02232C4C ; =0x02253304
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232BF4
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_02232BF4:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02232C4C ; =0x02253304
	ldrb r1, [r0]
	cmp r1, #0
	beq _02232C1C
	ldr r0, _02232C50 ; =ov18_02232530
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02232C1C:
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232C40
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	ldr r0, _02232C54 ; =ov18_02231230
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02232C40:
	ldr r0, _02232C58 ; =ov18_02231948
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232C4C: .word Unk_ov18_02253304
_02232C50: .word ov18_02232530
_02232C54: .word ov18_02231230
_02232C58: .word ov18_02231948
	arm_func_end ov18_02232B94

	arm_func_start ov18_02232C5C
ov18_02232C5C: ; 0x02232C5C
	ldr r0, _02232C6C ; =0x02253304
	mov r1, #1
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02232C6C: .word Unk_ov18_02253304
	arm_func_end ov18_02232C5C

	.data


	.global Unk_ov18_0224A0B8
Unk_ov18_0224A0B8: ; 0x0224A0B8
	.ascii "char/jb5Move.nsc.l"
	.space 0x2



	.bss


	.global Unk_ov18_02253304
Unk_ov18_02253304: ; 0x02253304
	.space 0x1

	.global Unk_ov18_02253305
Unk_ov18_02253305: ; 0x02253305
	.space 0x3

