	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov24_02253CE0
ov24_02253CE0: ; 0x02253CE0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #3
	mov r1, #8
	lsl r2, r0, #0xf
	bl sub_02017FC8
	mov r0, #0
	bl sub_020BDEA8
	mov r0, #0x80
	bl sub_020BEA50
	mov r0, #1
	lsl r0, r0, #8
	bl sub_020BEAF8
	ldr r2, _02253D90 ; =0x04001000
	ldr r0, _02253D94 ; =0xFFCFFFEF
	ldr r1, [r2, #0]
	mov r3, #0
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2, #0]
	ldr r2, _02253D98 ; =0x02253DB8
	add r0, r5, #0
	mov r1, #4
	bl sub_020183C4
	mov r0, #0xc
	mov r1, #8
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #8
	str r1, [sp, #0xc]
	mov r1, #0xa
	add r2, r5, #0
	mov r3, #4
	add r4, r0, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xb
	add r2, r5, #0
	mov r3, #4
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	add r0, r4, #0
	bl sub_02006CA8
	ldr r2, _02253D90 ; =0x04001000
	ldr r0, _02253D9C ; =0xFFFF1FFF
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r1, [r2, #0]
	ldr r0, _02253DA0 ; =0xFFFFE0FF
	and r1, r0
	lsr r0, r2, #0x12
	orr r0, r1
	str r0, [r2, #0]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02253D90: .word 0x04001000
_02253D94: .word 0xFFCFFFEF
_02253D98: .word 0x02253DB8
_02253D9C: .word 0xFFFF1FFF
_02253DA0: .word 0xFFFFE0FF
	thumb_func_end ov24_02253CE0

	thumb_func_start ov24_02253DA4
ov24_02253DA4: ; 0x02253DA4
	push {r3, lr}
	mov r1, #4
	bl sub_02019044
	mov r0, #8
	bl sub_0201807C
	pop {r3, pc}
	thumb_func_end ov24_02253DA4

	thumb_func_start ov24_02253DB4
ov24_02253DB4: ; 0x02253DB4
	mov r0, #1
	bx lr
	thumb_func_end ov24_02253DB4

	.rodata


	.global Unk_ov24_02253DB8
Unk_ov24_02253DB8: ; 0x02253DB8
	.incbin "incbin/overlay24_rodata.bin", 0x0, 0x1C

