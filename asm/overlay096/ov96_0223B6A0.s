	.include "macros/function.inc"
	.include "overlay096/ov96_0223B6A0.inc"

	.extern OS_IRQTable

	.text


	thumb_func_start ov96_0223B6A0
ov96_0223B6A0: ; 0x0223B6A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223B6B4
	cmp r0, #1
	beq _0223B7A8
	b _0223B7BE
_0223B6B4:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223B7C4 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0223B7C8 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r2, #5
	mov r0, #3
	mov r1, #0x44
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _0223B7CC ; =0x000012C4
	add r0, r6, #0
	mov r2, #0x44
	bl sub_0200681C
	ldr r2, _0223B7CC ; =0x000012C4
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x44
	bl sub_02018340
	str r0, [r4, #4]
	ldr r0, _0223B7D0 ; =0x0223DEEC
	add r2, sp, #0
	ldr r3, _0223B7D4 ; =0x0223DA88
	str r4, [r0, #0]
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	bl sub_02018368
	mov r0, #0xb
	mov r1, #0x20
	mov r2, #0x44
	bl sub_0200B368
	mov r1, #0xbd
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _0223B7D8 ; =0x0000029E
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x44
	bl sub_0200B144
	ldr r1, _0223B7DC ; =0x00000BD4
	ldr r2, _0223B7E0 ; =0x000002A2
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x44
	bl sub_0200B144
	ldr r1, _0223B7E4 ; =0x00000BD8
	ldr r2, _0223B7E8 ; =0x000002B7
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x44
	bl sub_0200B144
	ldr r1, _0223B7EC ; =0x00000BDC
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_0223B980
	add r0, r4, #0
	bl ov96_0223BC64
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl sub_02004550
	ldr r1, _0223B7F0 ; =0x00020020
	mov r0, #0x44
	bl sub_02018144
	str r0, [r4, #0x24]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl NNS_FndCreateExpHeapEx
	str r0, [r4, #0x28]
	ldr r1, _0223B7F4 ; =0x00000497
	mov r0, #0xb
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	str r0, [r5, #0]
	b _0223B7BE
_0223B7A8:
	bl sub_02099550
	bl sub_020995B4
	bl sub_02033478
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B7BE:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B7C4: .word 0xFFFFE0FF
_0223B7C8: .word 0x04001000
_0223B7CC: .word 0x000012C4
_0223B7D0: .word 0x0223DEEC
_0223B7D4: .word 0x0223DA88
_0223B7D8: .word 0x0000029E
_0223B7DC: .word 0x00000BD4
_0223B7E0: .word 0x000002A2
_0223B7E4: .word 0x00000BD8
_0223B7E8: .word 0x000002B7
_0223B7EC: .word 0x00000BDC
_0223B7F0: .word 0x00020020
_0223B7F4: .word 0x00000497
	thumb_func_end ov96_0223B6A0

	thumb_func_start ov96_0223B7F8
ov96_0223B7F8: ; 0x0223B7F8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	bl DWC_UpdateConnection
	bl ov96_0223B15C
	bl DWC_UpdateConnection
	ldr r1, [r4, #0]
	cmp r1, #5
	bhi _0223B8A0
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B820: ; jump table
	.short _0223B82C - _0223B820 - 2 ; case 0
	.short _0223B848 - _0223B820 - 2 ; case 1
	.short _0223B85C - _0223B820 - 2 ; case 2
	.short _0223B86A - _0223B820 - 2 ; case 3
	.short _0223B87E - _0223B820 - 2 ; case 4
	.short _0223B89C - _0223B820 - 2 ; case 5
_0223B82C:
	bl sub_020334A4
	cmp r0, #0
	beq _0223B8A0
	ldr r1, [r5, #0x28]
	ldr r0, _0223B8B0 ; =0x0223DEEC
	str r1, [r0, #4]
	ldr r0, _0223B8B4 ; =ov96_0223BC04
	ldr r1, _0223B8B8 ; =ov96_0223BC2C
	bl DWC_SetMemFunc
	mov r0, #1
	str r0, [r4, #0]
	b _0223B8A0
_0223B848:
	ldr r3, [r5, #0x10]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223B8BC ; =0x0223DCD4
	add r0, r5, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r4, #0]
	b _0223B8A0
_0223B85C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223B8A0
	mov r0, #3
	str r0, [r4, #0]
	b _0223B8A0
_0223B86A:
	ldr r3, [r5, #0x10]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223B8C0 ; =0x0223DCD8
	add r0, r5, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r4, #0]
	b _0223B8A0
_0223B87E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223B8A0
	ldr r3, [r5, #0x10]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223B8C4 ; =0x0223DCDC
	ldr r1, [r4, #0]
	ldr r2, [r2, r6]
	add r0, r5, #0
	blx r2
	str r0, [r4, #0]
	b _0223B8A0
_0223B89C:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223B8A0:
	ldr r0, _0223B8C8 ; =0x00000BF8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223B8AC
	bl sub_020219F8
_0223B8AC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223B8B0: .word 0x0223DEEC
_0223B8B4: .word ov96_0223BC04
_0223B8B8: .word ov96_0223BC2C
_0223B8BC: .word 0x0223DCD4
_0223B8C0: .word 0x0223DCD8
_0223B8C4: .word 0x0223DCDC
_0223B8C8: .word 0x00000BF8
	thumb_func_end ov96_0223B7F8

	thumb_func_start ov96_0223B8CC
ov96_0223B8CC: ; 0x0223B8CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_020181C4
	bl sub_020995C4
	bl sub_02099560
	add r0, r4, #0
	bl ov96_0223BC8C
	ldr r0, _0223B934 ; =0x00000BDC
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0223B938 ; =0x00000BD8
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0223B93C ; =0x00000BD4
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0xbd
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	add r0, r4, #0
	bl ov96_0223B99C
	bl sub_020334CC
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x44
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B934: .word 0x00000BDC
_0223B938: .word 0x00000BD8
_0223B93C: .word 0x00000BD4
	thumb_func_end ov96_0223B8CC

	thumb_func_start ov96_0223B940
ov96_0223B940: ; 0x0223B940
	push {r3, lr}
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _0223B958 ; =0x027E0000
	ldr r1, _0223B95C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	; .align 2, 0
_0223B958: .word OS_IRQTable
_0223B95C: .word 0x00003FF8
	thumb_func_end ov96_0223B940

	thumb_func_start ov96_0223B960
ov96_0223B960: ; 0x0223B960
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223B97C ; =0x0223DAA8
	add r3, sp, #0
	mov r2, #5
_0223B96A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223B96A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223B97C: .word 0x0223DAA8
	thumb_func_end ov96_0223B960

	thumb_func_start ov96_0223B980
ov96_0223B980: ; 0x0223B980
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02006840
	mov r1, #0
	str r0, [r4, #0]
	add r0, r4, #0
	add r2, r1, #0
	str r1, [r4, #0x10]
	bl ov96_0223BC5C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov96_0223B980

	thumb_func_start ov96_0223B99C
ov96_0223B99C: ; 0x0223B99C
	bx lr
	; .align 2, 0
	thumb_func_end ov96_0223B99C

	thumb_func_start ov96_0223B9A0
ov96_0223B9A0: ; 0x0223B9A0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223B9CC ; =0x0223DA98
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x44
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223B9CC: .word 0x0223DA98
	thumb_func_end ov96_0223B9A0

	thumb_func_start ov96_0223B9D0
ov96_0223B9D0: ; 0x0223B9D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r0, #0x68
	mov r1, #0x44
	bl sub_02006C24
	str r0, [sp, #0x14]
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x44
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	ldr r1, _0223BAC8 ; =0x00000BFC
	mov r0, #0xa
	add r1, r6, r1
	mov r2, #0x44
	bl sub_020095C4
	ldr r1, _0223BACC ; =0x00000BF8
	mov r2, #1
	str r0, [r6, r1]
	add r0, r1, #4
	add r0, r6, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	ldr r7, _0223BAD0 ; =0x00000D24
	mov r4, #0
	add r5, r6, #0
_0223BA20:
	mov r0, #2
	add r1, r4, #0
	mov r2, #0x44
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223BA20
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x44
	str r0, [sp, #8]
	ldr r0, _0223BAD0 ; =0x00000D24
	ldr r1, [sp, #0x14]
	ldr r0, [r6, r0]
	mov r2, #0x23
	bl sub_02009A4C
	ldr r1, _0223BAD4 ; =0x00000D34
	mov r3, #0
	str r0, [r6, r1]
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x44
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #9
	bl sub_02009B04
	ldr r1, _0223BAD8 ; =0x00000D38
	mov r2, #0x24
	str r0, [r6, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x44
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r3, #1
	bl sub_02009BC4
	ldr r1, _0223BADC ; =0x00000D3C
	mov r2, #0x25
	str r0, [r6, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x44
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x35
	lsl r1, r1, #6
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	bl sub_0200A328
	ldr r0, _0223BAD8 ; =0x00000D38
	ldr r0, [r6, r0]
	bl sub_0200A5C8
	ldr r0, [sp, #0x14]
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BAC8: .word 0x00000BFC
_0223BACC: .word 0x00000BF8
_0223BAD0: .word 0x00000D24
_0223BAD4: .word 0x00000D34
_0223BAD8: .word 0x00000D38
_0223BADC: .word 0x00000D3C
	thumb_func_end ov96_0223B9D0

	thumb_func_start ov96_0223BAE0
ov96_0223BAE0: ; 0x0223BAE0
	push {r3, r4}
	ldr r4, _0223BB08 ; =0x00000BF8
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
	mov r1, #0x44
	str r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0223BB08: .word 0x00000BF8
	thumb_func_end ov96_0223BAE0

	thumb_func_start ov96_0223BB0C
ov96_0223BB0C: ; 0x0223BB0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _0223BBBC ; =0x00000D24
	str r1, [sp, #0x10]
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r2, #0x40
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r5, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r2, _0223BBC0 ; =0x00000D64
	add r0, sp, #0x2c
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #1
	bl ov96_0223BAE0
	mov r7, #0xdd
	ldr r4, _0223BBC4 ; =0x0223DA80
	mov r6, #0
	lsl r7, r7, #4
_0223BB62:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0xdd
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xdd
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02021D6C
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _0223BB62
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	bl sub_02039734
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0223BBBC: .word 0x00000D24
_0223BBC0: .word 0x00000D64
_0223BBC4: .word 0x0223DA80
	thumb_func_end ov96_0223BB0C

	thumb_func_start ov96_0223BBC8
ov96_0223BBC8: ; 0x0223BBC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _0223BBF8 ; =0x0223DA78
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
	mov r1, #0x44
	str r1, [sp]
	add r1, r3, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223BBF8: .word 0x0223DA78
	thumb_func_end ov96_0223BBC8

	thumb_func_start ov96_0223BBFC
ov96_0223BBFC: ; 0x0223BBFC
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov96_0223BBFC

	thumb_func_start ov96_0223BC04
ov96_0223BC04: ; 0x0223BC04
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, _0223BC28 ; =0x0223DEEC
	add r1, r5, #0
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl NNS_FndAllocFromExpHeapEx
	add r4, r0, #0
	add r0, r6, #0
	bl OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223BC28: .word 0x0223DEEC
	thumb_func_end ov96_0223BC04

	thumb_func_start ov96_0223BC2C
ov96_0223BC2C: ; 0x0223BC2C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _0223BC48
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0223BC4C ; =0x0223DEEC
	add r1, r5, #0
	ldr r0, [r0, #4]
	bl NNS_FndFreeToExpHeap
	add r0, r4, #0
	bl OS_RestoreInterrupts
_0223BC48:
	pop {r3, r4, r5, pc}
	nop
_0223BC4C: .word 0x0223DEEC
	thumb_func_end ov96_0223BC2C

	thumb_func_start ov96_0223BC50
ov96_0223BC50: ; 0x0223BC50
	push {r3, lr}
	bl DWC_GetLinkLevel
	mov r1, #3
	sub r0, r1, r0
	pop {r3, pc}
	thumb_func_end ov96_0223BC50

	thumb_func_start ov96_0223BC5C
ov96_0223BC5C: ; 0x0223BC5C
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end ov96_0223BC5C

	thumb_func_start ov96_0223BC64
ov96_0223BC64: ; 0x0223BC64
	push {r4, lr}
	add r4, r0, #0
	bl ov96_0223B960
	bl ov96_0223B9A0
	add r0, r4, #0
	bl ov96_0223B9D0
	add r0, r4, #0
	bl ov96_0223BB0C
	ldr r0, _0223BC88 ; =ov96_0223B940
	add r1, r4, #0
	bl sub_02017798
	pop {r4, pc}
	nop
_0223BC88: .word ov96_0223B940
	thumb_func_end ov96_0223BC64

	thumb_func_start ov96_0223BC8C
ov96_0223BC8C: ; 0x0223BC8C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0223BCD0 ; =0x00000D34
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	ldr r0, _0223BCD4 ; =0x00000D38
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	ldr r7, _0223BCD8 ; =0x00000D24
	mov r4, #0
	add r5, r6, #0
_0223BCA6:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223BCA6
	ldr r0, _0223BCDC ; =0x00000BF8
	ldr r0, [r6, r0]
	bl sub_02021964
	ldr r0, _0223BCDC ; =0x00000BF8
	mov r1, #0
	str r1, [r6, r0]
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BCD0: .word 0x00000D34
_0223BCD4: .word 0x00000D38
_0223BCD8: .word 0x00000D24
_0223BCDC: .word 0x00000BF8
	thumb_func_end ov96_0223BC8C

	.rodata


	.global Unk_ov96_0223DA78
Unk_ov96_0223DA78: ; 0x0223DA78
	.incbin "incbin/overlay96_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov96_0223DA80
Unk_ov96_0223DA80: ; 0x0223DA80
	.incbin "incbin/overlay96_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov96_0223DA88
Unk_ov96_0223DA88: ; 0x0223DA88
	.incbin "incbin/overlay96_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov96_0223DA98
Unk_ov96_0223DA98: ; 0x0223DA98
	.incbin "incbin/overlay96_rodata.bin", 0x20, 0x30 - 0x20

	.global Unk_ov96_0223DAA8
Unk_ov96_0223DAA8: ; 0x0223DAA8
	.incbin "incbin/overlay96_rodata.bin", 0x30, 0x28


	.data


	.global Unk_ov96_0223DCD4
Unk_ov96_0223DCD4: ; 0x0223DCD4
	.incbin "incbin/overlay96_data.bin", 0x174, 0xC


	.bss


	.global Unk_ov96_0223DEEC
Unk_ov96_0223DEEC: ; 0x0223DEEC
	.space 0x4

	.global Unk_ov96_0223DEF0
Unk_ov96_0223DEF0: ; 0x0223DEF0
	.space 0x4

