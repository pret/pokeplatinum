	.include "macros/function.inc"
	.include "include/ov23_022521F0.inc"

	

	.text


	thumb_func_start ov23_022521F0
ov23_022521F0: ; 0x022521F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	add r4, r1, #0
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028930
	add r7, r4, r0
	mov r4, #0
_0225220A:
	cmp r4, #0
	bne _02252212
	mov r5, #0x21
	b _0225222A
_02252212:
	ldr r0, _022522E0 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022522E4 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	lsl r0, r1, #5
	add r0, r1, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
_0225222A:
	mov r0, #0
	cmp r4, #0
	ble _02252246
	mov r1, #0x21
	add r3, r0, #0
	lsl r1, r1, #4
_02252236:
	add r2, r6, r0
	ldrb r2, [r2, r1]
	cmp r5, r2
	bne _02252240
	add r5, r3, #0
_02252240:
	add r0, r0, #1
	cmp r0, r4
	blt _02252236
_02252246:
	cmp r5, #0
	bne _0225224E
	sub r4, r4, #1
	b _022522D6
_0225224E:
	add r0, r5, #0
	bl ov23_022542AC
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov23_022542BC
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0225226E
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225226E
	sub r4, r4, #1
	b _022522D6
_0225226E:
	mov r1, #0x21
	add r0, r6, r4
	lsl r1, r1, #4
	str r0, [sp]
	strb r5, [r0, r1]
	add r0, r5, #0
	bl ov23_0225429C
	ldr r1, _022522E8 ; =0x00000215
	ldr r2, [sp]
	strb r0, [r2, r1]
	add r0, r2, #0
	ldrb r0, [r0, r1]
	cmp r0, #6
	bne _022522A8
	ldr r0, _022522E0 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r0
	ldr r0, _022522E4 ; =0x00269EC3
	add r7, r2, r0
	lsr r2, r7, #0x10
	lsl r0, r2, #2
	add r0, r2, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r2, r0, #1
	ldr r0, [sp]
	strb r2, [r0, r1]
_022522A8:
	ldr r0, _022522E0 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022522E4 ; =0x00269EC3
	add r7, r1, r0
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	bne _022522C2
	lsr r0, r7, #0x10
	b _022522C8
_022522C2:
	lsr r0, r7, #0x10
	mul r1, r0
	lsr r0, r1, #0x10
_022522C8:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #4]
	add r2, r0, r1
	ldr r1, _022522EC ; =0x0000021A
	ldr r0, [sp]
	strb r2, [r0, r1]
_022522D6:
	add r4, r4, #1
	cmp r4, #5
	blt _0225220A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022522E0: .word 0x5D588B65
_022522E4: .word 0x00269EC3
_022522E8: .word 0x00000215
_022522EC: .word 0x0000021A
	thumb_func_end ov23_022521F0

	thumb_func_start ov23_022522F0
ov23_022522F0: ; 0x022522F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	add r4, r1, #0
	bl sub_0203D174
	add r5, r0, #0
	bl sub_020298B0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02027560
	bl sub_02027474
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02028930
	add r7, r4, r0
	mov r4, #0
_0225231C:
	ldr r0, _022523F4 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022523F8 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	mov r0, #0x8a
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
	mov r0, #0
	cmp r4, #0
	ble _02252350
	mov r1, #0x21
	add r3, r0, #0
	lsl r1, r1, #4
_02252340:
	add r2, r6, r0
	ldrb r2, [r2, r1]
	cmp r5, r2
	bne _0225234A
	add r5, r3, #0
_0225234A:
	add r0, r0, #1
	cmp r0, r4
	blt _02252340
_02252350:
	cmp r5, #0
	bne _02252358
	sub r4, r4, #1
	b _022523EA
_02252358:
	mov r1, #0x21
	add r0, r6, r4
	lsl r1, r1, #4
	str r0, [sp]
	strb r5, [r0, r1]
	add r0, r5, #0
	bl sub_0205742C
	ldr r2, _022523FC ; =0x00000215
	ldr r1, [sp]
	strb r0, [r1, r2]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02252382
	add r0, r5, #0
	bl sub_0205747C
	cmp r0, #1
	bne _02252382
	sub r4, r4, #1
	b _022523EA
_02252382:
	ldr r0, _022523FC ; =0x00000215
	ldr r1, [sp]
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _02252390
	sub r4, r4, #1
	b _022523EA
_02252390:
	cmp r1, #6
	bne _022523B0
	ldr r1, _022523F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022523F8 ; =0x00269EC3
	add r7, r2, r1
	lsr r2, r7, #0x10
	lsl r1, r2, #2
	add r1, r2, r1
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r1, #1
	ldr r1, [sp]
	strb r2, [r1, r0]
