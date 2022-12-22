	.include "macros/function.inc"
	.include "include/ov94_022444C8.inc"

	

	.text


	thumb_func_start ov94_022444C8
ov94_022444C8: ; 0x022444C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3e
	bl sub_02073C74
	ldr r1, _02244670 ; =0x000010A4
	str r0, [r4, r1]
	ldr r0, [r4, #0x24]
	cmp r0, #0xa
	bls _022444DE
	b _02244648
_022444DE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022444EA: ; jump table
	.short _02244648 - _022444EA - 2 ; case 0
	.short _02244648 - _022444EA - 2 ; case 1
	.short _02244648 - _022444EA - 2 ; case 2
	.short _02244648 - _022444EA - 2 ; case 3
	.short _02244648 - _022444EA - 2 ; case 4
	.short _02244648 - _022444EA - 2 ; case 5
	.short _02244648 - _022444EA - 2 ; case 6
	.short _02244500 - _022444EA - 2 ; case 7
	.short _02244546 - _022444EA - 2 ; case 8
	.short _022445E0 - _022444EA - 2 ; case 9
	.short _0224458C - _022444EA - 2 ; case 10
_02244500:
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xec
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_02244870
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xfc
	str r1, [r0, #0]
	b _02244648
_02244546:
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xf0
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_02244870
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #4
	add r0, #0xfc
	str r1, [r0, #0]
	b _02244648
_0224458C:
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r1, _02244670 ; =0x000010A4
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	bl sub_0202DA70
	ldr r0, _02244670 ; =0x000010A4
	ldr r0, [r4, r0]
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_02244870
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0, #0]
	b _02244648
_022445E0:
	ldr r0, [r4, #0]
	ldr r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0202DA70
	ldr r0, _02244670 ; =0x000010A4
	ldr r0, [r4, r0]
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl ov94_02244870
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0, #0]
_02244648:
	ldr r0, [r4, #0]
	mov r2, #0x3e
	ldr r1, [r0, #0x24]
	mov r0, #1
	lsl r0, r0, #8
	str r1, [r4, r0]
	add r1, r4, #0
	ldr r0, _02244674 ; =0x0224636C
	add r1, #0xec
	bl sub_020067E8
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	mov r0, #0x42
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
_02244670: .word 0x000010A4
_02244674: .word 0x0224636C
	thumb_func_end ov94_022444C8

	thumb_func_start ov94_02244678
ov94_02244678: ; 0x02244678
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	mov r6, #3
	cmp r0, #0
	beq _0224468E
	cmp r0, #1
	bne _0224468C
	b _0224480C
_0224468C:
	b _02244842
_0224468E:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02006844
	cmp r0, #0
	bne _0224469E
	b _02244842
_0224469E:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02006814
	ldr r1, [r4, #0x24]
	cmp r1, #9
	bne _02244724
	add r0, r4, #0
	bl ov94_022448AC
	mov r1, #6
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	add r3, r0, #0
	add r0, sp, #0x30
	lsl r3, r3, #0x10
	str r0, [sp]
	mov r0, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02076B94
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _02244716
	ldr r5, [r4, #0]
	ldr r0, [r5, #0x20]
	bl sub_02056B24
	ldr r1, [r5, #0x3c]
	ldr r2, [sp, #0x24]
	str r1, [sp]
	ldr r1, [r5, #0x10]
	str r1, [sp, #4]
	ldr r1, [r5, #0x30]
	str r1, [sp, #8]
	ldr r1, [r5, #0x28]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	add r1, r7, #0
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x3e
	str r0, [sp, #0x1c]
	ldr r3, [r5, #0x24]
	mov r0, #0
	bl sub_0207AE68
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r4, #0x2c]
	b _02244842
_02244716:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r6, #4
	b _02244842
_02244724:
	cmp r1, #8
	beq _0224472C
	cmp r1, #0xa
	bne _022447FE
_0224472C:
	add r0, r4, #0
	bl ov94_022448AC
	add r7, r0, #0
	mov r0, #0x3e
	bl sub_02073C74
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	bl sub_0202DA70
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bne _0224477A
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02074470
	add r5, r0, #0
	mov r1, #0
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	bl sub_02074470
	cmp r5, r0
	beq _022447EA
_0224477A:
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r3, r0, #0
	add r0, sp, #0x2c
	lsl r3, r3, #0x10
	str r0, [sp]
	mov r0, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02076B94
	str r0, [sp, #0x28]
	cmp r0, #0
	beq _022447DC
	ldr r5, [r4, #0]
	ldr r0, [r5, #0x20]
	bl sub_02056B24
	ldr r1, [r5, #0x3c]
	ldr r2, [sp, #0x28]
	str r1, [sp]
	ldr r1, [r5, #0x10]
	str r1, [sp, #4]
	ldr r1, [r5, #0x30]
	str r1, [sp, #8]
	ldr r1, [r5, #0x28]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x3e
	str r0, [sp, #0x1c]
	ldr r3, [r5, #0x24]
	mov r0, #0
	bl sub_0207AE68
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r4, #0x2c]
	b _022447F6
_022447DC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r6, #4
	b _022447F6
_022447EA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r6, #4
_022447F6:
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	b _02244842
_022447FE:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r6, #4
	b _02244842
_0224480C:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207B0D0
	cmp r0, #0
	beq _02244842
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207B0E0
	add r0, r4, #0
	bl ov94_022448E8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02244848 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xc
	bl ov94_0223C4C0
	mov r6, #4
_02244842:
	add r0, r6, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02244848: .word 0xFFFF1FFF
	thumb_func_end ov94_02244678

	thumb_func_start ov94_0224484C
ov94_0224484C: ; 0x0224484C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224486C ; =0x000010A4
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0224486C: .word 0x000010A4
	thumb_func_end ov94_0224484C

	thumb_func_start ov94_02244870
ov94_02244870: ; 0x02244870
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3e
	bl sub_02025E6C
	add r4, r0, #0
	bl sub_02025E8C
	mov r1, #0x43
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r5, r1
	bl sub_02025EC0
	ldr r1, _022448A4 ; =0x00000122
	add r0, r4, #0
	ldrb r1, [r5, r1]
	bl sub_02025FD0
	ldr r1, _022448A8 ; =0x00000123
	add r0, r4, #0
	ldrb r1, [r5, r1]
	bl sub_02025FDC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022448A4: .word 0x00000122
_022448A8: .word 0x00000123
	thumb_func_end ov94_02244870

	thumb_func_start ov94_022448AC
ov94_022448AC: ; 0x022448AC
	push {r3, lr}
	cmp r1, #9
	bne _022448C6
	mov r1, #0x95
	lsl r1, r1, #2
	add r3, r0, r1
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	add r0, r1, #4
	mul r0, r2
	add r0, r3, r0
	pop {r3, pc}
_022448C6:
	cmp r1, #0xa
	bne _022448D2
	mov r1, #0x13
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
_022448D2:
	cmp r1, #8
	bne _022448DE
	mov r1, #0x13
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
_022448DE:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov94_022448AC

	thumb_func_start ov94_022448E8
ov94_022448E8: ; 0x022448E8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r1, [r5, #0x24]
	bl ov94_022448AC
	mov r2, #0x4a
	lsl r2, r2, #2
	add r4, r0, #0
	ldr r0, [r5, r2]
	cmp r0, #0x12
	bne _02244918
	ldr r0, [r5, #0]
	add r1, r2, #4
	ldr r0, [r0, #8]
	ldr r1, [r5, r1]
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020775EC
	add sp, #8
	pop {r3, r4, r5, pc}
_02244918:
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r0, [r0, #0xc]
	ldr r2, [r5, r2]
	bl sub_02079968
	ldr r0, [r5, #0]
	add r1, sp, #4
	ldr r0, [r0, #0xc]
	add r2, sp, #0
	bl sub_020799F0
	add r0, r4, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_020798A0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_022448E8

	.rodata


	.global Unk_ov94_0224636C
Unk_ov94_0224636C: ; 0x0224636C
	.incbin "incbin/overlay94_rodata.bin", 0x974, 0x10

