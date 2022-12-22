	.include "macros/function.inc"
	.include "include/ov104_0223D768.inc"

	

	.text


	thumb_func_start ov104_0223D768
ov104_0223D768: ; 0x0223D768
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #0x18]
	cmp r0, #4
	blo _0223D780
	bl GF_AssertFail
_0223D780:
	add r1, sp, #0x20
	ldrh r2, [r1, #0x10]
	mov r1, #0x34
	ldr r0, _0223D7E8 ; =0x022417D8
	mul r1, r2
	add r4, r0, r1
	ldr r3, [r4, #0x14]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200CC3C
	ldr r1, [r4, #0x18]
	mov r0, #0
	str r5, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0200CDC4
	ldr r3, [r4, #0x1c]
	mov r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200CE24
	ldr r3, [r4, #0x20]
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	str r3, [sp, #4]
	bl sub_0200CE54
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223D7E8: .word 0x022417D8
	thumb_func_end ov104_0223D768

	thumb_func_start ov104_0223D7EC
ov104_0223D7EC: ; 0x0223D7EC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	blo _0223D7FA
	bl GF_AssertFail
_0223D7FA:
	mov r0, #0x34
	ldr r1, _0223D824 ; =0x022417D8
	mul r0, r4
	add r4, r1, r0
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	bl sub_0200D070
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl sub_0200D080
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0200D090
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D824: .word 0x022417D8
	thumb_func_end ov104_0223D7EC

	thumb_func_start ov104_0223D828
ov104_0223D828: ; 0x0223D828
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blo _0223D838
	bl GF_AssertFail
_0223D838:
	mov r2, #0x34
	ldr r3, _0223D854 ; =0x022417D8
	mul r2, r4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r3, r2
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223D854: .word 0x022417D8
	thumb_func_end ov104_0223D828

	thumb_func_start ov104_0223D858
ov104_0223D858: ; 0x0223D858
	ldr r3, _0223D85C ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_0223D85C: .word sub_0200D0F4
	thumb_func_end ov104_0223D858

	.rodata


	.global Unk_ov104_022417D8
Unk_ov104_022417D8: ; 0x022417D8
	.incbin "incbin/overlay104_rodata.bin", 0x2548, 0xD0

