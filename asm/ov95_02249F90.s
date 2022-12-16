	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov95_02249F90
ov95_02249F90: ; 0x02249F90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	beq _02249FAE
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0xc]
_02249FAE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02249F90

	thumb_func_start ov95_02249FB4
ov95_02249FB4: ; 0x02249FB4
	push {r4, lr}
	add r4, r0, #0
	beq _02249FC4
	bl ov95_0224A320
	add r0, r4, #0
	bl sub_020181C4
_02249FC4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02249FB4

	thumb_func_start ov95_02249FC8
ov95_02249FC8: ; 0x02249FC8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #2
	bhs _02249FF0
	lsl r3, r2, #2
	ldr r2, _02249FF4 ; =0x0224C088
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _02249FEC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_02249FEC:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02249FF0:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249FF4: .word 0x0224C088
	thumb_func_end ov95_02249FC8

	thumb_func_start ov95_02249FF8
ov95_02249FF8: ; 0x02249FF8
	push {lr}
	sub sp, #0xc
	bl ov95_0224A10C
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	ldr r3, _0224A01C ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_0224A01C: .word 0x00007FFF
	thumb_func_end ov95_02249FF8

	thumb_func_start ov95_0224A020
ov95_0224A020: ; 0x0224A020
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224A038
	cmp r0, #1
	beq _0224A06A
	cmp r0, #2
	beq _0224A096
	b _0224A0A4
_0224A038:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224A0A4
	ldr r0, _0224A0AC ; =0xFFE80000
	mov r2, #0
	str r0, [r5, #0x10]
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [r5, #0x14]
	ldr r0, _0224A0B0 ; =0x00005999
	add r1, r5, #0
	str r0, [r5, #0x18]
	ldr r0, _0224A0B4 ; =0xFFFFDDDE
	str r0, [r5, #0x1c]
	mov r0, #0x3c
	str r0, [r5, #8]
	ldr r0, _0224A0B8 ; =ov95_0224A0C4
	str r2, [r5, #0x20]
	bl sub_0200DA04
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A0A4
_0224A06A:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0224A0A4
	ldr r0, _0224A0BC ; =0x000006A9
	bl sub_02005748
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _0224A0C0 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A0A4
_0224A096:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224A0A4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224A0A4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0224A0AC: .word 0xFFE80000
_0224A0B0: .word 0x00005999
_0224A0B4: .word 0xFFFFDDDE
_0224A0B8: .word ov95_0224A0C4
_0224A0BC: .word 0x000006A9
_0224A0C0: .word 0x00007FFF
	thumb_func_end ov95_0224A020

	thumb_func_start ov95_0224A0C4
ov95_0224A0C4: ; 0x0224A0C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224A0F2
	sub r0, r0, #1
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	add r2, r1, r0
	str r2, [r4, #0x14]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	bl ov95_0224A358
	pop {r3, r4, r5, pc}
_0224A0F2:
	mov r1, #0x2f
	mvn r1, r1
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl ov95_0224A358
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A0C4

	thumb_func_start ov95_0224A10C
ov95_0224A10C: ; 0x0224A10C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0224A304 ; =0x0224C0F4
	bl sub_0201FE94
	ldr r2, _0224A308 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224A30C ; =0x0224C090
	bl sub_02018368
	ldr r0, [r4, #0xc]
	ldr r2, _0224A310 ; =0x0224C0A0
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224A310 ; =0x0224C0A0
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224A314 ; =0x0224C0BC
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224A318 ; =0x0224C0D8
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224A318 ; =0x0224C0D8
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #0x13
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #0x13
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #0x12
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #0x12
	mov r3, #7
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x14
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x14
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #0xc8
	str r0, [sp]
	mov r1, #1
	ldr r0, [r4, #0xc]
	mov r2, #0
	add r3, r1, #0
	bl sub_020196C0
	mov r0, #0xc8
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #5
	mov r2, #0
	mov r3, #1
	bl sub_020196C0
	mov r0, #0xc8
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl sub_020196C0
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #0xe
	bl ov95_022473E8
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	mov r2, #5
	mov r3, #0xe
	bl ov95_022473E8
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #2
	mov r3, #0xf
	bl ov95_022473E8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #0xc8
	bl sub_02019CB8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #5
	mov r2, #0xc8
	bl sub_02019CB8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #0xc8
	bl sub_02019CB8
	mov r0, #0x14
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #0xe
	bl ov95_022474D4
	mov r0, #0x14
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #5
	mov r3, #0xe
	bl ov95_022474D4
	mov r2, #2
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	mov r3, #0xf
	bl ov95_022474D4
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019448
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_02019448
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019448
	ldr r0, [r4, #0xc]
	ldr r2, _0224A31C ; =0xFFFFFE80
	mov r1, #0x50
	bl ov95_0224A358
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0224A304: .word 0x0224C0F4
_0224A308: .word 0x04000304
_0224A30C: .word 0x0224C090
_0224A310: .word 0x0224C0A0
_0224A314: .word 0x0224C0BC
_0224A318: .word 0x0224C0D8
_0224A31C: .word 0xFFFFFE80
	thumb_func_end ov95_0224A10C

	thumb_func_start ov95_0224A320
ov95_0224A320: ; 0x0224A320
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A320

	thumb_func_start ov95_0224A358
ov95_0224A358: ; 0x0224A358
	push {r4, r5, r6, lr}
	ldr r3, _0224A38C ; =0x000001FF
	add r4, r1, #0
	add r6, r2, #0
	and r4, r3
	add r5, r0, #0
	mov r1, #2
	mov r2, #3
	and r3, r6
	bl sub_02019184
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	add r3, r4, #0
	bl sub_02019184
	add r4, #0xc0
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	add r3, r4, #0
	bl sub_02019184
	pop {r4, r5, r6, pc}
	nop
_0224A38C: .word 0x000001FF
	thumb_func_end ov95_0224A358

	.rodata


	.global Unk_ov95_0224C088
Unk_ov95_0224C088: ; 0x0224C088
	.incbin "incbin/overlay95_rodata.bin", 0x214, 0x21C - 0x214

	.global Unk_ov95_0224C090
Unk_ov95_0224C090: ; 0x0224C090
	.incbin "incbin/overlay95_rodata.bin", 0x21C, 0x22C - 0x21C

	.global Unk_ov95_0224C0A0
Unk_ov95_0224C0A0: ; 0x0224C0A0
	.incbin "incbin/overlay95_rodata.bin", 0x22C, 0x248 - 0x22C

	.global Unk_ov95_0224C0BC
Unk_ov95_0224C0BC: ; 0x0224C0BC
	.incbin "incbin/overlay95_rodata.bin", 0x248, 0x264 - 0x248

	.global Unk_ov95_0224C0D8
Unk_ov95_0224C0D8: ; 0x0224C0D8
	.incbin "incbin/overlay95_rodata.bin", 0x264, 0x280 - 0x264

	.global Unk_ov95_0224C0F4
Unk_ov95_0224C0F4: ; 0x0224C0F4
	.incbin "incbin/overlay95_rodata.bin", 0x280, 0x28

