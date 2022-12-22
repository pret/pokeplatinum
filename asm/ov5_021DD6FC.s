	.include "macros/function.inc"
	.include "include/ov5_021DD6FC.inc"

	

	.text


	thumb_func_start ov5_021DD6FC
ov5_021DD6FC: ; 0x021DD6FC
	push {r4, r5, r6, lr}
	lsl r6, r1, #5
	add r5, r0, #0
	add r4, r2, #0
	add r1, r6, #0
	bl DC_FlushRange
	add r0, r5, #0
	lsl r1, r4, #5
	add r2, r6, #0
	bl GX_LoadBGPltt
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD6FC

	thumb_func_start ov5_021DD718
ov5_021DD718: ; 0x021DD718
	push {lr}
	sub sp, #0x14
	mov r3, #0
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	ldr r0, _021DD740 ; =0x00000197
	mov r2, #3
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x1c]
	add r1, #0x20
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_021DD740: .word 0x00000197
	thumb_func_end ov5_021DD718

	thumb_func_start ov5_021DD744
ov5_021DD744: ; 0x021DD744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, #0x31
	ldrb r0, [r0]
	add r3, r5, #0
	add r6, r2, #0
	lsl r0, r0, #0x19
	lsr r4, r0, #0x18
	mov r0, #4
	add r7, r1, #0
	str r0, [sp]
	mov r0, #0xa0
	add r1, r4, #0
	mov r2, #0
	add r3, #0x34
	bl sub_02006F50
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x34]
	add r1, r7, #0
	str r6, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #0x10]
	bl sub_0201958C
	mov r0, #0xa0
	add r1, r4, #1
	add r2, sp, #8
	mov r3, #4
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0xc]
	mov r1, #1
	bl ov5_021DD6FC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DD744

	thumb_func_start ov5_021DD7A0
ov5_021DD7A0: ; 0x021DD7A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r2, r1, #0
	add r2, #8
	add r6, r0, #0
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	lsl r0, r0, #3
	sub r2, r0, r1
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r0, r0, #1
	add r2, r0, #4
	cmp r2, #8
	blt _021DD7C6
	mov r3, #0
	b _021DD7D8
_021DD7C6:
	mov r0, #8
	sub r0, r0, r2
	lsl r0, r0, #1
	add r2, r0, #7
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r0, r0, #0x15
	lsr r3, r0, #0x18
_021DD7D8:
	cmp r1, #0
	bgt _021DD7E0
	mov r0, #0
	b _021DD7FA
_021DD7E0:
	add r2, r1, #0
	add r2, #8
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	add r0, r0, r3
	lsl r0, r0, #3
	add r0, #8
	sub r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
