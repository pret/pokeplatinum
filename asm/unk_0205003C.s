	.include "macros/function.inc"
	.include "include/unk_0205003C.inc"

	

	.text


	thumb_func_start sub_0205003C
sub_0205003C: ; 0x0205003C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020304A0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020305B8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r0, #0
	cmp r7, #4
	bhi _0205012C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020500A8: ; jump table
	.short _020500B2 - _020500A8 - 2 ; case 0
	.short _020500C4 - _020500A8 - 2 ; case 1
	.short _0205012C - _020500A8 - 2 ; case 2
	.short _020500FC - _020500A8 - 2 ; case 3
	.short _0205010E - _020500A8 - 2 ; case 4
_020500B2:
	add r4, #0x80
	ldr r1, [r4, #0]
	add r0, r5, #0
	ldr r1, [r1, #0xc]
	mov r2, #0
	bl sub_02049EC4
	strh r0, [r6]
	b _02050134
_020500C4:
	cmp r5, #3
	bne _020500E8
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6e
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6e
	bl sub_02030698
	strh r0, [r6]
	b _02050134
_020500E8:
	lsl r2, r5, #0x18
	mov r3, #0
	ldr r0, [sp, #4]
	mov r1, #8
	lsr r2, r2, #0x18
	str r3, [sp]
	bl sub_02030600
	strh r0, [r6]
	b _02050134
_020500FC:
	add r4, #0x80
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	bl sub_02050174
	b _02050134
_0205010E:
	cmp r5, #0
	bne _02050116
	mov r2, #0
	b _02050120
_02050116:
	cmp r5, #1
	bne _0205011E
	mov r2, #1
	b _02050120
_0205011E:
	mov r2, #2
_02050120:
	ldr r0, [r4, #0x74]
	bl sub_020502E0
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205012C:
	bl sub_02022974
	mov r0, #0
	strh r0, [r6]
_02050134:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205003C

	thumb_func_start sub_0205013C
sub_0205013C: ; 0x0205013C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020305B8
	lsl r2, r4, #0x18
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	lsr r2, r2, #0x18
	ldr r0, [r0, #0xc]
	bl sub_02050174
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205013C

	thumb_func_start sub_02050174
sub_02050174: ; 0x02050174
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r3, #0
	add r0, sp, #4
	strb r3, [r0]
	add r0, sp, #4
	str r0, [sp]
	add r0, r1, #0
	mov r1, #8
	add r4, r2, #0
	bl sub_020305CC
	cmp r4, #3
	bne _020501AC
	add r0, r5, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x6e
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x6e
	mov r3, #0
	bl sub_020306E4
_020501AC:
	add r0, r5, #0
	bl sub_0203068C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205E700
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E700
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02050174

	thumb_func_start sub_020501D8
sub_020501D8: ; 0x020501D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r3, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02050224
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020501D8

	thumb_func_start sub_02050224
sub_02050224: ; 0x02050224
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x10
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_0205023E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0205023E
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	add r0, r4, #0
	str r7, [r4, #0xc]
	bl sub_02099514
	ldr r0, [sp]
	ldr r1, _02050260 ; =sub_02050264
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02050260: .word sub_02050264
	thumb_func_end sub_02050224

	thumb_func_start sub_02050264
sub_02050264: ; 0x02050264
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _0205027C
	cmp r1, #1
	beq _02050292
	cmp r1, #2
	beq _020502D2
	b _020502DA
_0205027C:
	mov r0, #0x86
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020359DC
	cmp r0, #1
	bne _020502DA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _020502DA
_02050292:
	ldrb r0, [r4, #1]
	cmp r0, #2
	blo _020502DA
	ldr r0, [r4, #0xc]
	mov r1, #0
	strh r1, [r0]
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _020502AC
	ldrh r0, [r4, #0xa]
	cmp r1, r0
	bne _020502B4
_020502AC:
	ldr r1, [r4, #0xc]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_020502B4:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _020502C2
	ldrh r0, [r4, #0xa]
	cmp r1, r0
	bne _020502CA
_020502C2:
	ldr r1, [r4, #0xc]
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
_020502CA:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _020502DA
_020502D2:
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_020502DA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050264

	thumb_func_start sub_020502E0
sub_020502E0: ; 0x020502E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	strb r6, [r4, #4]
	str r5, [r4, #0xc]
	ldr r0, [r7, #0x10]
	ldr r1, _02050310 ; =sub_02050314
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02050310: .word sub_02050314
	thumb_func_end sub_020502E0

	thumb_func_start sub_02050314
sub_02050314: ; 0x02050314
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #4
	bhi _02050376
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02050338: ; jump table
	.short _02050342 - _02050338 - 2 ; case 0
	.short _0205034E - _02050338 - 2 ; case 1
	.short _02050358 - _02050338 - 2 ; case 2
	.short _02050364 - _02050338 - 2 ; case 3
	.short _0205036E - _02050338 - 2 ; case 4
_02050342:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0205037C
	str r0, [r4, #0]
	b _02050376
_0205034E:
	add r1, r5, #0
	bl sub_02050448
	str r0, [r4, #0]
	b _02050376
_02050358:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_02050498
	str r0, [r4, #0]
	b _02050376
_02050364:
	add r1, r5, #0
	bl sub_02050520
	str r0, [r4, #0]
	b _02050376
_0205036E:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02050376:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02050314

	thumb_func_start sub_0205037C
sub_0205037C: ; 0x0205037C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0
	add r1, #0x21
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #0x17
	add r1, #0x20
	strb r2, [r1]
	str r6, [r4, #0x1c]
	add r1, r4, #0
	ldrb r2, [r5, #5]
	add r1, #0x22
	strb r2, [r1]
_020503D0:
	add r1, r5, r0
	ldrb r2, [r1, #6]
	add r1, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r1, #0x2c
	lsr r0, r0, #0x18
	strb r2, [r1]
	cmp r0, #3
	blo _020503D0
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r7, #0xf
	mov r1, #3
	bic r2, r7
	orr r2, r1
	add r1, r4, #0
	add r1, #0x32
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x32
	ldrb r3, [r1]
	mov r1, #0xf0
	mov r2, #0x30
	bic r3, r1
	orr r3, r2
	add r2, r4, #0
	add r2, #0x32
	strb r3, [r2]
	add r0, r4, #0
	ldrb r2, [r5, #4]
	add r0, #0x32
	cmp r2, #2
	bne _02050432
	ldrb r2, [r0]
	mov r3, #2
	bic r2, r7
	orr r2, r3
	strb r2, [r0]
	ldrb r2, [r0]
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
_02050432:
	ldr r1, _02050444 ; =0x020F1E88
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r5, #0xc]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02050444: .word 0x020F1E88
	thumb_func_end sub_0205037C

	thumb_func_start sub_02050448
sub_02050448: ; 0x02050448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0205045A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205045A:
	ldr r0, [r5, #0xc]
	ldr r4, [r0, #0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _02050470
	cmp r0, #7
	bne _02050474
	mov r0, #4
	pop {r3, r4, r5, pc}
_02050470:
	mov r0, #4
	pop {r3, r4, r5, pc}
_02050474:
	add r0, r4, #0
	add r0, #0x2c
	add r1, r5, #6
	mov r2, #3
	bl MI_CpuCopy8
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #5]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02050448

	thumb_func_start sub_02050498
sub_02050498: ; 0x02050498
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	ldr r5, [r7, #0xc]
	add r0, r2, #0
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r6, #5]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _02050518 ; =0x020EC1FC
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0205051C ; =0x020F410C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r6, #0xc]
	str r4, [r0, #0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02050518: .word 0x020EC1FC
_0205051C: .word 0x020F410C
	thumb_func_end sub_02050498

	thumb_func_start sub_02050520
sub_02050520: ; 0x02050520
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _02050532
	mov r0, #3
	pop {r4, pc}
_02050532:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #5]
	bl sub_020181C4
	ldr r1, [r4, #0xc]
	mov r0, #0
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050520

	.rodata


	.global Unk_020EC1FC
Unk_020EC1FC: ; 0x020EC1FC
	.incbin "incbin/arm9_rodata.bin", 0x75BC, 0x9