_022523B0:
	add r0, r5, #0
	bl sub_0205743C
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205744C
	ldr r1, _022523F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022523F8 ; =0x00269EC3
	add r7, r2, r1
	ldr r1, [sp, #8]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	bne _022523D6
	lsr r0, r7, #0x10
	b _022523DC
_022523D6:
	lsr r0, r7, #0x10
	mul r1, r0
	lsr r0, r1, #0x10
_022523DC:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #8]
	add r2, r0, r1
	ldr r1, _02252400 ; =0x0000021A
	ldr r0, [sp]
	strb r2, [r0, r1]
_022523EA:
	add r4, r4, #1
	cmp r4, #5
	blt _0225231C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022523F4: .word 0x5D588B65
_022523F8: .word 0x00269EC3
_022523FC: .word 0x00000215
_02252400: .word 0x0000021A
	thumb_func_end ov23_022522F0

	thumb_func_start ov23_02252404
ov23_02252404: ; 0x02252404
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r7, r2, #0
	add r4, r1, #0
	bl sub_0203D174
	bl sub_020298B0
	add r6, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl ov23_0224F684
	ldr r1, _022524A4 ; =0x00000215
	add r2, r5, r4
	ldrb r1, [r2, r1]
	cmp r1, r0
	beq _02252432
	ldr r0, _022524A8 ; =0x0000FFFD
	pop {r3, r4, r5, r6, r7, pc}
_02252432:
	add r0, r7, #0
	add r1, r5, #0
	bl ov23_0224F69C
	ldr r1, _022524AC ; =0x0000021A
	add r2, r5, r4
	add r3, r0, #0
	ldrb r0, [r2, r1]
	cmp r0, r3
	ble _0225244A
	ldr r0, _022524B0 ; =0x0000FFFB
	pop {r3, r4, r5, r6, r7, pc}
_0225244A:
	add r0, r1, #0
	add r0, #0x2e
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _02252462
	sub r1, #0xa
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02028E84
	str r0, [sp]
	b _02252484
_02252462:
	cmp r0, #0
	bne _02252474
	sub r1, #0xa
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02028BC8
	str r0, [sp]
	b _02252484
_02252474:
	cmp r0, #2
	bne _02252484
	sub r1, #0xa
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02028DB4
	str r0, [sp]
_02252484:
	ldr r0, [sp]
	cmp r0, #0
	beq _02252494
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02028C6C
	b _02252498
_02252494:
	ldr r0, _022524B4 ; =0x0000FFFC
	pop {r3, r4, r5, r6, r7, pc}
_02252498:
	mov r0, #0x21
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022524A4: .word 0x00000215
_022524A8: .word 0x0000FFFD
_022524AC: .word 0x0000021A
_022524B0: .word 0x0000FFFB
_022524B4: .word 0x0000FFFC
	thumb_func_end ov23_02252404

	thumb_func_start ov23_022524B8
ov23_022524B8: ; 0x022524B8
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #3
	cmp r0, #2
	bne _022524CC
	mov r4, #2
_022524CC:
	add r0, r5, #0
	bl ov23_0224FB7C
	add r0, r4, #0
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	lsl r0, r4, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02252654 ; =0x000001EF
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02252658 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r0, [r5, r1]
	cmp r0, #1
	bne _02252562
	sub r1, #0x24
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov23_022521F0
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0xd
	mov r3, #0
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0xe
	mov r3, #1
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	mov r2, #0xf
	add r1, r0, #0
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	sub r3, #0x11
	bl sub_02013A4C
	b _022525DA
_02252562:
	cmp r0, #0
	bne _022525B0
	sub r1, #0x24
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov23_022522F0
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0x10
	mov r3, #0
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0x11
	mov r3, #1
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	mov r2, #0x12
	add r1, r0, #0
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	sub r3, #0x14
	bl sub_02013A4C
	b _022525DA
_022525B0:
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0x1c
	mov r3, #0
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	mov r2, #0x16
	add r1, r0, #0
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	sub r3, #0x18
	bl sub_02013A4C
_022525DA:
	bl ov23_02253D40
	add r1, sp, #0x14
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x20]
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	mov r0, #0x13
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x13
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r2, sp, #0x14
	ldrh r1, [r2, #0x12]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	mov r2, #0x23
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x14
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x48]
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r0, #0x1e
	strh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A954
	add r0, r5, #0
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02252654: .word 0x000001EF
_02252658: .word 0x000003D9
	thumb_func_end ov23_022524B8

	thumb_func_start ov23_0225265C
