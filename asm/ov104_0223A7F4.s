	.include "macros/function.inc"
	.include "include/ov104_0223A7F4.inc"

	

	.text


	thumb_func_start ov104_0223A7F4
ov104_0223A7F4: ; 0x0223A7F4
	push {r3, r4, r5, lr}
	cmp r1, #8
	blo _0223A7FC
	mov r1, #7
_0223A7FC:
	cmp r0, #0
	bne _0223A818
	mov r0, #7
	add r3, r2, #1
	mul r0, r1
	add r0, r3, r0
	cmp r0, #0x15
	bne _0223A810
	ldr r0, _0223A848 ; =0x00000135
	pop {r3, r4, r5, pc}
_0223A810:
	cmp r0, #0x31
	bne _0223A818
	ldr r0, _0223A84C ; =0x00000136
	pop {r3, r4, r5, pc}
_0223A818:
	cmp r2, #6
	beq _0223A820
	cmp r2, #0xd
	bne _0223A82E
_0223A820:
	ldr r0, _0223A850 ; =0x02240200
	lsl r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223A854 ; =0x02240202
	ldrh r0, [r0, r1]
	sub r5, r0, r4
	b _0223A83A
_0223A82E:
	ldr r0, _0223A858 ; =0x022401FC
	lsl r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223A85C ; =0x022401FE
	ldrh r0, [r0, r1]
	sub r5, r0, r4
_0223A83A:
	bl sub_0201D2E8
	add r1, r5, #0
	bl _s32_div_f
	add r0, r4, r1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223A848: .word 0x00000135
_0223A84C: .word 0x00000136
_0223A850: .word 0x02240200
_0223A854: .word 0x02240202
_0223A858: .word 0x022401FC
_0223A85C: .word 0x022401FE
	thumb_func_end ov104_0223A7F4

	thumb_func_start ov104_0223A860
ov104_0223A860: ; 0x0223A860
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r7, r3, #0
	mov r4, #0
	add r5, r6, #0
_0223A870:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov104_0223A7F4
	mov r1, #0
	strh r0, [r5]
	cmp r4, #0
	ble _0223A896
	lsl r0, r4, #1
	ldrh r3, [r6, r0]
	add r2, r6, #0
_0223A888:
	ldrh r0, [r2]
	cmp r0, r3
	beq _0223A896
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, r4
	blt _0223A888
_0223A896:
	cmp r1, r4
	bne _0223A89E
	add r5, r5, #2
	add r4, r4, #1
_0223A89E:
	cmp r4, r7
	blt _0223A870
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223A860

	thumb_func_start ov104_0223A8A8
ov104_0223A8A8: ; 0x0223A8A8
	push {r4, lr}
	cmp r1, #0
	bne _0223A8B4
	ldr r2, _0223A8E8 ; =0x0224028C
	ldr r1, _0223A8EC ; =0x02241AB8
	b _0223A8B8
_0223A8B4:
	ldr r2, _0223A8F0 ; =0x022402DC
	ldr r1, _0223A8EC ; =0x02241AB8
