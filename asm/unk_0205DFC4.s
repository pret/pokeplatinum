	.include "macros/function.inc"
	.include "include/unk_0205DFC4.inc"

	

	.text


	thumb_func_start sub_0205DFC4
sub_0205DFC4: ; 0x0205DFC4
	push {r4, lr}
	mov r1, #0xa
	add r4, r0, #0
	bl _u32_div_f
	cmp r0, #0
	bne _0205DFD6
	mov r0, #1
	pop {r4, pc}
_0205DFD6:
	add r0, r4, #0
	mov r1, #0x64
	bl _u32_div_f
	cmp r0, #0
	bne _0205DFE6
	mov r0, #2
	pop {r4, pc}
_0205DFE6:
	mov r1, #0xfa
	add r0, r4, #0
	lsl r1, r1, #2
	bl _u32_div_f
	cmp r0, #0
	bne _0205DFF8
	mov r0, #3
	pop {r4, pc}
_0205DFF8:
	ldr r1, _0205E04C ; =0x00002710
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _0205E008
	mov r0, #4
	pop {r4, pc}
_0205E008:
	ldr r1, _0205E050 ; =0x000186A0
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _0205E018
	mov r0, #5
	pop {r4, pc}
_0205E018:
	ldr r1, _0205E054 ; =0x000F4240
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _0205E028
	mov r0, #6
	pop {r4, pc}
_0205E028:
	ldr r1, _0205E058 ; =0x00989680
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _0205E038
	mov r0, #7
	pop {r4, pc}
_0205E038:
	ldr r1, _0205E05C ; =0x05F5E100
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _0205E048
	mov r0, #8
	pop {r4, pc}
_0205E048:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0205E04C: .word 0x00002710
_0205E050: .word 0x000186A0
_0205E054: .word 0x000F4240
_0205E058: .word 0x00989680
_0205E05C: .word 0x05F5E100
	thumb_func_end sub_0205DFC4

	thumb_func_start sub_0205E060
sub_0205E060: ; 0x0205E060
	mov r1, #0x52
	lsl r1, r1, #2
	cmp r0, r1
	blo _0205E072
	add r1, #0x63
	cmp r0, r1
	bhi _0205E072
	mov r0, #1
	bx lr
_0205E072:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205E060

	thumb_func_start sub_0205E078
sub_0205E078: ; 0x0205E078
	cmp r0, #0xf
	bhi _0205E080
	mov r0, #6
	bx lr
_0205E080:
	cmp r0, #0x1e
	bhi _0205E088
	mov r0, #7
	bx lr
_0205E088:
	cmp r0, #0x2d
	bhi _0205E090
	mov r0, #8
	bx lr
_0205E090:
	cmp r0, #0x3c
	bhi _0205E098
	mov r0, #9
	bx lr
_0205E098:
	cmp r0, #0x50
	bhi _0205E0A0
	mov r0, #0xa
	bx lr
_0205E0A0:
	cmp r0, #0x64
	bhi _0205E0A8
	mov r0, #0xb
	bx lr
_0205E0A8:
	cmp r0, #0x78
	bhi _0205E0B0
	mov r0, #0xc
	bx lr
_0205E0B0:
	cmp r0, #0x8c
	bhi _0205E0B8
	mov r0, #0xd
	bx lr
_0205E0B8:
	cmp r0, #0xa0
	bhi _0205E0C0
	mov r0, #0xe
	bx lr
_0205E0C0:
	cmp r0, #0xb4
	bhi _0205E0C8
	mov r0, #0xf
	bx lr
_0205E0C8:
	cmp r0, #0xc8
	bhi _0205E0D0
	mov r0, #0x10
	bx lr
_0205E0D0:
	cmp r0, #0xd1
	bhi _0205E0D8
	mov r0, #0x11
	bx lr
_0205E0D8:
	cmp r1, #0
	beq _0205E0E0
	mov r0, #4
	bx lr
_0205E0E0:
	mov r0, #5
	bx lr
	thumb_func_end sub_0205E078

	thumb_func_start sub_0205E0E4
