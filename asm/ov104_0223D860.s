	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov104_0223D860
ov104_0223D860: ; 0x0223D860
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r3, #0
	ldr r6, [sp, #0x18]
	bl ov104_0223D5A8
	add r4, r0, #0
	add r0, #0x26
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	add r0, r4, #0
	add r0, #0x26
	mov r2, #0
	strb r7, [r0]
	cmp r6, #0
	ble _0223D894
	add r0, r2, #0
_0223D886:
	ldrsh r1, [r5, r0]
	add r2, r2, #1
	add r5, r5, #2
	strh r1, [r4, #0x28]
	add r4, r4, #2
	cmp r2, r6
	blt _0223D886
_0223D894:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D860

	thumb_func_start ov104_0223D898
ov104_0223D898: ; 0x0223D898
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x26
	ldrb r2, [r2]
	lsl r3, r2, #2
	ldr r2, _0223D8C0 ; =0x022418A8
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _0223D8BE
	blx r2
	cmp r0, #1
	bne _0223D8BE
	add r4, #0x26
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
_0223D8BE:
	pop {r4, pc}
	; .align 2, 0
_0223D8C0: .word 0x022418A8
	thumb_func_end ov104_0223D898

	thumb_func_start ov104_0223D8C4
ov104_0223D8C4: ; 0x0223D8C4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0209B9D0
	add r4, r0, #0
	mov r5, #0
_0223D8D0:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223D8E4
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0223D8E4
	add r0, r6, #0
	add r1, r4, #0
	bl ov104_0223D898
_0223D8E4:
	add r5, r5, #1
	add r4, #0x3c
	cmp r5, #0x20
	blt _0223D8D0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D8C4

	thumb_func_start ov104_0223D8F0
ov104_0223D8F0: ; 0x0223D8F0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x26
	bl sub_0209B974
	add r5, r0, #0
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0223D912
	sub r0, r0, #1
	strh r0, [r4, #6]
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223D912:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _0223D9D4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D924: ; jump table
	.short _0223D92C - _0223D924 - 2 ; case 0
	.short _0223D992 - _0223D924 - 2 ; case 1
	.short _0223D992 - _0223D924 - 2 ; case 2
	.short _0223D992 - _0223D924 - 2 ; case 3
_0223D92C:
	mov r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #3
	bhi _0223D97C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223D940: ; jump table
	.short _0223D948 - _0223D940 - 2 ; case 0
	.short _0223D948 - _0223D940 - 2 ; case 1
	.short _0223D960 - _0223D940 - 2 ; case 2
	.short _0223D960 - _0223D940 - 2 ; case 3
_0223D948:
	mov r1, #4
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bne _0223D958
	strh r0, [r4, #8]
	mov r0, #3
	strh r0, [r4, #0xa]
	b _0223D986
_0223D958:
	mov r1, #3
	strh r1, [r4, #8]
	strh r0, [r4, #0xa]
	b _0223D986
_0223D960:
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0223D972
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #1
	strh r0, [r4, #0xa]
	b _0223D986
_0223D972:
	mov r0, #1
	strh r0, [r4, #8]
	mov r0, #0
	strh r0, [r4, #0xa]
	b _0223D986
_0223D97C:
	bl sub_02022974
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223D986:
	mov r0, #2
	ldrsh r0, [r4, r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_0223D992:
	ldrb r3, [r4, #1]
	ldr r1, [r6, #0]
	ldrh r2, [r6, #0xc]
	add r3, r3, #2
	lsl r3, r3, #1
	add r6, r4, r3
	mov r3, #2
	ldrsh r3, [r6, r3]
	add r0, sp, #0
	bl ov104_02232C80
	ldr r0, [r5, #0x30]
	add r1, sp, #0
	bl ov63_0222D7C8
	ldrb r1, [r4, #1]
	mov r0, #2
	ldrsh r2, [r4, r0]
	add r1, r1, #2
	lsl r1, r1, #1
	add r1, r4, r1
	ldrsh r0, [r1, r0]
	cmp r2, r0
	bne _0223D9CA
	mov r0, #0x2d
	strh r0, [r4, #6]
	mov r0, #1
	b _0223D9DA
_0223D9CA:
	mov r0, #0x1e
	strh r0, [r4, #6]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	b _0223D9DA
_0223D9D4:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223D9DA:
	strb r0, [r4, #1]
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D8F0

	.rodata


	.global Unk_ov104_022418A8
Unk_ov104_022418A8: ; 0x022418A8
	.incbin "incbin/overlay104_rodata.bin", 0x2618, 0x8

