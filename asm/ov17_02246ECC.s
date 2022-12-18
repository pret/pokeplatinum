	.include "macros/function.inc"
	.include "include/ov17_02246ECC.inc"

	

	.text


	thumb_func_start ov17_02246ECC
ov17_02246ECC: ; 0x02246ECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp, #4]
	mov r0, #0x15
	mov r1, #0x32
	bl sub_02018144
	add r7, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02246F20 ; =0x00000127
	ldrb r4, [r1, r0]
	cmp r4, #4
	bge _02246F16
	ldr r0, [sp, #4]
	lsl r1, r4, #1
	add r5, r0, r1
	add r0, #8
	str r0, [sp, #4]
_02246EF2:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov17_02246F24
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r0, r0, r4
	str r0, [sp]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ov17_02246F9C
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _02246EF2
_02246F16:
	add r0, r7, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246F20: .word 0x00000127
	thumb_func_end ov17_02246ECC

	thumb_func_start ov17_02246F24
ov17_02246F24: ; 0x02246F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r2, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #0
	mov r2, #0x32
	bl sub_020C4CF4
	lsl r0, r7, #2
	ldr r5, [sp]
	mov r4, #0
	str r0, [sp, #4]
_02246F40:
	ldr r1, [r6, #0]
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r0, [r0, r1]
	add r1, r4, #0
	add r1, #0x36
	bl sub_02074470
	strh r0, [r5]
	mov r0, #0x23
	lsl r0, r0, #4
	ldrh r2, [r5]
	add r0, r6, r0
	add r1, r7, #0
	bl ov17_02243A98
	cmp r0, #1
	bne _02246F7A
	ldrh r0, [r5]
	mov r1, #0xa
	bl sub_020790C4
	strb r0, [r5, #0xa]
	ldrh r0, [r5]
	mov r1, #0xb
	bl sub_020790C4
	strb r0, [r5, #0xb]
	b _02246F7E
_02246F7A:
	mov r0, #0
	strh r0, [r5]
_02246F7E:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #4
	blt _02246F40
	ldr r0, [r6, #0]
	add r1, r0, r7
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	strb r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02246F24

	thumb_func_start ov17_02246F9C
ov17_02246F9C: ; 0x02246F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	str r1, [sp, #8]
	str r0, [sp, #0x58]
	mov r1, #0x23
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [sp, #0x1c]
	mov r0, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x20]
_02246FBA:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	ldrb r1, [r0, #1]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _02246FD2
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _02246FBA
_02246FD2:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _02247264 ; =0x02253C30
	str r0, [sp, #0x18]
_02246FDA:
	ldr r0, [sp, #0x20]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	ldrb r0, [r0]
	cmp r1, r0
	bne _022470CC
	mov r1, #0
	add r2, sp, #0x3c
	add r2, #2
	add r0, r1, #0
_02246FEE:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #3
	blt _02246FEE
	ldr r0, [sp, #4]
	add r3, sp, #0x3c
	ldr r1, [r0, #0]
	ldr r0, _02247268 ; =0x0000011F
	ldr r4, [sp, #0x18]
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldrb r4, [r4, #1]
	ldr r0, [sp, #0x1c]
	add r3, #2
	lsl r5, r4, #2
	ldr r4, _0224726C ; =0x02253BBC
	ldr r4, [r4, r5]
	blx r4
	cmp r0, #1
	bne _022470CC
	ldr r0, [sp, #0x18]
	mov r1, #3
	ldrsb r0, [r0, r1]
	cmp r0, #0
	beq _02247030
	cmp r0, #2
	beq _02247044
	cmp r0, #3
	beq _02247044
	b _0224705A
_02247030:
	mov r2, #0
	add r1, sp, #0x3c
	add r1, #2
	add r0, r2, #0
_02247038:
	add r2, r2, #1
	strb r0, [r1]
	add r1, r1, #1
	cmp r2, #3
	blt _02247038
	b _0224705A
_02247044:
	add r2, sp, #0x3c
	mov r3, #0
	add r2, #2
	mov r0, #1
_0224704C:
	ldrb r1, [r2]
	add r3, r3, #1
	eor r1, r0
	strb r1, [r2]
	add r2, r2, #1
	cmp r3, #3
	blt _0224704C
_0224705A:
	ldr r0, [sp, #4]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	ldr r0, [sp, #0x18]
	lsl r1, r2, #1
	add r0, r0, r1
	mov r1, #4
	ldrsh r4, [r0, r1]
	cmp r2, #0
	beq _0224707C
	ldr r0, [sp, #0x18]
	ldrsh r0, [r0, r1]
	add r4, r4, r0
_0224707C:
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #2]
	cmp r0, #0xf0
	beq _0224708A
	cmp r0, #0xf1
	beq _022470CE
	b _0224710E
_0224708A:
	ldr r0, [sp, #8]
	mov r7, #0
	mov r5, #4
_02247090:
	ldr r1, [sp, #4]
	ldr r2, [r1, #0]
	ldr r1, _02247268 ; =0x0000011F
	ldrb r2, [r2, r1]
	ldrb r1, [r0, #0xb]
	cmp r2, r1
	bne _022470C4
	mov r1, #2
	ldrsh r1, [r0, r1]
	mov r3, #0
	add r2, r0, #0
	add r1, r1, r4
	strh r1, [r0, #2]
	add r1, sp, #0x3c
	add r1, #2
_022470AE:
	ldrb r6, [r1]
	cmp r6, #1
	bne _022470BA
	ldrsh r6, [r2, r5]
	add r6, r6, r4
	strh r6, [r2, #4]
_022470BA:
	add r3, r3, #1
	add r1, r1, #1
	add r2, r2, #2
	cmp r3, #3
	blt _022470AE
_022470C4:
	add r7, r7, #1
	add r0, #0xc
	cmp r7, #4
	blt _02247090
_022470CC:
	b _0224714C
_022470CE:
	ldr r5, [sp, #8]
	mov r7, #0
	mov r6, #4
_022470D4:
	ldrb r0, [r5, #0xa]
	bl sub_02095734
	cmp r0, #0x14
	blt _02247104
	mov r0, #2
	ldrsh r0, [r5, r0]
	mov r2, #0
	add r1, r5, #0
	add r0, r0, r4
	strh r0, [r5, #2]
	add r0, sp, #0x3c
	add r0, #2
_022470EE:
	ldrb r3, [r0]
	cmp r3, #1
	bne _022470FA
	ldrsh r3, [r1, r6]
	add r3, r3, r4
	strh r3, [r1, #4]
_022470FA:
	add r2, r2, #1
	add r0, r0, #1
	add r1, r1, #2
	cmp r2, #3
	blt _022470EE
_02247104:
	add r7, r7, #1
	add r5, #0xc
	cmp r7, #4
	blt _022470D4
	b _0224714C
_0224710E:
	ldr r0, [sp, #8]
	mov r7, #0
	mov r5, #4
_02247114:
	ldr r1, [sp, #0x18]
	ldrb r2, [r1, #2]
	ldrb r1, [r0, #0xa]
	cmp r2, r1
	bne _02247144
	mov r1, #2
	ldrsh r1, [r0, r1]
	mov r3, #0
	add r2, r0, #0
	add r1, r1, r4
	strh r1, [r0, #2]
	add r1, sp, #0x3c
	add r1, #2
_0224712E:
	ldrb r6, [r1]
	cmp r6, #1
	bne _0224713A
	ldrsh r6, [r2, r5]
	add r6, r6, r4
	strh r6, [r2, #4]
_0224713A:
	add r3, r3, #1
	add r1, r1, #1
	add r2, r2, #2
	cmp r3, #3
	blt _0224712E
_02247144:
	add r7, r7, #1
	add r0, #0xc
	cmp r7, #4
	blt _02247114
_0224714C:
	ldr r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xa5
	bge _0224715E
	b _02246FDA
_0224715E:
	add r4, sp, #0x34
	mov r5, #0
	add r4, #2
_02247164:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl sub_02094E98
	strh r0, [r4]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02247164
	mov r5, #0
	add r4, sp, #0x30
_0224717A:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl sub_02094E98
	strh r0, [r4]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #3
	blt _0224717A
	ldr r0, [sp, #8]
	mov r7, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _022471A2
	ldr r1, [sp, #8]
_02247198:
	add r1, #0xc
	ldrh r0, [r1]
	add r7, r7, #1
	cmp r0, #0
	beq _02247198
_022471A2:
	mov r2, #0xc
	add r1, r7, #0
	ldr r0, [sp, #8]
	mul r1, r2
	add r1, r0, r1
	mov r0, #2
	add r4, r7, #1
	ldrsh r1, [r1, r0]
	cmp r4, #4
	bge _022471F6
	ldr r0, [sp, #8]
	mul r2, r4
	add r2, r0, r2
	add r0, sp, #0x34
	lsl r3, r4, #1
	add r0, #2
	add r3, r0, r3
_022471C4:
	ldrh r0, [r2]
	cmp r0, #0
	beq _022471EC
	mov r0, #2
	ldrsh r0, [r2, r0]
	cmp r0, r1
	bgt _022471E8
	cmp r0, r1
	bne _022471EC
	ldrh r5, [r3]
	lsl r6, r7, #1
	str r5, [sp, #0x28]
	add r5, sp, #0x34
	add r5, #2
	ldrh r6, [r5, r6]
	ldr r5, [sp, #0x28]
	cmp r5, r6
	bls _022471EC
_022471E8:
	add r7, r4, #0
	add r1, r0, #0
_022471EC:
	add r4, r4, #1
	add r2, #0xc
	add r3, r3, #2
	cmp r4, #4
	blt _022471C4
_022471F6:
	ldr r0, [sp, #4]
	ldr r5, [r0, #0]
	ldr r0, _02247270 ; =0x00000171
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0224728A
	mov r0, #0xc
	add r6, r7, #0
	mul r6, r0
	ldr r0, [sp, #8]
	mov r2, #0
	add r4, r0, r6
	add r3, r2, #0
	mov r0, #4
_02247212:
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _0224721A
	add r2, r2, #1
_0224721A:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #3
	blt _02247212
	cmp r2, #3
	bne _0224728A
	ldr r1, _02247274 ; =0x02253BB8
	add r0, sp, #0x2c
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	add r0, r5, #0
	bl sub_02094E98
	ldr r1, [sp, #4]
	mov r2, #0x12
	lsl r0, r0, #0x18
	ldr r1, [r1, #0]
	lsl r2, r2, #4
	ldrb r4, [r1, r2]
	add r3, sp, #0x2c
	lsr r0, r0, #0x18
	ldrb r3, [r3, r4]
	cmp r0, r3
	bge _0224728A
	add r2, r2, #3
	ldrb r2, [r1, r2]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r2, r1, r2
	ldr r1, _02247278 ; =0x0000023E
	b _0224727C
	; .align 2, 0
_02247264: .word 0x02253C30
_02247268: .word 0x0000011F
_0224726C: .word 0x02253BBC
_02247270: .word 0x00000171
_02247274: .word 0x02253BB8
_02247278: .word 0x0000023E
_0224727C:
	add r0, r0, #4
	ldrb r1, [r2, r1]
	add r0, r0, r6
	lsl r2, r1, #1
	ldrsh r1, [r0, r2]
	sub r1, #0x64
	strh r1, [r0, r2]
_0224728A:
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0xc
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r3, sp, #0x30
	add r0, r0, r1
	mov r1, #4
	ldrsh r5, [r0, r1]
	mov ip, r0
	mov r4, #1
	add r2, r0, #2
	add r3, #2
_022472A6:
	mov r0, #4
	ldrsh r6, [r2, r0]
	cmp r6, r5
	bgt _022472C0
	cmp r6, r5
	bne _022472C4
	ldr r0, [sp, #0x24]
	ldrh r7, [r3]
	lsl r1, r0, #1
	add r0, sp, #0x30
	ldrh r0, [r0, r1]
	cmp r7, r0
	bls _022472C4
_022472C0:
	str r4, [sp, #0x24]
	add r5, r6, #0
_022472C4:
	add r4, r4, #1
	add r2, r2, #2
	add r3, r3, #2
	cmp r4, #3
	blt _022472A6
	mov r0, ip
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x24]
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	cmp r0, #0
	bne _022472E8
	bl sub_02022974
_022472E8:
	ldr r0, [sp, #0x58]
	ldrb r0, [r0]
	cmp r0, #3
	blo _022472F4
	bl sub_02022974
_022472F4:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_02246F9C

	thumb_func_start ov17_022472F8
ov17_022472F8: ; 0x022472F8
	ldrb r0, [r0]
	cmp r0, #4
	bne _02247302
	mov r0, #1
	bx lr
_02247302:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_022472F8

	thumb_func_start ov17_02247308
ov17_02247308: ; 0x02247308
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0xe0
	ldr r0, [r0, #0]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	beq _0224731A
	mov r0, #1
	bx lr
_0224731A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02247308

	thumb_func_start ov17_02247320
ov17_02247320: ; 0x02247320
	mov r1, #0
_02247322:
	ldrb r0, [r2, #0xa]
	cmp r0, #5
	bne _0224732C
	mov r0, #1
	bx lr
_0224732C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247322
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247320

	thumb_func_start ov17_02247338
ov17_02247338: ; 0x02247338
	mov r1, #0
_0224733A:
	ldrb r0, [r2, #0xa]
	cmp r0, #9
	bne _02247344
	mov r0, #1
	bx lr
_02247344:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _0224733A
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247338

	thumb_func_start ov17_02247350
ov17_02247350: ; 0x02247350
	mov r1, #0
_02247352:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xc
	bne _0224735C
	mov r0, #1
	bx lr
_0224735C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247352
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247350

	thumb_func_start ov17_02247368
ov17_02247368: ; 0x02247368
	mov r1, #0
_0224736A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xf
	bne _02247374
	mov r0, #1
	bx lr
_02247374:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _0224736A
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247368

	thumb_func_start ov17_02247380
ov17_02247380: ; 0x02247380
	mov r1, #0
_02247382:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x11
	bne _0224738C
	mov r0, #1
	bx lr
_0224738C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247382
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247380

	thumb_func_start ov17_02247398
ov17_02247398: ; 0x02247398
	mov r1, #0
_0224739A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x12
	bne _022473A4
	mov r0, #1
	bx lr
_022473A4:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _0224739A
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247398

	thumb_func_start ov17_022473B0
ov17_022473B0: ; 0x022473B0
	mov r1, #0
_022473B2:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x13
	bne _022473BC
	mov r0, #1
	bx lr
_022473BC:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _022473B2
	mov r0, #0
	bx lr
	thumb_func_end ov17_022473B0

	thumb_func_start ov17_022473C8
ov17_022473C8: ; 0x022473C8
	mov r1, #0
_022473CA:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x14
	bne _022473D4
	mov r0, #1
	bx lr
_022473D4:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _022473CA
	mov r0, #0
	bx lr
	thumb_func_end ov17_022473C8

	thumb_func_start ov17_022473E0
ov17_022473E0: ; 0x022473E0
	mov r1, #0
_022473E2:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x15
	bne _022473EC
	mov r0, #1
	bx lr
_022473EC:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _022473E2
	mov r0, #0
	bx lr
	thumb_func_end ov17_022473E0

	thumb_func_start ov17_022473F8
ov17_022473F8: ; 0x022473F8
	push {r3, r4}
	lsl r1, r1, #1
	add r2, r0, r1
	mov r1, #0x12
	ldrsh r3, [r2, r1]
	mov r4, #0
_02247404:
	ldrsh r2, [r0, r1]
	cmp r3, r2
	bgt _02247412
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #4
	blt _02247404
_02247412:
	cmp r4, #4
	bne _0224741C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0224741C:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_022473F8

	thumb_func_start ov17_02247424
ov17_02247424: ; 0x02247424
	push {r3, r4}
	ldrb r2, [r0]
	cmp r2, #4
	bne _0224744E
	lsl r1, r1, #1
	add r2, r0, r1
	mov r1, #0x12
	ldrsh r3, [r2, r1]
	mov r4, #0
_02247436:
	ldrsh r2, [r0, r1]
	cmp r3, r2
	bgt _02247444
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #4
	blt _02247436
_02247444:
	cmp r4, #4
	bne _0224744E
	mov r0, #1
	pop {r3, r4}
	bx lr
_0224744E:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02247424

	thumb_func_start ov17_02247454
ov17_02247454: ; 0x02247454
	ldr r3, [sp]
	mov r1, #0
_02247458:
	ldrb r0, [r2, #0xa]
	cmp r0, #4
	bne _02247468
	ldrb r0, [r2, #0xb]
	cmp r3, r0
	bne _02247468
	mov r0, #1
	bx lr
_02247468:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247458
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247454

	thumb_func_start ov17_02247474
ov17_02247474: ; 0x02247474
	ldr r3, [sp]
	mov r1, #0
_02247478:
	ldrb r0, [r2, #0xb]
	cmp r3, r0
	bne _02247482
	mov r0, #1
	bx lr
_02247482:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247478
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02247474

	thumb_func_start ov17_02247490
ov17_02247490: ; 0x02247490
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	mov r4, #0
_02247496:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022474A4
	add r4, r4, #1
	add r2, #0xc
	cmp r4, #4
	blt _02247496
_022474A4:
	cmp r4, #4
	bne _022474AE
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022474AE:
	mov r5, #0
	add r6, r5, #0
	mov r2, #1
	mov r1, #0x22
_022474B6:
	add r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _022474C2
	strb r2, [r3, r6]
	add r5, r5, #1
_022474C2:
	add r6, r6, #1
	cmp r6, #3
	blt _022474B6
	cmp r5, #0
	ble _022474D2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022474D2:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247490

	thumb_func_start ov17_022474D8
ov17_022474D8: ; 0x022474D8
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	mov r4, #0
_022474DE:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022474EC
	add r4, r4, #1
	add r2, #0xc
	cmp r4, #4
	blt _022474DE
_022474EC:
	cmp r4, #4
	bne _022474F6
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022474F6:
	mov r5, #0
	add r6, r5, #0
	mov r2, #1
	mov r1, #0x22
_022474FE:
	add r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x1e
	bne _0224750A
	add r5, r5, #1
	strb r2, [r3, r6]
_0224750A:
	add r6, r6, #1
	cmp r6, #3
	blt _022474FE
	cmp r5, #0
	ble _0224751A
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0224751A:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022474D8

	thumb_func_start ov17_02247520
ov17_02247520: ; 0x02247520
	mov r1, #0
_02247522:
	ldrb r0, [r2, #0xa]
	cmp r0, #8
	bne _0224752C
	mov r0, #1
	bx lr
_0224752C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247522
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247520

	thumb_func_start ov17_02247538
ov17_02247538: ; 0x02247538
	mov r1, #0
_0224753A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xd
	bne _02247544
	mov r0, #1
	bx lr
_02247544:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _0224753A
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247538

	thumb_func_start ov17_02247550
ov17_02247550: ; 0x02247550
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_0224755A:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _02247566
	add r6, r6, #1
	strb r2, [r3, r5]
_02247566:
	add r5, r5, #1
	cmp r5, #3
	blt _0224755A
	cmp r6, #0
	ble _02247576
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02247576:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247550

	thumb_func_start ov17_0224757C
ov17_0224757C: ; 0x0224757C
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_02247586:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x1e
	bne _02247592
	add r6, r6, #1
	strb r2, [r3, r5]
_02247592:
	add r5, r5, #1
	cmp r5, #3
	blt _02247586
	cmp r6, #0
	ble _022475A2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022475A2:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_0224757C

	thumb_func_start ov17_022475A8
ov17_022475A8: ; 0x022475A8
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_022475B2:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0xa
	bgt _022475BE
	add r6, r6, #1
	strb r2, [r3, r5]
_022475BE:
	add r5, r5, #1
	cmp r5, #3
	blt _022475B2
	cmp r6, #0
	ble _022475CE
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022475CE:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022475A8

	thumb_func_start ov17_022475D4
ov17_022475D4: ; 0x022475D4
	push {r3, r4}
	mov r4, #0
	mov r1, #0x22
_022475DA:
	add r2, r0, r4
	ldrsb r2, [r2, r1]
	cmp r2, #0x14
	bge _022475E8
	mov r0, #0
	pop {r3, r4}
	bx lr
_022475E8:
	add r4, r4, #1
	cmp r4, #3
	blt _022475DA
	mov r1, #0
	mov r0, #1
_022475F2:
	strb r0, [r3, r1]
	add r1, r1, #1
	cmp r1, #3
	blt _022475F2
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_022475D4

	thumb_func_start ov17_02247600
ov17_02247600: ; 0x02247600
	push {r3, r4}
	mov r4, #0
	mov r1, #0x22
_02247606:
	add r2, r0, r4
	ldrsb r2, [r2, r1]
	cmp r2, #0x14
	ble _02247614
	mov r0, #0
	pop {r3, r4}
	bx lr
_02247614:
	add r4, r4, #1
	cmp r4, #3
	blt _02247606
	mov r1, #0
	mov r0, #1
_0224761E:
	strb r0, [r3, r1]
	add r1, r1, #1
	cmp r1, #3
	blt _0224761E
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02247600

	thumb_func_start ov17_0224762C
ov17_0224762C: ; 0x0224762C
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_02247636:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x14
	bgt _02247642
	strb r2, [r3, r5]
	add r6, r6, #1
_02247642:
	add r5, r5, #1
	cmp r5, #3
	blt _02247636
	cmp r6, #1
	bne _02247652
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02247652:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_0224762C

	thumb_func_start ov17_02247658
ov17_02247658: ; 0x02247658
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_02247662:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _0224766E
	strb r2, [r3, r5]
	add r6, r6, #1
_0224766E:
	add r5, r5, #1
	cmp r5, #3
	blt _02247662
	cmp r6, #2
	bne _0224767E
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0224767E:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247658

	thumb_func_start ov17_02247684
ov17_02247684: ; 0x02247684
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_0224768E:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0
	bne _0224769A
	strb r2, [r3, r5]
	add r6, r6, #1
_0224769A:
	add r5, r5, #1
	cmp r5, #3
	blt _0224768E
	cmp r6, #1
	bne _022476AA
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022476AA:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247684

	thumb_func_start ov17_022476B0
ov17_022476B0: ; 0x022476B0
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	mov r4, #0
_022476B6:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022476C4
	add r4, r4, #1
	add r2, #0xc
	cmp r4, #4
	blt _022476B6
_022476C4:
	cmp r4, #4
	bne _022476CE
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022476CE:
	mov r5, #0
	add r6, r5, #0
	mov r2, #1
	mov r1, #0x22
_022476D6:
	add r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _022476E2
	strb r2, [r3, r6]
	add r5, r5, #1
_022476E2:
	add r6, r6, #1
	cmp r6, #3
	blt _022476D6
	cmp r5, #0
	ble _022476F2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022476F2:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022476B0

	.rodata


	.global Unk_ov17_02253BB8
Unk_ov17_02253BB8: ; 0x02253BB8
	.incbin "incbin/overlay17_rodata.bin", 0xE2C, 0xE30 - 0xE2C

	.global Unk_ov17_02253BBC
Unk_ov17_02253BBC: ; 0x02253BBC
	.incbin "incbin/overlay17_rodata.bin", 0xE30, 0xEA4 - 0xE30

	.global Unk_ov17_02253C30
Unk_ov17_02253C30: ; 0x02253C30
	.incbin "incbin/overlay17_rodata.bin", 0xEA4, 0x7BC

