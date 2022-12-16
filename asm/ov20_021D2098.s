	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov20_021D2098
ov20_021D2098: ; 0x021D2098
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #0x7d
	add r5, r0, #0
	mov r0, #0x23
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	beq _021D2118
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	str r5, [r4, #0x18]
	str r6, [r4, #0x1c]
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x23
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r4, #0
	mov r0, #0x80
	add r1, #0x28
	mov r2, #0x23
	bl sub_020095C4
	str r0, [r4, #0x24]
	mov r0, #0x23
	bl sub_02018340
	str r0, [r4, #0x20]
	ldr r0, _021D2120 ; =ov20_021D2178
	add r1, r4, #0
	mov r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0]
	ldr r0, _021D2124 ; =ov20_021D217C
	add r1, r4, #0
	mov r2, #1
	bl ov20_021D2170
	mov r1, #0
	str r0, [r4, #4]
	add r2, r4, #0
	add r0, r1, #0
_021D210E:
	add r1, r1, #1
	str r0, [r2, #8]
	add r2, r2, #4
	cmp r1, #4
	blt _021D210E
_021D2118:
	add r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D2120: .word ov20_021D2178
_021D2124: .word ov20_021D217C
	thumb_func_end ov20_021D2098

	thumb_func_start ov20_021D2128
ov20_021D2128: ; 0x021D2128
	push {r4, r5, r6, lr}
	add r6, r0, #0
	beq _021D216E
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r4, #0
	add r5, r6, #0
_021D213A:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D2144
	bl sub_0200DA58
_021D2144:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D213A
	ldr r0, [r6, #0]
	bl sub_0200DA58
	ldr r0, [r6, #4]
	bl sub_0200DA58
	bl sub_0200A878
	ldr r0, [r6, #0x24]
	bl sub_02021964
	ldr r0, [r6, #0x20]
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
_021D216E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov20_021D2128

	thumb_func_start ov20_021D2170
ov20_021D2170: ; 0x021D2170
	ldr r3, _021D2174 ; =sub_0200DA04
	bx r3
	; .align 2, 0
_021D2174: .word sub_0200DA04
	thumb_func_end ov20_021D2170

	thumb_func_start ov20_021D2178
ov20_021D2178: ; 0x021D2178
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D2178

	thumb_func_start ov20_021D217C
ov20_021D217C: ; 0x021D217C
	push {r3, lr}
	ldr r0, [r1, #0x24]
	bl sub_020219F8
	bl sub_0200A858
	ldr r3, _021D2198 ; =0x027E0000
	ldr r1, _021D219C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021D2198: .word 0x027E0000
_021D219C: .word 0x00003FF8
	thumb_func_end ov20_021D217C

	thumb_func_start ov20_021D21A0
ov20_021D21A0: ; 0x021D21A0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #0x1d
	bhs _021D21EE
	mov r0, #0x23
	mov r1, #0x18
	bl sub_02018144
	add r1, r0, #0
	beq _021D21F2
	mov r4, #0
	str r4, [r1, #0x14]
	str r6, [r1, #0xc]
	str r5, [r1, #0]
	ldr r0, [r5, #0x18]
	add r2, r5, #0
	str r0, [r1, #4]
	ldr r0, [r5, #0x1c]
	str r0, [r1, #8]
_021D21C8:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _021D21E4
	ldr r0, _021D21F4 ; =0x021D5260
	lsl r2, r6, #2
	ldr r0, [r0, r2]
	mov r2, #1
	str r4, [r1, #0x10]
	bl sub_0200D9E8
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #8]
	pop {r4, r5, r6, pc}
_021D21E4:
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #4
	blt _021D21C8
	pop {r4, r5, r6, pc}
_021D21EE:
	bl sub_02022974
_021D21F2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D21F4: .word 0x021D5260
	thumb_func_end ov20_021D21A0

	thumb_func_start ov20_021D21F8
ov20_021D21F8: ; 0x021D21F8
	mov r2, #0
_021D21FA:
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021D2204
	mov r0, #0
	bx lr
_021D2204:
	add r2, r2, #1
	add r0, r0, #4
	cmp r2, #4
	blt _021D21FA
	mov r0, #1
	bx lr
	thumb_func_end ov20_021D21F8

	thumb_func_start ov20_021D2210
ov20_021D2210: ; 0x021D2210
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021D2218:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D222C
	bl sub_0201CED0
	ldr r0, [r0, #0xc]
	cmp r0, r6
	bne _021D222C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D222C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D2218
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov20_021D2210

	thumb_func_start ov20_021D2238
ov20_021D2238: ; 0x021D2238
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	bl sub_0200DA58
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	mov r2, #0
	add r0, r1, r0
	str r2, [r0, #8]
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2238

	thumb_func_start ov20_021D2260
ov20_021D2260: ; 0x021D2260
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _021D2360 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _021D2364 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r2, [r1, #0]
	ldr r3, _021D2368 ; =0xFFCFFFEF
	add r5, r2, #0
	ldr r2, _021D236C ; =0x00100010
	and r5, r3
	orr r2, r5
	str r2, [r1, #0]
	ldr r1, [r0, #0]
	add r2, r1, #0
	and r2, r3
	mov r1, #0x10
	orr r1, r2
	str r1, [r0, #0]
	mov r0, #0x4c
	mov r1, #0x23
	bl sub_02006C24
	add r5, r0, #0
	add r0, r4, #0
	bl ov20_021D24EC
	add r0, r4, #0
	add r1, r5, #0
	bl ov20_021D2370
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D2EA4
	mov r1, #0x1e
	ldr r2, [r4, #0]
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov20_021D2F50
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D3864
	mov r1, #0x79
	ldr r2, [r4, #0]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov20_021D3898
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D3A54
	mov r1, #0x7a
	ldr r2, [r4, #0]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov20_021D3A98
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D40E8
	mov r1, #0x7b
	ldr r2, [r4, #0]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, r1]
	bl ov20_021D41A8
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D4728
	mov r1, #0x1f
	ldr r2, [r4, #0]
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov20_021D4774
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	bl sub_020BDDF8
	add r0, r5, #0
	bl sub_02006CA8
	add r0, r4, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	nop
_021D2360: .word 0xFFFFE0FF
_021D2364: .word 0x04001000
_021D2368: .word 0xFFCFFFEF
_021D236C: .word 0x00100010
	thumb_func_end ov20_021D2260

	thumb_func_start ov20_021D2370
ov20_021D2370: ; 0x021D2370
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [r0, #0]
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	add r5, r1, #0
	bl sub_020A81D0
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_020A81D0
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_020A818C
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #9
	bl sub_0200718C
	mov r0, #0x23
	str r0, [sp]
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl sub_0200716C
	mov r1, #7
	mov r0, #0x23
	lsl r3, r1, #6
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	add r3, r4, r3
	bl sub_02007204
	mov r3, #0x1d
	lsl r3, r3, #4
	str r0, [r4, r3]
	mov r0, #0x23
	sub r3, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #8
	mov r2, #1
	add r3, r4, r3
	bl sub_02007220
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0
	sub r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #4
	str r2, [r4, r0]
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov20_021D2370

	thumb_func_start ov20_021D2414
ov20_021D2414: ; 0x021D2414
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r0, [r6, #0x14]
	ldr r7, [r6, #0]
	cmp r0, #0
	beq _021D242A
	cmp r0, #1
	beq _021D244C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D242A:
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x23
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r6, #0x14]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, r7, pc}
_021D244C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D24E6
	mov r0, #0x1e
	ldr r1, [r6, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov20_021D2EF0
	mov r0, #0x79
	ldr r1, [r6, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov20_021D3880
	mov r0, #0x7a
	ldr r1, [r6, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov20_021D3A80
	mov r0, #0x7b
	ldr r1, [r6, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov20_021D4164
	mov r0, #0x1f
	ldr r1, [r6, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov20_021D4764
	mov r4, #0
	add r5, r7, #0
_021D2494:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D24A2
	bl sub_020181C4
_021D24A2:
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D24B0
	bl sub_020181C4
_021D24B0:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021D2494
	ldr r0, [r7, #0x20]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r7, #0x20]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r7, #0x20]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r7, #0x20]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r7, #0x20]
	mov r1, #4
	bl sub_02019044
	add r0, r6, #0
	bl ov20_021D2238
_021D24E6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2414

	thumb_func_start ov20_021D24EC
ov20_021D24EC: ; 0x021D24EC
	push {r4, lr}
	ldr r2, _021D2550 ; =0x04000304
	ldr r4, [r0, #0]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #1
	mov r1, #0
	add r2, r0, #0
	bl sub_020BDE40
	ldr r0, _021D2554 ; =0x021D5238
	bl sub_0201FE94
	ldr r0, _021D2558 ; =0x021D519C
	bl sub_02018368
	mov r1, #0
	ldr r0, [r4, #0x20]
	ldr r2, _021D255C ; =0x021D51E4
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r4, #0x20]
	ldr r2, _021D2560 ; =0x021D51AC
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x20]
	ldr r2, _021D2564 ; =0x021D521C
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x20]
	ldr r2, _021D2568 ; =0x021D51C8
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x20]
	ldr r2, _021D256C ; =0x021D5200
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	pop {r4, pc}
	nop
_021D2550: .word 0x04000304
_021D2554: .word 0x021D5238
_021D2558: .word 0x021D519C
_021D255C: .word 0x021D51E4
_021D2560: .word 0x021D51AC
_021D2564: .word 0x021D521C
_021D2568: .word 0x021D51C8
_021D256C: .word 0x021D5200
	thumb_func_end ov20_021D24EC

	thumb_func_start ov20_021D2570
ov20_021D2570: ; 0x021D2570
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D2582
	cmp r0, #1
	beq _021D25A2
	b _021D25B4
_021D2582:
	mov r0, #5
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x23
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0x14]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, pc}
_021D25A2:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D25BA
	ldr r0, [r4, #0x14]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, pc}
_021D25B4:
	add r0, r4, #0
	bl ov20_021D2238
_021D25BA:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2570

	thumb_func_start ov20_021D25C0
ov20_021D25C0: ; 0x021D25C0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x1e
	ldr r4, [r5, #0]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3228
	ldr r0, [r5, #4]
	bl ov20_021D1FCC
	add r1, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3700
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D25C0

	thumb_func_start ov20_021D25EC
ov20_021D25EC: ; 0x021D25EC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x1e
	ldr r4, [r5, #0]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D369C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36B0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D39D4
	ldr r0, [r4, #0x18]
	bl ov20_021D1FD4
	add r1, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39EC
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D25EC

	thumb_func_start ov20_021D2630
ov20_021D2630: ; 0x021D2630
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x79
	ldr r4, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D39D4
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36D0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D369C
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2630

	thumb_func_start ov20_021D2660
ov20_021D2660: ; 0x021D2660
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #0
	beq _021D2672
	cmp r0, #1
	beq _021D2698
	pop {r3, r4, r5, pc}
_021D2672:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3684
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36B0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3EF8
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2698:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3F10
	cmp r0, #0
	beq _021D26D4
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3A2C
	ldr r0, [r4, #0x18]
	bl ov20_021D1FDC
	add r1, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3E74
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D3E48
	add r0, r5, #0
	bl ov20_021D2238
_021D26D4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2660

	thumb_func_start ov20_021D26D8
ov20_021D26D8: ; 0x021D26D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #0
	beq _021D26EE
	cmp r0, #1
	beq _021D2700
	cmp r0, #2
	beq _021D2712
	pop {r3, r4, r5, pc}
_021D26EE:
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4BA4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2700:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D40A8
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2712:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D40DC
	cmp r0, #0
	beq _021D273E
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4C2C
	cmp r0, #0
	beq _021D273E
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4084
	add r0, r5, #0
	bl ov20_021D2238
_021D273E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D26D8

	thumb_func_start ov20_021D2740
ov20_021D2740: ; 0x021D2740
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #3
	bhi _021D27E2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2758: ; jump table
	.short _021D2760 - _021D2758 - 2 ; case 0
	.short _021D2772 - _021D2758 - 2 ; case 1
	.short _021D2790 - _021D2758 - 2 ; case 2
	.short _021D27B0 - _021D2758 - 2 ; case 3
_021D2760:
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4BA4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2772:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D3E48
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D40A8
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2790:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D40DC
	cmp r0, #0
	beq _021D27E2
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4084
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D27B0:
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4C2C
	cmp r0, #0
	beq _021D27E2
	ldr r0, [r4, #0x18]
	bl ov20_021D1FDC
	add r1, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3E74
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D3E48
	add r0, r5, #0
	bl ov20_021D2238
_021D27E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2740

	thumb_func_start ov20_021D27E4
ov20_021D27E4: ; 0x021D27E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #0
	beq _021D27F6
	cmp r0, #1
	beq _021D281E
	pop {r3, r4, r5, pc}
_021D27F6:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3A40
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D3E48
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3F60
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D281E:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3F84
	cmp r0, #0
	beq _021D2846
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36D0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3690
	add r0, r5, #0
	bl ov20_021D2238
_021D2846:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D27E4

	thumb_func_start ov20_021D2848
ov20_021D2848: ; 0x021D2848
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #0
	beq _021D285E
	cmp r0, #1
	beq _021D2886
	cmp r0, #2
	beq _021D28A6
	pop {r3, r4, r5, pc}
_021D285E:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4294
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D3E48
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4004
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2886:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4020
	cmp r0, #0
	beq _021D28E4
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D42E4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D28A6:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4390
	cmp r0, #0
	beq _021D28E4
	ldr r0, [r4, #0x18]
	bl ov20_021D2034
	add r1, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4480
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D4440
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D4DBC
	add r0, r5, #0
	bl ov20_021D2238
_021D28E4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2848

	thumb_func_start ov20_021D28E8
ov20_021D28E8: ; 0x021D28E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #4
	bhi _021D29B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2900: ; jump table
	.short _021D290A - _021D2900 - 2 ; case 0
	.short _021D291C - _021D2900 - 2 ; case 1
	.short _021D2946 - _021D2900 - 2 ; case 2
	.short _021D2966 - _021D2900 - 2 ; case 3
	.short _021D2978 - _021D2900 - 2 ; case 4
_021D290A:
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4BA4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D291C:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D4440
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D4DBC
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43B4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2946:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43D8
	cmp r0, #0
	beq _021D29B8
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4084
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2966:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D403C
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2978:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4078
	cmp r0, #0
	beq _021D29B8
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4C2C
	cmp r0, #0
	beq _021D29B8
	ldr r0, [r4, #0x18]
	bl ov20_021D1FDC
	add r1, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3E74
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D3E48
	add r0, r5, #0
	bl ov20_021D2238
_021D29B8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D28E8

	thumb_func_start ov20_021D29BC
ov20_021D29BC: ; 0x021D29BC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #3
	bhi _021D2A98
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D29D4: ; jump table
	.short _021D29DC - _021D29D4 - 2 ; case 0
	.short _021D2A10 - _021D29D4 - 2 ; case 1
	.short _021D2A3A - _021D29D4 - 2 ; case 2
	.short _021D2A5A - _021D29D4 - 2 ; case 3
_021D29DC:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3A40
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D4440
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D4DBC
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43B4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2A10:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43D8
	cmp r0, #0
	beq _021D2A98
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FD0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D403C
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2A3A:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4078
	cmp r0, #0
	beq _021D2A98
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FE0
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2A5A:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FF8
	cmp r0, #0
	beq _021D2A98
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3228
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D369C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36D0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3690
	add r0, r5, #0
	bl ov20_021D2238
_021D2A98:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D29BC

	thumb_func_start ov20_021D2A9C
ov20_021D2A9C: ; 0x021D2A9C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #3
	bhi _021D2B70
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2AB4: ; jump table
	.short _021D2ABC - _021D2AB4 - 2 ; case 0
	.short _021D2AF0 - _021D2AB4 - 2 ; case 1
	.short _021D2B1A - _021D2AB4 - 2 ; case 2
	.short _021D2B3A - _021D2AB4 - 2 ; case 3
_021D2ABC:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3A40
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D4440
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D4DBC
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43B4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2AF0:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43D8
	cmp r0, #0
	beq _021D2B70
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FD0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D403C
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2B1A:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4078
	cmp r0, #0
	beq _021D2B70
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FE0
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2B3A:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FF8
	cmp r0, #0
	beq _021D2B70
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3228
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D369C
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D39D4
	add r0, r5, #0
	bl ov20_021D2238
_021D2B70:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2A9C

	thumb_func_start ov20_021D2B74
ov20_021D2B74: ; 0x021D2B74
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0x18]
	bl ov20_021D1FCC
	add r1, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3700
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2B74

	thumb_func_start ov20_021D2B94
ov20_021D2B94: ; 0x021D2B94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0x18]
	bl ov20_021D1FD4
	add r1, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39EC
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2B94

	thumb_func_start ov20_021D2BB4
ov20_021D2BB4: ; 0x021D2BB4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0x18]
	bl ov20_021D1FDC
	add r1, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3E74
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2BB4

	thumb_func_start ov20_021D2BD4
ov20_021D2BD4: ; 0x021D2BD4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0x18]
	bl ov20_021D2034
	add r1, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4480
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2BD4

	thumb_func_start ov20_021D2BF4
ov20_021D2BF4: ; 0x021D2BF4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #0]
	cmp r0, #0
	beq _021D2C06
	cmp r0, #1
	beq _021D2C20
	pop {r3, r4, r5, pc}
_021D2C06:
	ldr r0, [r4, #0x18]
	bl ov20_021D2040
	add r1, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D44BC
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2C20:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4578
	cmp r0, #0
	beq _021D2C40
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov20_021D4DBC
	add r0, r5, #0
	bl ov20_021D2238
_021D2C40:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2BF4

	thumb_func_start ov20_021D2C44
ov20_021D2C44: ; 0x021D2C44
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x1e
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov20_021D3578
	add r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2C44

	thumb_func_start ov20_021D2C60
ov20_021D2C60: ; 0x021D2C60
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x1e
	ldr r4, [r5, #0]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov20_021D3578
	ldr r0, [r5, #4]
	bl ov20_021D208C
	add r1, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3790
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39E0
	cmp r0, #0
	beq _021D2C9E
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39BC
	b _021D2CA8
_021D2C9E:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3684
_021D2CA8:
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2C60

	thumb_func_start ov20_021D2CB0
ov20_021D2CB0: ; 0x021D2CB0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x1e
	ldr r4, [r5, #0]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov20_021D3578
	ldr r0, [r5, #4]
	bl ov20_021D208C
	add r1, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3790
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39E0
	cmp r0, #0
	beq _021D2CEE
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39BC
	b _021D2CF8
_021D2CEE:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3684
_021D2CF8:
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2CB0

	thumb_func_start ov20_021D2D00
ov20_021D2D00: ; 0x021D2D00
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x1e
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov20_021D3578
	add r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2D00

	thumb_func_start ov20_021D2D1C
ov20_021D2D1C: ; 0x021D2D1C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0]
	bl ov20_021D208C
	add r1, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D381C
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2D1C

	thumb_func_start ov20_021D2D3C
ov20_021D2D3C: ; 0x021D2D3C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x1e
	ldr r4, [r5, #0]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov20_021D3578
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D384C
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39E0
	cmp r0, #0
	beq _021D2D72
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39C8
	b _021D2D7C
_021D2D72:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3690
_021D2D7C:
	add r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2D3C

	thumb_func_start ov20_021D2D84
ov20_021D2D84: ; 0x021D2D84
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x1f
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	mov r2, #1
	bl ov20_021D4DF4
	add r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	thumb_func_end ov20_021D2D84

	thumb_func_start ov20_021D2DA0
ov20_021D2DA0: ; 0x021D2DA0
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x1f
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	add r2, r1, #0
	bl ov20_021D4DF4
	add r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	thumb_func_end ov20_021D2DA0

	thumb_func_start ov20_021D2DBC
ov20_021D2DBC: ; 0x021D2DBC
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x1f
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	bl ov20_021D4DF4
	add r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	thumb_func_end ov20_021D2DBC

	thumb_func_start ov20_021D2DD8
ov20_021D2DD8: ; 0x021D2DD8
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x1f
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	mov r2, #0
	bl ov20_021D4DF4
	add r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	thumb_func_end ov20_021D2DD8

	thumb_func_start ov20_021D2DF4
ov20_021D2DF4: ; 0x021D2DF4
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r3, _021D2E00 ; =ov20_021D3574
	ldr r0, [r0, r1]
	bx r3
	nop
_021D2E00: .word ov20_021D3574
	thumb_func_end ov20_021D2DF4

	thumb_func_start ov20_021D2E04
ov20_021D2E04: ; 0x021D2E04
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov20_021D2E04

	thumb_func_start ov20_021D2E08
ov20_021D2E08: ; 0x021D2E08
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov20_021D2E08

	thumb_func_start ov20_021D2E0C
ov20_021D2E0C: ; 0x021D2E0C
	push {r3, r4, r5, r6}
	mov r4, #0x15
	lsl r4, r4, #4
	mov r5, #0x24
	add r6, r0, r4
	mul r5, r2
	add r5, r6, r5
	str r5, [r1, #0]
	add r5, r4, #0
	add r5, #0x48
	add r6, r0, r5
	mov r5, #0x14
	mul r5, r2
	lsl r2, r2, #2
	add r5, r6, r5
	add r2, r0, r2
	add r0, r4, #0
	str r5, [r1, #8]
	add r0, #0x70
	ldr r0, [r2, r0]
	add r4, #0x78
	str r0, [r1, #0xc]
	ldr r0, [r2, r4]
	str r0, [r1, #0x10]
	add r0, r1, #0
	add r0, #0x20
	strb r3, [r0]
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov20_021D2E0C

	thumb_func_start ov20_021D2E50
ov20_021D2E50: ; 0x021D2E50
	push {r3, r4, r5, lr}
	sub sp, #0x20
	ldr r0, [r0, #0x24]
	str r0, [sp]
	lsl r0, r2, #0xc
	str r0, [sp, #8]
	lsl r0, r3, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x18]
	mov r0, #0x23
	str r0, [sp, #0x1c]
	bl sub_020C3D98
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02021B90
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020C3DAC
	cmp r5, #0
	beq _021D2E9C
	add r0, r5, #0
	mov r1, #1
	bl sub_02021CC8
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
_021D2E9C:
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2E50

	.rodata


	.global Unk_ov20_021D519C
Unk_ov20_021D519C: ; 0x021D519C
	.incbin "incbin/overlay20_rodata.bin", 0x5C, 0x6C - 0x5C

	.global Unk_ov20_021D51AC
Unk_ov20_021D51AC: ; 0x021D51AC
	.incbin "incbin/overlay20_rodata.bin", 0x6C, 0x88 - 0x6C

	.global Unk_ov20_021D51C8
Unk_ov20_021D51C8: ; 0x021D51C8
	.incbin "incbin/overlay20_rodata.bin", 0x88, 0xA4 - 0x88

	.global Unk_ov20_021D51E4
Unk_ov20_021D51E4: ; 0x021D51E4
	.incbin "incbin/overlay20_rodata.bin", 0xA4, 0xC0 - 0xA4

	.global Unk_ov20_021D5200
Unk_ov20_021D5200: ; 0x021D5200
	.incbin "incbin/overlay20_rodata.bin", 0xC0, 0xDC - 0xC0

	.global Unk_ov20_021D521C
Unk_ov20_021D521C: ; 0x021D521C
	.incbin "incbin/overlay20_rodata.bin", 0xDC, 0xF8 - 0xDC

	.global Unk_ov20_021D5238
Unk_ov20_021D5238: ; 0x021D5238
	.incbin "incbin/overlay20_rodata.bin", 0xF8, 0x120 - 0xF8

	.global Unk_ov20_021D5260
Unk_ov20_021D5260: ; 0x021D5260
	.incbin "incbin/overlay20_rodata.bin", 0x120, 0x74

