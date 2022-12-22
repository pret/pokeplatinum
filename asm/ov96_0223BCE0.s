	.include "macros/function.inc"
	.include "include/ov96_0223BCE0.inc"

	

	.text


	thumb_func_start ov96_0223BCE0
ov96_0223BCE0: ; 0x0223BCE0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov96_0223C358
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x44
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #4]
	bl ov96_0223BE38
	add r0, r4, #0
	bl ov96_0223BF40
	add r0, r4, #0
	bl ov96_0223C1FC
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_02038438
	add r0, r4, #0
	bl ov96_0223D948
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0202D2C0
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0, #0]
	ldr r0, _0223BDB0 ; =0x00000F0C
	mov r1, #0
	str r1, [r4, r0]
	bl ov4_021D7A8C
	cmp r0, #0
	bne _0223BDA4
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0223BD9E
	ldr r0, _0223BDB4 ; =0x00000F0F
	ldr r1, _0223BDB8 ; =0x00000BD8
	str r0, [sp]
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #2
	bl ov96_0223BBFC
	add r0, r4, #0
	bl ov96_0223D978
	b _0223BDA8
_0223BD9E:
	mov r0, #0
	str r0, [r4, #0x1c]
	b _0223BDA8
_0223BDA4:
	mov r0, #0x33
	str r0, [r4, #0x1c]
_0223BDA8:
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223BDB0: .word 0x00000F0C
_0223BDB4: .word 0x00000F0F
_0223BDB8: .word 0x00000BD8
	thumb_func_end ov96_0223BCE0

	thumb_func_start ov96_0223BDBC
ov96_0223BDBC: ; 0x0223BDBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_0223BC50
	bl sub_020397B0
	ldr r4, [r5, #0x1c]
	ldr r1, _0223BDE8 ; =0x0223DCE0
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x1c]
	cmp r4, r1
	beq _0223BDE6
	mov r1, #0xf9
	mov r2, #0
	lsl r1, r1, #4
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_0223BDE6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BDE8: .word 0x0223DCE0
	thumb_func_end ov96_0223BDBC

	thumb_func_start ov96_0223BDEC
ov96_0223BDEC: ; 0x0223BDEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223BE30 ; =0x00000F98
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BE06
	bl sub_0200DA58
	ldr r0, _0223BE30 ; =0x00000F98
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_0223BE06:
	add r0, r4, #0
	bl ov96_0223C3B0
	add r0, r4, #0
	bl ov96_0223C314
	ldr r0, [r4, #4]
	bl ov96_0223BF1C
	ldr r0, _0223BE34 ; =0x00000F9C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _0223BE2A
	mov r0, #5
	pop {r4, pc}
_0223BE2A:
	mov r0, #1
	pop {r4, pc}
	nop
_0223BE30: .word 0x00000F98
_0223BE34: .word 0x00000F9C
	thumb_func_end ov96_0223BDEC

	thumb_func_start ov96_0223BE38
ov96_0223BE38: ; 0x0223BE38
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _0223BF0C ; =0x0223DB08
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _0223BF10 ; =0x0223DAEC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r5, _0223BF14 ; =0x0223DB24
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _0223BF18 ; =0x0223DAD0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x44
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x44
	bl sub_02019690
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_0223BF0C: .word 0x0223DB08
_0223BF10: .word 0x0223DAEC
_0223BF14: .word 0x0223DB24
_0223BF18: .word 0x0223DAD0
	thumb_func_end ov96_0223BE38

	thumb_func_start ov96_0223BF1C
ov96_0223BF1C: ; 0x0223BF1C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov96_0223BF1C

	thumb_func_start ov96_0223BF40
ov96_0223BF40: ; 0x0223BF40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	ldr r4, [r0, #4]
	mov r0, #0x5c
	mov r1, #0x44
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x44
	str r1, [sp, #4]
	mov r1, #3
	add r3, r2, #0
	str r0, [sp, #0x2c]
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	mov r0, #0x44
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r1, #3
	mov r2, #4
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x44
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x44
	bl sub_02002E98
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x44
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x44
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x44
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #2
	add r2, r4, #0
	mov r3, #1
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x44
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #5
	add r2, r4, #0
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x44
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	add r2, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x44
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #0xb
	add r2, r4, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r2, #0xcb
	ldr r1, _0223C158 ; =0x00000F98
	ldr r0, [sp, #0x10]
	lsl r2, r2, #2
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x2c]
	mov r1, #4
	add r2, sp, #0x38
	mov r3, #0x44
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	mov r2, #0xfa
	ldr r1, [sp, #0x10]
	lsl r2, r2, #4
	add r1, r1, r2
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl MIi_CpuCopy16
	ldr r0, [sp, #0x38]
	ldr r2, _0223C15C ; =0x00001020
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, _0223C15C ; =0x00001020
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	sub r1, #0x80
	add r0, r0, r1
	str r0, [sp, #0x14]
_0223C092:
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r1, r0, #5
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x30]
_0223C0A4:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _0223C0AE
	bl sub_02022974
_0223C0AE:
	ldr r0, [sp, #0x30]
	mov r7, #1
	add r4, r0, #2
	ldr r0, [sp, #0x18]
	add r6, r0, #2
	ldr r0, [sp, #0x14]
	add r5, r0, #2
	ldr r0, [sp, #0x20]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_0223C0C6:
	mov r0, #0xfa
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_0200393C
	add r7, r7, #1
	add r4, r4, #2
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _0223C0C6
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _0223C112
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0223C0A4
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0223C0A4
_0223C112:
	ldr r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0223C092
	ldr r1, _0223C15C ; =0x00001020
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	bl DC_FlushRange
	ldr r1, _0223C160 ; =0x00000F9C
	ldr r0, [sp, #0x10]
	mov r2, #1
	str r2, [r0, r1]
	sub r2, r1, #4
	ldr r1, [sp, #0x10]
	ldr r0, _0223C164 ; =ov96_0223C168
	add r1, r1, r2
	mov r2, #0x14
	bl sub_0200DA04
	ldr r2, _0223C158 ; =0x00000F98
	ldr r1, [sp, #0x10]
	str r0, [r1, r2]
	ldr r0, [sp, #0x2c]
	bl sub_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0223C158: .word 0x00000F98
_0223C15C: .word 0x00001020
_0223C160: .word 0x00000F9C
_0223C164: .word ov96_0223C168
	thumb_func_end ov96_0223BF40

	thumb_func_start ov96_0223C168
ov96_0223C168: ; 0x0223C168
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223C1F0
	ldr r0, _0223C1F4 ; =0x0000032B
	mov r1, #1
	ldrb r2, [r4, r0]
	eor r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _0223C1F0
	sub r0, r0, #3
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
	mov r0, #0xca
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
	ldr r0, _0223C1F8 ; =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0223C1D4
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _0223C1F0
	mov r2, #0x13
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0223C1D4:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0223C1F0
	mov r2, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eor r1, r2
	strb r1, [r4, r0]
_0223C1F0:
	pop {r4, pc}
	nop
_0223C1F4: .word 0x0000032B
_0223C1F8: .word 0x0000032A
	thumb_func_end ov96_0223C168

	thumb_func_start ov96_0223C1FC
ov96_0223C1FC: ; 0x0223C1FC
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xa4
	ldr r1, _0223C2F8 ; =0x00000E18
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0223C2F8 ; =0x00000E18
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	ldr r1, _0223C2FC ; =0x00000DF8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x1a
	bl sub_0201A7E8
	ldr r0, _0223C2FC ; =0x00000DF8
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x9c
	ldr r1, _0223C300 ; =0x00000DE8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x1a
	bl sub_0201A7E8
	ldr r0, _0223C300 ; =0x00000DE8
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r1, _0223C304 ; =0x00000E08
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #4
	bl sub_0201A7E8
	ldr r0, _0223C304 ; =0x00000E08
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r3, #1
	ldr r0, _0223C308 ; =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _0223C30C ; =0x00000BE4
	ldr r0, _0223C304 ; =0x00000E08
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov96_0223D8A4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _0223C310 ; =0x00000DD8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _0223C310 ; =0x00000DD8
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0223C2F8: .word 0x00000E18
_0223C2FC: .word 0x00000DF8
_0223C300: .word 0x00000DE8
_0223C304: .word 0x00000E08
_0223C308: .word 0x000F0E00
_0223C30C: .word 0x00000BE4
_0223C310: .word 0x00000DD8
	thumb_func_end ov96_0223C1FC

	thumb_func_start ov96_0223C314
ov96_0223C314: ; 0x0223C314
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C344 ; =0x00000DD8
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223C348 ; =0x00000E08
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223C34C ; =0x00000DE8
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223C350 ; =0x00000DF8
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223C354 ; =0x00000E18
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_0223C344: .word 0x00000DD8
_0223C348: .word 0x00000E08
_0223C34C: .word 0x00000DE8
_0223C350: .word 0x00000DF8
_0223C354: .word 0x00000E18
	thumb_func_end ov96_0223C314

	thumb_func_start ov96_0223C358
ov96_0223C358: ; 0x0223C358
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x44
	bl sub_02023790
	mov r1, #0xbe
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #0x44
	bl sub_02023790
	ldr r1, _0223C3A4 ; =0x00000BE8
	str r0, [r4, r1]
	mov r0, #3
	mov r1, #0x44
	bl sub_02023790
	ldr r1, _0223C3A8 ; =0x00000BEC
	str r0, [r4, r1]
	sub r1, #0x18
	ldr r0, [r4, r1]
	mov r1, #0xa
	bl sub_0200B1EC
	ldr r1, _0223C3AC ; =0x00000BE4
	str r0, [r4, r1]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x44
	bl sub_02023790
	mov r1, #0xbf
	lsl r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0223C3A4: .word 0x00000BE8
_0223C3A8: .word 0x00000BEC
_0223C3AC: .word 0x00000BE4
	thumb_func_end ov96_0223C358

	thumb_func_start ov96_0223C3B0
ov96_0223C3B0: ; 0x0223C3B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xbf
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223C3E4 ; =0x00000BE4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223C3E8 ; =0x00000BEC
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223C3EC ; =0x00000BE8
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbe
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	nop
_0223C3E4: .word 0x00000BE4
_0223C3E8: .word 0x00000BEC
_0223C3EC: .word 0x00000BE8
	thumb_func_end ov96_0223C3B0

	thumb_func_start ov96_0223C3F0
ov96_0223C3F0: ; 0x0223C3F0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C418 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223C41C ; =0x00000BDC
	mov r2, #0x11
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #1
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C418: .word 0x00000F0F
_0223C41C: .word 0x00000BDC
	thumb_func_end ov96_0223C3F0

	thumb_func_start ov96_0223C420
ov96_0223C420: ; 0x0223C420
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0223C47C ; =0x00000F08
	mov r1, #0x44
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223C474
	sub r1, r1, #1
	cmp r0, r1
	bne _0223C452
	bl sub_0203848C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_0223BC5C
	mov r0, #0x2e
	str r0, [r4, #0x1c]
	b _0223C474
_0223C452:
	ldr r0, _0223C480 ; =0x00000F0F
	ldr r1, _0223C484 ; =0x00000BD8
	str r0, [sp]
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #2
	bl ov96_0223BBFC
	add r0, r4, #0
	bl ov96_0223D978
_0223C474:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C47C: .word 0x00000F08
_0223C480: .word 0x00000F0F
_0223C484: .word 0x00000BD8
	thumb_func_end ov96_0223C420

	thumb_func_start ov96_0223C488
ov96_0223C488: ; 0x0223C488
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C4B0 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223C4B4 ; =0x00000BD8
	mov r2, #0xc
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #0x34
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C4B0: .word 0x00000F0F
_0223C4B4: .word 0x00000BD8
	thumb_func_end ov96_0223C488

	thumb_func_start ov96_0223C4B8
ov96_0223C4B8: ; 0x0223C4B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C50C ; =0x00000F08
	mov r1, #0x44
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223C508
	sub r1, r1, #1
	cmp r0, r1
	bne _0223C4E8
	bl ov4_021D7A8C
	cmp r0, #0
	bne _0223C4E2
	mov r0, #0
	str r0, [r4, #0x1c]
	b _0223C508
_0223C4E2:
	mov r0, #0x29
	str r0, [r4, #0x1c]
	b _0223C508
_0223C4E8:
	bl ov4_021D7A8C
	cmp r0, #0
	bne _0223C4FE
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_0223BC5C
	mov r0, #0x2e
	b _0223C500
_0223C4FE:
	mov r0, #0x29
_0223C500:
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	mov r1, #1
	str r1, [r0, #0x20]
_0223C508:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223C50C: .word 0x00000F08
	thumb_func_end ov96_0223C4B8

	thumb_func_start ov96_0223C510
ov96_0223C510: ; 0x0223C510
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x2c
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl ov4_021D78C8
	mov r0, #2
	bl ov4_021D792C
	bl ov4_021D797C
	mov r0, #3
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov96_0223C510

	thumb_func_start ov96_0223C530
ov96_0223C530: ; 0x0223C530
	push {r3, r4, lr}
	sub sp, #0x44
	add r4, r0, #0
	bl ov4_021D7AE4
	bl ov4_021D7A8C
	cmp r0, #0
	beq _0223C5B0
	bl ov4_021D7BFC
	cmp r0, #8
	bhi _0223C58E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C556: ; jump table
	.short _0223C58E - _0223C556 - 2 ; case 0
	.short _0223C58E - _0223C556 - 2 ; case 1
	.short _0223C58E - _0223C556 - 2 ; case 2
	.short _0223C58E - _0223C556 - 2 ; case 3
	.short _0223C5A6 - _0223C556 - 2 ; case 4
	.short _0223C58E - _0223C556 - 2 ; case 5
	.short _0223C58E - _0223C556 - 2 ; case 6
	.short _0223C568 - _0223C556 - 2 ; case 7
	.short _0223C58E - _0223C556 - 2 ; case 8
_0223C568:
	add r0, sp, #4
	bl ov4_021D75D4
	mov r1, #0xf1
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	add r0, r1, #4
	str r2, [r4, r0]
	bl ov4_021D76E8
	bl ov4_021D7DB0
	add r0, r4, #0
	bl ov96_0223D99C
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _0223C5B0
_0223C58E:
	add r0, sp, #0
	bl ov4_021D75D4
	add r0, r4, #0
	bl ov96_0223D99C
	mov r1, #0x35
	str r1, [r4, #0x1c]
	ldr r0, _0223C5B8 ; =0x00000F1C
	sub r1, #0x37
	str r1, [r4, r0]
	b _0223C5B0
_0223C5A6:
	add r0, sp, #8
	bl ov4_021D7EB8
	mov r0, #4
	str r0, [r4, #0x1c]
_0223C5B0:
	mov r0, #3
	add sp, #0x44
	pop {r3, r4, pc}
	nop
_0223C5B8: .word 0x00000F1C
	thumb_func_end ov96_0223C530

	thumb_func_start ov96_0223C5BC
ov96_0223C5BC: ; 0x0223C5BC
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D81DC
	mov r0, #5
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov96_0223C5BC

	thumb_func_start ov96_0223C5CC
ov96_0223C5CC: ; 0x0223C5CC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov4_021D82A0
	cmp r0, #5
	bhi _0223C672
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C5E6: ; jump table
	.short _0223C5F8 - _0223C5E6 - 2 ; case 0
	.short _0223C672 - _0223C5E6 - 2 ; case 1
	.short _0223C672 - _0223C5E6 - 2 ; case 2
	.short _0223C5F2 - _0223C5E6 - 2 ; case 3
	.short _0223C5F8 - _0223C5E6 - 2 ; case 4
	.short _0223C5F8 - _0223C5E6 - 2 ; case 5
_0223C5F2:
	mov r0, #6
	str r0, [r4, #0x1c]
	b _0223C672
_0223C5F8:
	add r0, r4, #0
	bl ov96_0223D99C
	add r0, sp, #4
	add r1, sp, #0
	bl ov4_021D75F4
	mov r1, #0xf1
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	add r0, r1, #4
	str r2, [r4, r0]
	bl ov4_021D76E8
	bl ov4_021D7DB0
	mov r0, #0x37
	str r0, [r4, #0x1c]
	ldr r1, [sp]
	cmp r1, #7
	bhi _0223C660
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C630: ; jump table
	.short _0223C660 - _0223C630 - 2 ; case 0
	.short _0223C640 - _0223C630 - 2 ; case 1
	.short _0223C640 - _0223C630 - 2 ; case 2
	.short _0223C652 - _0223C630 - 2 ; case 3
	.short _0223C644 - _0223C630 - 2 ; case 4
	.short _0223C65C - _0223C630 - 2 ; case 5
	.short _0223C64E - _0223C630 - 2 ; case 6
	.short _0223C65C - _0223C630 - 2 ; case 7
_0223C640:
	str r0, [r4, #0x1c]
	b _0223C660
_0223C644:
	bl ov4_021E55B0
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _0223C660
_0223C64E:
	str r0, [r4, #0x1c]
	b _0223C660
_0223C652:
	bl ov4_021D8E8C
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _0223C660
_0223C65C:
	bl sub_02038A0C
_0223C660:
	ldr r1, [sp, #4]
	ldr r0, _0223C678 ; =0xFFFFB1E0
	cmp r1, r0
	bge _0223C672
	ldr r0, _0223C67C ; =0xFFFF8AD1
	cmp r1, r0
	blt _0223C672
	mov r0, #0x37
	str r0, [r4, #0x1c]
_0223C672:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0223C678: .word 0xFFFFB1E0
_0223C67C: .word 0xFFFF8AD1
	thumb_func_end ov96_0223C5CC

	thumb_func_start ov96_0223C680
ov96_0223C680: ; 0x0223C680
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_02025D74
	cmp r0, #0
	bne _0223C69A
	ldr r1, [r5, #0]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x1c]
	bl sub_02025D78
_0223C69A:
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_02025D74
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x14]
	bl DWC_CreateFriendKey
	add r3, r0, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl ov96_0223B140
	mov r0, #7
	str r0, [r5, #0x1c]
	mov r0, #3
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_0223C680

	thumb_func_start ov96_0223C6C0
ov96_0223C6C0: ; 0x0223C6C0
	push {r4, lr}
	add r4, r0, #0
	bl ov96_0223B530
	mov r0, #8
	str r0, [r4, #0x1c]
	ldr r0, _0223C6D8 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_0223C6D8: .word 0x00000F94
	thumb_func_end ov96_0223C6C0

	thumb_func_start ov96_0223C6DC
ov96_0223C6DC: ; 0x0223C6DC
	push {r4, lr}
	add r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223C794
	bl ov96_0223B3F4
	ldr r1, _0223C7B0 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #9
	bhi _0223C788
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223C704: ; jump table
	.short _0223C768 - _0223C704 - 2 ; case 0
	.short _0223C778 - _0223C704 - 2 ; case 1
	.short _0223C788 - _0223C704 - 2 ; case 2
	.short _0223C768 - _0223C704 - 2 ; case 3
	.short _0223C788 - _0223C704 - 2 ; case 4
	.short _0223C778 - _0223C704 - 2 ; case 5
	.short _0223C758 - _0223C704 - 2 ; case 6
	.short _0223C718 - _0223C704 - 2 ; case 7
	.short _0223C748 - _0223C704 - 2 ; case 8
	.short _0223C758 - _0223C704 - 2 ; case 9
_0223C718:
	add r0, r4, #0
	bl ov96_0223D99C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0223C730
	cmp r0, #1
	beq _0223C73C
	cmp r0, #2
	beq _0223C742
	b _0223C7AA
_0223C730:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xd
	bl ov96_0223BBFC
	b _0223C7AA
_0223C73C:
	mov r0, #0x19
	str r0, [r4, #0x1c]
	b _0223C7AA
_0223C742:
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	b _0223C7AA
_0223C748:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C7AA
_0223C758:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C7AA
_0223C768:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C7AA
_0223C778:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C7AA
_0223C788:
	add r0, r4, #0
	bl ov96_0223D99C
	bl sub_02038A0C
	b _0223C7AA
_0223C794:
	ldr r0, _0223C7B0 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223C7AA
	bl sub_02038A0C
_0223C7AA:
	mov r0, #3
	pop {r4, pc}
	nop
_0223C7B0: .word 0x00000F94
	thumb_func_end ov96_0223C6DC

	thumb_func_start ov96_0223C7B4
ov96_0223C7B4: ; 0x0223C7B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _0223C7E0 ; =0x00000F24
	ldr r0, [r0, #0xc]
	add r1, r4, r1
	bl sub_02030E78
	ldr r1, _0223C7E0 ; =0x00000F24
	add r0, r4, r1
	add r1, #0x64
	add r1, r4, r1
	bl ov96_0223B574
	mov r0, #0xa
	str r0, [r4, #0x1c]
	ldr r0, _0223C7E4 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_0223C7E0: .word 0x00000F24
_0223C7E4: .word 0x00000F94
	thumb_func_end ov96_0223C7B4

	thumb_func_start ov96_0223C7E8
ov96_0223C7E8: ; 0x0223C7E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	bne _0223C7F6
	b _0223C8FE
_0223C7F6:
	bl ov96_0223B3F4
	add r5, r0, #0
	ldr r0, _0223C918 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	add r1, r5, #7
	cmp r1, #9
	bhi _0223C8F2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C814: ; jump table
	.short _0223C8D2 - _0223C814 - 2 ; case 0
	.short _0223C8E2 - _0223C814 - 2 ; case 1
	.short _0223C8F2 - _0223C814 - 2 ; case 2
	.short _0223C8D2 - _0223C814 - 2 ; case 3
	.short _0223C8F2 - _0223C814 - 2 ; case 4
	.short _0223C8E2 - _0223C814 - 2 ; case 5
	.short _0223C8C2 - _0223C814 - 2 ; case 6
	.short _0223C828 - _0223C814 - 2 ; case 7
	.short _0223C8B2 - _0223C814 - 2 ; case 8
	.short _0223C8C2 - _0223C814 - 2 ; case 9
_0223C828:
	add r0, r4, #0
	bl ov96_0223D99C
	ldr r0, _0223C91C ; =0x00000F88
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223C840
	cmp r1, #1
	beq _0223C896
	cmp r1, #2
	beq _0223C896
	b _0223C8A6
_0223C840:
	add r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #3
	bhi _0223C914
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C854: ; jump table
	.short _0223C85C - _0223C854 - 2 ; case 0
	.short _0223C886 - _0223C854 - 2 ; case 1
	.short _0223C886 - _0223C854 - 2 ; case 2
	.short _0223C886 - _0223C854 - 2 ; case 3
_0223C85C:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0223C86E
	cmp r0, #1
	beq _0223C87A
	cmp r0, #2
	beq _0223C880
	b _0223C914
_0223C86E:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xd
	bl ov96_0223BBFC
	b _0223C914
_0223C87A:
	mov r0, #0x19
	str r0, [r4, #0x1c]
	b _0223C914
_0223C880:
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	b _0223C914
_0223C886:
	sub r0, #0x6c
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C896:
	ldr r0, _0223C920 ; =0x00000F1C
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8A6:
	add r0, r4, #0
	bl ov96_0223D99C
	bl sub_02038A0C
	b _0223C914
_0223C8B2:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8C2:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8D2:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8E2:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8F2:
	add r0, r4, #0
	bl ov96_0223D99C
	bl sub_02038A0C
	b _0223C914
_0223C8FE:
	ldr r0, _0223C918 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223C914
	bl sub_02038A0C
_0223C914:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C918: .word 0x00000F94
_0223C91C: .word 0x00000F88
_0223C920: .word 0x00000F1C
	thumb_func_end ov96_0223C7E8

	thumb_func_start ov96_0223C924
ov96_0223C924: ; 0x0223C924
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl ov96_0223B400
	mov r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, _0223C944 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov96_0223D978
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223C944: .word 0x00000F94
	thumb_func_end ov96_0223C924

	thumb_func_start ov96_0223C948
ov96_0223C948: ; 0x0223C948
	push {r4, lr}
	add r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223C9DA
	bl ov96_0223B3F4
	ldr r1, _0223C9F4 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #6
	bhi _0223C9C4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223C970: ; jump table
	.short _0223C9A6 - _0223C970 - 2 ; case 0
	.short _0223C99C - _0223C970 - 2 ; case 1
	.short _0223C9B0 - _0223C970 - 2 ; case 2
	.short _0223C9A6 - _0223C970 - 2 ; case 3
	.short _0223C992 - _0223C970 - 2 ; case 4
	.short _0223C988 - _0223C970 - 2 ; case 5
	.short _0223C97E - _0223C970 - 2 ; case 6
_0223C97E:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C988:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C992:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C99C:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C9A6:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C9B0:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	bl sub_02038A0C
	b _0223C9D2
_0223C9C4:
	cmp r0, #0
	ble _0223C9D2
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1, #0]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223C9D2:
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223C9F0
_0223C9DA:
	ldr r0, _0223C9F4 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223C9F0
	bl sub_02038A0C
_0223C9F0:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223C9F4: .word 0x00000F94
	thumb_func_end ov96_0223C948

	thumb_func_start ov96_0223C9F8
ov96_0223C9F8: ; 0x0223C9F8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CA20 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CA24 ; =0x00000BD4
	mov r2, #0
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0xe
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CA20: .word 0x00000F0F
_0223CA24: .word 0x00000BD4
	thumb_func_end ov96_0223C9F8

	thumb_func_start ov96_0223CA28
ov96_0223CA28: ; 0x0223CA28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CA68 ; =0x00000DF8
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x1f
	mov r3, #0xe
	bl sub_0200DC48
	ldr r1, _0223CA6C ; =0x00000BE8
	add r2, r4, #0
	ldr r0, _0223CA68 ; =0x00000DF8
	add r2, #0x9c
	ldr r1, [r4, r1]
	ldr r2, [r2, #0]
	add r0, r4, r0
	mov r3, #3
	bl ov96_0223D90C
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov96_0223D950
	ldr r0, _0223CA68 ; =0x00000DF8
	add r0, r4, r0
	bl sub_0201A954
	mov r0, #0xf
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223CA68: .word 0x00000DF8
_0223CA6C: .word 0x00000BE8
	thumb_func_end ov96_0223CA28

	thumb_func_start ov96_0223CA70
ov96_0223CA70: ; 0x0223CA70
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r2, _0223CB6C ; =0x021BF67C
	mov r1, #0x40
	ldr r3, [r2, #0x4c]
	add r4, r0, #0
	tst r1, r3
	beq _0223CABE
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r1, r0
	ble _0223CAA4
	add r0, r4, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0, #0]
_0223CAA4:
	ldr r0, _0223CB70 ; =0x00000DF8
	ldr r1, _0223CB74 ; =0x00000BE8
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x9c
	ldr r2, [r4, #0]
	mov r3, #3
	bl ov96_0223D90C
	ldr r0, _0223CB78 ; =0x000005DC
	bl sub_02005748
	b _0223CB64
_0223CABE:
	mov r1, #0x80
	tst r1, r3
	beq _0223CB00
	add r0, #0x9c
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #1
	bge _0223CAE6
	add r0, r4, #0
	add r0, #0x98
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0, #0]
_0223CAE6:
	ldr r0, _0223CB70 ; =0x00000DF8
	ldr r1, _0223CB74 ; =0x00000BE8
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x9c
	ldr r2, [r4, #0]
	mov r3, #3
	bl ov96_0223D90C
	ldr r0, _0223CB78 ; =0x000005DC
	bl sub_02005748
	b _0223CB64
_0223CB00:
	ldr r2, [r2, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0223CB4C
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov4_021D806C
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x94
	add r2, #0x9c
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r0, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #0
	bl sub_0202D558
	cmp r0, #0
	beq _0223CB36
	mov r0, #0x14
	b _0223CB38
_0223CB36:
	mov r0, #0x10
_0223CB38:
	mov r1, #0
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_0223D950
	ldr r0, _0223CB78 ; =0x000005DC
	bl sub_02005748
	b _0223CB64
_0223CB4C:
	mov r1, #2
	tst r1, r2
	beq _0223CB64
	mov r1, #0
	add r2, r1, #0
	bl ov96_0223D950
	mov r0, #0x15
	str r0, [r4, #0x1c]
	ldr r0, _0223CB78 ; =0x000005DC
	bl sub_02005748
_0223CB64:
	mov r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_0223CB6C: .word 0x021BF67C
_0223CB70: .word 0x00000DF8
_0223CB74: .word 0x00000BE8
_0223CB78: .word 0x000005DC
	thumb_func_end ov96_0223CA70

	thumb_func_start ov96_0223CB7C
ov96_0223CB7C: ; 0x0223CB7C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xbd
	add r2, r4, #0
	lsl r0, r0, #4
	add r2, #0x9c
	ldr r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r3, #2
	mov r0, #0xbd
	add r2, r4, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r0, r0, #4
	add r2, #0x94
	ldr r0, [r4, r0]
	ldr r2, [r2, #0]
	bl sub_0200B60C
	ldr r0, _0223CBE4 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, _0223CBE8 ; =0x00000BD4
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r3, r2, #0
	bl ov96_0223D750
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x11
	bl ov96_0223BBFC
	add r4, #0xa0
	ldr r2, _0223CBEC ; =0x00000A38
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0223CBE4: .word 0x00000F0F
_0223CBE8: .word 0x00000BD4
_0223CBEC: .word 0x00000A38
	thumb_func_end ov96_0223CB7C

	thumb_func_start ov96_0223CBF0
ov96_0223CBF0: ; 0x0223CBF0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CC18 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CC1C ; =0x00000BD4
	mov r2, #2
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D750
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0xd
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CC18: .word 0x00000F0F
_0223CC1C: .word 0x00000BD4
	thumb_func_end ov96_0223CBF0

	thumb_func_start ov96_0223CC20
ov96_0223CC20: ; 0x0223CC20
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x9c
	add r2, r4, #0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, #0xa0
	bl ov96_0223B450
	add r0, r4, #0
	bl ov96_0223D978
	mov r0, #0x12
	str r0, [r4, #0x1c]
	ldr r0, _0223CC4C ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_0223CC4C: .word 0x00000F94
	thumb_func_end ov96_0223CC20

	thumb_func_start ov96_0223CC50
ov96_0223CC50: ; 0x0223CC50
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223CD3E
	bl ov96_0223B3F4
	ldr r1, _0223CD5C ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _0223CD54
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223CC7A: ; jump table
	.short _0223CD1A - _0223CC7A - 2 ; case 0
	.short _0223CD0A - _0223CC7A - 2 ; case 1
	.short _0223CD2A - _0223CC7A - 2 ; case 2
	.short _0223CCFA - _0223CC7A - 2 ; case 3
	.short _0223CCFA - _0223CC7A - 2 ; case 4
	.short _0223CCEA - _0223CC7A - 2 ; case 5
	.short _0223CCDA - _0223CC7A - 2 ; case 6
	.short _0223CC8A - _0223CC7A - 2 ; case 7
_0223CC8A:
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0x90
	add r3, #0x9c
	ldr r0, [r4, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	add r1, #0xa0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202D5F8
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x13
	bl ov96_0223BBFC
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov4_021D806C
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x94
	add r4, #0x9c
	ldr r1, [r1, #0]
	ldr r2, [r4, #0]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r0, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #0
	bl sub_0202D4B0
	b _0223CD54
_0223CCDA:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CCEA:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CCFA:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0xb
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CD0A:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CD1A:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CD2A:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	bl sub_02038A0C
	b _0223CD54
_0223CD3E:
	ldr r0, _0223CD5C ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223CD54
	bl sub_02038A0C
_0223CD54:
	mov r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_0223CD5C: .word 0x00000F94
	thumb_func_end ov96_0223CC50

	thumb_func_start ov96_0223CD60
ov96_0223CD60: ; 0x0223CD60
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CD94 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CD98 ; =0x00000BD4
	mov r2, #3
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov96_0223BBFC
	add r0, r4, #0
	bl ov96_0223D99C
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CD94: .word 0x00000F0F
_0223CD98: .word 0x00000BD4
	thumb_func_end ov96_0223CD60

	thumb_func_start ov96_0223CD9C
ov96_0223CD9C: ; 0x0223CD9C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CDC8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CDCC ; =0x00000BD4
	mov r2, #7
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x1a
	bl ov96_0223BBFC
	add r0, r4, #0
	bl ov96_0223D978
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223CDC8: .word 0x00000F0F
_0223CDCC: .word 0x00000BD4
	thumb_func_end ov96_0223CD9C

	thumb_func_start ov96_0223CDD0
ov96_0223CDD0: ; 0x0223CDD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0202D3A0
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, sp, #0
	ldr r0, [r0, #4]
	bl sub_0202D628
	ldr r0, [r5, #0]
	ldr r2, _0223CE14 ; =0x00000AD8
	ldr r0, [r0, #0xc]
	mov r1, #1
	add r2, r5, r2
	bl sub_02073700
	add r1, sp, #0
	ldrb r0, [r1]
	ldr r3, _0223CE14 ; =0x00000AD8
	ldrb r1, [r1, #1]
	add r2, r4, #0
	add r3, r5, r3
	bl ov96_0223B4B0
	mov r0, #0x1b
	str r0, [r5, #0x1c]
	ldr r0, _0223CE18 ; =0x00000F94
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223CE14: .word 0x00000AD8
_0223CE18: .word 0x00000F94
	thumb_func_end ov96_0223CDD0

	thumb_func_start ov96_0223CE1C
ov96_0223CE1C: ; 0x0223CE1C
	push {r4, lr}
	add r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223CED0
	bl ov96_0223B3F4
	ldr r1, _0223CEEC ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _0223CEE6
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223CE44: ; jump table
	.short _0223CEAC - _0223CE44 - 2 ; case 0
	.short _0223CE9C - _0223CE44 - 2 ; case 1
	.short _0223CEBC - _0223CE44 - 2 ; case 2
	.short _0223CEAC - _0223CE44 - 2 ; case 3
	.short _0223CE8C - _0223CE44 - 2 ; case 4
	.short _0223CE7C - _0223CE44 - 2 ; case 5
	.short _0223CE6C - _0223CE44 - 2 ; case 6
	.short _0223CE54 - _0223CE44 - 2 ; case 7
_0223CE54:
	ldr r0, [r4, #0]
	mov r1, #5
	ldr r0, [r0, #0]
	mov r2, #2
	bl sub_0202D414
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x1c
	bl ov96_0223BBFC
	b _0223CEE6
_0223CE6C:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CE7C:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CE8C:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CE9C:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CEAC:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CEBC:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	bl sub_02038A0C
	b _0223CEE6
_0223CED0:
	ldr r0, _0223CEEC ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223CEE6
	bl sub_02038A0C
_0223CEE6:
	mov r0, #3
	pop {r4, pc}
	nop
_0223CEEC: .word 0x00000F94
	thumb_func_end ov96_0223CE1C

	thumb_func_start ov96_0223CEF0
ov96_0223CEF0: ; 0x0223CEF0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CF24 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CF28 ; =0x00000BD4
	mov r2, #8
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov96_0223BBFC
	add r0, r4, #0
	bl ov96_0223D99C
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CF24: .word 0x00000F0F
_0223CF28: .word 0x00000BD4
	thumb_func_end ov96_0223CEF0

	thumb_func_start ov96_0223CF2C
ov96_0223CF2C: ; 0x0223CF2C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CF54 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CF58 ; =0x00000BD4
	mov r2, #5
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x1e
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CF54: .word 0x00000F0F
_0223CF58: .word 0x00000BD4
	thumb_func_end ov96_0223CF2C

	thumb_func_start ov96_0223CF5C
ov96_0223CF5C: ; 0x0223CF5C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	add r0, #0x94
	str r1, [r0, #0]
	ldr r0, _0223CFA4 ; =0x00000DE8
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x1f
	mov r3, #0xe
	bl sub_0200DC48
	ldr r1, _0223CFA8 ; =0x00000BEC
	add r2, r4, #0
	ldr r0, _0223CFA4 ; =0x00000DE8
	add r2, #0x94
	ldr r1, [r4, r1]
	ldr r2, [r2, #0]
	add r0, r4, r0
	mov r3, #2
	bl ov96_0223D90C
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_0223D950
	ldr r0, _0223CFA4 ; =0x00000DE8
	add r0, r4, r0
	bl sub_0201A954
	mov r0, #0x1f
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223CFA4: .word 0x00000DE8
_0223CFA8: .word 0x00000BEC
	thumb_func_end ov96_0223CF5C

	thumb_func_start ov96_0223CFAC
ov96_0223CFAC: ; 0x0223CFAC
	push {r4, lr}
	ldr r2, _0223D070 ; =0x021BF67C
	mov r1, #0x40
	ldr r3, [r2, #0x4c]
	add r4, r0, #0
	tst r1, r3
	beq _0223CFF2
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0xa
	ble _0223CFD8
	add r0, r4, #0
	mov r1, #1
	add r0, #0x94
	str r1, [r0, #0]
_0223CFD8:
	ldr r0, _0223D074 ; =0x00000DE8
	ldr r1, _0223D078 ; =0x00000BEC
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x94
	ldr r2, [r4, #0]
	mov r3, #2
	bl ov96_0223D90C
	ldr r0, _0223D07C ; =0x000005DC
	bl sub_02005748
	b _0223D06A
_0223CFF2:
	mov r1, #0x80
	tst r1, r3
	beq _0223D030
	add r0, #0x94
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #1
	bge _0223D016
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x94
	str r1, [r0, #0]
_0223D016:
	ldr r0, _0223D074 ; =0x00000DE8
	ldr r1, _0223D078 ; =0x00000BEC
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x94
	ldr r2, [r4, #0]
	mov r3, #2
	bl ov96_0223D90C
	ldr r0, _0223D07C ; =0x000005DC
	bl sub_02005748
	b _0223D06A
_0223D030:
	ldr r2, [r2, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0223D052
	mov r1, #0
	add r2, r1, #0
	bl ov96_0223D950
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0x20
	bl ov96_0223BBFC
	ldr r0, _0223D07C ; =0x000005DC
	bl sub_02005748
	b _0223D06A
_0223D052:
	mov r1, #2
	tst r1, r2
	beq _0223D06A
	mov r1, #0
	add r2, r1, #0
	bl ov96_0223D950
	mov r0, #0x17
	str r0, [r4, #0x1c]
	ldr r0, _0223D07C ; =0x000005DC
	bl sub_02005748
_0223D06A:
	mov r0, #3
	pop {r4, pc}
	nop
_0223D070: .word 0x021BF67C
_0223D074: .word 0x00000DE8
_0223D078: .word 0x00000BEC
_0223D07C: .word 0x000005DC
	thumb_func_end ov96_0223CFAC

	thumb_func_start ov96_0223D080
ov96_0223D080: ; 0x0223D080
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D0A8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D0AC ; =0x00000BD4
	mov r2, #6
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x21
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D0A8: .word 0x00000F0F
_0223D0AC: .word 0x00000BD4
	thumb_func_end ov96_0223D080

	thumb_func_start ov96_0223D0B0
ov96_0223D0B0: ; 0x0223D0B0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0, #0]
	ldr r0, _0223D0F8 ; =0x00000DF8
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x1f
	mov r3, #0xe
	bl sub_0200DC48
	ldr r1, _0223D0FC ; =0x00000BE8
	add r2, r4, #0
	ldr r0, _0223D0F8 ; =0x00000DF8
	add r2, #0x9c
	ldr r1, [r4, r1]
	ldr r2, [r2, #0]
	add r0, r4, r0
	mov r3, #3
	bl ov96_0223D90C
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov96_0223D950
	ldr r0, _0223D0F8 ; =0x00000DF8
	add r0, r4, r0
	bl sub_0201A954
	mov r0, #0x22
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223D0F8: .word 0x00000DF8
_0223D0FC: .word 0x00000BE8
	thumb_func_end ov96_0223D0B0

	thumb_func_start ov96_0223D100
ov96_0223D100: ; 0x0223D100
	push {r4, lr}
	ldr r2, _0223D1C8 ; =0x021BF67C
	mov r1, #0x40
	ldr r3, [r2, #0x4c]
	add r4, r0, #0
	tst r1, r3
	beq _0223D14E
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r0, r0, #1
	cmp r1, r0
	bne _0223D134
	add r0, r4, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0, #0]
_0223D134:
	ldr r0, _0223D1CC ; =0x00000DF8
	ldr r1, _0223D1D0 ; =0x00000BE8
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x9c
	ldr r2, [r4, #0]
	mov r3, #3
	bl ov96_0223D90C
	ldr r0, _0223D1D4 ; =0x000005DC
	bl sub_02005748
	b _0223D1C4
_0223D14E:
	mov r1, #0x80
	tst r1, r3
	beq _0223D190
	add r0, #0x9c
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #1
	bge _0223D176
	add r0, r4, #0
	add r0, #0x98
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0, #0]
_0223D176:
	ldr r0, _0223D1CC ; =0x00000DF8
	ldr r1, _0223D1D0 ; =0x00000BE8
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x9c
	ldr r2, [r4, #0]
	mov r3, #3
	bl ov96_0223D90C
	ldr r0, _0223D1D4 ; =0x000005DC
	bl sub_02005748
	b _0223D1C4
_0223D190:
	ldr r2, [r2, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0223D1AC
	mov r1, #0
	add r2, r1, #0
	bl ov96_0223D950
	mov r0, #0x23
	str r0, [r4, #0x1c]
	ldr r0, _0223D1D4 ; =0x000005DC
	bl sub_02005748
	b _0223D1C4
_0223D1AC:
	mov r1, #2
	tst r1, r2
	beq _0223D1C4
	mov r1, #0
	add r2, r1, #0
	bl ov96_0223D950
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	ldr r0, _0223D1D4 ; =0x000005DC
	bl sub_02005748
_0223D1C4:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D1C8: .word 0x021BF67C
_0223D1CC: .word 0x00000DF8
_0223D1D0: .word 0x00000BE8
_0223D1D4: .word 0x000005DC
	thumb_func_end ov96_0223D100

	thumb_func_start ov96_0223D1D8
ov96_0223D1D8: ; 0x0223D1D8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xbd
	add r2, r4, #0
	lsl r0, r0, #4
	add r2, #0x9c
	ldr r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r3, #2
	mov r0, #0xbd
	add r2, r4, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r0, r0, #4
	add r2, #0x94
	ldr r0, [r4, r0]
	ldr r2, [r2, #0]
	bl sub_0200B60C
	ldr r0, _0223D238 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, _0223D23C ; =0x00000BD4
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r3, r2, #0
	bl ov96_0223D750
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x24
	bl ov96_0223BBFC
	mov r0, #0x24
	str r0, [r4, #0x1c]
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0223D238: .word 0x00000F0F
_0223D23C: .word 0x00000BD4
	thumb_func_end ov96_0223D1D8

	thumb_func_start ov96_0223D240
ov96_0223D240: ; 0x0223D240
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0x94
	add r1, #0x9c
	add r2, r4, #0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, #0xa0
	bl ov96_0223B450
	mov r0, #0x25
	str r0, [r4, #0x1c]
	ldr r0, _0223D26C ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov96_0223D978
	mov r0, #3
	pop {r4, pc}
	nop
_0223D26C: .word 0x00000F94
	thumb_func_end ov96_0223D240

	thumb_func_start ov96_0223D270
ov96_0223D270: ; 0x0223D270
	push {r4, lr}
	add r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223D338
	bl ov96_0223B3F4
	ldr r1, _0223D354 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _0223D34E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223D298: ; jump table
	.short _0223D314 - _0223D298 - 2 ; case 0
	.short _0223D304 - _0223D298 - 2 ; case 1
	.short _0223D324 - _0223D298 - 2 ; case 2
	.short _0223D314 - _0223D298 - 2 ; case 3
	.short _0223D2F4 - _0223D298 - 2 ; case 4
	.short _0223D2E4 - _0223D298 - 2 ; case 5
	.short _0223D2D4 - _0223D298 - 2 ; case 6
	.short _0223D2A8 - _0223D298 - 2 ; case 7
_0223D2A8:
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0x94
	add r3, #0x9c
	ldr r0, [r4, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	ldr r1, _0223D358 ; =0x000006DC
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	add r1, r4, r1
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202D6DC
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x26
	bl ov96_0223BBFC
	b _0223D34E
_0223D2D4:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D2E4:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D2F4:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0xb
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D304:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D314:
	mov r2, #0xb
	str r2, [r4, #0x1c]
	sub r1, #0x78
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D324:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
	bl sub_02038A0C
	b _0223D34E
_0223D338:
	ldr r0, _0223D354 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223D34E
	bl sub_02038A0C
_0223D34E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223D354: .word 0x00000F94
_0223D358: .word 0x000006DC
	thumb_func_end ov96_0223D270

	thumb_func_start ov96_0223D35C
ov96_0223D35C: ; 0x0223D35C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D390 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D394 ; =0x00000BD4
	mov r2, #3
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov96_0223BBFC
	add r0, r4, #0
	bl ov96_0223D99C
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D390: .word 0x00000F0F
_0223D394: .word 0x00000BD4
	thumb_func_end ov96_0223D35C

	thumb_func_start ov96_0223D398
ov96_0223D398: ; 0x0223D398
	mov r1, #0x29
	str r1, [r0, #0x1c]
	mov r0, #3
	bx lr
	thumb_func_end ov96_0223D398

	thumb_func_start ov96_0223D3A0
ov96_0223D3A0: ; 0x0223D3A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02024814
	mov r0, #0x28
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov96_0223D3A0

	thumb_func_start ov96_0223D3B8
ov96_0223D3B8: ; 0x0223D3B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024828
	cmp r0, #2
	bne _0223D3D2
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov96_0223D99C
_0223D3D2:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov96_0223D3B8

	thumb_func_start ov96_0223D3D8
ov96_0223D3D8: ; 0x0223D3D8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D400 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D404 ; =0x00000BD4
	mov r2, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #0x16
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D400: .word 0x00000F0F
_0223D404: .word 0x00000BD4
	thumb_func_end ov96_0223D3D8

	thumb_func_start ov96_0223D408
ov96_0223D408: ; 0x0223D408
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D438 ; =0x00000F08
	mov r1, #0x44
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223D434
	sub r1, r1, #1
	cmp r0, r1
	bne _0223D42A
	mov r0, #0xd
	str r0, [r4, #0x1c]
	b _0223D434
_0223D42A:
	mov r0, #0x29
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	mov r1, #1
	str r1, [r0, #0x20]
_0223D434:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D438: .word 0x00000F08
	thumb_func_end ov96_0223D408

	thumb_func_start ov96_0223D43C
ov96_0223D43C: ; 0x0223D43C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D464 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D468 ; =0x00000BD4
	mov r2, #9
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #0x18
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D464: .word 0x00000F0F
_0223D468: .word 0x00000BD4
	thumb_func_end ov96_0223D43C

	thumb_func_start ov96_0223D46C
ov96_0223D46C: ; 0x0223D46C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D49C ; =0x00000F08
	mov r1, #0x44
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223D498
	sub r1, r1, #1
	cmp r0, r1
	bne _0223D48E
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	b _0223D498
_0223D48E:
	mov r0, #0x29
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	mov r1, #1
	str r1, [r0, #0x20]
_0223D498:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D49C: .word 0x00000F08
	thumb_func_end ov96_0223D46C

	thumb_func_start ov96_0223D4A0
ov96_0223D4A0: ; 0x0223D4A0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D4C8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D4CC ; =0x00000BDC
	mov r2, #0x1a
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2a
	bl ov96_0223BBFC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D4C8: .word 0x00000F0F
_0223D4CC: .word 0x00000BDC
	thumb_func_end ov96_0223D4A0

	thumb_func_start ov96_0223D4D0
ov96_0223D4D0: ; 0x0223D4D0
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D7DB0
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_0223BC5C
	mov r0, #0x2b
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov96_0223D4D0

	thumb_func_start ov96_0223D4EC
ov96_0223D4EC: ; 0x0223D4EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D51C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D520 ; =0x00000BDC
	mov r2, #0x1b
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #0x2e
	bl ov96_0223BBFC
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D51C: .word 0x00000F0F
_0223D520: .word 0x00000BDC
	thumb_func_end ov96_0223D4EC

	thumb_func_start ov96_0223D524
ov96_0223D524: ; 0x0223D524
	mov r0, #3
	bx lr
	thumb_func_end ov96_0223D524

	thumb_func_start ov96_0223D528
ov96_0223D528: ; 0x0223D528
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02039794
	bl sub_0203848C
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x44
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov96_0223D528

	thumb_func_start ov96_0223D558
ov96_0223D558: ; 0x0223D558
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D584 ; =0x00000F08
	mov r1, #0x44
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223D57E
	sub r1, r1, #1
	cmp r0, r1
	bne _0223D57A
	mov r0, #0
	str r0, [r4, #0x1c]
	b _0223D57E
_0223D57A:
	mov r0, #0x29
	str r0, [r4, #0x1c]
_0223D57E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223D584: .word 0x00000F08
	thumb_func_end ov96_0223D558

	thumb_func_start ov96_0223D588
ov96_0223D588: ; 0x0223D588
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223D5F0 ; =0x00000F1C
	mov r4, #0
	ldr r0, [r5, r0]
	add r0, r0, #7
	cmp r0, #9
	bhi _0223D5CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D5A4: ; jump table
	.short _0223D5C4 - _0223D5A4 - 2 ; case 0
	.short _0223D5B8 - _0223D5A4 - 2 ; case 1
	.short _0223D5CA - _0223D5A4 - 2 ; case 2
	.short _0223D5C4 - _0223D5A4 - 2 ; case 3
	.short _0223D5C8 - _0223D5A4 - 2 ; case 4
	.short _0223D5B8 - _0223D5A4 - 2 ; case 5
	.short _0223D5C0 - _0223D5A4 - 2 ; case 6
	.short _0223D5CA - _0223D5A4 - 2 ; case 7
	.short _0223D5BC - _0223D5A4 - 2 ; case 8
	.short _0223D5C0 - _0223D5A4 - 2 ; case 9
_0223D5B8:
	mov r4, #0xd
	b _0223D5CA
_0223D5BC:
	mov r4, #0xb
	b _0223D5CA
_0223D5C0:
	mov r4, #0xc
	b _0223D5CA
_0223D5C4:
	mov r4, #0xe
	b _0223D5CA
_0223D5C8:
	mov r4, #0xf
_0223D5CA:
	add r0, r5, #0
	bl ov96_0223D99C
	ldr r0, _0223D5F4 ; =0x00000F0F
	ldr r1, _0223D5F8 ; =0x00000BD4
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl ov96_0223D814
	add r0, r5, #0
	mov r1, #0x2f
	mov r2, #0x36
	bl ov96_0223BBFC
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D5F0: .word 0x00000F1C
_0223D5F4: .word 0x00000F0F
_0223D5F8: .word 0x00000BD4
	thumb_func_end ov96_0223D588

	thumb_func_start ov96_0223D5FC
ov96_0223D5FC: ; 0x0223D5FC
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xf9
	add r4, r0, #0
	lsl r1, r1, #4
	ldrsh r2, [r4, r1]
	cmp r2, #3
	bhi _0223D698
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223D618: ; jump table
	.short _0223D620 - _0223D618 - 2 ; case 0
	.short _0223D63C - _0223D618 - 2 ; case 1
	.short _0223D660 - _0223D618 - 2 ; case 2
	.short _0223D67C - _0223D618 - 2 ; case 3
_0223D620:
	sub r1, #0x81
	str r1, [sp]
	ldr r1, _0223D6BC ; =0x00000BD4
	mov r2, #0x10
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	mov r0, #0xf9
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0223D6B4
_0223D63C:
	ldr r0, _0223D6C0 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D6B4
	bl sub_0203848C
	bl ov4_021D7DB0
	mov r0, #0xf9
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0223D6B4
_0223D660:
	sub r1, #0x81
	str r1, [sp]
	ldr r1, _0223D6BC ; =0x00000BD4
	mov r2, #0x11
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov96_0223D814
	mov r0, #0xf9
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0223D6B4
_0223D67C:
	ldr r0, _0223D6C0 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D6B4
	mov r0, #0xf9
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0223D6B4
_0223D698:
	ldr r0, _0223D6C4 ; =0x00000F92
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0223D6B4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_0223BC5C
	mov r0, #0x2e
	str r0, [r4, #0x1c]
_0223D6B4:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D6BC: .word 0x00000BD4
_0223D6C0: .word 0x00000BF4
_0223D6C4: .word 0x00000F92
	thumb_func_end ov96_0223D5FC

	thumb_func_start ov96_0223D6C8
ov96_0223D6C8: ; 0x0223D6C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D6E4 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D6E0
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223D6E0:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D6E4: .word 0x00000BF4
	thumb_func_end ov96_0223D6C8

	thumb_func_start ov96_0223D6E8
ov96_0223D6E8: ; 0x0223D6E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D718 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D714
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _0223D70A
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223D70A:
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0223D714:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D718: .word 0x00000BF4
	thumb_func_end ov96_0223D6E8

	thumb_func_start ov96_0223D71C
ov96_0223D71C: ; 0x0223D71C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D748 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D744
	mov r2, #0x91
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov96_0223BBC8
	ldr r1, _0223D74C ; =0x00000F08
	str r0, [r4, r1]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223D744:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D748: .word 0x00000BF4
_0223D74C: .word 0x00000F08
	thumb_func_end ov96_0223D71C

	thumb_func_start ov96_0223D750
ov96_0223D750: ; 0x0223D750
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0200B1EC
	mov r1, #0xbd
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x10
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	ldr r0, _0223D7B0 ; =0x00000DD8
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223D7B0 ; =0x00000DD8
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xe
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbe
	ldr r0, _0223D7B0 ; =0x00000DD8
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223D7B4 ; =0x00000BF4
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223D7B0: .word 0x00000DD8
_0223D7B4: .word 0x00000BF4
	thumb_func_end ov96_0223D750

	thumb_func_start ov96_0223D7B8
ov96_0223D7B8: ; 0x0223D7B8
	push {r4, lr}
	ldr r1, _0223D7E0 ; =0x00000F14
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	neg r0, r0
	bl ov4_021D1F3C
	ldr r2, _0223D7E0 ; =0x00000F14
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r4, #0
	neg r2, r2
	bl ov96_0223DA34
	mov r0, #0x38
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D7E0: .word 0x00000F14
	thumb_func_end ov96_0223D7B8

	thumb_func_start ov96_0223D7E4
ov96_0223D7E4: ; 0x0223D7E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D80C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0223D7F8
	mov r0, #2
	tst r0, r1
	beq _0223D806
_0223D7F8:
	ldr r0, _0223D810 ; =0x00000E18
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	mov r0, #0
	str r0, [r4, #0x1c]
_0223D806:
	mov r0, #3
	pop {r4, pc}
	nop
_0223D80C: .word 0x021BF67C
_0223D810: .word 0x00000E18
	thumb_func_end ov96_0223D7E4

	thumb_func_start ov96_0223D814
ov96_0223D814: ; 0x0223D814
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0xbe
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r4, r3, #0
	bl sub_0200B1B8
	ldr r0, _0223D864 ; =0x00000DD8
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223D864 ; =0x00000DD8
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xe
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbe
	ldr r0, _0223D864 ; =0x00000DD8
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223D868 ; =0x00000BF4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223D864: .word 0x00000DD8
_0223D868: .word 0x00000BF4
	thumb_func_end ov96_0223D814

	thumb_func_start ov96_0223D86C
ov96_0223D86C: ; 0x0223D86C
	push {r4, lr}
	add r4, r0, #0
	cmp r3, #1
	beq _0223D87A
	cmp r3, #2
	beq _0223D890
	b _0223D89E
_0223D87A:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	b _0223D89E
_0223D890:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r2, r1, r0
_0223D89E:
	add r0, r2, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov96_0223D86C

	thumb_func_start ov96_0223D8A4
ov96_0223D8A4: ; 0x0223D8A4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov96_0223D86C
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_0223D8A4

	thumb_func_start ov96_0223D8D8
ov96_0223D8D8: ; 0x0223D8D8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov96_0223D86C
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov96_0223D8D8

	thumb_func_start ov96_0223D90C
ov96_0223D90C: ; 0x0223D90C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0xf
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #2
	bl sub_020238A0
	mov r3, #1
	ldr r0, _0223D944 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov96_0223D8D8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D944: .word 0x00010200
	thumb_func_end ov96_0223D90C

	thumb_func_start ov96_0223D948
ov96_0223D948: ; 0x0223D948
	ldr r3, _0223D94C ; =sub_02039734
	bx r3
	; .align 2, 0
_0223D94C: .word sub_02039734
	thumb_func_end ov96_0223D948

	thumb_func_start ov96_0223D950
ov96_0223D950: ; 0x0223D950
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #1
	bhi _0223D970
	mov r0, #0xdd
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CAC
	ldr r0, _0223D974 ; =0x00000DD4
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
_0223D970:
	pop {r3, r4, r5, pc}
	nop
_0223D974: .word 0x00000DD4
	thumb_func_end ov96_0223D950

	thumb_func_start ov96_0223D978
ov96_0223D978: ; 0x0223D978
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D994 ; =0x00000F0C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223D992
	ldr r0, _0223D998 ; =0x00000DD8
	mov r1, #1
	add r0, r4, r0
	bl sub_0200E7FC
	ldr r1, _0223D994 ; =0x00000F0C
	str r0, [r4, r1]
_0223D992:
	pop {r4, pc}
	; .align 2, 0
_0223D994: .word 0x00000F0C
_0223D998: .word 0x00000DD8
	thumb_func_end ov96_0223D978

	thumb_func_start ov96_0223D99C
ov96_0223D99C: ; 0x0223D99C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D9B4 ; =0x00000F0C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223D9B2
	bl sub_0200EBA0
	ldr r0, _0223D9B4 ; =0x00000F0C
	mov r1, #0
	str r1, [r4, r0]
_0223D9B2:
	pop {r4, pc}
	; .align 2, 0
_0223D9B4: .word 0x00000F0C
	thumb_func_end ov96_0223D99C

	thumb_func_start ov96_0223D9B8
ov96_0223D9B8: ; 0x0223D9B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r6, r1, #0
	lsl r0, r0, #8
	mov r1, #0x44
	bl sub_02023790
	add r4, r0, #0
	ldr r0, _0223DA28 ; =0x00000BDC
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0xbd
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, _0223DA2C ; =0x00000E18
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223DA2C ; =0x00000E18
	mov r1, #1
	add r0, r5, r0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r2, #0xbf
	ldr r0, _0223DA2C ; =0x00000E18
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223DA30 ; =0x00000BF4
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223DA28: .word 0x00000BDC
_0223DA2C: .word 0x00000E18
_0223DA30: .word 0x00000BF4
	thumb_func_end ov96_0223D9B8

	thumb_func_start ov96_0223DA34
ov96_0223DA34: ; 0x0223DA34
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	bne _0223DA46
	mov r4, #0xb
_0223DA46:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xbd
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r0, _0223DA74 ; =0x00000DD8
	mov r1, #1
	add r0, r5, r0
	bl sub_0200E084
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_0223D9B8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223DA74: .word 0x00000DD8
	thumb_func_end ov96_0223DA34

	.rodata


	.global Unk_ov96_0223DAD0
Unk_ov96_0223DAD0: ; 0x0223DAD0
	.incbin "incbin/overlay96_rodata.bin", 0x58, 0x74 - 0x58

	.global Unk_ov96_0223DAEC
Unk_ov96_0223DAEC: ; 0x0223DAEC
	.incbin "incbin/overlay96_rodata.bin", 0x74, 0x90 - 0x74

	.global Unk_ov96_0223DB08
Unk_ov96_0223DB08: ; 0x0223DB08
	.incbin "incbin/overlay96_rodata.bin", 0x90, 0xAC - 0x90

	.global Unk_ov96_0223DB24
Unk_ov96_0223DB24: ; 0x0223DB24
	.incbin "incbin/overlay96_rodata.bin", 0xAC, 0x1C


	.data


	.global Unk_ov96_0223DCE0
Unk_ov96_0223DCE0: ; 0x0223DCE0
	.incbin "incbin/overlay96_data.bin", 0x180, 0xE4

