	.include "macros/function.inc"
	.include "overlay005/ov5_021E2338.inc"

	

	.text


	thumb_func_start ov5_021E2338
ov5_021E2338: ; 0x021E2338
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #5
	bls _021E234A
	b _021E2496
_021E234A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E2356: ; jump table
	.short _021E2362 - _021E2356 - 2 ; case 0
	.short _021E2386 - _021E2356 - 2 ; case 1
	.short _021E23A2 - _021E2356 - 2 ; case 2
	.short _021E23EC - _021E2356 - 2 ; case 3
	.short _021E2444 - _021E2356 - 2 ; case 4
	.short _021E246C - _021E2356 - 2 ; case 5
_021E2362:
	mov r0, #4
	mov r1, #0x20
	bl sub_02018144
	str r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0x20
	bl memset
	ldr r5, [r4, #0xc]
	bl ov5_021DDF38
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2386:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r4, #4
	bl ov5_021DDC44
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E23A2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E2496
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r4, #0]
	mov r2, #2
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, _021E249C ; =0xFFFFD000
	str r1, [sp]
	str r0, [sp, #4]
	lsl r0, r0, #2
	str r0, [sp, #8]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	mov r3, #7
	bl ov5_021DDF9C
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0]
	bl sub_02020A90
	mov r2, #0x32
	add r1, r0, #0
	mov r0, #6
	lsl r2, r2, #0xc
	mov r3, #0x1e
	str r0, [sp]
	add r0, r5, #4
	add r2, r1, r2
	lsl r3, r3, #0xc
	bl ov5_021DDE14
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E23EC:
	add r0, r5, #4
	bl ov5_021DDE74
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl sub_02020A50
	cmp r6, #1
	bne _021E2496
	ldr r0, [r4, #0]
	mov r2, #2
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, _021E249C ; =0xFFFFD000
	mov r3, #6
	str r0, [sp]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	bl ov5_021DE058
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0]
	bl sub_02020A90
	mov r2, #0x32
	add r1, r0, #0
	mov r0, #6
	lsl r2, r2, #0xc
	str r0, [sp]
	ldr r3, _021E24A0 ; =0xFFF01000
	add r0, r5, #4
	sub r2, r1, r2
	bl ov5_021DDE14
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E2444:
	add r0, r5, #4
	bl ov5_021DDE74
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl sub_02020A50
	cmp r6, #1
	bne _021E2496
	add r0, r4, #0
	bl ov5_021DDD7C
	cmp r0, #1
	bne _021E2496
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E246C:
	mov r0, #0
	bl sub_0200F370
	ldr r0, _021E24A4 ; =0x04000010
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E2488
	mov r0, #1
	str r0, [r1, #0]
_021E2488:
	ldr r0, [r5, #0x1c]
	bl ov5_021DDF74
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
_021E2496:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E249C: .word 0xFFFFD000
_021E24A0: .word 0xFFF01000
_021E24A4: .word 0x04000010
	thumb_func_end ov5_021E2338

	thumb_func_start ov5_021E24A8
ov5_021E24A8: ; 0x021E24A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #5
	bls _021E24BA
	b _021E2606
_021E24BA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E24C6: ; jump table
	.short _021E24D2 - _021E24C6 - 2 ; case 0
	.short _021E24F6 - _021E24C6 - 2 ; case 1
	.short _021E2512 - _021E24C6 - 2 ; case 2
	.short _021E255C - _021E24C6 - 2 ; case 3
	.short _021E25B4 - _021E24C6 - 2 ; case 4
	.short _021E25DC - _021E24C6 - 2 ; case 5
_021E24D2:
	mov r0, #4
	mov r1, #0x20
	bl sub_02018144
	str r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0x20
	bl memset
	ldr r5, [r4, #0xc]
	bl ov5_021DDF38
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E24F6:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r4, #4
	bl ov5_021DDC44
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2512:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E2606
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r4, #0]
	mov r2, #5
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, _021E260C ; =0xFFFFE000
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021E2610 ; =0xFFFF4000
	mov r3, #7
	str r0, [sp, #8]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	bl ov5_021DDF9C
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0]
	bl sub_02020A90
	mov r2, #0x32
	add r1, r0, #0
	mov r0, #6
	lsl r2, r2, #0xc
	mov r3, #0x1e
	str r0, [sp]
	add r0, r5, #4
	add r2, r1, r2
	lsl r3, r3, #0xc
	bl ov5_021DDE14
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E255C:
	add r0, r5, #4
	bl ov5_021DDE74
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl sub_02020A50
	cmp r6, #1
	bne _021E2606
	ldr r0, [r4, #0]
	mov r2, #5
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, _021E260C ; =0xFFFFE000
	mov r3, #6
	str r0, [sp]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	bl ov5_021DE058
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0]
	bl sub_02020A90
	mov r2, #0x1e
	add r1, r0, #0
	mov r0, #6
	lsl r2, r2, #0xc
	str r0, [sp]
	ldr r3, _021E2614 ; =0xFFF9C000
	add r0, r5, #4
	sub r2, r1, r2
	bl ov5_021DDE14
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E25B4:
	add r0, r5, #4
	bl ov5_021DDE74
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl sub_02020A50
	cmp r6, #1
	bne _021E2606
	add r0, r4, #0
	bl ov5_021DDD7C
	cmp r0, #1
	bne _021E2606
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E25DC:
	mov r0, #0
	bl sub_0200F370
	ldr r0, _021E2618 ; =0x04000010
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E25F8
	mov r0, #1
	str r0, [r1, #0]
_021E25F8:
	ldr r0, [r5, #0x1c]
	bl ov5_021DDF74
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
_021E2606:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E260C: .word 0xFFFFE000
_021E2610: .word 0xFFFF4000
_021E2614: .word 0xFFF9C000
_021E2618: .word 0x04000010
	thumb_func_end ov5_021E24A8

	thumb_func_start ov5_021E261C
ov5_021E261C: ; 0x021E261C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #6
	bls _021E262E
	b _021E2740
_021E262E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E263A: ; jump table
	.short _021E2648 - _021E263A - 2 ; case 0
	.short _021E267A - _021E263A - 2 ; case 1
	.short _021E269A - _021E263A - 2 ; case 2
	.short _021E26D0 - _021E263A - 2 ; case 3
	.short _021E26E2 - _021E263A - 2 ; case 4
	.short _021E2704 - _021E263A - 2 ; case 5
	.short _021E2716 - _021E263A - 2 ; case 6
_021E2648:
	mov r0, #4
	mov r1, #0x10
	bl sub_02018144
	str r0, [r4, #0xc]
	mov r2, #0x10
	mov r1, #0
_021E2656:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E2656
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl ov5_021E28B0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E267A:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r4, #4
	bl ov5_021DDC44
	mov r0, #0xa
	str r0, [r5, #0xc]
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E269A:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E2740
	ldr r0, [r4, #0]
	mov r3, #0x32
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0xc
	str r0, [r5, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp]
	lsl r3, r3, #4
	str r3, [sp, #4]
	ldr r0, _021E2744 ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0xbf
	sub r3, #0x76
	bl ov5_021E28E4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E26D0:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E2740
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E26E2:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x1e
	add r3, r2, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2704:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E2740
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2716:
	add r0, r5, #0
	bl ov5_021E28CC
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E2730
	mov r0, #1
	str r0, [r1, #0]
_021E2730:
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
_021E2740:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E2744: .word 0x04000010
	thumb_func_end ov5_021E261C

	thumb_func_start ov5_021E2748
ov5_021E2748: ; 0x021E2748
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #6
	bls _021E275A
	b _021E286E
_021E275A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E2766: ; jump table
	.short _021E2774 - _021E2766 - 2 ; case 0
	.short _021E27A6 - _021E2766 - 2 ; case 1
	.short _021E27C6 - _021E2766 - 2 ; case 2
	.short _021E27FE - _021E2766 - 2 ; case 3
	.short _021E2810 - _021E2766 - 2 ; case 4
	.short _021E2832 - _021E2766 - 2 ; case 5
	.short _021E2844 - _021E2766 - 2 ; case 6
_021E2774:
	mov r0, #4
	mov r1, #0x10
	bl sub_02018144
	str r0, [r4, #0xc]
	mov r2, #0x10
	mov r1, #0
_021E2782:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E2782
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl ov5_021E28B0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E27A6:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r4, #4
	bl ov5_021DDC44
	mov r0, #0xa
	str r0, [r5, #0xc]
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E27C6:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E286E
	ldr r0, [r4, #0]
	mov r3, #0x32
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0xc
	str r0, [r5, #0xc]
	mov r0, #0xf
	lsl r0, r0, #0xc
	str r0, [sp]
	lsl r3, r3, #4
	str r3, [sp, #4]
	ldr r0, _021E2874 ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0xbf
	add r3, #0xdf
	bl ov5_021E28E4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E27FE:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E286E
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2810:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x1e
	add r3, r2, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2832:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E286E
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2844:
	add r0, r5, #0
	bl ov5_021E28CC
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E285E
	mov r0, #1
	str r0, [r1, #0]
_021E285E:
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
_021E286E:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021E2874: .word 0x04000010
	thumb_func_end ov5_021E2748

	thumb_func_start ov5_021E2878
ov5_021E2878: ; 0x021E2878
	ldr r3, _021E2884 ; =sub_0200DA04
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021E2888 ; =ov5_021E288C
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_021E2884: .word sub_0200DA04
_021E2888: .word ov5_021E288C
	thumb_func_end ov5_021E2878

	thumb_func_start ov5_021E288C
ov5_021E288C: ; 0x021E288C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _021E28A0
	ldr r0, [r4, #0]
	bl sub_02013DA4
	mov r0, #0
	str r0, [r4, #8]
_021E28A0:
	ldr r0, [r4, #0]
	bl sub_02013DDC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E288C

	thumb_func_start ov5_021E28B0
ov5_021E28B0: ; 0x021E28B0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02013BE0
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov5_021E2878
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E28B0

	thumb_func_start ov5_021E28CC
ov5_021E28CC: ; 0x021E28CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #0]
	bl sub_02013D38
	ldr r0, [r4, #0]
	bl sub_02013D74
	pop {r4, pc}
	thumb_func_end ov5_021E28CC

	thumb_func_start ov5_021E28E4
ov5_021E28E4: ; 0x021E28E4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	add r5, sp, #0x10
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02013C10
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E28E4

	thumb_func_start ov5_021E290C
ov5_021E290C: ; 0x021E290C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0]
	add r7, r1, #0
	bl sub_02013D94
	add r5, r0, #0
	mov r6, #0
_021E291A:
	ldr r0, [r5, #0]
	add r1, r7, #0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r6, #0
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	bne _021E2932
	lsl r0, r4, #0x10
	b _021E2936
_021E2932:
	neg r0, r4
	lsl r0, r0, #0x10
_021E2936:
	lsr r0, r0, #0x10
	str r0, [r5, #0]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0xc0
	blt _021E291A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E290C

	thumb_func_start ov5_021E2944
ov5_021E2944: ; 0x021E2944
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #5
	bhi _021E2A44
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E2960: ; jump table
	.short _021E296C - _021E2960 - 2 ; case 0
	.short _021E298C - _021E2960 - 2 ; case 1
	.short _021E29A8 - _021E2960 - 2 ; case 2
	.short _021E29B6 - _021E2960 - 2 ; case 3
	.short _021E2A00 - _021E2960 - 2 ; case 4
	.short _021E2A20 - _021E2960 - 2 ; case 5
_021E296C:
	mov r0, #4
	mov r1, #0x1c
	bl sub_02018144
	str r0, [r4, #0xc]
	mov r2, #0x1c
	mov r1, #0
_021E297A:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E297A
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E298C:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r4, #4
	bl ov5_021DDC44
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E29A8:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E2A44
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E29B6:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0]
	bl sub_02020A90
	mov r2, #0x19
	add r1, r0, #0
	mov r0, #0xc
	lsl r2, r2, #0x10
	str r0, [sp]
	ldr r3, _021E2A48 ; =0xFFFFE000
	add r0, r5, #4
	sub r2, r1, r2
	bl ov5_021DDE14
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2A00:
	add r0, r5, #4
	bl ov5_021DDE74
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl sub_02020A50
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E2A44
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2A20:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E2A34
	mov r0, #1
	str r0, [r1, #0]
_021E2A34:
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
_021E2A44:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E2A48: .word 0xFFFFE000
	thumb_func_end ov5_021E2944

	thumb_func_start ov5_021E2A4C
ov5_021E2A4C: ; 0x021E2A4C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #5
	bhi _021E2B4C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E2A68: ; jump table
	.short _021E2A74 - _021E2A68 - 2 ; case 0
	.short _021E2A94 - _021E2A68 - 2 ; case 1
	.short _021E2AB0 - _021E2A68 - 2 ; case 2
	.short _021E2ABE - _021E2A68 - 2 ; case 3
	.short _021E2B08 - _021E2A68 - 2 ; case 4
	.short _021E2B28 - _021E2A68 - 2 ; case 5
_021E2A74:
	mov r0, #4
	mov r1, #0x1c
	bl sub_02018144
	str r0, [r4, #0xc]
	mov r2, #0x1c
	mov r1, #0
_021E2A82:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E2A82
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2A94:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r4, #4
	bl ov5_021DDC44
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2AB0:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E2B4C
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2ABE:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0]
	bl sub_02020A90
	mov r2, #0x32
	add r1, r0, #0
	mov r0, #0xc
	lsl r2, r2, #0x10
	str r0, [sp]
	ldr r3, _021E2B50 ; =0xFFFFB000
	add r0, r5, #4
	sub r2, r1, r2
	bl ov5_021DDE14
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2B08:
	add r0, r5, #4
	bl ov5_021DDE74
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl sub_02020A50
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E2B4C
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E2B28:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E2B3C
	mov r0, #1
	str r0, [r1, #0]
_021E2B3C:
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
_021E2B4C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E2B50: .word 0xFFFFB000
	thumb_func_end ov5_021E2A4C

	thumb_func_start ov5_021E2B54
ov5_021E2B54: ; 0x021E2B54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r7, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r7, #0]
	ldr r4, [r7, #0xc]
	cmp r0, #7
	bls _021E2B66
	b _021E2E92
_021E2B66:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E2B72: ; jump table
	.short _021E2B82 - _021E2B72 - 2 ; case 0
	.short _021E2C40 - _021E2B72 - 2 ; case 1
	.short _021E2C5A - _021E2B72 - 2 ; case 2
	.short _021E2C66 - _021E2B72 - 2 ; case 3
	.short _021E2CCA - _021E2B72 - 2 ; case 4
	.short _021E2D32 - _021E2B72 - 2 ; case 5
	.short _021E2DBE - _021E2B72 - 2 ; case 6
	.short _021E2E48 - _021E2B72 - 2 ; case 7
_021E2B82:
	mov r1, #0x1e
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x1e
	str r0, [r7, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	ldr r0, [r7, #0x10]
	ldr r4, [r7, #0xc]
	ldr r1, [r0, #0x24]
	mov r0, #7
	lsl r0, r0, #6
	str r1, [r4, r0]
	bl ov5_021DDF38
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0x48
	mov r1, #2
	mov r2, #1
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	ldr r0, _021E2EA4 ; =0x000927C0
	mov r2, #0x61
	str r0, [sp, #0x10]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r0, [r7, #0x20]
	add r1, #0x48
	add r2, r4, r2
	mov r3, #0
	bl ov5_021DE4CC
	mov r0, #0
	str r0, [sp, #0x18]
	add r6, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0x48
	add r5, r4, #0
	str r0, [sp, #0x20]
_021E2BEC:
	mov r0, #0
	str r0, [sp]
	mov r1, #0x61
	str r0, [sp, #4]
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	ldr r0, [sp, #0x20]
	add r1, r4, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov5_021DE62C
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02021F58
	ldr r0, [sp, #0x18]
	add r5, r5, #4
	add r0, r0, #1
	add r6, r6, #2
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _021E2BEC
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E2E92
_021E2C40:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r7, #4
	bl ov5_021DDC44
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E2E92
_021E2C5A:
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _021E2D28
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E2E92
_021E2C66:
	mov r0, #0xa
	mov r2, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x29
	lsl r2, r2, #0xc
	mov r3, #2
	bl ov5_021DDE14
	ldr r1, [r4, #0]
	add r0, sp, #0x54
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021DE660
	mov r6, #0
	add r5, r4, #0
_021E2C88:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02021CF8
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x54
	bl sub_02021C70
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E2C88
	add r0, r4, #0
	ldr r2, _021E2EA8 ; =0x0000FFFF
	add r0, #0x18
	mov r1, #0
	mov r3, #0xa
	bl ov5_021DDD80
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E2E92
_021E2CCA:
	add r0, r4, #0
	bl ov5_021DDE74
	ldr r1, [r4, #0]
	str r0, [sp, #0x1c]
	add r0, sp, #0x54
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021DE660
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDD90
	mov r6, #0
	add r5, r4, #0
_021E2CEA:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x54
	bl sub_02021C70
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E2CEA
	mov r0, #0x6e
	ldr r1, [r4, #0x18]
	lsl r0, r0, #2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	ldr r2, [r4, #0x18]
	sub r1, #0xbc
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02021C94
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _021E2D2A
_021E2D28:
	b _021E2E92
_021E2D2A:
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E2E92
_021E2D32:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r1, [r4, #0x44]
	add r0, r7, #0
	mov r2, #0x60
	mov r3, #6
	bl ov5_021DDF9C
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021D6C
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0xff
	mov r3, #0xa
	add r0, #0x2c
	mov r1, #0
	lsl r2, r2, #0xc
	lsl r3, r3, #0xc
	bl ov5_021DDE14
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02020A90
	add r1, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0x71
	mov r2, #0x7d
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	ldr r3, _021E2EAC ; =0xFFFF6000
	add r0, r4, r0
	sub r2, r1, r2
	bl ov5_021DDE14
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021C94
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021C94
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E2E92
_021E2DBE:
	add r0, r4, #0
	add r0, #0x2c
	bl ov5_021DDE74
	mov r1, #2
	ldr r2, [r4, #0x2c]
	lsl r1, r1, #0x12
	sub r1, r1, r2
	mov r2, #6
	add r0, sp, #0x30
	lsl r2, r2, #0x10
	mov r3, #0
	bl ov5_021DE660
	add r3, sp, #0x30
	ldmia r3!, {r0, r1}
	add r2, sp, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #2
	str r0, [r2, #0]
	ldr r2, [r4, #0x2c]
	lsl r1, r1, #0x12
	add r1, r2, r1
	mov r2, #6
	add r0, sp, #0x24
	lsl r2, r2, #0x10
	mov r3, #0
	bl ov5_021DE660
	add r3, sp, #0x24
	ldmia r3!, {r0, r1}
	add r2, sp, #0x3c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0x48
	str r0, [r2, #0]
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021C50
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x3c
	bl sub_02021C50
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021DDE74
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02020A50
	add r0, r7, #0
	bl ov5_021DDD7C
	cmp r0, #0
	beq _021E2E92
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E2E92
_021E2E48:
	mov r0, #0
	bl sub_0200F370
	ldr r1, [r7, #0x14]
	cmp r1, #0
	beq _021E2E58
	mov r0, #1
	str r0, [r1, #0]
_021E2E58:
	mov r6, #0
	add r5, r4, #0
_021E2E5C:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021BD4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E2E5C
	mov r1, #0x61
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x48
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	add r0, #0x48
	bl ov5_021DE4AC
	ldr r0, [r4, #0x44]
	bl ov5_021DDF74
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov5_021DDC28
_021E2E92:
	ldr r0, [r7, #0]
	cmp r0, #7
	beq _021E2E9E
	ldr r0, [r4, #0x48]
	bl sub_020219F8
_021E2E9E:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E2EA4: .word 0x000927C0
_021E2EA8: .word 0x0000FFFF
_021E2EAC: .word 0xFFFF6000
	thumb_func_end ov5_021E2B54

	thumb_func_start ov5_021E2EB0
ov5_021E2EB0: ; 0x021E2EB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r6, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0]
	ldr r4, [r6, #0xc]
	cmp r0, #7
	bhi _021E2FAE
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E2ECC: ; jump table
	.short _021E2EDC - _021E2ECC - 2 ; case 0
	.short _021E2F8E - _021E2ECC - 2 ; case 1
	.short _021E2FA8 - _021E2ECC - 2 ; case 2
	.short _021E2FB6 - _021E2ECC - 2 ; case 3
	.short _021E3044 - _021E2ECC - 2 ; case 4
	.short _021E30D4 - _021E2ECC - 2 ; case 5
	.short _021E310E - _021E2ECC - 2 ; case 6
	.short _021E3138 - _021E2ECC - 2 ; case 7
_021E2EDC:
	mov r1, #0x71
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x71
	str r0, [r6, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r0, [r6, #0x10]
	ldr r4, [r6, #0xc]
	ldr r1, [r0, #0x24]
	mov r0, #0x69
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl ov5_021DE1CC
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x2c
	mov r1, #2
	mov r2, #1
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _021E3194 ; =0x000927C0
	mov r2, #0x5a
	str r0, [sp, #0x10]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r0, [r6, #0x20]
	add r1, #0x2c
	add r2, r4, r2
	mov r3, #0
	bl ov5_021DE4CC
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x2c
	mov r7, #0
	add r5, r4, #0
	str r0, [sp, #0x18]
_021E2F42:
	mov r0, #0
	str r0, [sp]
	mov r1, #0x5a
	str r0, [sp, #4]
	lsl r1, r1, #2
	mov r2, #2
	ldr r0, [sp, #0x18]
	add r1, r4, r1
	lsl r2, r2, #0x12
	mov r3, #0
	bl ov5_021DE62C
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02021CF8
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #2
	blt _021E2F42
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E3182
_021E2F8E:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r6, #4
	bl ov5_021DDC44
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E3182
_021E2FA8:
	ldr r1, [r6, #4]
	cmp r1, #0
	bne _021E2FB0
_021E2FAE:
	b _021E3182
_021E2FB0:
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E3182
_021E2FB6:
	mov r2, #3
	ldr r1, _021E3198 ; =0xFFF40000
	add r0, r4, #0
	lsl r2, r2, #0x12
	mov r3, #8
	bl ov5_021DDDBC
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r2, #2
	ldr r1, [r4, #0]
	lsl r2, r2, #0x12
	sub r1, r2, r1
	add r0, sp, #0x40
	lsr r2, r2, #1
	mov r3, #0
	bl ov5_021DE660
	add r3, sp, #0x40
	ldmia r3!, {r0, r1}
	add r2, sp, #0x70
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r3, #0
	str r0, [r2, #0]
	mov r2, #2
	ldr r1, [r4, #0]
	lsl r2, r2, #0x12
	add r0, sp, #0x34
	add r1, r1, r2
	bl ov5_021DE660
	add r3, sp, #0x34
	ldmia r3!, {r0, r1}
	add r2, sp, #0x64
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0x70
	str r0, [r2, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021C50
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x64
	bl sub_02021C50
	add r0, r4, #0
	ldr r2, _021E319C ; =0x0001FFFE
	add r0, #0x14
	mov r1, #0
	mov r3, #8
	bl ov5_021DDD80
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E3182
_021E3044:
	add r0, r4, #0
	bl ov5_021DDDCC
	mov r2, #2
	add r5, r0, #0
	ldr r1, [r4, #0]
	lsl r2, r2, #0x12
	sub r1, r2, r1
	add r0, sp, #0x28
	lsr r2, r2, #1
	mov r3, #0
	bl ov5_021DE660
	add r3, sp, #0x28
	ldmia r3!, {r0, r1}
	add r2, sp, #0x58
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r3, #0
	str r0, [r2, #0]
	mov r2, #2
	ldr r1, [r4, #0]
	lsl r2, r2, #0x12
	add r0, sp, #0x1c
	add r1, r1, r2
	bl ov5_021DE660
	add r3, sp, #0x1c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x4c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0x58
	str r0, [r2, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021C50
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x4c
	bl sub_02021C50
	add r0, r4, #0
	add r0, #0x14
	bl ov5_021DDD90
	mov r0, #0x67
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	ldr r1, [r4, #0x14]
	mov r0, #0x1a
	lsl r0, r0, #4
	neg r1, r1
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	cmp r5, #1
	bne _021E3182
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E3182
_021E30D4:
	mov r3, #1
	lsl r3, r3, #0xc
	str r3, [sp]
	ldr r1, [r4, #0x28]
	add r0, r6, #0
	mov r2, #8
	bl ov5_021DE240
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02020A90
	add r1, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0x6a
	mov r2, #0x7d
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	ldr r3, _021E31A0 ; =0xFFFF6000
	add r0, r4, r0
	sub r2, r1, r2
	bl ov5_021DDE14
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E3182
_021E310E:
	mov r0, #0x6a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021DDE74
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02020A50
	add r0, r6, #0
	bl ov5_021DDD7C
	cmp r0, #1
	bne _021E3182
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E3182
_021E3138:
	mov r0, #0
	bl sub_0200F370
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _021E3148
	mov r0, #1
	str r0, [r1, #0]
_021E3148:
	mov r7, #0
	add r5, r4, #0
_021E314C:
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021BD4
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #2
	blt _021E314C
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x2c
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	add r0, #0x2c
	bl ov5_021DE4AC
	ldr r0, [r4, #0x28]
	bl ov5_021DE218
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DDC28
_021E3182:
	ldr r0, [r6, #0]
	cmp r0, #7
	beq _021E318E
	ldr r0, [r4, #0x2c]
	bl sub_020219F8
_021E318E:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_021E3194: .word 0x000927C0
_021E3198: .word 0xFFF40000
_021E319C: .word 0x0001FFFE
_021E31A0: .word 0xFFFF6000
	thumb_func_end ov5_021E2EB0

	thumb_func_start ov5_021E31A4
ov5_021E31A4: ; 0x021E31A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r7, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r7, #0]
	ldr r4, [r7, #0xc]
	cmp r0, #7
	bls _021E31B6
	b _021E3524
_021E31B6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E31C2: ; jump table
	.short _021E31D2 - _021E31C2 - 2 ; case 0
	.short _021E3292 - _021E31C2 - 2 ; case 1
	.short _021E32AC - _021E31C2 - 2 ; case 2
	.short _021E32F2 - _021E31C2 - 2 ; case 3
	.short _021E3358 - _021E31C2 - 2 ; case 4
	.short _021E33E4 - _021E31C2 - 2 ; case 5
	.short _021E3468 - _021E31C2 - 2 ; case 6
	.short _021E34D0 - _021E31C2 - 2 ; case 7
_021E31D2:
	mov r1, #0x7a
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x7a
	str r0, [r7, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r0, [r7, #0x10]
	ldr r4, [r7, #0xc]
	ldr r1, [r0, #0x24]
	mov r0, #0x72
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x40
	mov r1, #4
	bl ov5_021E28B0
	mov r0, #0x79
	mov r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x50
	mov r1, #2
	mov r2, #1
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	ldr r0, _021E3544 ; =0x000927C0
	mov r2, #0x63
	str r0, [sp, #0x10]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r0, [r7, #0x20]
	add r1, #0x50
	add r2, r4, r2
	mov r3, #0
	bl ov5_021DE4CC
	add r0, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x50
	mov r6, #0
	add r5, r4, #0
	str r0, [sp, #0x1c]
_021E3244:
	mov r0, #0
	str r0, [sp]
	mov r1, #0x63
	str r0, [sp, #4]
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	ldr r0, [sp, #0x1c]
	add r1, r4, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov5_021DE62C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02021F58
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E3244
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E3524
_021E3292:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r7, #4
	bl ov5_021DDC44
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E3524
_021E32AC:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E32E4
	mov r0, #3
	lsl r0, r0, #0xe
	mov r3, #0x32
	str r0, [sp]
	lsl r3, r3, #4
	str r3, [sp, #4]
	ldr r0, _021E3548 ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x40
	mov r2, #0xbf
	sub r3, #0x76
	bl ov5_021E28E4
	mov r0, #1
	str r0, [r4, #0x4c]
_021E32E4:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _021E33BE
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E3524
_021E32F2:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	mov r2, #0x10
	mov r3, #8
	bl ov5_021DDD80
	ldr r3, [r4, #0x18]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021E354C ; =0x04000050
	mov r1, #0
	mov r2, #0xf
	bl G2x_SetBlendAlpha_
	mov r6, #0
	add r5, r4, #0
_021E3316:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02021CF8
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021FE0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E3316
	add r0, r4, #0
	ldr r2, _021E3550 ; =0x0000FFFF
	add r0, #0x2c
	mov r1, #0
	mov r3, #8
	bl ov5_021DDD80
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E3524
_021E3358:
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDD90
	add r6, r0, #0
	ldr r1, [r4, #0x18]
	mov r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _021E3554 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	add r0, #0x2c
	bl ov5_021DDD90
	cmp r0, #0
	bne _021E33A2
	mov r0, #7
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #6
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	mov r0, #0x71
	lsl r0, r0, #2
	lsl r1, r5, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	b _021E33BA
_021E33A2:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021C94
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021C94
_021E33BA:
	cmp r6, #1
	beq _021E33C0
_021E33BE:
	b _021E3524
_021E33C0:
	ldr r0, _021E354C ; =0x04000050
	mov r6, #0
	strh r6, [r0]
	add r5, r4, #0
_021E33C8:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021FE0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E33C8
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E3524
_021E33E4:
	mov r1, #8
	str r1, [sp]
	ldr r3, _021E3558 ; =0x0000019A
	add r0, r4, #0
	lsl r1, r1, #9
	mov r2, #0x29
	bl ov5_021DDE14
	ldr r1, [r4, #0]
	add r0, sp, #0x34
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021DE660
	add r3, sp, #0x34
	add r2, sp, #0x4c
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x20]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r6, #0
	str r0, [r2, #0]
	add r5, r4, #0
_021E3412:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x20]
	bl sub_02021C70
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E3412
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02020A90
	add r1, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0x73
	mov r2, #0x7d
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	ldr r3, _021E355C ; =0xFFFF6000
	add r0, r4, r0
	sub r2, r1, r2
	bl ov5_021DDE14
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x18
	add r3, r2, #0
	bl sub_0200F174
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E3524
_021E3468:
	add r0, r4, #0
	bl ov5_021DDE74
	ldr r1, [r4, #0]
	str r0, [sp, #0x18]
	add r0, sp, #0x28
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021DE660
	add r3, sp, #0x28
	add r2, sp, #0x40
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x24]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r6, #0
	str r0, [r2, #0]
	add r5, r4, #0
_021E348E:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x24]
	bl sub_02021C70
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E348E
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021DDE74
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02020A50
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021E3524
	bl sub_0200F2AC
	cmp r0, #1
	bne _021E3524
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021E3524
_021E34D0:
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r1, [r7, #0x14]
	cmp r1, #0
	beq _021E34E2
	mov r0, #1
	str r0, [r1, #0]
_021E34E2:
	add r0, r4, #0
	add r0, #0x40
	bl ov5_021E28CC
	mov r6, #0
	str r6, [r4, #0x4c]
	add r5, r4, #0
_021E34F0:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02021BD4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E34F0
	mov r1, #0x63
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x50
	add r1, r4, r1
	bl ov5_021DE5A4
	add r4, #0x50
	add r0, r4, #0
	bl ov5_021DE4AC
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov5_021DDC28
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021E3524:
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _021E3534
	add r0, r4, #0
	add r0, #0x40
	mov r1, #2
	bl ov5_021E290C
_021E3534:
	ldr r0, [r7, #0]
	cmp r0, #7
	beq _021E3540
	ldr r0, [r4, #0x50]
	bl sub_020219F8
_021E3540:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E3544: .word 0x000927C0
_021E3548: .word 0x04000010
_021E354C: .word 0x04000050
_021E3550: .word 0x0000FFFF
_021E3554: .word 0x04000052
_021E3558: .word 0x0000019A
_021E355C: .word 0xFFFF6000
	thumb_func_end ov5_021E31A4

	thumb_func_start ov5_021E3560
ov5_021E3560: ; 0x021E3560
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x18]
	add r0, r1, #0
	ldr r0, [r0, #0]
	str r1, [sp, #0x1c]
	ldr r4, [r1, #0xc]
	cmp r0, #7
	bls _021E3574
	b _021E3A06
_021E3574:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E3580: ; jump table
	.short _021E3590 - _021E3580 - 2 ; case 0
	.short _021E36A8 - _021E3580 - 2 ; case 1
	.short _021E36C8 - _021E3580 - 2 ; case 2
	.short _021E3722 - _021E3580 - 2 ; case 3
	.short _021E37E2 - _021E3580 - 2 ; case 4
	.short _021E3880 - _021E3580 - 2 ; case 5
	.short _021E3930 - _021E3580 - 2 ; case 6
	.short _021E396E - _021E3580 - 2 ; case 7
_021E3590:
	mov r1, #9
	mov r0, #4
	lsl r1, r1, #6
	bl sub_02018144
	ldr r1, [sp, #0x1c]
	mov r2, #9
	str r0, [r1, #0xc]
	mov r1, #0
	lsl r2, r2, #6
	bl memset
	ldr r0, [sp, #0x1c]
	ldr r4, [r0, #0xc]
	ldr r0, [r0, #0x10]
	ldr r1, [r0, #0x24]
	mov r0, #0x22
	lsl r0, r0, #4
	str r1, [r4, r0]
	sub r0, #0x10
	add r0, r4, r0
	mov r1, #4
	bl ov5_021E28B0
	mov r0, #0x8f
	mov r1, #0xe
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _021E391C ; =0x000927C0
	mov r2, #0x4f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	lsl r2, r2, #2
	ldr r0, [r0, #0x20]
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #0
	bl ov5_021DE4CC
	mov r7, #0x4f
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021E3600:
	mov r0, #0
	str r0, [sp]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, r7
	add r3, r2, #0
	bl ov5_021DE62C
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02021CF8
	mov r0, #4
	bl ov5_021DE6A4
	mov r1, #0x7d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021E3600
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201A778
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, r1]
	ldr r0, [r0, #0x10]
	mov r2, #3
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	mov r1, #0
	add r0, sp, #0x28
	strh r1, [r0]
	mov r0, #3
	add r1, sp, #0x28
	mov r2, #2
	mov r3, #0x1e
	bl sub_0201972C
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0, #0]
	b _021E3A06
_021E36A8:
	mov r1, #0x10
	ldr r3, [sp, #0x1c]
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r3, #4
	bl ov5_021DDC44
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0, #0]
	b _021E3A06
_021E36C8:
	mov r3, #0x8f
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	sub r0, r0, #1
	str r0, [r4, r3]
	ldr r0, [r4, r3]
	cmp r0, #0
	bne _021E3706
	mov r0, #3
	lsl r0, r0, #0xe
	str r0, [sp]
	add r0, r3, #0
	add r0, #0xe4
	str r0, [sp, #4]
	ldr r0, _021E3920 ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r3, #0
	sub r0, #0x2c
	add r0, r4, r0
	mov r2, #0xbf
	add r3, #0x6e
	bl ov5_021E28E4
	mov r0, #0x87
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021E3706:
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E3732
	mov r0, #0x8f
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0, #0]
	b _021E3A06
_021E3722:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	blt _021E3734
_021E3732:
	b _021E3A06
_021E3734:
	sub r0, #0x1c
	ldr r0, [r4, r0]
	bl sub_02020A90
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x89
	mov r2, #0x7d
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	ldr r3, _021E3924 ; =0xFFFF6000
	add r0, r4, r0
	sub r2, r1, r2
	bl ov5_021DDE14
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r2, _021E3928 ; =0x0000FFFF
	add r0, r4, r0
	mov r1, #0
	mov r3, #6
	bl ov5_021DDD80
	mov r0, #0x5f
	lsl r0, r0, #2
	mov r2, #0x1f
	add r0, r4, r0
	mov r1, #0xe7
	mvn r2, r2
	mov r3, #6
	bl ov5_021DDD80
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r3, #0x40
	str r1, [sp, #8]
	mov r1, #0x56
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r1, #0xf
	str r1, [sp, #0x14]
	sub r0, #0x18
	mov r1, #0x2b
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, #0xf8
	bl ov5_021DE6C4
	mov r1, #0x2b
	mov r2, #0xe7
	add r0, sp, #0x38
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r1, #1
	lsl r0, r1, #9
	str r1, [r4, r0]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0, #0]
	mov r0, #0x8f
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021E3A06
_021E37E2:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	bge _021E3890
	sub r0, #0xac
	mov r2, #0x1f
	add r0, r4, r0
	mov r1, #0xe7
	mvn r2, r2
	mov r3, #6
	bl ov5_021DDD80
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r2, _021E392C ; =0xFFFF0001
	add r0, r4, r0
	mov r1, #0
	mov r3, #6
	bl ov5_021DDD80
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0x14
	str r1, [sp, #8]
	mov r1, #0x56
	str r1, [sp, #0xc]
	mov r1, #0x40
	str r1, [sp, #0x10]
	mov r1, #0xf
	str r1, [sp, #0x14]
	mov r1, #0xd7
	add r3, r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, #0x61
	bl ov5_021DE6C4
	mov r1, #0xd7
	mov r2, #0xe7
	add r0, sp, #0x38
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #1
	bl ov5_021DE660
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r1, #0x81
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x1c]
	add r1, #0x38
	ldr r0, [r0, #0]
	add r2, r0, #1
	ldr r0, [sp, #0x1c]
	str r2, [r0, #0]
	mov r0, #2
	str r0, [r4, r1]
	b _021E3A06
_021E3880:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	blt _021E3892
_021E3890:
	b _021E3A06
_021E3892:
	sub r0, #0x98
	mov r2, #0x1f
	add r0, r4, r0
	mov r1, #0xe7
	mvn r2, r2
	mov r3, #6
	bl ov5_021DDD80
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r2, _021E3928 ; =0x0000FFFF
	add r0, r4, r0
	mov r1, #0
	mov r3, #6
	bl ov5_021DDD80
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0x10
	str r1, [sp, #8]
	mov r1, #0x56
	str r1, [sp, #0xc]
	mov r1, #0x40
	str r1, [sp, #0x10]
	mov r1, #0xf
	str r1, [sp, #0x14]
	mov r1, #0x81
	add r3, r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, #0xb7
	bl ov5_021DE6C4
	mov r1, #0x81
	mov r2, #0xe7
	add r0, sp, #0x38
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #2
	bl ov5_021DE660
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x82
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0, #0]
	b _021E3A06
	nop
_021E391C: .word 0x000927C0
_021E3920: .word 0x04000010
_021E3924: .word 0xFFFF6000
_021E3928: .word 0x0000FFFF
_021E392C: .word 0xFFFF0001
_021E3930:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021DDE74
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02020A50
	mov r1, #2
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021E3A06
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E3A06
	add r1, #8
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021E3A06
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0, #0]
	b _021E3A06
_021E396E:
	mov r0, #0
	bl sub_0200F370
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021E3980
	mov r0, #1
	str r0, [r1, #0]
_021E3980:
	mov r0, #0x21
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov5_021E28CC
	mov r0, #0x87
	lsl r0, r0, #2
	mov r6, #0
	add r7, r0, #0
	str r6, [r4, r0]
	add r5, r4, #0
	sub r7, #0x28
_021E3998:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021BD4
	ldr r0, [r5, r7]
	bl ov5_021DE6BC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021E3998
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	bl ov5_021DE4AC
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201ACF4
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A8FC
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0201A928
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	ldr r0, [sp, #0x1c]
	mov r1, #3
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #8]
	bl sub_02019EBC
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	bl ov5_021DDC28
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021E3A06:
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021E3A1A
	sub r0, #0xc
	add r0, r4, r0
	mov r1, #2
	bl ov5_021E290C
_021E3A1A:
	mov r1, #0x5f
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #0x20]
	add r0, r4, r1
	add r1, #0x3c
	add r5, r4, #0
	str r0, [sp, #0x24]
	add r7, r4, r1
	add r6, r4, #0
_021E3A2E:
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021E3A9C
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov5_021DE71C
	cmp r0, #0
	beq _021E3A4E
	mov r0, #2
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r5, r0]
_021E3A4E:
	ldr r0, [sp, #0x24]
	bl ov5_021DDD90
	add r0, r7, #0
	bl ov5_021DDD90
	mov r1, #0x6e
	lsl r1, r1, #2
	mov r0, #0x17
	ldr r1, [r6, r1]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, ip
	str r0, [r2, #0]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021C50
_021E3A9C:
	ldr r0, [sp, #0x24]
	add r5, r5, #4
	add r0, #0x14
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _021E3A2E
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	cmp r0, #7
	beq _021E3ACA
	ldr r0, [r4, #0]
	bl sub_020219F8
_021E3ACA:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E3560

	thumb_func_start ov5_021E3AD0
ov5_021E3AD0: ; 0x021E3AD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r4, [r5, #0xc]
	cmp r0, #7
	bhi _021E3BA8
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E3AEC: ; jump table
	.short _021E3AFC - _021E3AEC - 2 ; case 0
	.short _021E3B88 - _021E3AEC - 2 ; case 1
	.short _021E3BA2 - _021E3AEC - 2 ; case 2
	.short _021E3BB0 - _021E3AEC - 2 ; case 3
	.short _021E3C26 - _021E3AEC - 2 ; case 4
	.short _021E3CB2 - _021E3AEC - 2 ; case 5
	.short _021E3D00 - _021E3AEC - 2 ; case 6
	.short _021E3D28 - _021E3AEC - 2 ; case 7
_021E3AFC:
	mov r1, #0x1f
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x1f
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	ldr r0, [r5, #0x10]
	ldr r4, [r5, #0xc]
	ldr r1, [r0, #0x24]
	mov r0, #0x1d
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x5c
	add r2, r1, #0
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _021E3D7C ; =0x000927C0
	mov r2, #0x66
	str r0, [sp, #0x10]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r0, [r5, #0x20]
	add r1, #0x5c
	add r2, r4, r2
	mov r3, #0
	bl ov5_021DE4CC
	mov r0, #0
	str r0, [sp]
	mov r1, #0x66
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #2
	ldr r3, _021E3D80 ; =0xFFFE0000
	add r0, #0x5c
	add r1, r4, r1
	lsl r2, r2, #0x12
	bl ov5_021DE62C
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E3D6C
_021E3B88:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r5, #4
	bl ov5_021DDC44
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E3D6C
_021E3BA2:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021E3BAA
_021E3BA8:
	b _021E3D6C
_021E3BAA:
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E3D6C
_021E3BB0:
	mov r2, #1
	mov r0, #0xc
	lsl r2, r2, #0x14
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #7
	bl ov5_021DDE14
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	ldr r1, _021E3D84 ; =0x0000019A
	add r0, #0x18
	lsl r2, r2, #0xc
	mov r3, #0
	bl ov5_021DDE14
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	ldr r1, _021E3D84 ; =0x0000019A
	add r0, #0x30
	lsl r2, r2, #0xc
	mov r3, #0
	bl ov5_021DDE14
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x30]
	add r0, sp, #0x2c
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x2c
	mov r2, #2
	bl sub_02021C80
	add r0, r4, #0
	ldr r2, _021E3D88 ; =0x0000FFFF
	add r0, #0x48
	mov r1, #0
	mov r3, #0xc
	bl ov5_021DDD80
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E3D6C
_021E3C26:
	add r0, r4, #0
	bl ov5_021DDE74
	mov r1, #2
	lsl r1, r1, #0x12
	add r6, r0, #0
	ldr r3, [r4, #0]
	lsr r2, r1, #2
	sub r2, r3, r2
	add r0, sp, #0x14
	mov r3, #0
	bl ov5_021DE660
	add r3, sp, #0x14
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021C50
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDE74
	add r0, r4, #0
	add r0, #0x30
	bl ov5_021DDE74
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x30]
	add r0, sp, #0x2c
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x2c
	bl sub_02021C70
	add r0, r4, #0
	add r0, #0x48
	bl ov5_021DDD90
	mov r0, #0x73
	ldr r1, [r4, #0x48]
	lsl r0, r0, #2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	cmp r6, #1
	bne _021E3D6C
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E3D6C
_021E3CB2:
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02020A90
	add r1, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0x75
	mov r2, #0xfa
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	mov r3, #0xa
	add r0, r4, r0
	sub r2, r1, r2
	lsl r3, r3, #0xc
	bl ov5_021DDE14
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x12
	add r3, r2, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E3D6C
_021E3D00:
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021DDE74
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02020A50
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E3D6C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E3D6C
_021E3D28:
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021E3D44
	mov r0, #1
	str r0, [r1, #0]
_021E3D44:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	mov r1, #0x66
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x5c
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	add r0, #0x5c
	bl ov5_021DE4AC
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021DDC28
_021E3D6C:
	ldr r0, [r5, #0]
	cmp r0, #7
	beq _021E3D78
	ldr r0, [r4, #0x5c]
	bl sub_020219F8
_021E3D78:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E3D7C: .word 0x000927C0
_021E3D80: .word 0xFFFE0000
_021E3D84: .word 0x0000019A
_021E3D88: .word 0x0000FFFF
	thumb_func_end ov5_021E3AD0

	thumb_func_start ov5_021E3D8C
ov5_021E3D8C: ; 0x021E3D8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x14]
	add r0, r1, #0
	ldr r0, [r0, #0]
	str r1, [sp, #0x18]
	ldr r4, [r1, #0xc]
	cmp r0, #9
	bls _021E3DA0
	b _021E41BC
_021E3DA0:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E3DAC: ; jump table
	.short _021E3DC0 - _021E3DAC - 2 ; case 0
	.short _021E3EBC - _021E3DAC - 2 ; case 1
	.short _021E3EDC - _021E3DAC - 2 ; case 2
	.short _021E3EF4 - _021E3DAC - 2 ; case 3
	.short _021E3F70 - _021E3DAC - 2 ; case 4
	.short _021E3FEC - _021E3DAC - 2 ; case 5
	.short _021E4062 - _021E3DAC - 2 ; case 6
	.short _021E40A2 - _021E3DAC - 2 ; case 7
	.short _021E40E8 - _021E3DAC - 2 ; case 8
	.short _021E4138 - _021E3DAC - 2 ; case 9
_021E3DC0:
	mov r1, #0x8a
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, [sp, #0x18]
	mov r2, #0x8a
	str r0, [r1, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r0, [sp, #0x18]
	mov r2, #1
	ldr r4, [r0, #0xc]
	ldr r0, [r0, #0x10]
	ldr r1, [r0, #0x24]
	mov r0, #0x82
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #3
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _021E4128 ; =0x000927C0
	mov r2, #0x4f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	lsl r2, r2, #2
	ldr r0, [r0, #0x20]
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #0
	bl ov5_021DE4CC
	mov r7, #0x4f
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021E3E1E:
	mov r0, #0
	mov r2, #0
	str r0, [sp]
	add r3, r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, r7
	sub r3, #0x20
	bl ov5_021DE62C
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021E3E1E
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201A778
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r4, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, [r4, r1]
	ldr r0, [r0, #0x10]
	mov r2, #3
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	mov r1, #0
	add r0, sp, #0x28
	strh r1, [r0]
	mov r0, #3
	add r1, sp, #0x28
	mov r2, #2
	mov r3, #0x1e
	bl sub_0201972C
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #4
	bl ov5_021DE8F8
	mov r1, #0x81
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E41BC
_021E3EBC:
	mov r1, #0x10
	ldr r3, [sp, #0x18]
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r3, #4
	bl ov5_021DDC44
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E41BC
_021E3EDC:
	ldr r1, [sp, #0x18]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _021E3F04
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	mov r0, #0x89
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	b _021E41BC
_021E3EF4:
	mov r0, #0x89
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _021E3F06
_021E3F04:
	b _021E41BC
_021E3F06:
	sub r0, #0xa8
	mov r1, #0x1f
	add r0, r4, r0
	mvn r1, r1
	mov r2, #0xe0
	mov r3, #5
	bl ov5_021DDD80
	mov r1, #2
	ldr r2, _021E412C ; =0xFFFE0000
	add r0, sp, #0x38
	lsl r1, r1, #0x12
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r2, _021E4130 ; =0x0000FFFF
	add r0, r4, r0
	mov r1, #0
	mov r3, #5
	bl ov5_021DDD80
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021CF8
	mov r1, #0x7d
	mov r3, #1
	lsl r1, r1, #2
	str r3, [r4, r1]
	ldr r0, [sp, #0x18]
	add r1, #0x30
	ldr r0, [r0, #0]
	add r2, r0, #1
	ldr r0, [sp, #0x18]
	str r2, [r0, #0]
	strh r3, [r4, r1]
	b _021E41BC
_021E3F70:
	mov r0, #0x89
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bgt _021E407C
	sub r0, #0x94
	mov r1, #0x1f
	add r0, r4, r0
	mvn r1, r1
	mov r2, #0xe0
	mov r3, #5
	bl ov5_021DDD80
	mov r1, #0xd
	ldr r2, _021E412C ; =0xFFFE0000
	add r0, sp, #0x38
	lsl r1, r1, #0x10
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r2, _021E4134 ; =0xFFFF0001
	add r0, r4, r0
	mov r1, #0
	mov r3, #5
	bl ov5_021DDD80
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021CF8
	mov r1, #0x7e
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	add r1, #0x2c
	ldr r0, [r0, #0]
	add r2, r0, #1
	ldr r0, [sp, #0x18]
	str r2, [r0, #0]
	mov r0, #3
	strh r0, [r4, r1]
	b _021E41BC
_021E3FEC:
	mov r0, #0x89
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bgt _021E407C
	sub r0, #0x80
	mov r1, #0x1f
	add r0, r4, r0
	mvn r1, r1
	mov r2, #0xe0
	mov r3, #5
	bl ov5_021DDD80
	mov r1, #3
	ldr r2, _021E412C ; =0xFFFE0000
	add r0, sp, #0x38
	lsl r1, r1, #0x10
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r2, _021E4130 ; =0x0000FFFF
	add r0, r4, r0
	mov r1, #0
	mov r3, #5
	bl ov5_021DDD80
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021CF8
	mov r0, #0x7f
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E41BC
_021E4062:
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021E407C
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E407C
	add r1, #8
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021E407E
_021E407C:
	b _021E41BC
_021E407E:
	mov r7, #0x17
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #4
_021E4086:
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021E4086
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E41BC
_021E40A2:
	mov r0, #0xf
	mov r1, #1
	str r0, [sp]
	mov r0, #0x81
	lsl r0, r0, #2
	lsl r3, r1, #9
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	add r2, r1, #0
	bl ov5_021DE948
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02020A90
	add r1, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x83
	mov r2, #0xfa
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	mov r3, #0xa
	add r0, r4, r0
	sub r2, r1, r2
	lsl r3, r3, #0xc
	bl ov5_021DDE14
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E41BC
_021E40E8:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov5_021DE988
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x83
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021DDE74
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02020A50
	cmp r5, #1
	bne _021E41BC
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E41BC
	nop
_021E4128: .word 0x000927C0
_021E412C: .word 0xFFFE0000
_021E4130: .word 0x0000FFFF
_021E4134: .word 0xFFFF0001
_021E4138:
	mov r0, #0
	bl sub_0200F370
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021E414A
	mov r0, #1
	str r0, [r1, #0]
_021E414A:
	mov r7, #0x17
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #4
_021E4152:
	ldr r0, [r5, r7]
	bl sub_02021BD4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021E4152
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	bl ov5_021DE4AC
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov5_021DE928
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_0201ACF4
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_0201A8FC
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0201A928
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	ldr r0, [sp, #0x18]
	mov r1, #3
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #8]
	bl sub_02019EBC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl ov5_021DDC28
_021E41BC:
	mov r1, #0x5f
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #0x1c]
	add r0, r4, r1
	add r1, #0x3c
	add r5, r4, #0
	str r0, [sp, #0x20]
	add r7, r4, r1
	add r6, r4, #0
_021E41D0:
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021E4238
	ldr r0, [sp, #0x20]
	bl ov5_021DDD90
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl ov5_021DDD90
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021E41F6
	mov r0, #0x7d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021E41F6:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, ip
	str r0, [r2, #0]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021C50
	mov r1, #0x6e
	lsl r1, r1, #2
	mov r0, #0x17
	ldr r1, [r6, r1]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
_021E4238:
	ldr r0, [sp, #0x20]
	add r5, r5, #4
	add r0, #0x14
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	str r0, [sp, #0x1c]
	cmp r0, #3
	blt _021E41D0
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	cmp r0, #9
	beq _021E425C
	ldr r0, [r4, #0]
	bl sub_020219F8
_021E425C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E3D8C

	thumb_func_start ov5_021E4260
ov5_021E4260: ; 0x021E4260
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #7
	bls _021E4272
	b _021E44A0
_021E4272:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E427E: ; jump table
	.short _021E428E - _021E427E - 2 ; case 0
	.short _021E431E - _021E427E - 2 ; case 1
	.short _021E4338 - _021E427E - 2 ; case 2
	.short _021E4344 - _021E427E - 2 ; case 3
	.short _021E4376 - _021E427E - 2 ; case 4
	.short _021E43A8 - _021E427E - 2 ; case 5
	.short _021E4418 - _021E427E - 2 ; case 6
	.short _021E445C - _021E427E - 2 ; case 7
_021E428E:
	mov r1, #0x69
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x69
	str r0, [r4, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r5, [r4, #0xc]
	mov r1, #1
	add r0, r5, #0
	add r0, #0x2c
	add r2, r1, #0
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	ldr r0, _021E44B0 ; =0x000927C0
	mov r2, #0x5a
	str r0, [sp, #0x10]
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r0, [r4, #0x20]
	add r1, #0x2c
	add r2, r5, r2
	mov r3, #0
	bl ov5_021DE4CC
	mov r0, #0
	str r0, [sp]
	mov r1, #0x5a
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	add r0, #0x2c
	add r1, r5, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov5_021DE62C
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021FE0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E44A0
_021E431E:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r4, #4
	bl ov5_021DDC44
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E44A0
_021E4338:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E438E
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E44A0
_021E4344:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xc
	bl ov5_021DDD80
	ldr r3, [r5, #0]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021E44B4 ; =0x04000050
	mov r1, #0
	mov r2, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E44A0
_021E4376:
	add r0, r5, #0
	bl ov5_021DDD90
	ldr r2, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r2
	lsl r1, r1, #8
	orr r1, r2
	ldr r2, _021E44B8 ; =0x04000052
	cmp r0, #1
	strh r1, [r2]
	beq _021E4390
_021E438E:
	b _021E44A0
_021E4390:
	mov r1, #0
	sub r0, r2, #2
	strh r1, [r0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021FE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E44A0
_021E43A8:
	mov r0, #6
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	ldr r2, _021E44BC ; =0x0000019A
	add r0, #0x14
	lsl r1, r1, #0xc
	mov r3, #1
	bl ov5_021DDE14
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02021CF8
	ldr r1, [r5, #0x14]
	add r0, sp, #0x20
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021DE660
	add r6, sp, #0x20
	add r3, sp, #0x38
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021C70
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x10
	add r3, r2, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E44A0
_021E4418:
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021DDE74
	ldr r1, [r5, #0x14]
	add r6, r0, #0
	add r0, sp, #0x14
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021DE660
	add r3, sp, #0x14
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021C70
	cmp r6, #1
	bne _021E44A0
	bl sub_0200F2AC
	cmp r0, #1
	bne _021E44A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E44A0
_021E445C:
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E4478
	mov r0, #1
	str r0, [r1, #0]
_021E4478:
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021BD4
	mov r1, #0x5a
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0x2c
	add r1, r5, r1
	bl ov5_021DE5A4
	add r0, r5, #0
	add r0, #0x2c
	bl ov5_021DE4AC
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
_021E44A0:
	ldr r0, [r4, #0]
	cmp r0, #7
	beq _021E44AC
	ldr r0, [r5, #0x2c]
	bl sub_020219F8
_021E44AC:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E44B0: .word 0x000927C0
_021E44B4: .word 0x04000050
_021E44B8: .word 0x04000052
_021E44BC: .word 0x0000019A
	thumb_func_end ov5_021E4260

	thumb_func_start ov5_021E44C0
ov5_021E44C0: ; 0x021E44C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0]
	ldr r4, [r6, #0xc]
	cmp r0, #7
	bhi _021E4598
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E44DC: ; jump table
	.short _021E44EC - _021E44DC - 2 ; case 0
	.short _021E4578 - _021E44DC - 2 ; case 1
	.short _021E4592 - _021E44DC - 2 ; case 2
	.short _021E45A0 - _021E44DC - 2 ; case 3
	.short _021E45EA - _021E44DC - 2 ; case 4
	.short _021E469C - _021E44DC - 2 ; case 5
	.short _021E46C6 - _021E44DC - 2 ; case 6
	.short _021E46D6 - _021E44DC - 2 ; case 7
_021E44EC:
	mov r1, #0x1b
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x1b
	str r0, [r6, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	ldr r4, [r6, #0xc]
	mov r1, #4
	add r0, r4, #0
	mov r2, #1
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _021E4734 ; =0x000927C0
	mov r2, #0x4f
	str r0, [sp, #0x10]
	lsl r2, r2, #2
	ldr r0, [r6, #0x20]
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #0
	bl ov5_021DE4CC
	mov r7, #0
	add r5, r4, #0
_021E4536:
	mov r0, #0
	mov r1, #0x4f
	str r0, [sp]
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov5_021DE62C
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E4536
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E4722
_021E4578:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r6, #4
	bl ov5_021DDC44
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E4722
_021E4592:
	ldr r1, [r6, #4]
	cmp r1, #0
	bne _021E459A
_021E4598:
	b _021E4722
_021E459A:
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E4722
_021E45A0:
	mov r3, #6
	mov r2, #4
	lsl r3, r3, #6
	str r2, [sp]
	add r0, r4, r3
	mov r1, #0
	lsl r2, r2, #0x11
	add r3, #0x1a
	bl ov5_021DDE14
	mov r3, #0x66
	mov r0, #4
	mov r2, #0xa
	lsl r3, r3, #2
	str r0, [sp]
	add r0, r4, r3
	mov r1, #0
	lsl r2, r2, #0x10
	add r3, r3, #2
	bl ov5_021DDE14
	mov r7, #0
	add r5, r4, #0
_021E45CE:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E45CE
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E4722
_021E45EA:
	mov r0, #6
	lsl r0, r0, #6
	mov r7, #0
	add r5, r4, r0
_021E45F2:
	add r0, r5, #0
	bl ov5_021DDE74
	add r7, r7, #1
	add r5, #0x18
	str r0, [sp, #0x18]
	cmp r7, #2
	blt _021E45F2
	mov r2, #6
	lsl r2, r2, #6
	ldr r3, [r4, r2]
	mov r1, #2
	lsl r2, r2, #0xa
	sub r2, r2, r3
	add r0, sp, #0x1c
	lsl r1, r1, #0x12
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	mov r2, #6
	lsl r2, r2, #6
	ldr r3, [r4, r2]
	mov r1, #2
	lsl r2, r2, #0xa
	add r2, r3, r2
	add r0, sp, #0x1c
	lsl r1, r1, #0x12
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0x12
	sub r1, r1, r2
	mov r2, #6
	add r0, sp, #0x1c
	lsl r2, r2, #0x10
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0x12
	add r1, r2, r1
	mov r2, #6
	add r0, sp, #0x1c
	lsl r2, r2, #0x10
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021E4722
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E4722
_021E469C:
	ldr r0, [r6, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x22
	add r3, r2, #0
	bl sub_0200F174
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E4722
_021E46C6:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021E4722
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E4722
_021E46D6:
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [r6, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _021E46F2
	mov r0, #1
	str r0, [r1, #0]
_021E46F2:
	mov r7, #0
	add r5, r4, #0
_021E46F6:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021BD4
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E46F6
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	bl ov5_021DE4AC
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DDC28
_021E4722:
	ldr r0, [r6, #0]
	cmp r0, #7
	beq _021E472E
	ldr r0, [r4, #0]
	bl sub_020219F8
_021E472E:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E4734: .word 0x000927C0
	thumb_func_end ov5_021E44C0

	thumb_func_start ov5_021E4738
ov5_021E4738: ; 0x021E4738
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r0, [sp, #0x14]
	add r0, r1, #0
	ldr r0, [r0, #0]
	str r1, [sp, #0x18]
	ldr r4, [r1, #0xc]
	cmp r0, #7
	bls _021E474C
	b _021E4A4C
_021E474C:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E4758: ; jump table
	.short _021E4768 - _021E4758 - 2 ; case 0
	.short _021E47FA - _021E4758 - 2 ; case 1
	.short _021E481A - _021E4758 - 2 ; case 2
	.short _021E483E - _021E4758 - 2 ; case 3
	.short _021E497C - _021E4758 - 2 ; case 4
	.short _021E498E - _021E4758 - 2 ; case 5
	.short _021E49BE - _021E4758 - 2 ; case 6
	.short _021E49FC - _021E4758 - 2 ; case 7
_021E4768:
	mov r1, #0x3d
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	ldr r1, [sp, #0x18]
	mov r2, #0x3d
	str r0, [r1, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	ldr r0, [sp, #0x18]
	mov r1, #6
	ldr r4, [r0, #0xc]
	mov r2, #1
	add r0, r4, #0
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _021E49D4 ; =0x000927C0
	mov r2, #0x4f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	lsl r2, r2, #2
	ldr r0, [r0, #0x20]
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #0
	bl ov5_021DE4CC
	mov r7, #0x4f
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021E47BC:
	mov r0, #0
	str r0, [sp]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, r7
	add r3, r2, #0
	bl ov5_021DE62C
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _021E47BC
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E4A4C
_021E47FA:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	ldr r3, [sp, #0x18]
	sub r1, #0x11
	add r2, r1, #0
	add r3, r3, #4
	bl ov5_021DDC44
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E4A4C
_021E481A:
	ldr r1, [sp, #0x18]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _021E484E
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	add r0, r0, #4
	lsl r2, r1, #5
	ldr r1, _021E49D8 ; =0x021F9EAC
	ldr r1, [r1, r2]
	str r1, [r4, r0]
	b _021E4A4C
_021E483E:
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	blt _021E4850
_021E484E:
	b _021E4A4C
_021E4850:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	str r1, [sp]
	mov r1, #0x86
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x18
	mul r1, r0
	lsl r3, r0, #5
	add r0, r2, r1
	ldr r1, _021E49DC ; =0x021F9E94
	ldr r2, _021E49E0 ; =0x021F9E98
	ldr r5, _021E49E4 ; =0x021F9E9C
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r5, r3]
	bl ov5_021DDE14
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #8
	str r1, [sp]
	mov r1, #0xaa
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x18
	mul r1, r0
	lsl r3, r0, #5
	add r0, r2, r1
	ldr r1, _021E49E8 ; =0x021F9EA0
	ldr r2, _021E49EC ; =0x021F9EA4
	ldr r5, _021E49F0 ; =0x021F9EA8
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r5, r3]
	bl ov5_021DDE14
	mov r0, #0x62
	lsl r0, r0, #2
	mov r1, #8
	add r3, r4, r0
	mov r0, #0xf2
	str r1, [sp]
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r0, #0x18
	mul r0, r2
	add r0, r3, r0
	ldr r3, _021E49F4 ; =0xFFFFF99A
	lsl r1, r1, #0xa
	mov r2, #0x29
	bl ov5_021DDE14
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	sub r0, #0x90
	add r1, r4, r0
	mov r0, #0x14
	mul r0, r2
	lsl r3, r2, #5
	ldr r2, _021E49F8 ; =0x021F9EB0
	add r0, r1, r0
	ldr r2, [r2, r3]
	mov r1, #0
	mov r3, #8
	bl ov5_021DDD80
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E49DC ; =0x021F9E94
	lsl r3, r0, #5
	ldr r2, _021E49E8 ; =0x021F9EA0
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	add r0, sp, #0x40
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0x40
	bl sub_02021C50
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, sp, #0x34
	add r2, r1, #0
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #2
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0x34
	bl sub_02021C80
	mov r1, #0xf2
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	mov r3, #1
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, r1, #0
	sub r0, #0x18
	str r3, [r2, r0]
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #6
	blt _021E4970
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E4A4C
_021E4970:
	lsl r2, r0, #5
	ldr r0, _021E49D8 ; =0x021F9EAC
	ldr r2, [r0, r2]
	add r0, r1, #4
	str r2, [r4, r0]
	b _021E4A4C
_021E497C:
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021E4A4C
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E4A4C
_021E498E:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x22
	add r3, r2, #0
	bl sub_0200F174
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E4A4C
_021E49BE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E4A4C
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	b _021E4A4C
	nop
_021E49D4: .word 0x000927C0
_021E49D8: .word 0x021F9EAC
_021E49DC: .word 0x021F9E94
_021E49E0: .word 0x021F9E98
_021E49E4: .word 0x021F9E9C
_021E49E8: .word 0x021F9EA0
_021E49EC: .word 0x021F9EA4
_021E49F0: .word 0x021F9EA8
_021E49F4: .word 0xFFFFF99A
_021E49F8: .word 0x021F9EB0
_021E49FC:
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021E4A1C
	mov r0, #1
	str r0, [r1, #0]
_021E4A1C:
	mov r7, #0x17
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #4
_021E4A24:
	ldr r0, [r5, r7]
	bl sub_02021BD4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _021E4A24
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	bl ov5_021DE4AC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl ov5_021DDC28
_021E4A4C:
	mov r1, #0x86
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #0x1c]
	add r0, r4, r1
	str r0, [sp, #0x2c]
	add r0, r1, #0
	add r0, #0x90
	add r0, r4, r0
	sub r1, #0x90
	str r0, [sp, #0x28]
	add r0, r4, r1
	str r0, [sp, #0x24]
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r4, r0
	add r5, r4, #0
	str r0, [sp, #0x20]
	add r6, r4, #0
	add r7, r4, #0
_021E4A74:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021E4B00
	ldr r0, [sp, #0x2c]
	bl ov5_021DDE74
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x28]
	bl ov5_021DDE74
	ldr r0, [sp, #0x24]
	bl ov5_021DDE74
	ldr r0, [sp, #0x20]
	bl ov5_021DDD90
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021E4AB0
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021CAC
_021E4AB0:
	mov r1, #0x86
	mov r2, #0xaa
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	add r0, sp, #0x40
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0x40
	bl sub_02021C50
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	add r0, sp, #0x34
	add r2, r1, #0
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0x34
	bl sub_02021C70
	mov r1, #0xce
	lsl r1, r1, #2
	mov r0, #0x17
	ldr r1, [r7, r1]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
_021E4B00:
	ldr r0, [sp, #0x2c]
	add r5, r5, #4
	add r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r6, #0x18
	add r0, #0x18
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r7, #0x14
	add r0, #0x18
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0x14
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #6
	blt _021E4A74
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	cmp r0, #7
	beq _021E4B36
	ldr r0, [r4, #0]
	bl sub_020219F8
_021E4B36:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E4738

	thumb_func_start ov5_021E4B3C
ov5_021E4B3C: ; 0x021E4B3C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r4, [r5, #0xc]
	cmp r0, #7
	bls _021E4B4E
	b _021E4DC0
_021E4B4E:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E4B5A: ; jump table
	.short _021E4B6A - _021E4B5A - 2 ; case 0
	.short _021E4C50 - _021E4B5A - 2 ; case 1
	.short _021E4C6A - _021E4B5A - 2 ; case 2
	.short _021E4C78 - _021E4B5A - 2 ; case 3
	.short _021E4CB2 - _021E4B5A - 2 ; case 4
	.short _021E4CF0 - _021E4B5A - 2 ; case 5
	.short _021E4D22 - _021E4B5A - 2 ; case 6
	.short _021E4D52 - _021E4B5A - 2 ; case 7
_021E4B6A:
	mov r1, #0x6f
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x6f
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r4, [r5, #0xc]
	mov r1, #1
	add r0, r4, #0
	add r0, #8
	add r2, r1, #0
	bl ov5_021DE47C
	mov r3, #1
	mov r2, #0x51
	add r1, r4, #0
	lsl r2, r2, #2
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	ldr r0, _021E4DD0 ; =0x000927C0
	add r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x20]
	add r2, r4, r2
	bl ov5_021DE4CC
	mov r0, #0
	str r0, [sp]
	mov r1, #0x51
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	add r0, #8
	add r1, r4, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov5_021DE62C
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021FE0
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021E80
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	bl ov5_021DEBEC
	str r0, [r4, #4]
	mov r0, #4
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #0]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, [r4, #0]
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	mov r1, #0
	add r0, sp, #0x14
	strh r1, [r0]
	mov r0, #3
	add r1, sp, #0x14
	mov r2, #2
	mov r3, #0x1e
	bl sub_0201972C
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	bl sub_0201A9A4
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E4DC0
_021E4C50:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r5, #4
	bl ov5_021DDC44
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E4DC0
_021E4C6A:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021E4C72
	b _021E4DC0
_021E4C72:
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E4DC0
_021E4C78:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xf
	bl ov5_021DDD80
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021E4DD4 ; =0x04000050
	mov r1, #0
	mov r2, #0xf
	bl G2x_SetBlendAlpha_
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E4DC0
_021E4CB2:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov5_021DDD90
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	mov r3, #0x10
	sub r3, r3, r1
	lsl r3, r3, #8
	orr r1, r3
	ldr r3, _021E4DD8 ; =0x04000052
	cmp r0, #1
	strh r1, [r3]
	bne _021E4DC0
	mov r1, #0
	sub r0, r3, #2
	sub r2, #0x18
	strh r1, [r0]
	ldr r0, [r4, r2]
	bl sub_02021FE0
	ldr r0, [r5, #0]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0x6e
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021E4DC0
_021E4CF0:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	bgt _021E4DC0
	sub r0, #0x3c
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xe
	mov r3, #0x10
	bl ov5_021DDD80
	ldr r0, [r4, #4]
	ldr r2, [r4, #0]
	mov r1, #0x10
	mov r3, #0xf
	bl ov5_021DEC38
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E4DC0
_021E4D22:
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021DDD90
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	lsl r0, r1, #4
	orr r1, r0
	ldr r0, _021E4DDC ; =0x0400004D
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl ov5_021DECB8
	cmp r0, #0
	beq _021E4D4A
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_021E4D4A:
	ldr r0, [r4, #0]
	bl sub_0201A9A4
	b _021E4DC0
_021E4D52:
	mov r0, #0
	bl sub_0200F370
	ldr r0, [r4, #4]
	bl ov5_021DEC18
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021E4D68
	mov r0, #1
	str r0, [r1, #0]
_021E4D68:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	mov r1, #0x51
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #8
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	add r0, #8
	bl ov5_021DE4AC
	ldr r0, [r4, #0]
	bl sub_0201ACF4
	ldr r0, [r4, #0]
	bl sub_0201A8FC
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0201A928
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	ldr r0, [r5, #0x10]
	mov r1, #3
	ldr r0, [r0, #8]
	bl sub_02019EBC
	ldr r0, _021E4DDC ; =0x0400004D
	mov r1, #0
	strb r1, [r0]
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021DDC28
_021E4DC0:
	ldr r0, [r5, #0]
	cmp r0, #7
	beq _021E4DCC
	ldr r0, [r4, #8]
	bl sub_020219F8
_021E4DCC:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E4DD0: .word 0x000927C0
_021E4DD4: .word 0x04000050
_021E4DD8: .word 0x04000052
_021E4DDC: .word 0x0400004D
	thumb_func_end ov5_021E4B3C

	thumb_func_start ov5_021E4DE0
ov5_021E4DE0: ; 0x021E4DE0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #8]
	ldr r1, [r5, #0x24]
	bl sub_02020910
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x24]
	bl sub_02020A50
	ldrh r1, [r4, #4]
	add r0, sp, #0
	strh r1, [r0]
	ldrh r1, [r4, #6]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	ldr r1, [r5, #0x24]
	add r0, sp, #0
	bl sub_020209D4
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E4DE0

	thumb_func_start ov5_021E4E14
ov5_021E4E14: ; 0x021E4E14
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #7
	bls _021E4E26
	b _021E4F66
_021E4E26:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E4E32: ; jump table
	.short _021E4E42 - _021E4E32 - 2 ; case 0
	.short _021E4E7A - _021E4E32 - 2 ; case 1
	.short _021E4E92 - _021E4E32 - 2 ; case 2
	.short _021E4EA0 - _021E4E32 - 2 ; case 3
	.short _021E4EC4 - _021E4E32 - 2 ; case 4
	.short _021E4F00 - _021E4E32 - 2 ; case 5
	.short _021E4F22 - _021E4E32 - 2 ; case 6
	.short _021E4F38 - _021E4E32 - 2 ; case 7
_021E4E42:
	mov r0, #4
	mov r1, #0x10
	bl sub_02018144
	str r0, [r4, #0xc]
	mov r2, #0x10
	mov r1, #0
_021E4E50:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E4E50
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4E7A:
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r2, r1, #0
	add r3, r4, #4
	bl ov5_021DDC44
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4E92:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E4F66
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4EA0:
	mov r0, #3
	mov r1, #0xf
	bl ov5_021E22B0
	mov r2, #0
	str r0, [r5, #0]
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _021E4F6C ; =0x021F9DDE
	str r2, [r5, #8]
	ldrh r0, [r0, r1]
	add sp, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4EC4:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E4F66
	ldr r2, [r5, #8]
	mov r1, #0xc
	ldr r3, _021E4F70 ; =0x021F9DD4
	mul r1, r2
	ldr r0, [r4, #0x10]
	add r1, r3, r1
	bl ov5_021E4DE0
	ldr r0, [r5, #8]
	add r2, r0, #1
	str r2, [r5, #8]
	cmp r2, #0x10
	blo _021E4EF0
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4EF0:
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _021E4F6C ; =0x021F9DDE
	add sp, #0xc
	ldrh r0, [r0, r1]
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, pc}
_021E4F00:
	mov r0, #0xa
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021E4F74 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4F22:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E4F66
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4F38:
	ldr r1, _021E4F74 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	add r0, r5, #0
	bl ov5_021E2310
	ldr r0, _021E4F78 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E4F56
	mov r0, #1
	str r0, [r1, #0]
_021E4F56:
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
	ldr r1, _021E4F74 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
_021E4F66:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E4F6C: .word 0x021F9DDE
_021E4F70: .word 0x021F9DD4
_021E4F74: .word 0x00007FFF
_021E4F78: .word 0x04000050
	thumb_func_end ov5_021E4E14

	thumb_func_start ov5_021E4F7C
ov5_021E4F7C: ; 0x021E4F7C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #9
	bhi _021E4FFE
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E4F98: ; jump table
	.short _021E4FAC - _021E4F98 - 2 ; case 0
	.short _021E4FE0 - _021E4F98 - 2 ; case 1
	.short _021E4FF8 - _021E4F98 - 2 ; case 2
	.short _021E5008 - _021E4F98 - 2 ; case 3
	.short _021E5036 - _021E4F98 - 2 ; case 4
	.short _021E5060 - _021E4F98 - 2 ; case 5
	.short _021E508E - _021E4F98 - 2 ; case 6
	.short _021E50B0 - _021E4F98 - 2 ; case 7
	.short _021E50D2 - _021E4F98 - 2 ; case 8
	.short _021E50E8 - _021E4F98 - 2 ; case 9
_021E4FAC:
	mov r0, #4
	mov r1, #0x38
	bl sub_02018144
	mov r1, #0
	mov r2, #0x38
	str r0, [r4, #0xc]
	bl memset
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4FE0:
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r2, r1, #0
	add r3, r4, #4
	bl ov5_021DDC44
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E4FF8:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021E5000
_021E4FFE:
	b _021E5116
_021E5000:
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E5008:
	mov r0, #5
	mov r1, #0xd
	bl ov5_021E22B0
	str r0, [r5, #0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	bl sub_02020A88
	mov r2, #1
	add r1, r0, #0
	add r5, #8
	lsl r2, r2, #8
	add r0, r5, #0
	add r2, r1, r2
	mov r3, #0x28
	bl ov5_021DDD80
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E5036:
	add r0, r5, #0
	add r0, #8
	bl ov5_021DDD90
	add r6, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0x10
	ldr r1, [r1, #0x24]
	lsr r0, r0, #0x10
	bl sub_02020910
	cmp r6, #1
	bne _021E5116
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #5
	str r0, [r5, #0x34]
	pop {r3, r4, r5, r6, pc}
_021E5060:
	ldr r0, [r5, #0x34]
	sub r0, r0, #1
	str r0, [r5, #0x34]
	bpl _021E5116
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	bl sub_02020A90
	mov r3, #8
	str r3, [sp]
	ldr r2, _021E511C ; =0x0092E000
	add r1, r0, #0
	add r5, #0x1c
	add r0, r5, #0
	sub r2, r1, r2
	lsl r3, r3, #8
	bl ov5_021DDE14
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E508E:
	add r0, r5, #0
	add r0, #0x1c
	bl ov5_021DDE74
	ldr r1, [r4, #0x10]
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, [r1, #0x24]
	bl sub_02020A50
	cmp r6, #1
	bne _021E5116
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E50B0:
	mov r0, #0x3c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021E5120 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E50D2:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E5116
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021E50E8:
	ldr r1, _021E5120 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	add r0, r5, #0
	bl ov5_021E2310
	ldr r0, _021E5124 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E5106
	mov r0, #1
	str r0, [r1, #0]
_021E5106:
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021DDC28
	ldr r1, _021E5120 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
_021E5116:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E511C: .word 0x0092E000
_021E5120: .word 0x00007FFF
_021E5124: .word 0x04000050
	thumb_func_end ov5_021E4F7C

	thumb_func_start ov5_021E5128
ov5_021E5128: ; 0x021E5128
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r6, #0
	strh r6, [r5]
	add r4, r5, #0
	ldr r7, [sp, #0x28]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	strh r6, [r5, #2]
	add r4, #0x14
_021E5140:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r3, r7, #0
	bl ov5_021DE62C
	mov r1, #0
	str r0, [r5, #4]
	bl sub_02021CAC
	cmp r6, #3
	beq _021E517E
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021D6C
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, r4, #0
	lsr r2, r1, #1
	mov r3, #6
	bl ov5_021DDDBC
	b _021E518C
_021E517E:
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #6
	bl ov5_021DDDBC
_021E518C:
	add r6, r6, #1
	add r5, r5, #4
	add r4, #0x14
	cmp r6, #4
	blt _021E5140
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E5128

	thumb_func_start ov5_021E519C
ov5_021E519C: ; 0x021E519C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E51A2:
	ldr r0, [r5, #4]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E51A2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E519C

	thumb_func_start ov5_021E51B4
ov5_021E51B4: ; 0x021E51B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	mov r0, #1
	mov r1, #2
	str r0, [sp]
	ldrsh r0, [r7, r1]
	cmp r0, #4
	bge _021E51E2
	mov r0, #0
	str r0, [sp]
	ldrsh r0, [r7, r0]
	sub r0, r0, #1
	strh r0, [r7]
	ldr r0, [sp]
	ldrsh r0, [r7, r0]
	cmp r0, #0
	bgt _021E51E2
	mov r0, #3
	strh r0, [r7]
	ldrsh r0, [r7, r1]
	add r0, r0, #1
	strh r0, [r7, #2]
_021E51E2:
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _021E523A
	add r6, r7, #0
	add r6, #0x14
	add r4, r7, #0
	add r5, r7, #0
_021E51F6:
	add r0, r6, #0
	bl ov5_021DDDCC
	ldr r1, [r4, #0x14]
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021DE660
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl sub_02021C70
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021E5224
	mov r0, #0
	str r0, [sp]
_021E5224:
	ldr r0, [sp, #4]
	add r6, #0x14
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #4]
	add r4, #0x14
	add r5, r5, #4
	cmp r0, r1
	blt _021E51F6
_021E523A:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E51B4

	thumb_func_start ov5_021E5240
ov5_021E5240: ; 0x021E5240
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r2, _021E52A4 ; =0x00000167
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #0x80
	add r1, r5, #0
	bl sub_02023790
	add r7, r0, #0
	mov r0, #0x80
	add r1, r5, #0
	bl sub_02023790
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B1B8
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200BA08
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r5, #0
	bl sub_020237BC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E52A4: .word 0x00000167
	thumb_func_end ov5_021E5240

	thumb_func_start ov5_021E52A8
ov5_021E52A8: ; 0x021E52A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #0]
	add r6, r2, #0
	ldr r4, [r5, #0xc]
	cmp r1, #0xf
	bls _021E52BC
	b _021E5718
_021E52BC:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E52C8: ; jump table
	.short _021E52E8 - _021E52C8 - 2 ; case 0
	.short _021E5434 - _021E52C8 - 2 ; case 1
	.short _021E544A - _021E52C8 - 2 ; case 2
	.short _021E5456 - _021E52C8 - 2 ; case 3
	.short _021E54A4 - _021E52C8 - 2 ; case 4
	.short _021E54C4 - _021E52C8 - 2 ; case 5
	.short _021E54F2 - _021E52C8 - 2 ; case 6
	.short _021E553E - _021E52C8 - 2 ; case 7
	.short _021E556C - _021E52C8 - 2 ; case 8
	.short _021E558A - _021E52C8 - 2 ; case 9
	.short _021E55FE - _021E52C8 - 2 ; case 10
	.short _021E5614 - _021E52C8 - 2 ; case 11
	.short _021E563A - _021E52C8 - 2 ; case 12
	.short _021E5652 - _021E52C8 - 2 ; case 13
	.short _021E5672 - _021E52C8 - 2 ; case 14
	.short _021E5682 - _021E52C8 - 2 ; case 15
_021E52E8:
	mov r1, #0xa6
	add r0, r7, #0
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xa6
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r4, [r5, #0xc]
	mov r0, #0x20
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x20]
	mov r1, #0xb
	mov r2, #0
	mov r3, #0x40
	bl sub_02007130
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r1, #0x9f
	lsl r1, r1, #2
	str r2, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	add r1, r4, r1
	ldr r0, [r0, #8]
	mov r3, #0
	bl sub_0201A7E8
	mov r0, #0x9f
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r6, #4]
	add r1, r7, #0
	bl ov5_021E5240
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp]
	ldr r0, _021E5688 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r2, [sp, #0x14]
	add r0, r4, r0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x44
	mov r1, #8
	mov r2, #3
	bl ov5_021DE47C
	mov r0, #1
	str r0, [sp]
	ldrb r0, [r6, #0xd]
	mov r2, #6
	add r1, r4, #0
	str r0, [sp, #4]
	ldrb r0, [r6, #0xe]
	lsl r2, r2, #6
	add r1, #0x44
	str r0, [sp, #8]
	ldrb r0, [r6, #0xf]
	add r2, r4, r2
	str r0, [sp, #0xc]
	ldr r0, _021E568C ; =0x000927C0
	str r0, [sp, #0x10]
	ldrb r3, [r6, #0xc]
	ldr r0, [r5, #0x20]
	bl ov5_021DE4CC
	mov r0, #1
	str r0, [sp]
	mov r0, #0x34
	str r0, [sp, #4]
	mov r0, #0x35
	str r0, [sp, #8]
	mov r0, #0x36
	str r0, [sp, #0xc]
	ldr r0, _021E5690 ; =0x000927C1
	mov r2, #0x6d
	str r0, [sp, #0x10]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r0, [r5, #0x20]
	add r1, #0x44
	add r2, r4, r2
	mov r3, #0x33
	bl ov5_021DE4CC
	mov r0, #0
	str r0, [sp]
	mov r1, #6
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #0x11
	mov r3, #0x42
	add r0, #0x44
	add r1, r4, r1
	lsl r2, r2, #0x10
	lsl r3, r3, #0xc
	bl ov5_021DE62C
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x4a
	mov r2, #0x7b
	lsl r0, r0, #0xc
	str r0, [sp]
	lsl r2, r2, #2
	add r0, r4, r2
	add r1, r4, #0
	sub r2, #0x38
	mov r3, #0x12
	add r1, #0x44
	add r2, r4, r2
	lsl r3, r3, #0xe
	str r7, [sp, #4]
	bl ov5_021E5128
	mov r0, #0
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldrh r2, [r6, #8]
	ldr r0, [r4, r0]
	add r1, r7, #0
	mov r3, #0xe
	bl ov5_021DE5D0
	bl ov5_021DECEC
	str r0, [r4, #0x40]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E5434:
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r2, r1, #0
	add r3, r5, #4
	bl ov5_021DDC44
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E544A:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E54AC
	add r0, r1, #1
	str r0, [r5, #0]
	b _021E5718
_021E5456:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldrb r1, [r6, #0x12]
	ldrb r2, [r6, #0x11]
	ldrb r3, [r6, #0x10]
	ldr r0, [r5, #0x20]
	bl ov5_021DE3D0
	mov r0, #0xa3
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	mov r0, #0x17
	str r0, [sp, #8]
	ldr r1, [r4, #0x40]
	add r0, r5, #0
	mov r2, #6
	mov r3, #8
	bl ov5_021DED20
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E54A4:
	bl ov5_021DDD7C
	cmp r0, #0
	bne _021E54AE
_021E54AC:
	b _021E5718
_021E54AE:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0x40]
	bl ov5_021DED04
	mov r0, #0xa5
	mov r1, #0xa
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021E5718
_021E54C4:
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bge _021E55B2
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x7b
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021E51B4
	cmp r0, #1
	bne _021E55B2
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E54F2:
	mov r0, #4
	str r0, [sp]
	mov r1, #0x11
	ldr r2, [r6, #0]
	ldr r3, _021E5694 ; =0xFFFC0000
	add r0, r4, #0
	lsl r1, r1, #0x10
	bl ov5_021DDE14
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021E80
	mov r2, #0x42
	ldr r1, [r4, #0]
	add r0, sp, #0x1c
	lsl r2, r2, #0xc
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E553E:
	add r0, r4, #0
	bl ov5_021DDE74
	mov r2, #0x42
	add r6, r0, #0
	ldr r1, [r4, #0]
	add r0, sp, #0x1c
	lsl r2, r2, #0xc
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	cmp r6, #1
	bne _021E55B2
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E556C:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	mov r2, #0x10
	mov r3, #3
	bl ov5_021DDD80
	mov r0, #0xa5
	mov r1, #0xa
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E558A:
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bge _021E55B2
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDD90
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DEF8C
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _021E55B4
_021E55B2:
	b _021E5718
_021E55B4:
	mov r3, #0
	str r3, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldrh r2, [r6, #8]
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl ov5_021DE5D0
	mov r0, #0xd
	mvn r0, r0
	mov r1, #0x21
	mov r2, #1
	bl sub_0200AB4C
	ldr r3, [r4, #0]
	ldr r0, [r5, #0x10]
	asr r3, r3, #0xc
	sub r3, #0x5c
	ldr r0, [r0, #8]
	mov r1, #2
	mov r2, #0
	neg r3, r3
	bl sub_0201C63C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E55FE:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0x10
	mov r2, #0
	mov r3, #3
	bl ov5_021DDD80
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E5614:
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDD90
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DEF8C
	cmp r6, #1
	bne _021E5718
	ldr r0, [r5, #0]
	mov r1, #0x1a
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0xa5
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021E5718
_021E563A:
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bge _021E5718
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E5652:
	mov r0, #0xf
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021E5698 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E5672:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E5718
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021E5718
_021E5682:
	ldr r1, _021E5698 ; =0x00007FFF
	b _021E569C
	nop
_021E5688: .word 0x00010200
_021E568C: .word 0x000927C0
_021E5690: .word 0x000927C1
_021E5694: .word 0xFFFC0000
_021E5698: .word 0x00007FFF
_021E569C:
	mov r0, #1
	bl sub_0200F344
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021E56AC
	mov r0, #1
	str r0, [r1, #0]
_021E56AC:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	mov r0, #0x7b
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov5_021E519C
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	add r0, #0x44
	add r1, r4, r1
	bl ov5_021DE5A4
	mov r1, #0x6d
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x44
	add r1, r4, r1
	bl ov5_021DE5A4
	add r0, r4, #0
	add r0, #0x44
	bl ov5_021DE4AC
	mov r0, #0x9f
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021E575C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	mov r2, #1
	bl sub_0200AB4C
	ldr r0, [r5, #0x10]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5718:
	mov r3, #0xa3
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	cmp r0, #1
	bne _021E5748
	ldr r0, [r5, #0x10]
	add r3, r3, #4
	ldr r0, [r0, #8]
	ldr r3, [r4, r3]
	mov r1, #3
	mov r2, #0
	bl sub_0201C63C
	mov r3, #0x29
	lsl r3, r3, #4
	ldr r0, [r4, r3]
	add r0, #0x1e
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x17
	sub r1, r1, r2
	mov r0, #0x17
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, r3]
_021E5748:
	ldr r0, [r5, #0]
	cmp r0, #0xf
	beq _021E5754
	ldr r0, [r4, #0x44]
	bl sub_020219F8
_021E5754:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E575C: .word 0xFFFF1FFF
	thumb_func_end ov5_021E52A8

	thumb_func_start ov5_021E5760
ov5_021E5760: ; 0x021E5760
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E5780 ; =0x021F9D34
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E52A8
	cmp r0, #1
	bne _021E577C
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E577C:
	pop {r3, r4, r5, pc}
	nop
_021E5780: .word 0x021F9D34
	thumb_func_end ov5_021E5760

	thumb_func_start ov5_021E5784
ov5_021E5784: ; 0x021E5784
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E57A4 ; =0x021F9D48
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E52A8
	cmp r0, #1
	bne _021E57A0
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E57A0:
	pop {r3, r4, r5, pc}
	nop
_021E57A4: .word 0x021F9D48
	thumb_func_end ov5_021E5784

	thumb_func_start ov5_021E57A8
ov5_021E57A8: ; 0x021E57A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E57C8 ; =0x021F9D5C
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E52A8
	cmp r0, #1
	bne _021E57C4
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E57C4:
	pop {r3, r4, r5, pc}
	nop
_021E57C8: .word 0x021F9D5C
	thumb_func_end ov5_021E57A8

	thumb_func_start ov5_021E57CC
ov5_021E57CC: ; 0x021E57CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E57EC ; =0x021F9D70
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E52A8
	cmp r0, #1
	bne _021E57E8
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E57E8:
	pop {r3, r4, r5, pc}
	nop
_021E57EC: .word 0x021F9D70
	thumb_func_end ov5_021E57CC

	thumb_func_start ov5_021E57F0
ov5_021E57F0: ; 0x021E57F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E5810 ; =0x021F9D84
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E52A8
	cmp r0, #1
	bne _021E580C
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E580C:
	pop {r3, r4, r5, pc}
	nop
_021E5810: .word 0x021F9D84
	thumb_func_end ov5_021E57F0

	thumb_func_start ov5_021E5814
ov5_021E5814: ; 0x021E5814
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E5834 ; =0x021F9D98
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E52A8
	cmp r0, #1
	bne _021E5830
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E5830:
	pop {r3, r4, r5, pc}
	nop
_021E5834: .word 0x021F9D98
	thumb_func_end ov5_021E5814

	thumb_func_start ov5_021E5838
ov5_021E5838: ; 0x021E5838
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E5858 ; =0x021F9DAC
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E52A8
	cmp r0, #1
	bne _021E5854
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E5854:
	pop {r3, r4, r5, pc}
	nop
_021E5858: .word 0x021F9DAC
	thumb_func_end ov5_021E5838

	thumb_func_start ov5_021E585C
ov5_021E585C: ; 0x021E585C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E587C ; =0x021F9DC0
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E52A8
	cmp r0, #1
	bne _021E5878
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E5878:
	pop {r3, r4, r5, pc}
	nop
_021E587C: .word 0x021F9DC0
	thumb_func_end ov5_021E585C

	thumb_func_start ov5_021E5880
ov5_021E5880: ; 0x021E5880
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021E5880

	thumb_func_start ov5_021E5890
ov5_021E5890: ; 0x021E5890
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	ldr r0, [r6, #0]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r4, [r6, #0xc]
	cmp r0, #0xe
	bls _021E58A6
	bl _021E6140
_021E58A6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E58B2: ; jump table
	.short _021E58D0 - _021E58B2 - 2 ; case 0
	.short _021E59D2 - _021E58B2 - 2 ; case 1
	.short _021E5AD2 - _021E58B2 - 2 ; case 2
	.short _021E5AEC - _021E58B2 - 2 ; case 3
	.short _021E5B08 - _021E58B2 - 2 ; case 4
	.short _021E5B32 - _021E58B2 - 2 ; case 5
	.short _021E5C9C - _021E58B2 - 2 ; case 6
	.short _021E5D72 - _021E58B2 - 2 ; case 7
	.short _021E5DA4 - _021E58B2 - 2 ; case 8
	.short _021E5E26 - _021E58B2 - 2 ; case 9
	.short _021E5E4A - _021E58B2 - 2 ; case 10
	.short _021E5E6E - _021E58B2 - 2 ; case 11
	.short _021E5EAC - _021E58B2 - 2 ; case 12
	.short _021E6026 - _021E58B2 - 2 ; case 13
	.short _021E60CC - _021E58B2 - 2 ; case 14
_021E58D0:
	add r0, r1, #0
	mov r1, #0x31
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x31
	str r0, [r6, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	ldr r4, [r6, #0xc]
	mov r1, #0xa
	add r0, r4, #0
	add r0, #0x5c
	mov r2, #4
	bl ov5_021DE47C
	ldr r0, [r6, #0x10]
	bl ov5_021E5880
	cmp r0, #0
	bne _021E5928
	mov r0, #1
	str r0, [sp]
	mov r0, #0x94
	str r0, [sp, #4]
	mov r0, #0x95
	str r0, [sp, #8]
	mov r0, #0x96
	str r0, [sp, #0xc]
	ldr r0, _021E5C7C ; =0x000927C0
	mov r2, #0x66
	str r0, [sp, #0x10]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r0, [r6, #0x20]
	add r1, #0x5c
	add r2, r4, r2
	mov r3, #0x93
	bl ov5_021DE4CC
	mov r1, #0
	b _021E594E
_021E5928:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x98
	str r0, [sp, #4]
	mov r0, #0x99
	str r0, [sp, #8]
	mov r2, #0x9a
	str r2, [sp, #0xc]
	ldr r0, _021E5C7C ; =0x000927C0
	add r1, r4, #0
	str r0, [sp, #0x10]
	add r2, #0xfe
	ldr r0, [r6, #0x20]
	add r1, #0x5c
	add r2, r4, r2
	mov r3, #0x97
	bl ov5_021DE4CC
	mov r1, #1
_021E594E:
	mov r0, #0xc1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [sp, #0x18]
	mov r2, #0x73
	ldrh r3, [r0]
	mov r0, #1
	add r1, r4, #0
	str r0, [sp]
	add r0, r3, #1
	str r0, [sp, #4]
	add r0, r3, #2
	str r0, [sp, #8]
	add r0, r3, #3
	str r0, [sp, #0xc]
	ldr r0, _021E5C80 ; =0x000927C1
	lsl r2, r2, #2
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	add r1, #0x5c
	add r2, r4, r2
	bl ov5_021DE4CC
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x29
	str r0, [sp, #8]
	mov r0, #0x2a
	str r0, [sp, #0xc]
	ldr r0, _021E5C84 ; =0x000927C2
	mov r2, #2
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x18]
	add r1, r4, #0
	lsl r2, r2, #8
	ldrb r3, [r3, #2]
	ldr r0, [r6, #0x20]
	add r1, #0x5c
	add r2, r4, r2
	bl ov5_021DE4CC
	mov r0, #1
	str r0, [sp]
	mov r0, #0x34
	str r0, [sp, #4]
	mov r0, #0x35
	str r0, [sp, #8]
	mov r0, #0x36
	str r0, [sp, #0xc]
	ldr r0, _021E5C88 ; =0x000927C3
	mov r2, #0x8d
	str r0, [sp, #0x10]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r0, [r6, #0x20]
	add r1, #0x5c
	add r2, r4, r2
	mov r3, #0x33
	bl ov5_021DE4CC
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E59D2:
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, sp, #0x2c
	add r2, r1, #0
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x24]
	add r0, r4, #0
	str r0, [sp, #0x28]
	add r0, #0x5c
	mov r7, #0
	add r5, r4, #0
	str r0, [sp, #0x28]
_021E59F6:
	cmp r7, #3
	bge _021E5A02
	mov r0, #0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	b _021E5A12
_021E5A02:
	sub r1, r7, #1
	mov r0, #0x34
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x24]
	add r1, r0, r2
	mov r0, #1
	str r0, [sp, #0x20]
_021E5A12:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [sp, #0x28]
	add r3, r2, #0
	bl ov5_021DE62C
	mov r1, #0x9a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x20]
	bl sub_02021D6C
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r0, #0x34
	add r5, r5, #4
	str r0, [sp, #0x1c]
	cmp r7, #4
	blt _021E59F6
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021E5A74
	mov r2, #0
	str r2, [sp]
	sub r0, #0x9c
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x14]
	mov r3, #0xe
	bl ov5_021DE5D0
	b _021E5A86
_021E5A74:
	mov r1, #0
	str r1, [sp]
	sub r0, #0x9c
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x14]
	mov r2, #1
	mov r3, #0xe
	bl ov5_021DE5D0
_021E5A86:
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x18]
	mov r0, #0x9b
	lsl r0, r0, #2
	ldrh r2, [r2, #4]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x14]
	mov r3, #0xe
	bl ov5_021DE5D0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #0x29
	add r1, r4, #0
	mov r3, #2
	lsl r2, r2, #4
	str r0, [sp, #4]
	add r0, r4, r2
	sub r2, #0x5c
	add r1, #0x5c
	add r2, r4, r2
	lsl r3, r3, #0x12
	bl ov5_021E5128
	ldr r0, [r6, #0x10]
	bl ov5_021DEFA0
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5AD2:
	mov r1, #0x10
	mov r0, #1
	add r2, r1, #0
	add r3, r6, #4
	str r0, [sp]
	bl ov5_021DDC44
	mov r0, #0
	str r0, [r6, #8]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5AEC:
	ldr r0, [r6, #8]
	add r0, r0, #1
	str r0, [r6, #8]
	cmp r0, #8
	bne _021E5AFA
	bl ov5_021DF038
_021E5AFA:
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _021E5B10
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5B08:
	bl ov5_021DF054
	cmp r0, #1
	beq _021E5B12
_021E5B10:
	b _021E6140
_021E5B12:
	ldr r0, [r6, #0x20]
	mov r1, #0x6b
	bl ov5_021DF0CC
	mov r0, #8
	str r0, [sp]
	ldr r0, _021E5C8C ; =0x04000050
	mov r1, #1
	mov r2, #0x1e
	mov r3, #0
	bl G2x_SetBlendAlpha_
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5B32:
	mov r0, #6
	mov r2, #0xe
	mov r3, #5
	str r0, [sp]
	ldr r1, _021E5C90 ; =0xFFF80000
	add r0, r4, #0
	lsl r2, r2, #0xe
	lsl r3, r3, #0x10
	bl ov5_021DDE14
	mov r2, #0x17
	ldr r1, [r4, #0]
	add r0, sp, #0x38
	lsl r2, r2, #0xe
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r1, #6
	add r0, r4, #0
	mov r2, #0x32
	str r1, [sp]
	ldr r3, _021E5C94 ; =0xFFFB0000
	add r0, #0x30
	lsl r1, r1, #0x12
	lsl r2, r2, #0xe
	bl ov5_021DDE14
	mov r2, #0x17
	ldr r1, [r4, #0x30]
	add r0, sp, #0x38
	lsl r2, r2, #0xe
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	sub r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #0xb
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	mov r2, #0
	mov r3, #0x40
	bl sub_02007130
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r1, #0xbd
	lsl r1, r1, #2
	str r2, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x10]
	add r1, r4, r1
	ldr r0, [r0, #8]
	mov r3, #0x15
	bl sub_0201A7E8
	mov r0, #0xbd
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldrh r0, [r0, #6]
	bl ov5_021E5240
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	ldr r0, _021E5C98 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xbd
	lsl r0, r0, #2
	add r0, r4, r0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #3
	str r0, [r6, #4]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
	; .align 2, 0
_021E5C7C: .word 0x000927C0
_021E5C80: .word 0x000927C1
_021E5C84: .word 0x000927C2
_021E5C88: .word 0x000927C3
_021E5C8C: .word 0x04000050
_021E5C90: .word 0xFFF80000
_021E5C94: .word 0xFFFB0000
_021E5C98: .word 0x00010200
_021E5C9C:
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021E5CC0
	sub r0, r0, #1
	str r0, [r6, #4]
	bne _021E5CCA
	mov r0, #3
	bl ov5_021DF17C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _021E5CCA
_021E5CC0:
	mov r0, #0x29
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov5_021E51B4
_021E5CCA:
	add r0, r4, #0
	bl ov5_021DDE74
	mov r2, #0x17
	ldr r1, [r4, #0]
	add r0, sp, #0x38
	lsl r2, r2, #0xe
	mov r3, #0
	bl ov5_021DE660
	add r5, sp, #0x38
	mov r2, #0x9e
	lsl r2, r2, #2
	add r3, r4, r2
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	sub r2, #0x10
	str r0, [r3, #0]
	ldr r0, [r4, r2]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	add r0, r4, #0
	add r0, #0x30
	bl ov5_021DDE74
	mov r2, #0x17
	add r7, r0, #0
	ldr r1, [r4, #0x30]
	add r0, sp, #0x38
	lsl r2, r2, #0xe
	mov r3, #0
	bl ov5_021DE660
	add r5, sp, #0x38
	mov r2, #0xa1
	lsl r2, r2, #2
	add r3, r4, r2
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	sub r2, #0x18
	str r0, [r3, #0]
	ldr r0, [r4, r2]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	sub r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	cmp r7, #1
	bne _021E5E60
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5D72:
	mov r0, #0x29
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov5_021E51B4
	add r5, r0, #0
	bl ov5_021DF208
	cmp r5, #0
	beq _021E5E60
	cmp r0, #0
	beq _021E5E60
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	mov r2, #0x10
	mov r3, #3
	bl ov5_021DDD80
	bl ov5_021DF224
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5DA4:
	add r0, r4, #0
	add r0, #0x48
	bl ov5_021DDD90
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl ov5_021DEF8C
	cmp r5, #1
	bne _021E5E60
	mov r3, #0
	mov r2, #0x9a
	str r3, [sp]
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	add r2, #0x9c
	ldr r1, [sp, #0x14]
	ldr r2, [r4, r2]
	bl ov5_021DE5D0
	mov r3, #0
	mov r0, #0x9b
	ldr r2, [sp, #0x18]
	str r3, [sp]
	lsl r0, r0, #2
	ldrh r2, [r2, #4]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x14]
	bl ov5_021DE5D0
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x27
	lsl r0, r0, #4
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x9d
	lsl r0, r0, #2
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r6, #0x20]
	mov r1, #0x6c
	bl ov5_021DF0CC
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5E26:
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0x10
	mov r2, #0
	mov r3, #6
	bl ov5_021DDD80
	mov r0, #4
	bl ov5_021DF17C
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5E4A:
	add r0, r4, #0
	add r0, #0x48
	bl ov5_021DDD90
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl ov5_021DEF8C
	cmp r5, #1
	beq _021E5E62
_021E5E60:
	b _021E6140
_021E5E62:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #8
	str r0, [r6, #4]
	b _021E6140
_021E5E6E:
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021E5E7A
	sub r0, r0, #1
	str r0, [r6, #4]
	b _021E6140
_021E5E7A:
	add r0, r2, #0
	ldrb r0, [r0, #3]
	mov r1, #0
	ldr r2, _021E616C ; =0xFFFFE000
	str r0, [sp]
	add r0, r4, #0
	add r3, r1, #0
	bl ov5_021DDE14
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldrb r0, [r0, #3]
	ldr r2, _021E616C ; =0xFFFFE000
	add r3, r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDE14
	mov r0, #0
	str r0, [r6, #4]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E5EAC:
	ldr r0, [r6, #4]
	add r0, r0, #1
	str r0, [r6, #4]
	add r0, r4, #0
	bl ov5_021DDE74
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDE74
	ldr r1, [r6, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	add r0, sp, #0x38
	bne _021E5EF4
	mov r2, #0x9e
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	ldr r1, [r4, #0]
	add r2, r2, #4
	add r1, r3, r1
	ldr r3, [r4, r2]
	ldr r2, [r4, #0x18]
	add r2, r3, r2
	mov r3, #0
	bl ov5_021DE660
	b _021E5F0C
_021E5EF4:
	mov r2, #0x9e
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	ldr r1, [r4, #0]
	add r2, r2, #4
	sub r1, r3, r1
	ldr r3, [r4, r2]
	ldr r2, [r4, #0x18]
	sub r2, r3, r2
	mov r3, #0
	bl ov5_021DE660
_021E5F0C:
	cmp r5, #0
	beq _021E5F20
	mov r0, #0x9e
	lsl r0, r0, #2
	add r3, sp, #0x38
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_021E5F20:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	ldr r1, [r6, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	add r0, sp, #0x38
	bne _021E5F7C
	mov r2, #0xa1
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	ldr r1, [r4, #0]
	add r2, r2, #4
	sub r1, r3, r1
	ldr r3, [r4, r2]
	ldr r2, [r4, #0x18]
	sub r2, r3, r2
	mov r3, #0
	bl ov5_021DE660
	b _021E5F94
_021E5F7C:
	mov r2, #0xa1
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	ldr r1, [r4, #0]
	add r2, r2, #4
	add r1, r3, r1
	ldr r3, [r4, r2]
	ldr r2, [r4, #0x18]
	add r2, r3, r2
	mov r3, #0
	bl ov5_021DE660
_021E5F94:
	cmp r5, #0
	beq _021E5FA8
	mov r0, #0xa1
	lsl r0, r0, #2
	add r3, sp, #0x38
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_021E5FA8:
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	sub r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	cmp r5, #0
	bne _021E5FD8
	b _021E6140
_021E5FD8:
	ldr r0, [r6, #0]
	mov r1, #0
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #4
	bl sub_0201FF0C
	mov r2, #3
	mov r0, #0x10
	lsl r2, r2, #0x12
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #3
	bl ov5_021DDE14
	mov r0, #0x10
	mov r2, #3
	str r0, [sp]
	add r0, r4, #0
	lsl r2, r2, #0x12
	add r0, #0x18
	mov r1, #0
	lsr r3, r2, #3
	bl ov5_021DDE14
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021E6170 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	b _021E6140
_021E6026:
	add r0, r4, #0
	bl ov5_021DDE74
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDE74
	mov r2, #0x9e
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	ldr r1, [r4, #0]
	add r2, r2, #4
	sub r1, r3, r1
	ldr r3, [r4, r2]
	ldr r2, [r4, #0x18]
	add r0, sp, #0x38
	sub r2, r3, r2
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r2, #0xa1
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	ldr r1, [r4, #0]
	add r2, r2, #4
	add r1, r3, r1
	ldr r3, [r4, r2]
	ldr r2, [r4, #0x18]
	add r0, sp, #0x38
	add r2, r3, r2
	mov r3, #0
	bl ov5_021DE660
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsl r0, r0, #2
	sub r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl sub_02021C50
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E6140
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _021E6140
_021E60CC:
	ldr r1, _021E6170 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _021E60DE
	mov r0, #1
	str r0, [r1, #0]
_021E60DE:
	mov r0, #0x29
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov5_021E519C
	mov r0, #0xbd
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r7, #0x9a
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021E60FA:
	ldr r0, [r5, r7]
	bl sub_02021BD4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _021E60FA
	mov r0, #0x66
	lsl r0, r0, #2
	add r7, r4, #0
	mov r6, #0
	add r5, r4, r0
	add r7, #0x5c
_021E6114:
	add r0, r7, #0
	add r1, r5, #0
	bl ov5_021DE5A4
	add r6, r6, #1
	add r5, #0x34
	cmp r6, #4
	blt _021E6114
	add r4, #0x5c
	add r0, r4, #0
	bl ov5_021DE4AC
	bl ov5_021DF224
	bl ov5_021DF084
	ldr r0, _021E6174 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E6140:
	ldr r0, [r6, #0]
	cmp r0, #0xe
	beq _021E6166
	ldr r0, [r4, #0x5c]
	bl sub_020219F8
	ldr r0, [r6, #0]
	cmp r0, #4
	ble _021E6166
	bl sub_020241B4
	bl ov5_021DF1CC
	bl ov5_021DF070
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_021E6166:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E616C: .word 0xFFFFE000
_021E6170: .word 0x00007FFF
_021E6174: .word 0x04000050
	thumb_func_end ov5_021E5890

	thumb_func_start ov5_021E6178
ov5_021E6178: ; 0x021E6178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E6198 ; =0x021F9D0C
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E5890
	cmp r0, #1
	bne _021E6194
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E6194:
	pop {r3, r4, r5, pc}
	nop
_021E6198: .word 0x021F9D0C
	thumb_func_end ov5_021E6178

	thumb_func_start ov5_021E619C
ov5_021E619C: ; 0x021E619C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E61BC ; =0x021F9D14
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E5890
	cmp r0, #1
	bne _021E61B8
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E61B8:
	pop {r3, r4, r5, pc}
	nop
_021E61BC: .word 0x021F9D14
	thumb_func_end ov5_021E619C

	thumb_func_start ov5_021E61C0
ov5_021E61C0: ; 0x021E61C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E61E0 ; =0x021F9D1C
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E5890
	cmp r0, #1
	bne _021E61DC
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E61DC:
	pop {r3, r4, r5, pc}
	nop
_021E61E0: .word 0x021F9D1C
	thumb_func_end ov5_021E61C0

	thumb_func_start ov5_021E61E4
ov5_021E61E4: ; 0x021E61E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E6204 ; =0x021F9D24
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E5890
	cmp r0, #1
	bne _021E6200
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E6200:
	pop {r3, r4, r5, pc}
	nop
_021E6204: .word 0x021F9D24
	thumb_func_end ov5_021E61E4

	thumb_func_start ov5_021E6208
ov5_021E6208: ; 0x021E6208
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021E6228 ; =0x021F9D2C
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E5890
	cmp r0, #1
	bne _021E6224
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DDC28
_021E6224:
	pop {r3, r4, r5, pc}
	nop
_021E6228: .word 0x021F9D2C
	thumb_func_end ov5_021E6208

	.rodata


	.global Unk_ov5_021F9D0C
Unk_ov5_021F9D0C: ; 0x021F9D0C
	.incbin "incbin/overlay5_rodata.bin", 0x13F8, 0x1420 - 0x13F8

	.global Unk_ov5_021F9D34
Unk_ov5_021F9D34: ; 0x021F9D34
	.incbin "incbin/overlay5_rodata.bin", 0x1420, 0x14C0 - 0x1420

	.global Unk_ov5_021F9DD4
Unk_ov5_021F9DD4: ; 0x021F9DD4
	.incbin "incbin/overlay5_rodata.bin", 0x14C0, 0x1580 - 0x14C0

	.global Unk_ov5_021F9E94
Unk_ov5_021F9E94: ; 0x021F9E94
	.incbin "incbin/overlay5_rodata.bin", 0x1580, 0xC0

