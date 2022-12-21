	.include "macros/function.inc"
	.include "include/unk_02017428.inc"

	

	.text


	thumb_func_start sub_02017428
sub_02017428: ; 0x02017428
	ldr r0, _02017430 ; =0x021BF658
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_02017430: .word 0x021BF658
	thumb_func_end sub_02017428

	thumb_func_start sub_02017434
sub_02017434: ; 0x02017434
	push {r3, lr}
	ldr r1, _02017454 ; =0x021BF658
	mov r2, #1
	str r2, [r1, #0]
	mov r2, #0
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r0, [r1, #4]
	bl sub_0202293C
	ldr r2, _02017454 ; =0x021BF658
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	pop {r3, pc}
	; .align 2, 0
_02017454: .word 0x021BF658
	thumb_func_end sub_02017434

	thumb_func_start sub_02017458
sub_02017458: ; 0x02017458
	push {r3, r4, r5, lr}
	ldr r0, _02017494 ; =0x021BF658
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02017492
	bl sub_0202293C
	ldr r2, _02017494 ; =0x021BF658
	ldr r3, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	sub r0, r0, r3
	sbc r1, r2
	bl sub_0202295C
	add r5, r1, #0
	ldr r1, _02017494 ; =0x021BF658
	add r4, r0, #0
	ldr r3, [r1, #8]
	ldr r2, [r1, #0xc]
	sub r0, r3, r4
	sbc r2, r5
	bhs _02017492
	ldr r0, [r1, #4]
	sub r1, r4, r3
	bl sub_0202CBF0
	ldr r0, _02017494 ; =0x021BF658
	str r4, [r0, #8]
	str r5, [r0, #0xc]
_02017492:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02017494: .word 0x021BF658
	thumb_func_end sub_02017458

	.bss


	.global Unk_021BF658
Unk_021BF658: ; 0x021BF658
	.space 0x4

	.global Unk_021BF65C
Unk_021BF65C: ; 0x021BF65C
	.space 0x4

	.global Unk_021BF660
Unk_021BF660: ; 0x021BF660
	.space 0x8

	.global Unk_021BF668
Unk_021BF668: ; 0x021BF668
	.space 0x8

	.global Unk_021BF670
Unk_021BF670: ; 0x021BF670
	.space 0x8

