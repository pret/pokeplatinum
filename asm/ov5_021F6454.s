	.include "macros/function.inc"
	.include "include/ov5_021F6454.inc"

	

	.text


	thumb_func_start ov5_021F6454
ov5_021F6454: ; 0x021F6454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x1c]
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x1c]
	bl sub_0203E838
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_0203E838
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_0203E838
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x1c]
	mov r2, #0x67
	str r4, [r0, #0x64]
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x20
	bl sub_0200B144
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #1
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F098
	add r5, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0203F118
	add r7, r0, #0
	ldr r1, [sp, #0x38]
	add r0, r6, #0
	bl sub_0203F118
	mov r2, #1
	str r2, [sp]
	ldr r1, [sp, #0x2c]
	str r4, [sp, #4]
	ldr r1, [r1, #0]
	mov r3, #0
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	str r5, [sp, #0xc]
	str r1, [sp, #0x10]
	str r7, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0x14
	bl ov5_021F6704
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	mov r1, #0xb
	add r2, sp, #0x44
	bl sub_020308A0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne _021F6570
	ldr r1, [sp, #0x34]
	mov r0, #0x20
	lsl r2, r1, #1
	ldr r1, _021F65C4 ; =0x0220210C
	ldrh r1, [r1, r2]
	add r2, sp, #0x40
	bl ov5_021F65FC
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	mov r4, #0
	cmp r0, #0
	ble _021F656A
	ldr r0, [sp, #0x30]
	ldr r5, [sp, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
_021F653E:
	ldr r0, [sp, #0x3c]
	bl sub_0205E584
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r0, [r6, #0xc]
	ldr r1, [sp, #0x28]
	bl sub_020308BC
	cmp r0, #0
	beq _021F6560
	ldrh r1, [r5]
	add r0, r7, #0
	mov r2, #0xff
	add r3, r1, #0
	bl ov5_021F6760
_021F6560:
	ldr r0, [sp, #0x40]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r0
	blt _021F653E
_021F656A:
	ldr r0, [sp, #0x24]
	bl sub_020181C4
_021F6570:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021F657A
	bl sub_020181C4
_021F657A:
	ldr r2, _021F65C8 ; =0x00000169
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x20
	bl sub_0200B144
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl ov5_021F661C
	ldr r3, _021F65CC ; =0x0000FFFE
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #0xff
	bl ov5_021F6760
	add r0, r4, #0
	bl sub_0200B190
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	bl ov5_021F661C
	add r0, r7, #0
	bl ov5_021F6768
	ldr r0, [sp, #0x1c]
	ldr r1, _021F65D0 ; =ov5_021F65D4
	bl sub_0203E764
	ldr r0, [sp, #0x20]
	bl sub_0200B190
	mov r0, #1
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F65C4: .word 0x0220210C
_021F65C8: .word 0x00000169
_021F65CC: .word 0x0000FFFE
_021F65D0: .word ov5_021F65D4
	thumb_func_end ov5_021F6454

	thumb_func_start ov5_021F65D4
ov5_021F65D4: ; 0x021F65D4
	push {r3, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	ldrh r1, [r0]
	ldr r0, _021F65F8 ; =0x0000EEEE
	cmp r1, r0
	beq _021F65F2
	mov r0, #1
	pop {r3, pc}
_021F65F2:
	mov r0, #0
	pop {r3, pc}
	nop
_021F65F8: .word 0x0000EEEE
	thumb_func_end ov5_021F65D4

	thumb_func_start ov5_021F65FC
ov5_021F65FC: ; 0x021F65FC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0
	add r3, r0, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4b
	bl sub_02007068
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F65FC

	thumb_func_start ov5_021F661C
ov5_021F661C: ; 0x021F661C
	mov r2, #0x7f
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov5_021F661C

	thumb_func_start ov5_021F6624
ov5_021F6624: ; 0x021F6624
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	mov r2, #0x7f
	ldr r1, [sp, #0x2c]
	lsl r2, r2, #2
	str r1, [r6, r2]
	add r1, r2, #0
	add r1, #0xb
	add r5, r3, #0
	ldrb r1, [r6, r1]
	mov r3, #2
	bic r1, r3
	add r3, r2, #0
	add r3, #0xb
	strb r1, [r6, r3]
	ldr r3, [sp, #0x24]
	add r1, r2, #4
	str r3, [r6, r1]
	str r0, [r6, #0]
	add r0, r2, #0
	ldr r1, [sp, #0x20]
	add r0, #0x14
	str r1, [r6, r0]
	add r0, r2, #0
	add r0, #0x14
	ldr r0, [r6, r0]
	mov r1, #0
	strh r1, [r0]
	add r0, r2, #0
	ldr r3, [sp, #0x30]
	add r0, #0x18
	str r3, [r6, r0]
	add r0, r2, #0
	ldr r3, [sp, #0x34]
	add r0, #0x1c
	str r3, [r6, r0]
	add r0, r2, #0
	add r0, #0xb
	ldrb r4, [r6, r0]
	mov r0, #1
	bic r4, r0
	add r0, sp, #8
	ldrb r3, [r0, #0x14]
	mov r0, #1
	and r0, r3
	add r3, r4, #0
	orr r3, r0
	add r0, r2, #0
	add r0, #0xb
	strb r3, [r6, r0]
	add r0, sp, #8
	add r3, r2, #0
	ldrb r0, [r0, #0x10]
	add r3, #0xa
	strb r0, [r6, r3]
	add r3, r2, #0
	add r3, #0xc
	strb r7, [r6, r3]
	add r3, r2, #0
	add r3, #0xd
	strb r5, [r6, r3]
	add r3, r2, #0
	add r3, #0xf
	strb r1, [r6, r3]
	ldr r3, [sp, #0x28]
	add r2, #8
	str r3, [r6, #0x18]
	mov r3, #3
	strb r3, [r6, r2]
	ldr r2, _021F66F8 ; =0x000006F4
	ldr r7, _021F66FC ; =0x00000604
	strh r0, [r6, r2]
	add r2, r6, #0
	add r3, r6, #0
	add r5, r1, #0
	mov r0, #0xff
_021F66BE:
	mov r4, #0x91
	lsl r4, r4, #2
	str r5, [r2, r4]
	add r4, r4, #4
	str r5, [r2, r4]
	strh r0, [r3, r7]
	add r1, r1, #1
	add r2, #8
	add r3, r3, #2
	cmp r1, #0x78
	blt _021F66BE
	add r4, r6, #0
	mov r7, #0x50
_021F66D8:
	add r0, r7, #0
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x78
	blt _021F66D8
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, _021F6700 ; =0x0000EEEE
	ldr r0, [r6, r0]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F66F8: .word 0x000006F4
_021F66FC: .word 0x00000604
_021F6700: .word 0x0000EEEE
	thumb_func_end ov5_021F6624

	thumb_func_start ov5_021F6704
ov5_021F6704: ; 0x021F6704
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	add r6, r0, #0
	ldr r1, _021F675C ; =0x000006F8
	mov r0, #4
	str r2, [sp, #0x20]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021F6722
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F6722:
	ldr r2, _021F675C ; =0x000006F8
	mov r1, #0
	bl memset
	str r5, [sp]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r6, #0
	bl ov5_021F6624
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F675C: .word 0x000006F8
	thumb_func_end ov5_021F6704

	thumb_func_start ov5_021F6760
ov5_021F6760: ; 0x021F6760
	push {r3, lr}
	bl ov5_021F6830
	pop {r3, pc}
	thumb_func_end ov5_021F6760

	thumb_func_start ov5_021F6768
ov5_021F6768: ; 0x021F6768
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r3, _021F6824 ; =0x0000020B
	add r4, r0, #0
	ldrb r1, [r4, r3]
	cmp r1, #8
	bls _021F67A0
	sub r0, r3, #2
	ldrb r0, [r4, r0]
	add r1, r4, #0
	sub r3, r3, #3
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldrb r3, [r4, r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
	b _021F67CA
_021F67A0:
	sub r0, r3, #2
	ldrb r0, [r4, r0]
	sub r3, r3, #3
	mov r2, #3
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	lsl r0, r1, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r4, #0
	ldrb r3, [r4, r3]
	ldr r0, [r0, #8]
	add r1, #8
	bl sub_0201A7E8
_021F67CA:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _021F6828 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r4, #0
	ldr r2, _021F6828 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	bl ov5_021F68BC
	mov r2, #0x87
	lsl r2, r2, #2
	add r1, r2, #0
	add r0, r4, r2
	sub r1, #8
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	ldrh r1, [r1]
	ldrh r2, [r2]
	mov r3, #4
	bl sub_0200112C
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _021F682C ; =ov5_021F6A34
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_021F6824: .word 0x0000020B
_021F6828: .word 0x000003D9
_021F682C: .word ov5_021F6A34
	thumb_func_end ov5_021F6768

	thumb_func_start ov5_021F6830
ov5_021F6830: ; 0x021F6830
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x50
	mov r1, #4
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02023790
	add r6, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp]
	add r2, r6, #0
	bl sub_0200B1B8
	mov r1, #2
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, #0xb
	ldrb r1, [r5, r1]
	add r2, r6, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x1c]
	bl sub_0200C388
	ldr r2, _021F68B4 ; =0x0000020B
	ldrb r1, [r5, r2]
	add r2, #0x39
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	ldr r0, [r0, #0x1c]
	add r1, r5, r1
	str r0, [r1, r2]
	add r0, r6, #0
	bl sub_020237BC
	cmp r4, #0xfa
	ldr r0, _021F68B4 ; =0x0000020B
	bne _021F6896
	ldrb r1, [r5, r0]
	mov r2, #2
	mvn r2, r2
	lsl r1, r1, #3
	add r1, r5, r1
	add r0, #0x3d
	str r2, [r1, r0]
	b _021F68A0
_021F6896:
	ldrb r1, [r5, r0]
	add r0, #0x3d
	lsl r1, r1, #3
	add r1, r5, r1
	str r4, [r1, r0]
_021F68A0:
	ldr r1, _021F68B4 ; =0x0000020B
	ldrb r0, [r5, r1]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _021F68B8 ; =0x00000604
	strh r7, [r2, r0]
	ldrb r0, [r5, r1]
	add r0, r0, #1
	strb r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F68B4: .word 0x0000020B
_021F68B8: .word 0x00000604
	thumb_func_end ov5_021F6830

	thumb_func_start ov5_021F68BC
ov5_021F68BC: ; 0x021F68BC
	push {r4, r5}
	mov r3, #0x91
	lsl r3, r3, #2
	add r1, r3, #0
	add r2, r0, r3
	sub r1, #0x28
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _021F69B8 ; =ov5_021F69F0
	sub r1, #0x24
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _021F69BC ; =ov5_021F69CC
	sub r1, #0x20
	str r2, [r0, r1]
	add r2, r0, #0
	add r1, r3, #0
	add r2, #8
	sub r1, #0x1c
	str r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0x39
	ldrb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0x18
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #8
	sub r1, #0x16
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #1
	sub r1, #0x14
	strb r2, [r0, r1]
	add r1, r3, #0
	mov r4, #0xc
	sub r1, #0x13
	strb r4, [r0, r1]
	add r1, r3, #0
	mov r4, #2
	sub r1, #0x12
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x11
	ldrb r4, [r0, r1]
	mov r1, #0xf
	bic r4, r1
	orr r4, r2
	add r2, r3, #0
	sub r2, #0x11
	strb r4, [r0, r2]
	add r2, r3, #0
	sub r2, #0x11
	ldrb r5, [r0, r2]
	mov r2, #0xf0
	mov r4, #0x10
	bic r5, r2
	orr r5, r4
	add r4, r3, #0
	sub r4, #0x11
	strb r5, [r0, r4]
	add r4, r3, #0
	sub r4, #0x10
	ldrb r4, [r0, r4]
	bic r4, r1
	mov r1, #0xf
	orr r4, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x10
	ldrb r4, [r0, r1]
	mov r1, #0x20
	bic r4, r2
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #7
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #0x78
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021F69C0 ; =0xFFFFFE7F
	and r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021F69C4 ; =0xFFFF81FF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021F69C8 ; =0xFFFF7FFF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	sub r3, #0xc
	str r0, [r0, r3]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_021F69B8: .word ov5_021F69F0
_021F69BC: .word ov5_021F69CC
_021F69C0: .word 0xFFFFFE7F
_021F69C4: .word 0xFFFF81FF
_021F69C8: .word 0xFFFF7FFF
	thumb_func_end ov5_021F68BC

	thumb_func_start ov5_021F69CC
ov5_021F69CC: ; 0x021F69CC
	push {r3, lr}
	mov r2, #2
	mvn r2, r2
	cmp r1, r2
	bne _021F69E2
	mov r1, #3
	mov r2, #0xf
	mov r3, #4
	bl sub_0200147C
	pop {r3, pc}
_021F69E2:
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F69CC

	thumb_func_start ov5_021F69F0
ov5_021F69F0: ; 0x021F69F0
	push {r3, r4, r5, lr}
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1, #2]
	strh r2, [r1]
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	add r1, sp, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	cmp r3, #0
	beq _021F6A30
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F6A30
	add r0, sp, #0
	ldrh r2, [r0, #2]
	strh r2, [r3]
	ldrh r2, [r0]
	add r0, r1, #4
	ldr r0, [r4, r0]
	strh r2, [r0]
_021F6A30:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F69F0

	thumb_func_start ov5_021F6A34
ov5_021F6A34: ; 0x021F6A34
	push {r4, r5, r6, lr}
	mov r0, #0x81
	add r5, r1, #0
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _021F6A48
	sub r1, r1, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021F6A48:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021F6AC2
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #0x8f
	ldr r1, _021F6AC4 ; =0x000006F4
	lsl r0, r0, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl sub_020014D0
	ldr r0, _021F6AC4 ; =0x000006F4
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _021F6A7A
	ldr r0, _021F6AC8 ; =0x000005DC
	bl sub_02005748
_021F6A7A:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021F6A8A
	add r0, r0, #1
	cmp r4, r0
	beq _021F6AC2
	b _021F6AAE
_021F6A8A:
	ldr r0, _021F6ACC ; =0x00000207
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F6AC2
	ldr r0, _021F6AC8 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, _021F6AD0 ; =0x0000FFFE
	ldr r0, [r5, r0]
	strh r1, [r0]
	add r0, r5, #0
	bl ov5_021F6AD4
	pop {r4, r5, r6, pc}
_021F6AAE:
	ldr r0, _021F6AC8 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	strh r4, [r0]
	add r0, r5, #0
	bl ov5_021F6AD4
_021F6AC2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F6AC4: .word 0x000006F4
_021F6AC8: .word 0x000005DC
_021F6ACC: .word 0x00000207
_021F6AD0: .word 0x0000FFFE
	thumb_func_end ov5_021F6A34

	thumb_func_start ov5_021F6AD4
ov5_021F6AD4: ; 0x021F6AD4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021F6B34 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x8f
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	add r0, #8
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_021F6B04:
	ldr r0, [r5, #0x1c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x78
	blt _021F6B04
	ldr r0, _021F6B38 ; =0x00000207
	ldrb r1, [r6, r0]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021F6B26
	sub r0, #0xb
	ldr r0, [r6, r0]
	bl sub_0200B190
_021F6B26:
	ldr r0, [r6, #4]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F6B34: .word 0x000005DC
_021F6B38: .word 0x00000207
	thumb_func_end ov5_021F6AD4

	thumb_func_start ov5_021F6B3C
ov5_021F6B3C: ; 0x021F6B3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	str r1, [sp]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r7, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	ldr r1, [sp, #4]
	bl sub_0207A0FC
	add r5, r0, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	mov r2, #0
	str r0, [sp, #0x1c]
	strh r2, [r4]
	add r0, sp, #8
_021F6BF2:
	lsl r3, r2, #2
	ldrh r1, [r4]
	ldr r3, [r0, r3]
	add r1, r1, r3
	strh r1, [r4]
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #6
	blo _021F6BF2
	mov r0, #0
	strh r0, [r6]
	ldr r0, [sp, #8]
	mov r5, #1
	strh r0, [r7]
_021F6C10:
	lsl r1, r5, #2
	add r0, sp, #8
	ldr r4, [r0, r1]
	ldrh r0, [r6]
	lsl r1, r0, #2
	add r0, sp, #8
	ldr r0, [r0, r1]
	cmp r0, r4
	bhs _021F6C28
	strh r5, [r6]
	strh r4, [r7]
	b _021F6C42
_021F6C28:
	cmp r0, r4
	bne _021F6C42
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r1
	mov r0, #0x1f
	ror r2, r0
	add r0, r1, r2
	bne _021F6C42
	strh r5, [r6]
	strh r4, [r7]
_021F6C42:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021F6C10
	ldrh r0, [r6]
	lsl r1, r0, #1
	ldr r0, _021F6C5C ; =0x02200C84
	ldrh r0, [r0, r1]
	strh r0, [r6]
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F6C5C: .word 0x02200C84
	thumb_func_end ov5_021F6B3C

	thumb_func_start ov5_021F6C60
ov5_021F6C60: ; 0x021F6C60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #8]
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	str r1, [sp, #4]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	ldr r0, [sp]
	cmp r6, #0
	strh r4, [r0]
	ble _021F6CC2
	add r5, sp, #0x10
_021F6C9E:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #0]
	cmp r0, #0x70
	bne _021F6CBA
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_021F6CBA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _021F6C9E
_021F6CC2:
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _021F6D16
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	ldr r2, [sp, #8]
	mov r1, #0x70
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0207D570
	cmp r0, #0
	bne _021F6CEE
	ldr r0, [sp]
	mov r1, #0xff
	strh r1, [r0]
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6CEE:
	mov r5, #0
	str r5, [sp, #0xc]
	cmp r6, #0
	ble _021F6D16
	add r4, sp, #0x10
_021F6CF8:
	ldr r0, [r4, #0]
	cmp r0, #0x70
	bne _021F6D0E
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #6
	add r2, sp, #0xc
	bl sub_02074B30
_021F6D0E:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _021F6CF8
_021F6D16:
	mov r5, #0
	cmp r6, #0
	ble _021F6D74
_021F6D1C:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x70
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	ble _021F6D6E
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _021F6D7C ; =0x000001DF
	cmp r0, r1
	beq _021F6D5A
	add r1, #8
	cmp r0, r1
	beq _021F6D52
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	beq _021F6D66
	b _021F6D6E
_021F6D52:
	add r0, r4, #0
	bl sub_02077A00
	b _021F6D6E
_021F6D5A:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02077C20
	b _021F6D6E
_021F6D66:
	add r0, r4, #0
	mov r1, #0
	bl sub_02077ACC
_021F6D6E:
	add r5, r5, #1
	cmp r5, r6
	blt _021F6D1C
_021F6D74:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F6D7C: .word 0x000001DF
	thumb_func_end ov5_021F6C60

	thumb_func_start ov5_021F6D80
ov5_021F6D80: ; 0x021F6D80
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	mov r2, #0
	add r4, r0, #0
	strh r2, [r6]
	cmp r7, #0xff
	bne _021F6DC8
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6DC8:
	mov r1, #6
	bl sub_02074470
	cmp r0, #0x70
	bne _021F6DFC
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	mov r1, #0x70
	mov r2, #1
	mov r3, #4
	bl sub_0207D570
	cmp r0, #0
	bne _021F6DEE
	mov r0, #0xff
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6DEE:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
_021F6DFC:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	ble _021F6E46
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r2, _021F6E4C ; =0x000001DF
	cmp r0, r2
	beq _021F6E32
	add r1, r2, #0
	add r1, #8
	cmp r0, r1
	beq _021F6E2A
	add r2, #0xd
	cmp r0, r2
	beq _021F6E3E
	b _021F6E46
_021F6E2A:
	add r0, r4, #0
	bl sub_02077A00
	b _021F6E46
_021F6E32:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02077C20
	b _021F6E46
_021F6E3E:
	add r0, r4, #0
	mov r1, #0
	bl sub_02077ACC
_021F6E46:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F6E4C: .word 0x000001DF
	thumb_func_end ov5_021F6D80

	thumb_func_start ov5_021F6E50
ov5_021F6E50: ; 0x021F6E50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x70
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021F6E50

	thumb_func_start ov5_021F6E9C
ov5_021F6E9C: ; 0x021F6E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r6, r0, #0
	mov r0, #0xff
	strh r0, [r6]
	ldr r0, [r4, #0xc]
	mov r7, #0
	bl sub_0207A268
	str r0, [sp, #4]
	bl sub_0207A0F8
	add r5, r7, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _021F6F34
_021F6EE6:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp, #0xc]
	ldr r1, _021F6F40 ; =0x000001DF
	cmp r2, r1
	bne _021F6F2C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _021F6F2C
	cmp r0, #0
	bne _021F6F2C
	ldrh r0, [r6]
	cmp r0, #0xff
	bne _021F6F2A
	strh r5, [r6]
_021F6F2A:
	add r7, r7, #1
_021F6F2C:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _021F6EE6
_021F6F34:
	ldr r0, [sp]
	strh r7, [r0]
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F6F40: .word 0x000001DF
	thumb_func_end ov5_021F6E9C

	thumb_func_start ov5_021F6F44
ov5_021F6F44: ; 0x021F6F44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
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
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	ldr r2, [sp]
	add r1, r7, #0
	add r5, r0, #0
	bl sub_02077C20
	ldr r0, [r4, #0xc]
	bl sub_02027560
	add r1, r5, #0
	bl sub_0202736C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F6F44

	thumb_func_start ov5_021F6FC0
ov5_021F6FC0: ; 0x021F6FC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _021F70AE
	ldr r0, _021F70C4 ; =0x0000010A
	cmp r4, r0
	bgt _021F7060
	bge _021F70A4
	cmp r4, #0x84
	bgt _021F704C
	bge _021F70A4
	cmp r4, #0xe
	bgt _021F7046
	add r0, r4, #0
	sub r0, #0xa
	bmi _021F70AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F703C: ; jump table
	.short _021F70A4 - _021F703C - 2 ; case 0
	.short _021F70A4 - _021F703C - 2 ; case 1
	.short _021F70AE - _021F703C - 2 ; case 2
	.short _021F70A4 - _021F703C - 2 ; case 3
	.short _021F70A4 - _021F703C - 2 ; case 4
_021F7046:
	cmp r4, #0x81
	beq _021F70A4
	b _021F70AE
_021F704C:
	cmp r4, #0xeb
	bgt _021F7058
	bge _021F70A4
	cmp r4, #0xca
	beq _021F70A4
	b _021F70AE
_021F7058:
	sub r0, r0, #1
	cmp r4, r0
	beq _021F70A4
	b _021F70AE
_021F7060:
	add r1, r0, #0
	add r1, #0x6c
	cmp r4, r1
	bgt _021F7086
	add r1, r0, #0
	add r1, #0x6c
	cmp r4, r1
	bge _021F70A4
	add r1, r0, #2
	cmp r4, r1
	bgt _021F707E
	add r0, r0, #2
	cmp r4, r0
	beq _021F70A4
	b _021F70AE
_021F707E:
	add r0, #0x5e
	cmp r4, r0
	beq _021F70A4
	b _021F70AE
_021F7086:
	add r1, r0, #0
	add r1, #0x92
	cmp r4, r1
	bgt _021F709E
	add r1, r0, #0
	add r1, #0x92
	cmp r4, r1
	bge _021F70A4
	add r0, #0x87
	cmp r4, r0
	beq _021F70A4
	b _021F70AE
_021F709E:
	add r0, #0x95
	cmp r4, r0
	bne _021F70AE
_021F70A4:
	ldr r0, _021F70C8 ; =0x0000FFFF
	add sp, #8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F70AE:
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov5_021F70CC
	ldr r0, [sp]
	strh r0, [r5]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F70C4: .word 0x0000010A
_021F70C8: .word 0x0000FFFF
	thumb_func_end ov5_021F6FC0

	thumb_func_start ov5_021F70CC
ov5_021F70CC: ; 0x021F70CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	cmp r5, #0
	beq _021F7168
	mov r1, #2
	and r0, r1
	lsl r0, r0, #4
	mov ip, r0
	ldr r0, [sp]
	and r0, r1
	lsl r3, r0, #3
	ldr r0, [sp, #4]
	and r0, r1
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	and r0, r1
	lsl r2, r0, #1
	ldr r0, [sp, #0x10]
	and r0, r1
	asr r6, r0, #1
	ldr r0, [sp, #0xc]
	and r0, r1
	orr r0, r6
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	add r1, r3, #0
	orr r1, r0
	mov r0, ip
	orr r1, r0
	mov r0, #0x28
	str r1, [r5, #0]
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r0, #0x1e
	str r0, [r5, #0]
_021F7168:
	cmp r4, #0
	beq _021F71B2
	lsl r0, r7, #0x1f
	lsr r5, r0, #0x1a
	ldr r0, [sp]
	mov r6, #1
	lsl r0, r0, #0x1f
	lsr r3, r0, #0x1b
	ldr r0, [sp, #4]
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1c
	ldr r0, [sp, #8]
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, [sp, #0x10]
	and r0, r6
	ldr r6, [sp, #0xc]
	lsl r6, r6, #0x1f
	lsr r6, r6, #0x1e
	orr r0, r6
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r1, r5, #0
	orr r1, r0
	mov r0, #0xf
	str r1, [r4, #0]
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #9
	blt _021F71B2
	add r0, r0, #1
	str r0, [r4, #0]
_021F71B2:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F70CC

	thumb_func_start ov5_021F71B8
ov5_021F71B8: ; 0x021F71B8
	push {r3, r4, r5, r6, r7, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	mov r1, #0
	bl sub_0207A0FC
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202783C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	add r3, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020278DC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F71B8

	thumb_func_start ov5_021F7208
ov5_021F7208: ; 0x021F7208
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202783C
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02027914
	ldr r0, [sp, #8]
	strh r0, [r6]
	ldr r0, [sp, #4]
	strh r0, [r7]
	ldr r0, [sp]
	strh r0, [r4]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F7208

	thumb_func_start ov5_021F7270
ov5_021F7270: ; 0x021F7270
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F7270

	thumb_func_start ov5_021F72B8
ov5_021F72B8: ; 0x021F72B8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #1
	sub r7, #0xd
	add r5, r0, #0
	strh r1, [r4]
	cmp r7, #7
	bls _021F7302
	b _021F740A
_021F7302:
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F730E: ; jump table
	.short _021F731E - _021F730E - 2 ; case 0
	.short _021F736E - _021F730E - 2 ; case 1
	.short _021F73BA - _021F730E - 2 ; case 2
	.short _021F73CA - _021F730E - 2 ; case 3
	.short _021F73DA - _021F730E - 2 ; case 4
	.short _021F73EA - _021F730E - 2 ; case 5
	.short _021F740A - _021F730E - 2 ; case 6
	.short _021F73FA - _021F730E - 2 ; case 7
_021F731E:
	mov r1, #0x1d
	bl sub_0202CFB8
	cmp r0, #1
	bhs _021F732C
	mov r0, #0
	strh r0, [r4]
_021F732C:
	add r0, r5, #0
	mov r1, #0x3c
	bl sub_0202CFB8
	cmp r0, #1
	bhs _021F733C
	mov r0, #0
	strh r0, [r4]
_021F733C:
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_0202CFB8
	cmp r0, #1
	bhs _021F734C
	mov r0, #0
	strh r0, [r4]
_021F734C:
	add r0, r5, #0
	mov r1, #0x3e
	bl sub_0202CFB8
	cmp r0, #1
	bhs _021F735C
	mov r0, #0
	strh r0, [r4]
_021F735C:
	add r0, r5, #0
	mov r1, #0x3f
	bl sub_0202CFB8
	cmp r0, #1
	bhs _021F740A
	mov r0, #0
	strh r0, [r4]
	b _021F740A
_021F736E:
	mov r0, #0
	strh r0, [r4]
	add r0, r6, #0
	bl sub_0206B588
	cmp r0, #2
	blo _021F7380
	mov r0, #1
	strh r0, [r4]
_021F7380:
	add r0, r6, #0
	bl sub_0206B598
	cmp r0, #2
	blo _021F738E
	mov r0, #1
	strh r0, [r4]
_021F738E:
	add r0, r6, #0
	bl sub_0206B5A8
	cmp r0, #2
	blo _021F739C
	mov r0, #1
	strh r0, [r4]
_021F739C:
	add r0, r6, #0
	bl sub_0206B5B8
	cmp r0, #2
	blo _021F73AA
	mov r0, #1
	strh r0, [r4]
_021F73AA:
	add r0, r6, #0
	bl sub_0206B5C8
	cmp r0, #2
	blo _021F740A
	mov r0, #1
	strh r0, [r4]
	b _021F740A
_021F73BA:
	mov r1, #0x49
	bl sub_0202CFB8
	cmp r0, #0xa
	bhs _021F740A
	mov r0, #0
	strh r0, [r4]
	b _021F740A
_021F73CA:
	mov r1, #0x39
	bl sub_0202CFB8
	cmp r0, #0x32
	bhs _021F740A
	mov r0, #0
	strh r0, [r4]
	b _021F740A
_021F73DA:
	mov r1, #4
	bl sub_0202CFB8
	cmp r0, #0x32
	bhs _021F740A
	mov r0, #0
	strh r0, [r4]
	b _021F740A
_021F73EA:
	mov r1, #0xb
	bl sub_0202CFB8
	cmp r0, #0x1e
	bhs _021F740A
	mov r0, #0
	strh r0, [r4]
	b _021F740A
_021F73FA:
	mov r1, #0
	bl sub_0202CFB8
	ldr r1, _021F7410 ; =0x000493E0
	cmp r0, r1
	bhs _021F740A
	mov r0, #0
	strh r0, [r4]
_021F740A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F7410: .word 0x000493E0
	thumb_func_end ov5_021F72B8

	thumb_func_start ov5_021F7414
ov5_021F7414: ; 0x021F7414
	mov r0, #1
	bx lr
	thumb_func_end ov5_021F7414

	thumb_func_start ov5_021F7418
ov5_021F7418: ; 0x021F7418
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
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
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	mov r2, #0x93
	lsl r2, r2, #2
	cmp r6, r2
	beq _021F747C
	add r1, r2, #2
	cmp r6, r1
	beq _021F74B0
	add r1, r2, #4
	cmp r6, r1
	beq _021F74E4
	b _021F7516
_021F747C:
	mov r1, #0x7f
	str r1, [sp]
	mov r5, #0
	ldr r1, _021F7528 ; =0x02200C90
	mov r2, #2
	add r3, r5, #0
_021F7488:
	ldrsh r6, [r1, r3]
	cmp r4, r6
	bne _021F74A6
	ldrsh r6, [r1, r2]
	cmp r0, r6
	bne _021F74A6
	ldr r0, _021F752C ; =0x000005CF
	bl sub_02005748
	mov r0, #1
	ldrh r1, [r7]
	lsl r0, r5
	orr r0, r1
	strh r0, [r7]
	b _021F7516
_021F74A6:
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, #7
	blo _021F7488
	b _021F7516
_021F74B0:
	mov r1, #0x7f
	str r1, [sp]
	mov r5, #0
	ldr r1, _021F7530 ; =0x02200CAC
	mov r2, #2
	add r3, r5, #0
_021F74BC:
	ldrsh r6, [r1, r3]
	cmp r4, r6
	bne _021F74DA
	ldrsh r6, [r1, r2]
	cmp r0, r6
	bne _021F74DA
	ldr r0, _021F752C ; =0x000005CF
	bl sub_02005748
	mov r0, #1
	ldrh r1, [r7]
	lsl r0, r5
	orr r0, r1
	strh r0, [r7]
	b _021F7516
_021F74DA:
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, #7
	blo _021F74BC
	b _021F7516
_021F74E4:
	mov r1, #0x7f
	str r1, [sp]
	mov r5, #0
	ldr r1, _021F7534 ; =0x02200CC8
	mov r2, #2
	add r3, r5, #0
_021F74F0:
	ldrsh r6, [r1, r3]
	cmp r4, r6
	bne _021F750E
	ldrsh r6, [r1, r2]
	cmp r0, r6
	bne _021F750E
	ldr r0, _021F752C ; =0x000005CF
	bl sub_02005748
	mov r0, #1
	ldrh r1, [r7]
	lsl r0, r5
	orr r0, r1
	strh r0, [r7]
	b _021F7516
_021F750E:
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, #7
	blo _021F74F0
_021F7516:
	ldrh r1, [r7]
	ldr r0, [sp]
	cmp r1, r0
	bne _021F7524
	mov r0, #0x41
	lsl r0, r0, #2
	strh r0, [r7]
_021F7524:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F7528: .word 0x02200C90
_021F752C: .word 0x000005CF
_021F7530: .word 0x02200CAC
_021F7534: .word 0x02200CC8
	thumb_func_end ov5_021F7418

	thumb_func_start ov5_021F7538
ov5_021F7538: ; 0x021F7538
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0
	str r1, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r6, [r0, #0x38]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r1, sp, #0xc
	str r0, [sp]
	bl sub_02063050
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	ldr r4, [sp, #0x10]
	bl sub_020625B0
	cmp r0, #1
	bne _021F75FC
	asr r1, r4, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r7, r0, #0xc
_021F7570:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, r1
	beq _021F75EC
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_020628BC
	mov r1, #1
	ldr r0, [sp, #4]
	lsl r1, r1, #0xc
	bl sub_020628D8
	cmp r0, #1
	bne _021F75A8
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	bl sub_02063050
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r4, [sp, #0x10]
	bl sub_02063060
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_02063034
_021F75A8:
	ldr r0, [sp, #4]
	bl ov5_021EB1A0
	add r5, r0, #0
	bne _021F75D8
	ldr r0, [sp, #4]
	bl sub_02062920
	bl sub_020677F4
	cmp r0, #0
	beq _021F75D8
	ldr r0, [sp, #4]
	bl sub_02062D4C
	cmp r0, #0
	beq _021F75D8
	ldr r0, [sp, #4]
	bl sub_02062B68
	ldr r0, [sp, #4]
	bl sub_02067A58
	add r5, r0, #0
_021F75D8:
	cmp r5, #0
	beq _021F75EC
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	mov r1, #1
	bl sub_02021320
_021F75EC:
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _021F7570
_021F75FC:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F7538

	thumb_func_start ov5_021F7604
ov5_021F7604: ; 0x021F7604
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0
	str r1, [sp, #4]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x38]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _021F764C
	mov r6, #2
	lsl r6, r6, #0xc
	add r7, sp, #0
_021F7630:
	ldr r0, [sp]
	cmp r0, r5
	beq _021F763C
	add r1, r6, #0
	bl sub_020628C4
_021F763C:
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _021F7630
_021F764C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F7604

	thumb_func_start ov5_021F7654
ov5_021F7654: ; 0x021F7654
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	lsl r1, r1, #0xc
	bl sub_020628BC
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063050
	lsl r0, r4, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063060
	add r0, r5, #0
	lsl r1, r4, #1
	bl sub_02063034
	add r0, r5, #0
	bl ov5_021EB1A0
	add r4, r0, #0
	beq _021F769A
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDEB4
	add r0, r4, #0
	mov r1, #1
	bl sub_02021320
_021F769A:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F7654

	thumb_func_start ov5_021F76A0
ov5_021F76A0: ; 0x021F76A0
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x20
	ldr r4, [r0, #0x38]
	add r0, r4, #0
	bl sub_0206251C
	cmp r0, #0
	beq _021F76BA
	mov r1, #9
	bl ov5_021F7654
_021F76BA:
	add r0, r4, #0
	mov r1, #2
	bl sub_0206251C
	cmp r0, #0
	beq _021F76CC
	mov r1, #9
	bl ov5_021F7654
_021F76CC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021F76A0

	thumb_func_start ov5_021F76D0
ov5_021F76D0: ; 0x021F76D0
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x20
	ldr r4, [r0, #0x38]
	add r0, r4, #0
	bl sub_0206251C
	cmp r0, #0
	beq _021F76EC
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_020628C4
_021F76EC:
	add r0, r4, #0
	mov r1, #2
	bl sub_0206251C
	cmp r0, #0
	beq _021F7700
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_020628C4
_021F7700:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021F76D0

	thumb_func_start ov5_021F7704
ov5_021F7704: ; 0x021F7704
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r4, r0, #0
	beq _021F774E
	bl sub_02063020
	cmp r0, #0x28
	bgt _021F7730
	cmp r0, #0x26
	blt _021F772A
	beq _021F773A
	cmp r0, #0x28
	beq _021F773E
	b _021F7746
_021F772A:
	cmp r0, #0x1c
	beq _021F7736
	b _021F7746
_021F7730:
	cmp r0, #0x30
	beq _021F7742
	b _021F7746
_021F7736:
	mov r1, #6
	b _021F7748
_021F773A:
	mov r1, #5
	b _021F7748
_021F773E:
	mov r1, #3
	b _021F7748
_021F7742:
	mov r1, #2
	b _021F7748
_021F7746:
	mov r1, #4
_021F7748:
	add r0, r4, #0
	bl ov5_021F7654
_021F774E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F7704

	thumb_func_start ov5_021F7754
ov5_021F7754: ; 0x021F7754
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	cmp r0, #0
	beq _021F776E
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_020628C4
_021F776E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F7754

	thumb_func_start ov5_021F7774
ov5_021F7774: ; 0x021F7774
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202C878
	bl sub_02038F8C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov5_021F7774

	thumb_func_start ov5_021F7788
ov5_021F7788: ; 0x021F7788
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	mov r0, #1
	bl sub_0200544C
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F7788

	.rodata


	.global Unk_ov5_02200C84
Unk_ov5_02200C84: ; 0x02200C84
	.incbin "incbin/overlay5_rodata.bin", 0x8370, 0x837C - 0x8370

	.global Unk_ov5_02200C90
Unk_ov5_02200C90: ; 0x02200C90
	.incbin "incbin/overlay5_rodata.bin", 0x837C, 0x8398 - 0x837C

	.global Unk_ov5_02200CAC
Unk_ov5_02200CAC: ; 0x02200CAC
	.incbin "incbin/overlay5_rodata.bin", 0x8398, 0x83B4 - 0x8398

	.global Unk_ov5_02200CC8
Unk_ov5_02200CC8: ; 0x02200CC8
	.incbin "incbin/overlay5_rodata.bin", 0x83B4, 0x1C


	.data


	.global Unk_ov5_0220210C
Unk_ov5_0220210C: ; 0x0220210C
	.incbin "incbin/overlay5_data.bin", 0x3EC, 0x12

