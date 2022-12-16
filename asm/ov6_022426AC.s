	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_022426AC
ov6_022426AC: ; 0x022426AC
	ldr r3, _022426B4 ; =sub_02018184
	mov r1, #0x17
	lsl r1, r1, #4
	bx r3
	; .align 2, 0
_022426B4: .word sub_02018184
	thumb_func_end ov6_022426AC

	thumb_func_start ov6_022426B8
ov6_022426B8: ; 0x022426B8
	ldr r3, _022426BC ; =sub_020181C4
	bx r3
	; .align 2, 0
_022426BC: .word sub_020181C4
	thumb_func_end ov6_022426B8

	thumb_func_start ov6_022426C0
ov6_022426C0: ; 0x022426C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0x5a
	add r4, r1, #0
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r7, r0]
	add r0, r4, #0
	mov r1, #0x12
	bl sub_020759F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _022426E8
	cmp r0, #0xfe
	beq _022426EC
	cmp r0, #0xff
	beq _022426F0
	b _022426F4
_022426E8:
	mov r2, #0
	b _0224270C
_022426EC:
	mov r2, #1
	b _0224270C
_022426F0:
	mov r2, #2
	b _0224270C
_022426F4:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0224270A
	mov r2, #0
	b _0224270C
_0224270A:
	mov r2, #1
_0224270C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r7, #0
	lsl r1, r4, #0x10
	lsl r2, r2, #0x18
	add r0, #0x28
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_02075FB4
	add r1, r7, #0
	mov r0, #1
	add r1, #0x3c
	mov r2, #4
	bl sub_020095C4
	str r0, [r7, #0x38]
	mov r0, #0x61
	mov r1, #4
	bl sub_02006C24
	ldr r4, _022427F0 ; =0x02249030
	str r0, [sp, #0x10]
	mov r6, #0
	add r5, r7, #0
_02242744:
	ldrb r0, [r4]
	add r1, r6, #0
	mov r2, #4
	bl sub_02009714
	add r6, r6, #1
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r6, #4
	blt _02242744
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r7, #0]
	ldr r1, [sp, #0x10]
	mov r2, #5
	bl sub_02009A4C
	str r0, [r7, #0x10]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r7, #4]
	ldr r1, [sp, #0x10]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	str r0, [r7, #0x14]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0x10]
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	str r0, [r7, #0x18]
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r7, #0xc]
	ldr r1, [sp, #0x10]
	mov r2, #0xc
	mov r3, #0
	bl sub_02009BC4
	str r0, [r7, #0x1c]
	ldrh r0, [r7, #0x28]
	ldrh r1, [r7, #0x2a]
	mov r2, #4
	bl sub_0201363C
	str r0, [r7, #0x20]
	ldrh r0, [r7, #0x28]
	ldrh r1, [r7, #0x2c]
	mov r2, #4
	bl sub_02013660
	str r0, [r7, #0x24]
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	ldr r2, [r7, #0x20]
	ldr r3, [r7, #0x24]
	bl ov6_02242880
	ldr r0, [sp, #0x10]
	bl sub_02006CA8
	add r0, r7, #0
	bl ov6_022428F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022427F0: .word 0x02249030
	thumb_func_end ov6_022426C0

	thumb_func_start ov6_022427F4
ov6_022427F4: ; 0x022427F4
	add r1, r0, #0
	mov r0, #0x5a
	mov r2, #1
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r3, _0224280C ; =sub_0200D9E8
	mov r2, #0
	add r0, r0, #4
	str r2, [r1, r0]
	ldr r0, _02242810 ; =ov6_02242860
	bx r3
	nop
_0224280C: .word sub_0200D9E8
_02242810: .word ov6_02242860
	thumb_func_end ov6_022427F4

	thumb_func_start ov6_02242814
ov6_02242814: ; 0x02242814
	mov r1, #0x5a
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02242814

	thumb_func_start ov6_02242820
ov6_02242820: ; 0x02242820
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov6_02242820

	thumb_func_start ov6_02242828
ov6_02242828: ; 0x02242828
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0200A4E4
	ldr r0, [r5, #0x14]
	bl sub_0200A6DC
	mov r4, #0
_0224283A:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0224283A
	ldr r0, [r5, #0x38]
	bl sub_02021964
	ldr r0, [r5, #0x20]
	bl sub_020181C4
	ldr r0, [r5, #0x24]
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02242828

	thumb_func_start ov6_02242860
ov6_02242860: ; 0x02242860
	push {r3, lr}
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r3, [r1, r2]
	cmp r3, #0
	beq _02242874
	ldr r0, [r1, #0x38]
	bl sub_020219F8
	pop {r3, pc}
_02242874:
	mov r3, #1
	add r2, r2, #4
	str r3, [r1, r2]
	bl sub_0200DA58
	pop {r3, pc}
	thumb_func_end ov6_02242860

	thumb_func_start ov6_02242880
ov6_02242880: ; 0x02242880
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02009DC8
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_02009DC8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0200A3DC
	add r0, r7, #0
	bl sub_0200A640
	add r0, r5, #0
	bl sub_0200A534
	add r5, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200A72C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020A81B0
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_020A81FC
	mov r1, #0x32
	add r5, r0, #0
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020C2C54
	mov r2, #0x32
	ldr r1, [sp]
	add r0, r4, #0
	lsl r2, r2, #6
	bl sub_020C02BC
	add r0, r6, #0
	mov r1, #0x20
	bl sub_020C2C54
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020C0160
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02242880

	thumb_func_start ov6_022428F8
ov6_022428F8: ; 0x022428F8
	push {r4, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #3
	str r0, [sp]
	sub r0, r0, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r4, #0]
	mov r2, #1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	mov r3, #2
	str r0, [sp, #0x18]
	ldr r0, [r4, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r4, #0x38]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r0, [sp, #0x58]
	lsl r0, r0, #0x11
	str r0, [sp, #0x34]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r1, [sp, #0x50]
	bl sub_02021AA0
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	add sp, #0x80
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022428F8

	.rodata


	.global Unk_ov6_02249030
Unk_ov6_02249030: ; 0x02249030
	.incbin "incbin/overlay6_rodata.bin", 0x21C, 0x4

