	.include "macros/function.inc"
	.include "include/ov21_021DE668.inc"

	

	.text


	thumb_func_start ov21_021DE668
ov21_021DE668: ; 0x021DE668
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	bl ov21_021DE6E8
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021DE724
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x20]
	bl ov21_021DE774
	str r0, [r5, #0x24]
	ldr r0, _021DE6A8 ; =ov21_021DE778
	str r0, [r5, #8]
	ldr r0, _021DE6AC ; =ov21_021DE79C
	str r0, [r5, #0xc]
	ldr r0, _021DE6B0 ; =ov21_021DE7F8
	str r0, [r5, #0x10]
	ldr r0, _021DE6B4 ; =ov21_021DE804
	str r0, [r5, #0x14]
	ldr r0, _021DE6B8 ; =ov21_021DE8E4
	str r0, [r5, #0x18]
	ldr r0, _021DE6BC ; =ov21_021DE8E8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DE6A8: .word ov21_021DE778
_021DE6AC: .word ov21_021DE79C
_021DE6B0: .word ov21_021DE7F8
_021DE6B4: .word ov21_021DE804
_021DE6B8: .word ov21_021DE8E4
_021DE6BC: .word ov21_021DE8E8
	thumb_func_end ov21_021DE668

	thumb_func_start ov21_021DE6C0
ov21_021DE6C0: ; 0x021DE6C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021DE74C
	ldr r0, [r4, #4]
	bl ov21_021DE760
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE6C0

	thumb_func_start ov21_021DE6D4
ov21_021DE6D4: ; 0x021DE6D4
	mov r0, #0
	bx lr
	thumb_func_end ov21_021DE6D4

	thumb_func_start ov21_021DE6D8
ov21_021DE6D8: ; 0x021DE6D8
	mov r2, #1
	cmp r1, #1
	bne _021DE6E2
	mov r1, #0
	add r2, r1, #0
_021DE6E2:
	str r1, [r0, #0x18]
	add r0, r2, #0
	bx lr
	thumb_func_end ov21_021DE6D8

	thumb_func_start ov21_021DE6E8
ov21_021DE6E8: ; 0x021DE6E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	bne _021DE6FA
	bl sub_02022974
_021DE6FA:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl memset
	add r0, r5, #0
	bl ov21_021D138C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE6E8

	thumb_func_start ov21_021DE724
ov21_021DE724: ; 0x021DE724
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021DE736
	bl sub_02022974
_021DE736:
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
	thumb_func_end ov21_021DE724

	thumb_func_start ov21_021DE74C
ov21_021DE74C: ; 0x021DE74C
	push {r4, lr}
	add r4, r0, #0
	bne _021DE756
	bl sub_02022974
_021DE756:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE74C

	thumb_func_start ov21_021DE760
ov21_021DE760: ; 0x021DE760
	push {r4, lr}
	add r4, r0, #0
	bne _021DE76A
	bl sub_02022974
_021DE76A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE760

	thumb_func_start ov21_021DE774
ov21_021DE774: ; 0x021DE774
	mov r0, #0
	bx lr
	thumb_func_end ov21_021DE774

	thumb_func_start ov21_021DE778
ov21_021DE778: ; 0x021DE778
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D3434
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D344C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021DE778

	thumb_func_start ov21_021DE79C
ov21_021DE79C: ; 0x021DE79C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #1
	bne _021DE7B0
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DE7B0:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021DE7BC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DE7BC:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _021DE7EE
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021DE7E8
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	ldr r2, _021DE7F4 ; =0x000001FF
	add r1, r0, #0
	lsl r1, r1, #0x10
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xe
	lsr r1, r1, #0x10
	add r3, r2, #0
	bl sub_020059D0
	mov r0, #0
	str r0, [r4, #0x1c]
_021DE7E8:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_021DE7EE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DE7F4: .word 0x000001FF
	thumb_func_end ov21_021DE79C

	thumb_func_start ov21_021DE7F8
ov21_021DE7F8: ; 0x021DE7F8
	push {r3, lr}
	mov r0, #0
	bl sub_0200592C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov21_021DE7F8

	thumb_func_start ov21_021DE804
ov21_021DE804: ; 0x021DE804
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #3
	bhi _021DE8DA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DE820: ; jump table
	.short _021DE828 - _021DE820 - 2 ; case 0
	.short _021DE842 - _021DE820 - 2 ; case 1
	.short _021DE88C - _021DE820 - 2 ; case 2
	.short _021DE8D0 - _021DE820 - 2 ; case 3
_021DE828:
	ldr r0, [r4, #4]
	mov r1, #0x74
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x74
	bl memset
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE8DA
_021DE842:
	ldr r3, [r4, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021DE9A4
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021DE85C
	cmp r0, #1
	beq _021DE86A
	cmp r0, #2
	beq _021DE878
	b _021DE884
_021DE85C:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021DF44C
	b _021DE884
_021DE86A:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021DF374
	b _021DE884
_021DE878:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021DF548
_021DE884:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE8DA
_021DE88C:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021DE89C
	cmp r0, #1
	beq _021DE8AA
	cmp r0, #2
	beq _021DE8B8
	b _021DE8C4
_021DE89C:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov21_021DF4D0
	add r1, r0, #0
	b _021DE8C4
_021DE8AA:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov21_021DF3F0
	add r1, r0, #0
	b _021DE8C4
_021DE8B8:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov21_021DF5D0
	add r1, r0, #0
_021DE8C4:
	cmp r1, #0
	beq _021DE8DA
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE8DA
_021DE8D0:
	ldr r0, _021DE8E0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DE8DA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DE8E0: .word 0x04000050
	thumb_func_end ov21_021DE804

	thumb_func_start ov21_021DE8E4
ov21_021DE8E4: ; 0x021DE8E4
	mov r0, #0
	bx lr
	thumb_func_end ov21_021DE8E4

	thumb_func_start ov21_021DE8E8
ov21_021DE8E8: ; 0x021DE8E8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r5, [r4, #0]
	add r3, r0, #0
	add r1, r2, #0
	ldr r0, [r4, #8]
	cmp r5, #4
	bhi _021DE99E
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_021DE904: ; jump table
	.short _021DE90E - _021DE904 - 2 ; case 0
	.short _021DE942 - _021DE904 - 2 ; case 1
	.short _021DE980 - _021DE904 - 2 ; case 2
	.short _021DE98E - _021DE904 - 2 ; case 3
	.short _021DE99A - _021DE904 - 2 ; case 4
_021DE90E:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _021DE91E
	cmp r1, #1
	beq _021DE928
	cmp r1, #2
	beq _021DE932
	b _021DE93A
_021DE91E:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021DF44C
	b _021DE93A
_021DE928:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021DF374
	b _021DE93A
_021DE932:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021DF548
_021DE93A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE99E
_021DE942:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _021DE952
	cmp r1, #1
	beq _021DE95E
	cmp r1, #2
	beq _021DE96A
	b _021DE974
_021DE952:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021DF4D0
	add r2, r0, #0
	b _021DE974
_021DE95E:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021DF3F0
	add r2, r0, #0
	b _021DE974
_021DE96A:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021DF5D0
	add r2, r0, #0
_021DE974:
	cmp r2, #0
	beq _021DE99E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE99E
_021DE980:
	add r1, r3, #0
	bl ov21_021DEA0C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE99E
_021DE98E:
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE99E
_021DE99A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DE99E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE8E8

	thumb_func_start ov21_021DE9A4
ov21_021DE9A4: ; 0x021DE9A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021DEF08
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DEF54
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov21_021DEFA8
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021DF214
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021DEA44
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021DEB58
	ldr r0, [r4, #4]
	bl ov21_021D37CC
	cmp r0, #2
	bne _021DEA0A
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021DED24
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021DF098
_021DEA0A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DE9A4

	thumb_func_start ov21_021DEA0C
ov21_021DEA0C: ; 0x021DEA0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov21_021DF35C
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DED68
	add r0, r5, #0
	bl ov21_021DF1F8
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DF054
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DEA0C

	thumb_func_start ov21_021DEA44
ov21_021DEA44: ; 0x021DEA44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x21
	mov r3, #3
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x32
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r6, #0
	bl sub_020181C4
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x33
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r1, #3
	str r1, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	mov r3, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r6, #0
	bl sub_020181C4
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x34
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r6, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r6, #0
	bl sub_020181C4
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x36
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DEA44

	thumb_func_start ov21_021DEB58
ov21_021DEB58: ; 0x021DEB58
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r7, r2, #0
	bl ov21_021D37BC
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37CC
	cmp r0, #2
	beq _021DEB74
	mov r6, #0
_021DEB74:
	ldr r0, _021DEB88 ; =0x00020100
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r3, [r4, #0x18]
	add r0, r0, #4
	add r2, r7, #0
	bl ov21_021DEB8C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DEB88: .word 0x00020100
	thumb_func_end ov21_021DEB58

	thumb_func_start ov21_021DEB8C
ov21_021DEB8C: ; 0x021DEB8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r5, r0, #0
	str r1, [sp, #0x10]
	mov r0, #0x40
	add r1, r6, #0
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x30]
	bl sub_02023790
	add r7, r0, #0
	ldr r2, _021DEC28 ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	mov r1, #9
	add r2, r7, #0
	str r0, [sp, #0x18]
	bl sub_0200B1B8
	mov r0, #0x58
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0x98
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	mov r1, #0xa
	add r2, r7, #0
	bl sub_0200B1B8
	mov r0, #0x68
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0x98
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r4, #0
	bl ov21_021DEC2C
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r4, #0
	bl ov21_021DEC80
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #0
	str r4, [sp]
	bl ov21_021DECD4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DEC28: .word 0x000002B9
	thumb_func_end ov21_021DEB8C

	thumb_func_start ov21_021DEC2C
ov21_021DEC2C: ; 0x021DEC2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0x40
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_020989D0
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	add r6, r0, #0
	bl sub_0200B1B8
	mov r0, #0x58
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r5, [sp, #8]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0xb8
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DEC2C

	thumb_func_start ov21_021DEC80
ov21_021DEC80: ; 0x021DEC80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0x40
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_020989C4
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	add r6, r0, #0
	bl sub_0200B1B8
	mov r0, #0x68
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r5, [sp, #8]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0xb8
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DEC80

	thumb_func_start ov21_021DECD4
ov21_021DECD4: ; 0x021DECD4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r2, #0
	add r2, r3, #0
	mov r1, #2
	add r3, r4, #0
	bl ov21_021D56BC
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002EB4
	cmp r0, #0xf0
	bhs _021DED00
	lsr r1, r0, #1
	mov r0, #0x80
	sub r3, r0, r1
	b _021DED02
_021DED00:
	mov r3, #8
_021DED02:
	mov r0, #0x88
	str r0, [sp]
	mov r1, #0
	ldr r0, [sp, #0x20]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl ov21_021D5600
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DECD4

	thumb_func_start ov21_021DED24
ov21_021DED24: ; 0x021DED24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	str r3, [sp]
	bl ov21_021D37BC
	add r4, r0, #0
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov21_021D33D4
	ldr r1, _021DED64 ; =0x000001E7
	cmp r4, r1
	bne _021DED4A
	cmp r0, #0
	ble _021DED4A
	mov r4, #0xb
_021DED4A:
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov21_021DED7C
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021DEE80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DED64: .word 0x000001E7
	thumb_func_end ov21_021DED24

	thumb_func_start ov21_021DED68
ov21_021DED68: ; 0x021DED68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021DEEF8
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DEE38
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DED68

	thumb_func_start ov21_021DED7C
ov21_021DED7C: ; 0x021DED7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r3, [sp, #0x10]
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r1, #0]
	bl ov21_021D1F90
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	bl ov21_021D1F94
	str r0, [sp, #0x14]
	bl ov21_021D1F98
	str r0, [sp, #0x18]
	bl ov21_021D1F9C
	str r0, [sp, #0x1c]
	bl ov21_021D1FA0
	str r0, [sp, #0x20]
	mov r0, #0xfa
	lsl r0, r0, #4
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #5
	str r6, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl sub_0200985C
	str r0, [r5, #0x24]
	bl sub_0200A3DC
	ldr r0, [r5, #0x24]
	bl sub_02009D4C
	mov r0, #0xfa
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r6, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	mov r3, #0
	bl sub_020098B8
	str r0, [r5, #0x28]
	bl sub_0200A640
	ldr r0, [r5, #0x28]
	bl sub_02009D4C
	mov r0, #0xfa
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r6, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x1c]
	add r1, r7, #0
	mov r3, #1
	bl sub_02009918
	str r0, [r5, #0x2c]
	mov r0, #0xfa
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r6, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	mov r3, #1
	bl sub_02009918
	str r0, [r5, #0x30]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DED7C

	thumb_func_start ov21_021DEE38
ov21_021DEE38: ; 0x021DEE38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	ldr r4, [r1, #0]
	cmp r0, #0
	beq _021DEE7E
	bl sub_0200A4E4
	ldr r0, [r5, #0x28]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x28]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x2c]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x30]
	bl sub_02009D68
_021DEE7E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DEE38

	thumb_func_start ov21_021DEE80
ov21_021DEE80: ; 0x021DEE80
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	mov r1, #0xfa
	add r5, r0, #0
	lsl r1, r1, #4
	mov r0, #0
	add r6, r2, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #5
	str r2, [sp, #0x10]
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	add r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r0, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x20
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0x16
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl sub_02021B90
	str r0, [r5, #0]
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DEE80

	thumb_func_start ov21_021DEEF8
ov21_021DEEF8: ; 0x021DEEF8
	push {r3, lr}
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DEF04
	bl sub_02021BD4
_021DEF04:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021DEEF8

	thumb_func_start ov21_021DEF08
ov21_021DEF08: ; 0x021DEF08
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	bl ov21_021D375C
	add r3, r0, #0
	mov r0, #0x2b
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #4]
	add r2, r6, #0
	bl ov21_021D1778
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov21_021D238C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DEF08

	thumb_func_start ov21_021DEF3C
ov21_021DEF3C: ; 0x021DEF3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov21_021D23C0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov21_021D2360
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DEF3C

	thumb_func_start ov21_021DEF54
ov21_021DEF54: ; 0x021DEF54
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl ov21_021D2170
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r2, r0, #0
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #4]
	mov r3, #2
	bl ov21_021D1890
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DEF54

	thumb_func_start ov21_021DEF8C
ov21_021DEF8C: ; 0x021DEF8C
	push {r4, lr}
	ldr r0, [r0, #0]
	bl ov21_021D2170
	add r4, r0, #0
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_02008780
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DEF8C

	thumb_func_start ov21_021DEFA8
ov21_021DEFA8: ; 0x021DEFA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021DF044 ; =0x00000FFA
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x5a
	bl sub_02009A4C
	str r0, [r5, #0x14]
	bl sub_0200A3DC
	ldr r0, [r5, #0x14]
	bl sub_02009D4C
	ldr r0, _021DF048 ; =0x00000FAD
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0xd
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x18]
	bl sub_0200A640
	ldr r0, [r5, #0x18]
	bl sub_02009D4C
	ldr r0, _021DF04C ; =0x00000FF8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x58
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x1c]
	ldr r0, _021DF050 ; =0x00000FF9
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x59
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x20]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF044: .word 0x00000FFA
_021DF048: .word 0x00000FAD
_021DF04C: .word 0x00000FF8
_021DF050: .word 0x00000FF9
	thumb_func_end ov21_021DEFA8

	thumb_func_start ov21_021DF054
ov21_021DF054: ; 0x021DF054
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #0x18]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x20]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DF054

	thumb_func_start ov21_021DF098
ov21_021DF098: ; 0x021DF098
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r6, r2, #0
	add r5, r0, #0
	ldr r0, [r6, #4]
	str r3, [sp, #0x2c]
	ldr r4, [r1, #0]
	bl ov21_021D37BC
	add r7, r0, #0
	ldr r0, [r6, #4]
	add r1, r7, #0
	bl ov21_021D33D4
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x30]
	add r0, r7, #0
	mov r2, #6
	bl sub_020759CC
	add r6, r0, #0
	ldr r1, [sp, #0x30]
	add r0, r7, #0
	mov r2, #7
	bl sub_020759CC
	add r7, r0, #0
	add r0, r6, #0
	bl ov21_021DF180
	add r6, r0, #0
	add r0, r7, #0
	bl ov21_021DF180
	ldr r3, _021DF17C ; =0x00000FF9
	add r7, r0, #0
	mov r0, #0
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
	add r0, sp, #0x54
	sub r2, #0x4c
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x34]
	add r0, sp, #0x54
	str r0, [sp, #0x38]
	mov r0, #0x20
	str r0, [sp, #0x48]
	mov r0, #1
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x50]
	mov r0, #0xaa
	lsl r0, r0, #0xc
	str r0, [sp, #0x3c]
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl sub_02021B90
	add r1, r6, #0
	str r0, [r5, #4]
	bl sub_02021D6C
	cmp r6, r7
	beq _021DF172
	mov r0, #0x37
	lsl r0, r0, #0xe
	str r0, [sp, #0x3c]
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl sub_02021B90
	add r1, r7, #0
	str r0, [r5, #8]
	bl sub_02021D6C
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
_021DF172:
	mov r0, #0
	str r0, [r5, #8]
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF17C: .word 0x00000FF9
	thumb_func_end ov21_021DF098

	thumb_func_start ov21_021DF180
ov21_021DF180: ; 0x021DF180
	cmp r0, #0x11
	bhi _021DF1F6
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DF190: ; jump table
	.short _021DF1B4 - _021DF190 - 2 ; case 0
	.short _021DF1B8 - _021DF190 - 2 ; case 1
	.short _021DF1BC - _021DF190 - 2 ; case 2
	.short _021DF1C0 - _021DF190 - 2 ; case 3
	.short _021DF1C4 - _021DF190 - 2 ; case 4
	.short _021DF1C8 - _021DF190 - 2 ; case 5
	.short _021DF1CC - _021DF190 - 2 ; case 6
	.short _021DF1D0 - _021DF190 - 2 ; case 7
	.short _021DF1D4 - _021DF190 - 2 ; case 8
	.short _021DF1D0 - _021DF190 - 2 ; case 9
	.short _021DF1D8 - _021DF190 - 2 ; case 10
	.short _021DF1DC - _021DF190 - 2 ; case 11
	.short _021DF1E0 - _021DF190 - 2 ; case 12
	.short _021DF1E4 - _021DF190 - 2 ; case 13
	.short _021DF1E8 - _021DF190 - 2 ; case 14
	.short _021DF1EC - _021DF190 - 2 ; case 15
	.short _021DF1F0 - _021DF190 - 2 ; case 16
	.short _021DF1F4 - _021DF190 - 2 ; case 17
_021DF1B4:
	mov r0, #0
	bx lr
_021DF1B8:
	mov r0, #6
	bx lr
_021DF1BC:
	mov r0, #0xe
	bx lr
_021DF1C0:
	mov r0, #0xa
	bx lr
_021DF1C4:
	mov r0, #8
	bx lr
_021DF1C8:
	mov r0, #5
	bx lr
_021DF1CC:
	mov r0, #0xb
	bx lr
_021DF1D0:
	mov r0, #7
	bx lr
_021DF1D4:
	mov r0, #9
	bx lr
_021DF1D8:
	mov r0, #1
	bx lr
_021DF1DC:
	mov r0, #3
	bx lr
_021DF1E0:
	mov r0, #2
	bx lr
_021DF1E4:
	mov r0, #4
	bx lr
_021DF1E8:
	mov r0, #0xf
	bx lr
_021DF1EC:
	mov r0, #0xd
	bx lr
_021DF1F0:
	mov r0, #0x10
	bx lr
_021DF1F4:
	mov r0, #0xc
_021DF1F6:
	bx lr
	thumb_func_end ov21_021DF180

	thumb_func_start ov21_021DF1F8
ov21_021DF1F8: ; 0x021DF1F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021DF206
	bl sub_02021BD4
_021DF206:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DF210
	bl sub_02021BD4
_021DF210:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF1F8

	thumb_func_start ov21_021DF214
ov21_021DF214: ; 0x021DF214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r6, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	ldr r0, [r0, #4]
	str r2, [sp, #0x2c]
	add r7, r3, #0
	ldr r4, [r5, #0]
	bl ov21_021D37BC
	ldr r3, _021DF308 ; =0x00000FF9
	str r0, [sp, #0x30]
	mov r0, #0
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
	add r0, sp, #0x7c
	sub r2, #0x4c
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x5c]
	add r0, sp, #0x7c
	str r0, [sp, #0x60]
	mov r0, #0x20
	str r0, [sp, #0x70]
	mov r0, #1
	str r0, [sp, #0x74]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0x64]
	mov r0, #0xd
	lsl r0, r0, #0xe
	str r0, [sp, #0x68]
	add r0, sp, #0x5c
	str r7, [sp, #0x78]
	bl sub_02021B90
	mov r1, #0x11
	str r0, [r6, #0xc]
	bl sub_02021D6C
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #4]
	bl ov21_021D37CC
	cmp r0, #2
	beq _021DF2AC
	mov r0, #0
	str r0, [sp, #0x30]
_021DF2AC:
	mov r0, #0x15
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x30]
	add r2, r7, #0
	bl ov21_021DF30C
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov21_021D2344
	mov r1, #0x15
	ldr r2, [r5, #0]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	str r1, [sp, #0x34]
	mov r1, #0
	bl sub_0200A72C
	str r0, [sp, #0x3c]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x40]
	mov r0, #0x4d
	mvn r0, r0
	str r0, [sp, #0x44]
	add r0, #0x46
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x4c]
	mov r0, #0x1f
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	str r7, [sp, #0x58]
	str r4, [sp, #0x38]
	add r0, sp, #0x34
	bl ov21_021D4CA0
	str r0, [r6, #0x10]
	add r0, r4, #0
	bl ov21_021D4DA0
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF308: .word 0x00000FF9
	thumb_func_end ov21_021DF214

	thumb_func_start ov21_021DF30C
ov21_021DF30C: ; 0x021DF30C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #0x12
	mov r2, #2
	add r7, r0, #0
	bl ov21_021D4D6C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	bl ov21_021D566C
	add r5, r0, #0
	mov r0, #2
	add r1, r5, #0
	mov r2, #0
	bl sub_02002D7C
	cmp r0, #0x88
	bhs _021DF340
	mov r1, #0x88
	sub r0, r1, r0
	lsr r3, r0, #1
	b _021DF342
_021DF340:
	mov r3, #0
_021DF342:
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov21_021D4E80
	add r0, r5, #0
	bl ov21_021D5600
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF30C

	thumb_func_start ov21_021DF35C
ov21_021DF35C: ; 0x021DF35C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	bl ov21_021D4D1C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF35C

	thumb_func_start ov21_021DF374
ov21_021DF374: ; 0x021DF374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #1
	add r4, r2, #0
	add r6, r3, #0
	bl ov21_021D2360
	add r0, r7, #0
	bl ov21_021DF64C
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DF3E6
	cmp r6, #0
	beq _021DF3C2
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2b
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	b _021DF3E6
_021DF3C2:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2b
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021DF3E6:
	add r0, r5, #0
	bl ov21_021DF6B4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF374

	thumb_func_start ov21_021DF3F0
ov21_021DF3F0: ; 0x021DF3F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r2, #0x10]
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5, #0]
	beq _021DF410
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	b _021DF41A
_021DF410:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
_021DF41A:
	add r4, r0, #0
	cmp r4, #1
	bne _021DF442
	cmp r6, #1
	bne _021DF434
	add r0, r7, #0
	bl ov21_021DF680
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov21_021D2360
	b _021DF448
_021DF434:
	add r0, r5, #0
	bl ov21_021DEF8C
	add r0, r5, #0
	bl ov21_021DEF3C
	b _021DF448
_021DF442:
	add r0, r5, #0
	bl ov21_021DF6B4
_021DF448:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF3F0

	thumb_func_start ov21_021DF44C
ov21_021DF44C: ; 0x021DF44C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov21_021DF64C
	cmp r6, #0
	bne _021DF472
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	mov r3, #4
	bl ov21_021DF6C4
	add r0, r7, #0
	bl ov21_021DF6FC
_021DF472:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DF4CC
	cmp r6, #0
	beq _021DF4A8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #4
	add r2, r1, #0
	sub r2, #0x14
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021DF4A8:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #4
	add r3, r1, #0
	sub r3, #0x14
	bl ov21_021D23F8
_021DF4CC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF44C

	thumb_func_start ov21_021DF4D0
ov21_021DF4D0: ; 0x021DF4D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bne _021DF4F0
	bl ov21_021DF6E0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DF718
	str r0, [sp, #4]
	b _021DF4F6
_021DF4F0:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
_021DF4F6:
	ldr r0, [r6, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4, #0]
	beq _021DF510
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #8]
	b _021DF51C
_021DF510:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #8]
_021DF51C:
	mov r1, #0
	add r2, sp, #0
_021DF520:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021DF52E
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #3
	blt _021DF520
_021DF52E:
	cmp r1, #3
	bne _021DF542
	cmp r7, #1
	bne _021DF53C
	add r0, r5, #0
	bl ov21_021DF680
_021DF53C:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DF542:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF4D0

	thumb_func_start ov21_021DF548
ov21_021DF548: ; 0x021DF548
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov21_021DF64C
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov21_021D2360
	cmp r6, #0
	bne _021DF570
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	mov r3, #1
	bl ov21_021DF6C4
_021DF570:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DF5CA
	cmp r6, #0
	beq _021DF5A6
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021DF5A6:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021DF5CA:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF548

	thumb_func_start ov21_021DF5D0
ov21_021DF5D0: ; 0x021DF5D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bne _021DF5E6
	bl ov21_021DF6E0
	str r0, [sp]
	b _021DF5EA
_021DF5E6:
	mov r0, #1
	str r0, [sp]
_021DF5EA:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5, #0]
	beq _021DF604
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #4]
	b _021DF610
_021DF604:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #4]
_021DF610:
	mov r1, #0
	add r2, sp, #0
_021DF614:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021DF622
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #2
	blt _021DF614
_021DF622:
	cmp r1, #2
	bne _021DF646
	cmp r6, #1
	bne _021DF63A
	add r0, r7, #0
	bl ov21_021DF680
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov21_021D2360
	b _021DF640
_021DF63A:
	add r0, r5, #0
	bl ov21_021DEF3C
_021DF640:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DF646:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF5D0

	thumb_func_start ov21_021DF64C
ov21_021DF64C: ; 0x021DF64C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	add r5, r7, #0
	mov r6, #1
_021DF656:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021DF662
	add r1, r6, #0
	bl sub_02021FE0
_021DF662:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021DF656
	ldr r0, [r7, #0xc]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r7, #0x10]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF64C

	thumb_func_start ov21_021DF680
ov21_021DF680: ; 0x021DF680
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	add r5, r7, #0
	add r6, r4, #0
_021DF68A:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021DF696
	add r1, r6, #0
	bl sub_02021FE0
_021DF696:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021DF68A
	ldr r0, [r7, #0xc]
	mov r1, #0
	bl sub_02021FE0
	ldr r0, [r7, #0x10]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF680

	thumb_func_start ov21_021DF6B4
ov21_021DF6B4: ; 0x021DF6B4
	mov r1, #0x5b
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	ldr r3, _021DF6C0 ; =ov21_021D24FC
	add r1, r0, r1
	bx r3
	; .align 2, 0
_021DF6C0: .word ov21_021D24FC
	thumb_func_end ov21_021DF6B4

	thumb_func_start ov21_021DF6C4
ov21_021DF6C4: ; 0x021DF6C4
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	add r0, #0x34
	mov r1, #0x30
	add r2, r4, #0
	mov r3, #0x48
	bl ov21_021D2648
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF6C4

	thumb_func_start ov21_021DF6E0
ov21_021DF6E0: ; 0x021DF6E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x34
	bl ov21_021D2664
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x38]
	bl ov21_021D2164
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DF6E0

	thumb_func_start ov21_021DF6FC
ov21_021DF6FC: ; 0x021DF6FC
	push {r3, lr}
	sub sp, #8
	mov r1, #0x52
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r0, #0x54
	mov r1, #0xac
	mov r2, #0xaa
	mov r3, #0x20
	bl ov21_021D2648
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov21_021DF6FC

	thumb_func_start ov21_021DF718
ov21_021DF718: ; 0x021DF718
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x54
	bl ov21_021D2664
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x54]
	ldr r2, [r5, #0x58]
	bl ov21_021D1848
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DF718