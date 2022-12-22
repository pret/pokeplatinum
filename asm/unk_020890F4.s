	.include "macros/function.inc"
	.include "include/unk_020890F4.inc"

	

	.text


	thumb_func_start sub_020890F4
sub_020890F4: ; 0x020890F4
	push {r3, r4, r5, lr}
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x65
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r1, #0xfd
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x65
	bl sub_0200681C
	mov r2, #0xfd
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	mov r0, #0xee
	lsl r0, r0, #2
	add r3, r4, r0
	mov r2, #6
_0208912C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208912C
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02089238 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0208923C ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0x9f
	mov r1, #0x65
	bl sub_02006C24
	mov r1, #0xbb
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x65
	bl sub_02018340
	mov r1, #0xbe
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x65
	bl sub_02002F38
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02003858
	mov r2, #0xbf
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	mov r1, #0
	sub r2, #0xfc
	mov r3, #0x65
	bl sub_02002F70
	mov r0, #0xbf
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r2, r1, #9
	mov r3, #0x65
	bl sub_02002F70
	mov r0, #0xbf
	lsl r0, r0, #2
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r2, r1, #8
	mov r3, #0x65
	bl sub_02002F70
	mov r2, #0xbf
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	mov r1, #3
	sub r2, #0xfc
	mov r3, #0x65
	bl sub_02002F70
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0208945C
	add r0, r4, #0
	bl sub_0208A3F4
	add r0, r4, #0
	bl sub_02089688
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl sub_0208A0B8
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0208920A
	bl sub_02039734
	mov r0, #1
	mov r1, #0x65
	bl sub_020397C8
_0208920A:
	mov r0, #7
	str r0, [sp]
	ldr r0, _02089240 ; =0x04000050
	mov r1, #0
	mov r2, #6
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _02089244 ; =0x04001050
	mov r1, #0
	mov r2, #0xe
	mov r3, #7
	bl G2x_SetBlendAlpha_
	ldr r0, _02089248 ; =sub_020895CC
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02089238: .word 0xFFFFE0FF
_0208923C: .word 0x04001000
_02089240: .word 0x04000050
_02089244: .word 0x04001050
_02089248: .word sub_020895CC
	thumb_func_end sub_020890F4

	thumb_func_start sub_0208924C
sub_0208924C: ; 0x0208924C
	push {r3, r4, r5, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl sub_02089BEC
	add r5, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02089270
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02089270:
	cmp r5, #0
	beq _02089278
	mov r0, #1
	pop {r3, r4, r5, pc}
_02089278:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208924C

	thumb_func_start sub_0208927C
sub_0208927C: ; 0x0208927C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02089294
	bl sub_02039794
_02089294:
	add r0, r4, #0
	bl sub_0208A6CC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02002FA0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02002FA0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02002FA0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_02002FA0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02002F54
	mov r0, #0xbb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006CA8
	bl sub_0201E530
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200D0B0
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02024034
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x65
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0208927C

	thumb_func_start sub_020893B4
sub_020893B4: ; 0x020893B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	mov r1, #0x34
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r6, #1
	str r6, [r4, #0]
	bl sub_02023790
	str r0, [r4, #0x1c]
	str r7, [r4, #0x20]
	mov r2, #0
	add r1, r5, #0
	add r3, r4, #0
_020893DA:
	ldr r0, [r1, #0]
	add r2, r2, #1
	str r0, [r3, #4]
	add r1, r1, #4
	add r3, r3, #4
	cmp r2, #4
	blt _020893DA
	sub r0, r2, #1
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r0, r2, #2
	add r0, r4, r0
	str r1, [r0, #4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x30]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020893B4

	thumb_func_start sub_02089400
sub_02089400: ; 0x02089400
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_020893B4
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02089400

	thumb_func_start sub_0208941C
sub_0208941C: ; 0x0208941C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_020893B4
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x24]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x28]
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_0208941C

	thumb_func_start sub_02089438
sub_02089438: ; 0x02089438
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _02089446
	bl sub_02022974
_02089446:
	cmp r4, #0
	bne _0208944E
	bl sub_02022974
_0208944E:
	ldr r0, [r4, #0x1c]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02089438

	thumb_func_start sub_0208945C
sub_0208945C: ; 0x0208945C
	push {r4, r5, lr}
	sub sp, #0xec
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _020895BC ; =0x020F2DCC
	add r3, sp, #0
	mov r2, #5
_0208946C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208946C
	add r0, sp, #0
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r5, _020895C0 ; =0x020F2DF4
	add r3, sp, #0x98
	mov r2, #0xa
_020894B8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020894B8
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x98
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xb4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xd0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	ldr r5, _020895C4 ; =0x020F2E48
	add r3, sp, #0x28
	mov r2, #0xe
_02089526:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02089526
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0x28
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x44
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x60
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x7c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	ldr r0, _020895C8 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0xec
	pop {r4, r5, pc}
	; .align 2, 0
_020895BC: .word 0x020F2DCC
_020895C0: .word 0x020F2DF4
_020895C4: .word 0x020F2E48
_020895C8: .word 0x021BF6DC
	thumb_func_end sub_0208945C

	thumb_func_start sub_020895CC
sub_020895CC: ; 0x020895CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200C800
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02003694
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201C2B8
	ldr r3, _020895FC ; =0x027E0000
	ldr r1, _02089600 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_020895FC: .word 0x027E0000
_02089600: .word 0x00003FF8
	thumb_func_end sub_020895CC

	.rodata


	.global Unk_020F2DBC
Unk_020F2DBC: ; 0x020F2DBC
	.incbin "incbin/arm9_rodata.bin", 0xE17C, 0xE18C - 0xE17C

	.global Unk_020F2DCC
Unk_020F2DCC: ; 0x020F2DCC
	.incbin "incbin/arm9_rodata.bin", 0xE18C, 0xE1B4 - 0xE18C

	.global Unk_020F2DF4
Unk_020F2DF4: ; 0x020F2DF4
	.incbin "incbin/arm9_rodata.bin", 0xE1B4, 0xE208 - 0xE1B4

	.global Unk_020F2E48
Unk_020F2E48: ; 0x020F2E48
	.incbin "incbin/arm9_rodata.bin", 0xE208, 0x70