ov23_0225265C: ; 0x0225265C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0x13
	add r6, r0, #0
	add r7, r2, #0
	bl sub_02001504
	add r4, r0, #0
	add r0, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r1, _02252748 ; =0x00000247
	ldr r2, [r4, #0x68]
	ldrb r1, [r4, r1]
	add r1, #0x17
	bl sub_0200B1B8
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x68]
	add r0, #0x20
	bl sub_0201D738
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _022526FE
	ldr r2, _0225274C ; =0x00000215
	add r3, r4, r5
	ldrb r2, [r3, r2]
	ldr r0, [r4, #0x70]
	mov r1, #2
	bl sub_0200BA94
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, _02252750 ; =0x0000021A
	add r3, r4, r5
	ldrb r2, [r3, r2]
	ldr r0, [r4, #0x70]
	mov r1, #6
	mov r3, #2
	bl sub_0200B60C
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r2, [r4, #0x68]
	mov r1, #0x19
	bl sub_0200B1B8
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	bl sub_0200C388
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x20
	mov r3, #1
	bl sub_0201D738
_022526FE:
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _02252710
	add r5, r0, #0
_02252710:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _02252728
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov23_0224FD84
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02252728:
	cmp r0, #0
	bne _0225273A
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov23_02250C3C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0225273A:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov23_02250540
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02252748: .word 0x00000247
_0225274C: .word 0x00000215
_02252750: .word 0x0000021A
	thumb_func_end ov23_0225265C

	thumb_func_start ov23_02252754
ov23_02252754: ; 0x02252754
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r1, #0
	mov r1, #0x13
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	bl sub_02001504
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	str r0, [sp, #0x2c]
	add r0, r4, #0
	mov r5, #0
	add r0, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	sub r0, r5, #2
	cmp r6, r0
	bne _02252786
	b _022528FA
_02252786:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0225280A
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224F66C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	bl sub_02028930
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r1, r1, r0
	ldr r0, [sp, #0x24]
	add r7, r0, r1
	bl ov23_0225429C
	add r5, r0, #0
	cmp r5, #6
	bne _022527CE
	ldr r0, _022529F4 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022529F8 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	lsl r0, r1, #2
	add r0, r1, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
_022527CE:
	ldr r0, [sp, #0x24]
	bl ov23_022542AC
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	bl ov23_022542BC
	ldr r1, _022529F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022529F8 ; =0x00269EC3
	add r1, r2, r1
	ldr r2, [sp, #0x28]
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _022527F2
	b _022527F8
_022527F2:
	lsr r0, r1, #0x10
	add r1, r0, #0
	mul r1, r2
_022527F8:
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r7, r0, #1
	b _022528FA
_0225280A:
	cmp r0, #0
	bne _02252888
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224F61C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	bl sub_02028930
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r1, r1, r0
	ldr r0, [sp, #0x20]
	add r7, r0, r1
	bl sub_0205742C
	add r5, r0, #0
	cmp r5, #6
	bne _0225284C
	ldr r0, _022529F4 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022529F8 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	lsl r0, r1, #2
	add r0, r1, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
_0225284C:
	ldr r0, [sp, #0x20]
	bl sub_0205743C
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	bl sub_0205744C
	ldr r1, _022529F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022529F8 ; =0x00269EC3
	add r1, r2, r1
	ldr r2, [sp, #0x14]
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _02252870
	b _02252876
_02252870:
	lsr r0, r1, #0x10
	add r1, r0, #0
	mul r1, r2
_02252876:
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r7, r0, #1
	b _022528FA
_02252888:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224F6C8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	bl sub_02028930
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r1, r1, r0
	ldr r0, [sp, #0x1c]
	add r7, r0, r1
	bl ov23_0225426C
	add r5, r0, #0
	cmp r5, #6
	bne _022528C6
	ldr r0, _022529F4 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022529F8 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	lsl r0, r1, #2
	add r0, r1, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
_022528C6:
	ldr r0, [sp, #0x1c]
	bl ov23_0225427C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl ov23_0225428C
	ldr r1, _022529F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022529F8 ; =0x00269EC3
	add r1, r2, r1
	ldr r2, [sp, #0x18]
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _022528EA
	b _022528F0
_022528EA:
	lsr r0, r1, #0x10
	add r1, r0, #0
	mul r1, r2
_022528F0:
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x18]
	add r7, r0, r1
_022528FA:
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r1, _022529FC ; =0x00000247
	ldr r2, [r4, #0x68]
	ldrb r1, [r4, r1]
	add r1, #0x17
	bl sub_0200B1B8
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x68]
	add r0, #0x20
	bl sub_0201D738
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	beq _022529B4
	cmp r5, #0
	beq _02252988
	ldr r0, [r4, #0x70]
	mov r1, #2
	add r2, r5, #0
	bl sub_0200BA94
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x70]
	mov r1, #6
	add r2, r7, #0
	mov r3, #2
	bl sub_0200B60C
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r2, [r4, #0x68]
	mov r1, #0x19
	bl sub_0200B1B8
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	bl sub_0200C388
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x20
	mov r3, #1
	bl sub_0201D738
	ldr r0, _02252A00 ; =0x00000215
	strb r5, [r4, r0]
	add r0, r0, #5
	strb r7, [r4, r0]
	b _022529B4
_02252988:
	ldr r0, _02252A00 ; =0x00000215
	strb r5, [r4, r0]
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r2, [r4, #0x68]
	mov r1, #0x1a
	bl sub_0200B1B8
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x68]
	add r0, #0x20
	mov r3, #1
	bl sub_0201D738
_022529B4:
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _022529D4
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ov23_0224FD84
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_022529D4:
	cmp r0, #0
	bne _022529E6
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ov23_02250C3C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_022529E6:
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ov23_02250540
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022529F4: .word 0x5D588B65
_022529F8: .word 0x00269EC3
_022529FC: .word 0x00000247
_02252A00: .word 0x00000215
	thumb_func_end ov23_02252754

	thumb_func_start ov23_02252A04
ov23_02252A04: ; 0x02252A04
	cmp r0, #5
	blt _02252A0C
	mov r0, #0
	bx lr
_02252A0C:
	add r1, r1, r0
	mov r0, #0x21
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02252A04

	thumb_func_start ov23_02252A18
ov23_02252A18: ; 0x02252A18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	bl ov23_0224FB7C
	mov r0, #6
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02252B78 ; =0x0000015F
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02252B7C ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r2, #0x92
	lsl r2, r2, #2
	ldrb r0, [r5, r2]
	cmp r0, #1
	bne _02252A80
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x2e
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	bl ov23_022421DC
	ldr r1, _02252B80 ; =0x00000276
	mov r2, #0
	bl ov23_02253DFC
	b _02252ABC
_02252A80:
	cmp r0, #0
	bne _02252AA0
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x2a
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	bl ov23_022421DC
	ldr r1, _02252B84 ; =0x00000272
	mov r2, #0
	bl ov23_02253DFC
	b _02252ABC
_02252AA0:
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x2c
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	bl ov23_022421DC
	mov r1, #0x9d
	lsl r1, r1, #2
	mov r2, #0
	bl ov23_02253DFC
_02252ABC:
	mov r7, #0x21
	mov r4, #0
	lsl r7, r7, #4
_02252AC2:
	add r2, r5, r4
	ldrb r2, [r2, r7]
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, #5
	blt _02252AC2
	mov r2, #0
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	sub r3, r2, #2
	bl sub_02013A4C
	add r0, r6, #0
	bl sub_0200B190
	bl ov23_02253D40
	add r1, sp, #0x14
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r5, #0x40]
	mov r1, #6
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x20]
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, _02252B88 ; =ov23_0225265C
	ldr r1, _02252B8C ; =ov23_02252A04
	str r0, [sp, #0x18]
	mov r0, #0x81
	str r5, [sp, #0x30]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0x44
	ldrb r0, [r5, r0]
	add r0, #0xd
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, #0x18
	ldrb r0, [r5, r1]
	add r0, #0xd
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	add r1, #0x1e
	strh r0, [r5, r1]
	add r2, sp, #0x14
	ldrh r1, [r2, #0x12]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	mov r2, #0x23
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x14
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x48]
	add r5, #0x10
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02252B78: .word 0x0000015F
_02252B7C: .word 0x000003D9
_02252B80: .word 0x00000276
_02252B84: .word 0x00000272
_02252B88: .word ov23_0225265C
_02252B8C: .word ov23_02252A04
	thumb_func_end ov23_02252A18

	thumb_func_start ov23_02252B90
ov23_02252B90: ; 0x02252B90
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x20
	bl sub_0201A7CC
	cmp r0, #0
	beq _02252BB0
	add r0, r4, #0
	add r0, #0x20
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A8FC
_02252BB0:
	add r0, r4, #0
	bl ov23_0224FB7C
	pop {r4, pc}
	thumb_func_end ov23_02252B90

	thumb_func_start ov23_02252BB8
ov23_02252BB8: ; 0x02252BB8
	push {r4, lr}
	mov r2, #0x92
	add r4, r1, #0
	lsl r2, r2, #2
	ldrb r2, [r4, r2]
	cmp r2, #1
	bne _02252BD4
	bl ov23_0224F66C
	add r1, r0, #0
	mov r0, #2
	bl ov23_02252CF4
	b _02252BF2
_02252BD4:
	cmp r2, #0
	bne _02252BE6
	bl ov23_0224F61C
	add r1, r0, #0
	mov r0, #2
	bl ov23_02252D08
	b _02252BF2
_02252BE6:
	bl ov23_0224F6C8
	add r1, r0, #0
	mov r0, #2
	bl ov23_02252CE0
_02252BF2:
	ldr r1, _02252C04 ; =0x00000215
	mov r0, #4
	ldrb r1, [r4, r1]
	bl ov23_02252CE0
	mov r0, #0xa
	bl ov23_02252C9C
	pop {r4, pc}
	; .align 2, 0
_02252C04: .word 0x00000215
	thumb_func_end ov23_02252BB8

	thumb_func_start ov23_02252C08
ov23_02252C08: ; 0x02252C08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	ldr r1, _02252C68 ; =0x00000215
	add r4, r0, #0
	ldrb r0, [r5, r1]
	add r1, r1, #5
	ldrb r1, [r5, r1]
	bl ov23_0224F6E0
	cmp r0, #0
	beq _02252C62
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r0, [r5, r1]
	cmp r0, #1
	bne _02252C3E
	sub r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	bl sub_02028E50
	b _02252C5C
_02252C3E:
	cmp r0, #0
	bne _02252C4E
	sub r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	bl sub_02028B94
	b _02252C5C
_02252C4E:
	cmp r0, #2
	bne _02252C5C
	sub r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	bl sub_02028D80
_02252C5C:
	ldr r0, _02252C68 ; =0x00000215
	ldrb r0, [r5, r0]
	pop {r3, r4, r5, pc}
_02252C62:
	ldr r0, _02252C6C ; =0x0000FFFC
	pop {r3, r4, r5, pc}
	nop
_02252C68: .word 0x00000215
_02252C6C: .word 0x0000FFFC
	thumb_func_end ov23_02252C08

	thumb_func_start ov23_02252C70
ov23_02252C70: ; 0x02252C70
	ldr r0, _02252C74 ; =0x0000FFFE
	bx lr
	; .align 2, 0
_02252C74: .word 0x0000FFFE
	thumb_func_end ov23_02252C70

	thumb_func_start ov23_02252C78
ov23_02252C78: ; 0x02252C78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_020237BC
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	ldr r0, [r4, #0x70]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02252C78

	thumb_func_start ov23_02252C98
ov23_02252C98: ; 0x02252C98
	mov r0, #0
	bx lr
	thumb_func_end ov23_02252C98

	thumb_func_start ov23_02252C9C
ov23_02252C9C: ; 0x02252C9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov23_022421BC
	mov r1, #0x9f
	lsl r1, r1, #2
	mov r2, #1
	bl ov23_02253DFC
	bl ov23_022421BC
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02254068
	bl ov23_022421BC
	mov r2, #0
	add r1, r5, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02252C9C

	thumb_func_start ov23_02252CD4
ov23_02252CD4: ; 0x02252CD4
	push {r3, lr}
	bl ov23_022421BC
	bl ov23_02254044
	pop {r3, pc}
	thumb_func_end ov23_02252CD4

	thumb_func_start ov23_02252CE0
ov23_02252CE0: ; 0x02252CE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_022421BC
	add r1, r5, #0
	add r2, r4, #0
	bl ov23_022541A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02252CE0

	thumb_func_start ov23_02252CF4
ov23_02252CF4: ; 0x02252CF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_022421BC
	add r1, r5, #0
	add r2, r4, #0
	bl ov23_022541B4
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02252CF4

	thumb_func_start ov23_02252D08
ov23_02252D08: ; 0x02252D08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_022421BC
	add r1, r5, #0
	add r2, r4, #0
	bl ov23_022541C8
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02252D08

	thumb_func_start ov23_02252D1C
ov23_02252D1C: ; 0x02252D1C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0x20
	bl sub_0201A7CC
	cmp r0, #0
	bne _02252D5A
	mov r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r3, #1
	str r3, [sp, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r1, #0x20
	mov r2, #3
	bl sub_0201A7E8
	add r0, r4, #0
	ldr r2, _02252D70 ; =0x000003D9
	add r0, #0x20
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
_02252D5A:
	add r0, r4, #0
	add r0, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02252D70: .word 0x000003D9
	thumb_func_end ov23_02252D1C

	thumb_func_start ov23_02252D74
ov23_02252D74: ; 0x02252D74
	push {r4, r5, lr}
	sub sp, #0x14
	mov r3, #1
	add r5, r0, #0
	str r3, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x33
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r1, r5, #0
	ldr r0, [r0, #8]
	add r1, #0x30
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02252DF0 ; =0x000003D9
	add r0, #0x30
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x30
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x30
	bl sub_0201A954
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r2, [r5, #0x68]
	add r1, r4, #0
	bl sub_0200B1B8
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x68]
	add r0, #0x30
	bl sub_0201D738
	add r5, #0x30
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02252DF0: .word 0x000003D9
	thumb_func_end ov23_02252D74

	thumb_func_start ov23_02252DF4
ov23_02252DF4: ; 0x02252DF4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl sub_0201A7CC
	cmp r0, #0
	beq _02252E14
	add r0, r4, #0
	add r0, #0x30
	mov r1, #1
	bl sub_0200DC9C
	add r4, #0x30
	add r0, r4, #0
	bl sub_0201A8FC
_02252E14:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02252DF4

	thumb_func_start ov23_02252E18
ov23_02252E18: ; 0x02252E18
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl sub_0201A7CC
	cmp r0, #0
	beq _02252E38
	add r0, r4, #0
	add r0, #0x30
	mov r1, #0
	bl sub_0200DC9C
	add r4, #0x30
	add r0, r4, #0
	bl sub_0201A8FC
_02252E38:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02252E18

	thumb_func_start ov23_02252E3C
ov23_02252E3C: ; 0x02252E3C
	push {r3, r4, r5, lr}
	ldr r5, _02252E6C ; =0x02257674
	mov r3, #0
_02252E42:
	ldrh r4, [r5, #2]
	cmp r0, r4
	bne _02252E5C
	ldrh r4, [r5, #4]
	cmp r1, r4
	bne _02252E5C
	mov r0, #6
	add r1, r3, #0
	mul r1, r0
	ldr r0, _02252E6C ; =0x02257674
	str r3, [r2, #0]
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02252E5C:
	add r3, r3, #1
	add r5, r5, #6
	cmp r3, #0x14
	blt _02252E42
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02252E6C: .word 0x02257674
	thumb_func_end ov23_02252E3C

	thumb_func_start ov23_02252E70
ov23_02252E70: ; 0x02252E70
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _022531A8 ; =0x00000246
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0x12
	bhi _02252F40
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02252E8C: ; jump table
	.short _02252EB2 - _02252E8C - 2 ; case 0
	.short _02252ED2 - _02252E8C - 2 ; case 1
	.short _02252EE8 - _02252E8C - 2 ; case 2
	.short _02252EF8 - _02252E8C - 2 ; case 3
	.short _02252F9C - _02252E8C - 2 ; case 4
	.short _02252FB2 - _02252E8C - 2 ; case 5
	.short _0225307E - _02252E8C - 2 ; case 6
	.short _0225309E - _02252E8C - 2 ; case 7
	.short _02253104 - _02252E8C - 2 ; case 8
	.short _02253200 - _02252E8C - 2 ; case 9
	.short _02253252 - _02252E8C - 2 ; case 10
	.short _022531F0 - _02252E8C - 2 ; case 11
	.short _02253278 - _02252E8C - 2 ; case 12
	.short _022532F0 - _02252E8C - 2 ; case 13
	.short _02253384 - _02252E8C - 2 ; case 14
	.short _022533AE - _02252E8C - 2 ; case 15
	.short _022533F8 - _02252E8C - 2 ; case 16
	.short _0225343A - _02252E8C - 2 ; case 17
	.short _0225344A - _02252E8C - 2 ; case 18
_02252EB2:
	add r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #2
	bne _02252EC2
	mov r0, #0x1b
	bl ov23_02252C9C
	b _02252EC8
_02252EC2:
	mov r0, #0
	bl ov23_02252C9C
_02252EC8:
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #1
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252ED2:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02252F40
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #2
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252EE8:
	add r0, r4, #0
	bl ov23_022524B8
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #3
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252EF8:
	ldr r0, [r4, #0x48]
	bl sub_02001288
	add r5, r0, #0
	add r1, sp, #4
	ldr r0, [r4, #0x48]
	add r1, #2
	add r2, sp, #4
	bl sub_020014DC
	add r2, sp, #4
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0x13
	bl ov23_022430E0
	ldr r1, _022531AC ; =0x0000024A
	ldr r0, [r4, #0x48]
	ldrh r6, [r4, r1]
	add r1, r4, r1
	bl sub_020014D0
	ldr r0, _022531AC ; =0x0000024A
	ldrh r0, [r4, r0]
	cmp r6, r0
	beq _02252F32
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
_02252F32:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02252F44
	add r0, r0, #1
	cmp r5, r0
	bne _02252F42
_02252F40:
	b _02253478
_02252F42:
	b _02252F5C
_02252F44:
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	bl ov23_02252B90
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #0x11
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252F5C:
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r0, [r4, r1]
	cmp r0, #2
	bne _02252F76
	mov r2, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r2, #0xc
	sub r0, r1, #2
	add sp, #8
	strb r2, [r4, r0]
	pop {r4, r5, r6, pc}
_02252F76:
	sub r0, r1, #1
	strb r5, [r4, r0]
	cmp r5, #0
	ldr r0, _022531B0 ; =0x000005DC
	bne _02252F8E
	bl sub_02005748
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #4
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252F8E:
	bl sub_02005748
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #0xc
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252F9C:
	add r0, r4, #0
	bl ov23_02252D1C
	add r0, r4, #0
	bl ov23_02252A18
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #5
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252FB2:
	ldr r0, [r4, #0x48]
	bl sub_02001288
	add r5, r0, #0
	add r1, sp, #4
	ldr r0, [r4, #0x48]
	add r1, #2
	add r2, sp, #4
	bl sub_020014DC
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r2, sp, #4
	ldrh r1, [r2]
	add r0, #0xd
	lsl r0, r0, #0x10
	ldrh r2, [r2, #2]
	lsr r0, r0, #0x10
	bl ov23_022430E0
	ldr r1, _022531AC ; =0x0000024A
	ldr r0, [r4, #0x48]
	ldrh r6, [r4, r1]
	add r1, r4, r1
	bl sub_020014D0
	ldr r0, _022531AC ; =0x0000024A
	ldrh r0, [r4, r0]
	cmp r6, r0
	beq _02252FF6
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
_02252FF6:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _02253000
	add r5, r0, #0
_02253000:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02253010
	bl ov23_022421DC
	bl ov23_02254044
_02253010:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02253020
	add r0, r0, #1
	cmp r5, r0
	beq _02253110
	b _02253038
_02253020:
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	bl ov23_02252B90
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #2
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253038:
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
	mov r1, #0x91
	lsl r1, r1, #2
	strb r5, [r4, r1]
	add r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0225305C
	ldrb r2, [r4, r1]
	sub r1, #0x34
	mov r0, #2
	add r2, r4, r2
	ldrb r1, [r2, r1]
	bl ov23_02252CF4
	b _0225306E
_0225305C:
	cmp r0, #0
	bne _0225306E
	ldrb r2, [r4, r1]
	sub r1, #0x34
	mov r0, #2
	add r2, r4, r2
	ldrb r1, [r2, r1]
	bl ov23_02252D08
_0225306E:
	mov r0, #1
	bl ov23_02252C9C
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #6
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225307E:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253110
	ldr r0, _022531B4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02253110
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #7
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225309E:
	add r0, r4, #0
	bl ov23_0224FB7C
	mov r0, #0xc
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xc
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov23_02250184
	add r0, r4, #0
	mov r1, #0x13
	bl ov23_02252D74
	mov r2, #0x92
	lsl r2, r2, #2
	ldrb r0, [r4, r2]
	cmp r0, #1
	bne _022530E6
	sub r1, r2, #4
	ldrb r1, [r4, r1]
	sub r2, #0x38
	mov r0, #2
	add r1, r4, r1
	ldrb r1, [r1, r2]
	bl ov23_02252CF4
	b _022530FA
_022530E6:
	cmp r0, #0
	bne _022530FA
	sub r1, r2, #4
	ldrb r1, [r4, r1]
	sub r2, #0x38
	mov r0, #2
	add r1, r4, r1
	ldrb r1, [r1, r2]
	bl ov23_02252D08
_022530FA:
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #8
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253104:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	beq _02253112
_02253110:
	b _02253478
_02253112:
	ldr r0, [r4, #0x4c]
	bl ov23_02248D20
	add r5, r0, #0
	ldr r0, [r4, #0x4c]
	add r1, sp, #4
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #4
	bl sub_020014DC
	add r2, sp, #4
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0xc
	bl ov23_022430E0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02253144
	bl ov23_022421DC
	bl ov23_02254044
_02253144:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02253154
	add r0, r0, #1
	cmp r5, r0
	beq _02253216
	b _02253164
_02253154:
	add r0, r4, #0
	bl ov23_02252DF4
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #4
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253164:
	mov r1, #0x91
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r4, #0
	add r2, r5, #0
	bl ov23_02252404
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov23_02252B90
	add r0, r4, #0
	bl ov23_02252DF4
	ldr r1, _022531B8 ; =0x0000FFFC
	cmp r5, r1
	bne _02253198
	mov r0, #3
	bl ov23_02252C9C
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253198:
	add r0, r1, #1
	cmp r5, r0
	bne _022531C4
	mov r0, #4
	bl ov23_02252C9C
	ldr r0, _022531A8 ; =0x00000246
	b _022531BC
	; .align 2, 0
_022531A8: .word 0x00000246
_022531AC: .word 0x0000024A
_022531B0: .word 0x000005DC
_022531B4: .word 0x021BF67C
_022531B8: .word 0x0000FFFC
_022531BC:
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022531C4:
	sub r0, r1, #1
	cmp r5, r0
	bne _022531DA
	mov r0, #5
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022531DA:
	mov r0, #0x91
	lsl r0, r0, #2
	strb r5, [r4, r0]
	mov r0, #2
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #9
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022531F0:
	mov r0, #3
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253200:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253216
	ldr r0, _02253480 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02253218
_02253216:
	b _02253478
_02253218:
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _0225322E
	sub r1, r1, #4
	ldrb r1, [r4, r1]
	mov r0, #2
	bl ov23_02252CF4
	b _0225323C
_0225322E:
	cmp r0, #0
	bne _0225323C
	sub r1, r1, #4
	ldrb r1, [r4, r1]
	mov r0, #2
	bl ov23_02252D08
_0225323C:
	mov r0, #6
	bl ov23_02252C9C
	ldr r0, _02253484 ; =0x000005E3
	bl sub_02005748
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253252:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253354
	ldr r0, _02253480 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02253354
	mov r0, #8
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #2
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253278:
	add r0, r4, #0
	bl ov23_02252D1C
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, #0x1c
	ldrb r0, [r4, r1]
	add r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _02253488 ; =ov23_02252754
	add r1, #0x18
	str r0, [r4, #0x60]
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _022532C4
	add r0, r4, #0
	bl ov23_0224FDBC
	add r0, r4, #0
	mov r1, #0x14
	bl ov23_02252D74
	b _022532E6
_022532C4:
	cmp r0, #0
	bne _022532D8
	add r0, r4, #0
	bl ov23_02250CB0
	add r0, r4, #0
	mov r1, #0x15
	bl ov23_02252D74
	b _022532E6
_022532D8:
	add r0, r4, #0
	bl ov23_02250578
	add r0, r4, #0
	mov r1, #0x1d
	bl ov23_02252D74
_022532E6:
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xd
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022532F0:
	ldr r0, [r4, #0x4c]
	bl ov23_02248D20
	add r5, r0, #0
	ldr r0, [r4, #0x4c]
	add r1, sp, #4
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #4
	bl sub_020014DC
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r2, sp, #4
	ldrh r1, [r2]
	add r0, #0x10
	lsl r0, r0, #0x10
	ldrh r2, [r2, #2]
	lsr r0, r0, #0x10
	bl ov23_022430E0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0225332C
	add r0, r0, #1
	cmp r5, r0
	beq _02253354
	b _0225334C
_0225332C:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r4, #0
	mov r1, #1
	bl ov23_02252B90
	add r0, r4, #0
	bl ov23_02252DF4
	ldr r0, _0225347C ; =0x00000246
	mov r1, #2
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225334C:
	ldr r0, _0225348C ; =0x00000215
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02253356
_02253354:
	b _02253478
_02253356:
	bl ov23_022421DC
	bl ov23_02254044
	mov r0, #0x91
	lsl r0, r0, #2
	strb r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov23_02252B90
	add r0, r4, #0
	bl ov23_02252DF4
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02252BB8
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xe
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253384:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253478
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _02253490 ; =0x022569D8
	ldr r0, [r0, #8]
	ldr r2, _02253494 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x5c]
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xf
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022533AE:
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02253478
	cmp r0, #0
	bne _022533EA
	add r0, r4, #0
	bl ov23_02252C08
	ldr r1, _02253498 ; =0x0000FFFC
	cmp r0, r1
	bne _022533DC
	mov r0, #3
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	strb r1, [r4, r0]
	b _022533F0
_022533DC:
	mov r0, #0xb
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0x10
	strb r1, [r4, r0]
	b _022533F0
_022533EA:
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0x11
	strb r1, [r4, r0]
_022533F0:
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x5c]
	pop {r4, r5, r6, pc}
_022533F8:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253478
	ldr r0, _02253480 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02253478
	bl ov23_022421BC
	ldr r1, _0225349C ; =0x0000021A
	ldrb r1, [r4, r1]
	bl ov23_0225412C
	ldr r1, _0225348C ; =0x00000215
	mov r0, #2
	ldrb r1, [r4, r1]
	bl ov23_02252CE0
	mov r0, #7
	bl ov23_02252C9C
	ldr r0, _02253484 ; =0x000005E3
	bl sub_02005748
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225343A:
	mov r0, #9
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0x12
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225344A:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253478
	ldr r0, _02253480 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02253478
	bl ov23_02252CD4
	add r0, r4, #0
	bl ov23_02252C78
	bl ov23_02243204
	add r0, r5, #0
	bl sub_0200DA58
	bl sub_02059514
_02253478:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225347C: .word 0x00000246
_02253480: .word 0x021BF67C
_02253484: .word 0x000005E3
_02253488: .word ov23_02252754
_0225348C: .word 0x00000215
_02253490: .word 0x022569D8
_02253494: .word 0x000003D9
_02253498: .word 0x0000FFFC
_0225349C: .word 0x0000021A
	thumb_func_end ov23_02252E70

	thumb_func_start ov23_022534A0
ov23_022534A0: ; 0x022534A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02058D88
	str r0, [sp, #8]
	bl sub_0203608C
	bl sub_02058DC0
	str r0, [sp, #4]
	bl sub_0203608C
	bl sub_02058F50
	bl sub_02059328
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0xc
	bl ov23_02252E3C
	add r5, r0, #0
	add r0, r5, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_022430D0
	mov r1, #0x25
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	mov r1, #0
	lsl r2, r2, #4
	add r6, r0, #0
	bl MI_CpuFill8
	mov r0, #0x92
	str r4, [r6, #0xc]
	lsl r0, r0, #2
	strb r5, [r6, r0]
	ldr r1, [sp, #0xc]
	sub r0, #0x24
	str r1, [r6, r0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r6, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r6, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r6, #0x70]
	ldr r0, _02253584 ; =0x00000246
	mov r1, #0
	strb r1, [r6, r0]
	ldr r0, _02253588 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0225358C ; =ov23_02252E70
	ldr r2, _02253590 ; =0x00002710
	add r1, r6, #0
	bl sub_0200D9E8
	str r0, [r6, #4]
	ldr r1, [r6, #4]
	ldr r2, _02253594 ; =ov23_02251270
	add r0, r6, #0
	bl ov23_022431EC
	ldr r0, [r6, #0xc]
	bl sub_0203A4B4
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0203A4BC
	add r5, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0225357E
_02253556:
	ldrh r1, [r5, #0x18]
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _02253576
	ldrh r1, [r5, #0x1a]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02253576
	ldr r0, [r6, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	ldr r1, [sp]
	bl sub_02062974
_02253576:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, r7
	blt _02253556
_0225357E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253584: .word 0x00000246
_02253588: .word 0x000005DC
_0225358C: .word ov23_02252E70
_02253590: .word 0x00002710
_02253594: .word ov23_02251270
	thumb_func_end ov23_022534A0

	.rodata


	.global Unk_ov23_022569D0
Unk_ov23_022569D0: ; 0x022569D0
	.incbin "incbin/overlay23_rodata.bin", 0x6C4, 0x6C8 - 0x6C4

	.global Unk_ov23_022569D4
Unk_ov23_022569D4: ; 0x022569D4
	.incbin "incbin/overlay23_rodata.bin", 0x6C8, 0x6CC - 0x6C8

	.global Unk_ov23_022569D8
Unk_ov23_022569D8: ; 0x022569D8
	.incbin "incbin/overlay23_rodata.bin", 0x6CC, 0x8


	.data


	.global Unk_ov23_02257674
Unk_ov23_02257674: ; 0x02257674
	.incbin "incbin/overlay23_data.bin", 0xA94, 0x78

