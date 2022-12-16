	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021D57B4
ov21_021D57B4: ; 0x021D57B4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r2, #9
	bhi _021D5806
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D57CA: ; jump table
	.short _021D57DE - _021D57CA - 2 ; case 0
	.short _021D57E2 - _021D57CA - 2 ; case 1
	.short _021D57E6 - _021D57CA - 2 ; case 2
	.short _021D57EA - _021D57CA - 2 ; case 3
	.short _021D57EE - _021D57CA - 2 ; case 4
	.short _021D57F4 - _021D57CA - 2 ; case 5
	.short _021D57F8 - _021D57CA - 2 ; case 6
	.short _021D57FC - _021D57CA - 2 ; case 7
	.short _021D5800 - _021D57CA - 2 ; case 8
	.short _021D5804 - _021D57CA - 2 ; case 9
_021D57DE:
	mov r5, #4
	b _021D5806
_021D57E2:
	ldr r5, _021D5824 ; =0x000001F3
	b _021D5806
_021D57E6:
	ldr r5, _021D5828 ; =0x000003E2
	b _021D5806
_021D57EA:
	ldr r5, _021D582C ; =0x000005D1
	b _021D5806
_021D57EE:
	mov r5, #0x1f
	lsl r5, r5, #6
	b _021D5806
_021D57F4:
	ldr r5, _021D5830 ; =0x000009AF
	b _021D5806
_021D57F8:
	ldr r5, _021D5834 ; =0x00000B9E
	b _021D5806
_021D57FC:
	ldr r5, _021D5838 ; =0x00000D8D
	b _021D5806
_021D5800:
	ldr r5, _021D583C ; =0x00000F7C
	b _021D5806
_021D5804:
	ldr r5, _021D5840 ; =0x0000116B
