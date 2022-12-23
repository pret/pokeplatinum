	.include "macros/function.inc"
	.include "overlay031/ov31_02256554.inc"

	

	.text


	thumb_func_start ov31_02256554
ov31_02256554: ; 0x02256554
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	beq _02256580
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	cmp r0, #0
	beq _02256580
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256580:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov31_02256554

	thumb_func_start ov31_02256584
ov31_02256584: ; 0x02256584
	push {r3, lr}
	cmp r0, #0
	beq _0225658E
	bl sub_020181C4
_0225658E:
	pop {r3, pc}
	thumb_func_end ov31_02256584

	thumb_func_start ov31_02256590
ov31_02256590: ; 0x02256590
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022565B0 ; =0x02256970
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022565B0: .word 0x02256970
	thumb_func_end ov31_02256590

	thumb_func_start ov31_022565B4
ov31_022565B4: ; 0x022565B4
	ldr r3, _022565BC ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022565BC: .word ov25_02255130
	thumb_func_end ov31_022565B4

	thumb_func_start ov31_022565C0
ov31_022565C0: ; 0x022565C0
	ldr r3, _022565C8 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022565C8: .word ov25_02255154
	thumb_func_end ov31_022565C0

	thumb_func_start ov31_022565CC
ov31_022565CC: ; 0x022565CC
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov31_022565CC

	thumb_func_start ov31_022565E0
ov31_022565E0: ; 0x022565E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256638 ; =0x02256954
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	bl ov31_02256644
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl ov31_0225672C
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _0225663C ; =0x04001000
	ldr r0, _02256640 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov31_022565CC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256638: .word 0x02256954
_0225663C: .word 0x04001000
_02256640: .word 0xFFFFE0FF
	thumb_func_end ov31_022565E0

	thumb_func_start ov31_02256644
ov31_02256644: ; 0x02256644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	mov r0, #8
	lsl r1, r0, #6
	bl sub_02018144
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _022566E8
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	add r7, r0, #0
	add r6, r0, #0
	add r4, r0, #0
	add r5, r0, #0
_0225666C:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	orr r1, r0
	ldr r0, [sp, #8]
	orr r0, r1
	orr r0, r7
	orr r0, r6
	orr r0, r4
	add r1, r5, #0
	orr r1, r0
	ldr r0, [sp, #0x18]
	orr r0, r1
	ldr r1, [sp, #0x14]
	add r1, r2, r1
	mov r2, #0x20
	bl MIi_CpuClearFast
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #1
	lsl r0, r0, #0x18
	add r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x1c
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #0x10
	add r7, r7, r0
	lsr r0, r0, #4
	add r6, r6, r0
	mov r0, #1
	lsl r0, r0, #8
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x10
	blt _0225666C
	mov r0, #0
	str r0, [sp]
	mov r3, #2
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	mov r1, #6
	lsl r3, r3, #8
	bl sub_0201958C
	ldr r0, [sp, #0x1c]
	bl sub_020181C4
_022566E8:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov31_02256644

	thumb_func_start ov31_022566EC
ov31_022566EC: ; 0x022566EC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0]
	bl ov31_0225672C
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov31_022565CC
	pop {r3, r4, r5, pc}
	thumb_func_end ov31_022566EC

	thumb_func_start ov31_02256710
ov31_02256710: ; 0x02256710
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov31_022565CC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov31_02256710

	thumb_func_start ov31_0225672C
ov31_0225672C: ; 0x0225672C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #6
	bl sub_02019FE4
	mov r5, #0
	ldr r1, _02256760 ; =0x02256950
	add r0, #0x84
	add r2, r5, #0
_0225673E:
	add r3, r2, #0
	add r6, r0, #0
_02256742:
	ldrb r7, [r4, r3]
	add r3, r3, #1
	add r7, r1, r7
	sub r7, r7, #1
	ldrb r7, [r7]
	strh r7, [r6]
	add r6, r6, #2
	cmp r3, #0x18
	blt _02256742
	add r5, r5, #1
	add r0, #0x40
	add r4, #0x18
	cmp r5, #0x14
	blt _0225673E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256760: .word 0x02256950
	thumb_func_end ov31_0225672C

	.rodata


	.global Unk_ov31_02256950
Unk_ov31_02256950: ; 0x02256950
	.incbin "incbin/overlay31_rodata.bin", 0x1EC, 0x1F0 - 0x1EC

	.global Unk_ov31_02256954
Unk_ov31_02256954: ; 0x02256954
	.incbin "incbin/overlay31_rodata.bin", 0x1F0, 0x20C - 0x1F0

	.global Unk_ov31_02256970
Unk_ov31_02256970: ; 0x02256970
	.incbin "incbin/overlay31_rodata.bin", 0x20C, 0x30

