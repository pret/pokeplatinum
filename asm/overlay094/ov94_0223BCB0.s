	.include "macros/function.inc"
	.include "overlay094/ov94_0223BCB0.inc"

	

	.text


	thumb_func_start ov94_0223BCB0
ov94_0223BCB0: ; 0x0223BCB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223BCC6
	cmp r0, #1
	bne _0223BCC4
	b _0223BDD4
_0223BCC4:
	b _0223BDEA
_0223BCC6:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223BDF0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0223BDF4 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r2, #7
	mov r0, #3
	mov r1, #0x3e
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _0223BDF8 ; =0x00001488
	add r0, r6, #0
	mov r2, #0x3e
	bl sub_0200681C
	ldr r2, _0223BDF8 ; =0x00001488
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x3e
	bl sub_02018340
	str r0, [r4, #4]
	ldr r0, _0223BDFC ; =0x02246C04
	add r2, sp, #0
	ldr r3, _0223BE00 ; =0x02245A00
	str r4, [r0, #4]
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	bl sub_02018368
	mov r0, #0xb
	mov r1, #0x40
	mov r2, #0x3e
	bl sub_0200B368
	mov r1, #0xb9
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _0223BE04 ; =0x0000029F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3e
	bl sub_0200B144
	ldr r1, _0223BE08 ; =0x00000B94
	ldr r2, _0223BE0C ; =0x000002A2
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3e
	bl sub_0200B144
	ldr r1, _0223BE10 ; =0x00000B9C
	ldr r2, _0223BE14 ; =0x000002B7
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3e
	bl sub_0200B144
	mov r1, #0xba
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r2, #0x67
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x3e
	bl sub_0200B144
	ldr r1, _0223BE18 ; =0x00000B98
	ldr r2, _0223BE1C ; =0x000002B6
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3e
	bl sub_0200B144
	ldr r1, _0223BE20 ; =0x00000BA4
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	add r1, r6, #0
	bl ov94_0223C03C
	add r0, r4, #0
	bl ov94_0223C4E0
	ldr r1, _0223BE24 ; =0x00000497
	mov r0, #0xb
	mov r2, #1
	bl sub_02004550
	ldr r1, _0223BE28 ; =0x00020020
	mov r0, #0x3e
	bl sub_02018144
	str r0, [r4, #0x4c]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl NNS_FndCreateExpHeapEx
	str r0, [r4, #0x50]
	mov r0, #1
	str r0, [r5, #0]
	b _0223BDEA
_0223BDD4:
	bl sub_02099550
	bl sub_020995B4
	bl sub_02033478
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223BDEA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BDF0: .word 0xFFFFE0FF
_0223BDF4: .word 0x04001000
_0223BDF8: .word 0x00001488
_0223BDFC: .word 0x02246C04
_0223BE00: .word 0x02245A00
_0223BE04: .word 0x0000029F
_0223BE08: .word 0x00000B94
_0223BE0C: .word 0x000002A2
_0223BE10: .word 0x00000B9C
_0223BE14: .word 0x000002B7
_0223BE18: .word 0x00000B98
_0223BE1C: .word 0x000002B6
_0223BE20: .word 0x00000BA4
_0223BE24: .word 0x00000497
_0223BE28: .word 0x00020020
	thumb_func_end ov94_0223BCB0

	thumb_func_start ov94_0223BE2C
ov94_0223BE2C: ; 0x0223BE2C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl ov4_021D8018
	bl ov94_0223B15C
	ldr r1, [r5, #0]
	cmp r1, #5
	bhi _0223BF1C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BE50: ; jump table
	.short _0223BE5C - _0223BE50 - 2 ; case 0
	.short _0223BE78 - _0223BE50 - 2 ; case 1
	.short _0223BE9C - _0223BE50 - 2 ; case 2
	.short _0223BEAA - _0223BE50 - 2 ; case 3
	.short _0223BEBE - _0223BE50 - 2 ; case 4
	.short _0223BF18 - _0223BE50 - 2 ; case 5
_0223BE5C:
	bl sub_020334A4
	cmp r0, #0
	beq _0223BF1C
	ldr r1, [r4, #0x50]
	ldr r0, _0223BF38 ; =0x02246C04
	str r1, [r0, #0]
	ldr r0, _0223BF3C ; =ov94_0223C468
	ldr r1, _0223BF40 ; =ov94_0223C490
	bl ov4_021D776C
	mov r0, #1
	str r0, [r5, #0]
	b _0223BF1C
_0223BE78:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223BF44 ; =0x0224674C
	add r0, r4, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r5, #0]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BF1C
	add r0, r4, #0
	bl ov94_0223C508
	b _0223BF1C
_0223BE9C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223BF1C
	mov r0, #3
	str r0, [r5, #0]
	b _0223BF1C
_0223BEAA:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223BF48 ; =0x02246750
	add r0, r4, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r5, #0]
	b _0223BF1C
_0223BEBE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223BF1C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BF02
	add r0, r4, #0
	bl ov94_0223C4E0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov94_02243EF8
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov94_02244234
	add r0, r4, #0
	bl ov94_0223D068
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0223BF02:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223BF4C ; =0x02246754
	ldr r1, [r5, #0]
	ldr r2, [r2, r6]
	add r0, r4, #0
	blx r2
	str r0, [r5, #0]
	b _0223BF1C
_0223BF18:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223BF1C:
	add r0, r4, #0
	bl ov94_0223C578
	add r0, r4, #0
	bl ov94_0223C598
	ldr r0, _0223BF50 ; =0x00000BE8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BF34
	bl sub_020219F8
_0223BF34:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223BF38: .word 0x02246C04
_0223BF3C: .word ov94_0223C468
_0223BF40: .word ov94_0223C490
_0223BF44: .word 0x0224674C
_0223BF48: .word 0x02246750
_0223BF4C: .word 0x02246754
_0223BF50: .word 0x00000BE8
	thumb_func_end ov94_0223BE2C

	thumb_func_start ov94_0223BF54
ov94_0223BF54: ; 0x0223BF54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_020181C4
	bl sub_020995C4
	bl sub_02099560
	add r0, r4, #0
	bl ov94_0223C508
	ldr r0, _0223BFD4 ; =0x00000B98
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0223BFD8 ; =0x00000B9C
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0223BFDC ; =0x00000B94
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0223BFE0 ; =0x00000BA4
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	add r0, r4, #0
	bl ov94_0223C0A0
	bl sub_020334CC
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x3e
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BFD4: .word 0x00000B98
_0223BFD8: .word 0x00000B9C
_0223BFDC: .word 0x00000B94
_0223BFE0: .word 0x00000BA4
	thumb_func_end ov94_0223BF54

	thumb_func_start ov94_0223BFE4
ov94_0223BFE4: ; 0x0223BFE4
	push {r4, lr}
	ldr r1, _0223C010 ; =0x000010B8
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0223BFF8
	blx r1
	ldr r0, _0223C010 ; =0x000010B8
	mov r1, #0
	str r1, [r4, r0]
_0223BFF8:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _0223C014 ; =0x027E0000
	ldr r1, _0223C018 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0223C010: .word 0x000010B8
_0223C014: .word 0x027E0000
_0223C018: .word 0x00003FF8
	thumb_func_end ov94_0223BFE4

	thumb_func_start ov94_0223C01C
ov94_0223C01C: ; 0x0223C01C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223C038 ; =0x02245A20
	add r3, sp, #0
	mov r2, #5
_0223C026:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C026
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223C038: .word 0x02245A20
	thumb_func_end ov94_0223C01C

	thumb_func_start ov94_0223C03C
ov94_0223C03C: ; 0x0223C03C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02006840
	mov r1, #0
	str r0, [r4, #0]
	add r0, r4, #0
	add r2, r1, #0
	str r1, [r4, #0x14]
	bl ov94_0223C4C0
	mov r2, #0x11
	ldr r0, _0223C098 ; =0x00000B7E
	mov r1, #0
	lsl r2, r2, #4
	strh r1, [r4, r2]
	strh r1, [r4, r0]
	mov r5, #3
	add r3, r0, #2
	strb r5, [r4, r3]
	add r3, r0, #3
	strb r1, [r4, r3]
	add r3, r0, #4
	strb r1, [r4, r3]
	add r0, r0, #6
	strh r1, [r4, r0]
	ldr r0, _0223C09C ; =0x00001090
	mov r3, #0x12
	strh r1, [r4, r0]
	add r2, r2, #4
	strh r3, [r4, r2]
	add r2, r0, #0
	add r2, #0x1c
	strh r1, [r4, r2]
	add r2, r0, #0
	add r2, #0x1e
	strh r1, [r4, r2]
	add r2, r0, #2
	strh r1, [r4, r2]
	add r2, r0, #0
	sub r2, #0x14
	str r1, [r4, r2]
	add r0, #0xc0
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C098: .word 0x00000B7E
_0223C09C: .word 0x00001090
	thumb_func_end ov94_0223C03C

	thumb_func_start ov94_0223C0A0
ov94_0223C0A0: ; 0x0223C0A0
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223C0A0

	thumb_func_start ov94_0223C0A4
ov94_0223C0A4: ; 0x0223C0A4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223C0D0 ; =0x02245A10
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x3e
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223C0D0: .word 0x02245A10
	thumb_func_end ov94_0223C0A4

	thumb_func_start ov94_0223C0D4
ov94_0223C0D4: ; 0x0223C0D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	str r0, [sp, #0x18]
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x3e
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	ldr r1, _0223C2DC ; =0x00000BEC
	mov r0, #0x4e
	add r1, r5, r1
	mov r2, #0x3e
	bl sub_020095C4
	ldr r1, _0223C2E0 ; =0x00000BE8
	mov r2, #1
	str r0, [r5, r1]
	add r0, r1, #4
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	ldr r7, _0223C2E4 ; =0x00000D14
	mov r6, #0
	add r4, r5, #0
_0223C124:
	mov r0, #3
	add r1, r6, #0
	mov r2, #0x3e
	bl sub_02009714
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0223C124
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	ldr r0, _0223C2E4 ; =0x00000D14
	ldr r1, [sp, #0x18]
	ldr r0, [r5, r0]
	mov r2, #0x12
	bl sub_02009A4C
	ldr r1, _0223C2E8 ; =0x00000D24
	mov r3, #0
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x3e
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #9
	bl sub_02009B04
	ldr r1, _0223C2EC ; =0x00000D28
	mov r2, #0x13
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r3, #1
	bl sub_02009BC4
	ldr r1, _0223C2F0 ; =0x00000D2C
	mov r2, #0x14
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0xd3
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x20
	bl sub_02009A4C
	ldr r1, _0223C2F4 ; =0x00000D34
	mov r2, #8
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #0x3e
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009B04
	ldr r1, _0223C2F8 ; =0x00000D38
	mov r3, #1
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x21
	bl sub_02009BC4
	ldr r1, _0223C2FC ; =0x00000D3C
	mov r3, #1
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x22
	bl sub_02009BC4
	mov r1, #0x35
	lsl r1, r1, #6
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl sub_0200A328
	ldr r0, _0223C2F4 ; =0x00000D34
	ldr r0, [r5, r0]
	bl sub_0200A328
	ldr r0, _0223C2EC ; =0x00000D28
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	ldr r0, _0223C2F8 ; =0x00000D38
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0x13
	add r2, sp, #0x1c
	mov r3, #0x3e
	bl sub_02006F88
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	bl GX_LoadOBJPltt
	ldr r0, [sp, #0x1c]
	mov r7, #0x1f
	ldr r4, [r0, #0xc]
	mov r3, #0
	add r5, r7, #0
_0223C27C:
	ldrh r2, [r4]
	mov r0, #0x1f
	add r3, r3, #1
	add r1, r2, #0
	and r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	asr r0, r2, #0xa
	add r6, r0, #0
	and r6, r7
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r2, r2, #5
	add r6, r2, #0
	and r6, r5
	lsr r2, r6, #0x1f
	add r2, r6, r2
	asr r0, r0, #1
	asr r2, r2, #1
	lsl r0, r0, #0xa
	lsl r2, r2, #5
	orr r0, r2
	orr r0, r1
	strh r0, [r4]
	add r4, r4, #2
	cmp r3, #0x30
	blt _0223C27C
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	mov r1, #0xc0
	ldr r0, [r0, #0xc]
	mov r2, #0x60
	bl GX_LoadOBJPltt
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C2DC: .word 0x00000BEC
_0223C2E0: .word 0x00000BE8
_0223C2E4: .word 0x00000D14
_0223C2E8: .word 0x00000D24
_0223C2EC: .word 0x00000D28
_0223C2F0: .word 0x00000D2C
_0223C2F4: .word 0x00000D34
_0223C2F8: .word 0x00000D38
_0223C2FC: .word 0x00000D3C
	thumb_func_end ov94_0223C0D4

	thumb_func_start ov94_0223C300
ov94_0223C300: ; 0x0223C300
	push {r3, r4}
	ldr r4, _0223C328 ; =0x00000BE8
	ldr r1, [r1, r4]
	str r1, [r0, #0]
	str r2, [r0, #4]
	mov r2, #0
	mov r1, #1
	str r2, [r0, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	mov r1, #1
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	mov r1, #0x3e
	str r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0223C328: .word 0x00000BE8
	thumb_func_end ov94_0223C300

	thumb_func_start ov94_0223C32C
ov94_0223C32C: ; 0x0223C32C
	push {r3, r4, lr}
	sub sp, #0x2c
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _0223C3BC ; =0x00000D14
	str r1, [sp, #0x10]
	ldr r0, [r4, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r2, #0x40
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r4, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r1, #1
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, _0223C3BC ; =0x00000D14
	str r0, [sp, #0x10]
	ldr r2, [r4, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r4, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x2c
	pop {r3, r4, pc}
	; .align 2, 0
_0223C3BC: .word 0x00000D14
	thumb_func_end ov94_0223C32C

	thumb_func_start ov94_0223C3C0
ov94_0223C3C0: ; 0x0223C3C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _0223C3F0 ; =0x022459F8
	add r4, sp, #4
	ldrh r6, [r5]
	add r3, sp, #4
	strh r6, [r4]
	ldrh r6, [r5, #2]
	strh r6, [r4, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	strh r6, [r4, #4]
	strh r5, [r4, #6]
	strb r1, [r4, #2]
	strh r2, [r4, #6]
	mov r1, #0x3e
	str r1, [sp]
	add r1, r3, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223C3F0: .word 0x022459F8
	thumb_func_end ov94_0223C3C0

	thumb_func_start ov94_0223C3F4
ov94_0223C3F4: ; 0x0223C3F4
	str r1, [r0, #0x2c]
	str r2, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223C3F4

	thumb_func_start ov94_0223C3FC
ov94_0223C3FC: ; 0x0223C3FC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0
	ble _0223C41A
	lsl r0, r1, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0223C428
_0223C41A:
	lsl r0, r1, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0223C428:
	bl _f_ftoi
	str r0, [sp]
	cmp r5, #0
	ble _0223C444
	lsl r0, r5, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0223C452
_0223C444:
	lsl r0, r5, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0223C452:
	bl _f_ftoi
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov94_0223C3FC

	thumb_func_start ov94_0223C468
ov94_0223C468: ; 0x0223C468
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, _0223C48C ; =0x02246C04
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl NNS_FndAllocFromExpHeapEx
	add r4, r0, #0
	add r0, r6, #0
	bl OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C48C: .word 0x02246C04
	thumb_func_end ov94_0223C468

	thumb_func_start ov94_0223C490
ov94_0223C490: ; 0x0223C490
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _0223C4AC
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0223C4B0 ; =0x02246C04
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl NNS_FndFreeToExpHeap
	add r0, r4, #0
	bl OS_RestoreInterrupts
_0223C4AC:
	pop {r3, r4, r5, pc}
	nop
_0223C4B0: .word 0x02246C04
	thumb_func_end ov94_0223C490

	thumb_func_start ov94_0223C4B4
ov94_0223C4B4: ; 0x0223C4B4
	push {r3, lr}
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	pop {r3, pc}
	thumb_func_end ov94_0223C4B4

	thumb_func_start ov94_0223C4C0
ov94_0223C4C0: ; 0x0223C4C0
	str r1, [r0, #0x18]
	str r2, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223C4C0

	thumb_func_start ov94_0223C4C8
ov94_0223C4C8: ; 0x0223C4C8
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223C4C8

	thumb_func_start ov94_0223C4D4
ov94_0223C4D4: ; 0x0223C4D4
	ldr r0, [r0, #0]
	ldr r3, _0223C4DC ; =sub_02027AC0
	ldr r0, [r0, #0x24]
	bx r3
	; .align 2, 0
_0223C4DC: .word sub_02027AC0
	thumb_func_end ov94_0223C4D4

	thumb_func_start ov94_0223C4E0
ov94_0223C4E0: ; 0x0223C4E0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C01C
	bl ov94_0223C0A4
	add r0, r4, #0
	bl ov94_0223C0D4
	add r0, r4, #0
	bl ov94_0223C32C
	ldr r0, _0223C504 ; =ov94_0223BFE4
	add r1, r4, #0
	bl sub_02017798
	pop {r4, pc}
	nop
_0223C504: .word ov94_0223BFE4
	thumb_func_end ov94_0223C4E0

	thumb_func_start ov94_0223C508
ov94_0223C508: ; 0x0223C508
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov94_022443B8
	ldr r0, _0223C560 ; =0x00000D24
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	ldr r0, _0223C564 ; =0x00000D34
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	ldr r0, _0223C568 ; =0x00000D28
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	ldr r0, _0223C56C ; =0x00000D38
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	ldr r7, _0223C570 ; =0x00000D14
	mov r4, #0
	add r5, r6, #0
_0223C536:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223C536
	ldr r0, _0223C574 ; =0x00000BE8
	ldr r0, [r6, r0]
	bl sub_02021964
	ldr r0, _0223C574 ; =0x00000BE8
	mov r1, #0
	str r1, [r6, r0]
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C560: .word 0x00000D24
_0223C564: .word 0x00000D34
_0223C568: .word 0x00000D28
_0223C56C: .word 0x00000D38
_0223C570: .word 0x00000D14
_0223C574: .word 0x00000BE8
	thumb_func_end ov94_0223C508

	thumb_func_start ov94_0223C578
ov94_0223C578: ; 0x0223C578
	ldrh r1, [r0, #0x3a]
	cmp r1, #0
	beq _0223C582
	sub r1, r1, #1
	strh r1, [r0, #0x3a]
_0223C582:
	bx lr
	thumb_func_end ov94_0223C578

	thumb_func_start ov94_0223C584
ov94_0223C584: ; 0x0223C584
	ldr r1, _0223C594 ; =0x000010AE
	mov r2, #1
	strh r2, [r0, r1]
	mov r2, #0
	sub r1, r1, #2
	strh r2, [r0, r1]
	bx lr
	nop
_0223C594: .word 0x000010AE
	thumb_func_end ov94_0223C584

	thumb_func_start ov94_0223C598
ov94_0223C598: ; 0x0223C598
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C5D0 ; =0x000010AE
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _0223C5CC
	ldr r0, [r4, #0]
	sub r1, r1, #1
	ldr r0, [r0, #0xc]
	bl sub_02079B54
	ldr r1, _0223C5D4 ; =0x000010AC
	ldrh r2, [r4, r1]
	add r0, r2, r0
	strh r0, [r4, r1]
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0x13
	bne _0223C5CC
	mov r2, #0
	add r0, r1, #2
	strh r2, [r4, r0]
_0223C5CC:
	pop {r4, pc}
	nop
_0223C5D0: .word 0x000010AE
_0223C5D4: .word 0x000010AC
	thumb_func_end ov94_0223C598

	thumb_func_start ov94_0223C5D8
ov94_0223C5D8: ; 0x0223C5D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C5EC ; =0x00000EFC
	mov r1, #1
	add r0, r4, r0
	bl sub_0200E7FC
	ldr r1, _0223C5F0 ; =0x0000107C
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_0223C5EC: .word 0x00000EFC
_0223C5F0: .word 0x0000107C
	thumb_func_end ov94_0223C5D8

	thumb_func_start ov94_0223C5F4
ov94_0223C5F4: ; 0x0223C5F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C60C ; =0x0000107C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223C60A
	bl sub_0200EBA0
	ldr r0, _0223C60C ; =0x0000107C
	mov r1, #0
	str r1, [r4, r0]
_0223C60A:
	pop {r4, pc}
	; .align 2, 0
_0223C60C: .word 0x0000107C
	thumb_func_end ov94_0223C5F4

	.rodata


	.global Unk_ov94_022459F8
Unk_ov94_022459F8: ; 0x022459F8
	.incbin "incbin/overlay94_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov94_02245A00
Unk_ov94_02245A00: ; 0x02245A00
	.incbin "incbin/overlay94_rodata.bin", 0x8, 0x18 - 0x8

	.global Unk_ov94_02245A10
Unk_ov94_02245A10: ; 0x02245A10
	.incbin "incbin/overlay94_rodata.bin", 0x18, 0x28 - 0x18

	.global Unk_ov94_02245A20
Unk_ov94_02245A20: ; 0x02245A20
	.incbin "incbin/overlay94_rodata.bin", 0x28, 0x28


	.data


	.global Unk_ov94_0224674C
Unk_ov94_0224674C: ; 0x0224674C
	.incbin "incbin/overlay94_data.bin", 0x34C, 0x78


	.bss


	.global Unk_ov94_02246C04
Unk_ov94_02246C04: ; 0x02246C04
	.space 0x4

	.global Unk_ov94_02246C08
Unk_ov94_02246C08: ; 0x02246C08
	.space 0x4

