	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov16_02264798
ov16_02264798: ; 0x02264798
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022647CC
	add r0, r1, #0
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _022647CC
	mov r1, #0xb4
	add r0, r1, #0
	add r0, #0xe8
	strh r1, [r4, r0]
	ldr r0, _022647D0 ; =ov16_02264800
	ldr r2, _022647D4 ; =0x000003F2
	add r1, r4, #0
	bl sub_0200D9E8
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r4, r1]
_022647CC:
	pop {r4, pc}
	nop
_022647D0: .word ov16_02264800
_022647D4: .word 0x000003F2
	thumb_func_end ov16_02264798

	thumb_func_start ov16_022647D8
ov16_022647D8: ; 0x022647D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022647FE
	bl sub_0200DA58
	mov r0, #0x66
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r4, r0]
	add r0, r0, #4
	strh r2, [r4, r0]
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02007DEC
_022647FE:
	pop {r4, pc}
	thumb_func_end ov16_022647D8

	thumb_func_start ov16_02264800
ov16_02264800: ; 0x02264800
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x67
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r0, #0x14
	strh r0, [r4, r1]
	add r0, r1, #0
	ldrh r2, [r4, r1]
	sub r0, #0x34
	cmp r2, r0
	blo _02264820
	add r0, r1, #0
	sub r0, #0x34
	sub r0, r2, r0
	strh r0, [r4, r1]
_02264820:
	mov r0, #0x67
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl sub_0201D15C
	mov r2, #6
	asr r1, r0, #0x1f
	lsl r2, r2, #0xa
	mov r3, #0
	bl sub_020E1F1C
	add r2, r1, #0
	mov r1, #4
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	mov r4, #0
	lsl r3, r1, #9
	add r3, r5, r3
	adc r2, r4
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02264800