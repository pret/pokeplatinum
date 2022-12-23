	.include "macros/function.inc"
	.include "overlay104/ov104_02234DB4.inc"

	

	.text


	thumb_func_start ov104_02234DB4
ov104_02234DB4: ; 0x02234DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r1, _02235090 ; =0x00000D98
	mov r0, #0xb
	add r6, r2, #0
	str r3, [sp, #8]
	bl sub_02018144
	ldr r1, _02235094 ; =0x02241AC4
	ldr r2, _02235090 ; =0x00000D98
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _02235094 ; =0x02241AC4
	ldr r4, [r0, #0]
	ldr r0, [sp, #4]
	bl sub_02030114
	ldr r1, _02235098 ; =0x000006F8
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	add r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xb
	ldr r1, _02235094 ; =0x02241AC4
	str r0, [r4, #0]
	ldr r4, [r1, #0]
	bl sub_02079FF4
	mov r1, #0x99
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xb
	bl sub_02073C74
	ldr r1, _0223509C ; =0x00000D8C
	str r0, [r4, r1]
	ldr r0, _02235098 ; =0x000006F8
	ldr r4, [r4, r0]
	ldr r0, [sp, #4]
	bl sub_0203026C
	str r0, [sp, #0xc]
	cmp r5, #0
	bne _02234ED0
	ldr r0, _02235094 ; =0x02241AC4
	ldr r0, [r0, #0]
	strb r6, [r0, #4]
	ldrb r0, [r0, #4]
	bl ov104_0223B500
	add r6, r0, #0
	ldr r0, _02235094 ; =0x02241AC4
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #5]
	add r0, r4, #0
	bl sub_02030108
	ldr r0, _02235094 ; =0x02241AC4
	ldr r1, [r0, #0]
	ldrb r2, [r1, #4]
	cmp r2, #3
	bne _02234E48
	ldr r0, _022350A0 ; =0x000006FC
	ldr r0, [r1, r0]
	bl sub_020507E4
	bl sub_0206B6FC
	b _02234E54
_02234E48:
	ldr r0, [sp, #0xc]
	mov r3, #0
	mov r1, #5
	str r3, [sp]
	bl sub_020302B4
_02234E54:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _02234E96
	ldr r0, _02235094 ; =0x02241AC4
	ldr r1, [r0, #0]
	ldr r0, _022350A0 ; =0x000006FC
	ldr r0, [r1, r0]
	bl sub_0203068C
	add r4, r0, #0
	ldr r0, _02235094 ; =0x02241AC4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	bl sub_0205E50C
	add r5, r0, #0
	ldr r0, _02235094 ; =0x02241AC4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	bl sub_0205E50C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02030698
	ldr r1, _02235094 ; =0x02241AC4
	ldr r1, [r1, #0]
	strh r0, [r1, #8]
	b _02234EBA
_02234E96:
	ldr r5, _02235094 ; =0x02241AC4
	mov r4, #0
	ldr r0, [r5, #0]
	ldr r7, _022350A0 ; =0x000006FC
	strh r4, [r0, #8]
_02234EA0:
	ldr r1, [r5, #0]
	lsl r2, r4, #0x18
	ldr r0, [r1, r7]
	ldrb r1, [r1, #4]
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov104_02235620
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x12
	blo _02234EA0
_02234EBA:
	ldr r0, _02235094 ; =0x02241AC4
	mov r1, #0x26
	ldr r3, [r0, #0]
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	strb r0, [r3, r1]
	add r0, sp, #0x20
	ldrb r2, [r0, #0x10]
	add r0, r1, #1
	strb r2, [r3, r0]
	b _02234FBA
_02234ED0:
	ldr r0, _02235094 ; =0x02241AC4
	mov r1, #0
	ldr r5, [r0, #0]
	str r1, [sp]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02030198
	strb r0, [r5, #4]
	ldrb r0, [r5, #4]
	bl ov104_0223B500
	mov r2, #0
	add r6, r0, #0
	ldr r0, _02235094 ; =0x02241AC4
	str r2, [sp]
	ldr r5, [r0, #0]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02030198
	strb r0, [r5, #5]
	ldr r0, _02235094 ; =0x02241AC4
	ldr r1, [r0, #0]
	ldr r0, _022350A0 ; =0x000006FC
	ldr r0, [r1, r0]
	bl sub_0203068C
	add r7, r0, #0
	ldr r0, _02235094 ; =0x02241AC4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	bl sub_0205E50C
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl sub_0205E50C
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl sub_02030698
	ldr r1, _02235094 ; =0x02241AC4
	mov r5, #0
	ldr r1, [r1, #0]
	cmp r6, #0
	strh r0, [r1, #8]
	ble _02234F62
	add r7, r5, #0
_02234F3C:
	lsl r2, r5, #0x18
	add r0, r4, #0
	mov r1, #3
	lsr r2, r2, #0x18
	add r3, r7, #0
	str r7, [sp]
	bl sub_02030198
	ldr r1, _02235094 ; =0x02241AC4
	ldr r1, [r1, #0]
	add r2, r1, r5
	mov r1, #0x26
	lsl r1, r1, #4
	strb r0, [r2, r1]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blt _02234F3C
_02234F62:
	mov r5, #0
	add r7, r5, #0
_02234F66:
	lsl r2, r5, #0x18
	add r0, r4, #0
	mov r1, #2
	lsr r2, r2, #0x18
	add r3, r7, #0
	str r7, [sp]
	bl sub_02030198
	ldr r1, _02235094 ; =0x02241AC4
	ldr r2, [r1, #0]
	lsl r1, r5, #1
	add r1, r2, r1
	strh r0, [r1, #0x18]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x14
	blo _02234F66
	mov r5, #0
_02234F8C:
	ldr r0, _02235094 ; =0x02241AC4
	lsl r2, r5, #0x18
	ldr r7, [r0, #0]
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030198
	lsl r1, r5, #1
	lsl r0, r0, #0x18
	add r2, r7, r1
	mov r1, #0x9a
	lsr r0, r0, #0x18
	lsl r1, r1, #2
	strh r0, [r2, r1]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x14
	blo _02234F8C
_02234FBA:
	mov r5, #0
	cmp r6, #0
	ble _02234FF4
	ldr r7, _02235094 ; =0x02241AC4
_02234FC2:
	ldr r4, [r7, #0]
	ldr r0, _022350A0 ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_0207A268
	mov r1, #0x26
	add r2, r4, r5
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	bl sub_0207A0FC
	ldr r4, [r7, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r1, r5, #1
	add r2, r4, r1
	ldr r1, _022350A4 ; =0x00000728
	strh r0, [r2, r1]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blt _02234FC2
_02234FF4:
	ldr r0, _02235094 ; =0x02241AC4
	mov r1, #0xa
	ldr r4, [r0, #0]
	mov r0, #0
	str r0, [r4, #0x10]
	ldrh r0, [r4, #8]
	bl _s32_div_f
	strh r0, [r4, #0xa]
	ldrb r0, [r4, #4]
	cmp r0, #2
	bne _0223502E
	ldr r4, _02235094 ; =0x02241AC4
	ldr r6, _022350A8 ; =0x00000716
	mov r5, #0
	mov r7, #9
_02235014:
	ldr r1, [r4, #0]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r1, r6
	add r2, r7, #0
	bl sub_02030204
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x12
	blo _02235014
	b _0223506E
_0223502E:
	ldr r5, _02235094 ; =0x02241AC4
	mov r4, #0
	add r7, sp, #0x14
_02235034:
	ldr r1, [r5, #0]
	str r7, [sp]
	ldrb r1, [r1, #4]
	lsl r2, r4, #0x18
	add r3, sp, #0x14
	ldr r0, [sp, #4]
	lsr r2, r2, #0x18
	add r3, #2
	bl ov104_022355C0
	add r2, r0, #0
	lsl r0, r4, #0x18
	lsl r2, r2, #0x18
	ldr r1, [r5, #0]
	ldr r3, _022350AC ; =0x00000704
	lsr r0, r0, #0x18
	add r6, r1, r3
	ldrb r3, [r1, #4]
	lsr r2, r2, #0x18
	lsl r1, r3, #3
	add r1, r3, r1
	add r1, r6, r1
	bl sub_02030204
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x12
	blo _02235034
_0223506E:
	ldr r0, _02235094 ; =0x02241AC4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _02235088
	ldr r0, _02235094 ; =0x02241AC4
	ldr r1, [r0, #0]
	ldr r0, _022350A0 ; =0x000006FC
	ldr r0, [r1, r0]
	bl ov104_0222E630
_02235088:
	ldr r0, _02235094 ; =0x02241AC4
	ldr r0, [r0, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02235090: .word 0x00000D98
_02235094: .word 0x02241AC4
_02235098: .word 0x000006F8
_0223509C: .word 0x00000D8C
_022350A0: .word 0x000006FC
_022350A4: .word 0x00000728
_022350A8: .word 0x00000716
_022350AC: .word 0x00000704
	thumb_func_end ov104_02234DB4

	thumb_func_start ov104_022350B0
ov104_022350B0: ; 0x022350B0
	ldr r3, _022350B4 ; =ov104_022350B8
	bx r3
	; .align 2, 0
_022350B4: .word ov104_022350B8
	thumb_func_end ov104_022350B0

	thumb_func_start ov104_022350B8
ov104_022350B8: ; 0x022350B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r2, [r5, #4]
	mov r4, #0
	mov r6, #1
	cmp r2, #0
	beq _022350CA
	mov r6, #2
_022350CA:
	ldr r1, _02235180 ; =0x000006F5
	lsl r3, r2, #3
	ldrb r0, [r5, r1]
	add r1, #0xf
	add r1, r5, r1
	add r2, r2, r3
	add r1, r1, r2
	bl sub_020301E0
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_02235704
	strb r0, [r5, #7]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp]
	ldr r0, _02235180 ; =0x000006F5
	ldrb r3, [r5, #5]
	ldrb r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_0223AF58
	ldrb r0, [r5, #5]
	add r1, r6, #0
	add r3, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	ldrh r2, [r5, #0xa]
	bl ov104_0223AFB4
	ldrb r0, [r5, #5]
	add r6, r5, #0
	add r6, #0x18
	lsl r0, r0, #0x19
	lsr r0, r0, #0x17
	ldrh r1, [r6, r0]
	str r0, [sp, #0xc]
	ldr r0, _02235184 ; =0x0000FECD
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02235134
	add r0, r5, #0
	bl ov104_0223B5C0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02235134:
	ldr r0, [sp, #0xc]
	ldrh r1, [r6, r0]
	ldr r0, _02235188 ; =0x00000133
	cmp r1, r0
	bne _02235140
	mov r4, #1
_02235140:
	mov r0, #0x4d
	lsl r0, r0, #2
	cmp r1, r0
	bne _0223514A
	mov r4, #2
_0223514A:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0223518C ; =0x000006F4
	ldrb r3, [r5, #5]
	ldrb r1, [r5, r1]
	mov r0, #1
	add r2, r7, #0
	bl ov104_0223B0C8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02235180: .word 0x000006F5
_02235184: .word 0x0000FECD
_02235188: .word 0x00000133
_0223518C: .word 0x000006F4
	thumb_func_end ov104_022350B8

	thumb_func_start ov104_02235190
ov104_02235190: ; 0x02235190
	push {r4, lr}
	add r4, r0, #0
	beq _022351C0
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022351A4
	bl sub_020181C4
_022351A4:
	ldr r0, _022351C4 ; =0x00000D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022351B0
	bl sub_020181C4
_022351B0:
	ldr r2, _022351C8 ; =0x00000D98
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_020181C4
_022351C0:
	pop {r4, pc}
	nop
_022351C4: .word 0x00000D8C
_022351C8: .word 0x00000D98
	thumb_func_end ov104_02235190

	thumb_func_start ov104_022351CC
ov104_022351CC: ; 0x022351CC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0
	bl ov104_02235208
	ldr r1, _02235200 ; =0x000006F2
	strh r0, [r4, r1]
	ldrh r2, [r4, r1]
	add r0, r1, #3
	strb r2, [r4, r0]
	ldrh r0, [r4, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov104_0223B5A4
	ldr r1, _02235204 ; =0x000006F4
	strb r0, [r4, r1]
	add r0, r1, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x11
	blo _022351FE
	mov r2, #0x11
	add r0, r1, #1
	strb r2, [r4, r0]
_022351FE:
	pop {r4, pc}
	; .align 2, 0
_02235200: .word 0x000006F2
_02235204: .word 0x000006F4
	thumb_func_end ov104_022351CC

	thumb_func_start ov104_02235208
ov104_02235208: ; 0x02235208
	ldrh r0, [r0, #6]
	bx lr
	thumb_func_end ov104_02235208

	thumb_func_start ov104_0223520C
ov104_0223520C: ; 0x0223520C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldrb r6, [r5, #4]
	add r4, r1, #0
	cmp r6, #3
	beq _0223525E
	add r0, r6, #0
	bl sub_0205E534
	add r7, r0, #0
	ldrb r0, [r5, #4]
	bl sub_0205E55C
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl sub_0205E534
	bl sub_0205E6A8
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_0205E584
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	add r0, sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, _02235268 ; =0x000006FC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x14]
	add r1, r7, #0
	bl sub_020309A0
	add sp, #0x20
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0223525E:
	mov r0, #0
	strh r0, [r4]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235268: .word 0x000006FC
	thumb_func_end ov104_0223520C

	thumb_func_start ov104_0223526C
ov104_0223526C: ; 0x0223526C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _022354A4 ; =0x000006FC
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl sub_0203026C
	str r0, [sp, #4]
	ldr r0, _022354A4 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_0203068C
	str r0, [sp, #0xc]
	ldrb r1, [r5, #4]
	add r0, sp, #0x14
	strb r1, [r0, #8]
	mov r1, #0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, _022354A8 ; =0x000006F8
	add r2, r1, #0
	ldr r0, [r5, r0]
	add r3, r1, #0
	bl sub_02030140
	ldr r0, _022354A8 ; =0x000006F8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0203012C
	ldr r0, _022354A4 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_0207A268
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrb r0, [r5, #4]
	bl sub_0205E55C
	add r7, r0, #0
	ldrb r0, [r5, #4]
	bl sub_0205E55C
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_02030698
	add r7, r0, #0
	mov r2, #0
	ldrb r1, [r5, #5]
	add r0, sp, #0x14
	add r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, _022354A8 ; =0x000006F8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02030140
	ldrb r0, [r5, #4]
	bl sub_0205E50C
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl sub_0205E50C
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_020306E4
	cmp r4, #2
	beq _022353B8
	ldrb r4, [r5, #4]
	cmp r4, #3
	beq _02235348
	add r0, r4, #0
	bl sub_0205E534
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E534
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_020306E4
	b _0223538A
_02235348:
	cmp r7, r6
	beq _0223536C
	add r0, r4, #0
	bl sub_0205E534
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E534
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_020306E4
	b _0223538A
_0223536C:
	add r0, r4, #0
	bl sub_0205E534
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E534
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_02030848
_0223538A:
	ldrb r1, [r5, #6]
	add r0, sp, #0x14
	mov r3, #0
	strb r1, [r0, #8]
	add r0, sp, #0x1c
	str r0, [sp]
	ldrb r2, [r5, #4]
	ldr r0, [sp, #4]
	mov r1, #5
	bl sub_02030280
	ldrb r0, [r5, #4]
	cmp r0, #3
	bne _022353B8
	mov r0, #0x6a
	bl sub_0205E6A8
	add r2, r0, #0
	ldrb r3, [r5, #6]
	ldr r0, [sp, #0xc]
	mov r1, #0x6a
	bl sub_020306E4
_022353B8:
	mov r4, #0
	add r6, sp, #0x14
	add r7, sp, #0x14
_022353BE:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #0x18]
	lsl r2, r4, #0x18
	mov r1, #2
	strh r0, [r7]
	ldr r0, _022354A8 ; =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030140
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x14
	blo _022353BE
	mov r4, #0
	add r6, sp, #0x1c
	add r7, sp, #0x14
_022353E8:
	mov r0, #0x26
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	lsl r2, r4, #0x18
	mov r1, #3
	strb r0, [r7, #8]
	ldr r0, _022354A8 ; =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030140
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _022353E8
	ldr r0, _022354AC ; =0x00000704
	mov r4, #0
	add r6, r5, r0
	add r7, sp, #0x14
_02235416:
	ldrb r2, [r5, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r6, r1
	bl sub_020301E0
	strb r0, [r7, #8]
	ldr r0, _022354A4 ; =0x000006FC
	lsl r2, r4, #0x18
	ldrb r1, [r5, #4]
	ldrb r3, [r7, #8]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	bl ov104_02235620
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x12
	blo _02235416
	mov r4, #0
	add r6, sp, #0x14
	add r7, sp, #0x14
_02235448:
	lsl r0, r4, #1
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	lsl r2, r4, #0x18
	mov r1, #4
	strh r0, [r7]
	ldr r0, _022354A8 ; =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030140
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x14
	blo _02235448
	ldrb r0, [r5, #4]
	bl sub_0205E55C
	add r4, r0, #0
	ldrb r0, [r5, #4]
	bl sub_0205E55C
	bl sub_0205E6A8
	add r5, r0, #0
	ldr r0, [sp, #8]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r3, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_020306E4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022354A4: .word 0x000006FC
_022354A8: .word 0x000006F8
_022354AC: .word 0x00000704
	thumb_func_end ov104_0223526C

	thumb_func_start ov104_022354B0
ov104_022354B0: ; 0x022354B0
	ldrb r1, [r0, #5]
	add r1, r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r0, #5]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_022354B0

	thumb_func_start ov104_022354BC
ov104_022354BC: ; 0x022354BC
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end ov104_022354BC

	thumb_func_start ov104_022354C0
ov104_022354C0: ; 0x022354C0
	push {r3, lr}
	sub sp, #0x30
	add r2, r0, #0
	ldrb r3, [r2, #5]
	add r0, sp, #0
	lsl r3, r3, #1
	add r1, r1, r3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x17
	add r1, r2, r1
	ldrh r1, [r1, #0x18]
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov104_0222E10C
	add sp, #0x30
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022354C0

	thumb_func_start ov104_022354F4
ov104_022354F4: ; 0x022354F4
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #4]
	ldr r0, _02235514 ; =0x00000704
	add r2, r4, r0
	lsl r0, r1, #3
	add r0, r1, r0
	add r0, r2, r0
	bl sub_02030244
	add r0, r4, #0
	mov r1, #1
	bl ov104_0223526C
	pop {r4, pc}
	nop
_02235514: .word 0x00000704
	thumb_func_end ov104_022354F4

	thumb_func_start ov104_02235518
ov104_02235518: ; 0x02235518
	mov r1, #1
	strb r1, [r0, #6]
	ldrh r1, [r0, #0xa]
	cmp r1, #0x12
	bhs _02235526
	add r1, r1, #1
	strh r1, [r0, #0xa]
_02235526:
	ldr r3, _02235530 ; =ov104_0223526C
	mov r1, #0
	strb r1, [r0, #5]
	bx r3
	nop
_02235530: .word ov104_0223526C
	thumb_func_end ov104_02235518

	thumb_func_start ov104_02235534
ov104_02235534: ; 0x02235534
	push {r3, lr}
	cmp r1, #7
	bhi _02235576
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02235546: ; jump table
	.short _02235556 - _02235546 - 2 ; case 0
	.short _0223555C - _02235546 - 2 ; case 1
	.short _02235562 - _02235546 - 2 ; case 2
	.short _02235568 - _02235546 - 2 ; case 3
	.short _02235576 - _02235546 - 2 ; case 4
	.short _02235576 - _02235546 - 2 ; case 5
	.short _02235576 - _02235546 - 2 ; case 6
	.short _02235572 - _02235546 - 2 ; case 7
_02235556:
	bl ov104_0222ED00
	pop {r3, pc}
_0223555C:
	bl ov104_0222ED44
	pop {r3, pc}
_02235562:
	bl ov104_0222EDA8
	pop {r3, pc}
_02235568:
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	bl ov104_0222EE14
	pop {r3, pc}
_02235572:
	bl ov104_0222EE60
_02235576:
	pop {r3, pc}
	thumb_func_end ov104_02235534

	thumb_func_start ov104_02235578
ov104_02235578: ; 0x02235578
	ldrb r3, [r0, #4]
	ldrh r2, [r0, #0xa]
	cmp r3, #1
	bhi _0223558E
	cmp r2, #0x12
	blo _02235588
	mov r1, #0xc
	b _0223559A
_02235588:
	ldr r1, _022355B8 ; =0x0223FA5C
	ldrb r1, [r1, r2]
	b _0223559A
_0223558E:
	cmp r2, #0x12
	blo _02235596
	mov r1, #0x17
	b _0223559A
_02235596:
	ldr r1, _022355BC ; =0x0223FA70
	ldrb r1, [r1, r2]
_0223559A:
	cmp r3, #0
	bne _022355AC
	ldrh r0, [r0, #8]
	cmp r0, #0x32
	beq _022355A8
	cmp r0, #0xaa
	bne _022355B2
_022355A8:
	mov r1, #0x14
	b _022355B2
_022355AC:
	cmp r3, #2
	bne _022355B2
	mov r1, #0xc
_022355B2:
	add r0, r1, #0
	bx lr
	nop
_022355B8: .word 0x0223FA5C
_022355BC: .word 0x0223FA70
	thumb_func_end ov104_02235578

	thumb_func_start ov104_022355C0
ov104_022355C0: ; 0x022355C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x20]
	bl sub_0203068C
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0205E4E0
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0205E4E0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02030698
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xf
	and r0, r1
	strh r0, [r6]
	asr r0, r1, #4
	strh r0, [r4]
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _02235618
	add sp, #8
	ldrh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02235618:
	ldrh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022355C0

	thumb_func_start ov104_02235620
ov104_02235620: ; 0x02235620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r3, sp, #0xc
	str r3, [sp]
	add r3, sp, #0xc
	add r3, #2
	str r0, [sp, #4]
	add r6, r1, #0
	add r5, r2, #0
	bl ov104_022355C0
	add r0, sp, #0xc
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsr r3, r5, #0x1f
	lsl r1, r1, #4
	orr r0, r1
	lsl r2, r5, #0x1f
	lsl r0, r0, #0x18
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bne _0223565C
	mov r2, #0xf0
	b _0223565E
_0223565C:
	mov r2, #0xf
_0223565E:
	and r0, r2
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r0, r1, #2
	add r1, r7, #0
	lsl r1, r0
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	orr r4, r0
	ldr r0, [sp, #4]
	bl sub_0203068C
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205E4E0
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205E4E0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_020306E4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02235620

	thumb_func_start ov104_022356A0
ov104_022356A0: ; 0x022356A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _022356EE
	ldr r0, _022356F0 ; =0x00000704
	mov r4, #0
	add r6, r5, r0
_022356B0:
	ldrb r2, [r5, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r6, r1
	bl sub_020301E0
	cmp r0, #0xa
	blo _022356CA
	add r4, r4, #1
	cmp r4, #0x11
	blt _022356B0
_022356CA:
	cmp r4, #0x11
	bne _022356EE
	ldr r0, _022356F0 ; =0x00000704
	mov r4, #0
	add r6, r5, r0
	mov r7, #9
_022356D6:
	ldrb r2, [r5, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r6, r1
	add r2, r7, #0
	bl sub_02030204
	add r4, r4, #1
	cmp r4, #0x11
	blt _022356D6
_022356EE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022356F0: .word 0x00000704
	thumb_func_end ov104_022356A0

	thumb_func_start ov104_022356F4
ov104_022356F4: ; 0x022356F4
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0223B64C
	bl ov104_0223B6C4
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov104_022356F4

	thumb_func_start ov104_02235704
ov104_02235704: ; 0x02235704
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r1, _022358D0 ; =0x000006F5
	ldrb r2, [r6, #4]
	ldrb r0, [r6, r1]
	add r1, #0xf
	add r3, r6, r1
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r3, r1
	bl sub_020301E0
	add r4, r0, #0
	add r0, r6, #0
	bl ov104_0223B64C
	str r0, [sp, #4]
	ldrb r0, [r6, #4]
	cmp r0, #2
	bne _02235738
	ldr r0, [sp, #4]
	add sp, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_02235738:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02235750
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0223575E
_02235750:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0223575E:
	ldr r5, [r6, #0xc]
	bl _f_ftoi
	lsl r1, r5, #1
	add r1, r5, r1
	sub r0, r0, r1
	str r0, [sp, #8]
	add r0, r5, #0
	bl _f_itof
	ldr r1, _022358D4 ; =0x45800000
	bl _fdiv
	bl _f_ftod
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022358D8 ; =0x40140000
	mov r0, #0
	bl _d_mul
	bl _d_dtof
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl _f_itof
	add r1, r5, #0
	bl _fdiv
	bl _f_ftod
	ldr r3, _022358DC ; =0x3FF00000
	mov r2, #0
	bl _d_flt
	bhs _022357B2
	add r0, r4, #0
	bl _f_itof
	str r0, [sp]
	b _022357F0
_022357B2:
	ldr r0, [sp, #4]
	mul r0, r4
	cmp r0, #0
	ble _022357CC
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022357DA
_022357CC:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022357DA:
	bl _f_ftoi
	bl _f_itof
	ldr r1, _022358D4 ; =0x45800000
	bl _fdiv
	add r1, r5, #0
	bl _fdiv
	str r0, [sp]
_022357F0:
	ldr r0, _022358E0 ; =0x00000704
	mov r5, #0
	add r4, r5, #0
	add r7, r6, r0
_022357F8:
	ldr r0, _022358D0 ; =0x000006F5
	ldrb r0, [r6, r0]
	cmp r4, r0
	bne _02235816
	add r0, r5, #0
	bl _f_ftod
	ldr r3, _022358DC ; =0x3FF00000
	mov r2, #0
	bl _d_add
	bl _d_dtof
	add r5, r0, #0
	b _0223583E
_02235816:
	ldrb r2, [r6, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r7, r1
	bl sub_020301E0
	cmp r0, #0
	beq _0223583E
	add r0, r5, #0
	bl _f_ftod
	ldr r3, _022358DC ; =0x3FF00000
	mov r2, #0
	bl _d_add
	bl _d_dtof
	add r5, r0, #0
_0223583E:
	add r4, r4, #1
	cmp r4, #0x12
	blt _022357F8
	add r0, r5, #0
	bl _f_ftod
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl _d_fne
	beq _0223586C
	add r0, r5, #0
	bl _f_ftod
	ldr r3, _022358DC ; =0x3FF00000
	mov r2, #0
	bl _dsub
	bl _d_dtof
	add r5, r0, #0
_0223586C:
	add r0, r5, #0
	bl _f_ftod
	ldr r3, _022358E4 ; =0x3FE00000
	mov r2, #0
	bl _d_mul
	bl _d_dtof
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl _f_itof
	ldr r1, _022358D4 ; =0x45800000
	bl _fdiv
	ldr r1, [sp]
	bl _f_add
	add r1, r0, #0
	add r0, r4, #0
	bl _f_add
	add r5, r0, #0
	bl _f_ftoi
	add r4, r0, #0
	add r0, r5, #0
	bl _f_ftoi
	bl _f_itof
	add r1, r0, #0
	add r0, r5, #0
	bl _f_fne
	beq _022358B8
	add r4, r4, #1
_022358B8:
	ldr r0, [sp, #4]
	cmp r4, r0
	ble _022358C0
	add r4, r0, #0
_022358C0:
	cmp r4, #0x64
	ble _022358C6
	mov r4, #0x64
_022358C6:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022358D0: .word 0x000006F5
_022358D4: .word 0x45800000
_022358D8: .word 0x40140000
_022358DC: .word 0x3FF00000
_022358E0: .word 0x00000704
_022358E4: .word 0x3FE00000
	thumb_func_end ov104_02235704

	.rodata


	.global Unk_ov104_0223FA5C
Unk_ov104_0223FA5C: ; 0x0223FA5C
	.incbin "incbin/overlay104_rodata.bin", 0x7CC, 0x7E0 - 0x7CC

	.global Unk_ov104_0223FA70
Unk_ov104_0223FA70: ; 0x0223FA70
	.incbin "incbin/overlay104_rodata.bin", 0x7E0, 0x13


	.bss


	.global Unk_ov104_02241AC4
Unk_ov104_02241AC4: ; 0x02241AC4
	.space 0x4