sub_0205E0E4: ; 0x0205E0E4
	cmp r0, #0x27
	bhi _0205E0EC
	mov r0, #0x16
	bx lr
_0205E0EC:
	cmp r0, #0x3b
	bhi _0205E0F4
	mov r0, #0x17
	bx lr
_0205E0F4:
	cmp r0, #0x59
	bhi _0205E0FC
	mov r0, #0x18
	bx lr
_0205E0FC:
	cmp r0, #0x77
	bhi _0205E104
	mov r0, #0x19
	bx lr
_0205E104:
	cmp r0, #0x95
	bhi _0205E10C
	mov r0, #0x1a
	bx lr
_0205E10C:
	cmp r0, #0xbd
	bhi _0205E114
	mov r0, #0x1b
	bx lr
_0205E114:
	cmp r0, #0xe5
	bhi _0205E11C
	mov r0, #0x1c
	bx lr
_0205E11C:
	ldr r2, _0205E1B0 ; =0x0000010D
	cmp r0, r2
	bhi _0205E126
	mov r0, #0x1d
	bx lr
_0205E126:
	add r3, r2, #0
	add r3, #0x28
	cmp r0, r3
	bhi _0205E132
	mov r0, #0x1e
	bx lr
_0205E132:
	add r3, r2, #0
	add r3, #0x50
	cmp r0, r3
	bhi _0205E13E
	mov r0, #0x1f
	bx lr
_0205E13E:
	add r3, r2, #0
	add r3, #0x6e
	cmp r0, r3
	bhi _0205E14A
	mov r0, #0x20
	bx lr
_0205E14A:
	add r3, r2, #0
	add r3, #0x8c
	cmp r0, r3
	bhi _0205E156
	mov r0, #0x21
	bx lr
_0205E156:
	add r3, r2, #0
	add r3, #0xa0
	cmp r0, r3
	bhi _0205E16A
	cmp r1, #0
	beq _0205E166
	mov r0, #0x23
	bx lr
_0205E166:
	mov r0, #0x22
	bx lr
_0205E16A:
	add r3, r2, #0
	add r3, #0xb4
	cmp r0, r3
	bhi _0205E176
	mov r0, #0x24
	bx lr
_0205E176:
	add r3, r2, #0
	add r3, #0xbe
	cmp r0, r3
	bhi _0205E182
	mov r0, #0x25
	bx lr
_0205E182:
	add r3, r2, #0
	add r3, #0xc8
	cmp r0, r3
	bhi _0205E18E
	mov r0, #0x26
	bx lr
_0205E18E:
	add r3, r2, #0
	add r3, #0xce
	cmp r0, r3
	bhi _0205E19A
	mov r0, #0x27
	bx lr
_0205E19A:
	add r2, #0xd4
	cmp r0, r2
	bhi _0205E1A4
	mov r0, #0x28
	bx lr
_0205E1A4:
	cmp r1, #0
	beq _0205E1AC
	mov r0, #0x2a
	bx lr
_0205E1AC:
	mov r0, #0x29
	bx lr
	; .align 2, 0
_0205E1B0: .word 0x0000010D
	thumb_func_end sub_0205E0E4

	thumb_func_start sub_0205E1B4
sub_0205E1B4: ; 0x0205E1B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r4, _0205E1F4 ; =0x00000000
	beq _0205E1F0
	mov r7, #0x4c
_0205E1CA:
	add r0, r6, #0
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0205E1E6
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205E1E6:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _0205E1CA
_0205E1F0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205E1F4: .word 0x00000000
	thumb_func_end sub_0205E1B4

	thumb_func_start sub_0205E1F8
sub_0205E1F8: ; 0x0205E1F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0
	bl sub_0207A268
	str r0, [sp]
	bl sub_0207A0F8
	add r4, r0, #0
	add r6, r7, #0
	cmp r4, #0
	ble _0205E22C
	add r5, sp, #4
_0205E212:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, r4
	blt _0205E212
