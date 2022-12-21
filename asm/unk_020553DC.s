	.include "macros/function.inc"
	.include "include/unk_020553DC.inc"

	

	.text


	thumb_func_start sub_020553DC
sub_020553DC: ; 0x020553DC
	push {r3, lr}
	bl sub_0200569C
	bl sub_02004A3C
	mov r0, #0
	bl sub_02004234
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020553DC

	thumb_func_start sub_020553F0
sub_020553F0: ; 0x020553F0
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0203A790
	bl sub_0203A748
	strh r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020553F0

	thumb_func_start sub_02055404
sub_02055404: ; 0x02055404
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A748
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02055404

	thumb_func_start sub_02055414
sub_02055414: ; 0x02055414
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A748
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055414

	thumb_func_start sub_02055428
sub_02055428: ; 0x02055428
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r5, r1, #0
	bl sub_0205EB74
	cmp r0, #2
	bne _02055466
	ldr r0, _02055498 ; =0x0000023D
	sub r0, r5, r0
	cmp r0, #0xa
	bhi _02055462
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205544C: ; jump table
	.short _02055466 - _0205544C - 2 ; case 0
	.short _02055466 - _0205544C - 2 ; case 1
	.short _02055466 - _0205544C - 2 ; case 2
	.short _02055466 - _0205544C - 2 ; case 3
	.short _02055466 - _0205544C - 2 ; case 4
	.short _02055462 - _0205544C - 2 ; case 5
	.short _02055466 - _0205544C - 2 ; case 6
	.short _02055466 - _0205544C - 2 ; case 7
	.short _02055466 - _0205544C - 2 ; case 8
	.short _02055466 - _0205544C - 2 ; case 9
	.short _02055466 - _0205544C - 2 ; case 10
_02055462:
	ldr r0, _0205549C ; =0x0000047F
	pop {r3, r4, r5, pc}
_02055466:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0206981C
	cmp r0, #1
	bne _02055478
	ldr r0, _020554A0 ; =0x0000047E
	pop {r3, r4, r5, pc}
_02055478:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020554A4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02055404
	cmp r0, #0
	beq _02055494
	add r0, r4, #0
	bl sub_02055404
	add r5, r0, #0
_02055494:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02055498: .word 0x0000023D
_0205549C: .word 0x0000047F
_020554A0: .word 0x0000047E
	thumb_func_end sub_02055428

	thumb_func_start sub_020554A4
sub_020554A4: ; 0x020554A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02013948
	cmp r0, #0
	bne _020554BA
	add r0, r4, #0
	bl sub_0203A0C4
	b _020554C0
_020554BA:
	add r0, r4, #0
	bl sub_0203A0D8
_020554C0:
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r1, r4, #0
	bl sub_0206AB68
	cmp r0, #0
	beq _020554D4
	add r6, r0, #0
_020554D4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020554E8
	cmp r0, #0
	beq _020554E2
	add r6, r0, #0
_020554E2:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020554A4

	thumb_func_start sub_020554E8
sub_020554E8: ; 0x020554E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	bl sub_0203A790
	bl sub_0203A728
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, _02055548 ; =0x0000015E
	cmp r6, r1
	beq _02055512
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02055512:
	ldr r2, [r7, #0]
	cmp r2, #0x50
	beq _0205551E
	add r1, r1, #1
	cmp r2, r1
	bne _02055544
_0205551E:
	ldr r1, _0205554C ; =0x0000012B
	cmp r4, r1
	bge _02055528
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02055528:
	add r1, r1, #7
	cmp r4, r1
	ble _02055532
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02055532:
	mov r1, #9
	lsl r1, r1, #6
	cmp r0, r1
	beq _02055540
	add r1, #0x69
	cmp r0, r1
	bne _02055544
_02055540:
	ldr r0, _02055550 ; =0x000004A5
	pop {r3, r4, r5, r6, r7, pc}
_02055544:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02055548: .word 0x0000015E
_0205554C: .word 0x0000012B
_02055550: .word 0x000004A5
	thumb_func_end sub_020554E8

	thumb_func_start sub_02055554
sub_02055554: ; 0x02055554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	add r7, r2, #0
	bl sub_0205EB74
	add r6, r0, #0
	bl sub_020041DC
	cmp r0, #1
	bne _02055574
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02055574:
	add r0, r5, #0
	bl sub_020041FC
	cmp r4, r0
	bne _02055584
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02055584:
	bl sub_02004A3C
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_020555CC
	cmp r6, #1
	beq _0205559A
	bne _020555B2
_0205559A:
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mov r0, #4
	add r1, r4, #0
	bl sub_02005068
	b _020555C4
_020555B2:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mov r0, #4
	add r1, r4, #0
	bl sub_0200502C
_020555C4:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055554

	thumb_func_start sub_020555CC
sub_020555CC: ; 0x020555CC
	cmp r1, #3
	bhi _0205560A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020555DC: ; jump table
	.short _020555E4 - _020555DC - 2 ; case 0
	.short _020555EE - _020555DC - 2 ; case 1
	.short _020555F8 - _020555DC - 2 ; case 2
	.short _02055602 - _020555DC - 2 ; case 3
_020555E4:
	mov r0, #0x1e
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r3, #0]
	bx lr
_020555EE:
	mov r0, #0x3c
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r3, #0]
	bx lr
_020555F8:
	mov r0, #0x3c
	str r0, [r2, #0]
	mov r0, #0xf
	str r0, [r3, #0]
	bx lr
_02055602:
	mov r0, #0x3c
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r3, #0]
_0205560A:
	bx lr
	thumb_func_end sub_020555CC

	thumb_func_start sub_0205560C
sub_0205560C: ; 0x0205560C
	push {r3, r4, r5, lr}
	mov r1, #1
	bl sub_02079220
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, _02055638 ; =0x0000044D
	ldr r2, _0205563C ; =0x020EC3E0
	mov r4, #0
_0205561E:
	lsl r3, r4, #2
	ldrh r1, [r2, r3]
	cmp r5, r1
	bne _0205562C
	ldr r0, _02055640 ; =0x020EC3E2
	ldrh r0, [r0, r3]
	pop {r3, r4, r5, pc}
_0205562C:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #0x4f
	blo _0205561E
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02055638: .word 0x0000044D
_0205563C: .word 0x020EC3E0
_02055640: .word 0x020EC3E2
	thumb_func_end sub_0205560C

	thumb_func_start sub_02055644
sub_02055644: ; 0x02055644
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020041DC
	cmp r0, #1
	beq _0205566C
	bl sub_020041FC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020554A4
	cmp r4, r0
	beq _0205566C
	mov r0, #0
	mov r1, #0x28
	bl sub_0200564C
_0205566C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055644

	thumb_func_start sub_02055670
sub_02055670: ; 0x02055670
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020041DC
	cmp r0, #1
	beq _0205569C
	mov r0, #0
	bl sub_02004234
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020554A4
	add r4, r0, #0
	bl sub_02004224
	mov r0, #4
	add r1, r4, #0
	mov r2, #1
	bl sub_02004550
_0205569C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055670

	thumb_func_start sub_020556A0
sub_020556A0: ; 0x020556A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02055428
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020554A4
	bl sub_02004224
	mov r0, #4
	add r1, r6, #0
	mov r2, #1
	bl sub_02004550
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020556A0

	.rodata


	.global Unk_020EC3E0
Unk_020EC3E0: ; 0x020EC3E0
	.incbin "incbin/arm9_rodata.bin", 0x77A0, 0x13C