_021D5806:
	mov r2, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xbc
	add r1, r5, r1
	bl sub_02007068
	str r0, [r4, #0]
	ldr r0, [sp, #8]
	lsr r0, r0, #2
	str r0, [r4, #4]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D5824: .word 0x000001F3
_021D5828: .word 0x000003E2
_021D582C: .word 0x000005D1
_021D5830: .word 0x000009AF
_021D5834: .word 0x00000B9E
_021D5838: .word 0x00000D8D
_021D583C: .word 0x00000F7C
_021D5840: .word 0x0000116B
	thumb_func_end ov21_021D57B4

	thumb_func_start ov21_021D5844
ov21_021D5844: ; 0x021D5844
	push {r4, lr}
	add r4, r0, #0
	bne _021D584E
	bl sub_02022974
_021D584E:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021D5858
	bl sub_02022974
_021D5858:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5844

	thumb_func_start ov21_021D5868
ov21_021D5868: ; 0x021D5868
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xbc
	add r2, r1, #0
	bl sub_02007068
	cmp r4, #0
	beq _021D588A
	ldr r1, [sp, #8]
	lsr r1, r1, #2
	str r1, [r4, #0]
_021D588A:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5868

	thumb_func_start ov21_021D5890
ov21_021D5890: ; 0x021D5890
	push {r4, r5, lr}
	sub sp, #0xc
	mov r2, #0
	add r3, r0, #0
	add r4, r1, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xbc
	mov r1, #2
	bl sub_02007068
	add r5, r0, #0
	cmp r4, #0
	beq _021D58B8
	ldr r0, [sp, #8]
	mov r1, #0x24
	bl sub_020E2178
	str r0, [r4, #0]
_021D58B8:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5890

	thumb_func_start ov21_021D58C0
ov21_021D58C0: ; 0x021D58C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	add r4, r3, #0
	str r0, [sp]
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #3]
	add r0, r1, r0
	cmp r0, r2
	blt _021D58D8
	bl sub_02022974
_021D58D8:
	ldrb r1, [r4]
	ldrb r0, [r4, #2]
	add r1, r1, r0
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _021D58E8
	bl sub_02022974
_021D58E8:
	ldrb r7, [r4, #1]
	ldrb r0, [r4, #3]
	add r0, r7, r0
	cmp r7, r0
	bge _021D5942
	ldr r0, [sp, #4]
	mul r0, r7
	mov ip, r0
_021D58F8:
	ldrb r5, [r4]
	ldrb r3, [r4, #2]
	add r1, r5, #0
	add r0, r5, r3
	cmp r5, r0
	bge _021D592E
	ldr r2, [sp]
	mov r0, ip
	add r0, r2, r0
	add r2, r0, r5
_021D590C:
	sub r6, r1, r5
	ldrb r5, [r4, #1]
	ldrb r0, [r2]
	add r1, r1, #1
	sub r5, r7, r5
	mul r5, r3
	add r3, r4, r6
	add r3, r5, r3
	ldrb r3, [r3, #4]
	orr r0, r3
	strb r0, [r2]
	ldrb r3, [r4, #2]
	ldrb r5, [r4]
	add r2, r2, #1
	add r0, r5, r3
	cmp r1, r0
	blt _021D590C
_021D592E:
	ldr r0, [sp, #4]
	mov r1, ip
	add r0, r1, r0
	mov ip, r0
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #3]
	add r7, r7, #1
	add r0, r1, r0
	cmp r7, r0
	blt _021D58F8
_021D5942:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D58C0

	thumb_func_start ov21_021D5948
ov21_021D5948: ; 0x021D5948
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r3, [sp, #4]
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r5, [sp, #0x34]
	ldr r0, [r0, #4]
	ldr r4, [sp, #0x38]
	sub r0, r0, #1
	cmp r0, #0
	ble _021D59D2
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	ldr r7, [sp, #8]
	str r0, [sp, #0x14]
_021D5976:
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #0]
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _021D5984
	bl sub_02022974
_021D5984:
	mov r1, #0
	cmp r4, #0
	bls _021D599C
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #0]
	ldr r2, [r0, r7]
_021D5990:
	ldrb r0, [r5, r1]
	cmp r2, r0
	beq _021D599C
	add r1, r1, #1
	cmp r1, r4
	blo _021D5990
_021D599C:
	cmp r1, r4
	blo _021D59BE
	ldr r3, [sp, #0x30]
	mov r6, #0x24
	ldr r3, [r3, #0]
	ldr r0, [sp]
	ldr r3, [r3, r7]
	ldr r1, [sp, #0x10]
	mul r6, r3
	ldr r3, [sp, #4]
	ldr r2, [sp, #0x14]
	add r3, r3, r6
	bl ov21_021D58C0
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_021D59BE:
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #4]
	sub r1, r0, #1
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _021D5976
_021D59D2:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5948

	thumb_func_start ov21_021D59D8
ov21_021D59D8: ; 0x021D59D8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x24]
	add r5, r0, #0
	ldrb r6, [r4]
	mul r3, r6
	add r1, r1, r3
	str r1, [sp]
	ldrb r6, [r4, #1]
	ldr r3, [sp, #0x20]
	lsl r1, r1, #0xc
	mul r3, r6
	add r2, r2, r3
	str r1, [sp]
	str r2, [sp, #4]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	add r1, sp, #0
	bl sub_02021C50
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _021D5A12
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D5A12:
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D59D8

	thumb_func_start ov21_021D5A20
ov21_021D5A20: ; 0x021D5A20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov ip, r0
	ldr r0, [sp, #0x40]
	ldr r7, [sp, #0x50]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r1, [sp, #0x10]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x14]
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r3, [sp, #0x18]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x54]
	ldr r5, [sp, #0x5c]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x58]
	ldr r4, [sp, #0x60]
	str r0, [sp, #0x58]
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r7, #4]
	sub r0, r0, #1
	cmp r0, #0
	ble _021D5AE0
	add r0, r1, #0
	lsl r1, r0, #2
	mov r0, ip
	add r0, r0, r1
	ldr r6, [sp, #0x20]
	str r0, [sp, #0x1c]
_021D5A64:
	ldr r0, [r7, #0]
	ldr r0, [r0, r6]
	cmp r0, #0
	bne _021D5A70
	bl sub_02022974
_021D5A70:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	blt _021D5A7C
	bl sub_02022974
_021D5A7C:
	mov r1, #0
	cmp r4, #0
	bls _021D5A92
	ldr r0, [r7, #0]
	ldr r2, [r0, r6]
_021D5A86:
	ldrb r0, [r5, r1]
	cmp r2, r0
	beq _021D5A92
	add r1, r1, #1
	cmp r1, r4
	blo _021D5A86
_021D5A92:
	cmp r1, r4
	blo _021D5ACE
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x40]
	str r0, [sp]
	ldr r0, [r7, #0]
	ldr r3, [sp, #0x44]
	ldr r0, [r0, r6]
	lsl r1, r0, #2
	ldr r0, [sp, #0x4c]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	bl ov21_021D59D8
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
_021D5ACE:
	ldr r0, [sp, #0x24]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [r7, #4]
	sub r1, r0, #1
	ldr r0, [sp, #0x24]
	cmp r0, r1
	blt _021D5A64
_021D5AE0:
	ldr r1, [sp, #0x64]
	ldr r0, [sp, #0x20]
	str r0, [r1, #0]
	ldr r0, [sp, #0x10]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5A20