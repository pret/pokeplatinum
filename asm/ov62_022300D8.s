	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov62_022300D8
ov62_022300D8: ; 0x022300D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r6, [r7, #0x14]
	ldr r4, [r7, #0x24]
	ldr r5, [r7, #0x28]
	cmp r0, #0
	bne _022301B6
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x43
	add r2, r4, #0
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x43
	add r2, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x45
	add r2, r4, #0
	mov r3, #5
	bl sub_0200710C
	add r0, r7, #0
	mov r1, #3
	bl ov62_02231710
	add r2, r0, #0
	mov r1, #0
	mov r0, #0x12
	str r1, [sp]
	lsl r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r3, #0x66
	bl sub_02003050
	add r0, r7, #0
	mov r1, #3
	bl ov62_02231710
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r3, #0x66
	bl sub_02003050
	add r0, r7, #0
	mov r1, #0
	bl ov62_02231710
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r3, #0x66
	bl sub_02003050
	add r0, r7, #0
	mov r1, #0
	bl ov62_02231710
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r3, #0x66
	bl sub_02003050
	b _02230260
_022301B6:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x36
	add r2, r4, #0
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x36
	add r2, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x37
	add r2, r4, #0
	mov r3, #5
	bl sub_0200710C
	mov r1, #0
	mov r0, #0x12
	str r1, [sp]
	lsl r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r2, #0x35
	mov r3, #0x66
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r2, #0x35
	mov r3, #0x66
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r2, #0x34
	mov r3, #0x66
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r2, #0x34
	mov r3, #0x66
	bl sub_02003050
_02230260:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x46
	add r2, r4, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x46
	add r2, r4, #0
	mov r3, #1
	bl sub_0200710C
	ldr r0, [r7, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	mov r3, #0x10
	bl sub_02003A2C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_022300D8

	thumb_func_start ov62_022302A8
ov62_022302A8: ; 0x022302A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	mov r5, #2
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x24]
	cmp r2, #0
	beq _022302BA
	mov r5, #0
_022302BA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x2d
	add r2, r4, #0
	add r3, r7, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov62_022302A8

	thumb_func_start ov62_022302F0
ov62_022302F0: ; 0x022302F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, [r0, #0x24]
	ldr r4, [r0, #0x14]
	mov r0, #0
	str r0, [sp]
	add r6, r1, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x2d
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_022302F0

	thumb_func_start ov62_02230330
ov62_02230330: ; 0x02230330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r1, r0, #0
	ldr r6, [r1, #0x18]
	ldr r5, [r1, #0x1c]
	ldr r7, [r1, #0x28]
	ldr r1, [r1, #0]
	str r0, [sp, #0x18]
	ldr r4, [r0, #0x14]
	cmp r1, #0
	bne _02230394
	mov r1, #2
	bl ov62_02231710
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223045C ; =0x0000270F
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	ldr r0, [sp, #0x18]
	mov r1, #2
	bl ov62_02231710
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02230460 ; =0x00002710
	add r2, r6, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r3, r5, #0
	bl sub_0200CDC4
	b _022303D6
_02230394:
	str r4, [sp]
	mov r0, #0x33
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223045C ; =0x0000270F
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	str r4, [sp]
	mov r0, #0x33
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02230460 ; =0x00002710
	add r2, r6, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r3, r5, #0
	bl sub_0200CDC4
_022303D6:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0223045C ; =0x0000270F
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x41
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02230460 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x41
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223045C ; =0x0000270F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x2e
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223045C ; =0x0000270F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x2f
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _02230460 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x2e
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02230460 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x2f
	bl sub_0200CE54
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223045C: .word 0x0000270F
_02230460: .word 0x00002710
	thumb_func_end ov62_02230330

	thumb_func_start ov62_02230464
ov62_02230464: ; 0x02230464
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	str r0, [sp]
	ldr r0, [r0, #0x18]
	add r4, sp, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp]
	add r2, sp, #0x20
	ldr r0, [r0, #0x1c]
	mov r1, #2
	str r0, [sp, #0x14]
	mov r0, #0
	strh r0, [r2, #0x2c]
	strh r0, [r2, #0x2e]
	strh r0, [r2, #0x30]
	strh r0, [r2, #0x32]
	str r0, [sp, #0x10]
	str r0, [sp, #0x54]
	mov r0, #1
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x10]
	ldr r3, _02230640 ; =0x02248890
	str r0, [sp, #0x7c]
	str r0, [sp, #0x58]
	ldr r0, _02230644 ; =0x0000270F
	str r1, [sp, #0x78]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
	sub r0, r1, #3
	str r0, [sp, #0x70]
	str r0, [sp, #0x74]
	add r0, sp, #0x40
	str r0, [sp, #0xc]
	ldrh r0, [r3, #0x22]
	ldr r5, _02230648 ; =0x022488D8
	str r4, [sp, #8]
	strh r0, [r2, #0x20]
	ldrh r0, [r3, #0x24]
	add r6, sp, #0x20
	strh r0, [r2, #0x22]
	ldrh r0, [r3, #0x26]
	strh r0, [r2, #0x24]
	ldrh r0, [r3, #0x28]
	strh r0, [r2, #0x26]
	ldrh r0, [r3, #0x2a]
	strh r0, [r2, #0x28]
	ldrh r0, [r3, #0x2c]
	strh r0, [r2, #0x2a]
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldrb r0, [r3]
	ldr r4, [sp]
	ldr r1, _0223064C ; =0x000006F8
	strb r0, [r2]
	ldrb r0, [r3, #1]
	strb r0, [r2, #1]
	ldrb r0, [r3, #2]
	strb r0, [r2, #2]
	ldrb r0, [r3, #3]
	strb r0, [r2, #3]
	ldrb r0, [r3, #4]
	strb r0, [r2, #4]
	ldrb r0, [r3, #5]
	strb r0, [r2, #5]
	add r0, r4, #0
	add r0, r0, r1
	str r0, [sp, #4]
_022304F6:
	ldr r0, [sp, #0x10]
	mov r1, #3
	mov r7, #0
	add r5, r4, #0
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
_02230508:
	cmp r7, #0
	bne _0223051C
	mov r0, #1
	str r0, [sp, #0x5c]
	ldr r0, _02230644 ; =0x0000270F
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
	b _0223052A
_0223051C:
	mov r0, #2
	str r0, [sp, #0x5c]
	ldr r0, _02230650 ; =0x00002710
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
_0223052A:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x4c
	bl sub_0200CE6C
	ldr r1, _0223064C ; =0x000006F8
	ldr r2, [sp, #0xc]
	str r0, [r5, r1]
	add r0, r1, #0
	mov r1, #0
	ldrsh r1, [r2, r1]
	ldr r0, [r5, r0]
	mov r2, #0x60
	bl ov62_02230E68
	ldr r0, _0223064C ; =0x000006F8
	ldr r0, [r5, r0]
	bl sub_0200D330
	ldr r0, _0223064C ; =0x000006F8
	mov r1, #2
	ldr r0, [r5, r0]
	bl sub_0200D6A4
	ldr r0, _0223064C ; =0x000006F8
	ldr r1, [sp, #8]
	mov r2, #0xfe
	ldr r0, [r5, r0]
	ldr r1, [r1, #0]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, [sp, #0x1c]
	sub r0, #0xf
	strb r1, [r4, r0]
	ldr r0, _02230654 ; =0x00000724
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [sp, #8]
	ldr r1, [r0, #0]
	ldr r0, _02230658 ; =0x00000708
	str r1, [r4, r0]
	mov r0, #0
	ldrsb r0, [r6, r0]
	lsl r1, r0, #1
	ldr r0, _0223065C ; =0x0000071C
	add r1, #0xa
	str r1, [r4, r0]
	ldr r0, [sp, #0x10]
	cmp r0, #3
	ldr r0, _02230660 ; =0x00000718
	bge _022305AE
	mov r1, #0
	str r1, [r4, r0]
	add r0, r1, #0
	ldrsb r1, [r6, r0]
	ldr r0, _02230664 ; =0x0000070E
	add r1, #8
	strh r1, [r4, r0]
	mov r1, #0
	mvn r1, r1
	b _022305C2
_022305AE:
	mov r1, #0
	str r1, [r4, r0]
	add r0, r1, #0
	ldrsb r1, [r6, r0]
	mov r0, #0xff
	add r1, #8
	sub r1, r0, r1
	ldr r0, _02230664 ; =0x0000070E
	strh r1, [r4, r0]
	mov r1, #1
_022305C2:
	add r0, r0, #2
	add r7, r7, #1
	add r5, r5, #4
	strb r1, [r4, r0]
	cmp r7, #2
	blt _02230508
	ldr r0, _02230668 ; =ov62_02230C28
	ldr r1, [sp, #4]
	mov r2, #5
	bl sub_0200DA04
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	add r4, #0x30
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	bge _02230600
	b _022304F6
_02230600:
	ldr r0, [sp]
	sub r1, #0x28
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0223063A
	ldr r7, _02230654 ; =0x00000724
_0223060C:
	ldr r4, [sp]
	ldr r1, _0223064C ; =0x000006F8
	mov r0, #0
	add r2, r4, #0
	add r6, r0, #0
	add r5, r2, r1
_02230618:
	ldr r1, [r4, r7]
	cmp r1, #3
	beq _0223062C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ov62_02230C28
	mov r0, #1
_0223062C:
	add r6, r6, #1
	add r4, #0x30
	add r5, #0x30
	cmp r6, #6
	blt _02230618
	cmp r0, #0
	bne _0223060C
_0223063A:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230640: .word 0x02248890
_02230644: .word 0x0000270F
_02230648: .word 0x022488D8
_0223064C: .word 0x000006F8
_02230650: .word 0x00002710
_02230654: .word 0x00000724
_02230658: .word 0x00000708
_0223065C: .word 0x0000071C
_02230660: .word 0x00000718
_02230664: .word 0x0000070E
_02230668: .word ov62_02230C28
	thumb_func_end ov62_02230464

	thumb_func_start ov62_0223066C
ov62_0223066C: ; 0x0223066C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0
	ldr r6, _02230698 ; =0x000006F8
	str r0, [sp]
_02230676:
	mov r4, #0
	add r5, r7, #0
_0223067A:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0223067A
	ldr r0, [sp]
	add r7, #0x30
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #6
	blt _02230676
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230698: .word 0x000006F8
	thumb_func_end ov62_0223066C

	thumb_func_start ov62_0223069C
ov62_0223069C: ; 0x0223069C
	push {r4, r5, r6, lr}
	mov r6, #7
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #8
_022306A6:
	ldr r0, [r5, r6]
	bl sub_0200DA58
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #6
	blt _022306A6
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_0223069C

	thumb_func_start ov62_022306B8
ov62_022306B8: ; 0x022306B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, [r0, #0x14]
	ldr r7, [r0, #0x1c]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0]
	str r1, [sp, #0xc]
	cmp r0, #6
	bhi _0223070E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022306D8: ; jump table
	.short _022306E6 - _022306D8 - 2 ; case 0
	.short _0223070E - _022306D8 - 2 ; case 1
	.short _022306EE - _022306D8 - 2 ; case 2
	.short _02230706 - _022306D8 - 2 ; case 3
	.short _022306FE - _022306D8 - 2 ; case 4
	.short _022306F6 - _022306D8 - 2 ; case 5
	.short _022306F6 - _022306D8 - 2 ; case 6
_022306E6:
	mov r6, #0x3f
	mov r4, #0x18
	mov r5, #0x19
	b _02230714
_022306EE:
	mov r6, #0x11
	mov r4, #0x12
	mov r5, #0x13
	b _02230714
_022306F6:
	mov r6, #8
	mov r4, #9
	mov r5, #0xa
	b _02230714
_022306FE:
	mov r6, #0xb
	mov r4, #0xc
	mov r5, #0xd
	b _02230714
_02230706:
	mov r6, #0xe
	mov r4, #0xf
	mov r5, #0x10
	b _02230714
_0223070E:
	mov r6, #0x30
	mov r4, #0x16
	mov r5, #0x17
_02230714:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02230798 ; =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r6, #0
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223079C ; =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r6, #0
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02230798 ; =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r4, #0
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223079C ; =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r4, #0
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02230798 ; =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r5, #0
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223079C ; =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r5, #0
	bl sub_0200CE54
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02230798: .word 0x00002711
_0223079C: .word 0x00002712
	thumb_func_end ov62_022306B8

	thumb_func_start ov62_022307A0
ov62_022307A0: ; 0x022307A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _022307B8 ; =0x00002711
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _022307BC ; =0x00002712
	bl sub_0200D070
	pop {r4, pc}
	nop
_022307B8: .word 0x00002711
_022307BC: .word 0x00002712
	thumb_func_end ov62_022307A0

	thumb_func_start ov62_022307C0
ov62_022307C0: ; 0x022307C0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02230880 ; =0x00000534
	mov r7, #0
	add r4, r6, r0
	add r5, r6, #0
_022307CC:
	mov r2, #0x6e
	lsl r2, r2, #4
	ldr r3, [r6, r2]
	mov r2, #5
	sub r2, r2, r3
	lsl r2, r2, #4
	add r2, #0xd9
	lsl r2, r2, #0x10
	ldr r0, [r4, #0]
	mov r1, #0x32
	asr r2, r2, #0x10
	bl ov62_02230E68
	ldr r0, _02230884 ; =0x00000548
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r5, r0]
	sub r2, #0x2c
	bl sub_020128C4
	add r7, r7, #1
	add r4, #0x28
	add r5, #0x28
	cmp r7, #5
	blt _022307CC
	mov r5, #0
	add r4, r6, #0
	add r7, sp, #0
_02230804:
	ldr r0, _02230888 ; =0x000006D8
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223087E
	ldr r0, _02230880 ; =0x00000534
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl ov62_02230E74
	ldr r0, _02230888 ; =0x000006D8
	ldr r1, [r6, r0]
	sub r0, r1, #1
	cmp r0, r5
	bne _02230834
	mov r0, #0xa9
	strh r0, [r7]
	ldr r0, _02230880 ; =0x00000534
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D430
	b _02230862
_02230834:
	mov r0, #2
	ldrsh r0, [r7, r0]
	sub r1, r1, r5
	lsl r1, r1, #2
	sub r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _02230888 ; =0x000006D8
	mov r2, #5
	ldr r0, [r6, r0]
	sub r1, r0, r5
	sub r0, r1, #1
	sub r2, r2, r1
	mov r1, #0x24
	mul r1, r2
	lsl r0, r0, #4
	add r1, #0x19
	add r0, r0, r1
	strh r0, [r7]
	ldr r0, _02230880 ; =0x00000534
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_0200D430
_02230862:
	ldr r0, _02230880 ; =0x00000534
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r4, r0]
	bl ov62_02230E68
	ldr r0, _02230888 ; =0x000006D8
	add r5, r5, #1
	ldr r0, [r6, r0]
	add r4, #0x28
	cmp r5, r0
	blt _02230804
_0223087E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230880: .word 0x00000534
_02230884: .word 0x00000548
_02230888: .word 0x000006D8
	thumb_func_end ov62_022307C0

	thumb_func_start ov62_0223088C
ov62_0223088C: ; 0x0223088C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r0, _02230A44 ; =0x00000534
	mov r1, #0x6e
	add r4, r5, r0
	ldr r0, [r5, #0x18]
	add r2, sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #4]
	mov r0, #0x2a
	strh r0, [r2, #4]
	ldr r3, [r5, r1]
	mov r0, #5
	sub r0, r0, r3
	lsl r0, r0, #4
	add r0, #0xc9
	strh r0, [r2, #6]
	ldr r1, [r5, r1]
	cmp r1, #2
	bne _022308C8
	mov r0, #4
	sub r0, r0, r1
	lsl r0, r0, #4
	add r0, #0xc9
	strh r0, [r2, #6]
_022308C8:
	mov r0, #0
	str r0, [sp, #0x10]
	add r1, r0, #0
	add r0, sp, #0x18
	strh r1, [r0, #8]
	ldr r1, [sp, #0x10]
	mov r2, #1
	strh r1, [r0, #0xa]
	add r0, r1, #0
	str r1, [sp, #0x4c]
	ldr r1, _02230A48 ; =0x00002711
	str r0, [sp, #0x24]
	str r1, [sp, #0x30]
	sub r1, r1, #2
	mov r0, #3
	str r0, [sp, #0x48]
	sub r0, r0, #4
	str r1, [sp, #0x14]
	str r1, [sp, #0x34]
	ldr r1, _02230A48 ; =0x00002711
	ldr r6, _02230A4C ; =0x022488A8
	ldr r7, [sp, #0x10]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
_02230900:
	mov r0, #2
	str r0, [sp, #0x2c]
	ldr r0, _02230A50 ; =0x00002712
	ldr r1, [sp, #8]
	str r0, [sp, #0x30]
	sub r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, _02230A50 ; =0x00002712
	add r2, sp, #0x1c
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldrb r0, [r6, #5]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	bl sub_0200CE6C
	str r0, [r4, #0]
	bl sub_0200D330
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r2, sp, #0x18
	mov r1, #4
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #6
	add r1, #8
	lsl r1, r1, #0x10
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl ov62_02230E68
	mov r0, #1
	str r0, [sp, #0x2c]
	ldr r0, _02230A48 ; =0x00002711
	ldr r1, [sp, #8]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x14]
	add r2, sp, #0x1c
	str r0, [sp, #0x34]
	ldr r0, _02230A48 ; =0x00002711
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldrb r0, [r6]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	bl sub_0200CE6C
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r2, sp, #0x18
	mov r1, #4
	add r0, r4, #0
	add r0, #0xc8
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #6
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #0]
	bl ov62_02230E68
	ldr r1, _02230A54 ; =0x00000818
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r0, #0xc8
	ldr r0, [r0, #0]
	ldr r1, [r1, r7]
	bl sub_0200D3F4
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #1
	add r4, #0x28
	add r7, #0x24
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _02230900
	mov r4, #0
	add r6, r5, #0
	add r7, sp, #0x18
_022309B2:
	ldr r0, _02230A58 ; =0x000006D8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02230A2C
	ldr r0, _02230A44 ; =0x00000534
	add r1, sp, #0x18
	ldr r0, [r6, r0]
	add r1, #2
	add r2, sp, #0x18
	bl ov62_02230E74
	ldr r0, _02230A58 ; =0x000006D8
	ldr r1, [r5, r0]
	sub r0, r1, #1
	cmp r0, r4
	bne _022309E2
	mov r0, #0xa9
	strh r0, [r7]
	ldr r0, _02230A44 ; =0x00000534
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0200D430
	b _02230A10
_022309E2:
	mov r0, #2
	ldrsh r0, [r7, r0]
	sub r1, r1, r4
	lsl r1, r1, #2
	sub r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _02230A58 ; =0x000006D8
	mov r2, #5
	ldr r0, [r5, r0]
	sub r1, r0, r4
	sub r0, r1, #1
	sub r2, r2, r1
	mov r1, #0x24
	mul r1, r2
	lsl r0, r0, #4
	add r1, #0x19
	add r0, r0, r1
	strh r0, [r7]
	ldr r0, _02230A44 ; =0x00000534
	mov r1, #2
	ldr r0, [r6, r0]
	bl sub_0200D430
_02230A10:
	ldr r0, _02230A44 ; =0x00000534
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r6, r0]
	bl ov62_02230E68
	ldr r0, _02230A58 ; =0x000006D8
	add r4, r4, #1
	ldr r0, [r5, r0]
	add r6, #0x28
	cmp r4, r0
	blt _022309B2
_02230A2C:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230A44: .word 0x00000534
_02230A48: .word 0x00002711
_02230A4C: .word 0x022488A8
_02230A50: .word 0x00002712
_02230A54: .word 0x00000818
_02230A58: .word 0x000006D8
	thumb_func_end ov62_0223088C

	thumb_func_start ov62_02230A5C
ov62_02230A5C: ; 0x02230A5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02230AB0 ; =0x000005FC
	mov r4, #0
	str r4, [sp]
	add r6, r5, #0
	add r7, r5, r0
_02230A6A:
	ldr r1, _02230AB4 ; =0x00000818
	ldr r0, _02230AB0 ; =0x000005FC
	ldr r1, [r5, r1]
	ldr r0, [r6, r0]
	ldr r1, [r1, r4]
	bl sub_0200D3F4
	ldr r0, _02230AB4 ; =0x00000818
	ldr r0, [r5, r0]
	add r1, r0, r4
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02230A9E
	ldr r0, _02230AB0 ; =0x000005FC
	ldr r1, [r1, #0xc]
	ldr r0, [r6, r0]
	bl sub_0200D364
	ldr r0, _02230AB4 ; =0x00000818
	add r1, r7, #0
	ldr r2, [r5, r0]
	add r0, r5, #0
	add r3, r2, r4
	ldr r2, [r3, #8]
	bl ov62_02230FC8
_02230A9E:
	ldr r0, [sp]
	add r4, #0x24
	add r0, r0, #1
	add r6, #0x28
	add r7, #0x28
	str r0, [sp]
	cmp r0, #5
	blt _02230A6A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230AB0: .word 0x000005FC
_02230AB4: .word 0x00000818
	thumb_func_end ov62_02230A5C

	thumb_func_start ov62_02230AB8
ov62_02230AB8: ; 0x02230AB8
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02230AE8 ; =0x00000548
	add r5, r0, #0
	add r6, r7, #0
	mov r4, #0
	sub r6, #0x14
_02230AC4:
	ldr r1, _02230AEC ; =0x000005FC
	mov r0, #0x61
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r1, #0]
	bl sub_020131E0
	ldr r1, [r5, r6]
	ldr r0, [r5, r7]
	ldr r1, [r1, #0]
	bl sub_020131E0
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #5
	blt _02230AC4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230AE8: .word 0x00000548
_02230AEC: .word 0x000005FC
	thumb_func_end ov62_02230AB8

	thumb_func_start ov62_02230AF0
ov62_02230AF0: ; 0x02230AF0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02230B64 ; =0x000006D8
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02230B60
	mov r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _02230B60
	ldr r0, _02230B68 ; =0x00000534
	add r4, r7, #0
	add r5, r7, #0
	add r6, r7, r0
_02230B0C:
	ldr r1, _02230B6C ; =0x000006C4
	ldr r0, _02230B68 ; =0x00000534
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	ldr r1, [r1, #0xc]
	bl sub_0200D364
	ldr r0, _02230B6C ; =0x000006C4
	add r1, r6, #0
	ldr r3, [r4, r0]
	add r0, r7, #0
	ldr r2, [r3, #8]
	bl ov62_02230FC8
	ldr r0, _02230B70 ; =0x00000548
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r5, r0]
	sub r2, #0x2c
	bl sub_020128C4
	ldr r0, _02230B70 ; =0x00000548
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _02230B68 ; =0x00000534
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	ldr r0, [sp]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp]
	ldr r0, _02230B64 ; =0x000006D8
	add r5, #0x28
	ldr r1, [r7, r0]
	ldr r0, [sp]
	add r6, #0x28
	cmp r0, r1
	blt _02230B0C
_02230B60:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230B64: .word 0x000006D8
_02230B68: .word 0x00000534
_02230B6C: .word 0x000006C4
_02230B70: .word 0x00000548
	thumb_func_end ov62_02230AF0

	thumb_func_start ov62_02230B74
ov62_02230B74: ; 0x02230B74
	push {r3, r4, r5, lr}
	ldr r1, _02230B98 ; =0x00000534
	mov r4, #0
	add r5, r0, r1
_02230B7C:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #5
	blt _02230B7C
	pop {r3, r4, r5, pc}
	nop
_02230B98: .word 0x00000534
	thumb_func_end ov62_02230B74

	thumb_func_start ov62_02230B9C
ov62_02230B9C: ; 0x02230B9C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x15
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	lsl r7, r7, #6
_02230BA8:
	ldr r0, [r5, r7]
	cmp r0, #0
	ldr r0, _02230C18 ; =0x00000548
	bne _02230BC4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020129D0
	ldr r0, _02230C1C ; =0x00000534
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	b _02230BD6
_02230BC4:
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_020129D0
	ldr r0, _02230C1C ; =0x00000534
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0200D3F4
_02230BD6:
	ldr r0, _02230C20 ; =0x00000608
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02230BF6
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020129D0
	ldr r0, _02230C24 ; =0x000005FC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	b _02230C0C
_02230BF6:
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_020129D0
	ldr r0, _02230C24 ; =0x000005FC
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0200D3F4
_02230C0C:
	add r6, r6, #1
	add r5, #0x28
	cmp r6, #5
	blt _02230BA8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230C18: .word 0x00000548
_02230C1C: .word 0x00000534
_02230C20: .word 0x00000608
_02230C24: .word 0x000005FC
	thumb_func_end ov62_02230B9C

	thumb_func_start ov62_02230C28
ov62_02230C28: ; 0x02230C28
	push {r4, lr}
	sub sp, #0x40
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0x1c]
	beq _02230C44
	b _02230E58
_02230C44:
	ldr r0, [r4, #0x2c]
	cmp r0, #3
	bls _02230C4C
	b _02230E26
_02230C4C:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02230C58: ; jump table
	.short _02230C60 - _02230C58 - 2 ; case 0
	.short _02230C76 - _02230C58 - 2 ; case 1
	.short _02230CEC - _02230C58 - 2 ; case 2
	.short _02230D96 - _02230C58 - 2 ; case 3
_02230C60:
	ldr r1, [r4, #0x28]
	cmp r1, #3
	bne _02230C70
	add r0, r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	b _02230E26
_02230C70:
	add r0, r1, #1
	str r0, [r4, #0x28]
	b _02230E26
_02230C76:
	ldr r1, [r4, #0x28]
	cmp r1, #4
	bne _02230C86
	add r0, r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	b _02230E26
_02230C86:
	ldr r0, [r4, #0]
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl sub_0200D638
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl sub_0200D638
	ldr r1, [r4, #0x20]
	ldr r0, _02230E5C ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	mov r1, #0x18
	ldrsb r1, [r4, r1]
	ldr r2, [sp, #0x24]
	neg r1, r1
	mul r0, r1
	add r0, r2, r0
	mov r1, #0x5a
	str r0, [sp, #0x24]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r1, r1, #2
	add r0, #0x20
	str r0, [r4, #0x20]
	bl sub_020E1F6C
	str r1, [r4, #0x20]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl sub_0200D614
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	bl sub_0200D614
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _02230E26
_02230CEC:
	ldr r3, _02230E60 ; =0x022488C0
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, sp, #0
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0200D550
	ldr r1, [r4, #0x28]
	cmp r1, #0
	bne _02230D3A
	mov r0, #0x16
	ldrsh r2, [r4, r0]
	add r1, sp, #0
	mov r0, #4
	ldrsh r0, [r1, r0]
	sub r0, r2, r0
	strh r0, [r4, #0x14]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x24]
	bl sub_020E1F6C
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _02230D74
_02230D3A:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	cmp r1, r0
	bne _02230D60
	mov r0, #0x16
	ldrsh r1, [r4, r0]
	add r0, sp, #0
	strh r1, [r0, #4]
	ldrb r0, [r4, #0x19]
	lsl r1, r0, #2
	add r0, sp, #0x28
	ldr r0, [r0, r1]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	b _02230D74
_02230D60:
	add r1, sp, #0
	mov r0, #4
	ldrsh r2, [r1, r0]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	add r0, r2, r0
	strh r0, [r1, #4]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
_02230D74:
	add r3, sp, #0
	mov r1, #4
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0]
	bl sub_0200D4C4
	add r3, sp, #0
	mov r1, #4
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl sub_0200D4C4
	b _02230E26
_02230D96:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02230DAE
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0xc
	add r2, sp, #0x10
	bl sub_0200D638
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
_02230DAE:
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl sub_0200D638
	ldr r0, [r4, #4]
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_0200D638
	ldr r1, [r4, #0x20]
	ldr r0, _02230E5C ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	mov r2, #0x18
	ldrsb r2, [r4, r2]
	ldr r1, [r4, #0xc]
	neg r3, r2
	lsl r2, r0, #1
	add r0, r0, r2
	mul r0, r3
	add r0, r1, r0
	str r0, [sp, #0x14]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0x19]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	ldr r0, [r4, #0x20]
	beq _02230E02
	sub r0, r0, #4
	b _02230E04
_02230E02:
	add r0, r0, #4
_02230E04:
	str r0, [r4, #0x20]
	mov r1, #0x5a
	ldr r0, [r4, #0x20]
	lsl r1, r1, #2
	bl sub_020E1F6C
	str r1, [r4, #0x20]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl sub_0200D614
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl sub_0200D614
_02230E26:
	ldr r0, [r4, #0x2c]
	cmp r0, #2
	blt _02230E58
	ldr r0, [r4, #0x10]
	ldr r1, _02230E64 ; =0x3DCCCCCD
	bl sub_020E1108
	bls _02230E58
	ldr r0, [r4, #0x10]
	ldr r1, _02230E64 ; =0x3DCCCCCD
	bl sub_020E1A9C
	str r0, [r4, #0x10]
	mov r2, #0xfe
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	mov r2, #0xfe
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
_02230E58:
	add sp, #0x40
	pop {r4, pc}
	; .align 2, 0
_02230E5C: .word 0x0000FFFF
_02230E60: .word 0x022488C0
_02230E64: .word 0x3DCCCCCD
	thumb_func_end ov62_02230C28

	thumb_func_start ov62_02230E68
ov62_02230E68: ; 0x02230E68
	push {r3, lr}
	mov r3, #1
	lsl r3, r3, #0x14
	bl sub_0200D500
	pop {r3, pc}
	thumb_func_end ov62_02230E68

	thumb_func_start ov62_02230E74
ov62_02230E74: ; 0x02230E74
	push {r3, lr}
	mov r3, #1
	lsl r3, r3, #0x14
	bl sub_0200D5A0
	pop {r3, pc}
	thumb_func_end ov62_02230E74

	thumb_func_start ov62_02230E80
ov62_02230E80: ; 0x02230E80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r6, r0, #0
	ldr r0, _02230FBC ; =0x02248890
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #0
	ldr r1, _02230FC0 ; =0x000005FC
	str r0, [sp, #0x1c]
	add r0, r6, r1
	sub r1, #0xc8
	str r0, [sp, #0x14]
	add r0, r6, r1
	str r0, [sp, #0x10]
_02230EA8:
	ldr r0, [sp, #0x14]
	ldr r1, _02230FC4 ; =0x022488A8
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x34
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, sp, #0x24
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r5, sp, #0x2c
	add r0, r1, r0
	str r0, [sp, #8]
	add r7, sp, #0x3c
_02230EC6:
	add r0, r7, #0
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #2
	bl sub_0201A870
	add r0, r7, #0
	mov r1, #0x66
	bl sub_02012B20
	ldr r1, [r4, #0]
	mov r2, #0x66
	str r0, [r1, #0x18]
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02012898
	ldr r3, [r4, #0]
	ldr r2, [r5, #0]
	mov r1, #1
	add r3, #0x1c
	bl sub_0201ED94
	ldr r0, [r4, #0]
	add r1, sp, #0x20
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #0x20
	bl sub_0200D550
	ldr r0, [r6, #0x50]
	str r7, [sp, #0x50]
	str r0, [sp, #0x4c]
	ldr r0, [r6, #0x1c]
	bl sub_0200D9B0
	str r0, [sp, #0x54]
	ldr r1, [sp, #0xc]
	ldr r0, [r6, #0x1c]
	ldr r1, [r1, #0]
	bl sub_0200D04C
	str r0, [sp, #0x58]
	ldr r0, [r4, #0]
	add r1, sp, #0x20
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	str r0, [sp, #0x5c]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	str r0, [sp, #0x60]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #0x24
	str r0, [sp, #0x64]
	mov r0, #0
	ldrsh r0, [r1, r0]
	sub r0, #8
	str r0, [sp, #0x68]
	mov r0, #3
	str r0, [sp, #0x6c]
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	sub r0, r0, #1
	str r0, [sp, #0x70]
	ldr r0, [r5, #0]
	str r0, [sp, #0x74]
	mov r0, #0x66
	str r0, [sp, #0x78]
	ldr r1, [r4, #0]
	add r0, sp, #0x4c
	ldr r1, [r1, #0x18]
	bl sub_02012B60
	ldr r1, [r4, #0]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x14]
	bl sub_02012AC0
	add r0, r7, #0
	bl sub_0201A8FC
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl sub_020129D0
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r0, r0, #5
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _02230EC6
	ldr r0, [sp, #0x14]
	add r0, #0x28
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #5
	bge _02230FB6
	b _02230EA8
_02230FB6:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_02230FBC: .word 0x02248890
_02230FC0: .word 0x000005FC
_02230FC4: .word 0x022488A8
	thumb_func_end ov62_02230E80

	thumb_func_start ov62_02230FC8
ov62_02230FC8: ; 0x02230FC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	add r5, r3, #0
	str r1, [sp, #0x10]
	ldr r0, [r4, #0x48]
	cmp r2, #8
	bne _02231058
	ldr r1, [r5, #0x18]
	lsl r1, r1, #2
	add r3, r4, r1
	ldr r1, _02231134 ; =0x0000088C
	ldr r1, [r3, r1]
	cmp r1, #0
	bne _02230FF0
	add r1, r2, #0
	bl sub_0200B1EC
	add r5, r0, #0
	b _022310E4
_02230FF0:
	mov r0, #0x66
	bl ov62_02231690
	add r6, r0, #0
	ldr r0, [r4, #0x48]
	mov r1, #7
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02231134 ; =0x0000088C
	ldr r0, [r1, r0]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov62_022349A8
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
	b _022310E4
_02231058:
	cmp r2, #0x29
	bne _022310DC
	ldr r1, [r5, #0x18]
	lsl r1, r1, #2
	add r3, r4, r1
	ldr r1, _02231134 ; =0x0000088C
	ldr r1, [r3, r1]
	cmp r1, #0
	bne _02231074
	add r1, r2, #0
	bl sub_0200B1EC
	add r5, r0, #0
	b _022310E4
_02231074:
	mov r0, #0x66
	bl ov62_02231690
	add r6, r0, #0
	ldr r0, [r4, #0x48]
	mov r1, #7
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02231134 ; =0x0000088C
	ldr r0, [r1, r0]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl ov62_022349A8
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
	b _022310E4
_022310DC:
	add r1, r2, #0
	bl sub_0200B1EC
	add r5, r0, #0
_022310E4:
	add r0, sp, #0x1c
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0x1c
	mov r2, #0x14
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231138 ; =0x000E0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, sp, #0x1c
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0x18]
	add r2, sp, #0x1c
	mov r3, #0x66
	bl sub_02012BE0
	add r0, r5, #0
	bl sub_020237BC
	add r0, sp, #0x1c
	bl sub_0201A8FC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02231134: .word 0x0000088C
_02231138: .word 0x000E0D00
	thumb_func_end ov62_02230FC8

	thumb_func_start ov62_0223113C
ov62_0223113C: ; 0x0223113C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0
	str r1, [sp]
	ldr r1, _02231188 ; =0x000005FC
	add r7, r0, r1
	sub r1, #0xc8
	add r6, r0, r1
_0223114C:
	str r7, [sp, #4]
	str r6, [sp, #8]
	mov r4, #0
	add r5, sp, #4
_02231154:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x18]
	bl sub_02012B48
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x14]
	bl sub_02012BD8
	ldr r0, [r5, #0]
	add r0, #0x1c
	bl sub_0201EE28
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02231154
	ldr r0, [sp]
	add r7, #0x28
	add r0, r0, #1
	add r6, #0x28
	str r0, [sp]
	cmp r0, #5
	blt _0223114C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02231188: .word 0x000005FC
	thumb_func_end ov62_0223113C

	thumb_func_start ov62_0223118C
ov62_0223118C: ; 0x0223118C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	ldr r6, _02231248 ; =0x0000270F
	cmp r7, #2
	bne _0223119E
	add r6, r6, #1
_0223119E:
	add r0, sp, #0xc
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r1, sp, #0xc
	mov r2, #0x14
	mov r3, #2
	bl sub_0201A870
	add r0, sp, #0xc
	mov r1, #0x66
	bl sub_02012B20
	str r0, [r5, #0xc]
	add r0, sp, #0xc
	add r1, r7, #0
	mov r2, #0x66
	bl sub_02012898
	add r3, r5, #0
	mov r1, #1
	add r2, r7, #0
	add r3, #0x10
	bl sub_0201ED94
	add r1, sp, #8
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0x1c]
	add r0, sp, #0xc
	str r0, [sp, #0x20]
	ldr r0, [r4, #8]
	bl sub_0200D9B0
	str r0, [sp, #0x24]
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_0200D04C
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	add r1, sp, #8
	ldr r0, [r0, #0]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x30]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #0x24
	str r0, [sp, #0x34]
	mov r0, #0
	ldrsh r1, [r1, r0]
	sub r1, #8
	str r0, [sp, #0x40]
	mov r0, #0x66
	str r1, [sp, #0x38]
	mov r1, #3
	str r0, [sp, #0x48]
	str r7, [sp, #0x44]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #0xc]
	add r0, sp, #0x1c
	bl sub_02012B60
	mov r1, #1
	str r0, [r5, #8]
	bl sub_02012AC0
	add r0, sp, #0xc
	bl sub_0201A8FC
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_020129D0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02231248: .word 0x0000270F
	thumb_func_end ov62_0223118C

	thumb_func_start ov62_0223124C
ov62_0223124C: ; 0x0223124C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r2, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, sp, #0x10
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r1, sp, #0x10
	mov r2, #0x14
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022312AC ; =0x000E0D00
	add r2, r6, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, sp, #0x10
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	add r2, sp, #0x10
	mov r3, #0x66
	bl sub_02012BE0
	add r0, r6, #0
	bl sub_020237BC
	add r0, sp, #0x10
	bl sub_0201A8FC
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_022312AC: .word 0x000E0D00
	thumb_func_end ov62_0223124C

	thumb_func_start ov62_022312B0
ov62_022312B0: ; 0x022312B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02012B48
	ldr r0, [r4, #8]
	bl sub_02012BD8
	add r4, #0x10
	add r0, r4, #0
	bl sub_0201EE28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_022312B0

	thumb_func_start ov62_022312CC
ov62_022312CC: ; 0x022312CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _02231318 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x31
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02231318 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1a
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02231318 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1b
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02231318: .word 0x00002E94
	thumb_func_end ov62_022312CC

	thumb_func_start ov62_0223131C
ov62_0223131C: ; 0x0223131C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _02231368 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x7a
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02231368 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x7b
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02231368 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x7c
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02231368: .word 0x00002E94
	thumb_func_end ov62_0223131C

	thumb_func_start ov62_0223136C
ov62_0223136C: ; 0x0223136C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _022313B8 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1e
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022313B8 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x20
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022313B8 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1f
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022313B8: .word 0x00002E94
	thumb_func_end ov62_0223136C

	thumb_func_start ov62_022313BC
ov62_022313BC: ; 0x022313BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _022313DC ; =0x00002E94
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _022313DC ; =0x00002E94
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _022313DC ; =0x00002E94
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_022313DC: .word 0x00002E94
	thumb_func_end ov62_022313BC

	thumb_func_start ov62_022313E0
ov62_022313E0: ; 0x022313E0
	push {r3, r4, lr}
	sub sp, #0x34
	add r2, r0, #0
	mov r3, #0x80
	add r0, sp, #0
	strh r3, [r0]
	mov r3, #0x60
	strh r3, [r0, #2]
	mov r3, #0
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0x2c]
	sub r0, r0, #4
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, _02231448 ; =0x00002E94
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r3, [sp, #0x30]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	cmp r1, #1
	bne _0223141C
	ldr r0, _0223144C ; =0x0000270F
	str r0, [sp, #0x18]
	b _02231420
_0223141C:
	ldr r0, _02231450 ; =0x00002710
	str r0, [sp, #0x18]
_02231420:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	add r2, sp, #0
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #2
	bl sub_0200D41C
	add r0, r4, #0
	mov r1, #0
	bl sub_0200D364
	add r0, r4, #0
	bl sub_0200D330
	add r0, r4, #0
	add sp, #0x34
	pop {r3, r4, pc}
	nop
_02231448: .word 0x00002E94
_0223144C: .word 0x0000270F
_02231450: .word 0x00002710
	thumb_func_end ov62_022313E0

	thumb_func_start ov62_02231454
ov62_02231454: ; 0x02231454
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov62_02230B9C
	add r0, r4, #0
	bl ov62_02230B74
	add r0, r4, #0
	bl ov62_022307A0
	pop {r4, pc}
	thumb_func_end ov62_02231454

	thumb_func_start ov62_0223146C
ov62_0223146C: ; 0x0223146C
	push {r4, lr}
	add r4, r0, #0
	bl ov62_022306B8
	add r0, r4, #0
	bl ov62_02230060
	add r0, r4, #0
	bl sub_0208C06C
	add r0, r4, #0
	bl ov62_0223088C
	add r0, r4, #0
	mov r1, #1
	bl ov62_02230B9C
	add r0, r4, #0
	bl ov62_02230A5C
	add r0, r4, #0
	bl ov62_02230AB8
	add r0, r4, #0
	bl ov62_022307C0
	add r0, r4, #0
	bl ov62_02230AF0
	pop {r4, pc}
	thumb_func_end ov62_0223146C

	thumb_func_start ov62_022314A8
ov62_022314A8: ; 0x022314A8
	push {r4, lr}
	add r4, r0, #0
	bl ov62_022306B8
	add r0, r4, #0
	bl ov62_02230060
	add r0, r4, #0
	bl sub_0208C06C
	add r0, r4, #0
	bl ov62_0223088C
	add r0, r4, #0
	mov r1, #1
	bl ov62_02230B9C
	add r0, r4, #0
	bl ov62_02230A5C
	add r0, r4, #0
	bl ov62_02230AB8
	add r0, r4, #0
	bl ov62_022307C0
	add r0, r4, #0
	bl ov62_02230AF0
	ldr r0, _022314EC ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_022314EC: .word 0x000006D8
	thumb_func_end ov62_022314A8

	thumb_func_start ov62_022314F0
ov62_022314F0: ; 0x022314F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [r5, #0]
	add r4, r1, #0
	mov r0, #0x1f
	str r0, [r4, #0]
	ldr r0, [sp, #0x20]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _02231528
	ldr r0, [r4, #0]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, _02231558 ; =0x04000050
	ldr r3, [r5, #0]
	add r2, r7, #0
	bl sub_020BF55C
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, _0223155C ; =0x04001050
	ldr r2, [sp, #0x1c]
	ldr r3, [r5, #0]
	bl sub_020BF55C
_02231528:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0223153E
	ldr r0, [r4, #0]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, _02231558 ; =0x04000050
	ldr r3, [r5, #0]
	add r2, r7, #0
	bl sub_020BF55C
_0223153E:
	ldr r0, [sp, #0x20]
	cmp r0, #2
	bne _02231554
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, _0223155C ; =0x04001050
	ldr r2, [sp, #0x1c]
	ldr r3, [r5, #0]
	bl sub_020BF55C
_02231554:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231558: .word 0x04000050
_0223155C: .word 0x04001050
	thumb_func_end ov62_022314F0

	thumb_func_start ov62_02231560
ov62_02231560: ; 0x02231560
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _02231590
	ldr r0, [r4, #0]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, _022315C0 ; =0x04000050
	ldr r3, [r5, #0]
	add r2, r7, #0
	bl sub_020BF55C
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, _022315C4 ; =0x04001050
	ldr r2, [sp, #0x1c]
	ldr r3, [r5, #0]
	bl sub_020BF55C
_02231590:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _022315A6
	ldr r0, [r4, #0]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, _022315C0 ; =0x04000050
	ldr r3, [r5, #0]
	add r2, r7, #0
	bl sub_020BF55C
_022315A6:
	ldr r0, [sp, #0x20]
	cmp r0, #2
	bne _022315BC
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, _022315C4 ; =0x04001050
	ldr r2, [sp, #0x1c]
	ldr r3, [r5, #0]
	bl sub_020BF55C
_022315BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022315C0: .word 0x04000050
_022315C4: .word 0x04001050
	thumb_func_end ov62_02231560

	thumb_func_start ov62_022315C8
ov62_022315C8: ; 0x022315C8
	push {r3, r4, lr}
	sub sp, #0xc
	mov r4, #8
	str r4, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r2, r4, #0
	bl ov62_022314F0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov62_022315C8

	thumb_func_start ov62_022315E0
ov62_022315E0: ; 0x022315E0
	push {r4, r5}
	mov r4, #1
	cmp r2, #0
	ldr r2, [r0, #0]
	bne _02231602
	cmp r2, #8
	bge _022315F4
	add r2, r2, #1
	str r2, [r0, #0]
	mov r4, #0
_022315F4:
	ldr r2, [r1, #0]
	cmp r2, #7
	ble _02231618
	sub r2, r2, #3
	str r2, [r1, #0]
	mov r4, #0
	b _02231618
_02231602:
	cmp r2, #0
	ble _0223160C
	sub r2, r2, #1
	str r2, [r0, #0]
	mov r4, #0
_0223160C:
	ldr r2, [r1, #0]
	cmp r2, #0x1f
	bge _02231618
	add r2, r2, #3
	str r2, [r1, #0]
	mov r4, #0
_02231618:
	cmp r3, #0
	bne _02231634
	ldr r2, [r1, #0]
	ldr r5, [r0, #0]
	lsl r2, r2, #8
	orr r5, r2
	ldr r2, _0223165C ; =0x04000052
	strh r5, [r2]
	ldr r2, [r1, #0]
	ldr r5, [r0, #0]
	lsl r2, r2, #8
	orr r5, r2
	ldr r2, _02231660 ; =0x04001052
	strh r5, [r2]
_02231634:
	cmp r3, #1
	bne _02231644
	ldr r2, [r1, #0]
	ldr r5, [r0, #0]
	lsl r2, r2, #8
	orr r5, r2
	ldr r2, _0223165C ; =0x04000052
	strh r5, [r2]
_02231644:
	cmp r3, #2
	bne _02231656
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	add r1, r2, #0
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02231660 ; =0x04001052
	strh r1, [r0]
_02231656:
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0223165C: .word 0x04000052
_02231660: .word 0x04001052
	thumb_func_end ov62_022315E0

	thumb_func_start ov62_02231664
ov62_02231664: ; 0x02231664
	mov r2, #1
	cmp r1, #1
	ldr r1, [r0, #0]
	bne _02231678
	cmp r1, #0x10
	bge _02231682
	add r1, r1, #2
	str r1, [r0, #0]
	mov r2, #0
	b _02231682
_02231678:
	cmp r1, #0
	ble _02231682
	sub r1, r1, #2
	str r1, [r0, #0]
	mov r2, #0
_02231682:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov62_02231664

	thumb_func_start ov62_02231688
ov62_02231688: ; 0x02231688
	mov r1, #0x10
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov62_02231688

	.rodata


	.global Unk_ov62_02248890
Unk_ov62_02248890: ; 0x02248890
	.incbin "incbin/overlay62_rodata.bin", 0x164, 0x16C - 0x164

	.global Unk_ov62_02248898
Unk_ov62_02248898: ; 0x02248898
	.incbin "incbin/overlay62_rodata.bin", 0x16C, 0x174 - 0x16C

	.global Unk_ov62_022488A0
Unk_ov62_022488A0: ; 0x022488A0
	.incbin "incbin/overlay62_rodata.bin", 0x174, 0x17C - 0x174

	.global Unk_ov62_022488A8
Unk_ov62_022488A8: ; 0x022488A8
	.incbin "incbin/overlay62_rodata.bin", 0x17C, 0x186 - 0x17C

	.global Unk_ov62_022488B2
Unk_ov62_022488B2: ; 0x022488B2
	.incbin "incbin/overlay62_rodata.bin", 0x186, 0x194 - 0x186

	.global Unk_ov62_022488C0
Unk_ov62_022488C0: ; 0x022488C0
	.incbin "incbin/overlay62_rodata.bin", 0x194, 0x1AC - 0x194

	.global Unk_ov62_022488D8
Unk_ov62_022488D8: ; 0x022488D8
	.incbin "incbin/overlay62_rodata.bin", 0x1AC, 0x18

