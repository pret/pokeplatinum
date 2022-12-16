	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov105_02245E54
ov105_02245E54: ; 0x02245E54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x10
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02245E6E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02245E6E
	mov r1, #0
	strh r1, [r4]
	str r5, [r4, #4]
	str r6, [r4, #8]
	str r1, [sp]
	str r1, [sp, #4]
	add r0, r7, #0
	mov r2, #6
	add r3, r1, #0
	bl ov105_02245BA4
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov105_02245F14
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02021E90
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_02245E54

	thumb_func_start ov105_02245EA8
ov105_02245EA8: ; 0x02245EA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov105_02245EA8

	thumb_func_start ov105_02245EBC
ov105_02245EBC: ; 0x02245EBC
	ldr r3, _02245EC4 ; =sub_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_02245EC4: .word sub_02021CAC
	thumb_func_end ov105_02245EBC

	thumb_func_start ov105_02245EC8
ov105_02245EC8: ; 0x02245EC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [sp]
	lsl r0, r6, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r7, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r1, ip
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	bl sub_02021D28
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r5, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov105_02245EC8

	thumb_func_start ov105_02245F14
ov105_02245F14: ; 0x02245F14
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {pc}
	thumb_func_end ov105_02245F14

	thumb_func_start ov105_02245F2C
ov105_02245F2C: ; 0x02245F2C
	ldr r3, _02245F34 ; =sub_02021D28
	ldr r0, [r0, #0xc]
	bx r3
	nop
_02245F34: .word sub_02021D28
	thumb_func_end ov105_02245F2C

	thumb_func_start ov105_02245F38
ov105_02245F38: ; 0x02245F38
	strh r1, [r0]
	bx lr
	thumb_func_end ov105_02245F38

	thumb_func_start ov105_02245F3C
ov105_02245F3C: ; 0x02245F3C
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end ov105_02245F3C

	thumb_func_start ov105_02245F44
ov105_02245F44: ; 0x02245F44
	ldr r3, _02245F4C ; =ov105_02245F38
	mov r1, #1
	bx r3
	nop
_02245F4C: .word ov105_02245F38
	thumb_func_end ov105_02245F44

	thumb_func_start ov105_02245F50
ov105_02245F50: ; 0x02245F50
	ldr r3, _02245F58 ; =ov105_02245F38
	mov r1, #0
	bx r3
	nop
_02245F58: .word ov105_02245F38
	thumb_func_end ov105_02245F50

	thumb_func_start ov105_02245F5C
ov105_02245F5C: ; 0x02245F5C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov105_02245F2C
	ldr r2, [r0, #0]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	add r1, #0xf8
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r0, [r0, #4]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02245F5C

	thumb_func_start ov105_02245F88
ov105_02245F88: ; 0x02245F88
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov105_02245F88

	thumb_func_start ov105_02245F8C
ov105_02245F8C: ; 0x02245F8C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov105_02245F8C

	thumb_func_start ov105_02245F90
ov105_02245F90: ; 0x02245F90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov105_02245F90

	thumb_func_start ov105_02245FAC
ov105_02245FAC: ; 0x02245FAC
	ldr r3, _02245FB4 ; =sub_02021E90
	ldr r0, [r0, #0xc]
	bx r3
	nop
_02245FB4: .word sub_02021E90
	thumb_func_end ov105_02245FAC