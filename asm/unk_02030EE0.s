	.include "macros/function.inc"
	.include "include/unk_02030EE0.inc"

	

	.text


	thumb_func_start sub_02030EE0
sub_02030EE0: ; 0x02030EE0
	ldr r1, _02030EEC ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02030EF0 ; =0x00001310
	str r0, [r2, r1]
	bx lr
	nop
_02030EEC: .word 0x021C07A8
_02030EF0: .word 0x00001310
	thumb_func_end sub_02030EE0

	thumb_func_start sub_02030EF4
sub_02030EF4: ; 0x02030EF4
	ldr r1, _02030F08 ; =0x021C07A8
	ldr r3, [r1, #4]
	ldr r1, _02030F0C ; =0x00001310
	ldr r2, [r3, r1]
	sub r2, #9
	cmp r2, #1
	bls _02030F06
	add r1, #0x20
	str r0, [r3, r1]
_02030F06:
	bx lr
	; .align 2, 0
_02030F08: .word 0x021C07A8
_02030F0C: .word 0x00001310
	thumb_func_end sub_02030EF4

	thumb_func_start sub_02030F10
sub_02030F10: ; 0x02030F10
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r1, _02030F38 ; =0x021C07A8
	ldr r0, _02030F3C ; =sub_02030F40
	ldr r1, [r1, #4]
	bl sub_020CEDC8
	cmp r0, #2
	beq _02030F34
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0
	pop {r3, pc}
_02030F34:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02030F38: .word 0x021C07A8
_02030F3C: .word sub_02030F40
	thumb_func_end sub_02030F10

	thumb_func_start sub_02030F40
sub_02030F40: ; 0x02030F40
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02030F54
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r3, pc}
_02030F54:
	bl sub_02030F64
	cmp r0, #0
	bne _02030F62
	mov r0, #9
	bl sub_02030EE0
_02030F62:
	pop {r3, pc}
	thumb_func_end sub_02030F40

	thumb_func_start sub_02030F64
sub_02030F64: ; 0x02030F64
	push {r4, lr}
	ldr r0, _02030FC0 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02030FC4 ; =0x00001310
	ldr r0, [r1, r0]
	sub r0, r0, #4
	cmp r0, #2
	bhi _02030F78
	mov r0, #1
	pop {r4, pc}
_02030F78:
	bl sub_020CE3F4
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #4
	bl sub_020C2C1C
	mov r0, #0x66
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, r0
	mov r1, #4
	bl sub_020C2C54
	ldr r0, _02030FC8 ; =sub_02030FD0
	bl sub_020CEF50
	cmp r0, #2
	beq _02030FAC
	bl sub_02030EF4
	mov r0, #0
	pop {r4, pc}
_02030FAC:
	ldr r2, _02030FC0 ; =0x021C07A8
	ldr r1, _02030FCC ; =0x0000132C
	ldr r0, [r2, #4]
	mov r3, #0
	strh r3, [r0, r1]
	ldr r2, [r2, #4]
	mov r0, #1
	add r1, r1, #2
	strh r0, [r2, r1]
	pop {r4, pc}
	; .align 2, 0
_02030FC0: .word 0x021C07A8
_02030FC4: .word 0x00001310
_02030FC8: .word sub_02030FD0
_02030FCC: .word 0x0000132C
	thumb_func_end sub_02030F64

	thumb_func_start sub_02030FD0
sub_02030FD0: ; 0x02030FD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x10]
	mov r1, #1
	lsl r1, r0
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _02030FF0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, r5, r6, pc}
_02030FF0:
	ldrh r0, [r5, #8]
	cmp r0, #7
	bgt _02031008
	bge _02031022
	cmp r0, #2
	bgt _020310C0
	cmp r0, #0
	blt _020310C0
	beq _020310B2
	cmp r0, #2
	beq _02031014
	pop {r4, r5, r6, pc}
_02031008:
	cmp r0, #9
	bgt _02031010
	beq _02031094
	pop {r4, r5, r6, pc}
_02031010:
	cmp r0, #0x1a
	pop {r4, r5, r6, pc}
_02031014:
	ldr r0, _020310C4 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _020310C8 ; =0x00001345
	ldrb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, r0]
	pop {r4, r5, r6, pc}
_02031022:
	ldr r0, _020310C4 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _020310CC ; =0x00001343
	ldrb r1, [r2, r0]
	cmp r1, #1
	beq _02031060
	sub r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #1
	beq _02031060
	bl sub_02031900
	ldr r1, _020310C4 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _020310D0 ; =0x00001334
	ldrb r1, [r2, r1]
	cmp r0, r1
	bge _02031060
	bl sub_0203895C
	ldrb r1, [r5, #0x14]
	cmp r1, r0
	bne _02031060
	add r1, r5, #0
	ldr r0, _020310D4 ; =0x02100A18
	add r1, #0x15
	mov r2, #3
	bl sub_020D5190
	cmp r0, #0
	beq _02031078
_02031060:
	ldrh r1, [r5, #0x10]
	mov r0, #0
	bl sub_020CF2E8
	cmp r0, #2
	beq _020310C0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, r5, r6, pc}
_02031078:
	ldr r1, _020310C4 ; =0x021C07A8
	ldr r0, _020310D8 ; =0x0000132E
	ldr r3, [r1, #4]
	ldrh r2, [r3, r0]
	orr r2, r4
	strh r2, [r3, r0]
	ldr r1, [r1, #4]
	sub r0, r0, #6
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _020310C0
	ldrh r0, [r5, #0x10]
	blx r1
	pop {r4, r5, r6, pc}
_02031094:
	ldr r2, _020310C4 ; =0x021C07A8
	ldr r1, _020310D8 ; =0x0000132E
	ldr r0, [r2, #4]
	mvn r3, r4
	ldrh r6, [r0, r1]
	and r3, r6
	strh r3, [r0, r1]
	ldr r0, [r2, #4]
	sub r1, #0xa
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _020310C0
	ldrh r0, [r5, #0x10]
	blx r1
	pop {r4, r5, r6, pc}
_020310B2:
	bl sub_020310DC
	cmp r0, #0
	bne _020310C0
	mov r0, #9
	bl sub_02030EE0
_020310C0:
	pop {r4, r5, r6, pc}
	nop
_020310C4: .word 0x021C07A8
_020310C8: .word 0x00001345
_020310CC: .word 0x00001343
_020310D0: .word 0x00001334
_020310D4: .word 0x02100A18
_020310D8: .word 0x0000132E
	thumb_func_end sub_02030FD0

	thumb_func_start sub_020310DC
sub_020310DC: ; 0x020310DC
	push {r4, lr}
	sub sp, #8
	ldr r0, _02031138 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _0203113C ; =0x00001310
	ldr r0, [r1, r0]
	sub r0, r0, #4
	cmp r0, #2
	bhi _020310F4
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_020310F4:
	mov r0, #4
	bl sub_02030EE0
	ldr r0, _02031138 ; =0x021C07A8
	ldr r2, _02031140 ; =0x00001304
	ldr r4, [r0, #4]
	ldr r3, _02031144 ; =0x00001020
	ldr r0, [r4, r2]
	add r2, r2, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, r2]
	add r1, r4, r3
	lsl r2, r2, #0x10
	sub r3, #0xe0
	ldr r0, _02031148 ; =sub_0203114C
	lsr r2, r2, #0x10
	add r3, r4, r3
	bl sub_020CF5E4
	cmp r0, #2
	beq _02031130
	bl sub_02030EF4
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02031130:
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	nop
_02031138: .word 0x021C07A8
_0203113C: .word 0x00001310
_02031140: .word 0x00001304
_02031144: .word 0x00001020
_02031148: .word sub_0203114C
	thumb_func_end sub_020310DC

	thumb_func_start sub_0203114C
sub_0203114C: ; 0x0203114C
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02031162
	add r0, r1, #0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r3, pc}
_02031162:
	ldrh r0, [r0, #4]
	sub r0, #0xa
	cmp r0, #3
	bhi _0203119C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02031176: ; jump table
	.short _0203117E - _02031176 - 2 ; case 0
	.short _0203119C - _02031176 - 2 ; case 1
	.short _0203119C - _02031176 - 2 ; case 2
	.short _0203119C - _02031176 - 2 ; case 3
_0203117E:
	ldr r0, _020311A0 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _020311A4 ; =0x00001314
	ldr r1, [r2, r0]
	cmp r1, #2
	bne _02031196
	sub r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #4
	beq _02031196
	cmp r0, #6
	beq _0203119C
_02031196:
	mov r0, #4
	bl sub_02030EE0
_0203119C:
	pop {r3, pc}
	nop
_020311A0: .word 0x021C07A8
_020311A4: .word 0x00001314
	thumb_func_end sub_0203114C

	thumb_func_start sub_020311A8
sub_020311A8: ; 0x020311A8
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _020311C8 ; =sub_020311CC
	bl sub_020CF77C
	cmp r0, #2
	beq _020311C2
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_020311C2:
	mov r0, #1
	pop {r3, pc}
	nop
_020311C8: .word sub_020311CC
	thumb_func_end sub_020311A8

	thumb_func_start sub_020311CC
sub_020311CC: ; 0x020311CC
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _020311DE
	bl sub_02030EF4
	bl sub_02031ECC
	pop {r3, pc}
_020311DE:
	bl sub_020311EC
	cmp r0, #0
	bne _020311EA
	bl sub_02031ECC
_020311EA:
	pop {r3, pc}
	thumb_func_end sub_020311CC

	thumb_func_start sub_020311EC
sub_020311EC: ; 0x020311EC
	push {r3, lr}
	ldr r0, _02031204 ; =sub_02031208
	bl sub_020CEF60
	cmp r0, #2
	beq _02031200
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_02031200:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02031204: .word sub_02031208
	thumb_func_end sub_020311EC

	thumb_func_start sub_02031208
sub_02031208: ; 0x02031208
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02031216
	bl sub_02030EF4
	pop {r3, pc}
_02031216:
	mov r0, #1
	bl sub_02030EE0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02031208

	thumb_func_start sub_02031220
sub_02031220: ; 0x02031220
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, _020312AC ; =0x021C07A8
	add r5, r0, #0
	add r4, r1, #0
	mov r3, #2
	ldr r0, [r2, #4]
	ldr r1, _020312B0 ; =0x00001308
	lsl r3, r3, #8
	str r3, [r0, r1]
	ldr r2, [r2, #4]
	mov r0, #0x40
	sub r1, r1, #4
	str r0, [r2, r1]
	mov r0, #2
	bl sub_02030EE0
	ldr r2, _020312AC ; =0x021C07A8
	ldr r1, _020312B4 ; =0x00001256
	ldr r3, [r2, #4]
	mov r0, #1
	strh r0, [r3, r1]
	add r0, r1, #0
	ldrh r6, [r4, #4]
	ldr r3, [r2, #4]
	add r0, #0x96
	strh r6, [r3, r0]
	add r0, r1, #0
	ldrh r6, [r4, #2]
	ldr r3, [r2, #4]
	add r0, #0x94
	strh r6, [r3, r0]
	add r0, r1, #0
	ldrh r4, [r4]
	ldr r3, [r2, #4]
	add r0, #0x92
	strh r4, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2, #4]
	add r0, #0xbe
	str r5, [r3, r0]
	add r3, r1, #0
	ldr r4, [r2, #4]
	mov r0, #0
	add r3, #0xaa
	str r0, [r4, r3]
	add r3, r1, #0
	ldr r4, [r2, #4]
	add r3, #0xb6
	strh r7, [r4, r3]
	add r3, r1, #0
	ldr r4, [r2, #4]
	add r3, #0x8e
	strh r0, [r4, r3]
	ldr r2, [r2, #4]
	add r1, #0xb8
	mov r0, #1
	strh r0, [r2, r1]
	bl sub_02031320
	cmp r0, #0
	bne _020312A6
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020312A6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020312AC: .word 0x021C07A8
_020312B0: .word 0x00001308
_020312B4: .word 0x00001256
	thumb_func_end sub_02031220

	thumb_func_start sub_020312B8
sub_020312B8: ; 0x020312B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02030EE0
	ldr r1, _0203131C ; =0x021C07A8
	mov r0, #0x13
	ldr r2, [r1, #4]
	lsl r0, r0, #8
	str r5, [r2, r0]
	add r2, r0, #0
	ldr r3, [r1, #4]
	add r2, #0xc
	strh r6, [r3, r2]
	add r3, r0, #0
	ldr r5, [r1, #4]
	mov r2, #0
	sub r3, #0x1c
	strh r2, [r5, r3]
	add r3, r0, #0
	ldr r5, [r1, #4]
	add r3, #0xe
	strh r2, [r5, r3]
	add r2, r0, #0
	ldrh r5, [r4, #4]
	ldr r3, [r1, #4]
	sub r2, #0x14
	strh r5, [r3, r2]
	add r2, r0, #0
	ldrh r5, [r4, #2]
	ldr r3, [r1, #4]
	sub r2, #0x16
	strh r5, [r3, r2]
	ldrh r2, [r4]
	ldr r1, [r1, #4]
	sub r0, #0x18
	strh r2, [r1, r0]
	bl sub_02031320
	cmp r0, #0
	bne _02031318
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0
	pop {r4, r5, r6, pc}
_02031318:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203131C: .word 0x021C07A8
	thumb_func_end sub_020312B8

	thumb_func_start sub_02031320
sub_02031320: ; 0x02031320
	push {r3, r4, r5, r6, r7, lr}
	bl sub_020CE7F4
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r5, r0
	bne _02031340
	mov r0, #3
	bl sub_02030EF4
	mov r0, #1
	bl sub_02038AE0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02031340:
	cmp r5, #0
	bne _02031354
	mov r0, #0x16
	bl sub_02030EF4
	mov r0, #1
	bl sub_02038AE0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02031354:
	ldr r1, _020313D4 ; =0x021C07A8
	ldr r0, _020313D8 ; =0x0000130C
	ldr r3, [r1, #4]
	ldrh r2, [r3, r0]
	cmp r2, #0
	bne _02031394
	add r7, r0, #0
	mov r3, #1
	add r2, r3, #0
	sub r7, #0x28
	sub r0, #0x28
_0203136A:
	ldr r4, [r1, #4]
	ldr r6, _020313DC ; =0x000012E4
	ldrh r6, [r4, r6]
	add r6, r6, #1
	strh r6, [r4, r7]
	ldr r4, [r1, #4]
	ldrh r6, [r4, r0]
	cmp r6, #0x10
	bls _02031380
	ldr r6, _020313DC ; =0x000012E4
	strh r3, [r4, r6]
_02031380:
	ldr r6, [r1, #4]
	ldr r4, _020313DC ; =0x000012E4
	ldrh r4, [r6, r4]
	add r6, r2, #0
	sub r4, r4, #1
	lsl r6, r4
	add r4, r5, #0
	tst r4, r6
	bne _02031398
	b _0203136A
_02031394:
	sub r0, #0x28
	strh r2, [r3, r0]
_02031398:
	bl sub_020CE934
	mov r1, #3
	bl sub_020E1F6C
	ldr r2, _020313D4 ; =0x021C07A8
	ldr r1, _020313E0 ; =0x000012E6
	ldr r3, [r2, #4]
	strh r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2, #4]
	sub r0, #0xc6
	add r4, r3, r0
	sub r0, r1, #6
	str r4, [r3, r0]
	ldr r2, [r2, #4]
	sub r1, r1, #6
	ldr r0, _020313E4 ; =sub_020313E8
	add r1, r2, r1
	bl sub_020CEFA0
	cmp r0, #2
	beq _020313CE
	bl sub_02030EF4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020313CE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020313D4: .word 0x021C07A8
_020313D8: .word 0x0000130C
_020313DC: .word 0x000012E4
_020313E0: .word 0x000012E6
_020313E4: .word sub_020313E8
	thumb_func_end sub_02031320

	thumb_func_start sub_020313E8
sub_020313E8: ; 0x020313E8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020313FE
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020313FE:
	ldr r0, _020314B0 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _020314B4 ; =0x00001310
	ldr r1, [r2, r0]
	cmp r1, #2
	beq _02031420
	mov r1, #0
	sub r0, r0, #2
	strh r1, [r2, r0]
	bl sub_020314E4
	cmp r0, #0
	bne _020314AC
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_02031420:
	ldrh r1, [r4, #8]
	cmp r1, #3
	beq _020314AC
	cmp r1, #4
	beq _0203149E
	cmp r1, #5
	bne _0203149E
	sub r0, #0xf0
	add r0, r2, r0
	mov r1, #0xc0
	bl sub_020C2C1C
	ldr r0, _020314B0 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020314B8 ; =0x00001320
	ldr r2, [r1, r0]
	cmp r2, #0
	beq _02031454
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _02031454
	add r1, r4, #0
	add r1, #0x48
	ldrb r1, [r1, #4]
	ldr r0, [r4, #0x3c]
	blx r2
_02031454:
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _0203149E
	ldr r0, _020314B0 ; =0x021C07A8
	ldr r2, [r4, #0x3c]
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	cmp r2, r1
	bne _0203149E
	add r4, #0x43
	ldrb r2, [r4]
	mov r1, #3
	and r1, r2
	cmp r1, #1
	bne _0203149E
	mov r1, #0x13
	lsl r1, r1, #8
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _02031482
	sub r1, #0xe0
	add r0, r0, r1
	blx r2
_02031482:
	ldr r0, _020314B0 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020314BC ; =0x0000130E
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0203149E
	bl sub_020314E4
	cmp r0, #0
	bne _020314AC
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_0203149E:
	bl sub_02031320
	cmp r0, #0
	bne _020314AC
	mov r0, #9
	bl sub_02030EE0
_020314AC:
	pop {r4, pc}
	nop
_020314B0: .word 0x021C07A8
_020314B4: .word 0x00001310
_020314B8: .word 0x00001320
_020314BC: .word 0x0000130E
	thumb_func_end sub_020313E8

	thumb_func_start sub_020314C0
sub_020314C0: ; 0x020314C0
	push {r3, lr}
	ldr r0, _020314DC ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020314E0 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _020314D2
	mov r0, #0
	pop {r3, pc}
_020314D2:
	mov r0, #3
	bl sub_02030EE0
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020314DC: .word 0x021C07A8
_020314E0: .word 0x00001310
	thumb_func_end sub_020314C0

	thumb_func_start sub_020314E4
sub_020314E4: ; 0x020314E4
	push {r3, lr}
	ldr r0, _020314FC ; =sub_02031500
	bl sub_020CF1DC
	cmp r0, #2
	beq _020314F8
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_020314F8:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020314FC: .word sub_02031500
	thumb_func_end sub_020314E4

	thumb_func_start sub_02031500
sub_02031500: ; 0x02031500
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0203150E
	bl sub_02030EF4
	pop {r3, pc}
_0203150E:
	mov r0, #1
	bl sub_02030EE0
	ldr r0, _02031530 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031534 ; =0x0000130E
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0203152E
	bl sub_02031538
	cmp r0, #0
	bne _0203152E
	mov r0, #9
	bl sub_02030EE0
_0203152E:
	pop {r3, pc}
	; .align 2, 0
_02031530: .word 0x021C07A8
_02031534: .word 0x0000130E
	thumb_func_end sub_02031500

	thumb_func_start sub_02031538
sub_02031538: ; 0x02031538
	push {lr}
	sub sp, #0x24
	ldr r0, _02031594 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031598 ; =0x00001310
	ldr r0, [r1, r0]
	sub r0, r0, #4
	cmp r0, #2
	bhi _02031550
	add sp, #0x24
	mov r0, #1
	pop {pc}
_02031550:
	mov r0, #3
	bl sub_02030EE0
	add r1, sp, #4
	ldr r0, _0203159C ; =0x02100A18
	add r1, #1
	mov r2, #3
	bl sub_020C4DB0
	bl sub_0203895C
	add r1, sp, #4
	strb r0, [r1]
	mov r0, #0
	str r0, [sp]
	ldr r1, _02031594 ; =0x021C07A8
	ldr r0, _020315A0 ; =sub_020315A8
	ldr r2, [r1, #4]
	ldr r1, _020315A4 ; =0x00001220
	mov r3, #1
	add r1, r2, r1
	add r2, sp, #4
	bl sub_020CF21C
	cmp r0, #2
	beq _0203158E
	bl sub_02030EF4
	add sp, #0x24
	mov r0, #0
	pop {pc}
_0203158E:
	mov r0, #1
	add sp, #0x24
	pop {pc}
	; .align 2, 0
_02031594: .word 0x021C07A8
_02031598: .word 0x00001310
_0203159C: .word 0x02100A18
_020315A0: .word sub_020315A8
_020315A4: .word 0x00001220
	thumb_func_end sub_02031538

	thumb_func_start sub_020315A8
sub_020315A8: ; 0x020315A8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020315F4
	bl sub_02030EF4
	ldrh r0, [r4, #2]
	cmp r0, #0xc
	bne _020315C4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020315C4:
	cmp r0, #0xb
	bne _020315D0
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020315D0:
	cmp r0, #1
	bne _020315EC
	bl sub_02038938
	cmp r0, #0
	beq _020315E4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020315E4:
	mov r0, #8
	bl sub_02030EE0
	pop {r4, pc}
_020315EC:
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020315F4:
	ldrh r0, [r4, #8]
	cmp r0, #8
	beq _0203165A
	cmp r0, #7
	bne _0203163A
	ldr r0, _0203165C ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031660 ; =0x00001335
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02031618
	mov r0, #0x14
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_02031618:
	mov r0, #4
	bl sub_02030EE0
	bl sub_02031668
	cmp r0, #0
	bne _0203162E
	mov r0, #3
	bl sub_02030EE0
	pop {r4, pc}
_0203162E:
	ldr r0, _0203165C ; =0x021C07A8
	ldrh r2, [r4, #0xa]
	ldr r1, [r0, #4]
	ldr r0, _02031664 ; =0x0000132C
	strh r2, [r1, r0]
	pop {r4, pc}
_0203163A:
	cmp r0, #6
	beq _0203165A
	cmp r0, #9
	bne _02031650
	mov r0, #0x14
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_02031650:
	cmp r0, #0x1a
	beq _0203165A
	mov r0, #9
	bl sub_02030EE0
_0203165A:
	pop {r4, pc}
	; .align 2, 0
_0203165C: .word 0x021C07A8
_02031660: .word 0x00001335
_02031664: .word 0x0000132C
	thumb_func_end sub_020315A8

	thumb_func_start sub_02031668
sub_02031668: ; 0x02031668
	push {r4, lr}
	sub sp, #8
	ldr r0, _020316A8 ; =0x021C07A8
	ldr r2, _020316AC ; =0x00001304
	ldr r4, [r0, #4]
	ldr r3, _020316B0 ; =0x00001020
	ldr r0, [r4, r2]
	add r1, r4, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r2, #4
	ldr r2, [r4, r2]
	sub r3, #0xe0
	lsl r2, r2, #0x10
	ldr r0, _020316B4 ; =sub_020316B8
	lsr r2, r2, #0x10
	add r3, r4, r3
	bl sub_020CF5E4
	cmp r0, #2
	beq _020316A2
	bl sub_02030EF4
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_020316A2:
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_020316A8: .word 0x021C07A8
_020316AC: .word 0x00001304
_020316B0: .word 0x00001020
_020316B4: .word sub_020316B8
	thumb_func_end sub_02031668

	thumb_func_start sub_020316B8
sub_020316B8: ; 0x020316B8
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _020316DA
	cmp r1, #0xf
	beq _02031710
	cmp r1, #9
	beq _02031710
	cmp r1, #0xd
	beq _02031710
	add r0, r1, #0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r3, pc}
_020316DA:
	ldrh r0, [r0, #4]
	sub r0, #0xa
	cmp r0, #3
	bhi _02031710
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020316EE: ; jump table
	.short _020316F6 - _020316EE - 2 ; case 0
	.short _02031710 - _020316EE - 2 ; case 1
	.short _02031710 - _020316EE - 2 ; case 2
	.short _02031710 - _020316EE - 2 ; case 3
_020316F6:
	ldr r0, _02031714 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _02031718 ; =0x00001314
	ldr r1, [r2, r0]
	cmp r1, #3
	bne _0203170A
	sub r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #6
	beq _02031710
_0203170A:
	mov r0, #4
	bl sub_02030EE0
_02031710:
	pop {r3, pc}
	nop
_02031714: .word 0x021C07A8
_02031718: .word 0x00001314
	thumb_func_end sub_020316B8

	thumb_func_start sub_0203171C
sub_0203171C: ; 0x0203171C
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _0203173C ; =sub_02031740
	bl sub_020CF77C
	cmp r0, #2
	beq _02031736
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_02031736:
	mov r0, #1
	pop {r3, pc}
	nop
_0203173C: .word sub_02031740
	thumb_func_end sub_0203171C

	thumb_func_start sub_02031740
sub_02031740: ; 0x02031740
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02031752
	bl sub_02030EF4
	bl sub_02031EF4
	pop {r3, pc}
_02031752:
	bl sub_02031764
	cmp r0, #0
	bne _02031760
	mov r0, #9
	bl sub_02030EE0
_02031760:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02031740

	thumb_func_start sub_02031764
sub_02031764: ; 0x02031764
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _02031788 ; =sub_0203178C
	mov r1, #0
	bl sub_020CF2E8
	cmp r0, #2
	beq _02031784
	bl sub_02030EF4
	bl sub_02031ECC
	mov r0, #0
	pop {r3, pc}
_02031784:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02031788: .word sub_0203178C
	thumb_func_end sub_02031764

	thumb_func_start sub_0203178C
sub_0203178C: ; 0x0203178C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0203179A
	bl sub_02030EF4
	pop {r3, pc}
_0203179A:
	mov r0, #1
	bl sub_02030EE0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203178C

	thumb_func_start sub_020317A4
sub_020317A4: ; 0x020317A4
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _020317C4 ; =sub_020317C8
	bl sub_020CED50
	cmp r0, #2
	beq _020317BE
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_020317BE:
	mov r0, #1
	pop {r3, pc}
	nop
_020317C4: .word sub_020317C8
	thumb_func_end sub_020317A4

	thumb_func_start sub_020317C8
sub_020317C8: ; 0x020317C8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020317E0
	mov r0, #9
	bl sub_02030EE0
	ldrh r0, [r4, #2]
	bl sub_02030EF4
	pop {r4, pc}
_020317E0:
	mov r0, #1
	bl sub_02030EE0
	pop {r4, pc}
	thumb_func_end sub_020317C8

	thumb_func_start sub_020317E8
sub_020317E8: ; 0x020317E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02031830 ; =0x021C07A8
	add r6, r1, #0
	add r4, r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x3d
	lsl r0, r0, #6
	ldr r2, _02031834 ; =0x00001304
	add r0, r1, r0
	ldr r1, [r1, r2]
	add r7, r3, #0
	bl sub_020C2C54
	ldr r0, _02031838 ; =0x0000FFFF
	add r1, r7, #0
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _0203183C ; =sub_02031840
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020CF64C
	cmp r0, #2
	bne _0203182A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0203182A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02031830: .word 0x021C07A8
_02031834: .word 0x00001304
_02031838: .word 0x0000FFFF
_0203183C: .word sub_02031840
	thumb_func_end sub_020317E8

	thumb_func_start sub_02031840
sub_02031840: ; 0x02031840
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02031854
	cmp r1, #0xf
	beq _02031854
	add r0, r1, #0
	bl sub_02030EF4
	pop {r3, pc}
_02031854:
	ldr r2, [r0, #0x20]
	cmp r2, #0
	beq _02031866
	cmp r1, #0
	bne _02031862
	mov r0, #1
	b _02031864
_02031862:
	mov r0, #0
_02031864:
	blx r2
_02031866:
	pop {r3, pc}
	thumb_func_end sub_02031840

	thumb_func_start sub_02031868
sub_02031868: ; 0x02031868
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _02031878
	bl sub_02030EF4
	pop {r3, pc}
_02031878:
	ldr r0, _020318A8 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020318AC ; =0x00001318
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _020318A4
	ldrh r0, [r2, #4]
	cmp r0, #0x19
	beq _020318A4
	cmp r0, #0x15
	bne _02031898
	ldrh r0, [r2, #0x12]
	ldr r1, [r2, #0xc]
	ldrh r2, [r2, #0x10]
	blx r3
	pop {r3, pc}
_02031898:
	cmp r0, #9
	bne _020318A4
	ldrh r0, [r2, #0x12]
	mov r1, #0
	add r2, r1, #0
	blx r3
_020318A4:
	pop {r3, pc}
	nop
_020318A8: .word 0x021C07A8
_020318AC: .word 0x00001318
	thumb_func_end sub_02031868

	thumb_func_start sub_020318B0
sub_020318B0: ; 0x020318B0
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _020318C0
	mov r0, #0xa
	bl sub_02030EE0
	pop {r3, pc}
_020318C0:
	mov r0, #0
	add r1, r0, #0
	bl sub_020A2654
	mov r0, #0
	bl sub_02030EE0
	pop {r3, pc}
	thumb_func_end sub_020318B0

	thumb_func_start sub_020318D0
sub_020318D0: ; 0x020318D0
	ldr r1, _020318D8 ; =0x021C07A8
	ldr r1, [r1, #4]
	str r0, [r1, #8]
	bx lr
	; .align 2, 0
_020318D8: .word 0x021C07A8
	thumb_func_end sub_020318D0

	thumb_func_start sub_020318DC
sub_020318DC: ; 0x020318DC
	ldr r2, _020318E8 ; =0x021C07A8
	ldr r3, [r2, #4]
	str r0, [r3, #0]
	ldr r0, [r2, #4]
	strh r1, [r0, #4]
	bx lr
	; .align 2, 0
_020318E8: .word 0x021C07A8
	thumb_func_end sub_020318DC

	thumb_func_start sub_020318EC
sub_020318EC: ; 0x020318EC
	ldr r0, _020318F8 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020318FC ; =0x0000132E
	ldrh r0, [r1, r0]
	bx lr
	nop
_020318F8: .word 0x021C07A8
_020318FC: .word 0x0000132E
	thumb_func_end sub_020318EC

	thumb_func_start sub_02031900
sub_02031900: ; 0x02031900
	push {r3, r4}
	ldr r0, _0203192C ; =0x021C07A8
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _02031930 ; =0x0000132E
	add r3, r2, #0
	ldrh r4, [r1, r0]
	mov r1, #1
_02031910:
	add r0, r4, #0
	tst r0, r1
	beq _02031918
	add r2, r2, #1
_02031918:
	lsl r0, r4, #0xf
	add r3, r3, #1
	lsr r4, r0, #0x10
	cmp r3, #0x10
	blt _02031910
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_0203192C: .word 0x021C07A8
_02031930: .word 0x0000132E
	thumb_func_end sub_02031900

	thumb_func_start sub_02031934
sub_02031934: ; 0x02031934
	ldr r0, _02031940 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031944 ; =0x00001310
	ldr r0, [r1, r0]
	bx lr
	nop
_02031940: .word 0x021C07A8
_02031944: .word 0x00001310
	thumb_func_end sub_02031934

	thumb_func_start sub_02031948
sub_02031948: ; 0x02031948
	ldr r0, _02031954 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031958 ; =0x00001330
	ldr r0, [r1, r0]
	bx lr
	nop
_02031954: .word 0x021C07A8
_02031958: .word 0x00001330
	thumb_func_end sub_02031948

	thumb_func_start sub_0203195C
sub_0203195C: ; 0x0203195C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r0, sp, #0
	bl sub_020C3FA0
	ldr r0, _020319E4 ; =0x027FFC3C
	ldr r3, [r0, #0]
	add r0, sp, #0
	ldrh r2, [r0, #4]
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	add r0, r0, r3
	add r0, r1, r0
	add r1, r2, r0
	ldr r3, _020319E8 ; =0x021C07A8
	ldr r2, _020319EC ; =0x00001338
	ldr r0, [r3, #4]
	str r1, [r0, r2]
	ldr r0, [r3, #4]
	ldr r1, _020319F0 ; =0x00010DCD
	ldr r4, [r0, r2]
	add r5, r4, #0
	mul r5, r1
	ldr r1, _020319F4 ; =0x00003039
	mov r4, #0
	add r1, r5, r1
	str r1, [r0, r2]
	ldr r1, [r3, #4]
	add r0, r2, #4
	strh r4, [r1, r0]
	ldr r1, [r3, #4]
	mov r4, #0x65
	add r0, r2, #6
	strh r4, [r1, r0]
	mov r0, #3
	bl sub_02030EE0
	mov r0, #1
	bl sub_020319F8
	cmp r0, #0x18
	bne _020319C8
	mov r0, #0x18
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020319C8:
	cmp r0, #2
	beq _020319DC
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020319DC:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_020319E4: .word 0x027FFC3C
_020319E8: .word 0x021C07A8
_020319EC: .word 0x00001338
_020319F0: .word 0x00010DCD
_020319F4: .word 0x00003039
	thumb_func_end sub_0203195C

	thumb_func_start sub_020319F8
sub_020319F8: ; 0x020319F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020CE7F4
	mov r1, #2
	lsl r1, r1, #0xe
	cmp r0, r1
	bne _02031A1E
	mov r0, #3
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	mov r0, #3
	pop {r4, pc}
_02031A1E:
	cmp r0, #0
	bne _02031A38
	mov r0, #0x16
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	mov r0, #0x18
	pop {r4, pc}
_02031A38:
	mov r2, #1
	sub r1, r4, #1
	lsl r2, r1
	add r1, r2, #0
	tst r1, r0
	bne _02031A60
	mov r2, #1
_02031A46:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #0x10
	bls _02031A54
	mov r0, #0x18
	pop {r4, pc}
_02031A54:
	sub r1, r4, #1
	add r3, r2, #0
	lsl r3, r1
	add r1, r3, #0
	tst r1, r0
	beq _02031A46
_02031A60:
	ldr r0, _02031A70 ; =sub_02031A74
	add r1, r4, #0
	bl sub_02031AF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	nop
_02031A70: .word sub_02031A74
	thumb_func_end sub_020319F8

	thumb_func_start sub_02031A74
sub_02031A74: ; 0x02031A74
	push {r3, r4, r5, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02031A90
	add r0, r1, #0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	pop {r3, r4, r5, pc}
_02031A90:
	ldr r2, _02031AE8 ; =0x021C07A8
	ldrh r1, [r0, #8]
	ldrh r5, [r0, #0xa]
	ldr r0, [r2, #4]
	ldr r3, _02031AEC ; =0x0000133E
	ldrh r4, [r0, r3]
	cmp r4, r5
	bls _02031AB0
	strh r5, [r0, r3]
	mov r4, #1
	sub r0, r1, #1
	lsl r4, r0
	ldr r2, [r2, #4]
	add r0, r3, #2
	strh r4, [r2, r0]
	b _02031AC4
_02031AB0:
	cmp r4, r5
	bne _02031AC4
	add r2, r3, #2
	ldrh r5, [r0, r2]
	mov r4, #1
	sub r2, r1, #1
	lsl r4, r2
	orr r4, r5
	add r2, r3, #2
	strh r4, [r0, r2]
_02031AC4:
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020319F8
	cmp r0, #0x18
	bne _02031ADA
	mov r0, #7
	bl sub_02030EE0
	pop {r3, r4, r5, pc}
_02031ADA:
	cmp r0, #2
	beq _02031AE4
	mov r0, #9
	bl sub_02030EE0
_02031AE4:
	pop {r3, r4, r5, pc}
	nop
_02031AE8: .word 0x021C07A8
_02031AEC: .word 0x0000133E
	thumb_func_end sub_02031A74

	thumb_func_start sub_02031AF0
sub_02031AF0: ; 0x02031AF0
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0x1e
	str r1, [sp]
	mov r1, #3
	mov r2, #0x11
	bl sub_020D07C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02031AF0

	thumb_func_start sub_02031B04
sub_02031B04: ; 0x02031B04
	push {r3, lr}
	mov r0, #1
	bl sub_02030EE0
	ldr r0, _02031B28 ; =0x021C07A8
	ldr r1, [r0, #4]
	mov r0, #0x4d
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	bl sub_02031B30
	ldr r2, _02031B28 ; =0x021C07A8
	ldr r1, _02031B2C ; =0x0000133C
	ldr r3, [r2, #4]
	strh r0, [r3, r1]
	ldr r0, [r2, #4]
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02031B28: .word 0x021C07A8
_02031B2C: .word 0x0000133C
	thumb_func_end sub_02031B04

	thumb_func_start sub_02031B30
sub_02031B30: ; 0x02031B30
	push {r4, r5, r6, r7}
	add r4, r0, #0
	mov r0, #0
	add r3, r0, #0
	add r2, r0, #0
	mov r1, #1
_02031B3C:
	add r5, r1, #0
	lsl r5, r2
	tst r5, r4
	beq _02031B50
	add r0, r2, #1
	add r3, r3, #1
	lsl r0, r0, #0x10
	lsl r3, r3, #0x10
	asr r0, r0, #0x10
	lsr r3, r3, #0x10
_02031B50:
	add r2, r2, #1
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	cmp r2, #0x10
	blt _02031B3C
	cmp r3, #1
	bls _02031BAE
	ldr r5, _02031BB4 ; =0x021C07A8
	ldr r2, _02031BB8 ; =0x00001338
	ldr r0, [r5, #4]
	ldr r1, _02031BBC ; =0x00010DCD
	ldr r6, [r0, r2]
	add r7, r6, #0
	mul r7, r1
	ldr r1, _02031BC0 ; =0x00003039
	add r1, r7, r1
	str r1, [r0, r2]
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r0, [r0, r2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mul r0, r3
	lsl r0, r0, #8
	lsr r2, r0, #0x10
	mov r3, #0
_02031B84:
	add r0, r4, #0
	tst r0, r1
	beq _02031B9E
	cmp r2, #0
	bne _02031B98
	add r0, r3, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, r5, r6, r7}
	bx lr
_02031B98:
	sub r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_02031B9E:
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
	add r0, r3, #1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	cmp r3, #0x10
	blt _02031B84
	mov r0, #0
_02031BAE:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02031BB4: .word 0x021C07A8
_02031BB8: .word 0x00001338
_02031BBC: .word 0x00010DCD
_02031BC0: .word 0x00003039
	thumb_func_end sub_02031B30

	thumb_func_start sub_02031BC4
sub_02031BC4: ; 0x02031BC4
	push {r4, r5, r6, lr}
	lsl r2, r0, #0x1b
	lsr r3, r2, #0x1b
	beq _02031BD2
	mov r2, #0x20
	sub r2, r2, r3
	add r0, r0, r2
_02031BD2:
	ldr r3, _02031C48 ; =0x021C07A8
	ldr r2, _02031C4C ; =0x00001308
	str r0, [r3, #4]
	mov r4, #0
	str r4, [r0, r2]
	ldr r5, [r3, #4]
	sub r0, r2, #4
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x10
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x24
	strh r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	mov r6, #1
	add r0, #0x26
	strh r6, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x28
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #8
	str r4, [r5, r0]
	ldr r0, [r3, #4]
	mov r6, #8
	str r4, [r0, #0]
	ldr r0, [r3, #4]
	strh r4, [r0, #4]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x14
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x2c
	strb r6, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x2d
	strb r4, [r5, r0]
	ldr r0, [r3, #4]
	add r2, #0x3a
	strb r4, [r0, r2]
	add r0, r1, #0
	bl sub_02031C70
	cmp r0, #0
	bne _02031C42
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02031C42:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02031C48: .word 0x021C07A8
_02031C4C: .word 0x00001308
	thumb_func_end sub_02031BC4

	thumb_func_start sub_02031C50
sub_02031C50: ; 0x02031C50
	mov r0, #0x4e
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end sub_02031C50

	thumb_func_start sub_02031C58
sub_02031C58: ; 0x02031C58
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	bne _02031C6C
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0x19
	bl sub_02030EF4
_02031C6C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02031C58

	thumb_func_start sub_02031C70
sub_02031C70: ; 0x02031C70
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	bl sub_02030EE0
	cmp r4, #1
	bne _02031C8E
	ldr r0, _02031CB4 ; =0x021C07A8
	ldr r1, _02031CB8 ; =sub_02031CBC
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, #0x40
	bl sub_020CECC8
	b _02031C9E
_02031C8E:
	ldr r0, _02031CB4 ; =0x021C07A8
	ldr r1, _02031CB8 ; =sub_02031CBC
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, #0x40
	mov r3, #0
	bl sub_020CECD8
_02031C9E:
	cmp r0, #2
	beq _02031CB0
	bl sub_02030EF4
	mov r0, #0xa
	bl sub_02030EE0
	mov r0, #0
	pop {r4, pc}
_02031CB0:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02031CB4: .word 0x021C07A8
_02031CB8: .word sub_02031CBC
	thumb_func_end sub_02031C70

	thumb_func_start sub_02031CBC
sub_02031CBC: ; 0x02031CBC
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02031CD6
	bl sub_02030EF4
	mov r0, #0xa
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	pop {r3, pc}
_02031CD6:
	ldr r0, _02031CFC ; =sub_02031C58
	bl sub_020CE478
	cmp r0, #0
	beq _02031CF2
	bl sub_02030EF4
	mov r0, #0xa
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	pop {r3, pc}
_02031CF2:
	mov r0, #1
	bl sub_02030EE0
	pop {r3, pc}
	nop
_02031CFC: .word sub_02031C58
	thumb_func_end sub_02031CBC

	thumb_func_start sub_02031D00
sub_02031D00: ; 0x02031D00
	bx lr
	; .align 2, 0
	thumb_func_end sub_02031D00

	thumb_func_start sub_02031D04
sub_02031D04: ; 0x02031D04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0203895C
	bl sub_0203276C
	cmp r0, #0
	beq _02031D28
	ldr r0, _02031DC8 ; =sub_02031D00
	mov r2, #0x64
	ldr r1, _02031DCC ; =0x0000FFFF
	mov r3, #5
	str r2, [sp]
	bl sub_020D0764
_02031D28:
	ldr r1, _02031DD0 ; =0x021C07A8
	mov r0, #7
	ldr r2, [r1, #4]
	ldr r1, _02031DD4 ; =0x00001308
	lsl r0, r0, #6
	str r0, [r2, r1]
	ldr r0, _02031DD0 ; =0x021C07A8
	mov r3, #0xe0
	ldr r2, [r0, #4]
	sub r0, r1, #4
	str r3, [r2, r0]
	ldr r0, _02031DD0 ; =0x021C07A8
	add r1, #0xc
	ldr r0, [r0, #4]
	str r5, [r0, r1]
	mov r0, #3
	bl sub_02030EE0
	ldr r1, _02031DD0 ; =0x021C07A8
	cmp r5, #0
	ldr r0, [r1, #4]
	strh r6, [r0, #0xc]
	ldr r0, [r1, #4]
	strh r7, [r0, #0x32]
	add r0, sp, #8
	ldrh r2, [r0, #0x10]
	ldr r0, [r1, #4]
	strh r2, [r0, #0x18]
	beq _02031D68
	cmp r5, #4
	beq _02031D82
	b _02031D8E
_02031D68:
	ldr r0, [r1, #4]
	mov r2, #0xc0
	strh r2, [r0, #0x34]
	cmp r4, #5
	blo _02031D7A
	ldr r0, [r1, #4]
	mov r2, #0xc
	strh r2, [r0, #0x36]
	b _02031D8E
_02031D7A:
	ldr r0, [r1, #4]
	mov r2, #0x26
	strh r2, [r0, #0x36]
	b _02031D8E
_02031D82:
	ldr r0, [r1, #4]
	mov r2, #0x64
	strh r2, [r0, #0x34]
	ldr r0, [r1, #4]
	mov r2, #0xc
	strh r2, [r0, #0x36]
_02031D8E:
	ldr r1, _02031DD0 ; =0x021C07A8
	ldr r0, [r1, #4]
	strh r4, [r0, #0x10]
	ldr r2, [r1, #4]
	mov r0, #0
	strh r0, [r2, #0x16]
	ldr r2, [r1, #4]
	cmp r5, #2
	strh r0, [r2, #0x12]
	ldr r2, [sp, #0x1c]
	ldr r1, [r1, #4]
	strh r2, [r1, #0xe]
	bne _02031DAA
	mov r0, #1
_02031DAA:
	ldr r1, _02031DD0 ; =0x021C07A8
	cmp r5, #0
	ldr r1, [r1, #4]
	strh r0, [r1, #0x14]
	beq _02031DBC
	cmp r5, #2
	beq _02031DBC
	cmp r5, #4
	bne _02031DC2
_02031DBC:
	bl sub_02030F10
	pop {r3, r4, r5, r6, r7, pc}
_02031DC2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02031DC8: .word sub_02031D00
_02031DCC: .word 0x0000FFFF
_02031DD0: .word 0x021C07A8
_02031DD4: .word 0x00001308
	thumb_func_end sub_02031D04

	thumb_func_start sub_02031DD8
sub_02031DD8: ; 0x02031DD8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203895C
	bl sub_0203276C
	cmp r0, #0
	beq _02031DFA
	ldr r0, _02031E58 ; =sub_02031D00
	mov r2, #0x64
	ldr r1, _02031E5C ; =0x0000FFFF
	mov r3, #5
	str r2, [sp]
	bl sub_020D0764
_02031DFA:
	ldr r2, _02031E60 ; =0x021C07A8
	mov r3, #2
	ldr r0, [r2, #4]
	ldr r1, _02031E64 ; =0x00001308
	lsl r3, r3, #8
	str r3, [r0, r1]
	sub r0, r1, #4
	ldr r3, [r2, #4]
	mov r6, #0x40
	str r6, [r3, r0]
	ldr r0, [r2, #4]
	add r1, #0xc
	str r5, [r0, r1]
	mov r0, #3
	bl sub_02030EE0
	cmp r5, #1
	beq _02031E26
	cmp r5, #3
	beq _02031E26
	cmp r5, #5
	bne _02031E50
_02031E26:
	ldr r1, _02031E60 ; =0x021C07A8
	add r0, r4, #0
	ldr r2, [r1, #4]
	ldr r1, _02031E68 ; =0x00001220
	add r1, r2, r1
	mov r2, #0xc0
	bl sub_020C4DB0
	ldr r0, _02031E60 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031E68 ; =0x00001220
	add r0, r1, r0
	mov r1, #0xc0
	bl sub_020C2C54
	bl sub_020C2C78
	bl sub_02031538
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02031E50:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02031E58: .word sub_02031D00
_02031E5C: .word 0x0000FFFF
_02031E60: .word 0x021C07A8
_02031E64: .word 0x00001308
_02031E68: .word 0x00001220
	thumb_func_end sub_02031DD8

	thumb_func_start sub_02031E6C
sub_02031E6C: ; 0x02031E6C
	push {r3, lr}
	ldr r2, _02031E90 ; =0x021C07A8
	ldr r3, [r2, #4]
	ldr r2, _02031E94 ; =0x00001318
	str r0, [r3, r2]
	lsl r0, r1, #0x10
	ldr r1, _02031E98 ; =sub_02031868
	lsr r0, r0, #0x10
	mov r2, #0
	bl sub_020CE4BC
	cmp r0, #0
	beq _02031E8E
	mov r0, #9
	bl sub_02030EE0
_02031E8C:
	b _02031E8C
_02031E8E:
	pop {r3, pc}
	; .align 2, 0
_02031E90: .word 0x021C07A8
_02031E94: .word 0x00001318
_02031E98: .word sub_02031868
	thumb_func_end sub_02031E6C

	thumb_func_start sub_02031E9C
sub_02031E9C: ; 0x02031E9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02031F90
	cmp r0, #0
	bne _02031EBC
	bl sub_020318EC
	mov r1, #0xfe
	tst r0, r1
	bne _02031EBC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02031EBC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020317E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02031E9C

	thumb_func_start sub_02031ECC
sub_02031ECC: ; 0x02031ECC
	push {r3, lr}
	ldr r0, _02031EEC ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031EF0 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #2
	bne _02031EDC
_02031EDA:
	b _02031EDA
_02031EDC:
	bl sub_020317A4
	cmp r0, #0
	bne _02031EEA
	mov r0, #0xa
	bl sub_02030EE0
_02031EEA:
	pop {r3, pc}
	; .align 2, 0
_02031EEC: .word 0x021C07A8
_02031EF0: .word 0x00001310
	thumb_func_end sub_02031ECC

	thumb_func_start sub_02031EF4
sub_02031EF4: ; 0x02031EF4
	push {r3, lr}
	ldr r0, _02031F60 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031F64 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _02031F5E
	cmp r0, #6
	beq _02031F1A
	cmp r0, #5
	beq _02031F1A
	cmp r0, #4
	beq _02031F1A
	mov r0, #3
	bl sub_02030EE0
	bl sub_02031ECC
	pop {r3, pc}
_02031F1A:
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _02031F60 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031F68 ; =0x00001314
	ldr r0, [r1, r0]
	cmp r0, #5
	bhi _02031F5E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02031F38: ; jump table
	.short _02031F52 - _02031F38 - 2 ; case 0
	.short _02031F44 - _02031F38 - 2 ; case 1
	.short _02031F5E - _02031F38 - 2 ; case 2
	.short _02031F5E - _02031F38 - 2 ; case 3
	.short _02031F52 - _02031F38 - 2 ; case 4
	.short _02031F44 - _02031F38 - 2 ; case 5
_02031F44:
	bl sub_0203171C
	cmp r0, #0
	bne _02031F5E
	bl sub_02031ECC
	pop {r3, pc}
_02031F52:
	bl sub_020311A8
	cmp r0, #0
	bne _02031F5E
	bl sub_02031ECC
_02031F5E:
	pop {r3, pc}
	; .align 2, 0
_02031F60: .word 0x021C07A8
_02031F64: .word 0x00001310
_02031F68: .word 0x00001314
	thumb_func_end sub_02031EF4

	thumb_func_start sub_02031F6C
sub_02031F6C: ; 0x02031F6C
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _02031F8C ; =sub_020318B0
	bl sub_020CED88
	cmp r0, #2
	beq _02031F88
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0
	pop {r3, pc}
_02031F88:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02031F8C: .word sub_020318B0
	thumb_func_end sub_02031F6C

	thumb_func_start sub_02031F90
sub_02031F90: ; 0x02031F90
	ldr r0, _02031F9C ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031FA0 ; =0x0000132C
	ldrh r0, [r1, r0]
	bx lr
	nop
_02031F9C: .word 0x021C07A8
_02031FA0: .word 0x0000132C
	thumb_func_end sub_02031F90

	thumb_func_start sub_02031FA4
sub_02031FA4: ; 0x02031FA4
	ldr r1, _02031FB4 ; =0x021C07A8
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02031FB0
	ldr r1, _02031FB8 ; =0x00001334
	strb r0, [r2, r1]
_02031FB0:
	bx lr
	nop
_02031FB4: .word 0x021C07A8
_02031FB8: .word 0x00001334
	thumb_func_end sub_02031FA4

	thumb_func_start sub_02031FBC
sub_02031FBC: ; 0x02031FBC
	ldr r0, _02031FD0 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031FD4 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02031FCC
	mov r0, #1
	bx lr
_02031FCC:
	mov r0, #0
	bx lr
	; .align 2, 0
_02031FD0: .word 0x021C07A8
_02031FD4: .word 0x00001310
	thumb_func_end sub_02031FBC

	thumb_func_start sub_02031FD8
sub_02031FD8: ; 0x02031FD8
	ldr r0, _02031FEC ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031FF0 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #3
	bne _02031FE8
	mov r0, #1
	bx lr
_02031FE8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02031FEC: .word 0x021C07A8
_02031FF0: .word 0x00001310
	thumb_func_end sub_02031FD8

	thumb_func_start sub_02031FF4
sub_02031FF4: ; 0x02031FF4
	ldr r0, _02032008 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _0203200C ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #9
	bne _02032004
	mov r0, #1
	bx lr
_02032004:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032008: .word 0x021C07A8
_0203200C: .word 0x00001310
	thumb_func_end sub_02031FF4

	thumb_func_start sub_02032010
sub_02032010: ; 0x02032010
	ldr r0, _0203202C ; =0x021C07A8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02032028
	ldr r0, _02032030 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #2
	bne _02032024
	mov r0, #1
	bx lr
_02032024:
	mov r0, #0
	bx lr
_02032028:
	mov r0, #0
	bx lr
	; .align 2, 0
_0203202C: .word 0x021C07A8
_02032030: .word 0x00001310
	thumb_func_end sub_02032010

	thumb_func_start sub_02032034
sub_02032034: ; 0x02032034
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _02032068 ; =0x021C07A8
	add r5, r1, #0
	ldr r1, [r0, #4]
	ldr r0, _0203206C ; =0x00001310
	add r4, r2, #0
	ldr r0, [r1, r0]
	cmp r0, #4
	bne _02032062
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	lsl r2, r5, #0x10
	str r0, [sp, #4]
	mov r0, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r4, #0
	bl sub_020D065C
_02032062:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02032068: .word 0x021C07A8
_0203206C: .word 0x00001310
	thumb_func_end sub_02032034

	thumb_func_start sub_02032070
sub_02032070: ; 0x02032070
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02032080
	ldr r0, _02032084 ; =0x021C07A8
	mov r2, #1
	ldr r1, [r0, #4]
	ldr r0, _02032088 ; =0x00001344
	strb r2, [r1, r0]
_02032080:
	bx lr
	nop
_02032084: .word 0x021C07A8
_02032088: .word 0x00001344
	thumb_func_end sub_02032070

	thumb_func_start sub_0203208C
sub_0203208C: ; 0x0203208C
	push {r4, lr}
	ldr r2, _020320B8 ; =0x021C07A8
	add r1, r0, #0
	ldr r3, [r2, #4]
	ldr r0, _020320BC ; =0x00001344
	mov r4, #0
	strb r4, [r3, r0]
	ldr r2, [r2, #4]
	sub r0, #0x34
	ldr r0, [r2, r0]
	cmp r0, #4
	bne _020320B2
	ldr r0, _020320C0 ; =sub_02032070
	bl sub_020D083C
	cmp r0, #2
	bne _020320B2
	mov r0, #1
	pop {r4, pc}
_020320B2:
	mov r0, #0
	pop {r4, pc}
	nop
_020320B8: .word 0x021C07A8
_020320BC: .word 0x00001344
_020320C0: .word sub_02032070
	thumb_func_end sub_0203208C

	thumb_func_start sub_020320C4
sub_020320C4: ; 0x020320C4
	ldr r0, _020320E0 ; =0x021C07A8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020320DC
	ldr r0, _020320E4 ; =0x00001345
	ldrb r0, [r1, r0]
	cmp r0, #6
	blo _020320D8
	mov r0, #1
	bx lr
_020320D8:
	mov r0, #0
	bx lr
_020320DC:
	mov r0, #0
	bx lr
	; .align 2, 0
_020320E0: .word 0x021C07A8
_020320E4: .word 0x00001345
	thumb_func_end sub_020320C4

	thumb_func_start sub_020320E8
sub_020320E8: ; 0x020320E8
	ldr r0, _020320F4 ; =0x021C07A8
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _020320F8 ; =0x00001345
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_020320F4: .word 0x021C07A8
_020320F8: .word 0x00001345
	thumb_func_end sub_020320E8

	thumb_func_start sub_020320FC
sub_020320FC: ; 0x020320FC
	ldr r1, _02032108 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _0203210C ; =0x00001320
	str r0, [r2, r1]
	bx lr
	nop
_02032108: .word 0x021C07A8
_0203210C: .word 0x00001320
	thumb_func_end sub_020320FC

	thumb_func_start sub_02032110
sub_02032110: ; 0x02032110
	ldr r1, _0203211C ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032120 ; =0x00001324
	str r0, [r2, r1]
	bx lr
	nop
_0203211C: .word 0x021C07A8
_02032120: .word 0x00001324
	thumb_func_end sub_02032110

	thumb_func_start sub_02032124
sub_02032124: ; 0x02032124
	ldr r1, _02032130 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032134 ; =0x00001328
	str r0, [r2, r1]
	bx lr
	nop
_02032130: .word 0x021C07A8
_02032134: .word 0x00001328
	thumb_func_end sub_02032124

	thumb_func_start sub_02032138
sub_02032138: ; 0x02032138
	ldr r1, _02032144 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032148 ; =0x00001342
	strb r0, [r2, r1]
	bx lr
	nop
_02032144: .word 0x021C07A8
_02032148: .word 0x00001342
	thumb_func_end sub_02032138

	thumb_func_start sub_0203214C
sub_0203214C: ; 0x0203214C
	ldr r0, _02032158 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _0203215C ; =0x00001342
	ldrb r0, [r1, r0]
	bx lr
	nop
_02032158: .word 0x021C07A8
_0203215C: .word 0x00001342
	thumb_func_end sub_0203214C

	thumb_func_start sub_02032160
sub_02032160: ; 0x02032160
	ldr r1, _0203216C ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032170 ; =0x00001343
	strb r0, [r2, r1]
	bx lr
	nop
_0203216C: .word 0x021C07A8
_02032170: .word 0x00001343
	thumb_func_end sub_02032160

	thumb_func_start sub_02032174
sub_02032174: ; 0x02032174
	ldr r1, _02032180 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032184 ; =0x00001335
	strb r0, [r2, r1]
	bx lr
	nop
_02032180: .word 0x021C07A8
_02032184: .word 0x00001335
	thumb_func_end sub_02032174

	.data


	.global Unk_02100A18
Unk_02100A18: ; 0x02100A18
	.incbin "incbin/arm9_data.bin", 0x1D38, 0x3



	.bss


	.global Unk_021C07A8
Unk_021C07A8: ; 0x021C07A8
	.space 0x4

	.global Unk_021C07AC
Unk_021C07AC: ; 0x021C07AC
	.space 0x4

