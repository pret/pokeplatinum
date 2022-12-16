	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021D76B0
ov21_021D76B0: ; 0x021D76B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021D7728
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021D7770
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021D7798
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021D7814
	str r0, [r5, #0x24]
	ldr r0, _021D76F8 ; =ov21_021D7818
	str r0, [r5, #8]
	ldr r0, _021D76FC ; =ov21_021D7860
	str r0, [r5, #0xc]
	ldr r0, _021D7700 ; =ov21_021D78AC
	str r0, [r5, #0x10]
	ldr r0, _021D7704 ; =ov21_021D78C0
	str r0, [r5, #0x14]
	ldr r0, _021D7708 ; =ov21_021D7950
	str r0, [r5, #0x18]
	ldr r0, _021D770C ; =ov21_021D79E4
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D76F8: .word ov21_021D7818
_021D76FC: .word ov21_021D7860
_021D7700: .word ov21_021D78AC
_021D7704: .word ov21_021D78C0
_021D7708: .word ov21_021D7950
_021D770C: .word ov21_021D79E4
	thumb_func_end ov21_021D76B0

	thumb_func_start ov21_021D7710
ov21_021D7710: ; 0x021D7710
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021D77D4
	ldr r0, [r4, #0]
	bl ov21_021D77E8
	ldr r0, [r4, #0x20]
	bl ov21_021D77FC
	pop {r4, pc}
	thumb_func_end ov21_021D7710

	thumb_func_start ov21_021D7728
ov21_021D7728: ; 0x021D7728
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x28
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D773C
	bl sub_02022974
_021D773C:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl sub_020D5124
	add r0, r6, #0
	mov r1, #0
	bl ov21_021D1410
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [r4, #0x1c]
	add r2, r4, #0
	mov r0, #4
_021D7758:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #7
	blt _021D7758
	add r0, r6, #0
	bl ov21_021D13A0
	str r0, [r4, #0x20]
	str r5, [r4, #0x24]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7728

	thumb_func_start ov21_021D7770
ov21_021D7770: ; 0x021D7770
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021D7782
	bl sub_02022974
_021D7782:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D7770

	thumb_func_start ov21_021D7798
ov21_021D7798: ; 0x021D7798
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov21_021D7814
	add r7, r0, #0
	mov r1, #0x14
	mul r7, r1
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D77B8
	bl sub_02022974
_021D77B8:
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_020D5124
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #1
	bl ov21_021D4878
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7798

	thumb_func_start ov21_021D77D4
ov21_021D77D4: ; 0x021D77D4
	push {r4, lr}
	add r4, r0, #0
	bne _021D77DE
	bl sub_02022974
_021D77DE:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D77D4

	thumb_func_start ov21_021D77E8
ov21_021D77E8: ; 0x021D77E8
	push {r4, lr}
	add r4, r0, #0
	bne _021D77F2
	bl sub_02022974
_021D77F2:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D77E8

	thumb_func_start ov21_021D77FC
ov21_021D77FC: ; 0x021D77FC
	push {r4, lr}
	add r4, r0, #0
	bne _021D7806
	bl sub_02022974
_021D7806:
	add r0, r4, #0
	bl ov21_021D4660
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021D77FC

	thumb_func_start ov21_021D7814
ov21_021D7814: ; 0x021D7814
	mov r0, #1
	bx lr
	thumb_func_end ov21_021D7814

	thumb_func_start ov21_021D7818
ov21_021D7818: ; 0x021D7818
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0x24
	bl sub_02018144
	str r0, [r5, #8]
	cmp r0, #0
	bne _021D7830
	bl sub_02022974
_021D7830:
	ldr r0, [r5, #8]
	mov r1, #0
	mov r2, #0x24
	bl sub_020D5124
	ldr r1, _021D785C ; =0x000004CD
	ldr r0, [r5, #8]
	add r2, r4, #0
	str r1, [r0, #0x1c]
	mov r1, #0
	mov r0, #4
_021D7846:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #7
	blt _021D7846
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	add r1, r4, #0
	bl ov21_021D7A64
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D785C: .word 0x000004CD
	thumb_func_end ov21_021D7818

	thumb_func_start ov21_021D7860
ov21_021D7860: ; 0x021D7860
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021D7870
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D7870:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021D787A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D787A:
	ldr r2, [r5, #0x1c]
	add r0, r4, #0
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	bl ov21_021D8434
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D7B20
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021D78A0
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D82A8
	b _021D78A6
_021D78A0:
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
_021D78A6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7860

	thumb_func_start ov21_021D78AC
ov21_021D78AC: ; 0x021D78AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ov21_021D7B70
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021D78AC

	thumb_func_start ov21_021D78C0
ov21_021D78C0: ; 0x021D78C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021D794C
	add r5, r1, r1
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_021D78DA: ; jump table
	.short _021D78E4 - _021D78DA - 2 ; case 0
	.short _021D7908 - _021D78DA - 2 ; case 1
	.short _021D7918 - _021D78DA - 2 ; case 2
	.short _021D7932 - _021D78DA - 2 ; case 3
	.short _021D7944 - _021D78DA - 2 ; case 4
_021D78E4:
	ldr r0, [r4, #4]
	mov r1, #0x3c
	bl sub_02018144
	str r0, [r4, #8]
	cmp r0, #0
	bne _021D78F6
	bl sub_02022974
_021D78F6:
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0x3c
	bl sub_020D5124
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D794C
_021D7908:
	add r1, r3, #0
	ldr r3, [r4, #4]
	bl ov21_021D7C64
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D794C
_021D7918:
	mov r1, #0
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #4
	sub r2, #0x10
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D794C
_021D7932:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _021D794C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D794C
_021D7944:
	add r0, r1, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D794C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D78C0

	thumb_func_start ov21_021D7950
ov21_021D7950: ; 0x021D7950
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #8]
	add r5, r2, #0
	add r7, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	ldr r6, [r3, #8]
	bl ov21_021D144C
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl ov21_021D144C
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl ov21_021D144C
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0xc]
	bl ov21_021D144C
	ldr r0, [r4, #0x1c]
	ldr r1, [r5, #0x10]
	bl ov21_021D144C
	mov r2, #5
	str r2, [sp]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	sub r2, #0x13
	mov r3, #3
	bl ov21_021D84A8
	mov r2, #5
	str r2, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	sub r2, #0x13
	mov r3, #3
	bl ov21_021D84A8
	mov r2, #5
	str r2, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x14]
	sub r2, #0x13
	mov r3, #2
	bl ov21_021D84A8
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021D79D2
	mov r0, #0x83
	ldr r1, [r6, #0xc]
	lsl r0, r0, #2
	bl sub_0201D580
	add r2, r0, #0
	ldr r3, [r6, #0x1c]
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021D8354
	b _021D79E0
_021D79D2:
	cmp r0, #1
	bne _021D79E0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov21_021D83C0
_021D79E0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D7950

	thumb_func_start ov21_021D79E4
ov21_021D79E4: ; 0x021D79E4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021D7A5C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D7A00: ; jump table
	.short _021D7A0A - _021D7A00 - 2 ; case 0
	.short _021D7A24 - _021D7A00 - 2 ; case 1
	.short _021D7A36 - _021D7A00 - 2 ; case 2
	.short _021D7A46 - _021D7A00 - 2 ; case 3
	.short _021D7A56 - _021D7A00 - 2 ; case 4
_021D7A0A:
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	add r1, r0, #0
	sub r1, #0x14
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D7A5C
_021D7A24:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _021D7A5C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D7A5C
_021D7A36:
	add r1, r2, #0
	ldr r2, [r4, #4]
	bl ov21_021D7CAC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D7A5C
_021D7A46:
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D7A5C
_021D7A56:
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021D7A5C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D79E4

	thumb_func_start ov21_021D7A64
ov21_021D7A64: ; 0x021D7A64
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0x1c
	bl sub_02018144
	str r0, [r5, #8]
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0x10
	mov r2, #0x40
	mov r3, #0
	bl ov21_021D154C
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0x40
	add r0, r0, #4
	mov r2, #0x70
	mov r3, #0
	bl ov21_021D154C
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0x70
	add r0, #8
	mov r2, #0xc0
	mov r3, #0
	bl ov21_021D154C
	mov r0, #0x84
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0x38
	add r0, #0xc
	mov r2, #0x48
	mov r3, #0x74
	bl ov21_021D154C
	mov r0, #0x84
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0x8a
	add r0, #0x10
	mov r2, #0x9a
	mov r3, #0x74
	bl ov21_021D154C
	ldr r0, [r5, #8]
	mov r1, #0xfe
	strb r1, [r0, #0x14]
	ldr r0, [r5, #8]
	mov r1, #0xf8
	strb r1, [r0, #0x15]
	ldr r0, [r5, #8]
	mov r1, #0x68
	strb r1, [r0, #0x16]
	ldr r0, [r5, #8]
	mov r2, #0x10
	strb r1, [r0, #0x17]
	mov r0, #0xb4
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, #0x18
	mov r3, #0x74
	bl ov21_021D154C
	add r0, r6, #0
	mov r1, #8
	bl sub_02018144
	add r3, r0, #0
	str r5, [r3, #0]
	str r4, [r3, #4]
	str r3, [r5, #4]
	str r6, [sp]
	ldr r0, [r5, #8]
	ldr r2, _021D7B1C ; =ov21_021D7B8C
	mov r1, #7
	bl sub_02023FCC
	str r0, [r5, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D7B1C: .word ov21_021D7B8C
	thumb_func_end ov21_021D7A64

	thumb_func_start ov21_021D7B20
ov21_021D7B20: ; 0x021D7B20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r2, r4, #0
	mov r0, #4
_021D7B2C:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #7
	blt _021D7B2C
	add r0, r4, #0
	bl ov21_021D84B8
	ldr r0, [r5, #0]
	bl sub_0202404C
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #4]
	bl ov21_021D84E0
	cmp r0, #0
	bne _021D7B52
	mov r0, #0
	str r0, [r5, #0xc]
_021D7B52:
	ldr r0, [r4, #0x14]
	cmp r0, #4
	ldr r0, [r5, #0x1c]
	beq _021D7B64
	ldr r1, [r5, #0xc]
	bl ov21_021D8580
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
_021D7B64:
	mov r1, #0
	bl ov21_021D8580
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7B20

	thumb_func_start ov21_021D7B70
ov21_021D7B70: ; 0x021D7B70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02024034
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov21_021D7B70

	thumb_func_start ov21_021D7B8C
ov21_021D7B8C: ; 0x021D7B8C
	push {r4, r5, r6, lr}
	ldr r5, [r2, #4]
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r4, [r2, #0]
	ldr r0, [r0, #4]
	lsl r2, r6, #2
	str r1, [r5, r2]
	cmp r1, #0
	beq _021D7BA6
	cmp r1, #2
	beq _021D7BB2
	b _021D7C5A
_021D7BA6:
	ldr r0, _021D7C60 ; =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0x14]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021D7BB2:
	cmp r6, #6
	bhi _021D7C26
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D7BC2: ; jump table
	.short _021D7BD0 - _021D7BC2 - 2 ; case 0
	.short _021D7BD8 - _021D7BC2 - 2 ; case 1
	.short _021D7BE0 - _021D7BC2 - 2 ; case 2
	.short _021D7BE8 - _021D7BC2 - 2 ; case 3
	.short _021D7BF8 - _021D7BC2 - 2 ; case 4
	.short _021D7C26 - _021D7BC2 - 2 ; case 5
	.short _021D7C0E - _021D7BC2 - 2 ; case 6
_021D7BD0:
	ldr r0, [r5, #0x1c]
	mov r1, #1
	str r1, [r0, #0x34]
	b _021D7C26
_021D7BD8:
	ldr r0, [r5, #0x1c]
	mov r1, #1
	str r1, [r0, #0x30]
	b _021D7C26
_021D7BE0:
	ldr r0, [r5, #0x1c]
	mov r1, #1
	str r1, [r0, #0x2c]
	b _021D7C26
_021D7BE8:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021D7C26
	add r0, r5, #0
	mov r1, #0
	bl ov21_021D853C
	b _021D7C26
_021D7BF8:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	bne _021D7C26
	bl ov21_021D3768
	add r1, r0, #0
	add r0, r5, #0
	sub r1, r1, #1
	bl ov21_021D853C
	b _021D7C26
_021D7C0E:
	ldr r0, [r5, #0x1c]
	mov r1, #0x5d
	ldr r2, [r0, #4]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021D7C22
	mov r1, #1
	str r1, [r0, #0x28]
	b _021D7C26
_021D7C22:
	mov r1, #1
	str r1, [r0, #0x24]
_021D7C26:
	cmp r6, #5
	bne _021D7C54
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021D7C4A
	add r0, r4, #0
	bl ov21_021D8324
	ldr r1, [r4, #0xc]
	cmp r1, #0x10
	bgt _021D7C4A
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	blt _021D7C4A
	mov r0, #0
	str r0, [r4, #0xc]
_021D7C4A:
	ldr r0, _021D7C60 ; =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0x14]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0x18]
_021D7C54:
	mov r0, #1
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
_021D7C5A:
	mov r0, #0
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D7C60: .word 0x021BF6BC
	thumb_func_end ov21_021D7B8C

	thumb_func_start ov21_021D7C64
ov21_021D7C64: ; 0x021D7C64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov21_021D7CD8
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021D820C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov21_021D7D8C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov21_021D7E80
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov21_021D8018
	mov r0, #7
	mov r1, #3
	bl sub_02019060
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D7C64

	thumb_func_start ov21_021D7CAC
ov21_021D7CAC: ; 0x021D7CAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov21_021D81EC
	add r0, r5, #0
	bl ov21_021D7FEC
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D7E3C
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021D828C
	mov r0, #7
	mov r1, #1
	bl sub_02019060
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D7CAC

	thumb_func_start ov21_021D7CD8
ov21_021D7CD8: ; 0x021D7CD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r7, r1, #0
	ldr r6, [r0, #0]
	mov r1, #0
	add r4, r2, #0
	str r1, [sp]
	str r4, [sp, #4]
	mov r2, #4
	add r3, r1, #0
	bl ov21_021D276C
	ldr r0, [r7, #0x1c]
	mov r1, #0x5d
	ldr r0, [r0, #4]
	lsl r1, r1, #6
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021D7D16
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r2, #4
	mov r3, #0x60
	bl ov21_021D276C
	b _021D7D30
_021D7D16:
	bl ov21_021D36D8
	cmp r0, #1
	bne _021D7D30
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #0x19
	mov r2, #4
	mov r3, #0x60
	bl ov21_021D276C
_021D7D30:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #0x1d
	add r2, r6, #0
	mov r3, #6
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x29
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	ldrh r0, [r2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	mov r1, #6
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7CD8

	thumb_func_start ov21_021D7D8C
ov21_021D7D8C: ; 0x021D7D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021D7E2C ; =0x0000043C
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r2, #0x54
	mov r3, #1
	bl sub_02009A4C
	str r0, [r5, #0x2c]
	bl sub_0200A3DC
	ldr r0, [r5, #0x2c]
	bl sub_02009D4C
	ldr r0, _021D7E30 ; =0x000003EB
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x30]
	bl sub_0200A640
	ldr r0, [r5, #0x30]
	bl sub_02009D4C
	ldr r0, _021D7E34 ; =0x0000043A
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x52
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x34]
	ldr r0, _021D7E38 ; =0x0000043B
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x53
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x38]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D7E2C: .word 0x0000043C
_021D7E30: .word 0x000003EB
_021D7E34: .word 0x0000043A
_021D7E38: .word 0x0000043B
	thumb_func_end ov21_021D7D8C

	thumb_func_start ov21_021D7E3C
ov21_021D7E3C: ; 0x021D7E3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #0x30]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x2c]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x30]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x34]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x38]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D7E3C

	thumb_func_start ov21_021D7E80
ov21_021D7E80: ; 0x021D7E80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r7, r3, #0
	add r5, r0, #0
	mov r0, #0
	ldr r4, [r1, #0]
	ldr r3, _021D7FE8 ; =0x0000043B
	add r6, r2, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #5
	str r2, [sp, #0x10]
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	add r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r2, r3, #0
	add r0, sp, #0x4c
	sub r2, #0x50
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #8
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [sp, #0x34]
	lsl r1, r1, #0xe
	lsl r0, r0, #2
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	str r7, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #0]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021D7F18
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_02021CAC
_021D7F18:
	mov r0, #3
	lsl r0, r0, #0x10
	mov r1, #0x16
	str r0, [sp, #0x34]
	lsl r1, r1, #0xe
	lsl r0, r0, #2
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #4]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r6, #0x1c]
	mov r1, #1
	ldr r0, [r0, #4]
	bl ov21_021D36A4
	cmp r0, #0
	beq _021D7F54
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021D7F5C
_021D7F54:
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_02021CAC
_021D7F5C:
	mov r0, #3
	lsl r0, r0, #0x10
	mov r1, #0x26
	str r0, [sp, #0x34]
	lsl r1, r1, #0xe
	lsl r0, r0, #2
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	mov r1, #1
	str r0, [r5, #8]
	bl sub_02021D6C
	mov r0, #0x1f
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r1, #1
	mov r0, #3
	lsl r1, r1, #0x12
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	mov r1, #3
	str r0, [r5, #0x18]
	bl sub_02021D6C
	mov r0, #0x1f
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r1, #0x92
	mov r0, #3
	lsl r1, r1, #0xc
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	mov r1, #4
	str r0, [r5, #0x1c]
	bl sub_02021D6C
	mov r0, #0x1f
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r1, #2
	mov r0, #3
	lsl r1, r1, #0xe
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	mov r1, #5
	str r0, [r5, #0x20]
	bl sub_02021D6C
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D7FE8: .word 0x0000043B
	thumb_func_end ov21_021D7E80

	thumb_func_start ov21_021D7FEC
ov21_021D7FEC: ; 0x021D7FEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021BD4
	ldr r0, [r4, #4]
	bl sub_02021BD4
	ldr r0, [r4, #8]
	bl sub_02021BD4
	ldr r0, [r4, #0x18]
	bl sub_02021BD4
	ldr r0, [r4, #0x1c]
	bl sub_02021BD4
	ldr r0, [r4, #0x20]
	bl sub_02021BD4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7FEC

	thumb_func_start ov21_021D8018
ov21_021D8018: ; 0x021D8018
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [r1, #0]
	cmp r0, #0
	bne _021D802E
	bl sub_02022974
_021D802E:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021D81E4 ; =0x000003EB
	bl sub_02009DC8
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	mov r1, #0
	bl sub_0200A72C
	mov r1, #0x27
	mvn r1, r1
	str r1, [sp, #0x28]
	add r1, #0x1a
	str r1, [sp, #0x2c]
	mov r1, #0
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	mov r1, #2
	str r0, [sp, #0x20]
	str r1, [sp, #0x38]
	str r7, [sp, #0x3c]
	bl sub_0201FAB4
	add r7, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xa
	mov r2, #4
	bl ov21_021D4D6C
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x10]
	ldr r2, _021D81E8 ; =0x000002B9
	mov r3, #7
	bl ov21_021D4DAC
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0]
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	bl ov21_021D4CA0
	str r0, [r5, #0xc]
	ldr r0, [r0, #0]
	add r1, r7, #3
	bl sub_02012A60
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021D80BC
	ldr r0, [r5, #0xc]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
_021D80BC:
	ldr r0, [sp, #0x10]
	bl ov21_021D4DA0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xa
	mov r2, #4
	bl ov21_021D4D6C
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #8]
	ldr r2, _021D81E8 ; =0x000002B9
	mov r3, #5
	bl ov21_021D4DAC
	ldr r0, [sp, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #4]
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	bl ov21_021D4CA0
	str r0, [r5, #0x10]
	ldr r0, [r0, #0]
	add r1, r7, #3
	bl sub_02012A60
	ldr r0, [r6, #0x1c]
	mov r1, #1
	ldr r0, [r0, #4]
	bl ov21_021D36A4
	cmp r0, #0
	beq _021D811C
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021D8126
_021D811C:
	ldr r0, [r5, #0x10]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
_021D8126:
	ldr r0, [sp, #8]
	bl ov21_021D4DA0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xa
	mov r2, #4
	bl ov21_021D4D6C
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x14]
	ldr r2, _021D81E8 ; =0x000002B9
	mov r3, #0x1d
	bl ov21_021D4DAC
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	bl ov21_021D4CA0
	str r0, [r5, #0x14]
	ldr r0, [r0, #0]
	add r1, r7, #2
	bl sub_02012A60
	ldr r0, [sp, #0x14]
	bl ov21_021D4DA0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xe
	mov r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x1c]
	ldr r2, _021D81E8 ; =0x000002B9
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D81A6
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0xc]
	mov r3, #0x6b
	bl ov21_021D4DAC
	b _021D81BA
_021D81A6:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0xc]
	mov r3, #0x6c
	bl ov21_021D4DAC
_021D81BA:
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0xa
	str r0, [sp, #0x28]
	sub r0, #0x12
	str r0, [sp, #0x2c]
	add r0, sp, #0x18
	bl ov21_021D4CA0
	str r0, [r5, #0x24]
	ldr r0, [r0, #0]
	add r1, r7, #1
	bl sub_02012A60
	ldr r0, [sp, #0xc]
	bl ov21_021D4DA0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D81E4: .word 0x000003EB
_021D81E8: .word 0x000002B9
	thumb_func_end ov21_021D8018

	thumb_func_start ov21_021D81EC
ov21_021D81EC: ; 0x021D81EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov21_021D4D1C
	ldr r0, [r4, #0x10]
	bl ov21_021D4D1C
	ldr r0, [r4, #0x14]
	bl ov21_021D4D1C
	ldr r0, [r4, #0x24]
	bl ov21_021D4D1C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D81EC

	thumb_func_start ov21_021D820C
ov21_021D820C: ; 0x021D820C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	ldr r4, [r0, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	mov r1, #0x1b
	add r2, r4, #0
	mov r3, #7
	bl ov21_021D2724
	str r6, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x25
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #7
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #7
	bl sub_0201C3C0
	mov r2, #0
	add r3, r2, #0
	add r0, r4, #0
	mov r1, #7
	sub r3, #0x78
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D820C

	thumb_func_start ov21_021D828C
ov21_021D828C: ; 0x021D828C
	push {r4, lr}
	ldr r0, [r0, #0]
	add r3, r1, #0
	ldr r4, [r0, #0]
	mov r0, #7
	mov r1, #0x40
	mov r2, #0
	bl sub_02019690
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	pop {r4, pc}
	thumb_func_end ov21_021D828C

	thumb_func_start ov21_021D82A8
ov21_021D82A8: ; 0x021D82A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x1c]
	add r5, r0, #0
	ldr r3, [r2, #0xc]
	ldr r1, [r2, #4]
	cmp r3, #0
	bgt _021D82E4
	ldr r3, [r5, #0x10]
	cmp r3, #0
	beq _021D82E0
	bl ov21_021D8508
	cmp r0, #0
	bne _021D82D0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D8530
	b _021D82E4
_021D82D0:
	mov r1, #0xa
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #6
	str r1, [r0, #0xc]
	ldr r0, _021D8320 ; =0x0000068B
	bl sub_02005748
	b _021D82E4
_021D82E0:
	mov r0, #0
	str r0, [r2, #8]
_021D82E4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bge _021D82F2
	ldr r0, [r4, #0x1c]
	mov r1, #1
	str r1, [r0, #8]
	b _021D82FA
_021D82F2:
	ble _021D82FA
	ldr r0, [r4, #0x1c]
	mov r1, #2
	str r1, [r0, #8]
_021D82FA:
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _021D831C
	ldr r1, [r5, #0x10]
	cmp r1, #0
	bge _021D830A
	neg r1, r1
_021D830A:
	ldr r0, [r2, #0xc]
	sub r0, r0, r1
	str r0, [r2, #0xc]
	ldr r1, [r4, #0x1c]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bge _021D831C
	mov r0, #0
	str r0, [r1, #0xc]
_021D831C:
	pop {r3, r4, r5, pc}
	nop
_021D8320: .word 0x0000068B
	thumb_func_end ov21_021D82A8

	thumb_func_start ov21_021D8324
ov21_021D8324: ; 0x021D8324
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _021D8350 ; =0x021BF6BC
	ldr r0, [r4, #0x14]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	ldr r1, [r4, #0x18]
	sub r0, #0xf8
	sub r1, #0x68
	sub r2, #0xf8
	sub r3, #0x68
	bl sub_0201D4CC
	mov r1, #0xa
	mul r1, r0
	str r1, [r4, #0xc]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D8350: .word 0x021BF6BC
	thumb_func_end ov21_021D8324

	thumb_func_start ov21_021D8354
ov21_021D8354: ; 0x021D8354
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r0, r2, #0xc
	add r4, r1, #0
	asr r6, r3, #0x1f
	add r2, r3, #0
	asr r1, r0, #0x1f
	add r3, r6, #0
	bl sub_020E1F1C
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	ldrh r2, [r5, #0x28]
	mov r1, #0xb6
	add r0, r2, r0
	strh r0, [r5, #0x28]
	ldrh r0, [r5, #0x28]
	strh r0, [r5, #0x28]
	bl sub_020E1F6C
	add r3, r0, #0
	ldr r0, [r4, #0]
	lsl r3, r3, #0x10
	ldr r0, [r0, #0]
	mov r1, #7
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_0201C660
	ldr r0, [r4, #0]
	mov r1, #7
	ldr r0, [r0, #0]
	mov r2, #9
	mov r3, #0x80
	bl sub_0201C718
	ldr r0, [r4, #0]
	mov r1, #7
	ldr r0, [r0, #0]
	mov r2, #0xc
	mov r3, #0x68
	bl sub_0201C718
	ldrh r0, [r5, #0x28]
	strh r0, [r5, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8354

	thumb_func_start ov21_021D83C0
ov21_021D83C0: ; 0x021D83C0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r6, [r7, #0x1c]
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xa
	ldr r0, [r6, #0xc]
	lsl r1, r1, #6
	sub r2, r1, r0
	ldr r0, _021D8430 ; =0x000011C7
	mul r0, r2
	bl sub_020E1F6C
	ldr r1, [r6, #8]
	cmp r1, #1
	bne _021D83E2
	neg r0, r0
_021D83E2:
	ldrh r1, [r5, #0x2a]
	add r0, r1, r0
	strh r0, [r5, #0x28]
	ldrh r0, [r5, #0x28]
	mov r1, #0xb6
	strh r0, [r5, #0x28]
	bl sub_020E1F6C
	add r3, r0, #0
	ldr r0, [r4, #0]
	lsl r3, r3, #0x10
	ldr r0, [r0, #0]
	mov r1, #7
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0201C660
	ldr r0, [r4, #0]
	mov r1, #7
	ldr r0, [r0, #0]
	mov r2, #9
	mov r3, #0x80
	bl sub_0201C718
	ldr r0, [r4, #0]
	mov r1, #7
	ldr r0, [r0, #0]
	mov r2, #0xc
	mov r3, #0x68
	bl sub_0201C718
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021D842C
	ldrh r0, [r5, #0x28]
	strh r0, [r5, #0x2a]
_021D842C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D8430: .word 0x000011C7
	thumb_func_end ov21_021D83C0

	thumb_func_start ov21_021D8434
ov21_021D8434: ; 0x021D8434
	push {r3, r4}
	ldr r3, [r0, #0xc]
	cmp r3, #0
	ble _021D844C
	sub r3, r3, #2
	cmp r3, #4
	blt _021D8446
	str r3, [r0, #0xc]
	b _021D845C
_021D8446:
	mov r3, #4
	str r3, [r0, #0xc]
	b _021D845C
_021D844C:
	add r4, r3, #2
	mov r3, #3
	mvn r3, r3
	cmp r4, r3
	bgt _021D845A
	str r4, [r0, #0xc]
	b _021D845C
_021D845A:
	str r3, [r0, #0xc]
_021D845C:
	ldr r3, [r0, #0xc]
	str r3, [r0, #0x10]
	ldr r4, [r0, #0xc]
	cmp r4, #0x21
	bgt _021D849E
	mov r3, #0x20
	mvn r3, r3
	cmp r4, r3
	blt _021D849E
	cmp r1, #0
	bne _021D848C
	mov r3, #0
	str r3, [r0, #0x10]
	ldr r2, [r0, #0xc]
	cmp r2, #4
	bgt _021D849E
	sub r1, r3, #4
	cmp r2, r1
	blt _021D849E
	ldr r1, _021D84A4 ; =0x000004CD
	str r3, [r0, #0xc]
	str r1, [r0, #0x1c]
	pop {r3, r4}
	bx lr
_021D848C:
	cmp r2, #1
	bne _021D8498
	str r3, [r0, #0x10]
	str r3, [r0, #0xc]
	pop {r3, r4}
	bx lr
_021D8498:
	mov r1, #0x21
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
_021D849E:
	pop {r3, r4}
	bx lr
	nop
_021D84A4: .word 0x000004CD
	thumb_func_end ov21_021D8434

	thumb_func_start ov21_021D84A8
ov21_021D84A8: ; 0x021D84A8
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov21_021D1524
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D84A8

	thumb_func_start ov21_021D84B8
ov21_021D84B8: ; 0x021D84B8
	ldr r2, [r0, #0x1c]
	ldr r1, [r2, #0x2c]
	cmp r1, #0
	beq _021D84C6
	mov r1, #2
	str r1, [r0, #8]
	bx lr
_021D84C6:
	ldr r1, [r2, #0x34]
	cmp r1, #0
	beq _021D84D2
	mov r1, #2
	str r1, [r0, #0]
	bx lr
_021D84D2:
	ldr r1, [r2, #0x30]
	cmp r1, #0
	beq _021D84DC
	mov r1, #2
	str r1, [r0, #4]
_021D84DC:
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D84B8

	thumb_func_start ov21_021D84E0
ov21_021D84E0: ; 0x021D84E0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D8502
	bge _021D84EE
	mov r2, #1
	b _021D84F2
_021D84EE:
	mov r2, #0
	mvn r2, r2
_021D84F2:
	add r0, r1, #0
	add r1, r2, #0
	bl ov21_021D387C
	cmp r0, #0
	bne _021D8502
	mov r0, #0
	pop {r3, pc}
_021D8502:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021D84E0

	thumb_func_start ov21_021D8508
ov21_021D8508: ; 0x021D8508
	push {r3, lr}
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021D852A
	bge _021D8516
	mov r2, #1
	b _021D851A
_021D8516:
	mov r2, #0
	mvn r2, r2
_021D851A:
	add r0, r1, #0
	add r1, r2, #0
	bl ov21_021D3844
	cmp r0, #0
	bne _021D852A
	mov r0, #0
	pop {r3, pc}
_021D852A:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8508

	thumb_func_start ov21_021D8530
ov21_021D8530: ; 0x021D8530
	mov r2, #0
	str r2, [r0, #0x10]
	str r2, [r0, #0xc]
	ldr r0, [r1, #0x1c]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov21_021D8530

	thumb_func_start ov21_021D853C
ov21_021D853C: ; 0x021D853C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	add r5, r1, #0
	bl ov21_021D5B68
	cmp r0, #0
	beq _021D857C
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	ldr r0, [r0, #4]
	bl ov21_021D36FC
	ldr r1, [r4, #0x20]
	mov r2, #1
	ldr r0, [r1, #0]
	mov r3, #2
	orr r0, r2
	str r0, [r1, #0]
	ldr r1, [r4, #0x1c]
	mov r0, #0
	str r0, [r1, #0xc]
	ldr r1, [r4, #0x1c]
	str r3, [r1, #0x20]
	ldr r1, [r4, #0x1c]
	str r2, [r1, #0x10]
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0x14]
	ldr r1, [r4, #0x1c]
	str r0, [r1, #8]
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0x1c]
_021D857C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D853C

	thumb_func_start ov21_021D8580
ov21_021D8580: ; 0x021D8580
	cmp r1, #0
	bge _021D8586
	neg r1, r1
_021D8586:
	cmp r1, #0x40
	bge _021D8598
	add r2, r0, #0
	ldr r1, _021D85A8 ; =0x000004CD
	sub r2, #0x29
	cmp r2, r1
	blt _021D85A6
	sub r0, #0x29
	bx lr
_021D8598:
	ldr r1, _021D85AC ; =0x00000333
	add r2, r0, r1
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r2, r1
	bgt _021D85A6
	add r0, r2, #0
_021D85A6:
	bx lr
	; .align 2, 0
_021D85A8: .word 0x000004CD
_021D85AC: .word 0x00000333
	thumb_func_end ov21_021D8580