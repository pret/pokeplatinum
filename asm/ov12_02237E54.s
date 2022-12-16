	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov12_02237E54
ov12_02237E54: ; 0x02237E54
	push {r3, lr}
	sub r1, r1, r3
	neg r1, r1
	sub r0, r0, r2
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r1, #0
	asr r0, r0, #0x10
	mul r2, r1
	add r1, r0, #0
	mul r1, r0
	add r0, r2, r1
	lsl r0, r0, #0xc
	bl sub_020BCFF0
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02237E54

	thumb_func_start ov12_02237E80
ov12_02237E80: ; 0x02237E80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202CA80
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202CA84
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xbe
	mov r3, #0x46
	bl ov12_02237E54
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02237E80

	thumb_func_start ov12_02237EA0
ov12_02237EA0: ; 0x02237EA0
	push {r4, lr}
	sub sp, #8
	ldr r3, _02237EF8 ; =0x0223B040
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #7
_02237EAC:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02237EAC
	add r0, r4, #0
	bl sub_0202CA7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020981AC
	cmp r0, #0
	bne _02237EEE
	add r0, r4, #0
	bl ov12_02237E80
	cmp r0, #0x38
	blt _02237ED8
	mov r0, #3
	b _02237EE6
_02237ED8:
	add r0, r0, #1
	mov r1, #0x14
	bl sub_020E1F6C
	cmp r0, #3
	blt _02237EE6
	mov r0, #3
_02237EE6:
	add r1, sp, #0
	add sp, #8
	ldrb r0, [r1, r0]
	pop {r4, pc}
_02237EEE:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	add sp, #8
	pop {r4, pc}
	nop
_02237EF8: .word 0x0223B040
	thumb_func_end ov12_02237EA0

	.rodata


	.global Unk_ov12_0223B040
Unk_ov12_0223B040: ; 0x0223B040
	.incbin "incbin/overlay12_rodata.bin", 0x2AAC, 0x7