_0205E22C:
	ldr r2, _0205E264 ; =0x020ED9C4
	mov r6, #0
_0205E230:
	mov r1, #0
	cmp r4, #0
	ble _0205E24C
	ldrh r5, [r2]
	add r3, sp, #4
_0205E23A:
	ldrh r0, [r3]
	cmp r0, r5
	bne _0205E244
	add r7, r7, #1
	b _0205E24C
_0205E244:
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, r4
	blt _0205E23A
_0205E24C:
	add r6, r6, #1
	add r2, r2, #2
	cmp r6, #3
	blt _0205E230
	cmp r7, #3
	bne _0205E25E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205E25E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205E264: .word 0x020ED9C4
	thumb_func_end sub_0205E1F8

	thumb_func_start sub_0205E268
sub_0205E268: ; 0x0205E268
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp]
	str r0, [sp, #8]
	ldrh r0, [r4, #0xe]
	ldr r5, [r4, #4]
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r5, #0x1f
	add r2, r5, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp]
	ldrh r0, [r4, #0xe]
	ldr r5, [r4, #8]
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r5, #0x1f
	add r2, r5, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #8]
	str r3, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_020630AC
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0x10]
	add r0, r1, r0
	strh r0, [r4, #0xe]
	mov r0, #0x5a
	ldrh r1, [r4, #0xe]
	lsl r0, r0, #2
	cmp r1, r0
	blo _0205E2F0
	mov r0, #0
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
_0205E2F0:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _0205E312
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_020630AC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0205E312:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_0205E268

	thumb_func_start sub_0205E318
sub_0205E318: ; 0x0205E318
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02050A60
	str r0, [sp]
	mov r0, #0xb
	mov r1, #0x14
	bl sub_02018184
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, sp, #8
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0205E352
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0205E360
_0205E352:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0205E360:
	bl _f_ftoi
	str r0, [r4, #4]
	add r0, sp, #8
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _0205E380
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0205E38E
_0205E380:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0205E38E:
	bl _f_ftoi
	str r0, [r4, #8]
	strh r6, [r4, #0xc]
	strh r7, [r4, #0x10]
	ldr r0, [sp]
	str r5, [r4, #0]
	ldr r0, [r0, #0x10]
	ldr r1, _0205E3A8 ; =sub_0205E268
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205E3A8: .word sub_0205E268
	thumb_func_end sub_0205E318

	thumb_func_start sub_0205E3AC
sub_0205E3AC: ; 0x0205E3AC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl sub_02062D64
	ldrb r1, [r4, #8]
	add r0, r1, #1
	strb r0, [r4, #8]
	ldrh r0, [r4, #6]
	cmp r1, r0
	blt _0205E3F0
	ldrb r1, [r4, #9]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #9]
	mov r0, #0
	strb r0, [r4, #8]
	ldrh r1, [r4, #4]
	sub r0, r1, #1
	strh r0, [r4, #4]
	cmp r1, #0
	bne _0205E3F0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0205E3F0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0205E3AC

	thumb_func_start sub_0205E3F4
sub_0205E3F4: ; 0x0205E3F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02050A60
	str r0, [sp]
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	strh r6, [r4, #4]
	strh r7, [r4, #6]
	str r5, [r4, #0]
	mov r0, #0
	strb r0, [r4, #9]
	ldr r0, [sp]
	ldr r1, _0205E42C ; =sub_0205E3AC
	ldr r0, [r0, #0x10]
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205E42C: .word sub_0205E3AC
	thumb_func_end sub_0205E3F4

	thumb_func_start sub_0205E430
sub_0205E430: ; 0x0205E430
	cmp r1, #3
	bhi _0205E456
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E440: ; jump table
	.short _0205E448 - _0205E440 - 2 ; case 0
	.short _0205E44C - _0205E440 - 2 ; case 1
	.short _0205E450 - _0205E440 - 2 ; case 2
	.short _0205E454 - _0205E440 - 2 ; case 3
_0205E448:
	mov r2, #0xb
	b _0205E456
_0205E44C:
	mov r2, #0x13
	b _0205E456
_0205E450:
	mov r2, #0x1b
	b _0205E456
_0205E454:
	mov r2, #0x73
_0205E456:
	lsl r0, r0, #2
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E430

	thumb_func_start sub_0205E45C
sub_0205E45C: ; 0x0205E45C
	cmp r1, #3
	bhi _0205E482
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E46C: ; jump table
	.short _0205E474 - _0205E46C - 2 ; case 0
	.short _0205E478 - _0205E46C - 2 ; case 1
	.short _0205E47C - _0205E46C - 2 ; case 2
	.short _0205E480 - _0205E46C - 2 ; case 3
_0205E474:
	mov r2, #0xa
	b _0205E482
_0205E478:
	mov r2, #0x12
	b _0205E482
_0205E47C:
	mov r2, #0x1a
	b _0205E482
_0205E480:
	mov r2, #0x72
_0205E482:
	lsl r0, r0, #2
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E45C

	thumb_func_start sub_0205E488
sub_0205E488: ; 0x0205E488
	cmp r1, #3
	bhi _0205E4AE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E498: ; jump table
	.short _0205E4A0 - _0205E498 - 2 ; case 0
	.short _0205E4A4 - _0205E498 - 2 ; case 1
	.short _0205E4A8 - _0205E498 - 2 ; case 2
	.short _0205E4AC - _0205E498 - 2 ; case 3
_0205E4A0:
	mov r2, #0xd
	b _0205E4AE
_0205E4A4:
	mov r2, #0x15
	b _0205E4AE
_0205E4A8:
	mov r2, #0x1d
	b _0205E4AE
_0205E4AC:
	mov r2, #0x75
_0205E4AE:
	lsl r0, r0, #2
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E488

	thumb_func_start sub_0205E4B4
sub_0205E4B4: ; 0x0205E4B4
	cmp r1, #3
	bhi _0205E4DA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E4C4: ; jump table
	.short _0205E4CC - _0205E4C4 - 2 ; case 0
	.short _0205E4D0 - _0205E4C4 - 2 ; case 1
	.short _0205E4D4 - _0205E4C4 - 2 ; case 2
	.short _0205E4D8 - _0205E4C4 - 2 ; case 3
_0205E4CC:
	mov r2, #0xc
	b _0205E4DA
_0205E4D0:
	mov r2, #0x14
	b _0205E4DA
_0205E4D4:
	mov r2, #0x1c
	b _0205E4DA
_0205E4D8:
	mov r2, #0x74
_0205E4DA:
	lsl r0, r0, #2
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E4B4

	thumb_func_start sub_0205E4E0
sub_0205E4E0: ; 0x0205E4E0
	cmp r0, #3
	bhi _0205E506
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E4F0: ; jump table
	.short _0205E4F8 - _0205E4F0 - 2 ; case 0
	.short _0205E4FC - _0205E4F0 - 2 ; case 1
	.short _0205E500 - _0205E4F0 - 2 ; case 2
	.short _0205E504 - _0205E4F0 - 2 ; case 3
_0205E4F8:
	mov r2, #0x25
	b _0205E506
_0205E4FC:
	mov r2, #0x31
	b _0205E506
_0205E500:
	mov r2, #0x3d
	b _0205E506
_0205E504:
	mov r2, #0x7d
_0205E506:
	lsr r0, r1, #1
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0205E4E0

	thumb_func_start sub_0205E50C
sub_0205E50C: ; 0x0205E50C
	cmp r0, #3
	bhi _0205E532
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E51C: ; jump table
	.short _0205E524 - _0205E51C - 2 ; case 0
	.short _0205E528 - _0205E51C - 2 ; case 1
	.short _0205E52C - _0205E51C - 2 ; case 2
	.short _0205E530 - _0205E51C - 2 ; case 3
_0205E524:
	mov r0, #0x23
	bx lr
_0205E528:
	mov r0, #0x2f
	bx lr
_0205E52C:
	mov r0, #0x3b
	bx lr
_0205E530:
	mov r0, #0x7b
_0205E532:
	bx lr
	thumb_func_end sub_0205E50C

	thumb_func_start sub_0205E534
sub_0205E534: ; 0x0205E534
	cmp r0, #3
	bhi _0205E55A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E544: ; jump table
	.short _0205E54C - _0205E544 - 2 ; case 0
	.short _0205E550 - _0205E544 - 2 ; case 1
	.short _0205E554 - _0205E544 - 2 ; case 2
	.short _0205E558 - _0205E544 - 2 ; case 3
_0205E54C:
	mov r0, #0x22
	bx lr
_0205E550:
	mov r0, #0x2e
	bx lr
_0205E554:
	mov r0, #0x3a
	bx lr
_0205E558:
	mov r0, #0x7a
_0205E55A:
	bx lr
	thumb_func_end sub_0205E534

	thumb_func_start sub_0205E55C
sub_0205E55C: ; 0x0205E55C
	cmp r0, #3
	bhi _0205E582
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E56C: ; jump table
	.short _0205E574 - _0205E56C - 2 ; case 0
	.short _0205E578 - _0205E56C - 2 ; case 1
	.short _0205E57C - _0205E56C - 2 ; case 2
	.short _0205E580 - _0205E56C - 2 ; case 3
_0205E574:
	mov r0, #0x24
	bx lr
_0205E578:
	mov r0, #0x30
	bx lr
_0205E57C:
	mov r0, #0x3c
	bx lr
_0205E580:
	mov r0, #0x7c
_0205E582:
	bx lr
	thumb_func_end sub_0205E55C

	thumb_func_start sub_0205E584
sub_0205E584: ; 0x0205E584
	push {r4, lr}
	cmp r0, #3
	bhi _0205E5B0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E596: ; jump table
	.short _0205E59E - _0205E596 - 2 ; case 0
	.short _0205E5A2 - _0205E596 - 2 ; case 1
	.short _0205E5A6 - _0205E596 - 2 ; case 2
	.short _0205E5AA - _0205E596 - 2 ; case 3
_0205E59E:
	mov r4, #0
	b _0205E5B0
_0205E5A2:
	mov r4, #1
	b _0205E5B0
_0205E5A6:
	mov r4, #2
	b _0205E5B0
_0205E5AA:
	mov r4, #2
	bl sub_02022974
_0205E5B0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205E584

	thumb_func_start sub_0205E5B4
sub_0205E5B4: ; 0x0205E5B4
	cmp r0, #3
	bhi _0205E5DA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E5C4: ; jump table
	.short _0205E5CC - _0205E5C4 - 2 ; case 0
	.short _0205E5D0 - _0205E5C4 - 2 ; case 1
	.short _0205E5D4 - _0205E5C4 - 2 ; case 2
	.short _0205E5D8 - _0205E5C4 - 2 ; case 3
_0205E5CC:
	mov r2, #0x4b
	b _0205E5DA
_0205E5D0:
	mov r2, #0x53
	b _0205E5DA
_0205E5D4:
	mov r2, #0x5b
	b _0205E5DA
_0205E5D8:
	mov r2, #0x8b
_0205E5DA:
	add r0, r2, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205E5B4

	thumb_func_start sub_0205E5E0
sub_0205E5E0: ; 0x0205E5E0
	cmp r0, #3
	bhi _0205E606
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E5F0: ; jump table
	.short _0205E5F8 - _0205E5F0 - 2 ; case 0
	.short _0205E5FC - _0205E5F0 - 2 ; case 1
	.short _0205E600 - _0205E5F0 - 2 ; case 2
	.short _0205E604 - _0205E5F0 - 2 ; case 3
_0205E5F8:
	mov r0, #0x47
	bx lr
_0205E5FC:
	mov r0, #0x4f
	bx lr
_0205E600:
	mov r0, #0x57
	bx lr
_0205E604:
	mov r0, #0x87
_0205E606:
	bx lr
	thumb_func_end sub_0205E5E0

	thumb_func_start sub_0205E608
sub_0205E608: ; 0x0205E608
	cmp r0, #3
	bhi _0205E62E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E618: ; jump table
	.short _0205E620 - _0205E618 - 2 ; case 0
	.short _0205E624 - _0205E618 - 2 ; case 1
	.short _0205E628 - _0205E618 - 2 ; case 2
	.short _0205E62C - _0205E618 - 2 ; case 3
_0205E620:
	mov r0, #0x46
	bx lr
_0205E624:
	mov r0, #0x4e
	bx lr
_0205E628:
	mov r0, #0x56
	bx lr
_0205E62C:
	mov r0, #0x86
_0205E62E:
	bx lr
	thumb_func_end sub_0205E608

	thumb_func_start sub_0205E630
sub_0205E630: ; 0x0205E630
	cmp r0, #3
	bhi _0205E656
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E640: ; jump table
	.short _0205E648 - _0205E640 - 2 ; case 0
	.short _0205E64C - _0205E640 - 2 ; case 1
	.short _0205E650 - _0205E640 - 2 ; case 2
	.short _0205E654 - _0205E640 - 2 ; case 3
_0205E648:
	mov r0, #0x48
	bx lr
_0205E64C:
	mov r0, #0x50
	bx lr
_0205E650:
	mov r0, #0x58
	bx lr
_0205E654:
	mov r0, #0x88
_0205E656:
	bx lr
	thumb_func_end sub_0205E630

	thumb_func_start sub_0205E658
sub_0205E658: ; 0x0205E658
	cmp r0, #3
	bhi _0205E67E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E668: ; jump table
	.short _0205E670 - _0205E668 - 2 ; case 0
	.short _0205E674 - _0205E668 - 2 ; case 1
	.short _0205E678 - _0205E668 - 2 ; case 2
	.short _0205E67C - _0205E668 - 2 ; case 3
_0205E670:
	mov r0, #0x49
	bx lr
_0205E674:
	mov r0, #0x51
	bx lr
_0205E678:
	mov r0, #0x59
	bx lr
_0205E67C:
	mov r0, #0x89
_0205E67E:
	bx lr
	thumb_func_end sub_0205E658

	thumb_func_start sub_0205E680
sub_0205E680: ; 0x0205E680
	cmp r0, #3
	bhi _0205E6A6
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E690: ; jump table
	.short _0205E698 - _0205E690 - 2 ; case 0
	.short _0205E69C - _0205E690 - 2 ; case 1
	.short _0205E6A0 - _0205E690 - 2 ; case 2
	.short _0205E6A4 - _0205E690 - 2 ; case 3
_0205E698:
	mov r0, #0x4a
	bx lr
_0205E69C:
	mov r0, #0x52
	bx lr
_0205E6A0:
	mov r0, #0x5a
	bx lr
_0205E6A4:
	mov r0, #0x8a
_0205E6A6:
	bx lr
	thumb_func_end sub_0205E680

	thumb_func_start sub_0205E6A8
sub_0205E6A8: ; 0x0205E6A8
	push {r3, lr}
	cmp r0, #0x64
	bhs _0205E6B2
	mov r0, #0xff
	pop {r3, pc}
_0205E6B2:
	bl ov4_021D2388
	pop {r3, pc}
	thumb_func_end sub_0205E6A8

	thumb_func_start sub_0205E6B8
sub_0205E6B8: ; 0x0205E6B8
	push {r4, lr}
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r4, r0, #0
	bne _0205E6CE
	bl sub_02022974
_0205E6CE:
	add r0, r4, #0
	bl sub_02025FCC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205E6B8

	thumb_func_start sub_0205E6D8
sub_0205E6D8: ; 0x0205E6D8
	push {r3, lr}
	bl sub_02025E38
	bl sub_02025FCC
	cmp r0, #0
	bne _0205E6EA
	mov r0, #1
	pop {r3, pc}
_0205E6EA:
	bl sub_0205E6B8
	cmp r0, #0
	bne _0205E6F6
	mov r0, #1
	b _0205E6F8
_0205E6F6:
	mov r0, #0
_0205E6F8:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205E6D8

	thumb_func_start sub_0205E700
sub_0205E700: ; 0x0205E700
	cmp r0, #3
	bhi _0205E726
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E710: ; jump table
	.short _0205E718 - _0205E710 - 2 ; case 0
	.short _0205E71C - _0205E710 - 2 ; case 1
	.short _0205E720 - _0205E710 - 2 ; case 2
	.short _0205E724 - _0205E710 - 2 ; case 3
_0205E718:
	mov r0, #0x5f
	bx lr
_0205E71C:
	mov r0, #0x61
	bx lr
_0205E720:
	mov r0, #0x63
	bx lr
_0205E724:
	mov r0, #0x8f
_0205E726:
	bx lr
	thumb_func_end sub_0205E700

	thumb_func_start sub_0205E728
sub_0205E728: ; 0x0205E728
	cmp r0, #3
	bhi _0205E74E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205E738: ; jump table
	.short _0205E740 - _0205E738 - 2 ; case 0
	.short _0205E744 - _0205E738 - 2 ; case 1
	.short _0205E748 - _0205E738 - 2 ; case 2
	.short _0205E74C - _0205E738 - 2 ; case 3
_0205E740:
	mov r0, #0x5e
	bx lr
_0205E744:
	mov r0, #0x60
	bx lr
_0205E748:
	mov r0, #0x62
	bx lr
_0205E74C:
	mov r0, #0x8e
_0205E74E:
	bx lr
	thumb_func_end sub_0205E728

	thumb_func_start sub_0205E750
sub_0205E750: ; 0x0205E750
	push {r4, lr}
	cmp r0, #6
	bhi _0205E788
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E762: ; jump table
	.short _0205E770 - _0205E762 - 2 ; case 0
	.short _0205E774 - _0205E762 - 2 ; case 1
	.short _0205E778 - _0205E762 - 2 ; case 2
	.short _0205E77C - _0205E762 - 2 ; case 3
	.short _0205E780 - _0205E762 - 2 ; case 4
	.short _0205E788 - _0205E762 - 2 ; case 5
	.short _0205E784 - _0205E762 - 2 ; case 6
_0205E770:
	mov r4, #1
	b _0205E78C
_0205E774:
	mov r4, #3
	b _0205E78C
_0205E778:
	mov r4, #5
	b _0205E78C
_0205E77C:
	mov r4, #7
	b _0205E78C
_0205E780:
	mov r4, #9
	b _0205E78C
_0205E784:
	mov r4, #0x71
	b _0205E78C
_0205E788:
	bl sub_02022974
_0205E78C:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205E750

	thumb_func_start sub_0205E790
sub_0205E790: ; 0x0205E790
	push {r4, lr}
	cmp r0, #6
	bhi _0205E7C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205E7A2: ; jump table
	.short _0205E7B0 - _0205E7A2 - 2 ; case 0
	.short _0205E7B4 - _0205E7A2 - 2 ; case 1
	.short _0205E7B8 - _0205E7A2 - 2 ; case 2
	.short _0205E7BC - _0205E7A2 - 2 ; case 3
	.short _0205E7C0 - _0205E7A2 - 2 ; case 4
	.short _0205E7C8 - _0205E7A2 - 2 ; case 5
	.short _0205E7C4 - _0205E7A2 - 2 ; case 6
_0205E7B0:
	mov r4, #0
	b _0205E7CC
_0205E7B4:
	mov r4, #2
	b _0205E7CC
_0205E7B8:
	mov r4, #4
	b _0205E7CC
_0205E7BC:
	mov r4, #6
	b _0205E7CC
_0205E7C0:
	mov r4, #8
	b _0205E7CC
_0205E7C4:
	mov r4, #0x70
	b _0205E7CC
_0205E7C8:
	bl sub_02022974
_0205E7CC:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205E790

	.rodata


	.global Unk_020ED9C4
Unk_020ED9C4: ; 0x020ED9C4
	.incbin "incbin/arm9_rodata.bin", 0x8D84, 0x6

