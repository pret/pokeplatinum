	.include "macros/function.inc"
	.include "include/ov5_021EEF34.inc"

	

	.text


	thumb_func_start ov5_021EEF34
ov5_021EEF34: ; 0x021EEF34
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	mov r2, #0x18
	add r4, r1, #0
	bl sub_020C4B4C
	add r0, r5, #0
	mov r1, #4
	add r2, sp, #0
	bl sub_02006E18
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_02006E18
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #4
	bl sub_02006E18
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #2
	add r2, #8
	bl sub_02006E18
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #2
	add r2, #0xc
	bl sub_02006E18
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #2
	add r2, #0x10
	bl sub_02006E18
	add r4, #0x14
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_02006E18
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EEF34

	thumb_func_start ov5_021EEF98
ov5_021EEF98: ; 0x021EEF98
	push {r3, r4, r5, lr}
	add r3, r0, #0
	add r0, r2, #0
	ldr r2, [r0, #0]
	mov r4, #0
	str r2, [r1, #0x10]
	ldr r2, [r3, #0]
	lsl r2, r2, #3
	add r2, r4, r2
	ldr r4, [r0, #0]
	add r4, r4, r2
	str r4, [r1, #0x14]
	ldr r5, [r3, #4]
	mov r4, #0xc
	mul r4, r5
	add r2, r2, r4
	ldr r4, [r0, #0]
	add r4, r4, r2
	str r4, [r1, #4]
	ldr r4, [r3, #8]
	lsl r4, r4, #2
	add r2, r2, r4
	ldr r4, [r0, #0]
	add r4, r4, r2
	str r4, [r1, #0]
	ldr r4, [r3, #0xc]
	lsl r4, r4, #3
	add r2, r2, r4
	ldr r4, [r0, #0]
	add r4, r4, r2
	str r4, [r1, #8]
	ldr r4, [r3, #0x10]
	ldr r0, [r0, #0]
	lsl r4, r4, #3
	add r2, r2, r4
	add r0, r0, r2
	str r0, [r1, #0xc]
	ldr r0, [r3, #0x14]
	lsl r0, r0, #1
	add r1, r2, r0
	mov r0, #9
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021EEFF4
	bl sub_02022974
_021EEFF4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EEF98

	thumb_func_start ov5_021EEFF8
ov5_021EEFF8: ; 0x021EEFF8
	add r3, r1, #0
	ldr r1, [r2, #0]
	ldr r2, [r3, #0x10]
	ldr r3, _021EF004 ; =sub_02006E18
	lsl r1, r1, #3
	bx r3
	; .align 2, 0
_021EF004: .word sub_02006E18
	thumb_func_end ov5_021EEFF8

	thumb_func_start ov5_021EF008
ov5_021EF008: ; 0x021EF008
	ldr r2, [r2, #4]
	add r3, r1, #0
	mov r1, #0xc
	mul r1, r2
	ldr r2, [r3, #0x14]
	ldr r3, _021EF018 ; =sub_02006E18
	bx r3
	nop
_021EF018: .word sub_02006E18
	thumb_func_end ov5_021EF008

	thumb_func_start ov5_021EF01C
ov5_021EF01C: ; 0x021EF01C
	add r3, r1, #0
	ldr r1, [r2, #8]
	ldr r2, [r3, #4]
	ldr r3, _021EF028 ; =sub_02006E18
	lsl r1, r1, #2
	bx r3
	; .align 2, 0
_021EF028: .word sub_02006E18
	thumb_func_end ov5_021EF01C

	thumb_func_start ov5_021EF02C
ov5_021EF02C: ; 0x021EF02C
	add r3, r1, #0
	ldr r1, [r2, #0xc]
	ldr r2, [r3, #0]
	ldr r3, _021EF038 ; =sub_02006E18
	lsl r1, r1, #3
	bx r3
	; .align 2, 0
_021EF038: .word sub_02006E18
	thumb_func_end ov5_021EF02C

	thumb_func_start ov5_021EF03C
ov5_021EF03C: ; 0x021EF03C
	add r3, r1, #0
	ldr r1, [r2, #0x10]
	ldr r2, [r3, #8]
	ldr r3, _021EF048 ; =sub_02006E18
	lsl r1, r1, #3
	bx r3
	; .align 2, 0
_021EF048: .word sub_02006E18
	thumb_func_end ov5_021EF03C

	thumb_func_start ov5_021EF04C
ov5_021EF04C: ; 0x021EF04C
	add r3, r1, #0
	ldr r1, [r2, #0x14]
	ldr r2, [r3, #0xc]
	ldr r3, _021EF058 ; =sub_02006E18
	lsl r1, r1, #1
	bx r3
	; .align 2, 0
_021EF058: .word sub_02006E18
	thumb_func_end ov5_021EF04C

	thumb_func_start ov5_021EF05C
ov5_021EF05C: ; 0x021EF05C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #1
	bne _021EF070
	add r0, r4, #0
	mov r1, #2
	add r0, #0x68
	strb r1, [r0]
_021EF070:
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EF084
	cmp r0, #1
	beq _021EF0B6
	cmp r0, #2
	beq _021EF102
	b _021EF116
_021EF084:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021EF094
	mov r2, #0
	b _021EF116
_021EF094:
	add r1, r4, #0
	ldr r0, [r4, #0x7c]
	add r1, #0x4c
	bl ov5_021EEF34
	add r2, r4, #0
	ldr r1, [r4, #0x5c]
	ldr r0, [r4, #0x70]
	add r2, #0x6c
	str r1, [r0, #0x1c]
	add r0, r4, #0
	ldr r1, [r4, #0x70]
	add r0, #0x4c
	bl ov5_021EEF98
	mov r2, #1
	b _021EF116
_021EF0B6:
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov5_021EEFF8
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov5_021EF008
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov5_021EF01C
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov5_021EF02C
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov5_021EF03C
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov5_021EF04C
	mov r2, #1
	b _021EF116
_021EF102:
	ldr r0, [r4, #0x78]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_021EF116:
	cmp r2, #1
	bne _021EF138
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x68
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	cmp r0, #2
	bne _021EF138
	ldr r0, [r4, #0x70]
	mov r1, #1
	str r1, [r0, #0x18]
_021EF138:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF05C

	thumb_func_start ov5_021EF13C
ov5_021EF13C: ; 0x021EF13C
	push {r3, lr}
	mov r0, #4
	mov r1, #0x20
	bl sub_02018144
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	pop {r3, pc}
	thumb_func_end ov5_021EF13C

	thumb_func_start ov5_021EF158
ov5_021EF158: ; 0x021EF158
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #4
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018184
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021EEF34
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	str r0, [r5, #0x1c]
	add r0, r4, #0
	add r2, sp, #0x1c
	bl ov5_021EEF98
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov5_021EEFF8
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov5_021EF008
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov5_021EF01C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov5_021EF02C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov5_021EF03C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov5_021EF04C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	str r0, [r5, #0x18]
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov5_021EF158

	thumb_func_start ov5_021EF1D0
ov5_021EF1D0: ; 0x021EF1D0
	push {r3, lr}
	cmp r0, #0
	beq _021EF1DA
	bl sub_020181C4
_021EF1DA:
	pop {r3, pc}
	thumb_func_end ov5_021EF1D0

	thumb_func_start ov5_021EF1DC
ov5_021EF1DC: ; 0x021EF1DC
	cmp r0, #0
	beq _021EF1EE
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
_021EF1EE:
	bx lr
	thumb_func_end ov5_021EF1DC

	thumb_func_start ov5_021EF1F0
ov5_021EF1F0: ; 0x021EF1F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #0x88
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018184
	add r1, r0, #0
	add r2, r1, #0
	mov r0, #0
	add r2, #0x68
	strb r0, [r2]
	add r2, r1, #0
	str r5, [r1, #0x7c]
	add r2, #0x80
	str r4, [r2, #0]
	str r6, [r1, #0x70]
	str r7, [r1, #0x78]
	str r0, [r1, #0x74]
	str r0, [r1, #0x64]
	str r0, [r1, #0x48]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r1, #0x6c]
	add r0, r1, #0
	add r0, #0x84
	str r2, [r0, #0]
	ldr r0, _021EF238 ; =ov5_021EF05C
	mov r2, #1
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF238: .word ov5_021EF05C
	thumb_func_end ov5_021EF1F0

	thumb_func_start ov5_021EF23C
ov5_021EF23C: ; 0x021EF23C
	push {r3, lr}
	bl sub_0201CED0
	mov r1, #1
	str r1, [r0, #0x74]
	pop {r3, pc}
	thumb_func_end ov5_021EF23C

	thumb_func_start ov5_021EF248
ov5_021EF248: ; 0x021EF248
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EF248