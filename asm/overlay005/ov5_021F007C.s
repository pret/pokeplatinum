	.include "macros/function.inc"
	.include "overlay005/ov5_021F007C.inc"

	

	.text


	thumb_func_start ov5_021F007C
ov5_021F007C: ; 0x021F007C
	push {r4, lr}
	add r4, r2, #0
	mov r0, #0x41
	mov r1, #0x37
	add r2, r4, #4
	mov r3, #4
	bl sub_02006F88
	str r0, [r4, #0]
	mov r1, #0
	str r1, [r4, #0x3c]
	add r4, #0x28
	add r0, r4, #0
	mov r2, #8
	mov r3, #0x13
	bl ov5_021F02B8
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021F00B8 ; =0x00000648
	bl sub_02005748
	pop {r4, pc}
	nop
_021F00B8: .word 0x00000648
	thumb_func_end ov5_021F007C

	thumb_func_start ov5_021F00BC
ov5_021F00BC: ; 0x021F00BC
	push {r4, lr}
	add r4, r2, #0
	mov r0, #0x41
	mov r1, #0x37
	add r2, r4, #4
	mov r3, #4
	bl sub_02006F88
	str r0, [r4, #0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x28
	mov r1, #8
	mov r3, #0x13
	str r2, [r4, #0x3c]
	bl ov5_021F02B8
	mov r0, #0
	str r0, [r4, #0x3c]
	pop {r4, pc}
	thumb_func_end ov5_021F00BC

	thumb_func_start ov5_021F00E4
ov5_021F00E4: ; 0x021F00E4
	ldr r3, _021F00EC ; =sub_020181C4
	ldr r0, [r2, #0]
	bx r3
	nop
_021F00EC: .word sub_020181C4
	thumb_func_end ov5_021F00E4

	thumb_func_start ov5_021F00F0
ov5_021F00F0: ; 0x021F00F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #1
	beq _021F0132
	add r0, r4, #0
	add r0, #0x28
	bl ov5_021F02C8
	cmp r0, #0
	beq _021F010C
	mov r0, #1
	str r0, [r4, #0x3c]
_021F010C:
	ldr r0, _021F0138 ; =0x00005D5F
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x28]
	ldr r0, [r0, #0xc]
	lsl r3, r3, #0x18
	add r1, #8
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_020039F8
	add r4, #8
	mov r0, #2
	add r1, r4, #0
	mov r2, #0x20
	mov r3, #0xc0
	bl sub_0201972C
_021F0132:
	add sp, #4
	pop {r3, r4, pc}
	nop
_021F0138: .word 0x00005D5F
	thumb_func_end ov5_021F00F0

	thumb_func_start ov5_021F013C
ov5_021F013C: ; 0x021F013C
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, [r1, #8]
	add r4, r2, #0
	bl ov5_021F0260
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xa
	mov r3, #0x13
	bl ov5_021F02B8
	mov r3, #0
	str r3, [r4, #0x14]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021F0180 ; =0x04000050
	mov r1, #4
	mov r2, #0x29
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021F0184 ; =0x00000648
	bl sub_02005748
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021F0180: .word 0x04000050
_021F0184: .word 0x00000648
	thumb_func_end ov5_021F013C

	thumb_func_start ov5_021F0188
ov5_021F0188: ; 0x021F0188
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, [r1, #8]
	add r4, r2, #0
	bl ov5_021F0260
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #0xf
	bl ov5_021F02B8
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #6
	str r0, [sp]
	ldr r0, _021F01B8 ; =0x04000050
	mov r1, #4
	mov r2, #0x21
	mov r3, #0xa
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021F01B8: .word 0x04000050
	thumb_func_end ov5_021F0188

	thumb_func_start ov5_021F01BC
ov5_021F01BC: ; 0x021F01BC
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F01BC

	thumb_func_start ov5_021F01C0
ov5_021F01C0: ; 0x021F01C0
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _021F01E6
	add r0, r4, #0
	bl ov5_021F02C8
	cmp r0, #0
	beq _021F01D8
	mov r0, #1
	str r0, [r4, #0x14]
_021F01D8:
	ldr r1, [r4, #0]
	mov r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _021F01E8 ; =0x04000052
	strh r1, [r0]
_021F01E6:
	pop {r4, pc}
	; .align 2, 0
_021F01E8: .word 0x04000052
	thumb_func_end ov5_021F01C0

	thumb_func_start ov5_021F01EC
ov5_021F01EC: ; 0x021F01EC
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F01EC

	thumb_func_start ov5_021F01F0
ov5_021F01F0: ; 0x021F01F0
	ldr r0, [r0, #4]
	ldr r3, _021F01FC ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _021F0200 ; =0x021FF658
	bx r3
	nop
_021F01FC: .word ov5_021D1B6C
_021F0200: .word 0x021FF658
	thumb_func_end ov5_021F01F0

	thumb_func_start ov5_021F0204
ov5_021F0204: ; 0x021F0204
	ldr r0, [r0, #4]
	ldr r3, _021F0210 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _021F0214 ; =0x021FF610
	bx r3
	nop
_021F0210: .word ov5_021D1B6C
_021F0214: .word 0x021FF610
	thumb_func_end ov5_021F0204

	thumb_func_start ov5_021F0218
ov5_021F0218: ; 0x021F0218
	ldr r3, _021F021C ; =ov5_021D1BEC
	bx r3
	; .align 2, 0
_021F021C: .word ov5_021D1BEC
	thumb_func_end ov5_021F0218

	thumb_func_start ov5_021F0220
ov5_021F0220: ; 0x021F0220
	push {r3, lr}
	bl ov5_021D1C2C
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0220

	thumb_func_start ov5_021F022C
ov5_021F022C: ; 0x021F022C
	ldr r0, [r0, #4]
	ldr r3, _021F0238 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _021F023C ; =0x021FF628
	bx r3
	nop
_021F0238: .word ov5_021D1B6C
_021F023C: .word 0x021FF628
	thumb_func_end ov5_021F022C

	thumb_func_start ov5_021F0240
ov5_021F0240: ; 0x021F0240
	ldr r0, [r0, #4]
	ldr r3, _021F024C ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _021F0250 ; =0x021FF640
	bx r3
	nop
_021F024C: .word ov5_021D1B6C
_021F0250: .word 0x021FF640
	thumb_func_end ov5_021F0240

	thumb_func_start ov5_021F0254
ov5_021F0254: ; 0x021F0254
	push {r3, lr}
	bl ov5_021D1C2C
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0254

	thumb_func_start ov5_021F0260
ov5_021F0260: ; 0x021F0260
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _021F02B0 ; =0x00005D5F
	add r5, r0, #0
	add r0, sp, #4
	strh r1, [r0]
	mov r0, #2
	add r1, sp, #4
	add r2, r0, #0
	mov r3, #0xc2
	bl sub_0201972C
	mov r0, #4
	mov r1, #0x20
	bl sub_02018144
	mov r1, #0x11
	mov r2, #0x20
	add r4, r0, #0
	bl memset
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x20
	bl sub_0201958C
	add r0, r4, #0
	bl sub_020181C4
	ldr r2, _021F02B4 ; =0x00006001
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EE0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021F02B0: .word 0x00005D5F
_021F02B4: .word 0x00006001
	thumb_func_end ov5_021F0260

	thumb_func_start ov5_021F02B8
ov5_021F02B8: ; 0x021F02B8
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov5_021F02B8

	thumb_func_start ov5_021F02C8
ov5_021F02C8: ; 0x021F02C8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021F02EE
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021F02EE:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov5_021F02C8

	thumb_func_start ov5_021F02F4
ov5_021F02F4: ; 0x021F02F4
	ldr r3, _021F02FC ; =sub_0201975C
	mov r0, #2
	mov r1, #0
	bx r3
	; .align 2, 0
_021F02FC: .word sub_0201975C
	thumb_func_end ov5_021F02F4

	thumb_func_start ov5_021F0300
ov5_021F0300: ; 0x021F0300
	ldr r3, _021F0308 ; =sub_0201975C
	mov r0, #2
	ldr r1, _021F030C ; =0x00007FFF
	bx r3
	; .align 2, 0
_021F0308: .word sub_0201975C
_021F030C: .word 0x00007FFF
	thumb_func_end ov5_021F0300

	thumb_func_start ov5_021F0310
ov5_021F0310: ; 0x021F0310
	push {r4, lr}
	sub sp, #8
	ldr r1, _021F0368 ; =0x00007FFF
	add r4, r0, #0
	add r0, sp, #4
	strh r1, [r0]
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r1, _021F036C ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	mov r3, #0xc4
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #2
	add r1, sp, #4
	add r2, r0, #0
	bl sub_0201972C
	mov r1, #2
	str r1, [sp]
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #1
	bl sub_020196C0
	ldr r0, [r4, #8]
	ldr r2, _021F0370 ; =0x00006002
	mov r1, #2
	bl sub_02019EE0
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov5_021F02F4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021F0368: .word 0x00007FFF
_021F036C: .word 0x0400000C
_021F0370: .word 0x00006002
	thumb_func_end ov5_021F0310

	thumb_func_start ov5_021F0374
ov5_021F0374: ; 0x021F0374
	push {r4, lr}
	sub sp, #8
	ldr r1, _021F03CC ; =0x00007FFF
	add r4, r0, #0
	add r0, sp, #4
	strh r1, [r0]
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	ldr r1, _021F03D0 ; =0x0400000E
	mov r0, #3
	ldrh r2, [r1]
	mov r3, #0xc4
	bic r2, r0
	mov r0, #3
	orr r2, r0
	strh r2, [r1]
	add r1, sp, #4
	mov r2, #2
	bl sub_0201972C
	mov r2, #2
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #3
	mov r3, #1
	bl sub_020196C0
	ldr r0, [r4, #8]
	ldr r2, _021F03D4 ; =0x00006002
	mov r1, #3
	bl sub_02019EE0
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov5_021F02F4
	add sp, #8
	pop {r4, pc}
	nop
_021F03CC: .word 0x00007FFF
_021F03D0: .word 0x0400000E
_021F03D4: .word 0x00006002
	thumb_func_end ov5_021F0374

	thumb_func_start ov5_021F03D8
ov5_021F03D8: ; 0x021F03D8
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021F03E6
	mov r0, #0
	pop {r3, pc}
_021F03E6:
	bl ov5_021D5FE0
	ldr r3, _021F0404 ; =0x021FF608
	mov r2, #0
_021F03EE:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _021F03F8
	mov r0, #1
	pop {r3, pc}
_021F03F8:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #1
	blo _021F03EE
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021F0404: .word 0x021FF608
	thumb_func_end ov5_021F03D8

	thumb_func_start ov5_021F0408
ov5_021F0408: ; 0x021F0408
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021F0416
	mov r0, #0
	pop {r3, pc}
_021F0416:
	bl ov5_021D5FE0
	ldr r3, _021F0434 ; =0x021FF60C
	mov r2, #0
_021F041E:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _021F0428
	mov r0, #1
	pop {r3, pc}
_021F0428:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #1
	blt _021F041E
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021F0434: .word 0x021FF60C
	thumb_func_end ov5_021F0408

	thumb_func_start ov5_021F0438
ov5_021F0438: ; 0x021F0438
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021F0446
	mov r0, #0
	pop {r3, pc}
_021F0446:
	bl ov5_021D5FE0
	ldr r3, _021F0464 ; =0x021FF670
	mov r2, #0
_021F044E:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _021F0458
	mov r0, #0
	pop {r3, pc}
_021F0458:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x12
	blt _021F044E
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_021F0464: .word 0x021FF670
	thumb_func_end ov5_021F0438

	thumb_func_start ov5_021F0468
ov5_021F0468: ; 0x021F0468
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021F047A
	bl ov5_021F0218
	mov r0, #0
	str r0, [r4, #0]
_021F047A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0468

	thumb_func_start ov5_021F0484
ov5_021F0484: ; 0x021F0484
	mov r0, #0x10
	bx lr
	thumb_func_end ov5_021F0484

	thumb_func_start ov5_021F0488
ov5_021F0488: ; 0x021F0488
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #9
	bls _021F04A2
	b _021F0668
_021F04A2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F04AE: ; jump table
	.short _021F04C2 - _021F04AE - 2 ; case 0
	.short _021F04F6 - _021F04AE - 2 ; case 1
	.short _021F0520 - _021F04AE - 2 ; case 2
	.short _021F0540 - _021F04AE - 2 ; case 3
	.short _021F0594 - _021F04AE - 2 ; case 4
	.short _021F05B6 - _021F04AE - 2 ; case 5
	.short _021F0600 - _021F04AE - 2 ; case 6
	.short _021F0622 - _021F04AE - 2 ; case 7
	.short _021F0642 - _021F04AE - 2 ; case 8
	.short _021F0654 - _021F04AE - 2 ; case 9
_021F04C2:
	add r0, r5, #0
	bl ov5_021F0438
	cmp r0, #1
	bne _021F04EC
	mov r0, #1
	strh r0, [r4, #0xc]
	add r0, r5, #0
	bl ov5_021F03D8
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov5_021F0408
	str r0, [r4, #4]
	cmp r0, #0
	beq _021F055C
	add r0, r5, #0
	bl ov5_021F0300
	b _021F066C
_021F04EC:
	mov r0, #7
	strh r0, [r4, #0xc]
	mov r0, #0x14
	strh r0, [r4, #0xe]
	b _021F066C
_021F04F6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F0504
	add r0, r5, #0
	bl ov5_021F01F0
	b _021F050A
_021F0504:
	add r0, r5, #0
	bl ov5_021F022C
_021F050A:
	str r0, [r4, #0]
	mov r0, #2
	mov r1, #0
	strh r0, [r4, #0xc]
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _021F066C
_021F0520:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _021F052E
	bl ov5_021F0220
	b _021F0532
_021F052E:
	bl ov5_021F0254
_021F0532:
	cmp r0, #1
	bne _021F055C
	mov r0, #0x16
	strh r0, [r4, #0xe]
	mov r0, #3
	strh r0, [r4, #0xc]
	b _021F066C
_021F0540:
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	sub r0, r0, #1
	strh r0, [r4, #0xe]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A0EC
	cmp r0, #0
	beq _021F058E
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _021F055E
_021F055C:
	b _021F066C
_021F055E:
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02054F94
	add r1, r0, #0
	add r0, r5, #0
	bl ov6_02242110
	cmp r0, #0
	beq _021F0588
	mov r0, #6
	strh r0, [r4, #0xc]
	b _021F066C
_021F0588:
	mov r0, #4
	strh r0, [r4, #0xc]
	b _021F066C
_021F058E:
	mov r0, #4
	strh r0, [r4, #0xc]
	b _021F066C
_021F0594:
	ldr r0, [r4, #0]
	bl ov5_021F0218
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F05A8
	add r0, r5, #0
	bl ov5_021F0204
	b _021F05AE
_021F05A8:
	add r0, r5, #0
	bl ov5_021F0240
_021F05AE:
	str r0, [r4, #0]
	mov r0, #5
	strh r0, [r4, #0xc]
	b _021F066C
_021F05B6:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _021F05C4
	bl ov5_021F0220
	b _021F05C8
_021F05C4:
	bl ov5_021F0254
_021F05C8:
	cmp r0, #1
	bne _021F066C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F05F2
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _021F0670 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #2
	mov r1, #3
	bl sub_02019060
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_02019EBC
	b _021F05FA
_021F05F2:
	mov r0, #2
	mov r1, #1
	bl sub_02019060
_021F05FA:
	mov r0, #8
	strh r0, [r4, #0xc]
	b _021F066C
_021F0600:
	bl ov5_021F0468
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0610
	add r0, r5, #0
	bl ov5_021F0374
_021F0610:
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_022411C8
	cmp r0, #0
	bne _021F066C
	bl GF_AssertFail
	b _021F066C
_021F0622:
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #0xe]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _021F066C
	mov r2, #0
	ldr r1, _021F0674 ; =0x000007ED
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E8E0
	mov r0, #9
	strh r0, [r4, #0xc]
	b _021F066C
_021F0642:
	mov r2, #0
	ldr r1, _021F0678 ; =0x000007EC
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E8E0
	mov r0, #9
	strh r0, [r4, #0xc]
	b _021F066C
_021F0654:
	bl ov5_021F0468
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0664
	add r0, r5, #0
	bl ov5_021F0310
_021F0664:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F0668:
	bl GF_AssertFail
_021F066C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F0670: .word 0x04000050
_021F0674: .word 0x000007ED
_021F0678: .word 0x000007EC
	thumb_func_end ov5_021F0488

	.rodata


	.global Unk_ov5_021FF608
Unk_ov5_021FF608: ; 0x021FF608
	.incbin "incbin/overlay5_rodata.bin", 0x6CF4, 0x6CF8 - 0x6CF4

	.global Unk_ov5_021FF60C
Unk_ov5_021FF60C: ; 0x021FF60C
	.incbin "incbin/overlay5_rodata.bin", 0x6CF8, 0x6CFC - 0x6CF8

	.global Unk_ov5_021FF610
Unk_ov5_021FF610: ; 0x021FF610
	.incbin "incbin/overlay5_rodata.bin", 0x6CFC, 0x6D14 - 0x6CFC

	.global Unk_ov5_021FF628
Unk_ov5_021FF628: ; 0x021FF628
	.incbin "incbin/overlay5_rodata.bin", 0x6D14, 0x6D2C - 0x6D14

	.global Unk_ov5_021FF640
Unk_ov5_021FF640: ; 0x021FF640
	.incbin "incbin/overlay5_rodata.bin", 0x6D2C, 0x6D44 - 0x6D2C

	.global Unk_ov5_021FF658
Unk_ov5_021FF658: ; 0x021FF658
	.incbin "incbin/overlay5_rodata.bin", 0x6D44, 0x6D5C - 0x6D44

	.global Unk_ov5_021FF670
Unk_ov5_021FF670: ; 0x021FF670
	.incbin "incbin/overlay5_rodata.bin", 0x6D5C, 0x48

