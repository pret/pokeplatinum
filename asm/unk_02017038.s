	.include "macros/function.inc"
	.include "include/unk_02017038.inc"

	

	.text


	thumb_func_start sub_02017038
sub_02017038: ; 0x02017038
	ldr r3, _02017054 ; =0x020E565C
	mov r2, #0
_0201703C:
	ldrh r1, [r3, #2]
	cmp r0, r1
	bhs _02017046
	add r0, r2, #0
	bx lr
_02017046:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #2
	blt _0201703C
	add r0, r2, #0
	bx lr
	nop
_02017054: .word 0x020E565C
	thumb_func_end sub_02017038

	thumb_func_start sub_02017058
sub_02017058: ; 0x02017058
	push {r4, lr}
	add r4, r0, #0
	bl sub_02017038
	lsl r1, r0, #1
	ldr r0, _0201706C ; =0x020E565C
	ldrh r0, [r0, r1]
	sub r0, r4, r0
	pop {r4, pc}
	nop
_0201706C: .word 0x020E565C
	thumb_func_end sub_02017058

	thumb_func_start sub_02017070
sub_02017070: ; 0x02017070
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #3
	blt _0201707E
	bl GF_AssertFail
_0201707E:
	ldr r0, _02017088 ; =0x020E565C
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02017088: .word 0x020E565C
	thumb_func_end sub_02017070

	thumb_func_start sub_0201708C
sub_0201708C: ; 0x0201708C
	cmp r0, #1
	blo _02017094
	cmp r0, #0x6f
	bls _020170AE
_02017094:
	mov r1, #0x7d
	lsl r1, r1, #4
	cmp r0, r1
	blo _020170A2
	add r1, #0xa
	cmp r0, r1
	bls _020170AE
_020170A2:
	ldr r1, _020170B8 ; =0x00000BB8
	cmp r0, r1
	blo _020170B2
	add r1, #0x4c
	cmp r0, r1
	bhi _020170B2
_020170AE:
	mov r0, #1
	bx lr
_020170B2:
	mov r0, #0
	bx lr
	nop
_020170B8: .word 0x00000BB8
	thumb_func_end sub_0201708C

	.rodata


	.global Unk_020E565C
Unk_020E565C: ; 0x020E565C
	.incbin "incbin/arm9_rodata.bin", 0xA1C, 0x6