_0223A8B8:
	mov r4, #0xa
	str r2, [r1, #0]
	mov r2, #0
	cmp r4, #0
	ble _0223A8D4
	ldr r1, _0223A8EC ; =0x02241AB8
	ldr r3, [r1, #0]
_0223A8C6:
	ldrh r1, [r3]
	cmp r0, r1
	blt _0223A8D4
	add r2, r2, #1
	add r3, #8
	cmp r2, r4
	blt _0223A8C6
_0223A8D4:
	cmp r2, r4
	blt _0223A8DE
	bl sub_02022974
	sub r2, r4, #1
_0223A8DE:
	ldr r0, _0223A8EC ; =0x02241AB8
	ldr r1, [r0, #0]
	lsl r0, r2, #3
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_0223A8E8: .word 0x0224028C
_0223A8EC: .word 0x02241AB8
_0223A8F0: .word 0x022402DC
	thumb_func_end ov104_0223A8A8

	thumb_func_start ov104_0223A8F4
ov104_0223A8F4: ; 0x0223A8F4
	cmp r0, #8
	blt _0223A8FA
	mov r0, #7
_0223A8FA:
	cmp r1, #0
	bne _0223A906
	ldr r1, _0223A910 ; =0x0224028C
	lsl r0, r0, #3
	add r0, r1, r0
	bx lr
_0223A906:
	ldr r1, _0223A914 ; =0x0224023C
	lsl r0, r0, #3
	add r0, r1, r0
	bx lr
	nop
_0223A910: .word 0x0224028C
_0223A914: .word 0x0224023C
	thumb_func_end ov104_0223A8F4

	thumb_func_start ov104_0223A918
ov104_0223A918: ; 0x0223A918
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #4]
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0xa8]
	add r7, r2, #0
	str r0, [sp, #0xa8]
	add r0, r3, #0
	str r3, [sp, #8]
	cmp r0, #6
	ble _0223A936
	bl sub_02022974
_0223A936:
	ldr r0, [sp, #0xa0]
	mov r4, #0
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #2]
	sub r0, r1, r0
	add r1, sp, #0x88
	ldrh r5, [r1, #0x1c]
	str r0, [sp, #0x1c]
	add r0, r4, #0
	cmp r5, #0
	beq _0223A964
	ldr r3, _0223AA4C ; =0x022401E8
	mov r0, #5
	add r2, r4, #0
_0223A952:
	ldr r1, [r3, #0]
	cmp r5, r1
	bgt _0223A95C
	add r0, r2, #0
	b _0223A964
_0223A95C:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #5
	blo _0223A952
_0223A964:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0223AA44
	add r1, sp, #0x24
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x10]
	ldr r1, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
_0223A978:
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blt _0223A9AC
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _0223A9AC
	ldr r0, [sp, #0xa0]
	ldrh r1, [r0, #0xc]
	ldrh r0, [r0, #0xa]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	bl sub_0201D2E8
	ldr r1, [sp, #0x1c]
	add r1, r1, #1
	bl _s32_div_f
	ldr r0, [sp, #0xa0]
	ldrh r0, [r0, #0xc]
	sub r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #0xe]
	str r0, [sp, #0x20]
	b _0223A9C6
_0223A9AC:
	bl sub_0201D2E8
	ldr r1, [sp, #0x1c]
	add r1, r1, #1
	bl _s32_div_f
	ldr r0, [sp, #0xa0]
	ldrh r0, [r0, #4]
	sub r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #6]
	str r0, [sp, #0x20]
_0223A9C6:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	mov r2, #0xb3
	bl ov104_0222DCF4
	mov r2, #0
	cmp r4, #0
	ble _0223A9F4
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x14]
	ldrh r1, [r1]
	ldrh r3, [r3, #0xc]
	add r0, sp, #0x24
_0223A9E0:
	ldrh r5, [r0]
	cmp r5, r1
	beq _0223A9F4
	ldrh r5, [r0, #0xc]
	cmp r5, r3
	beq _0223A9F4
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r4
	blt _0223A9E0
_0223A9F4:
	cmp r2, r4
	bne _0223AA3E
	mov r3, #0
	cmp r7, #0
	ble _0223AA20
	ldr r2, [sp, #0x14]
	ldr r5, [sp, #0x14]
	ldrh r2, [r2]
	ldrh r6, [r5, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
_0223AA0A:
	ldrh r5, [r0]
	cmp r2, r5
	beq _0223AA20
	ldrh r5, [r1]
	cmp r6, r5
	beq _0223AA20
	add r3, r3, #1
	add r0, r0, #2
	add r1, r1, #2
	cmp r3, r7
	blt _0223AA0A
_0223AA20:
	cmp r3, r7
	bne _0223AA3E
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0xa8]
	strb r1, [r0, r4]
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #2
	str r0, [sp, #0x10]
_0223AA3E:
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _0223A978
_0223AA44:
	mov r0, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_0223AA4C: .word 0x022401E8
	thumb_func_end ov104_0223A918

	thumb_func_start ov104_0223AA50
ov104_0223AA50: ; 0x0223AA50
	cmp r0, #3
	bhi _0223AA70
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223AA60: ; jump table
	.short _0223AA68 - _0223AA60 - 2 ; case 0
	.short _0223AA68 - _0223AA60 - 2 ; case 1
	.short _0223AA6C - _0223AA60 - 2 ; case 2
	.short _0223AA6C - _0223AA60 - 2 ; case 3
_0223AA68:
	mov r0, #3
	bx lr
_0223AA6C:
	mov r0, #2
	bx lr
_0223AA70:
	mov r0, #0
	bx lr
	thumb_func_end ov104_0223AA50

	thumb_func_start ov104_0223AA74
ov104_0223AA74: ; 0x0223AA74
	cmp r0, #3
	bhi _0223AA9C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223AA84: ; jump table
	.short _0223AA8C - _0223AA84 - 2 ; case 0
	.short _0223AA8C - _0223AA84 - 2 ; case 1
	.short _0223AA90 - _0223AA84 - 2 ; case 2
	.short _0223AA90 - _0223AA84 - 2 ; case 3
_0223AA8C:
	mov r0, #3
	bx lr
_0223AA90:
	cmp r1, #0
	bne _0223AA98
	mov r0, #2
	bx lr
_0223AA98:
	mov r0, #4
	bx lr
_0223AA9C:
	mov r0, #0
	bx lr
	thumb_func_end ov104_0223AA74

	thumb_func_start ov104_0223AAA0
ov104_0223AAA0: ; 0x0223AAA0
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r4, r3, #0
	bl ov104_0223A8F4
	ldr r1, [sp, #0x2c]
	str r5, [sp]
	cmp r1, #0
	bne _0223AAD2
	mov r1, #0xb
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x18]
	mov r3, #6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl ov104_0223A918
	b _0223AAEC
_0223AAD2:
	mov r2, #0xb
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x18]
	mov r2, #6
	add r3, r2, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	add r0, r1, #0
	bl ov104_0223A918
_0223AAEC:
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	bl ov104_0222E330
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov104_0223AAA0

	thumb_func_start ov104_0223AB0C
ov104_0223AB0C: ; 0x0223AB0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xa8]
	add r7, r3, #0
	str r0, [sp, #0xa8]
	add r0, r1, #0
	add r1, r2, #0
	bl ov104_0223A8A8
	str r0, [sp, #0x18]
	mov r0, #0
	mov ip, r0
	ldr r0, [sp, #0xa8]
	cmp r0, #0
	ble _0223AB60
	add r4, sp, #0x34
	add r5, sp, #0x1c
_0223AB30:
	add r6, r7, #0
	add r3, sp, #0x4c
	mov r2, #7
_0223AB36:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223AB36
	add r0, sp, #0x1c
	ldrh r0, [r0, #0x30]
	add r7, #0x38
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	strh r0, [r4]
	add r0, sp, #0x1c
	ldrh r0, [r0, #0x32]
	add r4, r4, #2
	strh r0, [r5]
	mov r0, ip
	add r1, r0, #1
	ldr r0, [sp, #0xa8]
	add r5, r5, #2
	mov ip, r1
	cmp r1, r0
	blt _0223AB30
_0223AB60:
	ldr r0, [sp, #0x98]
	ldr r2, [sp, #0xa8]
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x1c
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, sp, #0x34
	bl ov104_0223A918
	ldr r0, [sp, #0xa4]
	ldr r1, [sp, #0x98]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xa0]
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	mov r3, #0
	bl ov104_0222E330
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223AB0C

	thumb_func_start ov104_0223ABA0
ov104_0223ABA0: ; 0x0223ABA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldrb r0, [r5, #4]
	add r6, r1, #0
	bl ov104_0223AA50
	str r0, [sp, #0x14]
	ldrb r0, [r5, #4]
	mov r1, #0
	bl ov104_0223AA74
	str r0, [sp, #0x10]
	ldr r0, _0223AD6C ; =0x000004D4
	ldr r0, [r5, r0]
	bl sub_02097284
	ldr r0, _0223AD70 ; =0x000004D8
	ldr r0, [r5, r0]
	bl sub_02097284
	ldrb r0, [r5, #4]
	bl ov104_0223AD74
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02051D8C
	ldr r1, [r6, #0xc]
	add r4, r0, #0
	str r1, [sp]
	ldr r1, [r6, #0x10]
	str r1, [sp, #4]
	ldr r1, [r6, #0x20]
	str r1, [sp, #8]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x1c]
	mov r1, #0
	bl sub_020521B8
	mov r0, #0x15
	mov r1, #0x13
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	bl sub_0207A014
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _0223AC36
_0223AC14:
	ldr r0, _0223AD6C ; =0x000004D4
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r1, r7, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_0205213C
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	cmp r6, r0
	blt _0223AC14
_0223AC36:
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02052894
	ldrb r1, [r5, #6]
	add r0, sp, #0x18
	mov r2, #0xb
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x18]
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	mov r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x18
	mov r3, #1
	bl ov104_0222E284
	ldrb r0, [r5, #4]
	mov r1, #0
	bl ov104_0223AA74
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_0207A014
	mov r7, #0
	add r6, r4, #0
_0223AC7C:
	add r0, r5, #0
	bl ov104_0223AEE4
	str r0, [r6, #0x34]
	add r7, r7, #1
	add r6, #0x34
	cmp r7, #4
	blt _0223AC7C
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0223ACBE
_0223AC9C:
	ldr r0, _0223AD70 ; =0x000004D8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r1, r7, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_0205213C
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	cmp r6, r0
	blt _0223AC9C
_0223ACBE:
	add r0, r7, #0
	bl sub_020181C4
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _0223ACCE
	cmp r0, #3
	bne _0223AD64
_0223ACCE:
	add r0, r4, #0
	bl sub_02052894
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_02032EE8
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r4, r1]
	bl sub_02025E80
	ldrb r1, [r5, #6]
	add r0, sp, #0x18
	mov r2, #0xb
	add r1, r1, #7
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x18]
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	mov r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x18
	mov r3, #3
	bl ov104_0222E284
	ldrb r0, [r5, #4]
	mov r1, #0
	bl ov104_0223AA74
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0207A014
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223AD5E
	add r6, r0, #0
_0223AD36:
	ldr r0, _0223AD70 ; =0x000004D8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r1, r7, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	bl sub_0205213C
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223AD36
_0223AD5E:
	add r0, r7, #0
	bl sub_020181C4
_0223AD64:
	add r0, r4, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223AD6C: .word 0x000004D4
_0223AD70: .word 0x000004D8
	thumb_func_end ov104_0223ABA0

	thumb_func_start ov104_0223AD74
ov104_0223AD74: ; 0x0223AD74
	cmp r0, #3
	bhi _0223AD9C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223AD84: ; jump table
	.short _0223AD8C - _0223AD84 - 2 ; case 0
	.short _0223AD90 - _0223AD84 - 2 ; case 1
	.short _0223AD94 - _0223AD84 - 2 ; case 2
	.short _0223AD98 - _0223AD84 - 2 ; case 3
_0223AD8C:
	mov r0, #0x81
	bx lr
_0223AD90:
	mov r0, #0x83
	bx lr
_0223AD94:
	mov r0, #0x8f
	bx lr
_0223AD98:
	mov r0, #0x8f
	bx lr
_0223AD9C:
	mov r0, #0x81
	bx lr
	thumb_func_end ov104_0223AD74

	thumb_func_start ov104_0223ADA0
ov104_0223ADA0: ; 0x0223ADA0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0223ADAA
	mov r0, #0x32
	bx lr
_0223ADAA:
	mov r0, #0x64
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223ADA0

	thumb_func_start ov104_0223ADB0
ov104_0223ADB0: ; 0x0223ADB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	mov r3, #0xa
	lsl r3, r3, #6
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp, #0xc]
	add r0, r5, r3
	sub r1, #0x2c
	sub r2, #0x20
	sub r3, #0x18
	add r1, r5, r1
	add r2, r5, r2
	add r3, r5, r3
	bl ov104_0222E330
	ldr r0, _0223AE28 ; =0x000004D4
	ldr r0, [r5, r0]
	bl sub_0207A008
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	mov r0, #0xa
	lsl r0, r0, #6
	mov r7, #0
	add r4, r5, r0
_0223ADF8:
	add r0, r5, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _0223AE2C ; =0x000004F8
	ldr r1, _0223AE28 ; =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov104_0222E1C0
	add r7, r7, #1
	add r4, #0x38
	cmp r7, #6
	blt _0223ADF8
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223AE28: .word 0x000004D4
_0223AE2C: .word 0x000004F8
	thumb_func_end ov104_0223ADB0

	thumb_func_start ov104_0223AE30
ov104_0223AE30: ; 0x0223AE30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, r0, #0
	ldr r0, _0223AEC8 ; =0x000004D4
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r4, r0, #0
	cmp r4, #2
	ble _0223AE54
	ldr r6, _0223AEC8 ; =0x000004D4
_0223AE46:
	ldr r0, [r5, r6]
	sub r1, r4, #1
	bl sub_0207A080
	sub r4, r4, #1
	cmp r4, #2
	bgt _0223AE46
_0223AE54:
	ldr r3, _0223AECC ; =0x00000584
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xb
	add r2, r3, #0
	str r0, [sp, #8]
	mov r0, #0xb3
	add r1, r5, r3
	add r2, #0xc
	add r3, #0x14
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	add r2, r5, r2
	add r3, r5, r3
	bl ov104_0222E330
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	add r6, sp, #0x14
	add r4, r5, #0
_0223AE88:
	add r0, r5, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov104_0222DF40
	ldr r0, _0223AED0 ; =0x000004F8
	ldr r1, _0223AEC8 ; =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl ov104_0222E1C0
	ldr r0, _0223AECC ; =0x00000584
	add r6, #0x38
	ldrh r1, [r4, r0]
	sub r0, #0x98
	strh r1, [r4, r0]
	ldr r0, [sp, #0x10]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #2
	blt _0223AE88
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_0223AEC8: .word 0x000004D4
_0223AECC: .word 0x00000584
_0223AED0: .word 0x000004F8
	thumb_func_end ov104_0223AE30

	thumb_func_start ov104_0223AED4
ov104_0223AED4: ; 0x0223AED4
	cmp r0, #2
	beq _0223AEDC
	cmp r0, #3
	bne _0223AEE0
_0223AEDC:
	mov r0, #1
	bx lr
_0223AEE0:
	mov r0, #0
	bx lr
	thumb_func_end ov104_0223AED4

	thumb_func_start ov104_0223AEE4
ov104_0223AEE4: ; 0x0223AEE4
	push {r3, lr}
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _0223AF04
	ldrb r1, [r0, #6]
	lsl r1, r1, #1
	add r1, r0, r1
	ldrh r2, [r1, #0x18]
	ldr r1, _0223AF30 ; =0x0000FECB
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _0223AF04
	mov r0, #7
	pop {r3, pc}
_0223AF04:
	bl ov104_0223AF34
	add r0, r0, #1
	mov r1, #7
	cmp r0, #4
	bhi _0223AF2C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223AF1C: ; jump table
	.short _0223AF2C - _0223AF1C - 2 ; case 0
	.short _0223AF26 - _0223AF1C - 2 ; case 1
	.short _0223AF26 - _0223AF1C - 2 ; case 2
	.short _0223AF2A - _0223AF1C - 2 ; case 3
	.short _0223AF2A - _0223AF1C - 2 ; case 4
_0223AF26:
	mov r1, #0
	b _0223AF2C
_0223AF2A:
	mov r1, #1
_0223AF2C:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
_0223AF30: .word 0x0000FECB
	thumb_func_end ov104_0223AEE4

	thumb_func_start ov104_0223AF34
ov104_0223AF34: ; 0x0223AF34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #4]
	ldrh r4, [r5, #0xe]
	bl ov104_0223AED4
	cmp r0, #1
	bne _0223AF50
	ldr r0, _0223AF54 ; =0x0000057E
	ldrh r1, [r5, r0]
	ldrh r0, [r5, #0xe]
	cmp r1, r0
	bls _0223AF50
	add r4, r1, #0
_0223AF50:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223AF54: .word 0x0000057E
	thumb_func_end ov104_0223AF34

	.rodata


	.global Unk_ov104_022401E8
Unk_ov104_022401E8: ; 0x022401E8
	.incbin "incbin/overlay104_rodata.bin", 0xF58, 0xF6C - 0xF58

	.global Unk_ov104_022401FC
Unk_ov104_022401FC: ; 0x022401FC
	.incbin "incbin/overlay104_rodata.bin", 0xF6C, 0xFAC - 0xF6C

	.global Unk_ov104_0224023C
Unk_ov104_0224023C: ; 0x0224023C
	.incbin "incbin/overlay104_rodata.bin", 0xFAC, 0xFFC - 0xFAC

	.global Unk_ov104_0224028C
Unk_ov104_0224028C: ; 0x0224028C
	.incbin "incbin/overlay104_rodata.bin", 0xFFC, 0x104C - 0xFFC

	.global Unk_ov104_022402DC
Unk_ov104_022402DC: ; 0x022402DC
	.incbin "incbin/overlay104_rodata.bin", 0x104C, 0x50


	.data


	.global Unk_ov104_02241AB8
Unk_ov104_02241AB8: ; 0x02241AB8
	.incbin "incbin/overlay104_data.bin", 0x118, 0x4

