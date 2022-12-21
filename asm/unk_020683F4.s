	.include "macros/function.inc"
	.include "include/unk_020683F4.inc"

	

	.text


	thumb_func_start sub_020683F4
sub_020683F4: ; 0x020683F4
	cmp r0, #0
	bne _02068404
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02068420 ; =0x020EF79C
	ldr r0, [r0, r2]
	bx lr
_02068404:
	cmp r0, #1
	bne _02068414
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02068424 ; =0x020EF7A0
	ldr r0, [r0, r2]
	bx lr
_02068414:
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02068428 ; =0x020EF7A4
	ldr r0, [r0, r2]
	bx lr
	; .align 2, 0
_02068420: .word 0x020EF79C
_02068424: .word 0x020EF7A0
_02068428: .word 0x020EF7A4
	thumb_func_end sub_020683F4

	thumb_func_start sub_0206842C
sub_0206842C: ; 0x0206842C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r5, r1, #0
	bl sub_0205F158
	cmp r0, #1
	bne _02068446
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020684D0
	pop {r3, r4, r5, r6, r7, pc}
_02068446:
	str r4, [r5, #0x18]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r5, #0]
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	str r0, [r5, #4]
	ldr r0, [r4, #0x3c]
	bl sub_0205EB74
	str r0, [r5, #8]
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02054F94
	strh r0, [r5, #0xe]
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	cmp r0, #3
	bhi _020684AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02068494: ; jump table
	.short _0206849C - _02068494 - 2 ; case 0
	.short _020684A0 - _02068494 - 2 ; case 1
	.short _020684A8 - _02068494 - 2 ; case 2
	.short _020684A4 - _02068494 - 2 ; case 3
_0206849C:
	sub r7, r7, #1
	b _020684AA
_020684A0:
	add r7, r7, #1
	b _020684AA
_020684A4:
	add r6, r6, #1
	b _020684AA
_020684A8:
	sub r6, r6, #1
_020684AA:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02054F94
	strh r0, [r5, #0xc]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0203C9D4
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02055FC8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x3c]
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206842C

	thumb_func_start sub_020684D0
sub_020684D0: ; 0x020684D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r5, [r4, #0x18]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	str r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB74
	str r0, [r4, #8]
	ldr r0, [r5, #0x3c]
	bl sub_02061760
	strh r0, [r4, #0xe]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAA0
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_020616F0
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl sub_02055FC8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020684D0

	thumb_func_start sub_0206851C
sub_0206851C: ; 0x0206851C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x20
	mov r1, #0xc
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	str r5, [r0, #0]
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	strh r7, [r0, #8]
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206851C

	thumb_func_start sub_02068540
sub_02068540: ; 0x02068540
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020509D4
	mov r0, #0x72
	mov r2, #0
	ldr r1, _02068580 ; =sub_020685AC
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r2, [sp]
	ldrh r1, [r5, #4]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0206851C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02068580: .word sub_020685AC
	thumb_func_end sub_02068540

	thumb_func_start sub_02068584
sub_02068584: ; 0x02068584
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	add r0, r1, #0
	ldrh r1, [r4, #0x28]
	add r3, r2, #0
	bl sub_0206851C
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _020685A8 ; =sub_020685AC
	bl sub_02050904
	add sp, #4
	pop {r3, r4, pc}
	nop
_020685A8: .word sub_020685AC
	thumb_func_end sub_02068584

	thumb_func_start sub_020685AC
sub_020685AC: ; 0x020685AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _020685D2
	cmp r0, #1
	beq _02068622
	b _0206862C
_020685D2:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0203C9D4
	ldr r1, [r4, #0]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	mov r3, #0
	bl sub_0203E8E0
	add r0, r5, #0
	mov r1, #0x29
	bl sub_0203F098
	ldrh r1, [r4, #4]
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x2a
	bl sub_0203F098
	ldrh r1, [r4, #6]
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x2b
	bl sub_0203F098
	ldrh r1, [r4, #8]
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x2c
	bl sub_0203F098
	ldrh r1, [r4, #0xa]
	strh r1, [r0]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0206862C
_02068622:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206862C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020685AC

	thumb_func_start sub_02068630
sub_02068630: ; 0x02068630
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A64
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0202440C
	str r0, [r4, #0x10]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #5
	add r0, #0x20
	strb r1, [r0]
	str r5, [r4, #0x1c]
	ldrh r0, [r6, #4]
	add r2, r4, #0
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldrb r1, [r6, #6]
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _020686C0 ; =0x020F1E88
	add r0, r5, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r7, r0]
	ldr r1, _020686C4 ; =sub_0203B7C0
	add r0, r7, #0
	bl sub_0203B674
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020686C0: .word 0x020F1E88
_020686C4: .word sub_0203B7C0
	thumb_func_end sub_02068630

	thumb_func_start sub_020686C8
sub_020686C8: ; 0x020686C8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D8AC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _020686F4 ; =sub_0203C3F4
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_020686F4: .word sub_0203C3F4
	thumb_func_end sub_020686C8

	thumb_func_start sub_020686F8
sub_020686F8: ; 0x020686F8
	push {r3, lr}
	ldr r1, _02068704 ; =sub_02068708
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02068704: .word sub_02068708
	thumb_func_end sub_020686F8

	thumb_func_start sub_02068708
sub_02068708: ; 0x02068708
	ldr r3, _0206870C ; =sub_0203D8AC
	bx r3
	; .align 2, 0
_0206870C: .word sub_0203D8AC
	thumb_func_end sub_02068708

	thumb_func_start sub_02068710
sub_02068710: ; 0x02068710
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _0206874C ; =sub_02054084
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_02053FAC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	mov r0, #0
	add r5, #0x90
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_0206874C: .word sub_02054084
	thumb_func_end sub_02068710

	thumb_func_start sub_02068750
sub_02068750: ; 0x02068750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02053FAC
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x38]
	bl sub_02062C48
	ldr r0, [r5, #0]
	ldr r1, _02068778 ; =sub_02054084
	add r2, r4, #0
	bl sub_02050904
	ldr r1, [r5, #0]
	mov r0, #0
	add r1, #0x90
	str r0, [r1, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068778: .word sub_02054084
	thumb_func_end sub_02068750

	thumb_func_start sub_0206877C
sub_0206877C: ; 0x0206877C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203A138
	cmp r0, #0
	bne _02068790
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02068790:
	ldr r0, [r5, #0]
	bl sub_0203A24C
	cmp r0, #0
	bne _020687A0
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687A0:
	ldr r0, [r5, #0x14]
	bl sub_0205EFDC
	cmp r0, #1
	bne _020687B0
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687B0:
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	beq _020687D0
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _020687D6
_020687D0:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687D6:
	ldr r0, [r5, #0x14]
	bl sub_0205EB74
	cmp r0, #2
	bne _020687E6
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687E6:
	ldrh r0, [r5, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEFC
	cmp r0, #1
	bne _020687FA
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020687FA:
	ldrh r0, [r5, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DFB8
	cmp r0, #1
	bne _0206880E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0206880E:
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0203A6A4
	cmp r0, #0
	bne _02068838
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02068838:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206877C

	thumb_func_start sub_0206883C
sub_0206883C: ; 0x0206883C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _0206886C ; =sub_02068884
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x30
	str r1, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	nop
_0206886C: .word sub_02068884
	thumb_func_end sub_0206883C

	thumb_func_start sub_02068870
sub_02068870: ; 0x02068870
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r1, _02068880 ; =sub_02068884
	mov r2, #0
	bl sub_02050904
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02068880: .word sub_02068884
	thumb_func_end sub_02068870

	thumb_func_start sub_02068884
sub_02068884: ; 0x02068884
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #3
	bhi _02068944
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020688A8: ; jump table
	.short _020688B0 - _020688A8 - 2 ; case 0
	.short _020688B6 - _020688A8 - 2 ; case 1
	.short _02068934 - _020688A8 - 2 ; case 2
	.short _0206893A - _020688A8 - 2 ; case 3
_020688B0:
	add r0, r0, #1
	str r0, [r5, #0]
	b _02068944
_020688B6:
	ldr r0, [r4, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _020688F6
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DDC
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ov5_021DFB54
	ldr r0, [r4, #0x3c]
	bl ov5_021DFB5C
	add r0, r4, #0
	mov r1, #0
	bl sub_020553F0
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [r1, #0]
	bl sub_02055428
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_02055554
	b _0206892C
_020688F6:
	mov r1, #0x12
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020553F0
	mov r1, #0x12
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #1
	bl sub_02055554
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DDC
	ldr r0, [r4, #0x3c]
	mov r1, #2
	bl ov5_021DFB54
	ldr r0, [r4, #0x3c]
	bl ov5_021DFB5C
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_02069434
_0206892C:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02068944
_02068934:
	add r0, r0, #1
	str r0, [r5, #0]
	b _02068944
_0206893A:
	ldr r0, [r4, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_02068944:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02068884

	thumb_func_start sub_02068948
sub_02068948: ; 0x02068948
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r1, [r4, #4]
	cmp r1, #1
	bne _0206895E
	mov r0, #2
	pop {r3, r4, r5, pc}
_0206895E:
	mov r1, #2
	bl sub_0206AF1C
	cmp r0, #1
	bne _0206896C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206896C:
	ldr r0, [r4, #0x14]
	bl sub_0205EFDC
	cmp r0, #1
	bne _0206897A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206897A:
	ldr r0, [r4, #0x14]
	bl sub_0205EB3C
	ldrh r1, [r4, #0xe]
	add r5, r0, #0
	bl sub_0206415C
	cmp r0, #1
	beq _02068998
	ldrh r1, [r4, #0xe]
	add r0, r5, #0
	bl sub_0206417C
	cmp r0, #1
	bne _0206899C
_02068998:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206899C:
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DAD4
	cmp r0, #1
	beq _020689C6
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DCE0
	cmp r0, #1
	beq _020689C6
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DCFC
	cmp r0, #1
	bne _020689CC
_020689C6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020689CC:
	ldr r0, [r4, #0]
	bl sub_0203A1F0
	cmp r0, #0
	bne _020689DC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020689DC:
	ldr r0, [r4, #8]
	cmp r0, #2
	bne _020689E8
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020689E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02068948

	thumb_func_start sub_020689EC
sub_020689EC: ; 0x020689EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0203D30C
	ldr r1, _02068A14 ; =sub_0203C50C
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_02068A14: .word sub_0203C50C
	thumb_func_end sub_020689EC

	thumb_func_start sub_02068A18
sub_02068A18: ; 0x02068A18
	push {r3, lr}
	ldr r1, _02068A24 ; =sub_02068A28
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02068A24: .word sub_02068A28
	thumb_func_end sub_02068A18

	thumb_func_start sub_02068A28
sub_02068A28: ; 0x02068A28
	push {r3, lr}
	mov r1, #0
	bl sub_0203D30C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02068A28

	thumb_func_start sub_02068A34
sub_02068A34: ; 0x02068A34
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A64
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x20
	strb r1, [r0]
	str r5, [r4, #0x1c]
	ldrh r0, [r6, #4]
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldrb r1, [r6, #6]
	add r0, #0x22
	strb r1, [r0]
	ldrh r0, [r6, #4]
	bl sub_0207D268
	strh r0, [r4, #0x26]
	ldr r1, _02068AC4 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r7, r0]
	ldr r1, _02068AC8 ; =sub_0203B7C0
	add r0, r7, #0
	bl sub_0203B674
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02068AC4: .word 0x020F1E88
_02068AC8: .word sub_0203B7C0
	thumb_func_end sub_02068A34

	thumb_func_start sub_02068ACC
sub_02068ACC: ; 0x02068ACC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	ldrh r0, [r5, #4]
	bl sub_0207D2F0
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #3
	mov r3, #0xb
	bl sub_0203D94C
	add r6, r0, #0
	ldrh r0, [r5, #4]
	mov r1, #3
	mov r2, #0
	bl sub_0203C540
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	str r6, [r4, r0]
	ldr r1, _02068B14 ; =sub_0203C558
	add r0, r4, #0
	bl sub_0203B674
	pop {r4, r5, r6, pc}
	nop
_02068B14: .word sub_0203C558
	thumb_func_end sub_02068ACC

	thumb_func_start sub_02068B18
sub_02068B18: ; 0x02068B18
	mov r0, #0
	bx lr
	thumb_func_end sub_02068B18

	thumb_func_start sub_02068B1C
sub_02068B1C: ; 0x02068B1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_02050A60
	ldr r0, [r5, #0]
	bl sub_02050A64
	ldrh r1, [r4, #0x10]
	mov r0, #1
	tst r0, r1
	beq _02068B42
	ldr r2, _02068B4C ; =0x00000AF1
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02068540
	pop {r3, r4, r5, pc}
_02068B42:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02068630
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068B4C: .word 0x00000AF1
	thumb_func_end sub_02068B1C

	thumb_func_start sub_02068B50
sub_02068B50: ; 0x02068B50
	ldrh r1, [r0, #0x10]
	mov r0, #1
	tst r1, r0
	bne _02068B5A
	mov r0, #0
_02068B5A:
	bx lr
	thumb_func_end sub_02068B50

	thumb_func_start sub_02068B5C
sub_02068B5C: ; 0x02068B5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0203D9B8
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _02068B88 ; =sub_0203C710
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068B88: .word sub_0203C710
	thumb_func_end sub_02068B5C

	thumb_func_start sub_02068B8C
sub_02068B8C: ; 0x02068B8C
	push {r3, lr}
	ldr r1, _02068B98 ; =sub_02068B9C
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02068B98: .word sub_02068B9C
	thumb_func_end sub_02068B8C

	thumb_func_start sub_02068B9C
sub_02068B9C: ; 0x02068B9C
	ldr r3, _02068BA4 ; =sub_0203D9B8
	mov r1, #0xb
	bx r3
	nop
_02068BA4: .word sub_0203D9B8
	thumb_func_end sub_02068B9C

	thumb_func_start sub_02068BA8
sub_02068BA8: ; 0x02068BA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	bl sub_0203DE78
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _02068BD8 ; =sub_0203C750
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_02068BD8: .word sub_0203C750
	thumb_func_end sub_02068BA8

	thumb_func_start sub_02068BDC
sub_02068BDC: ; 0x02068BDC
	push {r3, lr}
	ldr r1, _02068BE8 ; =sub_02068BEC
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02068BE8: .word sub_02068BEC
	thumb_func_end sub_02068BDC

	thumb_func_start sub_02068BEC
sub_02068BEC: ; 0x02068BEC
	push {r3, lr}
	ldr r1, [r0, #0xc]
	bl sub_0203DE78
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02068BEC

	thumb_func_start sub_02068BF8
sub_02068BF8: ; 0x02068BF8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	add r0, r6, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02068C34 ; =sub_02069A00
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0x30
	str r4, [r5, r0]
	mov r0, #0xa
	strh r0, [r5, #0x2a]
	pop {r4, r5, r6, pc}
	nop
_02068C34: .word sub_02069A00
	thumb_func_end sub_02068BF8

	thumb_func_start sub_02068C38
sub_02068C38: ; 0x02068C38
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	ldr r1, _02068C58 ; =sub_02069A00
	bl sub_02050904
	mov r0, #0
	pop {r4, pc}
	nop
_02068C58: .word sub_02069A00
	thumb_func_end sub_02068C38

	thumb_func_start sub_02068C5C
sub_02068C5C: ; 0x02068C5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02068C6A
	mov r0, #2
	pop {r4, pc}
_02068C6A:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _02068C7C
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02068C7C:
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DAC8
	cmp r0, #0
	beq _02068C8E
	mov r0, #0
	pop {r4, pc}
_02068C8E:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end sub_02068C5C

	thumb_func_start sub_02068C94
sub_02068C94: ; 0x02068C94
	ldr r3, _02068C9C ; =sub_02068540
	ldr r2, _02068CA0 ; =0x00000AF2
	bx r3
	nop
_02068C9C: .word sub_02068540
_02068CA0: .word 0x00000AF2
	thumb_func_end sub_02068C94

	thumb_func_start sub_02068CA4
sub_02068CA4: ; 0x02068CA4
	push {r3, lr}
	ldr r1, _02068CB0 ; =0x00000AF2
	bl sub_02068584
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02068CB0: .word 0x00000AF2
	thumb_func_end sub_02068CA4

	thumb_func_start sub_02068CB4
sub_02068CB4: ; 0x02068CB4
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _02068CBE
	mov r0, #2
	bx lr
_02068CBE:
	ldrh r1, [r0, #0x10]
	mov r0, #4
	tst r1, r0
	beq _02068CCA
	mov r0, #0
	bx lr
_02068CCA:
	sub r0, r0, #5
	bx lr
	; .align 2, 0
	thumb_func_end sub_02068CB4

	thumb_func_start sub_02068CD0
sub_02068CD0: ; 0x02068CD0
	ldr r3, _02068CD8 ; =sub_02068540
	ldr r2, _02068CDC ; =0x00000AF3
	bx r3
	nop
_02068CD8: .word sub_02068540
_02068CDC: .word 0x00000AF3
	thumb_func_end sub_02068CD0

	thumb_func_start sub_02068CE0
sub_02068CE0: ; 0x02068CE0
	ldrh r1, [r0, #0x10]
	mov r0, #2
	tst r1, r0
	beq _02068CEC
	mov r0, #0
	bx lr
_02068CEC:
	sub r0, r0, #3
	bx lr
	thumb_func_end sub_02068CE0

	thumb_func_start sub_02068CF0
sub_02068CF0: ; 0x02068CF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509D4
	bl ov5_021F0484
	str r0, [sp]
	ldr r1, [sp]
	mov r0, #0xb
	bl sub_02018184
	ldr r2, [sp]
	mov r1, #0
	add r7, r0, #0
	bl sub_020D5124
	mov r0, #0x72
	ldr r1, _02068D44 ; =0x021F0489
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r7, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	ldrh r1, [r5, #4]
	mov r2, #1
	mov r3, #0xb
	bl sub_0207D60C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02068D44: .word 0x021F0489
	thumb_func_end sub_02068CF0

	thumb_func_start sub_02068D48
sub_02068D48: ; 0x02068D48
	ldr r3, _02068D50 ; =sub_02068540
	ldr r2, _02068D54 ; =0x000022F6
	bx r3
	nop
_02068D50: .word sub_02068540
_02068D54: .word 0x000022F6
	thumb_func_end sub_02068D48

	thumb_func_start sub_02068D58
sub_02068D58: ; 0x02068D58
	push {r3, lr}
	ldr r1, _02068D64 ; =0x000022F6
	bl sub_02068584
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02068D64: .word 0x000022F6
	thumb_func_end sub_02068D58

	thumb_func_start sub_02068D68
sub_02068D68: ; 0x02068D68
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _02068D78
	mov r0, #0
	pop {r3, pc}
_02068D78:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02068D68

	thumb_func_start sub_02068D80
sub_02068D80: ; 0x02068D80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02068DB8 ; =0x021F08F9
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl ov5_021F08CC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068DB8: .word 0x021F08F9
	thumb_func_end sub_02068D80

	thumb_func_start sub_02068DBC
sub_02068DBC: ; 0x02068DBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #0
	bl ov5_021F08CC
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02068DD8 ; =0x021F08F9
	bl sub_02050904
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02068DD8: .word 0x021F08F9
	thumb_func_end sub_02068DBC

	thumb_func_start sub_02068DDC
sub_02068DDC: ; 0x02068DDC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02068E14 ; =0x021F08F9
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #1
	bl ov5_021F08CC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068E14: .word 0x021F08F9
	thumb_func_end sub_02068DDC

	thumb_func_start sub_02068E18
sub_02068E18: ; 0x02068E18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #1
	bl ov5_021F08CC
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02068E34 ; =0x021F08F9
	bl sub_02050904
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02068E34: .word 0x021F08F9
	thumb_func_end sub_02068E18

	thumb_func_start sub_02068E38
sub_02068E38: ; 0x02068E38
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02068E70 ; =0x021F08F9
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #2
	bl ov5_021F08CC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068E70: .word 0x021F08F9
	thumb_func_end sub_02068E38

	thumb_func_start sub_02068E74
sub_02068E74: ; 0x02068E74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #2
	bl ov5_021F08CC
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02068E90 ; =0x021F08F9
	bl sub_02050904
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02068E90: .word 0x021F08F9
	thumb_func_end sub_02068E74

	thumb_func_start sub_02068E94
sub_02068E94: ; 0x02068E94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02068EA2
	mov r0, #2
	pop {r4, pc}
_02068EA2:
	ldr r1, [r4, #0]
	ldr r0, _02068EF8 ; =0x0000023D
	sub r0, r1, r0
	cmp r0, #0xa
	bhi _02068EB0
	mov r0, #3
	pop {r4, pc}
_02068EB0:
	ldrh r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #1
	bne _02068EF2
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEFC
	cmp r0, #1
	beq _02068EDA
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEF0
	cmp r0, #1
	bne _02068EEE
_02068EDA:
	ldr r0, [r4, #0x14]
	bl sub_0205EB3C
	bl sub_02062F30
	cmp r0, #1
	bne _02068EEE
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02068EEE:
	mov r0, #0
	pop {r4, pc}
_02068EF2:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	; .align 2, 0
_02068EF8: .word 0x0000023D
	thumb_func_end sub_02068E94

	thumb_func_start sub_02068EFC
sub_02068EFC: ; 0x02068EFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #0x16]
	mov r0, #0x80
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x10]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	bl sub_0207D3FC
	add r2, r0, #0
	ldr r0, [r5, #0]
	lsl r2, r2, #0x10
	ldr r0, [r0, #0xc]
	ldr r1, [r4, #0x10]
	lsr r2, r2, #0x10
	mov r3, #0xb
	bl sub_0207CC10
	ldr r0, [r5, #0]
	ldr r1, _02068F44 ; =sub_02068F48
	add r2, r4, #0
	bl sub_02050904
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068F44: .word sub_02068F48
	thumb_func_end sub_02068EFC

	thumb_func_start sub_02068F48
sub_02068F48: ; 0x02068F48
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _02068F6A
	cmp r0, #1
	beq _02068FA0
	cmp r0, #2
	beq _02068FC8
	b _02068FE4
_02068F6A:
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205D944
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_0205D994
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	b _02068FE4
_02068FA0:
	ldrh r0, [r4, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #1
	bne _02068FE4
	ldr r0, _02068FE8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r0, r1
	beq _02068FE4
	add r0, r4, #0
	mov r1, #0
	bl sub_0200E084
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	b _02068FE4
_02068FC8:
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	add r0, r4, #0
	bl sub_0201A8FC
	ldr r0, [r4, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02068FE4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02068FE8: .word 0x021BF67C
	thumb_func_end sub_02068F48

	thumb_func_start sub_02068FEC
sub_02068FEC: ; 0x02068FEC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A64
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0202440C
	str r0, [r4, #0x10]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x20
	strb r1, [r0]
	ldrh r0, [r6, #4]
	add r2, r4, #0
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldrb r1, [r6, #6]
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _02069078 ; =0x020F1E88
	add r0, r5, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r7, r0]
	ldr r1, _0206907C ; =sub_0203B7C0
	add r0, r7, #0
	bl sub_0203B674
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02069078: .word 0x020F1E88
_0206907C: .word sub_0203B7C0
	thumb_func_end sub_02068FEC

	thumb_func_start sub_02069080
sub_02069080: ; 0x02069080
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _020690C0 ; =sub_020690F0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x30
	str r1, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	ldrh r1, [r5, #4]
	mov r2, #1
	mov r3, #0xb
	bl sub_0207D60C
	pop {r4, r5, r6, pc}
	nop
_020690C0: .word sub_020690F0
	thumb_func_end sub_02069080

	thumb_func_start sub_020690C4
sub_020690C4: ; 0x020690C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _020690D2
	mov r0, #2
	pop {r4, pc}
_020690D2:
	ldr r0, [r4, #0]
	bl sub_0203A274
	cmp r0, #1
	bne _020690EA
	ldr r0, [r4, #0]
	bl sub_0203A1B8
	cmp r0, #1
	bne _020690EA
	mov r0, #0
	pop {r4, pc}
_020690EA:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end sub_020690C4

	thumb_func_start sub_020690F0
sub_020690F0: ; 0x020690F0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	mov r1, #0xb
	bl ov6_02247100
	add r2, r0, #0
	ldr r1, _0206910C ; =0x02247121
	add r0, r4, #0
	bl sub_02050924
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0206910C: .word 0x02247121
	thumb_func_end sub_020690F0

	thumb_func_start sub_02069110
sub_02069110: ; 0x02069110
	ldr r3, _02069118 ; =sub_02068540
	ldr r2, _0206911C ; =0x000007F7
	bx r3
	nop
_02069118: .word sub_02068540
_0206911C: .word 0x000007F7
	thumb_func_end sub_02069110

	thumb_func_start sub_02069120
sub_02069120: ; 0x02069120
	push {r3, lr}
	ldr r1, _0206912C ; =0x000007F7
	bl sub_02068584
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0206912C: .word 0x000007F7
	thumb_func_end sub_02069120

	thumb_func_start sub_02069130
sub_02069130: ; 0x02069130
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	bl sub_0206A954
	cmp r0, #0
	bne _0206914C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0206914C:
	add r0, r5, #0
	mov r1, #2
	bl sub_0206B16C
	cmp r0, #0
	bne _0206915E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0206915E:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027474
	cmp r0, #0
	bne _02069174
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02069174:
	ldr r0, [r4, #0]
	bl sub_0203A31C
	cmp r0, #0
	beq _02069182
	mov r0, #0
	pop {r3, r4, r5, pc}
_02069182:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02069130

	thumb_func_start sub_02069188
sub_02069188: ; 0x02069188
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	bl sub_0203DE88
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _020691B8 ; =sub_0203C784
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_020691B8: .word sub_0203C784
	thumb_func_end sub_02069188

	thumb_func_start sub_020691BC
sub_020691BC: ; 0x020691BC
	push {r3, lr}
	ldr r1, _020691C8 ; =sub_020691CC
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020691C8: .word sub_020691CC
	thumb_func_end sub_020691BC

	thumb_func_start sub_020691CC
sub_020691CC: ; 0x020691CC
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021E2064
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0203DE88
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020691CC

	thumb_func_start sub_020691E0
sub_020691E0: ; 0x020691E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02050A64
	add r4, r0, #0
	ldr r2, _02069210 ; =0x000001D2
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0203E598
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _02069214 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	pop {r3, r4, r5, pc}
	nop
_02069210: .word 0x000001D2
_02069214: .word sub_0203B7C0
	thumb_func_end sub_020691E0

	thumb_func_start sub_02069218
sub_02069218: ; 0x02069218
	push {r3, lr}
	ldr r1, _02069224 ; =sub_02069228
	bl sub_020693F8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02069224: .word sub_02069228
	thumb_func_end sub_02069218

	thumb_func_start sub_02069228
sub_02069228: ; 0x02069228
	ldr r3, _02069230 ; =sub_0203E598
	mov r1, #0xb
	ldr r2, _02069234 ; =0x000001D2
	bx r3
	; .align 2, 0
_02069230: .word sub_0203E598
_02069234: .word 0x000001D2
	thumb_func_end sub_02069228

	thumb_func_start sub_02069238
sub_02069238: ; 0x02069238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0206C0D0
	cmp r0, #1
	bne _02069248
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02069248:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _0206925A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206925A:
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	bl sub_0207D3FC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #6
	mov r2, #0xb
	str r0, [sp]
	bl sub_0207CFF0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #2
	add r1, r4, #0
	bl sub_020683F4
	add r6, r0, #0
	mov r0, #1
	add r1, r4, #0
	bl sub_020683F4
	add r7, r0, #0
	bne _02069290
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02069290:
	mov r0, #0xb
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x2c
	bl sub_020D5124
	str r5, [r4, #0]
	ldr r0, [sp]
	add r1, r4, #4
	strh r0, [r4, #0x28]
	add r0, r5, #0
	bl sub_0206842C
	mov r5, #0
	cmp r6, #0
	bne _020692BE
	add r0, r4, #0
	blx r7
	add r5, r0, #0
	b _020692D4
_020692BE:
	add r0, r4, #4
	blx r6
	add r1, r0, #0
	bne _020692CE
	add r0, r4, #0
	blx r7
	add r5, r0, #0
	b _020692D4
_020692CE:
	add r0, r4, #0
	bl sub_020692E4
_020692D4:
	cmp r5, #0
	bne _020692DE
	add r0, r4, #0
	bl sub_020181C4
_020692DE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02069238

	thumb_func_start sub_020692E4
sub_020692E4: ; 0x020692E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #0x16]
	mov r0, #0x80
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x10]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	mov r1, #0xb
	str r1, [sp]
	ldrh r2, [r5, #0x28]
	ldr r1, [r4, #0x10]
	add r3, r6, #0
	bl sub_0207CD34
	ldr r0, [r5, #0]
	ldr r1, _02069328 ; =sub_02068F48
	add r2, r4, #0
	bl sub_02050904
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02069328: .word sub_02068F48
	thumb_func_end sub_020692E4

	thumb_func_start sub_0206932C
sub_0206932C: ; 0x0206932C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #4
	bhi _020693EE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02069352: ; jump table
	.short _0206935C - _02069352 - 2 ; case 0
	.short _02069370 - _02069352 - 2 ; case 1
	.short _02069388 - _02069352 - 2 ; case 2
	.short _020693B8 - _02069352 - 2 ; case 3
	.short _020693D6 - _02069352 - 2 ; case 4
_0206935C:
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	mov r0, #0
	bl ov5_021D1744
	mov r0, #1
	add r4, #0x2a
	strb r0, [r4]
	b _020693EE
_02069370:
	bl sub_0200F2AC
	cmp r0, #0
	beq _020693EE
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	blx r1
	str r0, [r4, #0x24]
	mov r0, #2
	add r4, #0x2a
	strb r0, [r4]
	b _020693EE
_02069388:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _020693EE
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _020693AA
	ldr r2, [r4, #0x20]
	ldr r1, _020693F4 ; =sub_02068B9C
	cmp r2, r1
	bne _020693A6
	bl sub_02098AF0
	b _020693AA
_020693A6:
	bl sub_020181C4
_020693AA:
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #3
	add r4, #0x2a
	strb r0, [r4]
	b _020693EE
_020693B8:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _020693EE
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	mov r0, #1
	bl ov5_021D1744
	mov r0, #4
	add r4, #0x2a
	strb r0, [r4]
	b _020693EE
_020693D6:
	bl sub_0200F2AC
	cmp r0, #0
	beq _020693EE
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020693EE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020693F4: .word sub_02068B9C
	thumb_func_end sub_0206932C

	thumb_func_start sub_020693F8
sub_020693F8: ; 0x020693F8
	add r2, r0, #0
	str r1, [r2, #0x20]
	ldr r3, _02069404 ; =sub_02050904
	ldr r0, [r2, #0]
	ldr r1, _02069408 ; =sub_0206932C
	bx r3
	; .align 2, 0
_02069404: .word sub_02050904
_02069408: .word sub_0206932C
	thumb_func_end sub_020693F8

	.rodata


	.global Unk_020EF79C
Unk_020EF79C: ; 0x020EF79C
	.incbin "incbin/arm9_rodata.bin", 0xAB5C, 0x12C