_021DD7FA:
	add r1, r0, #4
	add r0, r6, #0
	add r0, #0x30
	strb r1, [r0]
	mov r0, #0
	str r0, [sp]
	ldr r2, _021DD87C ; =0x000002D9
	add r0, r6, #0
	mov r1, #3
	mov r3, #7
	bl ov5_021DD744
	add r0, r6, #0
	add r0, #0x20
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	mov r4, #0
	str r0, [sp, #0x18]
	add r0, #0x20
	add r5, r4, #0
	str r0, [sp, #0x18]
_021DD828:
	add r0, r4, #0
	mov r1, #0x11
	bl _s32_div_f
	add r7, r1, #0
	add r0, r4, #0
	mov r1, #0x11
	bl _s32_div_f
	mov r1, #8
	str r1, [sp]
	str r1, [sp, #4]
	lsl r1, r7, #0x13
	lsr r1, r1, #0x10
	lsl r0, r0, #0x13
	lsl r2, r5, #0x10
	str r1, [sp, #8]
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r6, #0x34]
	ldr r0, [sp, #0x18]
	ldr r1, [r1, #0x14]
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0201ADDC
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x55
	blt _021DD828
	add r0, r6, #0
	add r0, #0x20
	bl sub_0201A954
	ldr r0, [r6, #0x38]
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DD87C: .word 0x000002D9
	thumb_func_end ov5_021DD7A0

	thumb_func_start ov5_021DD880
ov5_021DD880: ; 0x021DD880
	mov r1, #0
	str r1, [r0, #0]
	strb r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov5_021DD880

	thumb_func_start ov5_021DD894
ov5_021DD894: ; 0x021DD894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021DD880
	str r4, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD894

	thumb_func_start ov5_021DD8A4
ov5_021DD8A4: ; 0x021DD8A4
	push {r4, lr}
	add r4, r1, #0
	ldrb r0, [r4, #4]
	cmp r0, #3
	bhi _021DD950
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DD8BA: ; jump table
	.short _021DD950 - _021DD8BA - 2 ; case 0
	.short _021DD8C2 - _021DD8BA - 2 ; case 1
	.short _021DD900 - _021DD8BA - 2 ; case 2
	.short _021DD8EA - _021DD8BA - 2 ; case 3
_021DD8C2:
	ldr r0, [r4, #0xc]
	sub r0, r0, #4
	str r0, [r4, #0xc]
	bpl _021DD8CE
	mov r0, #0
	str r0, [r4, #0xc]
_021DD8CE:
	mov r1, #3
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	add r2, r1, #0
	bl sub_02019184
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021DD950
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #3
	strb r0, [r4, #4]
	pop {r4, pc}
_021DD8EA:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x10]
	cmp r0, #0x3c
	blo _021DD950
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #2
	strb r0, [r4, #4]
	pop {r4, pc}
_021DD900:
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	cmp r0, #0x26
	ble _021DD90E
	mov r0, #0x26
	str r0, [r4, #0xc]
_021DD90E:
	mov r1, #3
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	add r2, r1, #0
	bl sub_02019184
	ldr r0, [r4, #0xc]
	cmp r0, #0x26
	bne _021DD950
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021DD94A
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x40]
	bl sub_02071CFC
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021DD7A0
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl ov5_021DD954
	mov r0, #1
	strb r0, [r4, #4]
	pop {r4, pc}
_021DD94A:
	add r0, r4, #0
	bl ov5_021DDA78
_021DD950:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD8A4

	thumb_func_start ov5_021DD954
ov5_021DD954: ; 0x021DD954
	push {r3, lr}
	sub sp, #0x10
	add r3, r0, #0
	mov r0, #0x10
	add r2, r1, #0
	str r0, [sp]
	mov r1, #0
	ldr r0, _021DD97C ; =0x00030200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r3, #0
	str r1, [sp, #0xc]
	add r3, #0x30
	ldrb r3, [r3]
	add r0, #0x20
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, pc}
	nop
_021DD97C: .word 0x00030200
	thumb_func_end ov5_021DD954

	thumb_func_start ov5_021DD980
ov5_021DD980: ; 0x021DD980
	mov r1, #2
	strb r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021DD980

	thumb_func_start ov5_021DD98C
ov5_021DD98C: ; 0x021DD98C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x44
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x16
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DD894
	add r0, r4, #0
	bl ov5_021DD718
	ldr r2, _021DD9C4 ; =0x000001B1
	mov r0, #1
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [r4, #0x3c]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DD9C4: .word 0x000001B1
	thumb_func_end ov5_021DD98C

	thumb_func_start ov5_021DD9C8
ov5_021DD9C8: ; 0x021DD9C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0200B190
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A8FC
	ldr r0, [r4, #0x40]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov5_021DD9C8

	thumb_func_start ov5_021DD9E8
ov5_021DD9E8: ; 0x021DD9E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	str r1, [r4, #0x18]
	ldr r1, [r4, #0]
	add r5, r2, #0
	cmp r1, #0
	bne _021DDA3C
	mov r0, #1
	str r0, [r4, #0]
	mov r1, #3
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	mov r3, #0x26
	bl sub_02019184
	mov r0, #0x26
	str r0, [r4, #0xc]
	ldr r0, _021DDA74 ; =ov5_021DD8A4
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x40]
	bl sub_02071CFC
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x31
	strb r5, [r0]
	add r0, r4, #0
	bl ov5_021DD7A0
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl ov5_021DD954
	pop {r3, r4, r5, pc}
_021DDA3C:
	ldrb r1, [r4, #4]
	cmp r1, #3
	bhi _021DDA6E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DDA4E: ; jump table
	.short _021DDA6E - _021DDA4E - 2 ; case 0
	.short _021DDA56 - _021DDA4E - 2 ; case 1
	.short _021DDA64 - _021DDA4E - 2 ; case 2
	.short _021DDA56 - _021DDA4E - 2 ; case 3
_021DDA56:
	bl ov5_021DD980
	mov r0, #1
	str r0, [r4, #0x14]
	add r4, #0x31
	strb r5, [r4]
	pop {r3, r4, r5, pc}
_021DDA64:
	mov r0, #1
	str r0, [r4, #0x14]
	add r4, #0x31
	strb r5, [r4]
	pop {r3, r4, r5, pc}
_021DDA6E:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DDA74: .word ov5_021DD8A4
	thumb_func_end ov5_021DD9E8

	thumb_func_start ov5_021DDA78
ov5_021DDA78: ; 0x021DDA78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DDA86
	bl sub_0200DA58
_021DDA86:
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201ACF4
	mov r1, #3
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	bl ov5_021DD894
	pop {r4, pc}
	thumb_func_end ov5_021DDA78

	thumb_func_start ov5_021DDAA4
ov5_021DDAA4: ; 0x021DDAA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A154
	cmp r0, #0
	beq _021DDAE2
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A288
	cmp r0, #0
	bne _021DDAE2
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A154
	add r2, r0, #0
	beq _021DDAD8
	sub r2, r2, #1
_021DDAD8:
	ldr r0, [r5, #4]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl ov5_021DD9E8
_021DDAE2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DDAA4