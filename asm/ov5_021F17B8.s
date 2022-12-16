	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F17B8
ov5_021F17B8: ; 0x021F17B8
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F17E4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F17B8

	thumb_func_start ov5_021F17D4
ov5_021F17D4: ; 0x021F17D4
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F17F4
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F17D4

	thumb_func_start ov5_021F17E4
ov5_021F17E4: ; 0x021F17E4
	ldr r3, _021F17F0 ; =ov5_021DF9E0
	ldr r0, [r0, #0]
	mov r1, #2
	mov r2, #0x14
	bx r3
	nop
_021F17F0: .word ov5_021DF9E0
	thumb_func_end ov5_021F17E4

	thumb_func_start ov5_021F17F4
ov5_021F17F4: ; 0x021F17F4
	ldr r3, _021F17FC ; =ov5_021DFA08
	ldr r0, [r0, #0]
	mov r1, #2
	bx r3
	; .align 2, 0
_021F17FC: .word ov5_021DFA08
	thumb_func_end ov5_021F17F4

	thumb_func_start ov5_021F1800
ov5_021F1800: ; 0x021F1800
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062C00
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov5_021DF578
	mov r1, #1
	str r0, [sp, #0xc]
	bl ov5_021DF55C
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x18
	str r5, [sp, #0x14]
	bl sub_02063050
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _021F1848 ; =0x02200338
	add r2, sp, #0x18
	add r3, r4, #0
	bl ov5_021DF72C
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021F1848: .word 0x02200338
	thumb_func_end ov5_021F1800

	thumb_func_start ov5_021F184C
ov5_021F184C: ; 0x021F184C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	bl sub_02062910
	str r0, [r4, #0]
	ldr r0, [r4, #0x20]
	bl sub_02062918
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	bl sub_02062920
	str r0, [r4, #8]
	bl sub_020677F4
	cmp r0, #1
	bne _021F1896
	ldr r0, [r4, #0x20]
	bl sub_02067800
	str r0, [r4, #8]
_021F1896:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	mov r0, #0x40
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _021F18AE
	mov r0, #0
	str r0, [r4, #0x34]
_021F18AE:
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	add r2, sp, #0
	bl ov5_021F1A24
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021F1A8C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F184C

	thumb_func_start ov5_021F18D0
ov5_021F18D0: ; 0x021F18D0
	push {r3, lr}
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bne _021F18DE
	ldr r0, [r1, #0x24]
	bl sub_020211FC
_021F18DE:
	pop {r3, pc}
	thumb_func_end ov5_021F18D0

	thumb_func_start ov5_021F18E0
ov5_021F18E0: ; 0x021F18E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x20]
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02062920
	add r7, r0, #0
	bl sub_020677F4
	cmp r0, #1
	bne _021F1902
	ldr r0, [r4, #0x20]
	bl sub_02067800
	add r7, r0, #0
_021F1902:
	ldr r0, [r4, #8]
	cmp r0, r7
	bne _021F1920
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl sub_02062764
	cmp r0, #0
	beq _021F1920
	add r0, r6, #0
	bl sub_02062F64
	cmp r0, #0
	bne _021F192A
_021F1920:
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F192A:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	add r1, r1, r0
	mov r0, #0x12
	lsl r0, r0, #8
	str r1, [r4, #0x28]
	cmp r1, r0
	blt _021F1944
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
	b _021F1954
_021F1944:
	mov r0, #0xe
	lsl r0, r0, #8
	cmp r1, r0
	bgt _021F1954
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
_021F1954:
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov5_021F1A24
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021F1974
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021F1A8C
_021F1974:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F18E0

	thumb_func_start ov5_021F1978
ov5_021F1978: ; 0x021F1978
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r4, [r5, #0x20]
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02062920
	add r7, r0, #0
	bl sub_020677F4
	cmp r0, #1
	bne _021F199A
	ldr r0, [r5, #0x20]
	bl sub_02067800
	add r7, r0, #0
_021F199A:
	ldr r0, [r5, #8]
	cmp r0, r7
	bne _021F19B8
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl sub_02062764
	cmp r0, #0
	beq _021F19B8
	add r0, r4, #0
	bl sub_02062F64
	cmp r0, #0
	bne _021F19C2
_021F19B8:
	add r0, r6, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F19C2:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021F1A1E
	add r0, r4, #0
	bl sub_02062D58
	cmp r0, #1
	ldr r0, [r5, #0x24]
	bne _021F19DC
	mov r1, #0
	bl sub_02021320
	b _021F19E2
_021F19DC:
	mov r1, #1
	bl sub_02021320
_021F19E2:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r5, #0x24]
	add r1, sp, #0
	bl sub_020212A8
	add r1, r5, #0
	ldr r0, [r5, #0x24]
	add r1, #0x28
	bl sub_020212D0
	ldr r0, [r5, #0x20]
	bl ov5_021EB1A0
	add r4, r0, #0
	bl sub_02021358
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02021344
	add r0, r4, #0
	bl sub_02021394
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02021380
_021F1A1E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F1978

	thumb_func_start ov5_021F1A24
ov5_021F1A24: ; 0x021F1A24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _021F1A88 ; =0x0220032C
	add r4, r2, #0
	add r5, r0, #0
	str r1, [sp]
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	ldr r0, [sp]
	bl sub_02063078
	ldr r0, [r4, #8]
	add r1, r4, #0
	neg r6, r0
	ldr r0, [sp]
	ldr r7, [r4, #0]
	bl sub_02063050
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_020644A4
	ldr r1, [r4, #0]
	add r1, r1, r7
	str r1, [r4, #0]
	mov r1, #7
	lsl r1, r1, #0xc
	ldr r2, [r4, #8]
	sub r1, r6, r1
	add r1, r2, r1
	str r1, [r4, #8]
	cmp r0, #0
	bne _021F1A76
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F1A76:
	ldr r0, [r5, #0x10]
	ldr r2, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	sub r0, r2, r0
	str r0, [r4, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F1A88: .word 0x0220032C
	thumb_func_end ov5_021F1A24

	thumb_func_start ov5_021F1A8C
ov5_021F1A8C: ; 0x021F1A8C
	push {r4, r5, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02062A40
	ldr r1, [r4, #8]
	add r2, sp, #0
	bl ov5_021ED150
	cmp r0, #0
	beq _021F1AD2
	ldr r0, [r4, #0x20]
	bl ov5_021EDD94
	cmp r0, #1
	beq _021F1AD2
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl ov5_021DF9FC
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_020715E4
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	add r2, sp, #0x28
	bl ov5_021DF7F8
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0xc]
_021F1AD2:
	add sp, #0x34
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F1A8C

	thumb_func_start ov5_021F1AD8
ov5_021F1AD8: ; 0x021F1AD8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r6, r4, #0
	add r5, r0, #0
	add r6, #0x10
	add r3, sp, #0
	mov r2, #5
_021F1AE8:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F1AE8
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov5_021DF9FC
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_020715E4
	ldr r0, [r4, #8]
	add r1, sp, #0
	add r2, sp, #0x28
	bl ov5_021DF7F8
	str r0, [r4, #0x3c]
	ldr r5, [r4, #0x38]
	add r0, r5, #0
	bl sub_02021358
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02021344
	add r0, r5, #0
	bl sub_020213D4
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_020213A4
	add r0, r5, #0
	bl sub_02021394
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02021380
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02021368
	ldr r0, [r4, #0x3c]
	bl sub_02021414
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021F1AD8

	thumb_func_start ov5_021F1B4C
ov5_021F1B4C: ; 0x021F1B4C
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r3, _021F1BA0 ; =0x02200320
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r5, #0
	str r0, [r2, #0]
	add r3, #0x50
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	ldr r0, [r5, #4]
	bl sub_020644A4
	mov r1, #7
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r4, #8]
	cmp r0, #0
	bne _021F1B8C
	mov r0, #0
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, pc}
_021F1B8C:
	ldr r0, [r5, #0]
	ldr r2, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	sub r0, r2, r0
	str r0, [r4, #4]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021F1BA0: .word 0x02200320
	thumb_func_end ov5_021F1B4C

	thumb_func_start ov5_021F1BA4
ov5_021F1BA4: ; 0x021F1BA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov5_021DF574
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	str r5, [sp, #0xc]
	bl ov5_021DF55C
	str r0, [sp, #0x10]
	add r3, sp, #0x14
	mov r2, #5
_021F1BC6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F1BC6
	str r6, [sp, #0x3c]
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r1, _021F1BE8 ; =0x0220034C
	str r0, [sp, #4]
	ldr r3, [sp, #0x58]
	add r0, r5, #0
	add r2, r7, #0
	bl ov5_021DF72C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F1BE8: .word 0x0220034C
	thumb_func_end ov5_021F1BA4

	thumb_func_start ov5_021F1BEC
ov5_021F1BEC: ; 0x021F1BEC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r6, r0, #0
	add r3, r4, #4
	mov r2, #7
_021F1BFE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F1BFE
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #0]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	mov r0, #0x40
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0]
	cmp r0, #2
	bne _021F1C26
	mov r0, #0
	str r0, [r4, #0x4c]
_021F1C26:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x50
	bl sub_020715E4
	add r0, r4, #0
	add r1, sp, #0
	bl ov5_021F1B4C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021F1AD8
	add r0, r5, #0
	bl sub_0207153C
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021F1BEC

	thumb_func_start ov5_021F1C54
ov5_021F1C54: ; 0x021F1C54
	ldr r3, _021F1C5C ; =sub_020211FC
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021F1C5C: .word sub_020211FC
	thumb_func_end ov5_021F1C54

	thumb_func_start ov5_021F1C60
ov5_021F1C60: ; 0x021F1C60
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r2, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	add r2, r2, r0
	mov r0, #0x12
	lsl r0, r0, #8
	str r2, [r1, #0x40]
	cmp r2, r0
	blt _021F1C80
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	neg r0, r0
	str r0, [r1, #0x4c]
	b _021F1C90
_021F1C80:
	mov r0, #0xe
	lsl r0, r0, #8
	cmp r2, r0
	bgt _021F1C90
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	neg r0, r0
	str r0, [r1, #0x4c]
_021F1C90:
	add r0, r1, #0
	add r1, sp, #0
	bl ov5_021F1B4C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F1C60

	thumb_func_start ov5_021F1CA4
ov5_021F1CA4: ; 0x021F1CA4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_020212A8
	ldr r0, [r4, #0x3c]
	add r4, #0x40
	add r1, r4, #0
	bl sub_020212D0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F1CA4

	.rodata


	.global Unk_ov5_02200320
Unk_ov5_02200320: ; 0x02200320
	.incbin "incbin/overlay5_rodata.bin", 0x7A0C, 0x7A18 - 0x7A0C

	.global Unk_ov5_0220032C
Unk_ov5_0220032C: ; 0x0220032C
	.incbin "incbin/overlay5_rodata.bin", 0x7A18, 0x7A24 - 0x7A18

	.global Unk_ov5_02200338
Unk_ov5_02200338: ; 0x02200338
	.incbin "incbin/overlay5_rodata.bin", 0x7A24, 0x7A38 - 0x7A24

	.global Unk_ov5_0220034C
Unk_ov5_0220034C: ; 0x0220034C
	.incbin "incbin/overlay5_rodata.bin", 0x7A38, 0x14

