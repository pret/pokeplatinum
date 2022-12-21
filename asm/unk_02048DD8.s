	.include "macros/function.inc"
	.include "include/unk_02048DD8.inc"

	

	.text


	thumb_func_start sub_02048DD8
sub_02048DD8: ; 0x02048DD8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	cmp r0, #6
	bls _02048DE6
	b _02048F68
_02048DE6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02048DF2: ; jump table
	.short _02048E00 - _02048DF2 - 2 ; case 0
	.short _02048E20 - _02048DF2 - 2 ; case 1
	.short _02048EBC - _02048DF2 - 2 ; case 2
	.short _02048E62 - _02048DF2 - 2 ; case 3
	.short _02048EC6 - _02048DF2 - 2 ; case 4
	.short _02048EFE - _02048DF2 - 2 ; case 5
	.short _02048F4A - _02048DF2 - 2 ; case 6
_02048E00:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov6_0224660C
	strh r0, [r5]
	b _02048F68
_02048E20:
	add r0, r4, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	ldr r0, _02048F6C ; =0x0000026E
	add r4, #0x80
	strh r0, [r5]
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov6_02246978
	strh r0, [r6]
	b _02048F68
_02048E62:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	add r2, r6, #0
	add r3, r7, #0
	bl ov6_022469E0
	b _02048F68
_02048EBC:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl ov6_022465FC
	b _02048F68
_02048EC6:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	ldr r0, _02048F70 ; =0x0000026F
	add r4, #0x80
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl ov6_02246B40
	strh r0, [r6]
	b _02048F68
_02048EFE:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl ov6_022468B0
	strh r0, [r5]
	b _02048F68
_02048F4A:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov6_02246920
	strh r0, [r5]
_02048F68:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02048F6C: .word 0x0000026E
_02048F70: .word 0x0000026F
	thumb_func_end sub_02048DD8

	thumb_func_start sub_02048F74
sub_02048F74: ; 0x02048F74
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0206D4AC
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048F74

	thumb_func_start sub_02048F98
sub_02048F98: ; 0x02048F98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0207A0FC
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0206D60C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048F98

	thumb_func_start sub_02048FD0
sub_02048FD0: ; 0x02048FD0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0206D7C4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02048FD0

	thumb_func_start sub_02048FE0
sub_02048FE0: ; 0x02048FE0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0206DB20
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02048FE0

	thumb_func_start sub_02048FF0
sub_02048FF0: ; 0x02048FF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r4, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl sub_0206DB5C
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048FF0

	thumb_func_start sub_02049018
sub_02049018: ; 0x02049018
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	cmp r0, #0
	beq _02049038
	cmp r0, #1
	beq _02049088
	b _020490E6
