	.include "macros/function.inc"
	.include "overlay061/ov61_0222DCDC.inc"

	

	.text


	arm_func_start ov61_0222DCDC
ov61_0222DCDC: ; 0x0222DCDC
	ldr ip, _0222DCF0 ; =ov61_0222CF40
	mov r2, r0
	ldr r0, _0222DCF4 ; =0x0222E63C
	ldr r1, _0222DCF8 ; =0x00003070
	bx ip
	; .align 2, 0
_0222DCF0: .word ov61_0222CF40
_0222DCF4: .word 0x0222E63C
_0222DCF8: .word 0x00003070
	arm_func_end ov61_0222DCDC

	arm_func_start ov61_0222DCFC
ov61_0222DCFC: ; 0x0222DCFC
	ldr ip, _0222DD04 ; =ov61_0222CEDC
	bx ip
	; .align 2, 0
_0222DD04: .word ov61_0222CEDC
	arm_func_end ov61_0222DCFC

	arm_func_start ov61_0222DD08
ov61_0222DD08: ; 0x0222DD08
	stmfd sp!, {r4, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	mov r4, r0
	bl ov61_0222D4DC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov61_0222DD08

	arm_func_start ov61_0222DD24
ov61_0222DD24: ; 0x0222DD24
	ldr ip, _0222DD2C ; =ov61_0222D464
	bx ip
	; .align 2, 0
_0222DD2C: .word ov61_0222D464
	arm_func_end ov61_0222DD24

	arm_func_start ov61_0222DD30
ov61_0222DD30: ; 0x0222DD30
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xe0
	mov r6, r0
	add lr, sp, #0
	mov r5, r1
	mov r4, r6
	mov ip, #0xe
_0222DD4C:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DD4C
	ldr r1, _0222DD84 ; =0x0222E658
	mov r0, r6
	bl ov61_0222E478
	ldr r0, _0222DD88 ; =0x00004E20
	add r1, sp, #0
	mov r2, r5
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0xe0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222DD84: .word 0x0222E658
_0222DD88: .word 0x00004E20
	arm_func_end ov61_0222DD30

	arm_func_start ov61_0222DD8C
ov61_0222DD8C: ; 0x0222DD8C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov lr, #0
	mov ip, r0, asr #0x1f
	str r0, [sp, #4]
	mov r2, r1
	ldr r0, _0222DDC8 ; =0x00004E21
	add r1, sp, #0
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	str ip, [sp, #8]
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_0222DDC8: .word 0x00004E21
	arm_func_end ov61_0222DD8C

	arm_func_start ov61_0222DDCC
ov61_0222DDCC: ; 0x0222DDCC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x220
	mov r6, r1
	add lr, sp, #4
	mov r5, r2
	mov r4, r6
	str r0, [sp]
	mov ip, #0x21
_0222DDEC:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DDEC
	ldmia r4, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	ldr r1, _0222DE2C ; =0x0222E658
	mov r0, r6
	bl ov61_0222E478
	ldr r0, _0222DE30 ; =0x00005208
	add r1, sp, #0
	mov r2, r5
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x220
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222DE2C: .word 0x0222E658
_0222DE30: .word 0x00005208
	arm_func_end ov61_0222DDCC

	arm_func_start ov61_0222DE34
ov61_0222DE34: ; 0x0222DE34
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov lr, #0
	mov ip, r0, asr #0x1f
	str r0, [sp, #4]
	mov r2, r1
	ldr r0, _0222DE70 ; =0x00005209
	add r1, sp, #0
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	str ip, [sp, #8]
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_0222DE70: .word 0x00005209
	arm_func_end ov61_0222DE34

	arm_func_start ov61_0222DE74
ov61_0222DE74: ; 0x0222DE74
	ldr ip, _0222DE7C ; =ov61_0222D430
	bx ip
	; .align 2, 0
_0222DE7C: .word ov61_0222D430
	arm_func_end ov61_0222DE74

	arm_func_start ov61_0222DE80
ov61_0222DE80: ; 0x0222DE80
	ldr ip, _0222DE88 ; =ov61_0222D3F8
	bx ip
	; .align 2, 0
_0222DE88: .word ov61_0222D3F8
	arm_func_end ov61_0222DE80

	arm_func_start ov61_0222DE8C
ov61_0222DE8C: ; 0x0222DE8C
	ldr ip, _0222DE94 ; =ov61_0222E2A8
	bx ip
	; .align 2, 0
_0222DE94: .word ov61_0222E2A8
	arm_func_end ov61_0222DE8C

	arm_func_start ov61_0222DE98
ov61_0222DE98: ; 0x0222DE98
	ldr ip, _0222DEB0 ; =ov61_0222D1FC
	mov r1, #0
	mov r2, r0
	ldr r0, _0222DEB4 ; =0x000055F0
	sub r3, r1, #1
	bx ip
	; .align 2, 0
_0222DEB0: .word ov61_0222D1FC
_0222DEB4: .word 0x000055F0
	arm_func_end ov61_0222DE98

	arm_func_start ov61_0222DEB8
ov61_0222DEB8: ; 0x0222DEB8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r4, r1
	add lr, sp, #0
	ldmia r5!, {r0, r1, r2, r3}
	mov ip, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	mov r1, ip
	str r0, [lr]
	ldr r0, _0222DF04 ; =0x000055F1
	mov r2, r4
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0222DF04: .word 0x000055F1
	arm_func_end ov61_0222DEB8

	arm_func_start ov61_0222DF08
ov61_0222DF08: ; 0x0222DF08
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14c
	sub sp, sp, #0x1c00
	add lr, sp, #0
	mov r5, r0
	mov r4, r1
	mov ip, #0x1d4
_0222DF24:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DF24
	ldmia r5, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	ldr r0, _0222DF5C ; =0x000059D8
	add r1, sp, #0
	mov r2, r4
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x14c
	add sp, sp, #0x1c00
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0222DF5C: .word 0x000059D8
	arm_func_end ov61_0222DF08

	arm_func_start ov61_0222DF60
ov61_0222DF60: ; 0x0222DF60
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov lr, #0
	add ip, sp, #4
	strh lr, [sp]
	mov r4, r1
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r0, _0222DFA4 ; =0x000059D9
	add r1, sp, #0
	mov r2, r4
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0222DFA4: .word 0x000059D9
	arm_func_end ov61_0222DF60

	arm_func_start ov61_0222DFA8
ov61_0222DFA8: ; 0x0222DFA8
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	mov r2, r1
	add r1, sp, #0
	mov ip, #0
	mov r3, #1
	str ip, [r1]
	strh r3, [sp]
	str ip, [r1, #4]
	str ip, [r1, #8]
	str ip, [r1, #0xc]
	str ip, [r1, #0x10]
	str ip, [r1, #0x14]
	str ip, [r1, #0x18]
	ldr ip, [r0]
	ldr r0, _0222DFFC ; =0x000059D9
	sub r3, r3, #2
	str ip, [sp, #0xc]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	; .align 2, 0
_0222DFFC: .word 0x000059D9
	arm_func_end ov61_0222DFA8

	arm_func_start ov61_0222E000
ov61_0222E000: ; 0x0222E000
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	mov r2, r1
	add r1, sp, #0
	mov ip, #0
	mov r3, #2
	str ip, [r1]
	strh r3, [sp]
	str ip, [r1, #4]
	str ip, [r1, #8]
	str ip, [r1, #0xc]
	str ip, [r1, #0x10]
	str ip, [r1, #0x14]
	str ip, [r1, #0x18]
	ldr ip, [r0]
	ldr r0, _0222E054 ; =0x000059D9
	sub r3, r3, #3
	str ip, [sp, #0xc]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	; .align 2, 0
_0222E054: .word 0x000059D9
	arm_func_end ov61_0222E000

	arm_func_start ov61_0222E058
ov61_0222E058: ; 0x0222E058
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r2, r3
	ldr r0, _0222E088 ; =0x000059DA
	add r1, sp, #0
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_0222E088: .word 0x000059DA
	arm_func_end ov61_0222E058

	arm_func_start ov61_0222E08C
ov61_0222E08C: ; 0x0222E08C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0222E0B4 ; =0x000059DB
	add r1, sp, #0
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222E0B4: .word 0x000059DB
	arm_func_end ov61_0222E08C
	.data


	.global Unk_ov61_0222E63C
Unk_ov61_0222E63C: ; 0x0222E63C
	.incbin "incbin/overlay61_data.bin", 0x3C, 0x58 - 0x3C

	.global Unk_ov61_0222E658
Unk_ov61_0222E658: ; 0x0222E658
	.incbin "incbin/overlay61_data.bin", 0x58, 0x3