_02049038:
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	ldr r0, _020490EC ; =0x0000026D
	add r5, #0x80
	strh r0, [r6]
	ldr r0, [sp]
	ldr r1, [r5, #0]
	ldr r2, [r4, #0]
	bl sub_020491D0
	strh r0, [r7]
	b _020490E6
_02049088:
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r3, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020491B8
	add r0, r4, #0
	mov r1, #3
	bl sub_0202CFEC
_020490E6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020490EC: .word 0x0000026D
	thumb_func_end sub_02049018

	thumb_func_start sub_020490F0
sub_020490F0: ; 0x020490F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_020491F4
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020490F0

	thumb_func_start sub_0204912C
sub_0204912C: ; 0x0204912C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	cmp r0, #0
	beq _02049150
	cmp r0, #1
	beq _02049182
	cmp r0, #2
	beq _0204919C
	b _020491B4
_02049150:
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #4
	bl sub_0206CF48
	b _020491B4
_02049182:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206CFB4
	b _020491B4
_0204919C:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206CF9C
_020491B4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204912C

	thumb_func_start sub_020491B8
sub_020491B8: ; 0x020491B8
	push {r3, lr}
	sub r1, r1, #1
	lsl r3, r1, #4
	ldr r1, _020491CC ; =0x020EBB48
	ldr r3, [r1, r3]
	cmp r3, #0
	beq _020491CA
	add r1, r2, #0
	blx r3
_020491CA:
	pop {r3, pc}
	; .align 2, 0
_020491CC: .word 0x020EBB48
	thumb_func_end sub_020491B8

	thumb_func_start sub_020491D0
sub_020491D0: ; 0x020491D0
	push {r4, lr}
	sub r0, r0, #1
	lsl r4, r0, #4
	ldr r0, _020491EC ; =0x020EBB4C
	ldr r3, [r0, r4]
	cmp r3, #0
	beq _020491E4
	add r0, r1, #0
	add r1, r2, #0
	blx r3
_020491E4:
	ldr r0, _020491F0 ; =0x020EBB54
	ldr r0, [r0, r4]
	pop {r4, pc}
	nop
_020491EC: .word 0x020EBB4C
_020491F0: .word 0x020EBB54
	thumb_func_end sub_020491D0

	thumb_func_start sub_020491F4
sub_020491F4: ; 0x020491F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl sub_0202440C
	mov r1, #1
	add r2, r5, #0
	bl sub_0202E6B0
	cmp r0, #0
	bne _02049210
	mov r0, #0
	pop {r3, r4, r5, pc}
_02049210:
	sub r0, r5, #1
	lsl r1, r0, #4
	ldr r0, _02049228 ; =0x020EBB50
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02049220
	mov r0, #1
	pop {r3, r4, r5, pc}
_02049220:
	add r0, r4, #0
	blx r1
	pop {r3, r4, r5, pc}
	nop
_02049228: .word 0x020EBB50
	thumb_func_end sub_020491F4

	thumb_func_start sub_0204922C
sub_0204922C: ; 0x0204922C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0x40
	mov r1, #4
	str r3, [sp, #8]
	bl sub_02023790
	add r1, r7, #0
	add r4, r0, #0
	bl sub_02023D28
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204922C

	thumb_func_start sub_02049268
sub_02049268: ; 0x02049268
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0207A268
	bl sub_02054A74
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B538
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02049268

	thumb_func_start sub_02049288
sub_02049288: ; 0x02049288
	push {r4, lr}
	ldr r0, [r0, #4]
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	bl ov25_02253DD8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B928
	pop {r4, pc}
	thumb_func_end sub_02049288

	thumb_func_start sub_020492A0
sub_020492A0: ; 0x020492A0
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7E4
	ldrh r0, [r0, #2]
	mov r1, #4
	add r2, sp, #8
	bl sub_0200B274
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, sp, #8
	add r3, r1, #0
	bl sub_0204922C
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020492A0

	thumb_func_start sub_020492D4
sub_020492D4: ; 0x020492D4
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E810
	ldrh r0, [r0, #2]
	mov r1, #4
	add r2, sp, #8
	bl sub_0200B274
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, sp, #8
	add r3, r1, #0
	bl sub_0204922C
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020492D4

	thumb_func_start sub_02049308
sub_02049308: ; 0x02049308
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, [r0, #0xc]
	add r6, r1, #0
	bl sub_0202440C
	bl sub_0202E81C
	add r5, r0, #0
	mov r0, #0x40
	mov r1, #4
	bl sub_02023790
	add r1, r5, #6
	add r4, r0, #0
	bl sub_02023D28
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrb r3, [r5, #2]
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02049308

	thumb_func_start sub_02049348
sub_02049348: ; 0x02049348
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E7FC
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02049348

	thumb_func_start sub_02049358
sub_02049358: ; 0x02049358
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02056B24
	bl sub_020567E0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02049358

	thumb_func_start sub_02049368
sub_02049368: ; 0x02049368
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E7D8
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02049368

	thumb_func_start sub_02049378
sub_02049378: ; 0x02049378
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	mov r1, #0
	bl sub_02029D10
	pop {r3, pc}
	thumb_func_end sub_02049378

	thumb_func_start sub_02049388
sub_02049388: ; 0x02049388
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E7F0
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02049388

	thumb_func_start sub_02049398
sub_02049398: ; 0x02049398
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E7E4
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02049398

	thumb_func_start sub_020493A8
sub_020493A8: ; 0x020493A8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E810
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_020493A8

	thumb_func_start sub_020493B8
sub_020493B8: ; 0x020493B8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E81C
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_020493B8

	thumb_func_start sub_020493C8
sub_020493C8: ; 0x020493C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E808
	ldrb r0, [r0, #7]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020493C8

	thumb_func_start sub_020493F4
sub_020493F4: ; 0x020493F4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	bl sub_0202E81C
	ldrb r0, [r0, #1]
	cmp r0, #6
	bhi _020494C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02049466: ; jump table
	.short _020494C4 - _02049466 - 2 ; case 0
	.short _020494C4 - _02049466 - 2 ; case 1
	.short _020494B0 - _02049466 - 2 ; case 2
	.short _020494B0 - _02049466 - 2 ; case 3
	.short _02049488 - _02049466 - 2 ; case 4
	.short _02049474 - _02049466 - 2 ; case 5
	.short _0204949C - _02049466 - 2 ; case 6
_02049474:
	ldr r0, [sp]
	mov r1, #0x19
	strh r1, [r0]
	mov r0, #0x24
	strh r0, [r7]
	mov r0, #0
	strh r0, [r6]
	mov r0, #0xe
	strh r0, [r5]
	b _020494D6
_02049488:
	ldr r0, [sp]
	mov r1, #0x25
	strh r1, [r0]
	mov r0, #0x3d
	strh r0, [r7]
	mov r0, #1
	strh r0, [r6]
	mov r0, #0xf
	strh r0, [r5]
	b _020494D6
_0204949C:
	ldr r0, [sp]
	mov r1, #0x3b
	strh r1, [r0]
	mov r0, #0x3d
	strh r0, [r7]
	mov r0, #1
	strh r0, [r6]
	mov r0, #0xf
	strh r0, [r5]
	b _020494D6
_020494B0:
	ldr r0, [sp]
	mov r1, #0x48
	strh r1, [r0]
	mov r0, #0x24
	strh r0, [r7]
	mov r0, #0
	strh r0, [r6]
	mov r0, #0xe
	strh r0, [r5]
	b _020494D6
_020494C4:
	ldr r0, [sp]
	mov r1, #0x2f
	strh r1, [r0]
	mov r0, #0x15
	strh r0, [r7]
	mov r0, #0
	strh r0, [r6]
	mov r0, #0xe
	strh r0, [r5]
_020494D6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020493F4

	.rodata


	.global Unk_020EBB48
Unk_020EBB48: ; 0x020EBB48
	.incbin "incbin/arm9_rodata.bin", 0x6F08, 0x130

