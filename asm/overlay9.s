	.include "macros/function.inc"


	.text

	thumb_func_start ov9_02249960
ov9_02249960: ; 0x02249960
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #9
	bl sub_02027F6C
	add r4, r0, #0
	ldr r1, _02249A5C ; =0x00001E74
	mov r0, #4
	bl sub_02018144
	ldr r2, _02249A5C ; =0x00001E74
	add r5, r0, #0
	mov r1, #0
	bl sub_020D5124
	str r6, [r5, #0]
	str r4, [r5, #4]
	ldr r0, [r6, #4]
	str r5, [r0, #0x24]
	add r0, r5, #0
	bl ov9_02249C88
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _022499A2
	add r0, r5, #0
	bl ov9_02249CC4
_022499A2:
	add r0, r5, #0
	bl ov9_0224BE14
	add r0, r5, #0
	bl ov9_02249F50
	add r0, r5, #0
	bl ov9_02249F88
	add r0, r5, #0
	mov r1, #6
	bl ov9_0224A1E4
	add r0, r5, #0
	bl ov9_0224D744
	add r0, r5, #0
	bl ov9_0224ADC0
	add r0, r5, #0
	bl ov9_0224B3A8
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r2, [r5, #0x10]
	add r0, r5, #0
	add r1, r5, r1
	bl ov9_0224AEE4
	add r0, r5, #0
	bl ov9_0224F724
	add r0, r5, #0
	bl ov9_02249FF4
	add r0, r5, #0
	bl ov9_0224A570
	add r0, r5, #0
	bl ov9_0224A8C0
	add r0, r5, #0
	bl ov9_0224EE40
	add r0, r5, #0
	bl ov9_0224EB68
	add r0, r5, #0
	bl ov9_0224B514
	add r0, r5, #0
	bl ov9_0224DC34
	add r0, r5, #0
	bl ov9_0224E33C
	add r0, r5, #0
	bl ov9_02249E94
	add r0, r5, #0
	bl ov9_0224C8E8
	add r0, r5, #0
	bl ov9_0224CBD8
	add r0, r5, #0
	bl ov9_0224DCA8
	ldr r1, [r5, #0]
	mov r2, #0x6a
	lsl r2, r2, #2
	ldr r1, [r1, #0x40]
	add r0, r5, #0
	add r2, r5, r2
	bl ov9_0224B1B4
	add r0, r5, #0
	bl ov9_0224E984
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x40]
	bl ov5_021F34B8
	add r0, r5, #0
	bl ov9_02249EF0
	ldr r1, [r4, #0]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02249A5C: .word 0x00001E74
	thumb_func_end ov9_02249960

	thumb_func_start ov9_02249A60
ov9_02249A60: ; 0x02249A60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r0, #0x24]
	add r0, r4, #0
	bl ov9_02249F18
	add r0, r4, #0
	bl ov9_0224E988
	add r0, r4, #0
	bl ov9_0224CBF8
	add r0, r4, #0
	bl ov9_0224C9E8
	add r0, r4, #0
	bl ov9_02249EC8
	add r0, r4, #0
	bl ov9_0224E34C
	add r0, r4, #0
	bl ov9_0224DC4C
	add r0, r4, #0
	bl ov9_0224B560
	add r0, r4, #0
	bl ov9_0224EB94
	add r0, r4, #0
	bl ov9_0224EE6C
	add r0, r4, #0
	bl ov9_0224A9E8
	add r0, r4, #0
	bl ov9_0224A574
	add r0, r4, #0
	bl ov9_0224A0C8
	add r0, r4, #0
	bl ov9_0224F760
	mov r0, #0x6a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov9_0224B064
	add r0, r4, #0
	bl ov9_0224B3F4
	add r0, r4, #0
	bl ov9_0224AED8
	add r0, r4, #0
	bl ov9_0224D994
	add r0, r4, #0
	bl ov9_0224A334
	add r0, r4, #0
	bl ov9_02249F98
	add r0, r4, #0
	bl ov9_02249F84
	add r0, r4, #0
	bl ov9_0224BE8C
	add r0, r4, #0
	bl ov9_02249CAC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0x24]
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_02249A60

	thumb_func_start ov9_02249B04
ov9_02249B04: ; 0x02249B04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov9_022510D0
	bl ov9_0224D720
	add r4, r0, #0
	add r0, r5, #0
	bl ov9_0224B570
	add r0, r5, #0
	mov r1, #0
	bl ov9_02249D44
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov9_0224EC94
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov9_0224DC74
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov9_0224F0A4
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov9_0224BF18
	add r0, r5, #0
	bl ov9_0224DB1C
	add r0, r5, #0
	bl ov9_0224B4CC
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov9_0224EC48
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov9_0224DD24
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov9_0224F078
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02249B04

	thumb_func_start ov9_02249B68
ov9_02249B68: ; 0x02249B68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov9_022510D0
	add r6, r0, #0
	bl ov9_0224D720
	ldr r0, [r0, #8]
	bl ov9_0224D720
	add r4, r0, #0
	add r0, r5, #0
	bl ov9_0224B580
	add r0, r5, #0
	mov r1, #0
	bl ov9_02249D44
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov9_0224EC94
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov9_0224DC74
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov9_0224F0A4
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224BEB4
	add r0, r5, #0
	bl ov9_0224DB1C
	add r0, r5, #0
	mov r1, #1
	bl ov9_0224B45C
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224EC48
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224DD24
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224F078
	pop {r4, r5, r6, pc}
	thumb_func_end ov9_02249B68

	thumb_func_start ov9_02249BD4
ov9_02249BD4: ; 0x02249BD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov9_0224B570
	add r0, r5, #0
	mov r1, #0
	bl ov9_02249D44
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224EC94
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224DC74
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224F0A4
	add r0, r5, #0
	bl ov9_0224DB1C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02249BD4

	thumb_func_start ov9_02249C08
ov9_02249C08: ; 0x02249C08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov9_0224B4CC
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224EC48
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224DD24
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224F078
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_02249C08

	thumb_func_start ov9_02249C2C
ov9_02249C2C: ; 0x02249C2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov9_0224B580
	add r0, r5, #0
	mov r1, #0
	bl ov9_02249D44
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224EC94
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224DC74
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224F0A4
	add r0, r5, #0
	bl ov9_0224DB1C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02249C2C

	thumb_func_start ov9_02249C60
ov9_02249C60: ; 0x02249C60
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #1
	bl ov9_0224B45C
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224EC48
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224DD24
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224F078
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02249C60

	thumb_func_start ov9_02249C88
ov9_02249C88: ; 0x02249C88
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb5
	mov r1, #4
	bl sub_02006C24
	str r0, [r4, #8]
	mov r0, #0xb6
	mov r1, #4
	bl sub_02006C24
	str r0, [r4, #0xc]
	mov r0, #0xb7
	mov r1, #4
	bl sub_02006C24
	str r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end ov9_02249C88

	thumb_func_start ov9_02249CAC
ov9_02249CAC: ; 0x02249CAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_02006CA8
	ldr r0, [r4, #0xc]
	bl sub_02006CA8
	ldr r0, [r4, #0x10]
	bl sub_02006CA8
	pop {r4, pc}
	thumb_func_end ov9_02249CAC

	thumb_func_start ov9_02249CC4
ov9_02249CC4: ; 0x02249CC4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	ldr r4, [r6, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r7, r0, #0
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r6, #0
	mov r5, #0x88
	bl ov9_022510D0
	ldr r1, _02249D10 ; =0x00000245
	cmp r0, r1
	bne _02249CE8
	ldr r5, _02249D14 ; =0x0000069F
_02249CE8:
	add r0, r6, #0
	add r1, r5, #0
	bl ov9_02249D68
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AFC0
	cmp r0, #0
	ldr r1, [r4, #0xc]
	bne _02249D06
	mov r0, #7
	orr r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02249D06:
	mov r0, #0x77
	lsl r0, r0, #6
	orr r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249D10: .word 0x00000245
_02249D14: .word 0x0000069F
	thumb_func_end ov9_02249CC4

	thumb_func_start ov9_02249D18
ov9_02249D18: ; 0x02249D18
	ldr r0, [r0, #4]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r3, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_02249D18

	thumb_func_start ov9_02249D24
ov9_02249D24: ; 0x02249D24
	push {r3, r4}
	ldr r4, [r0, #4]
	ldrh r0, [r4, #4]
	strh r0, [r1]
	ldrh r0, [r4, #6]
	strh r0, [r2]
	ldrh r0, [r4, #8]
	strh r0, [r3]
	pop {r3, r4}
	bx lr
	thumb_func_end ov9_02249D24

	thumb_func_start ov9_02249D38
ov9_02249D38: ; 0x02249D38
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	; .align 2, 0
	thumb_func_end ov9_02249D38

	thumb_func_start ov9_02249D44
ov9_02249D44: ; 0x02249D44
	ldr r3, [r0, #4]
	ldr r0, _02249D58 ; =0xFE000001
	ldr r2, [r3, #0]
	and r2, r0
	lsl r0, r1, #8
	lsr r0, r0, #7
	orr r0, r2
	str r0, [r3, #0]
	bx lr
	nop
_02249D58: .word 0xFE000001
	thumb_func_end ov9_02249D44

	thumb_func_start ov9_02249D5C
ov9_02249D5C: ; 0x02249D5C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	lsl r0, r0, #7
	lsr r0, r0, #8
	bx lr
	; .align 2, 0
	thumb_func_end ov9_02249D5C

	thumb_func_start ov9_02249D68
ov9_02249D68: ; 0x02249D68
	ldr r0, [r0, #4]
	strh r1, [r0, #0xa]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_02249D68

	thumb_func_start ov9_02249D70
ov9_02249D70: ; 0x02249D70
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #4]
	cmp r5, #0xb
	blo _02249D7E
	bl sub_02022974
_02249D7E:
	mov r0, #1
	ldrh r1, [r4, #0xa]
	lsl r0, r5
	orr r0, r1
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02249D70

	thumb_func_start ov9_02249D8C
ov9_02249D8C: ; 0x02249D8C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #4]
	cmp r5, #0xb
	blo _02249D9A
	bl sub_02022974
_02249D9A:
	mov r0, #1
	lsl r0, r5
	ldrh r1, [r4, #0xa]
	mvn r0, r0
	and r0, r1
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_02249D8C

	thumb_func_start ov9_02249DA8
ov9_02249DA8: ; 0x02249DA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r5, [r0, #4]
	cmp r4, #0xb
	blo _02249DB6
	bl sub_02022974
_02249DB6:
	mov r0, #1
	add r1, r0, #0
	ldrh r2, [r5, #0xa]
	lsl r1, r4
	tst r1, r2
	bne _02249DC4
	mov r0, #0
_02249DC4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02249DA8

	thumb_func_start ov9_02249DC8
ov9_02249DC8: ; 0x02249DC8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #4]
	cmp r5, #0x11
	blo _02249DD6
	bl sub_02022974
_02249DD6:
	mov r0, #1
	ldr r1, [r4, #0xc]
	lsl r0, r5
	orr r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02249DC8

	thumb_func_start ov9_02249DE4
ov9_02249DE4: ; 0x02249DE4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #4]
	cmp r5, #0x11
	blo _02249DF2
	bl sub_02022974
_02249DF2:
	mov r0, #1
	lsl r0, r5
	ldr r1, [r4, #0xc]
	mvn r0, r0
	and r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_02249DE4

	thumb_func_start ov9_02249E00
ov9_02249E00: ; 0x02249E00
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r5, [r0, #4]
	cmp r4, #0x11
	blo _02249E0E
	bl sub_02022974
_02249E0E:
	mov r0, #1
	add r1, r0, #0
	ldr r2, [r5, #0xc]
	lsl r1, r4
	tst r1, r2
	bne _02249E1C
	mov r0, #0
_02249E1C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02249E00

	thumb_func_start ov9_02249E20
ov9_02249E20: ; 0x02249E20
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #4]
	cmp r5, #0x10
	blo _02249E2E
	bl sub_02022974
_02249E2E:
	ldr r1, [r4, #0]
	ldr r0, _02249E40 ; =0xE1FFFFFF
	and r1, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02249E40: .word 0xE1FFFFFF
	thumb_func_end ov9_02249E20

	thumb_func_start ov9_02249E44
ov9_02249E44: ; 0x02249E44
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1c
	bx lr
	; .align 2, 0
	thumb_func_end ov9_02249E44

	thumb_func_start ov9_02249E50
ov9_02249E50: ; 0x02249E50
	push {r4, r5, r6, lr}
	ldr r0, [r0, #4]
	add r5, r1, #0
	ldr r0, [r0, #0x24]
	add r6, r2, #0
	ldr r4, [sp, #0x10]
	bl ov9_022510D0
	ldr r1, _02249E90 ; =0x00000246
	cmp r0, r1
	bne _02249E74
	cmp r5, #0xf
	bne _02249E88
	cmp r6, #0x1a
	bne _02249E88
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02249E74:
	sub r1, r1, #1
	cmp r0, r1
	bne _02249E88
	cmp r5, #0x59
	bne _02249E88
	cmp r6, #0x38
	bne _02249E88
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02249E88:
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	nop
_02249E90: .word 0x00000246
	thumb_func_end ov9_02249E50

	thumb_func_start ov9_02249E94
ov9_02249E94: ; 0x02249E94
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x38]
	bl sub_02062858
	add r2, r0, #0
	ldr r0, _02249EC4 ; =ov9_02249EDC
	add r1, r4, #0
	add r2, r2, #2
	bl sub_0200D9E8
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_02249EC4: .word ov9_02249EDC
	thumb_func_end ov9_02249E94

	thumb_func_start ov9_02249EC8
ov9_02249EC8: ; 0x02249EC8
	push {r3, lr}
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02249ED8
	bl sub_0200DA58
_02249ED8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov9_02249EC8

	thumb_func_start ov9_02249EDC
ov9_02249EDC: ; 0x02249EDC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov9_0224A49C
	add r0, r4, #0
	bl ov9_0224F764
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_02249EDC

	thumb_func_start ov9_02249EF0
ov9_02249EF0: ; 0x02249EF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02249F10 ; =0x00001E70
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02249F00
	bl sub_02022974
_02249F00:
	ldr r0, _02249F14 ; =ov9_02249F3C
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA04
	ldr r1, _02249F10 ; =0x00001E70
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_02249F10: .word 0x00001E70
_02249F14: .word ov9_02249F3C
	thumb_func_end ov9_02249EF0

	thumb_func_start ov9_02249F18
ov9_02249F18: ; 0x02249F18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02249F38 ; =0x00001E70
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02249F28
	bl sub_02022974
_02249F28:
	ldr r0, _02249F38 ; =0x00001E70
	ldr r0, [r4, r0]
	bl sub_0200DA58
	ldr r0, _02249F38 ; =0x00001E70
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02249F38: .word 0x00001E70
	thumb_func_end ov9_02249F18

	thumb_func_start ov9_02249F3C
ov9_02249F3C: ; 0x02249F3C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov9_0224CC4C
	add r0, r4, #0
	bl ov9_0224F804
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_02249F3C

	thumb_func_start ov9_02249F50
ov9_02249F50: ; 0x02249F50
	push {r4, lr}
	ldr r2, _02249F74 ; =0x00001084
	ldr r1, _02249F78 ; =0x00001E5C
	mov r3, #0
	add r4, r0, #0
_02249F5A:
	add r3, r3, #1
	strh r2, [r4, r1]
	add r4, r4, #2
	cmp r3, #8
	blt _02249F5A
	ldr r2, _02249F7C ; =0x00001C64
	ldr r1, _02249F80 ; =0x00001E5E
	strh r2, [r0, r1]
	sub r1, r1, #2
	add r0, r0, r1
	bl sub_020BFD2C
	pop {r4, pc}
	; .align 2, 0
_02249F74: .word 0x00001084
_02249F78: .word 0x00001E5C
_02249F7C: .word 0x00001C64
_02249F80: .word 0x00001E5E
	thumb_func_end ov9_02249F50

	thumb_func_start ov9_02249F84
ov9_02249F84: ; 0x02249F84
	bx lr
	; .align 2, 0
	thumb_func_end ov9_02249F84

	thumb_func_start ov9_02249F88
ov9_02249F88: ; 0x02249F88
	ldr r0, [r0, #0]
	ldr r3, _02249F94 ; =sub_02062CCC
	ldr r0, [r0, #0x38]
	mov r1, #0
	bx r3
	nop
_02249F94: .word sub_02062CCC
	thumb_func_end ov9_02249F88

	thumb_func_start ov9_02249F98
ov9_02249F98: ; 0x02249F98
	bx lr
	; .align 2, 0
	thumb_func_end ov9_02249F98

	thumb_func_start ov9_02249F9C
ov9_02249F9C: ; 0x02249F9C
	push {r4, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	ldr r1, [r0, #0x24]
	add r0, r1, #0
	add r0, #0x14
	ldrh r3, [r0, #4]
	ldrh r2, [r0, #0xc]
	add r3, r3, r2
	add r2, sp, #0
	strh r3, [r2]
	ldrh r4, [r0, #6]
	ldrh r3, [r0, #0xe]
	add r3, r4, r3
	strh r3, [r2, #2]
	ldrh r3, [r0, #8]
	ldrh r0, [r0, #0x10]
	add r0, r3, r0
	strh r0, [r2, #4]
	ldr r1, [r1, #0x14]
	add r0, sp, #0
	bl sub_020209D4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_02249F9C

	thumb_func_start ov9_02249FD0
ov9_02249FD0: ; 0x02249FD0
	push {r4, lr}
	add r4, r0, #0
	bne _02249FDA
	bl sub_02022974
_02249FDA:
	add r0, r4, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #9
	bl sub_02027F6C
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	pop {r4, pc}
	thumb_func_end ov9_02249FD0

	thumb_func_start ov9_02249FF4
ov9_02249FF4: ; 0x02249FF4
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #1
	str r1, [r0, #0x20]
	ldr r0, [r5, #0]
	ldr r3, _0224A0B4 ; =0x022514CC
	ldr r0, [r0, #0x24]
	add r4, r5, #0
	str r0, [r5, #0x14]
	ldmia r3!, {r0, r1}
	add r2, sp, #8
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r4, #0x14
	str r0, [r2, #0]
	ldr r0, [sp, #8]
	ldr r1, [r5, #0x14]
	bl sub_02020A50
	ldr r1, [r5, #0x14]
	add r0, sp, #0xc
	bl sub_020209D4
	add r0, sp, #0
	ldrh r0, [r0, #0x16]
	ldr r1, [r5, #0x14]
	bl sub_02020910
	add r0, sp, #0
	ldrb r0, [r0, #0x14]
	ldr r1, [r5, #0x14]
	bl sub_02020854
	mov r0, #0x96
	ldr r1, _0224A0B8 ; =0x006A4000
	ldr r2, [r5, #0x14]
	lsl r0, r0, #0xc
	bl sub_020206BC
	ldr r0, _0224A0BC ; =0x0000D602
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov9_02249D38
	cmp r0, #1
	bne _0224A090
	add r2, sp, #0
	add r0, r5, #0
	add r1, sp, #4
	add r2, #2
	add r3, sp, #0
	bl ov9_02249D24
	add r0, sp, #0
	ldrh r1, [r0, #4]
	lsl r1, r1, #8
	strh r1, [r4, #0x14]
	ldrh r1, [r0, #2]
	lsl r1, r1, #8
	strh r1, [r4, #0x16]
	ldrh r0, [r0]
	lsl r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x14]
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x16]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x1a]
	strh r0, [r4, #0x12]
_0224A090:
	add r0, r5, #0
	bl ov9_022510D0
	ldr r1, _0224A0C0 ; =0x00000246
	cmp r0, r1
	beq _0224A0A4
	ldr r1, [r4, #0]
	mov r0, #0xc0
	bl sub_0202094C
_0224A0A4:
	ldr r0, _0224A0C4 ; =ov9_0224A0DC
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #0x3c]
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_0224A0B4: .word 0x022514CC
_0224A0B8: .word 0x006A4000
_0224A0BC: .word 0x0000D602
_0224A0C0: .word 0x00000246
_0224A0C4: .word ov9_0224A0DC
	thumb_func_end ov9_02249FF4

	thumb_func_start ov9_0224A0C8
ov9_0224A0C8: ; 0x0224A0C8
	push {r3, lr}
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0x20]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _0224A0DA
	bl sub_0200DA58
_0224A0DA:
	pop {r3, pc}
	thumb_func_end ov9_0224A0C8

	thumb_func_start ov9_0224A0DC
ov9_0224A0DC: ; 0x0224A0DC
	add r1, #0x14
	ldr r2, [r1, #0x1c]
	add r0, r1, #0
	add r0, #0x1c
	cmp r2, #0
	beq _0224A144
	ldr r2, [r0, #4]
	sub r2, r2, #1
	str r2, [r0, #4]
	cmp r2, #0
	bgt _0224A108
	mov r2, #0
	str r2, [r0, #0]
	ldrh r0, [r1, #0x14]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0x16]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x18]
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x1a]
	strh r0, [r1, #0x12]
	bx lr
_0224A108:
	ldr r3, [r0, #8]
	ldr r2, [r0, #0x14]
	add r2, r3, r2
	str r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x18]
	add r2, r3, r2
	str r2, [r0, #0xc]
	ldr r3, [r0, #0x10]
	ldr r2, [r0, #0x1c]
	add r2, r3, r2
	str r2, [r0, #0x10]
	ldr r3, [r0, #8]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	strh r2, [r1, #0xc]
	ldr r3, [r0, #0xc]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	strh r2, [r1, #0xe]
	ldr r2, [r0, #0x10]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	strh r0, [r1, #0x10]
_0224A144:
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224A0DC

	thumb_func_start ov9_0224A148
ov9_0224A148: ; 0x0224A148
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r4, #0x14
	add r5, r4, #0
	ldrh r1, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	ldrh r3, [r6, #0x10]
	add r5, #0x1c
	bl ov9_02249D18
	ldrh r0, [r6, #0xc]
	lsl r0, r0, #8
	strh r0, [r4, #0x14]
	ldrh r0, [r6, #0xe]
	lsl r0, r0, #8
	strh r0, [r4, #0x16]
	ldrh r0, [r6, #0x10]
	lsl r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	ldrh r0, [r4, #0x14]
	cmp r1, r0
	bne _0224A18E
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0x16]
	cmp r1, r0
	bne _0224A18E
	ldrh r1, [r4, #0x10]
	ldrh r0, [r4, #0x18]
	cmp r1, r0
	bne _0224A18E
	mov r0, #0
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_0224A18E:
	mov r0, #1
	str r0, [r5, #0]
	ldr r0, [r6, #0x14]
	str r0, [r5, #4]
	ldrh r0, [r4, #0xc]
	lsl r0, r0, #0xc
	str r0, [r5, #8]
	ldrh r0, [r4, #0xe]
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	ldrh r0, [r4, #0x10]
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	ldrh r0, [r4, #0xc]
	ldrh r1, [r4, #0x14]
	bl ov9_02250EB0
	ldr r1, [r6, #0x14]
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [r5, #0x14]
	ldrh r0, [r4, #0xe]
	ldrh r1, [r4, #0x16]
	bl ov9_02250EB0
	ldr r1, [r6, #0x14]
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [r5, #0x18]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0x18]
	bl ov9_02250EB0
	ldr r1, [r6, #0x14]
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A148

	thumb_func_start ov9_0224A1E4
ov9_0224A1E4: ; 0x0224A1E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	add r4, r5, r0
	lsl r6, r1, #5
	str r1, [r4, #0]
	mov r0, #4
	add r1, r6, #0
	bl sub_02018144
	mov r1, #0
	add r2, r6, #0
	str r0, [r4, #4]
	bl sub_020D5124
	add r0, r4, #0
	mov r1, #4
	add r0, #0x10
	add r2, r1, #0
	bl sub_020182CC
	ldr r0, [r5, #0]
	mov r1, #0xc5
	ldr r0, [r0, #0x40]
	mov r2, #1
	bl ov5_021DF5C0
	mov r1, #0
	str r0, [r4, #8]
	bl sub_020B3C5C
	str r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
	thumb_func_end ov9_0224A1E4

	thumb_func_start ov9_0224A228
ov9_0224A228: ; 0x0224A228
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r6, r0, #0
	add r0, r4, #0
	add r5, r1, #0
	bl sub_02021430
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02021438
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02021440
	str r0, [sp]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0224A254
	bl sub_02022974
_0224A254:
	str r4, [r5, #0x1c]
	add r0, r6, #0
	ldr r1, [r6, #0xc]
	add r0, #0x10
	add r2, r7, #0
	bl sub_020B2CB4
	str r0, [r5, #0x10]
	ldr r1, [r6, #0xc]
	ldr r3, [sp, #4]
	add r2, r7, #0
	bl sub_020AE4F0
	ldr r0, [sp]
	ldr r1, [r5, #0x10]
	bl sub_020AE77C
	ldr r1, _0224A290 ; =ov9_0224A4C8
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02021444
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0224A28C
	bl sub_02062920
	strh r0, [r5, #0x14]
_0224A28C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A290: .word ov9_0224A4C8
	thumb_func_end ov9_0224A228

	thumb_func_start ov9_0224A294
ov9_0224A294: ; 0x0224A294
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _0224A2A8
	add r0, #0x10
	bl sub_020B2CD8
	mov r0, #0
	str r0, [r4, #0x10]
_0224A2A8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A294

	thumb_func_start ov9_0224A2AC
ov9_0224A2AC: ; 0x0224A2AC
	push {r4, lr}
	add r4, r1, #0
	bl ov9_0224A294
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov9_0224A2AC

	thumb_func_start ov9_0224A2C0
ov9_0224A2C0: ; 0x0224A2C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0224A2E2
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _0224A2E2
	bl ov5_021EB1A0
	add r2, r0, #0
	beq _0224A2E2
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224A228
_0224A2E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224A2C0

	thumb_func_start ov9_0224A2E4
ov9_0224A2E4: ; 0x0224A2E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0224A320
	bl sub_02062CF8
	cmp r0, #0
	bne _0224A2FA
	mov r0, #1
	pop {r4, pc}
_0224A2FA:
	ldr r0, [r4, #0x18]
	bl sub_02062910
	ldrh r1, [r4, #0x16]
	cmp r1, r0
	beq _0224A30A
	mov r0, #1
	pop {r4, pc}
_0224A30A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224A32E
	ldr r0, [r4, #0x18]
	bl sub_02062920
	ldrh r1, [r4, #0x14]
	cmp r1, r0
	beq _0224A32E
	mov r0, #2
	pop {r4, pc}
_0224A320:
	ldr r0, [r4, #0x1c]
	bl sub_02021404
	cmp r0, #0
	bne _0224A32E
	mov r0, #1
	pop {r4, pc}
_0224A32E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A2E4

	thumb_func_start ov9_0224A334
ov9_0224A334: ; 0x0224A334
	push {r4, r5, r6, lr}
	mov r1, #0x62
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, #0]
	mov r6, #0
	ldr r5, [r4, #4]
	cmp r0, #0
	ble _0224A35A
	ble _0224A35A
_0224A348:
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224A2AC
	ldr r0, [r4, #0]
	add r6, r6, #1
	add r5, #0x20
	cmp r6, r0
	blt _0224A348
_0224A35A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224A368
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
_0224A368:
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov9_0224A334

	thumb_func_start ov9_0224A374
ov9_0224A374: ; 0x0224A374
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r2, #0xc
	strh r2, [r4]
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	cmp r1, #0
	beq _0224A38E
	add r0, r1, #0
	str r1, [r4, #0x18]
	bl sub_02062910
	strh r0, [r4, #0x16]
_0224A38E:
	pop {r4, pc}
	thumb_func_end ov9_0224A374

	thumb_func_start ov9_0224A390
ov9_0224A390: ; 0x0224A390
	push {r3, r4, r5, lr}
	mov r4, #0x62
	lsl r4, r4, #2
	add r4, r0, r4
	ldr r5, [r4, #0]
	mov r3, #0
	ldr r0, [r4, #4]
	cmp r5, #0
	ble _0224A3BC
_0224A3A2:
	ldr r4, [r0, #0x18]
	cmp r4, #0
	bne _0224A3B4
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _0224A3B4
	bl ov9_0224A374
	pop {r3, r4, r5, pc}
_0224A3B4:
	add r3, r3, #1
	add r0, #0x20
	cmp r3, r5
	blt _0224A3A2
_0224A3BC:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A390

	thumb_func_start ov9_0224A3C4
ov9_0224A3C4: ; 0x0224A3C4
	push {r4, r5, r6, lr}
	mov r3, #0x62
	lsl r3, r3, #2
	add r4, r0, r3
	ldr r0, [r4, #0]
	add r6, r1, #0
	mov r1, #0
	ldr r5, [r4, #4]
	cmp r0, #0
	ble _0224A400
_0224A3D8:
	ldr r3, [r5, #0x18]
	cmp r3, #0
	bne _0224A3F8
	ldr r3, [r5, #0x1c]
	cmp r3, #0
	bne _0224A3F8
	add r0, r5, #0
	mov r1, #0
	bl ov9_0224A374
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov9_0224A228
	pop {r4, r5, r6, pc}
_0224A3F8:
	add r1, r1, #1
	add r5, #0x20
	cmp r1, r0
	blt _0224A3D8
_0224A400:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A3C4

	thumb_func_start ov9_0224A408
ov9_0224A408: ; 0x0224A408
	push {r3, r4, r5, lr}
	mov r2, #0x62
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r5, [r0, #0]
	mov r3, #0
	ldr r4, [r0, #4]
	cmp r5, #0
	ble _0224A430
_0224A41A:
	ldr r2, [r4, #0x1c]
	cmp r2, r1
	bne _0224A428
	add r1, r4, #0
	bl ov9_0224A2AC
	pop {r3, r4, r5, pc}
_0224A428:
	add r3, r3, #1
	add r4, #0x20
	cmp r3, r5
	blt _0224A41A
_0224A430:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A408

	thumb_func_start ov9_0224A438
ov9_0224A438: ; 0x0224A438
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x18]
	add r5, r1, #0
	cmp r0, #0
	bne _0224A44A
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224A49A
_0224A44A:
	add r0, r4, #0
	bl ov9_0224A2E4
	cmp r0, #1
	bne _0224A45E
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224A2AC
	pop {r3, r4, r5, pc}
_0224A45E:
	cmp r0, #2
	bne _0224A46A
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224A294
_0224A46A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224A2C0
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _0224A49A
	sub r0, r0, #1
	strh r0, [r4, #2]
	ldr r1, [r4, #8]
	add r0, r4, #4
	bl ov9_02250F1C
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224A496
	mov r0, #0
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #4]
_0224A496:
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
_0224A49A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224A438

	thumb_func_start ov9_0224A49C
ov9_0224A49C: ; 0x0224A49C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	add r4, r7, r0
	ldr r0, [r4, #0]
	mov r6, #0
	ldr r5, [r4, #4]
	cmp r0, #0
	ble _0224A4C6
	ble _0224A4C6
_0224A4B2:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov9_0224A438
	ldr r0, [r4, #0]
	add r6, r6, #1
	add r5, #0x20
	cmp r6, r0
	blt _0224A4B2
_0224A4C6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224A49C

	thumb_func_start ov9_0224A4C8
ov9_0224A4C8: ; 0x0224A4C8
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x10]
	str r2, [r0, #0]
	bx lr
	thumb_func_end ov9_0224A4C8

	thumb_func_start ov9_0224A4D0
ov9_0224A4D0: ; 0x0224A4D0
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0x62
	add r4, r0, #0
	lsl r2, r2, #2
	add r2, r4, r2
	add r6, r3, #0
	add r0, r1, #0
	ldr r3, [r2, #0]
	mov r1, #0
	ldr r4, [r2, #4]
	cmp r3, #0
	ble _0224A518
_0224A4EA:
	ldr r2, [r4, #0x18]
	cmp r2, r0
	bne _0224A510
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, r6, #0
	lsl r0, r0, #0xc
	str r0, [r4, #4]
	lsl r0, r5, #0xc
	bl sub_020E1F6C
	str r0, [r4, #8]
	lsl r1, r5, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	strh r6, [r4, #2]
	bl ov9_02250EE8
	pop {r4, r5, r6, pc}
_0224A510:
	add r1, r1, #1
	add r4, #0x20
	cmp r1, r3
	blt _0224A4EA
_0224A518:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A4D0

	thumb_func_start ov9_0224A520
ov9_0224A520: ; 0x0224A520
	push {r3, r4}
	ldr r0, [r0, #4]
	mov r3, #0
	ldr r2, [r0, #0x24]
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, r2, r0
	ldr r4, [r0, #0]
	ldr r2, [r0, #4]
	cmp r4, #0
	ble _0224A552
_0224A536:
	ldr r0, [r2, #0x18]
	cmp r0, r1
	bne _0224A54A
	ldr r1, [r2, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	pop {r3, r4}
	bx lr
_0224A54A:
	add r3, r3, #1
	add r2, #0x20
	cmp r3, r4
	blt _0224A536
_0224A552:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov9_0224A520

	thumb_func_start ov9_0224A558
ov9_0224A558: ; 0x0224A558
	ldr r0, [r0, #4]
	ldr r3, _0224A560 ; =ov9_0224A3C4
	ldr r0, [r0, #0x24]
	bx r3
	; .align 2, 0
_0224A560: .word ov9_0224A3C4
	thumb_func_end ov9_0224A558

	thumb_func_start ov9_0224A564
ov9_0224A564: ; 0x0224A564
	ldr r0, [r0, #4]
	ldr r3, _0224A56C ; =ov9_0224A408
	ldr r0, [r0, #0x24]
	bx r3
	; .align 2, 0
_0224A56C: .word ov9_0224A408
	thumb_func_end ov9_0224A564

	thumb_func_start ov9_0224A570
ov9_0224A570: ; 0x0224A570
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224A570

	thumb_func_start ov9_0224A574
ov9_0224A574: ; 0x0224A574
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224A574

	thumb_func_start ov9_0224A578
ov9_0224A578: ; 0x0224A578
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x80
	ble _0224A586
	bl sub_02022974
_0224A586:
	add r5, #0x58
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A578

	thumb_func_start ov9_0224A598
ov9_0224A598: ; 0x0224A598
	add r0, #0x58
	bx lr
	thumb_func_end ov9_0224A598

	thumb_func_start ov9_0224A59C
ov9_0224A59C: ; 0x0224A59C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #9
	bne _0224A668
	ldr r0, [r6, #4]
	add r1, r5, #0
	ldr r4, [r0, #0x24]
	ldr r0, [r6, #0x3c]
	bl sub_02061434
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl ov9_02250F44
	cmp r6, #1
	bne _0224A5E0
	str r5, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r4, #0
	bl ov9_0224B748
_0224A5E0:
	str r5, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r4, #0
	bl ov9_0224A8A0
	str r5, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r4, #0
	bl ov9_0224AA00
	cmp r0, #1
	bne _0224A606
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224A606:
	add r0, r4, #0
	bl ov9_022510D0
	ldr r1, _0224A670 ; =0x00000241
	cmp r0, r1
	bne _0224A63A
	cmp r5, #3
	bne _0224A668
	ldr r0, [sp, #0xc]
	cmp r0, #0x68
	bne _0224A668
	ldr r0, [sp, #8]
	cmp r0, #0xaa
	bne _0224A668
	ldr r0, [sp, #4]
	cmp r0, #0x4c
	blt _0224A668
	cmp r0, #0x4f
	bgt _0224A668
	ldr r1, _0224A674 ; =0x02251438
	add r0, r4, #0
	bl ov9_0224E498
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224A63A:
	add r1, r1, #2
	cmp r0, r1
	bne _0224A668
	cmp r5, #3
	bne _0224A668
	ldr r0, [sp, #0xc]
	cmp r0, #0x68
	bne _0224A668
	ldr r0, [sp, #8]
	cmp r0, #0x80
	bne _0224A668
	ldr r0, [sp, #4]
	cmp r0, #0x4c
	blt _0224A668
	cmp r0, #0x4f
	bgt _0224A668
	ldr r1, _0224A678 ; =0x022513D8
	add r0, r4, #0
	bl ov9_0224E498
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224A668:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0224A670: .word 0x00000241
_0224A674: .word 0x02251438
_0224A678: .word 0x022513D8
	thumb_func_end ov9_0224A59C

	thumb_func_start ov9_0224A67C
ov9_0224A67C: ; 0x0224A67C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	ldr r6, [r0, #0x24]
	add r0, r6, #0
	bl ov9_022510D0
	ldr r1, _0224A718 ; =0x00000245
	cmp r0, r1
	beq _0224A69C
	add r1, r1, #1
	cmp r0, r1
	beq _0224A6DE
	b _0224A710
_0224A69C:
	cmp r4, #0
	bne _0224A710
	ldr r0, [r6, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B5D8
	cmp r0, #0xa
	blo _0224A710
	add r0, r6, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov9_02250F44
	ldr r0, [sp, #0x14]
	cmp r0, #0x59
	bne _0224A710
	ldr r0, [sp, #0x10]
	cmp r0, #0x41
	bne _0224A710
	ldr r0, [sp, #0xc]
	cmp r0, #0x39
	bne _0224A710
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_0203E880
	add sp, #0x18
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224A6DE:
	cmp r4, #1
	bne _0224A710
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl ov9_02250F44
	ldr r0, [sp, #8]
	cmp r0, #0xf
	bne _0224A710
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0224A710
	ldr r0, [sp]
	cmp r0, #0x19
	bne _0224A710
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl sub_0203E880
	add sp, #0x18
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224A710:
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0224A718: .word 0x00000245
	thumb_func_end ov9_0224A67C

	thumb_func_start ov9_0224A71C
ov9_0224A71C: ; 0x0224A71C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #9
	beq _0224A738
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224A738:
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r7, r0, #0
	ldr r0, [r5, #4]
	add r1, sp, #8
	ldr r4, [r0, #0x24]
	add r2, sp, #4
	add r0, r4, #0
	add r3, sp, #0
	bl ov9_02250F44
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp]
	add r0, r4, #0
	bl ov9_0224D040
	cmp r0, #1
	bne _0224A766
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A766:
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp]
	add r0, r4, #0
	bl ov9_0224E434
	cmp r0, #1
	bne _0224A77C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A77C:
	add r0, r4, #0
	bl ov9_022510D0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r1, _0224A7F8 ; =0x00000245
	cmp r6, r1
	bne _0224A7C2
	cmp r7, #0
	bne _0224A7C2
	bl sub_0206B5D8
	cmp r0, #0xa
	blo _0224A7F0
	ldr r0, [sp, #8]
	cmp r0, #0x59
	bne _0224A7F0
	ldr r0, [sp, #4]
	cmp r0, #0x41
	bne _0224A7F0
	ldr r0, [sp]
	sub r0, #0x38
	cmp r0, #1
	bhi _0224A7F0
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_0203E880
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A7C2:
	ldr r0, _0224A7FC ; =0x00000246
	cmp r6, r0
	bne _0224A7F0
	cmp r7, #1
	bne _0224A7F0
	ldr r0, [sp, #8]
	cmp r0, #0xf
	bne _0224A7F0
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0224A7F0
	ldr r0, [sp]
	sub r0, #0x19
	cmp r0, #1
	bhi _0224A7F0
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl sub_0203E880
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A7F0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224A7F8: .word 0x00000245
_0224A7FC: .word 0x00000246
	thumb_func_end ov9_0224A71C

	thumb_func_start ov9_0224A800
ov9_0224A800: ; 0x0224A800
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	ldr r6, [r0, #0x24]
	add r0, r6, #0
	bl ov9_022510D0
	ldr r1, _0224A89C ; =0x00000245
	cmp r0, r1
	beq _0224A820
	add r1, r1, #1
	cmp r0, r1
	beq _0224A862
	b _0224A894
_0224A820:
	cmp r4, #0
	bne _0224A894
	ldr r0, [r6, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B5D8
	cmp r0, #0xa
	blo _0224A894
	add r0, r6, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov9_02250F44
	ldr r0, [sp, #0x14]
	cmp r0, #0x59
	bne _0224A894
	ldr r0, [sp, #0x10]
	cmp r0, #0x41
	bne _0224A894
	ldr r0, [sp, #0xc]
	cmp r0, #0x39
	bne _0224A894
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_0203E880
	add sp, #0x18
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224A862:
	cmp r4, #1
	bne _0224A894
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl ov9_02250F44
	ldr r0, [sp, #8]
	cmp r0, #0xf
	bne _0224A894
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0224A894
	ldr r0, [sp]
	cmp r0, #0x19
	bne _0224A894
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl sub_0203E880
	add sp, #0x18
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224A894:
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0224A89C: .word 0x00000245
	thumb_func_end ov9_0224A800

	thumb_func_start ov9_0224A8A0
ov9_0224A8A0: ; 0x0224A8A0
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	add r5, r0, #0
	str r4, [sp]
	bl ov9_0224C740
	add r1, r0, #0
	bne _0224A8B4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A8B4:
	add r0, r5, #0
	bl ov9_0224A148
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A8A0

	thumb_func_start ov9_0224A8C0
ov9_0224A8C0: ; 0x0224A8C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r3, _0224A9D8 ; =0x02251588
	add r2, sp, #0x20
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	str r0, [sp, #0x10]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl ov9_02250F44
	ldr r0, [sp, #0xc]
	bl ov9_0224C494
	bl ov9_022510D8
	add r5, r0, #0
	cmp r5, #1
	bne _0224A90A
	add r0, r6, #0
	mov r1, #0
	bl sub_02062E28
	b _0224A912
_0224A90A:
	add r0, r6, #0
	mov r1, #1
	bl sub_02062E28
_0224A912:
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl sub_0205F098
	add r0, r6, #0
	mov r7, #0
	bl sub_02062920
	add r4, r0, #0
	cmp r4, #0xb3
	bhi _0224A942
	cmp r4, #0xb2
	blo _0224A934
	beq _0224A96E
	cmp r4, #0xb3
	beq _0224A974
	b _0224A97A
_0224A934:
	cmp r4, #0
	bhi _0224A93C
	beq _0224A966
	b _0224A97A
_0224A93C:
	cmp r4, #0x61
	beq _0224A96A
	b _0224A97A
_0224A942:
	ldr r0, _0224A9DC ; =0x00000102
	cmp r4, r0
	bhi _0224A950
	bhs _0224A96E
	cmp r4, #0xd4
	beq _0224A966
	b _0224A97A
_0224A950:
	add r1, r0, #5
	cmp r4, r1
	bhi _0224A97A
	add r1, r0, #1
	cmp r4, r1
	blo _0224A97A
	beq _0224A974
	add r0, r0, #5
	cmp r4, r0
	beq _0224A96A
	b _0224A97A
_0224A966:
	mov r4, #0xd4
	b _0224A97E
_0224A96A:
	ldr r4, _0224A9E0 ; =0x00000107
	b _0224A97E
_0224A96E:
	ldr r4, _0224A9DC ; =0x00000102
	mov r7, #2
	b _0224A97E
_0224A974:
	ldr r4, _0224A9E4 ; =0x00000103
	mov r7, #2
	b _0224A97E
_0224A97A:
	bl sub_02022974
_0224A97E:
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	bl sub_0205EB58
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02061AD4
	cmp r5, #1
	beq _0224A9A0
	add r0, r6, #0
	bl sub_02062E44
	cmp r0, #1
	beq _0224A9A0
	bl sub_02022974
_0224A9A0:
	cmp r7, #2
	bne _0224A9C6
	ldr r0, [sp, #0x10]
	bl sub_0205EA78
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x14]
	bl ov5_021F85BC
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_0205EC00
_0224A9C6:
	lsl r3, r5, #2
	add r2, sp, #0x20
	ldr r0, [sp, #0xc]
	ldr r2, [r2, r3]
	add r1, r6, #0
	bl ov9_0224A390
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A9D8: .word 0x02251588
_0224A9DC: .word 0x00000102
_0224A9E0: .word 0x00000107
_0224A9E4: .word 0x00000103
	thumb_func_end ov9_0224A8C0

	thumb_func_start ov9_0224A9E8
ov9_0224A9E8: ; 0x0224A9E8
	push {r4, lr}
	ldr r0, [r0, #0]
	mov r1, #0
	ldr r4, [r0, #0x3c]
	add r0, r4, #0
	bl sub_0205F098
	add r0, r4, #0
	bl sub_0205EBC0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224A9E8

	thumb_func_start ov9_0224AA00
ov9_0224AA00: ; 0x0224AA00
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	add r5, r0, #0
	str r4, [sp]
	bl ov9_0224C69C
	add r4, r0, #0
	beq _0224AA2A
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	ldrh r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _0224AA30 ; =0x02251224
	ldr r2, [r2, r3]
	blx r2
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224AA2A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224AA30: .word 0x02251224
	thumb_func_end ov9_0224AA00

	thumb_func_start ov9_0224AA34
ov9_0224AA34: ; 0x0224AA34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x5c
	add r7, r0, #0
	bl ov9_0224A578
	add r4, r0, #0
	add r3, r4, #0
	add r6, r5, #0
	add r3, #0x34
	mov r2, #5
_0224AA4A:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224AA4A
	mov r1, #0x1c
	ldrsh r0, [r5, r1]
	str r0, [r4, #4]
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	lsl r0, r0, #0x10
	bl sub_020E1F6C
	str r0, [r4, #8]
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	mov r1, #0x1c
	ldrsh r1, [r5, r1]
	lsl r0, r0, #0x10
	bl sub_020E1F6C
	str r0, [r4, #0xc]
	mov r0, #0x18
	ldrsh r0, [r5, r0]
	mov r1, #0x1c
	ldrsh r1, [r5, r1]
	lsl r0, r0, #0x10
	bl sub_020E1F6C
	str r0, [r4, #0x10]
	mov r1, #0x1c
	mov r0, #1
	ldrsh r1, [r5, r1]
	lsl r0, r0, #0x10
	bl sub_020E1F6C
	add r3, r4, #0
	add r2, r4, #0
	add r3, #8
	str r0, [r4, #0x18]
	ldmia r3!, {r0, r1}
	add r2, #0x28
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bge _0224AAAE
	neg r0, r0
	str r0, [r4, #0x28]
_0224AAAE:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bge _0224AAB8
	neg r0, r0
	str r0, [r4, #0x2c]
_0224AAB8:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bge _0224AAC2
	neg r0, r0
	str r0, [r4, #0x30]
_0224AAC2:
	ldr r0, [r7, #0]
	ldr r1, _0224AAD0 ; =ov9_0224AAD4
	add r2, r7, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AAD0: .word ov9_0224AAD4
	thumb_func_end ov9_0224AA34

	thumb_func_start ov9_0224AAD4
ov9_0224AAD4: ; 0x0224AAD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	str r0, [sp, #4]
	bl ov9_0224A598
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	str r0, [sp]
	bl sub_0205EB3C
	ldr r1, [r4, #0]
	add r6, r0, #0
	cmp r1, #3
	bhi _0224AB20
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224AB0A: ; jump table
	.short _0224AB12 - _0224AB0A - 2 ; case 0
	.short _0224AB18 - _0224AB0A - 2 ; case 1
	.short _0224ABAE - _0224AB0A - 2 ; case 2
	.short _0224AC20 - _0224AB0A - 2 ; case 3
_0224AB12:
	add r0, r1, #1
	str r0, [r4, #0]
	b _0224AC40
_0224AB18:
	bl sub_020655F4
	cmp r0, #0
	bne _0224AB22
_0224AB20:
	b _0224AC40
_0224AB22:
	mov r0, #0x36
	ldrsh r5, [r4, r0]
	ldr r0, [sp, #4]
	bl ov9_0224C470
	cmp r0, #4
	bhi _0224AB80
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224AB3C: ; jump table
	.short _0224AB80 - _0224AB3C - 2 ; case 0
	.short _0224AB46 - _0224AB3C - 2 ; case 1
	.short _0224AB5A - _0224AB3C - 2 ; case 2
	.short _0224AB6E - _0224AB3C - 2 ; case 3
	.short _0224AB80 - _0224AB3C - 2 ; case 4
_0224AB46:
	ldr r3, _0224AC48 ; =0x02251458
	add r2, sp, #0x28
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r5, #2
	ldr r5, [r7, r0]
	b _0224AB80
_0224AB5A:
	ldr r3, _0224AC4C ; =0x022513A8
	add r2, sp, #0x18
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r5, #2
	ldr r5, [r7, r0]
	b _0224AB80
_0224AB6E:
	ldr r3, _0224AC50 ; =0x02251418
	add r2, sp, #8
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r5, #2
	ldr r5, [r7, r0]
_0224AB80:
	add r0, r5, #0
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02065638
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
	mov r2, #0x4e
	mov r3, #0x50
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl ov9_0224A4D0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224ABAE:
	add r0, r4, #0
	add r1, r6, #0
	bl ov9_0224AC58
	cmp r0, #1
	bne _0224AC40
	ldr r0, [sp]
	mov r5, #0
	bl sub_0205EB3C
	add r1, r4, #0
	add r1, #0x5a
	add r6, r0, #0
	ldrh r1, [r1]
	ldr r0, [sp, #4]
	bl ov9_0224C3F8
	mov r0, #0x58
	ldrsh r0, [r4, r0]
	bl ov9_022510D8
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0205F098
	ldr r0, [sp]
	bl sub_0205EBC0
	add r0, r6, #0
	mov r1, #1
	bl sub_02062E28
	mov r0, #0x58
	ldrsh r0, [r4, r0]
	cmp r0, #1
	beq _0224AC00
	cmp r0, #2
	beq _0224AC04
	cmp r0, #3
	beq _0224AC08
	b _0224AC0A
_0224AC00:
	mov r5, #2
	b _0224AC0A
_0224AC04:
	mov r5, #1
	b _0224AC0A
_0224AC08:
	mov r5, #3
_0224AC0A:
	add r0, r6, #0
	add r1, r5, #0
	bl ov5_021F3678
	ldr r0, _0224AC54 ; =0x00000647
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224AC40
_0224AC20:
	bl sub_020655F4
	cmp r0, #0
	beq _0224AC40
	mov r0, #0x56
	ldrsh r0, [r4, r0]
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02065638
	add sp, #0x38
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224AC40:
	mov r0, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AC48: .word 0x02251458
_0224AC4C: .word 0x022513A8
_0224AC50: .word 0x02251418
_0224AC54: .word 0x00000647
	thumb_func_end ov9_0224AAD4

	thumb_func_start ov9_0224AC58
ov9_0224AC58: ; 0x0224AC58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r5, #0
	add r0, r6, #0
	add r1, sp, #4
	add r4, #0x34
	bl sub_02063050
	ldr r1, [sp, #4]
	ldr r0, [r5, #8]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r5, #0xc]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, sp, #4
	bl sub_02063060
	add r0, r5, #0
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x28]
	add r0, #0x1c
	add r2, r2, r1
	mov r1, #1
	lsl r1, r1, #0x10
	str r2, [r5, #0x1c]
	cmp r2, r1
	blt _0224ACC4
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_02063020
	add r1, r0, #0
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0224ACBA
	add r1, r1, #1
	b _0224ACBE
_0224ACBA:
	bge _0224ACBE
	sub r1, r1, #1
_0224ACBE:
	add r0, r6, #0
	bl sub_02063024
_0224ACC4:
	ldr r2, [r5, #0x20]
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	add r2, r2, r1
	mov r1, #2
	lsl r1, r1, #0xe
	add r0, #0x20
	str r2, [r5, #0x20]
	cmp r2, r1
	blt _0224ACFC
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_02063030
	add r1, r0, #0
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0224ACF2
	add r1, r1, #1
	b _0224ACF6
_0224ACF2:
	bge _0224ACF6
	sub r1, r1, #1
_0224ACF6:
	add r0, r6, #0
	bl sub_02063034
_0224ACFC:
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	add r2, r2, r1
	mov r1, #1
	lsl r1, r1, #0x10
	add r0, #0x24
	str r2, [r5, #0x24]
	cmp r2, r1
	blt _0224AD34
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_02063040
	add r1, r0, #0
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0224AD2A
	add r1, r1, #1
	b _0224AD2E
_0224AD2A:
	bge _0224AD2E
	sub r1, r1, #1
_0224AD2E:
	add r0, r6, #0
	bl sub_02063044
_0224AD34:
	add r0, r6, #0
	bl sub_02063098
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r1, r2, r1
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	str r1, [r5, #0x14]
	asr r1, r2, #0xc
	str r1, [sp]
	ldrh r1, [r4, #0x1e]
	cmp r1, #0
	beq _0224AD5C
	cmp r1, #1
	beq _0224AD60
	cmp r1, #2
	beq _0224AD64
	b _0224AD6A
_0224AD5C:
	add r7, r0, #0
	b _0224AD6E
_0224AD60:
	add r7, r0, #4
	b _0224AD6E
_0224AD64:
	add r7, r0, #0
	add r7, #8
	b _0224AD6E
_0224AD6A:
	bl sub_02022974
_0224AD6E:
	ldr r0, [sp]
	lsl r1, r0, #2
	ldr r0, _0224ADBC ; =0x02252CF8
	ldr r0, [r0, r1]
	str r0, [r7, #0]
	ldrh r0, [r4, #0x20]
	cmp r0, #1
	bne _0224AD84
	ldr r0, [r7, #0]
	neg r0, r0
	str r0, [r7, #0]
_0224AD84:
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0
	bgt _0224ADB6
	mov r0, #0
	str r0, [r7, #0]
	add r0, r6, #0
	bl sub_02064208
	add r0, r6, #0
	bl sub_02062B68
	mov r1, #0x22
	ldrsh r1, [r4, r1]
	add r0, r6, #0
	bl sub_02062974
	add r0, r6, #0
	mov r1, #0
	bl sub_02062A0C
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224ADB6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224ADBC: .word 0x02252CF8
	thumb_func_end ov9_0224AC58

	thumb_func_start ov9_0224ADC0
ov9_0224ADC0: ; 0x0224ADC0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #4
	bl sub_02006CB8
	add r1, sp, #0xc
	add r5, r0, #0
	bl sub_020A71B0
	ldr r1, [sp, #0xc]
	mov r0, #2
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	mov r3, #0
	bl sub_0201972C
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldr r2, [r0, #0xc]
	ldr r0, _0224AED0 ; =0x00001CAC
	add r3, r4, r0
_0224ADF8:
	ldrh r0, [r2]
	add r1, r1, #1
	strh r0, [r3, #8]
	ldrh r0, [r2]
	add r2, r2, #2
	strh r0, [r3, #0x28]
	add r3, r3, #2
	cmp r1, #0x10
	blt _0224ADF8
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r2, #4
	bl sub_02006CB8
	add r1, sp, #8
	add r5, r0, #0
	bl sub_020A7118
	ldr r3, [sp, #8]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, [r3, #0x14]
	ldr r0, [r0, #8]
	ldr r3, [r3, #0x10]
	mov r1, #2
	bl sub_0201958C
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	mov r1, #2
	mov r2, #4
	bl sub_02006CB8
	add r1, sp, #4
	add r5, r0, #0
	bl sub_020A7248
	ldr r3, [sp, #4]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #0
	ldr r0, [r4, #0]
	ldr r3, [r3, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	add r2, #0xc
	bl sub_02019460
	ldr r3, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r3, #0
	ldr r0, [r0, #8]
	ldr r3, [r3, #8]
	mov r1, #2
	add r2, #0xc
	bl sub_02019574
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #8]
	bl sub_02019448
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, _0224AED4 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r3, r1
	strh r3, [r0, #2]
	ldrh r4, [r0, #4]
	mov r3, #3
	bic r4, r2
	orr r3, r4
	strh r3, [r0, #4]
	ldrh r3, [r0, #6]
	bic r3, r2
	strh r3, [r0, #6]
	mov r2, #0x10
	str r2, [sp]
	add r0, #0x48
	mov r2, #0x36
	mov r3, #0
	bl sub_020BF55C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AED0: .word 0x00001CAC
_0224AED4: .word 0x04000008
	thumb_func_end ov9_0224ADC0

	thumb_func_start ov9_0224AED8
ov9_0224AED8: ; 0x0224AED8
	ldr r0, _0224AEE0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
_0224AEE0: .word 0x04000050
	thumb_func_end ov9_0224AED8

	thumb_func_start ov9_0224AEE4
ov9_0224AEE4: ; 0x0224AEE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #0x10
	add r1, r5, #4
	mov r2, #4
	bl sub_020095C4
	str r0, [r5, #0]
	ldr r2, _0224B048 ; =0xFFE00000
	add r0, r5, #4
	mov r1, #0
	bl sub_0200962C
	mov r0, #7
	mov r1, #0
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	add r1, r0, #0
	mov r2, #4
	bl sub_02009714
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #7
	mov r1, #2
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #7
	mov r1, #3
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r6, _0224B04C ; =0x02251E58
	str r0, [r5, r1]
	mov r7, #0
	add r4, r5, #0
_0224AF4A:
	add r0, r7, #0
	add r0, #0xff
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x14]
	ldr r2, [r6, #0]
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	bl sub_0200A3DC
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #7
	blt _0224AF4A
	mov r1, #0xff
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #4
	add r1, #0x31
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0x18
	mov r3, #0
	bl sub_02009B04
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_02009E34
	ldr r2, _0224B050 ; =0x00001CF4
	ldr r1, [sp, #0x10]
	mov r3, #0
	add r1, r1, r2
	ldr r2, [r0, #0xc]
_0224AFB4:
	ldrh r0, [r2]
	add r3, r3, #1
	add r2, r2, #2
	strh r0, [r1]
	add r1, r1, #2
	cmp r3, #0x50
	blt _0224AFB4
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A640
	ldr r4, _0224B054 ; =0x02251E90
	mov r6, #0
	add r7, r5, #0
_0224AFD2:
	add r0, r6, #0
	add r0, #0xff
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x14]
	ldr r2, [r4, #0]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r6, r6, #1
	add r4, r4, #4
	add r7, r7, #4
	cmp r6, #7
	blt _0224AFD2
	ldr r4, _0224B058 ; =0x02251EAC
	mov r6, #0
	add r7, r5, #0
_0224B006:
	add r0, r6, #0
	add r0, #0xff
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x14]
	ldr r2, [r4, #0]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r6, r6, #1
	add r4, r4, #4
	add r7, r7, #4
	cmp r6, #7
	blt _0224B006
	ldr r0, _0224B05C ; =ov9_0224B124
	ldr r2, _0224B060 ; =0x0000FFFF
	add r1, r5, #0
	bl sub_0200D9E8
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B048: .word 0xFFE00000
_0224B04C: .word 0x02251E58
_0224B050: .word 0x00001CF4
_0224B054: .word 0x02251E90
_0224B058: .word 0x02251EAC
_0224B05C: .word ov9_0224B124
_0224B060: .word 0x0000FFFF
	thumb_func_end ov9_0224AEE4

	thumb_func_start ov9_0224B064
ov9_0224B064: ; 0x0224B064
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200DA58
	mov r7, #0x4f
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0224B07A:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224B084
	bl sub_0200A4E4
_0224B084:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #7
	blt _0224B07A
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224B09A
	bl sub_0200A6DC
_0224B09A:
	mov r7, #0x57
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0224B0A2:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224B0BC
	bl sub_02009D4C
	mov r0, #0x4d
	mov r1, #0x57
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, r1]
	bl sub_02009D68
_0224B0BC:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #7
	blt _0224B0A2
	mov r7, #0x5e
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0224B0CC:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224B0E6
	bl sub_02009D4C
	mov r0, #0x4e
	mov r1, #0x5e
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, r1]
	bl sub_02009D68
_0224B0E6:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #7
	blt _0224B0CC
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	ldr r0, [r5, #0]
	bl sub_020219C0
	ldr r0, [r5, #0]
	bl sub_02021964
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224B064

	thumb_func_start ov9_0224B124
ov9_0224B124: ; 0x0224B124
	ldr r3, _0224B12C ; =sub_020219F8
	ldr r0, [r1, #0]
	bx r3
	nop
_0224B12C: .word sub_020219F8
	thumb_func_end ov9_0224B124

	thumb_func_start ov9_0224B130
ov9_0224B130: ; 0x0224B130
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	ldr r0, [sp, #0x84]
	add r4, r1, #0
	add r0, #0xff
	str r0, [sp]
	mov r0, #0
	add r1, r2, #0
	add r2, r3, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0
	ldr r0, [sp, #0x88]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r1, #0xff
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r5, r6]
	add r2, #0xff
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r5, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r3, [sp, #0x80]
	add r0, sp, #0x4c
	add r3, #0xff
	bl sub_020093B4
	ldr r0, [r5, #0]
	add r2, sp, #0x34
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x8c]
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #4
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	add r4, r0, #0
	bne _0224B1AC
	bl sub_02022974
_0224B1AC:
	add r0, r4, #0
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_0224B130

	thumb_func_start ov9_0224B1B4
ov9_0224B1B4: ; 0x0224B1B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r1, #0
	add r5, r2, #0
	ldr r1, _0224B22C ; =0x00001E6E
	add r4, r0, #0
	mov r2, #0
	strh r2, [r4, r1]
	bl ov9_022510D0
	ldr r1, _0224B230 ; =0x00000246
	cmp r0, r1
	bne _0224B1F4
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B5D8
	cmp r0, #0xa
	blo _0224B1F4
	cmp r0, #0xc
	bhi _0224B1EA
	ldr r0, _0224B22C ; =0x00001E6E
	mov r1, #1
	strh r1, [r4, r0]
	b _0224B1F4
_0224B1EA:
	cmp r0, #0xd
	bhi _0224B1F4
	ldr r0, _0224B22C ; =0x00001E6E
	mov r1, #2
	strh r1, [r4, r0]
_0224B1F4:
	str r5, [sp, #0x3c]
	str r4, [sp, #8]
	ldr r5, _0224B234 ; =0x02253680
	mov r4, #0
_0224B1FC:
	add r6, r5, #0
	add r3, sp, #0xc
	mov r2, #6
_0224B202:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224B202
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0
	mov r2, #0
	str r0, [sp, #4]
	ldr r1, _0224B238 ; =0x02251508
	add r0, r7, #0
	add r3, r2, #0
	bl ov5_021DF72C
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #9
	blt _0224B1FC
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B22C: .word 0x00001E6E
_0224B230: .word 0x00000246
_0224B234: .word 0x02253680
_0224B238: .word 0x02251508
	thumb_func_end ov9_0224B1B4

	thumb_func_start ov9_0224B23C
ov9_0224B23C: ; 0x0224B23C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r2, sp, #0x10
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	bl sub_020715BC
	add r2, r0, #0
	add r5, r4, #0
	add r6, r2, #0
	add r5, #8
	mov r3, #7
_0224B25A:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0224B25A
	ldr r0, [r4, #0x14]
	ldr r3, _0224B2B0 ; =0x02252C08
	str r0, [r4, #0]
	ldr r1, [r2, #0]
	ldr r0, _0224B2B4 ; =0x00001E6E
	ldrh r0, [r1, r0]
	lsl r5, r0, #4
	ldr r0, [r2, #8]
	lsl r1, r0, #2
	add r0, r3, r5
	ldr r0, [r1, r0]
	ldr r3, _0224B2B8 ; =0x02251EC8
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	lsl r2, r0, #2
	add r5, r3, r2
	ldrb r0, [r5, #2]
	str r0, [sp]
	ldrb r0, [r5, #3]
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _0224B2BC ; =0x0000FFFF
	str r0, [sp, #0xc]
	ldrb r2, [r3, r2]
	ldrb r3, [r5, #1]
	ldr r0, [r4, #0x3c]
	bl ov9_0224B130
	str r0, [r4, #0x40]
	add r4, #0x30
	add r1, r4, #0
	mov r2, #2
	bl sub_02021C80
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224B2B0: .word 0x02252C08
_0224B2B4: .word 0x00001E6E
_0224B2B8: .word 0x02251EC8
_0224B2BC: .word 0x0000FFFF
	thumb_func_end ov9_0224B23C

	thumb_func_start ov9_0224B2C0
ov9_0224B2C0: ; 0x0224B2C0
	ldr r3, _0224B2C8 ; =sub_02021BD4
	ldr r0, [r1, #0x40]
	bx r3
	nop
_0224B2C8: .word sub_02021BD4
	thumb_func_end ov9_0224B2C0

	thumb_func_start ov9_0224B2CC
ov9_0224B2CC: ; 0x0224B2CC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #8]
	ldr r0, _0224B39C ; =0x00001E6E
	ldr r2, _0224B3A0 ; =0x02252C08
	ldrh r0, [r1, r0]
	lsl r3, r0, #4
	ldr r0, [r4, #0x10]
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r0, [r1, r0]
	ldr r2, [r4, #4]
	cmp r0, r2
	bge _0224B2FC
	mov r1, #2
	lsl r1, r1, #8
	sub r1, r2, r1
	str r1, [r4, #4]
	cmp r0, r1
	ble _0224B30E
	str r0, [r4, #4]
	b _0224B30E
_0224B2FC:
	cmp r0, r2
	ble _0224B30E
	mov r1, #2
	lsl r1, r1, #8
	add r1, r2, r1
	str r1, [r4, #4]
	cmp r0, r1
	bge _0224B30E
	str r0, [r4, #4]
_0224B30E:
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #4]
	add r0, r4, #0
	add r1, r2, r1
	bl ov9_02250F1C
	ldr r0, [r4, #0]
	str r0, [sp]
	ldr r1, [r4, #0x18]
	add r0, sp, #0
	bl ov9_02250F1C
	add r3, r4, #0
	add r3, #0x24
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r4, #0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	ldr r1, [r4, #0x1c]
	ldr r2, [sp, #4]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #4]
	ldr r1, [r4, #0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D15C
	ldr r2, [r4, #0x1c]
	ldr r1, [sp, #8]
	add r3, r2, #0
	mul r3, r0
	mov r0, #2
	lsl r0, r0, #0x14
	sub r0, r3, r0
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #4
	bl sub_020715D4
	ldr r0, [r4, #0x40]
	add r1, sp, #4
	bl sub_02021C50
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_02021C94
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B39C: .word 0x00001E6E
_0224B3A0: .word 0x02252C08
	thumb_func_end ov9_0224B2CC

	thumb_func_start ov9_0224B3A4
ov9_0224B3A4: ; 0x0224B3A4
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224B3A4

	thumb_func_start ov9_0224B3A8
ov9_0224B3A8: ; 0x0224B3A8
	push {r4, lr}
	sub sp, #0x28
	ldr r0, [r0, #0]
	mov r1, #6
	ldr r4, [r0, #0x48]
	mov r0, #0x76
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	sub r1, r1, #7
	mov r2, #1
	mov r3, #0
	bl ov5_021D57FC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	mov r3, #0x10
	bl ov5_021D5834
	mov r0, #0
	add r1, r0, #0
	add r2, sp, #8
_0224B3DA:
	add r0, r0, #1
	strb r1, [r2]
	add r1, r1, #2
	add r2, r2, #1
	cmp r0, #0x20
	blt _0224B3DA
	add r0, r4, #0
	add r1, sp, #8
	bl ov5_021D585C
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224B3A8

	thumb_func_start ov9_0224B3F4
ov9_0224B3F4: ; 0x0224B3F4
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224B3F4

	thumb_func_start ov9_0224B3F8
ov9_0224B3F8: ; 0x0224B3F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #8]
	add r5, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0224B40C
	bl sub_02022974
_0224B40C:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	str r0, [r4, #4]
	cmp r0, #0
	bne _0224B436
	bl sub_02022974
_0224B436:
	ldr r0, [r4, #4]
	lsl r5, r0, #2
	mov r0, #4
	add r1, r5, #0
	bl sub_02018184
	mov r1, #0
	add r2, r5, #0
	str r0, [r4, #8]
	bl sub_020D5124
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov9_0224B6CC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224B3F8

	thumb_func_start ov9_0224B45C
ov9_0224B45C: ; 0x0224B45C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	bl ov9_022510D0
	str r0, [sp, #0xc]
	bl ov9_0224D720
	add r0, r5, #0
	bl ov9_0224C27C
	cmp r0, #0
	beq _0224B4C4
	add r0, r5, #0
	ldr r4, _0224B4C8 ; =0x000016B8
	bl ov9_0224C8AC
	add r6, r0, #0
	add r0, r5, #0
	bl ov9_0224C8C4
	str r0, [sp, #8]
	cmp r7, #1
	beq _0224B498
	add r0, r5, #0
	bl ov9_02249D38
	cmp r0, #0
	bne _0224B4A8
_0224B498:
	ldr r0, [r6, #8]
	mvn r0, r0
	str r0, [r5, r4]
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ov9_02249D44
	b _0224B4B0
_0224B4A8:
	add r0, r5, #0
	bl ov9_02249D5C
	str r0, [r5, r4]
_0224B4B0:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, r4]
	add r1, r5, r4
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl ov9_0224B3F8
_0224B4C4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B4C8: .word 0x000016B8
	thumb_func_end ov9_0224B45C

	thumb_func_start ov9_0224B4CC
ov9_0224B4CC: ; 0x0224B4CC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov9_022510D0
	bl ov9_0224D720
	ldr r4, [r0, #8]
	add r0, r5, #0
	bl ov9_0224C288
	cmp r0, #0
	beq _0224B50A
	add r0, r5, #0
	bl ov9_0224C8B8
	add r6, r0, #0
	add r0, r5, #0
	bl ov9_0224C8D0
	ldr r1, _0224B510 ; =0x000016C4
	str r4, [sp]
	add r3, r0, #0
	ldr r0, [r6, #8]
	add r1, r5, r1
	mvn r0, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl ov9_0224B3F8
_0224B50A:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0224B510: .word 0x000016C4
	thumb_func_end ov9_0224B4CC

	thumb_func_start ov9_0224B514
ov9_0224B514: ; 0x0224B514
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov9_0224B45C
	add r0, r4, #0
	bl ov9_0224B4CC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224B514

	thumb_func_start ov9_0224B528
ov9_0224B528: ; 0x0224B528
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0224B55C
	mov r6, #0
	cmp r0, #0
	ble _0224B550
	add r4, r6, #0
_0224B53A:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0224B546
	bl sub_0207136C
_0224B546:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0224B53A
_0224B550:
	ldr r0, [r5, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #8]
	str r0, [r5, #4]
_0224B55C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_0224B528

	thumb_func_start ov9_0224B560
ov9_0224B560: ; 0x0224B560
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224B570
	add r0, r4, #0
	bl ov9_0224B580
	pop {r4, pc}
	thumb_func_end ov9_0224B560

	thumb_func_start ov9_0224B570
ov9_0224B570: ; 0x0224B570
	ldr r1, _0224B578 ; =0x000016B8
	ldr r3, _0224B57C ; =ov9_0224B528
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0224B578: .word 0x000016B8
_0224B57C: .word ov9_0224B528
	thumb_func_end ov9_0224B570

	thumb_func_start ov9_0224B580
ov9_0224B580: ; 0x0224B580
	ldr r1, _0224B588 ; =0x000016C4
	ldr r3, _0224B58C ; =ov9_0224B528
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0224B588: .word 0x000016C4
_0224B58C: .word ov9_0224B528
	thumb_func_end ov9_0224B580

	thumb_func_start ov9_0224B590
ov9_0224B590: ; 0x0224B590
	mov r1, #0x5b
	mov r2, #0
	lsl r1, r1, #6
	str r2, [r0, r1]
	sub r1, r1, #4
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224B590

	thumb_func_start ov9_0224B5A0
ov9_0224B5A0: ; 0x0224B5A0
	ldr r1, _0224B5AC ; =0x000016CC
	mov r2, #0
	str r2, [r0, r1]
	sub r1, r1, #4
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
_0224B5AC: .word 0x000016CC
	thumb_func_end ov9_0224B5A0

	thumb_func_start ov9_0224B5B0
ov9_0224B5B0: ; 0x0224B5B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224B5E0 ; =0x000016CC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224B5C0
	bl sub_02022974
_0224B5C0:
	ldr r0, _0224B5E4 ; =0x000016C8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224B5CC
	bl sub_02022974
_0224B5CC:
	ldr r0, _0224B5E8 ; =0x000016B8
	add r3, r4, r0
	add r0, #0xc
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	pop {r4, pc}
	nop
_0224B5E0: .word 0x000016CC
_0224B5E4: .word 0x000016C8
_0224B5E8: .word 0x000016B8
	thumb_func_end ov9_0224B5B0

	thumb_func_start ov9_0224B5EC
ov9_0224B5EC: ; 0x0224B5EC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224B5FE
	bl sub_02022974
_0224B5FE:
	ldr r0, _0224B61C ; =0x000016BC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224B60A
	bl sub_02022974
_0224B60A:
	ldr r0, _0224B620 ; =0x000016C4
	add r3, r4, r0
	sub r0, #0xc
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	pop {r4, pc}
	; .align 2, 0
_0224B61C: .word 0x000016BC
_0224B620: .word 0x000016C4
	thumb_func_end ov9_0224B5EC

	thumb_func_start ov9_0224B624
ov9_0224B624: ; 0x0224B624
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, _0224B648 ; =0x000016B8
	cmp r4, #0x18
	blo _0224B634
	bl sub_02022974
_0224B634:
	mov r0, #1
	ldr r1, [r5, r6]
	lsl r0, r4
	orr r0, r1
	str r0, [r5, r6]
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ov9_02249D44
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B648: .word 0x000016B8
	thumb_func_end ov9_0224B624

	thumb_func_start ov9_0224B64C
ov9_0224B64C: ; 0x0224B64C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r1
	mvn r4, r0
	ldr r6, _0224B670 ; =0x000016B8
	cmp r1, #0x18
	blo _0224B660
	bl sub_02022974
_0224B660:
	ldr r0, [r5, r6]
	and r0, r4
	str r0, [r5, r6]
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ov9_02249D44
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B670: .word 0x000016B8
	thumb_func_end ov9_0224B64C

	thumb_func_start ov9_0224B674
ov9_0224B674: ; 0x0224B674
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, _0224B694 ; =0x000016B8
	cmp r4, #0x18
	blo _0224B684
	bl sub_02022974
_0224B684:
	mov r0, #1
	add r1, r0, #0
	ldr r2, [r5, r6]
	lsl r1, r4
	tst r1, r2
	bne _0224B692
	mov r0, #0
_0224B692:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B694: .word 0x000016B8
	thumb_func_end ov9_0224B674

	thumb_func_start ov9_0224B698
ov9_0224B698: ; 0x0224B698
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, _0224B6B8 ; =0x000016C4
	cmp r4, #0x18
	blo _0224B6A8
	bl sub_02022974
_0224B6A8:
	mov r0, #1
	add r1, r0, #0
	ldr r2, [r5, r6]
	lsl r1, r4
	tst r1, r2
	bne _0224B6B6
	mov r0, #0
_0224B6B6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B6B8: .word 0x000016C4
	thumb_func_end ov9_0224B698

	thumb_func_start ov9_0224B6BC
ov9_0224B6BC: ; 0x0224B6BC
	ldr r1, _0224B6C4 ; =0x000016B8
	ldr r3, _0224B6C8 ; =ov9_02249D44
	ldr r1, [r0, r1]
	bx r3
	; .align 2, 0
_0224B6C4: .word 0x000016B8
_0224B6C8: .word ov9_02249D44
	thumb_func_end ov9_0224B6BC

	thumb_func_start ov9_0224B6CC
ov9_0224B6CC: ; 0x0224B6CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	str r0, [sp]
	ldr r0, [r7, #4]
	add r6, r2, #0
	str r3, [sp, #4]
	cmp r0, #0
	beq _0224B704
	mov r4, #0
	cmp r0, #0
	ble _0224B704
	ble _0224B704
	add r5, r4, #0
_0224B6E8:
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	add r3, r6, #0
	bl ov9_0224B708
	ldr r1, [r7, #8]
	add r4, r4, #1
	str r0, [r1, r5]
	ldr r0, [r7, #4]
	add r5, r5, #4
	add r6, #0xc
	cmp r4, r0
	blt _0224B6E8
_0224B704:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224B6CC

	thumb_func_start ov9_0224B708
ov9_0224B708: ; 0x0224B708
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldrh r0, [r3, #4]
	lsl r4, r0, #2
	ldr r0, _0224B744 ; =0x02252F6C
	ldr r4, [r0, r4]
	add r0, sp, #8
	strh r1, [r0]
	strh r2, [r0, #2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r2, #0
	str r5, [sp, #0x1c]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	bl ov5_021DF72C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_0224B744: .word 0x02252F6C
	thumb_func_end ov9_0224B708

	thumb_func_start ov9_0224B748
ov9_0224B748: ; 0x0224B748
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x20]
	bl ov9_0224C27C
	cmp r0, #0
	beq _0224B7AC
	add r0, r5, #0
	bl ov9_0224C8AC
	ldr r6, [r0, #4]
	cmp r6, #0
	beq _0224B7AC
	add r0, r5, #0
	bl ov9_0224C8DC
	add r4, r0, #0
_0224B772:
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r7, r0
	bne _0224B7A6
	add r3, r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r3, #8
	bl ov9_02250E6C
	cmp r0, #0
	beq _0224B7A6
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224B79E
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov9_0224B624
	b _0224B7A6
_0224B79E:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov9_0224B64C
_0224B7A6:
	add r4, #0x14
	sub r6, r6, #1
	bne _0224B772
_0224B7AC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224B748

	thumb_func_start ov9_0224B7B0
ov9_0224B7B0: ; 0x0224B7B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _0224B838 ; =0x000016B8
	str r0, [sp]
	add r4, r0, r1
	cmp r7, #0x19
	bne _0224B7C2
	bl sub_02022974
_0224B7C2:
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0224B7F8
	add r5, r6, #0
_0224B7CC:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl sub_020714F0
	cmp r0, #1
	bne _0224B7EE
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl ov9_0224B958
	lsl r1, r0, #3
	ldr r0, _0224B83C ; =0x022531D0
	ldrh r0, [r0, r1]
	cmp r7, r0
	bne _0224B7EE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B7EE:
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0224B7CC
_0224B7F8:
	ldr r1, _0224B840 ; =0x000016C4
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0224B834
	add r4, r6, #0
_0224B808:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	bl sub_020714F0
	cmp r0, #1
	bne _0224B82A
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	bl ov9_0224B958
	lsl r1, r0, #3
	ldr r0, _0224B83C ; =0x022531D0
	ldrh r0, [r0, r1]
	cmp r7, r0
	bne _0224B82A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B82A:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0224B808
_0224B834:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B838: .word 0x000016B8
_0224B83C: .word 0x022531D0
_0224B840: .word 0x000016C4
	thumb_func_end ov9_0224B7B0

	thumb_func_start ov9_0224B844
ov9_0224B844: ; 0x0224B844
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _0224B8D0 ; =0x000016B8
	str r0, [sp]
	add r4, r0, r1
	cmp r7, #5
	bne _0224B856
	bl sub_02022974
_0224B856:
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0224B88E
	add r5, r6, #0
_0224B860:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl sub_020714F0
	cmp r0, #1
	bne _0224B884
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl ov9_0224B958
	lsl r1, r0, #3
	ldr r0, _0224B8D4 ; =0x022531D0
	add r0, r0, r1
	ldrh r0, [r0, #2]
	cmp r7, r0
	bne _0224B884
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B884:
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0224B860
_0224B88E:
	ldr r1, _0224B8D8 ; =0x000016C4
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0224B8CC
	add r4, r6, #0
_0224B89E:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	bl sub_020714F0
	cmp r0, #1
	bne _0224B8C2
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	bl ov9_0224B958
	lsl r1, r0, #3
	ldr r0, _0224B8D4 ; =0x022531D0
	add r0, r0, r1
	ldrh r0, [r0, #2]
	cmp r7, r0
	bne _0224B8C2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B8C2:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0224B89E
_0224B8CC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B8D0: .word 0x000016B8
_0224B8D4: .word 0x022531D0
_0224B8D8: .word 0x000016C4
	thumb_func_end ov9_0224B844

	thumb_func_start ov9_0224B8DC
ov9_0224B8DC: ; 0x0224B8DC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _0224B950 ; =0x000016B8
	str r0, [sp]
	add r4, r0, r1
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0224B916
	add r5, r6, #0
_0224B8F0:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl sub_020714F0
	cmp r0, #1
	bne _0224B90C
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl ov9_0224B958
	cmp r0, r7
	bne _0224B90C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B90C:
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0224B8F0
_0224B916:
	ldr r1, _0224B954 ; =0x000016C4
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0224B94C
	add r4, r6, #0
_0224B926:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	bl sub_020714F0
	cmp r0, #1
	bne _0224B942
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	bl ov9_0224B958
	cmp r0, r7
	bne _0224B942
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B942:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0224B926
_0224B94C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B950: .word 0x000016B8
_0224B954: .word 0x000016C4
	thumb_func_end ov9_0224B8DC

	thumb_func_start ov9_0224B958
ov9_0224B958: ; 0x0224B958
	push {r3, lr}
	bl sub_020715C4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	thumb_func_end ov9_0224B958

	thumb_func_start ov9_0224B964
ov9_0224B964: ; 0x0224B964
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl sub_020715BC
	add r6, r0, #0
	add r2, r5, #0
	add r3, r6, #0
	add r4, r5, #0
	add r2, #0x28
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r4, #0x30
	ldrh r1, [r4, #4]
	add r0, r7, #0
	bl sub_020715C0
	ldrh r1, [r4, #4]
	ldr r0, [r6, #0x14]
	add r2, sp, #0
	bl ov9_0224D8A4
	str r0, [r5, #0x40]
	ldr r0, [sp]
	cmp r0, #0
	bne _0224B9AE
	ldr r3, [r5, #0x40]
	ldrh r1, [r4, #4]
	add r2, r3, #4
	ldr r0, [r5, #0x3c]
	add r3, #0x58
	bl ov9_0224DA48
_0224B9AE:
	ldr r0, [r6, #0x14]
	bl ov9_022510D0
	mov r1, #2
	ldrsh r1, [r6, r1]
	cmp r1, r0
	ldr r0, [r6, #0x14]
	bne _0224B9C6
	ldr r1, [r4, #0]
	bl ov9_0224B674
	b _0224B9CC
_0224B9C6:
	ldr r1, [r4, #0]
	bl ov9_0224B698
_0224B9CC:
	cmp r0, #1
	bne _0224B9D4
	mov r0, #0
	b _0224B9D6
_0224B9D4:
	mov r0, #0x1f
_0224B9D6:
	strb r0, [r5]
	mov r0, #6
	mov r1, #0xa
	add r2, r5, #0
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	add r2, #0x10
	bl sub_02064450
	mov r0, #8
	ldrsh r1, [r4, r0]
	lsl r0, r0, #0xc
	lsl r1, r1, #0x10
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldrh r2, [r4, #4]
	ldr r0, _0224BA44 ; =0x02253298
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	add r1, r0, r3
	ldr r2, [r5, #0x10]
	ldr r0, [r0, r3]
	add r0, r2, r0
	str r0, [r5, #0x10]
	ldr r2, [r5, #0x14]
	ldr r0, [r1, #4]
	add r0, r2, r0
	str r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	ldr r0, [r1, #8]
	add r0, r2, r0
	str r0, [r5, #0x18]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	str r0, [r5, #4]
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0224BA3E
	ldr r0, [r5, #8]
	neg r0, r0
	str r0, [r5, #8]
_0224BA3E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BA44: .word 0x02253298
	thumb_func_end ov9_0224B964

	thumb_func_start ov9_0224BA48
ov9_0224BA48: ; 0x0224BA48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x28
	ldrh r0, [r4, #0xc]
	bl ov9_0224DAEC
	cmp r0, #1
	bne _0224BA62
	ldr r0, [r5, #0x40]
	add r0, #0x58
	bl sub_02073AA8
_0224BA62:
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0x40]
	bl ov9_0224D938
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224BA48

	thumb_func_start ov9_0224BA6C
ov9_0224BA6C: ; 0x0224BA6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x28
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x14]
	bl ov9_022510D0
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	bne _0224BAF2
	mov r1, #2
	ldrsh r1, [r4, r1]
	cmp r0, r1
	bne _0224BAF2
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	add r1, sp, #8
	add r2, sp, #0xc
	lsl r6, r0, #1
	ldr r0, [r4, #0x14]
	mov r3, #1
	ldr r0, [r0, #0]
	ldr r7, [r0, #0x38]
	add r0, r7, #0
	bl sub_020625B0
	cmp r0, #1
	bne _0224BAF2
_0224BAB6:
	ldr r0, [sp, #8]
	bl sub_02063030
	cmp r6, r0
	bne _0224BAE2
	ldr r0, [sp, #8]
	bl sub_02063040
	mov r1, #0x12
	ldrsh r1, [r4, r1]
	cmp r1, r0
	bne _0224BAE2
	ldr r0, [sp, #8]
	bl sub_02063020
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	cmp r1, r0
	bne _0224BAE2
	mov r0, #1
	str r0, [sp]
	b _0224BAF2
_0224BAE2:
	add r0, r7, #0
	add r1, sp, #8
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _0224BAB6
_0224BAF2:
	ldr r1, [r5, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	lsl r1, r0, #2
	ldr r0, _0224BBD0 ; =0x022521E4
	ldr r0, [r0, r1]
	str r0, [r5, #0xc]
	ldr r0, [sp]
	cmp r0, #1
	bne _0224BB1C
	ldr r0, [r5, #0xc]
	asr r0, r0, #1
	str r0, [r5, #0xc]
_0224BB1C:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r0
	str r1, [r5, #4]
	bpl _0224BB32
	mov r0, #0
	str r0, [r5, #4]
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [r5, #8]
	b _0224BB44
_0224BB32:
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _0224BB44
	mov r0, #0x1e
	lsl r0, r0, #0xa
	str r0, [r5, #4]
	ldr r0, _0224BBD4 ; =0xFFFFF800
	str r0, [r5, #8]
_0224BB44:
	ldr r0, [r4, #0x14]
	bl ov9_022510D0
	mov r1, #2
	ldrsh r1, [r4, r1]
	cmp r1, r0
	ldr r0, [r4, #0x14]
	bne _0224BB5E
	ldr r1, [sp, #4]
	ldr r1, [r1, #0]
	bl ov9_0224B674
	b _0224BB66
_0224BB5E:
	ldr r1, [sp, #4]
	ldr r1, [r1, #0]
	bl ov9_0224B698
_0224BB66:
	cmp r0, #1
	bne _0224BB8C
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0224BBA8
	sub r0, r0, #1
	strb r0, [r5]
	mov r0, #1
	ldrsb r2, [r5, r0]
	sub r1, r0, #2
	cmp r2, r1
	beq _0224BBA8
	sub r0, r0, #2
	strb r0, [r5, #1]
	ldr r0, _0224BBD8 ; =0x000005CC
	bl ov9_022511E0
	b _0224BBA8
_0224BB8C:
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x1f
	bge _0224BBA8
	add r0, r0, #1
	strb r0, [r5]
	mov r0, #1
	ldrsb r1, [r5, r0]
	cmp r1, #1
	beq _0224BBA8
	strb r0, [r5, #1]
	ldr r0, _0224BBD8 ; =0x000005CC
	bl ov9_022511E0
_0224BBA8:
	add r6, r5, #0
	add r6, #0x10
	add r3, r5, #0
	add r3, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x20]
	ldrh r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	bl ov9_0224DBE4
	strh r0, [r5, #2]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BBD0: .word 0x022521E4
_0224BBD4: .word 0xFFFFF800
_0224BBD8: .word 0x000005CC
	thumb_func_end ov9_0224BA6C

	thumb_func_start ov9_0224BBDC
ov9_0224BBDC: ; 0x0224BBDC
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0224BC04
	mov r0, #0
	ldrsb r2, [r4, r0]
	cmp r2, #0
	ble _0224BC04
	add r1, #0x28
	ldr r0, [r1, #0x14]
	ldrh r1, [r1, #0xc]
	bl ov9_0224DAAC
	ldr r0, [r4, #0x40]
	add r4, #0x1c
	add r0, r0, #4
	add r1, r4, #0
	bl sub_02073BB4
_0224BC04:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224BBDC

	thumb_func_start ov9_0224BC08
ov9_0224BC08: ; 0x0224BC08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl sub_020715BC
	add r6, r0, #0
	add r2, r5, #0
	add r3, r6, #0
	add r4, r5, #0
	add r2, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r4, #0x28
	ldrh r1, [r4, #4]
	add r0, r7, #0
	bl sub_020715C0
	ldrh r1, [r4, #4]
	ldr r0, [r6, #0x14]
	add r2, sp, #0
	bl ov9_0224D8A4
	str r0, [r5, #0x38]
	ldr r0, [sp]
	cmp r0, #0
	bne _0224BC52
	ldr r3, [r5, #0x38]
	ldrh r1, [r4, #4]
	add r2, r3, #4
	ldr r0, [r5, #0x34]
	add r3, #0x58
	bl ov9_0224DA48
_0224BC52:
	ldrh r0, [r4, #4]
	cmp r0, #0x17
	bne _0224BC5E
	ldr r0, _0224BCE8 ; =0x000005CB
	strh r0, [r5, #4]
	b _0224BC64
_0224BC5E:
	ldr r0, _0224BCEC ; =0x000005CD
	strh r0, [r5, #4]
	add r0, r0, #1
_0224BC64:
	strh r0, [r5, #6]
	ldr r0, [r6, #0x14]
	bl ov9_022510D0
	mov r1, #2
	ldrsh r1, [r6, r1]
	cmp r1, r0
	ldr r0, [r6, #0x14]
	bne _0224BC7E
	ldr r1, [r4, #0]
	bl ov9_0224B674
	b _0224BC84
_0224BC7E:
	ldr r1, [r4, #0]
	bl ov9_0224B698
_0224BC84:
	cmp r0, #1
	bne _0224BC8E
	mov r0, #0
	strb r0, [r5]
	b _0224BCA4
_0224BC8E:
	mov r0, #0x1f
	strb r0, [r5]
	ldr r0, [r5, #0x38]
	add r0, #0x58
	bl sub_02073B28
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	add r0, #0x58
	bl sub_02073B20
_0224BCA4:
	mov r0, #6
	mov r1, #0xa
	add r2, r5, #0
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	add r2, #8
	bl sub_02064450
	mov r0, #8
	ldrsh r1, [r4, r0]
	lsl r0, r0, #0xc
	ldr r6, _0224BCF0 ; =0x02253298
	lsl r1, r1, #0x10
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldrh r1, [r4, #4]
	mov r0, #0xc
	ldr r2, [r5, #8]
	add r3, r1, #0
	mul r3, r0
	ldr r1, [r6, r3]
	add r0, r6, r3
	add r1, r2, r1
	str r1, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r1, [r0, #4]
	add r1, r2, r1
	str r1, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BCE8: .word 0x000005CB
_0224BCEC: .word 0x000005CD
_0224BCF0: .word 0x02253298
	thumb_func_end ov9_0224BC08

	thumb_func_start ov9_0224BCF4
ov9_0224BCF4: ; 0x0224BCF4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x20
	ldrh r0, [r4, #0xc]
	bl ov9_0224DAEC
	cmp r0, #1
	bne _0224BD0E
	ldr r0, [r5, #0x38]
	add r0, #0x58
	bl sub_02073AA8
_0224BD0E:
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0x38]
	bl ov9_0224D938
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224BCF4

	thumb_func_start ov9_0224BD18
ov9_0224BD18: ; 0x0224BD18
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x20
	ldr r0, [r4, #0x14]
	add r6, r4, #0
	add r6, #8
	bl ov9_022510D0
	mov r1, #2
	ldrsh r1, [r4, r1]
	cmp r1, r0
	ldr r0, [r4, #0x14]
	bne _0224BD3C
	ldr r1, [r6, #0]
	bl ov9_0224B674
	b _0224BD42
_0224BD3C:
	ldr r1, [r6, #0]
	bl ov9_0224B698
_0224BD42:
	cmp r0, #1
	bne _0224BD96
	ldr r0, [r5, #0x38]
	ldr r1, _0224BDE4 ; =0xFFFFE000
	add r0, #0x58
	mov r2, #0
	bl sub_02073AC0
	ldr r0, [r5, #0x38]
	add r0, #0x58
	bl sub_02073B24
	mov r3, #0
	asr r2, r0, #0xb
	lsr r2, r2, #0x14
	add r2, r0, r2
	ldrsb r1, [r5, r3]
	asr r0, r2, #0xc
	cmp r1, r0
	blt _0224BDD4
	cmp r1, #0
	ble _0224BD92
	sub r0, r1, #2
	strb r0, [r5]
	mov r0, #1
	ldrsb r2, [r5, r0]
	sub r1, r0, #3
	cmp r2, r1
	beq _0224BD86
	sub r0, r0, #3
	strb r0, [r5, #1]
	ldrh r0, [r5, #6]
	bl ov9_022511E0
_0224BD86:
	mov r0, #0
	ldrsb r1, [r5, r0]
	cmp r1, #0
	bge _0224BDD4
	strb r0, [r5]
	b _0224BDD4
_0224BD92:
	strb r3, [r5]
	b _0224BDD4
_0224BD96:
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x1f
	bge _0224BDC2
	add r0, r0, #2
	strb r0, [r5]
	mov r0, #1
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _0224BDB4
	mov r0, #2
	strb r0, [r5, #1]
	ldrh r0, [r5, #4]
	bl ov9_022511E0
_0224BDB4:
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x1f
	ble _0224BDC6
	mov r0, #0x1f
	strb r0, [r5]
	b _0224BDC6
_0224BDC2:
	mov r0, #0x1f
	strb r0, [r5]
_0224BDC6:
	ldr r0, [r5, #0x38]
	mov r1, #2
	add r0, #0x58
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02073AC0
_0224BDD4:
	ldrh r1, [r4, #0xc]
	add r2, r5, #0
	ldr r0, [r4, #0x14]
	add r2, #8
	bl ov9_0224DBE4
	strh r0, [r5, #2]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224BDE4: .word 0xFFFFE000
	thumb_func_end ov9_0224BD18

	thumb_func_start ov9_0224BDE8
ov9_0224BDE8: ; 0x0224BDE8
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0224BE10
	mov r0, #0
	ldrsb r2, [r4, r0]
	cmp r2, #0
	ble _0224BE10
	add r1, #0x20
	ldr r0, [r1, #0x14]
	ldrh r1, [r1, #0xc]
	bl ov9_0224DAAC
	ldr r0, [r4, #0x38]
	add r4, #8
	add r0, r0, #4
	add r1, r4, #0
	bl sub_02073BB4
_0224BE10:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224BDE8

	thumb_func_start ov9_0224BE14
ov9_0224BE14: ; 0x0224BE14
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ov9_022510D0
	add r6, r0, #0
	bl ov9_0224D720
	add r4, r0, #0
	add r0, r5, #0
	bl ov9_0224BFBC
	ldr r2, [r4, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224C0F8
	add r0, r5, #0
	bl ov9_0224C2C4
	add r0, r5, #0
	bl ov9_0224C640
	add r0, r5, #0
	bl ov9_0224C6E4
	add r0, r5, #0
	bl ov9_0224C808
	add r0, r5, #0
	bl ov9_02249D38
	cmp r0, #0
	bne _0224BE78
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl ov9_02250F44
	mov r0, #4
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl ov9_0224C378
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0224BE78:
	add r0, r5, #0
	bl ov9_02249E44
	add r1, r0, #0
	add r0, r5, #0
	bl ov9_0224C3F8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_0224BE14

	thumb_func_start ov9_0224BE8C
ov9_0224BE8C: ; 0x0224BE8C
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224C724
	add r0, r4, #0
	bl ov9_0224C680
	add r0, r4, #0
	bl ov9_0224C300
	add r0, r4, #0
	bl ov9_0224C854
	add r0, r4, #0
	bl ov9_0224C164
	add r0, r4, #0
	bl ov9_0224BFFC
	pop {r4, pc}
	thumb_func_end ov9_0224BE8C

	thumb_func_start ov9_0224BEB4
ov9_0224BEB4: ; 0x0224BEB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov9_0224C844
	add r0, r5, #0
	bl ov9_0224C184
	add r0, r5, #0
	bl ov9_0224C724
	add r0, r5, #0
	bl ov9_0224C680
	add r0, r5, #0
	bl ov9_0224C300
	add r0, r5, #0
	bl ov9_0224C194
	add r0, r5, #0
	bl ov9_0224C864
	add r0, r5, #0
	bl ov9_0224B5B0
	add r0, r5, #0
	bl ov9_0224B590
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224C10C
	add r0, r5, #0
	bl ov9_0224C2C4
	add r0, r5, #0
	bl ov9_0224C44C
	add r0, r5, #0
	bl ov9_0224C640
	add r0, r5, #0
	bl ov9_0224C6E4
	add r0, r5, #0
	bl ov9_0224C7C8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224BEB4

	thumb_func_start ov9_0224BF18
ov9_0224BF18: ; 0x0224BF18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov9_0224C724
	add r0, r5, #0
	bl ov9_0224C680
	add r0, r5, #0
	bl ov9_0224C300
	add r0, r5, #0
	bl ov9_0224C834
	add r0, r5, #0
	bl ov9_0224C174
	add r0, r5, #0
	bl ov9_0224C1E4
	add r0, r5, #0
	bl ov9_0224C888
	add r0, r5, #0
	bl ov9_0224B5EC
	add r0, r5, #0
	bl ov9_0224B6BC
	add r0, r5, #0
	bl ov9_0224B5A0
	add r0, r5, #0
	bl ov9_0224C2C4
	add r0, r5, #0
	bl ov9_0224C44C
	add r0, r5, #0
	bl ov9_0224C640
	add r0, r5, #0
	bl ov9_0224C6E4
	ldr r0, _0224BF88 ; =0x00000251
	cmp r4, r0
	beq _0224BF84
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224C120
	add r0, r5, #0
	bl ov9_0224C7E8
_0224BF84:
	pop {r3, r4, r5, pc}
	nop
_0224BF88: .word 0x00000251
	thumb_func_end ov9_0224BF18

	thumb_func_start ov9_0224BF8C
ov9_0224BF8C: ; 0x0224BF8C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl sub_02006D84
	add r1, r0, #0
	mov r0, #4
	bl sub_02018144
	str r0, [r4, #8]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0
	bl sub_02006D28
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	add r0, r0, #4
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224BF8C

	thumb_func_start ov9_0224BFBC
ov9_0224BFBC: ; 0x0224BFBC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x59
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224BFCE
	bl sub_02022974
_0224BFCE:
	ldr r1, _0224BFDC ; =0x00001638
	ldr r0, [r4, #8]
	add r1, r4, r1
	bl ov9_0224BF8C
	pop {r4, pc}
	nop
_0224BFDC: .word 0x00001638
	thumb_func_end ov9_0224BFBC

	thumb_func_start ov9_0224BFE0
ov9_0224BFE0: ; 0x0224BFE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0224BFEE
	bl sub_02022974
_0224BFEE:
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224BFE0

	thumb_func_start ov9_0224BFFC
ov9_0224BFFC: ; 0x0224BFFC
	ldr r1, _0224C004 ; =0x00001638
	ldr r3, _0224C008 ; =ov9_0224BFE0
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0224C004: .word 0x00001638
_0224C008: .word ov9_0224BFE0
	thumb_func_end ov9_0224BFFC

	thumb_func_start ov9_0224C00C
ov9_0224C00C: ; 0x0224C00C
	push {r4, lr}
	ldr r4, [r0, #0]
	mov r2, #0
	ldr r3, [r0, #4]
	cmp r4, #0
	ble _0224C02A
_0224C018:
	ldr r0, [r3, #0]
	cmp r1, r0
	bne _0224C022
	add r0, r3, #0
	pop {r4, pc}
_0224C022:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, r4
	blt _0224C018
_0224C02A:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224C00C

	thumb_func_start ov9_0224C034
ov9_0224C034: ; 0x0224C034
	ldr r2, _0224C03C ; =0x00001638
	ldr r3, _0224C040 ; =ov9_0224C00C
	add r0, r0, r2
	bx r3
	; .align 2, 0
_0224C03C: .word 0x00001638
_0224C040: .word ov9_0224C00C
	thumb_func_end ov9_0224C034

	thumb_func_start ov9_0224C044
ov9_0224C044: ; 0x0224C044
	push {r3, lr}
	bl ov9_0224C034
	ldrh r0, [r0, #4]
	add r0, r0, #1
	pop {r3, pc}
	thumb_func_end ov9_0224C044

	thumb_func_start ov9_0224C050
ov9_0224C050: ; 0x0224C050
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl ov9_0224C00C
	mov r1, #6
	ldrsh r1, [r0, r1]
	str r1, [r5, #0]
	mov r1, #8
	ldrsh r1, [r0, r1]
	str r1, [r4, #0]
	mov r1, #0xa
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224C050

	thumb_func_start ov9_0224C070
ov9_0224C070: ; 0x0224C070
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, _0224C084 ; =0x00001638
	add r0, r0, r4
	bl ov9_0224C050
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0224C084: .word 0x00001638
	thumb_func_end ov9_0224C070

	thumb_func_start ov9_0224C088
ov9_0224C088: ; 0x0224C088
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	add r6, r2, #0
	cmp r0, #0
	beq _0224C09A
	bl sub_02022974
_0224C09A:
	add r2, r4, #0
	mov r1, #0x1c
	mov r0, #0
_0224C0A0:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0224C0A0
	ldr r0, _0224C0F4 ; =0x00000251
	str r6, [r4, #0]
	cmp r6, r0
	beq _0224C0F2
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224C044
	add r6, r0, #0
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_02006D84
	add r1, r0, #0
	mov r0, #4
	bl sub_02018184
	str r0, [r4, #0x18]
	ldr r0, [r5, #8]
	ldr r2, [r4, #0x18]
	add r1, r6, #0
	bl sub_02006D28
	ldr r2, [r4, #0x18]
	str r2, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r1, #0x14
	str r1, [r4, #4]
	ldr r0, [r2, #4]
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r2, #8]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r2, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x10]
_0224C0F2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224C0F4: .word 0x00000251
	thumb_func_end ov9_0224C088

	thumb_func_start ov9_0224C0F8
ov9_0224C0F8: ; 0x0224C0F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov9_0224C10C
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224C120
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224C0F8

	thumb_func_start ov9_0224C10C
ov9_0224C10C: ; 0x0224C10C
	add r2, r1, #0
	ldr r1, _0224C118 ; =0x00001644
	ldr r3, _0224C11C ; =ov9_0224C088
	add r1, r0, r1
	bx r3
	nop
_0224C118: .word 0x00001644
_0224C11C: .word ov9_0224C088
	thumb_func_end ov9_0224C10C

	thumb_func_start ov9_0224C120
ov9_0224C120: ; 0x0224C120
	add r2, r1, #0
	ldr r1, _0224C12C ; =0x00001690
	ldr r3, _0224C130 ; =ov9_0224C088
	add r1, r0, r1
	bx r3
	nop
_0224C12C: .word 0x00001690
_0224C130: .word ov9_0224C088
	thumb_func_end ov9_0224C120

	thumb_func_start ov9_0224C134
ov9_0224C134: ; 0x0224C134
	add r3, r0, #0
	mov r2, #0x1c
	mov r1, #0
_0224C13A:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0224C13A
	ldr r1, _0224C148 ; =0x00000251
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_0224C148: .word 0x00000251
	thumb_func_end ov9_0224C134

	thumb_func_start ov9_0224C14C
ov9_0224C14C: ; 0x0224C14C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0224C15A
	bl sub_020181C4
_0224C15A:
	add r0, r4, #0
	bl ov9_0224C134
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224C14C

	thumb_func_start ov9_0224C164
ov9_0224C164: ; 0x0224C164
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224C174
	add r0, r4, #0
	bl ov9_0224C184
	pop {r4, pc}
	thumb_func_end ov9_0224C164

	thumb_func_start ov9_0224C174
ov9_0224C174: ; 0x0224C174
	ldr r1, _0224C17C ; =0x00001644
	ldr r3, _0224C180 ; =ov9_0224C14C
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0224C17C: .word 0x00001644
_0224C180: .word ov9_0224C14C
	thumb_func_end ov9_0224C174

	thumb_func_start ov9_0224C184
ov9_0224C184: ; 0x0224C184
	ldr r1, _0224C18C ; =0x00001690
	ldr r3, _0224C190 ; =ov9_0224C14C
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0224C18C: .word 0x00001690
_0224C190: .word ov9_0224C14C
	thumb_func_end ov9_0224C184

	thumb_func_start ov9_0224C194
ov9_0224C194: ; 0x0224C194
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0224C1D4 ; =0x00001690
	ldr r1, [r4, r0]
	ldr r0, _0224C1D8 ; =0x00000251
	cmp r1, r0
	beq _0224C1A6
	bl sub_02022974
_0224C1A6:
	ldr r0, _0224C1DC ; =0x000016A8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224C1B2
	bl sub_02022974
_0224C1B2:
	ldr r2, _0224C1E0 ; =0x00001644
	add r0, r2, #0
	add r0, #0x4c
	add r5, r4, r2
	add r3, r4, r0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, r2
	bl ov9_0224C134
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C1D4: .word 0x00001690
_0224C1D8: .word 0x00000251
_0224C1DC: .word 0x000016A8
_0224C1E0: .word 0x00001644
	thumb_func_end ov9_0224C194

	thumb_func_start ov9_0224C1E4
ov9_0224C1E4: ; 0x0224C1E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0224C224 ; =0x00001644
	ldr r1, [r4, r0]
	ldr r0, _0224C228 ; =0x00000251
	cmp r1, r0
	beq _0224C1F6
	bl sub_02022974
_0224C1F6:
	ldr r0, _0224C22C ; =0x0000165C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224C202
	bl sub_02022974
_0224C202:
	ldr r2, _0224C230 ; =0x00001690
	add r0, r2, #0
	sub r0, #0x4c
	add r5, r4, r2
	add r3, r4, r0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, r2
	bl ov9_0224C134
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C224: .word 0x00001644
_0224C228: .word 0x00000251
_0224C22C: .word 0x0000165C
_0224C230: .word 0x00001690
	thumb_func_end ov9_0224C1E4

	thumb_func_start ov9_0224C234
ov9_0224C234: ; 0x0224C234
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C234

	thumb_func_start ov9_0224C23C
ov9_0224C23C: ; 0x0224C23C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C23C

	thumb_func_start ov9_0224C244
ov9_0224C244: ; 0x0224C244
	ldr r0, [r0, #4]
	add r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C244

	thumb_func_start ov9_0224C24C
ov9_0224C24C: ; 0x0224C24C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C24C

	thumb_func_start ov9_0224C254
ov9_0224C254: ; 0x0224C254
	ldr r0, [r0, #8]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C254

	thumb_func_start ov9_0224C25C
ov9_0224C25C: ; 0x0224C25C
	ldr r0, [r0, #8]
	add r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C25C

	thumb_func_start ov9_0224C264
ov9_0224C264: ; 0x0224C264
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C264

	thumb_func_start ov9_0224C26C
ov9_0224C26C: ; 0x0224C26C
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C26C

	thumb_func_start ov9_0224C274
ov9_0224C274: ; 0x0224C274
	ldr r0, [r0, #0xc]
	add r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C274

	thumb_func_start ov9_0224C27C
ov9_0224C27C: ; 0x0224C27C
	ldr r1, _0224C284 ; =0x00001658
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x10]
	bx lr
	; .align 2, 0
_0224C284: .word 0x00001658
	thumb_func_end ov9_0224C27C

	thumb_func_start ov9_0224C288
ov9_0224C288: ; 0x0224C288
	ldr r1, _0224C2A0 ; =0x00001690
	mov r3, #0
	add r2, r0, r1
	ldr r1, [r2, #0]
	ldr r0, _0224C2A4 ; =0x00000251
	cmp r1, r0
	beq _0224C29A
	ldr r0, [r2, #0x14]
	ldr r3, [r0, #0x10]
_0224C29A:
	add r0, r3, #0
	bx lr
	nop
_0224C2A0: .word 0x00001690
_0224C2A4: .word 0x00000251
	thumb_func_end ov9_0224C288

	thumb_func_start ov9_0224C2A8
ov9_0224C2A8: ; 0x0224C2A8
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov9_0224C2A8

	thumb_func_start ov9_0224C2AC
ov9_0224C2AC: ; 0x0224C2AC
	ldr r0, [r0, #0x10]
	add r0, #0xc
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C2AC

	thumb_func_start ov9_0224C2B4
ov9_0224C2B4: ; 0x0224C2B4
	ldr r2, [r0, #0x10]
	ldr r0, [r2, #0]
	add r1, r0, #1
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224C2B4

	thumb_func_start ov9_0224C2C4
ov9_0224C2C4: ; 0x0224C2C4
	push {r4, r5, r6, lr}
	ldr r6, _0224C2F8 ; =0x00001644
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0x24
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224C2D8
	bl sub_02022974
_0224C2D8:
	add r0, r5, r6
	bl ov9_0224C234
	cmp r0, #0
	beq _0224C2F6
	ldr r0, _0224C2FC ; =0x00001660
	add r4, r5, r0
	add r0, r5, r6
	bl ov9_0224C23C
	str r0, [r4, #4]
	add r0, r5, r6
	bl ov9_0224C244
	str r0, [r4, #8]
_0224C2F6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224C2F8: .word 0x00001644
_0224C2FC: .word 0x00001660
	thumb_func_end ov9_0224C2C4

	thumb_func_start ov9_0224C300
ov9_0224C300: ; 0x0224C300
	push {r4, lr}
	ldr r1, _0224C320 ; =0x00001660
	add r4, r0, r1
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C310
	bl sub_020181C4
_0224C310:
	mov r1, #0x14
	mov r0, #0
_0224C314:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0224C314
	pop {r4, pc}
	nop
_0224C320: .word 0x00001660
	thumb_func_end ov9_0224C300

	thumb_func_start ov9_0224C324
ov9_0224C324: ; 0x0224C324
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	ldr r1, _0224C374 ; =0x00001660
	str r2, [sp, #4]
	add r0, r0, r1
	ldr r7, [r0, #4]
	mov r6, #0
	str r3, [sp, #8]
	ldr r5, [sp, #0x20]
	ldr r4, [r0, #8]
	cmp r7, #0
	bne _0224C344
	add sp, #0xc
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0224C344:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r3, r4, #4
	bl ov9_02250E6C
	cmp r0, #1
	bne _0224C366
	cmp r5, #4
	bne _0224C360
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r5, r0
	bne _0224C366
_0224C360:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224C366:
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r7
	blt _0224C344
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C374: .word 0x00001660
	thumb_func_end ov9_0224C324

	thumb_func_start ov9_0224C378
ov9_0224C378: ; 0x0224C378
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #8]
	str r1, [sp, #4]
	ldr r2, _0224C3F4 ; =0x00001660
	add r1, r0, #0
	add r1, r1, r2
	ldr r5, [sp, #0x28]
	ldr r4, [r1, #8]
	ldr r7, [r1, #4]
	str r1, [sp, #0x10]
	str r7, [r1, #0]
	add r1, r7, #0
	str r0, [sp]
	str r3, [sp, #0xc]
	mov r6, #0
	bl ov9_02249E20
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0224C3AE
	bl sub_020181C4
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	str r1, [r0, #0x10]
_0224C3AE:
	cmp r7, #0
	beq _0224C3EE
_0224C3B2:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r3, r4, #4
	bl ov9_02250E6C
	cmp r0, #1
	bne _0224C3E6
	cmp r5, #4
	beq _0224C3CE
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r5, r0
	bne _0224C3E6
_0224C3CE:
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	str r6, [r0, #0]
	ldr r0, [sp]
	bl ov9_02249E20
	ldrh r1, [r4, #2]
	ldr r0, [sp]
	bl ov9_0224C4F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0224C3E6:
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r7
	blt _0224C3B2
_0224C3EE:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224C3F4: .word 0x00001660
	thumb_func_end ov9_0224C378

	thumb_func_start ov9_0224C3F8
ov9_0224C3F8: ; 0x0224C3F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0224C448 ; =0x00001660
	add r5, r1, #0
	add r4, r7, r0
	ldr r0, [r4, #8]
	ldr r6, [r4, #4]
	str r0, [sp]
	str r6, [r4, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C418
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
_0224C418:
	cmp r6, #0
	beq _0224C420
	cmp r5, r6
	blo _0224C42A
_0224C420:
	add r0, r7, #0
	add r1, r6, #0
	bl ov9_02249E20
	pop {r3, r4, r5, r6, r7, pc}
_0224C42A:
	add r0, r7, #0
	add r1, r5, #0
	str r5, [r4, #0]
	bl ov9_02249E20
	mov r1, #0x14
	add r2, r5, #0
	mul r2, r1
	ldr r1, [sp]
	add r0, r7, #0
	add r1, r1, r2
	ldrh r1, [r1, #2]
	bl ov9_0224C4F4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C448: .word 0x00001660
	thumb_func_end ov9_0224C3F8

	thumb_func_start ov9_0224C44C
ov9_0224C44C: ; 0x0224C44C
	push {r4, lr}
	ldr r1, _0224C46C ; =0x00001660
	add r4, r0, r1
	ldr r1, [r4, #4]
	str r1, [r4, #0]
	ldr r1, [r4, #4]
	bl ov9_02249E20
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C46A
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
_0224C46A:
	pop {r4, pc}
	; .align 2, 0
_0224C46C: .word 0x00001660
	thumb_func_end ov9_0224C44C

	thumb_func_start ov9_0224C470
ov9_0224C470: ; 0x0224C470
	ldr r1, _0224C490 ; =0x00001660
	add r1, r0, r1
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0224C480
	ldr r2, [r1, #0]
	cmp r2, r0
	blt _0224C484
_0224C480:
	mov r0, #4
	bx lr
_0224C484:
	mov r0, #0x14
	ldr r1, [r1, #8]
	mul r0, r2
	ldrsh r0, [r1, r0]
	bx lr
	nop
_0224C490: .word 0x00001660
	thumb_func_end ov9_0224C470

	thumb_func_start ov9_0224C494
ov9_0224C494: ; 0x0224C494
	ldr r1, _0224C4B4 ; =0x00001660
	add r1, r0, r1
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0224C4A4
	ldr r2, [r1, #0]
	cmp r2, r0
	blt _0224C4A8
_0224C4A4:
	mov r0, #4
	bx lr
_0224C4A8:
	mov r0, #0x14
	ldr r1, [r1, #8]
	mul r0, r2
	ldrsh r0, [r1, r0]
	bx lr
	nop
_0224C4B4: .word 0x00001660
	thumb_func_end ov9_0224C494

	thumb_func_start ov9_0224C4B8
ov9_0224C4B8: ; 0x0224C4B8
	push {r3, r4, r5, lr}
	ldr r4, _0224C4F0 ; =0x00001660
	add r4, r0, r4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224C4CA
	ldr r5, [r4, #0]
	cmp r5, r0
	blt _0224C4CE
_0224C4CA:
	mov r0, #4
	pop {r3, r4, r5, pc}
_0224C4CE:
	mov r0, #0x14
	ldr r4, [r4, #8]
	mul r0, r5
	add r4, r4, r0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	add r3, r4, #4
	bl ov9_02250E6C
	cmp r0, #0
	bne _0224C4EA
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224C4EA:
	mov r0, #0
	ldrsh r0, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C4F0: .word 0x00001660
	thumb_func_end ov9_0224C4B8

	thumb_func_start ov9_0224C4F4
ov9_0224C4F4: ; 0x0224C4F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224C528 ; =0x00001660
	add r6, r1, #0
	add r4, r5, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C508
	bl sub_020181C4
_0224C508:
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl sub_02006D84
	str r0, [r4, #0xc]
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl sub_02018184
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	ldr r2, [r4, #0x10]
	add r1, r6, #0
	bl sub_02006D28
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224C528: .word 0x00001660
	thumb_func_end ov9_0224C4F4

	thumb_func_start ov9_0224C52C
ov9_0224C52C: ; 0x0224C52C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _0224C558 ; =0x00001660
	add r7, r2, #0
	add r4, r0, r1
	ldr r1, [r4, #0]
	mov r0, #0x14
	ldr r2, [r4, #8]
	mul r0, r1
	add r5, r2, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0224C54A
	bl sub_02022974
_0224C54A:
	ldrh r0, [r5, #0x10]
	ldr r1, [r4, #0x10]
	mul r0, r7
	add r0, r6, r0
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C558: .word 0x00001660
	thumb_func_end ov9_0224C52C

	thumb_func_start ov9_0224C55C
ov9_0224C55C: ; 0x0224C55C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	add r7, r1, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r1, _0224C634 ; =0x00001660
	ldr r0, [sp]
	str r2, [sp, #4]
	add r6, r0, r1
	ldr r0, [r6, #4]
	add r5, r3, #0
	cmp r0, #0
	beq _0224C580
	ldr r1, [r6, #0]
	cmp r1, r0
	blt _0224C586
_0224C580:
	add sp, #0x10
	ldr r0, _0224C638 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_0224C586:
	mov r2, #0x14
	mul r2, r1
	ldr r0, [r6, #8]
	ldr r1, [sp, #4]
	add r4, r0, r2
	add r0, r7, #0
	add r2, r5, #0
	add r3, r4, #4
	bl ov9_02250E6C
	cmp r0, #0
	bne _0224C5A4
	add sp, #0x10
	ldr r0, _0224C63C ; =0x0000FFFE
	pop {r3, r4, r5, r6, r7, pc}
_0224C5A4:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne _0224C5AE
	bl sub_02022974
_0224C5AE:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #3
	bhi _0224C622
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224C5C2: ; jump table
	.short _0224C5CA - _0224C5C2 - 2 ; case 0
	.short _0224C5DC - _0224C5C2 - 2 ; case 1
	.short _0224C5F6 - _0224C5C2 - 2 ; case 2
	.short _0224C60A - _0224C5C2 - 2 ; case 3
_0224C5CA:
	mov r0, #4
	ldrsh r0, [r4, r0]
	sub r0, r7, r0
	str r0, [sp, #0xc]
	mov r0, #8
	ldrsh r0, [r4, r0]
	sub r0, r5, r0
	str r0, [sp, #8]
	b _0224C626
_0224C5DC:
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	mov r0, #6
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #4]
	sub r0, r0, r1
	sub r0, r2, r0
	str r0, [sp, #0xc]
	mov r0, #8
	ldrsh r0, [r4, r0]
	sub r0, r5, r0
	str r0, [sp, #8]
	b _0224C626
_0224C5F6:
	mov r0, #6
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #4]
	sub r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, #8
	ldrsh r0, [r4, r0]
	sub r0, r5, r0
	str r0, [sp, #8]
	b _0224C626
_0224C60A:
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	sub r0, r7, r0
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #8
	ldrsh r0, [r4, r0]
	sub r0, r5, r0
	str r0, [sp, #8]
	b _0224C626
_0224C622:
	bl sub_02022974
_0224C626:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl ov9_0224C52C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C634: .word 0x00001660
_0224C638: .word 0x0000FFFF
_0224C63C: .word 0x0000FFFE
	thumb_func_end ov9_0224C55C

	thumb_func_start ov9_0224C640
ov9_0224C640: ; 0x0224C640
	push {r4, r5, r6, lr}
	ldr r6, _0224C678 ; =0x00001644
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0x34
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224C654
	bl sub_02022974
_0224C654:
	add r0, r5, r6
	bl ov9_0224C24C
	cmp r0, #0
	beq _0224C674
	ldr r0, _0224C67C ; =0x00001674
	add r4, r5, r0
	add r0, r5, r6
	bl ov9_0224C254
	ldr r1, _0224C67C ; =0x00001674
	str r0, [r5, r1]
	add r0, r5, r6
	bl ov9_0224C25C
	str r0, [r4, #4]
_0224C674:
	pop {r4, r5, r6, pc}
	nop
_0224C678: .word 0x00001644
_0224C67C: .word 0x00001674
	thumb_func_end ov9_0224C640

	thumb_func_start ov9_0224C680
ov9_0224C680: ; 0x0224C680
	ldr r1, _0224C698 ; =0x00001674
	add r1, r0, r1
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	bx lr
	; .align 2, 0
_0224C698: .word 0x00001674
	thumb_func_end ov9_0224C680

	thumb_func_start ov9_0224C69C
ov9_0224C69C: ; 0x0224C69C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	ldr r1, _0224C6E0 ; =0x00001674
	str r2, [sp]
	add r0, r0, r1
	ldr r5, [r0, #0]
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	ldr r4, [r0, #4]
	cmp r5, #0
	beq _0224C6DA
_0224C6B4:
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r6, r0
	bne _0224C6D4
	add r3, r4, #0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r3, #8
	bl ov9_02250E6C
	cmp r0, #0
	beq _0224C6D4
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C6D4:
	add r4, #0x28
	sub r5, r5, #1
	bne _0224C6B4
_0224C6DA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C6E0: .word 0x00001674
	thumb_func_end ov9_0224C69C

	thumb_func_start ov9_0224C6E4
ov9_0224C6E4: ; 0x0224C6E4
	push {r4, r5, r6, lr}
	ldr r6, _0224C71C ; =0x00001644
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0x3c
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224C6F8
	bl sub_02022974
_0224C6F8:
	add r0, r5, r6
	bl ov9_0224C264
	cmp r0, #0
	beq _0224C718
	ldr r0, _0224C720 ; =0x0000167C
	add r4, r5, r0
	add r0, r5, r6
	bl ov9_0224C26C
	ldr r1, _0224C720 ; =0x0000167C
	str r0, [r5, r1]
	add r0, r5, r6
	bl ov9_0224C274
	str r0, [r4, #4]
_0224C718:
	pop {r4, r5, r6, pc}
	nop
_0224C71C: .word 0x00001644
_0224C720: .word 0x0000167C
	thumb_func_end ov9_0224C6E4

	thumb_func_start ov9_0224C724
ov9_0224C724: ; 0x0224C724
	ldr r1, _0224C73C ; =0x0000167C
	add r1, r0, r1
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	bx lr
	; .align 2, 0
_0224C73C: .word 0x0000167C
	thumb_func_end ov9_0224C724

	thumb_func_start ov9_0224C740
ov9_0224C740: ; 0x0224C740
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	ldr r1, _0224C784 ; =0x0000167C
	str r2, [sp]
	add r0, r0, r1
	ldr r5, [r0, #0]
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	ldr r4, [r0, #4]
	cmp r5, #0
	beq _0224C77C
_0224C758:
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	cmp r6, r0
	bne _0224C776
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r3, r4, #0
	bl ov9_02250E6C
	cmp r0, #0
	beq _0224C776
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C776:
	add r4, #0x18
	sub r5, r5, #1
	bne _0224C758
_0224C77C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C784: .word 0x0000167C
	thumb_func_end ov9_0224C740

	thumb_func_start ov9_0224C788
ov9_0224C788: ; 0x0224C788
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224C798
	bl sub_02022974
_0224C798:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224C7A2
	bl sub_02022974
_0224C7A2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224C7AC
	bl sub_02022974
_0224C7AC:
	add r0, r5, #0
	bl ov9_0224C2A8
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov9_0224C2AC
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov9_0224C2B4
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224C788

	thumb_func_start ov9_0224C7C8
ov9_0224C7C8: ; 0x0224C7C8
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224C27C
	cmp r0, #0
	beq _0224C7E0
	ldr r1, _0224C7E4 ; =0x00001644
	add r0, r4, r1
	add r1, #0x40
	add r1, r4, r1
	bl ov9_0224C788
_0224C7E0:
	pop {r4, pc}
	nop
_0224C7E4: .word 0x00001644
	thumb_func_end ov9_0224C7C8

	thumb_func_start ov9_0224C7E8
ov9_0224C7E8: ; 0x0224C7E8
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224C288
	cmp r0, #0
	beq _0224C800
	ldr r1, _0224C804 ; =0x00001690
	add r0, r4, r1
	add r1, #0x1c
	add r1, r4, r1
	bl ov9_0224C788
_0224C800:
	pop {r4, pc}
	nop
_0224C804: .word 0x00001690
	thumb_func_end ov9_0224C7E8

	thumb_func_start ov9_0224C808
ov9_0224C808: ; 0x0224C808
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224C7C8
	add r0, r4, #0
	bl ov9_0224C7E8
	pop {r4, pc}
	thumb_func_end ov9_0224C808

	thumb_func_start ov9_0224C818
ov9_0224C818: ; 0x0224C818
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	bx lr
	thumb_func_end ov9_0224C818

	thumb_func_start ov9_0224C834
ov9_0224C834: ; 0x0224C834
	ldr r1, _0224C83C ; =0x00001684
	ldr r3, _0224C840 ; =ov9_0224C818
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0224C83C: .word 0x00001684
_0224C840: .word ov9_0224C818
	thumb_func_end ov9_0224C834

	thumb_func_start ov9_0224C844
ov9_0224C844: ; 0x0224C844
	ldr r1, _0224C84C ; =0x000016AC
	ldr r3, _0224C850 ; =ov9_0224C818
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0224C84C: .word 0x000016AC
_0224C850: .word ov9_0224C818
	thumb_func_end ov9_0224C844

	thumb_func_start ov9_0224C854
ov9_0224C854: ; 0x0224C854
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224C834
	add r0, r4, #0
	bl ov9_0224C844
	pop {r4, pc}
	thumb_func_end ov9_0224C854

	thumb_func_start ov9_0224C864
ov9_0224C864: ; 0x0224C864
	push {r3, r4, r5, lr}
	ldr r3, _0224C884 ; =0x00001684
	add r2, r0, #0
	add r0, r3, #0
	add r0, #0x28
	add r5, r2, r3
	add r4, r2, r0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	add r0, r2, r3
	bl ov9_0224C818
	pop {r3, r4, r5, pc}
	nop
_0224C884: .word 0x00001684
	thumb_func_end ov9_0224C864

	thumb_func_start ov9_0224C888
ov9_0224C888: ; 0x0224C888
	push {r3, r4, r5, lr}
	ldr r3, _0224C8A8 ; =0x000016AC
	add r2, r0, #0
	add r0, r3, #0
	sub r0, #0x28
	add r5, r2, r3
	add r4, r2, r0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	add r0, r2, r3
	bl ov9_0224C818
	pop {r3, r4, r5, pc}
	nop
_0224C8A8: .word 0x000016AC
	thumb_func_end ov9_0224C888

	thumb_func_start ov9_0224C8AC
ov9_0224C8AC: ; 0x0224C8AC
	ldr r1, _0224C8B4 ; =0x00001684
	ldr r0, [r0, r1]
	bx lr
	nop
_0224C8B4: .word 0x00001684
	thumb_func_end ov9_0224C8AC

	thumb_func_start ov9_0224C8B8
ov9_0224C8B8: ; 0x0224C8B8
	ldr r1, _0224C8C0 ; =0x000016AC
	ldr r0, [r0, r1]
	bx lr
	nop
_0224C8C0: .word 0x000016AC
	thumb_func_end ov9_0224C8B8

	thumb_func_start ov9_0224C8C4
ov9_0224C8C4: ; 0x0224C8C4
	ldr r1, _0224C8CC ; =0x00001688
	ldr r0, [r0, r1]
	bx lr
	nop
_0224C8CC: .word 0x00001688
	thumb_func_end ov9_0224C8C4

	thumb_func_start ov9_0224C8D0
ov9_0224C8D0: ; 0x0224C8D0
	ldr r1, _0224C8D8 ; =0x000016B0
	ldr r0, [r0, r1]
	bx lr
	nop
_0224C8D8: .word 0x000016B0
	thumb_func_end ov9_0224C8D0

	thumb_func_start ov9_0224C8DC
ov9_0224C8DC: ; 0x0224C8DC
	ldr r1, _0224C8E4 ; =0x0000168C
	ldr r0, [r0, r1]
	bx lr
	nop
_0224C8E4: .word 0x0000168C
	thumb_func_end ov9_0224C8DC

	thumb_func_start ov9_0224C8E8
ov9_0224C8E8: ; 0x0224C8E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r1, _0224C9E0 ; =0x00001E34
	add r7, r0, #0
	add r4, r7, r1
	ldr r5, [r7, #0]
	bl ov9_022510D0
	bl ov9_0224D720
	ldr r6, [r0, #8]
	ldr r0, _0224C9E4 ; =0x00000251
	cmp r6, r0
	beq _0224C9DA
	add r0, r6, #0
	bl ov9_0224D720
	str r6, [r4, #0]
	mov r0, #4
	bl sub_02039D78
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl sub_02039DC0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x28]
	bl ov5_021E9828
	add r2, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl ov5_021E9830
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r4, #0x18]
	bl ov5_021E931C
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl ov5_021EA6A4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl ov5_021EA6D0
	add r0, sp, #4
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0xc
	add r3, sp, #8
	bl ov9_0224C070
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	bl ov5_021EA678
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r6, #0
	bl ov5_021E99D8
	mov r0, #1
	str r0, [r4, #8]
	str r0, [r4, #4]
	add r0, r7, #0
	bl ov9_02249D38
	cmp r0, #0
	bne _0224C9DA
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r1, sp, #0x10
	add r4, r0, #0
	bl sub_02063050
	ldr r0, [r5, #0x28]
	add r1, sp, #0x1c
	bl ov5_021EA6BC
	mov r0, #1
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0x10
	bl sub_02063060
	add r0, r4, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02063014
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	asr r2, r1, #3
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	bl sub_02063034
_0224C9DA:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C9E0: .word 0x00001E34
_0224C9E4: .word 0x00000251
	thumb_func_end ov9_0224C8E8

	thumb_func_start ov9_0224C9E8
ov9_0224C9E8: ; 0x0224C9E8
	push {r4, lr}
	ldr r1, _0224CA2C ; =0x00001E34
	add r4, r0, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224CA2A
	ldr r0, [r4, #0x18]
	bl ov5_021E9338
	ldr r0, [r4, #0x18]
	bl ov5_021E9938
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0224CA0A
	mov r0, #0
	str r0, [r4, #0x14]
_0224CA0A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0224CA18
	bl ov5_021E99C4
	mov r0, #0
	str r0, [r4, #0x18]
_0224CA18:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224CA26
	bl sub_02039DE4
	mov r0, #0
	str r0, [r4, #0x10]
_0224CA26:
	mov r0, #0
	str r0, [r4, #4]
_0224CA2A:
	pop {r4, pc}
	; .align 2, 0
_0224CA2C: .word 0x00001E34
	thumb_func_end ov9_0224C9E8

	thumb_func_start ov9_0224CA30
ov9_0224CA30: ; 0x0224CA30
	push {r3, lr}
	add r2, r0, #0
	ldr r0, _0224CA4C ; =0x00001E34
	add r1, r2, r0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0224CA48
	ldr r0, [r1, #0x18]
	ldr r1, [r2, #0]
	ldr r1, [r1, #0x44]
	bl ov5_021E9C0C
_0224CA48:
	pop {r3, pc}
	nop
_0224CA4C: .word 0x00001E34
	thumb_func_end ov9_0224CA30

	thumb_func_start ov9_0224CA50
ov9_0224CA50: ; 0x0224CA50
	ldr r0, [r0, #4]
	ldr r3, _0224CA58 ; =ov9_0224CA30
	ldr r0, [r0, #0x24]
	bx r3
	; .align 2, 0
_0224CA58: .word ov9_0224CA30
	thumb_func_end ov9_0224CA50

	thumb_func_start ov9_0224CA5C
ov9_0224CA5C: ; 0x0224CA5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, _0224CA90 ; =0x00001E34
	ldr r0, [r0, #0x24]
	add r4, r0, r1
	ldr r1, _0224CA94 ; =0x00001C5C
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _0224CA76
	bl ov9_0224CB30
	b _0224CA7E
_0224CA76:
	cmp r1, #2
	bne _0224CA7E
	bl ov9_0224CA98
_0224CA7E:
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0224CA8C
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl ov5_021EA174
_0224CA8C:
	pop {r3, r4, r5, pc}
	nop
_0224CA90: .word 0x00001E34
_0224CA94: .word 0x00001C5C
	thumb_func_end ov9_0224CA5C

	thumb_func_start ov9_0224CA98
ov9_0224CA98: ; 0x0224CA98
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224CB28 ; =0x00001C5C
	str r0, [sp]
	add r4, r0, r1
	ldr r1, _0224CB2C ; =0x00001E34
	add r6, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0224CAB4
	cmp r0, #1
	beq _0224CACA
	cmp r0, #2
	beq _0224CAEC
	pop {r3, r4, r5, r6, r7, pc}
_0224CAB4:
	add r3, r4, #0
	ldr r0, [r6, #0x18]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, #0xc
	bl ov5_021E9AAC
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, r6, r7, pc}
_0224CACA:
	ldrb r1, [r4, #2]
	ldr r0, [r6, #0x18]
	lsl r2, r1, #2
	add r2, r4, r2
	ldr r2, [r2, #0xc]
	bl ov5_021E9B10
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	cmp r0, #4
	blo _0224CB24
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, r6, r7, pc}
_0224CAEC:
	ldr r0, [r6, #0x18]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov5_021EA6F4
	mov r5, #0
	mov r7, #1
_0224CAFA:
	ldr r0, [r6, #0x18]
	add r1, r5, #0
	add r2, r7, #0
	bl ov5_021EA6E0
	add r5, r5, #1
	cmp r5, #4
	blt _0224CAFA
	ldr r0, [sp]
	bl ov9_02249B04
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224CB1C
	mov r1, #0
	bl ov9_0224E0DC
_0224CB1C:
	mov r0, #1
	str r0, [r6, #8]
	mov r0, #0
	strb r0, [r4]
_0224CB24:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CB28: .word 0x00001C5C
_0224CB2C: .word 0x00001E34
	thumb_func_end ov9_0224CA98

	thumb_func_start ov9_0224CB30
ov9_0224CB30: ; 0x0224CB30
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224CBB8 ; =0x00001C5C
	str r0, [sp]
	add r4, r0, r1
	ldr r6, [r0, #0]
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0224CB4A
	cmp r0, #1
	beq _0224CB60
	cmp r0, #2
	beq _0224CB82
	pop {r3, r4, r5, r6, r7, pc}
_0224CB4A:
	add r3, r4, #0
	ldr r0, [r6, #0x28]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, #0xc
	bl ov5_021EA58C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, r6, r7, pc}
_0224CB60:
	ldrb r1, [r4, #2]
	ldr r0, [r6, #0x28]
	lsl r2, r1, #2
	add r2, r4, r2
	ldr r2, [r2, #0xc]
	bl ov5_021EA5E0
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	cmp r0, #4
	blo _0224CBB6
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, r6, r7, pc}
_0224CB82:
	ldr r0, [r6, #0x28]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov5_021EA6F4
	mov r5, #0
	mov r7, #1
_0224CB90:
	ldr r0, [r6, #0x28]
	add r1, r5, #0
	add r2, r7, #0
	bl ov5_021EA6E0
	add r5, r5, #1
	cmp r5, #4
	blt _0224CB90
	ldr r0, [sp]
	bl ov9_02249B68
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224CBB2
	mov r1, #0
	bl ov9_0224E0DC
_0224CBB2:
	mov r0, #0
	strb r0, [r4]
_0224CBB6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224CBB8: .word 0x00001C5C
	thumb_func_end ov9_0224CB30

	thumb_func_start ov9_0224CBBC
ov9_0224CBBC: ; 0x0224CBBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_0224CBC4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021EA6E0
	add r4, r4, #1
	cmp r4, #4
	blt _0224CBC4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_0224CBBC

	thumb_func_start ov9_0224CBD8
ov9_0224CBD8: ; 0x0224CBD8
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _0224CBF0 ; =0x00001C7C
	mov r2, #1
	add r4, r1, r0
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, _0224CBF4 ; =ov9_0224CC08
	bl sub_0200D9E8
	str r0, [r4, #0x2c]
	pop {r4, pc}
	; .align 2, 0
_0224CBF0: .word 0x00001C7C
_0224CBF4: .word ov9_0224CC08
	thumb_func_end ov9_0224CBD8

	thumb_func_start ov9_0224CBF8
ov9_0224CBF8: ; 0x0224CBF8
	ldr r1, _0224CC00 ; =0x00001CA8
	ldr r3, _0224CC04 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_0224CC00: .word 0x00001CA8
_0224CC04: .word sub_0200DA58
	thumb_func_end ov9_0224CBF8

	thumb_func_start ov9_0224CC08
ov9_0224CC08: ; 0x0224CC08
	push {r4, r5, r6, lr}
	ldr r0, _0224CC40 ; =0x00001C7C
	add r6, r1, #0
	add r4, r6, r0
	ldr r0, [r4, #0]
	mov r5, #0
	cmp r0, #2
	bne _0224CC1C
	ldr r5, _0224CC44 ; =0x022514E0
	b _0224CC22
_0224CC1C:
	cmp r0, #1
	bne _0224CC22
	ldr r5, _0224CC48 ; =0x02251428
_0224CC22:
	cmp r5, #0
	beq _0224CC3E
_0224CC26:
	ldrh r2, [r4, #4]
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	blx r2
	cmp r0, #1
	beq _0224CC26
	cmp r0, #2
	bne _0224CC3E
	mov r0, #0
	str r0, [r4, #0]
_0224CC3E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224CC40: .word 0x00001C7C
_0224CC44: .word 0x022514E0
_0224CC48: .word 0x02251428
	thumb_func_end ov9_0224CC08

	thumb_func_start ov9_0224CC4C
ov9_0224CC4C: ; 0x0224CC4C
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224CC4C

	thumb_func_start ov9_0224CC50
ov9_0224CC50: ; 0x0224CC50
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _0224CC78 ; =0x00001C7C
	add r5, r2, #0
	add r4, r0, r1
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224CC64
	bl sub_02022974
_0224CC64:
	cmp r5, #0
	bne _0224CC6C
	bl sub_02022974
_0224CC6C:
	str r5, [r4, #0]
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	str r6, [r4, #0x28]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224CC78: .word 0x00001C7C
	thumb_func_end ov9_0224CC50

	thumb_func_start ov9_0224CC7C
ov9_0224CC7C: ; 0x0224CC7C
	ldr r1, _0224CC8C ; =0x00001C7C
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0224CC88
	mov r0, #1
	bx lr
_0224CC88:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224CC8C: .word 0x00001C7C
	thumb_func_end ov9_0224CC7C

	thumb_func_start ov9_0224CC90
ov9_0224CC90: ; 0x0224CC90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl ov9_0224CBBC
	add r0, r5, #0
	bl ov9_022510D0
	add r1, r0, #0
	add r0, r5, #0
	bl ov9_02249BD4
	mov r0, #1
	strh r0, [r4, #4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224CC90

	thumb_func_start ov9_0224CCB8
ov9_0224CCB8: ; 0x0224CCB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	ldr r1, _0224CD7C ; =0x00001E34
	ldr r6, [r7, #0]
	add r4, r7, r1
	bl ov9_022510D0
	bl ov9_0224D720
	str r0, [sp, #8]
	ldr r1, [r0, #8]
	ldr r0, _0224CD80 ; =0x00000251
	cmp r1, r0
	bne _0224CCDC
	bl sub_02022974
_0224CCDC:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	bl ov9_0224D720
	ldr r1, [r0, #0]
	str r0, [sp, #0xc]
	str r1, [r5, #0xc]
	ldr r0, [r7, #0]
	bl ov5_021D12D0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	ldr r1, [r1, #8]
	bl ov9_0224BF18
	ldr r0, [r6, #0x28]
	bl ov5_021E9CD8
	ldr r0, [r6, #0x3c]
	bl sub_0205EABC
	strh r0, [r5, #8]
	ldr r0, [r6, #0x3c]
	bl sub_0205EAC8
	strh r0, [r5, #0xa]
	mov r0, #8
	ldrsh r0, [r5, r0]
	str r0, [sp]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	ldr r3, [r6, #0x28]
	bl ov5_021E9D3C
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #0x18]
	bl ov9_0224CBBC
	ldr r0, [r4, #0x10]
	bl sub_02039DE4
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r7, #0]
	mov r1, #1
	ldr r0, [r0, #0x28]
	bl ov9_0224CBBC
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	ldr r0, _0224CD80 ; =0x00000251
	str r1, [r4, #0]
	cmp r1, r0
	beq _0224CD70
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl ov9_0224D720
	add r6, r0, #0
	mov r0, #4
	bl sub_02039D78
	str r0, [r4, #0x10]
	ldr r0, [r6, #0]
	ldr r1, [r4, #0x10]
	bl sub_02039DC0
	mov r0, #2
	b _0224CD72
_0224CD70:
	mov r0, #4
_0224CD72:
	strh r0, [r5, #4]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CD7C: .word 0x00001E34
_0224CD80: .word 0x00000251
	thumb_func_end ov9_0224CCB8

	thumb_func_start ov9_0224CD84
ov9_0224CD84: ; 0x0224CD84
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0224CDF4
	ldr r0, _0224CDFC ; =0x00001E34
	add r4, r6, r0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x28]
	bl ov5_021E9828
	add r3, r0, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov5_021E98C8
	add r0, sp, #4
	str r0, [sp]
	ldr r1, _0224CDFC ; =0x00001E34
	add r0, r6, #0
	ldr r1, [r6, r1]
	add r2, sp, #0xc
	add r3, sp, #8
	bl ov9_0224C070
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	bl ov5_021EA678
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl ov5_021EA6A4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl ov5_021EA6D0
	mov r1, #8
	mov r2, #0xa
	add r3, r5, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #0x18]
	add r3, #0x10
	bl ov5_021E9AAC
	mov r0, #3
	strh r0, [r5, #4]
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224CDF4:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0224CDFC: .word 0x00001E34
	thumb_func_end ov9_0224CD84

	thumb_func_start ov9_0224CE00
ov9_0224CE00: ; 0x0224CE00
	push {r4, lr}
	add r4, r1, #0
	ldrh r1, [r4, #6]
	ldr r2, _0224CE28 ; =0x00001E4C
	ldr r0, [r0, r2]
	lsl r2, r1, #2
	add r2, r4, r2
	ldr r2, [r2, #0x10]
	bl ov5_021E9B10
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	cmp r0, #4
	blo _0224CE24
	mov r0, #4
	strh r0, [r4, #4]
_0224CE24:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0224CE28: .word 0x00001E4C
	thumb_func_end ov9_0224CE00

	thumb_func_start ov9_0224CE2C
ov9_0224CE2C: ; 0x0224CE2C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0224CE78 ; =0x00001E34
	add r5, r1, #0
	add r4, r6, r0
	ldr r1, [r4, #0]
	ldr r0, _0224CE7C ; =0x00000251
	cmp r1, r0
	beq _0224CE56
	mov r1, #1
	str r1, [r4, #8]
	ldr r0, [r4, #0x18]
	bl ov9_0224CBBC
	mov r1, #8
	mov r2, #0xa
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #0x18]
	bl ov5_021EA6F4
_0224CE56:
	ldr r0, [r5, #0xc]
	bl ov9_0224D720
	add r1, r0, #0
	ldr r1, [r1, #8]
	add r0, r6, #0
	bl ov9_02249C08
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0224CE72
	mov r1, #0
	bl ov9_0224E0DC
_0224CE72:
	mov r0, #2
	pop {r4, r5, r6, pc}
	nop
_0224CE78: .word 0x00001E34
_0224CE7C: .word 0x00000251
	thumb_func_end ov9_0224CE2C

	thumb_func_start ov9_0224CE80
ov9_0224CE80: ; 0x0224CE80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224CEB8 ; =0x00001E34
	add r4, r1, #0
	add r2, r5, r0
	mov r1, #0
	str r1, [r2, #8]
	ldr r0, [r2, #4]
	cmp r0, #1
	bne _0224CE9A
	ldr r0, [r2, #0x18]
	bl ov9_0224CBBC
_0224CE9A:
	add r0, r5, #0
	bl ov9_022510D0
	bl ov9_0224D720
	add r1, r0, #0
	ldr r1, [r1, #8]
	add r0, r5, #0
	bl ov9_02249C2C
	mov r0, #1
	strh r0, [r4, #4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224CEB8: .word 0x00001E34
	thumb_func_end ov9_0224CE80

	thumb_func_start ov9_0224CEBC
ov9_0224CEBC: ; 0x0224CEBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r1, _0224CFD8 ; =0x00001E34
	ldr r4, [r7, #0]
	add r5, r7, r1
	bl ov9_022510D0
	bl ov9_0224D720
	str r0, [sp, #4]
	ldr r1, [r0, #4]
	ldr r0, _0224CFDC ; =0x00000251
	cmp r1, r0
	bne _0224CEE0
	bl sub_02022974
_0224CEE0:
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl ov9_0224D720
	ldr r1, [r0, #0]
	str r0, [sp]
	str r1, [r6, #0xc]
	ldr r0, [r7, #0]
	bl ov5_021D12D0
	ldr r1, [r6, #0xc]
	add r0, r7, #0
	bl ov9_0224BEB4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0224CF0A
	mov r0, #4
	bl sub_02039D78
	str r0, [r5, #0x10]
_0224CF0A:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0224CF14
	ldr r0, [r4, #0x30]
	str r0, [r5, #0x14]
_0224CF14:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0224CF30
	ldr r0, [r4, #0x28]
	bl ov5_021E9828
	add r2, r0, #0
	ldr r1, [r5, #0x14]
	mov r0, #0
	bl ov5_021E9830
	str r0, [r5, #0x18]
	bl ov5_021E7A54
_0224CF30:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _0224CF3C
	ldr r0, [r5, #0x18]
	bl ov5_021E9998
_0224CF3C:
	ldr r0, [r4, #0x28]
	bl ov5_021E9998
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	bl ov5_021EA6D8
	ldr r0, [r5, #0x18]
	ldr r1, [r4, #0x28]
	bl ov5_021E9F98
	mov r1, #1
	str r1, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #0x18]
	bl ov9_0224CBBC
	ldr r0, [r7, #0]
	mov r1, #0
	ldr r0, [r0, #0x28]
	bl ov9_0224CBBC
	ldr r0, [sp]
	ldr r1, [r4, #0x2c]
	ldr r0, [r0, #0]
	bl sub_02039DC0
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x30]
	bl ov5_021EA540
	ldr r0, [sp]
	add r1, sp, #0x10
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	add r3, sp, #8
	bl ov9_02251094
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl ov5_021EA678
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov5_021EA6A4
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov5_021EA6D0
	ldr r0, [r4, #0x1c]
	add r3, r6, #0
	ldr r0, [r0, #8]
	mov r1, #8
	strh r0, [r6, #8]
	ldr r0, [r4, #0x1c]
	mov r2, #0xa
	ldr r0, [r0, #0xc]
	add r3, #0x10
	strh r0, [r6, #0xa]
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, #0x28]
	bl ov5_021EA58C
	mov r0, #2
	strh r0, [r6, #4]
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224CFD8: .word 0x00001E34
_0224CFDC: .word 0x00000251
	thumb_func_end ov9_0224CEBC

	thumb_func_start ov9_0224CFE0
ov9_0224CFE0: ; 0x0224CFE0
	push {r4, lr}
	add r4, r1, #0
	ldrh r1, [r4, #6]
	ldr r0, [r0, #0]
	lsl r2, r1, #2
	add r2, r4, r2
	ldr r0, [r0, #0x28]
	ldr r2, [r2, #0x10]
	bl ov5_021EA5E0
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	cmp r0, #4
	blo _0224D004
	mov r0, #3
	strh r0, [r4, #4]
_0224D004:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov9_0224CFE0

	thumb_func_start ov9_0224D008
ov9_0224D008: ; 0x0224D008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0]
	mov r1, #8
	mov r2, #0xa
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r0, #0x28]
	bl ov5_021EA6F4
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov9_02249C60
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0224D032
	mov r1, #0
	bl ov9_0224E0DC
_0224D032:
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0x28]
	bl ov9_0224CBBC
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224D008

	thumb_func_start ov9_0224D040
ov9_0224D040: ; 0x0224D040
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov9_022510D0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov9_0224E188
	add r1, r0, #0
	bne _0224D064
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224D064:
	ldrh r0, [r1, #0xe]
	cmp r0, #1
	bhi _0224D074
	add r0, r5, #0
	bl ov9_0224D078
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D074:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224D040

	thumb_func_start ov9_0224D078
ov9_0224D078: ; 0x0224D078
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0x70
	bl ov9_0224A578
	str r4, [r0, #0x64]
	ldr r0, [r5, #0]
	ldr r1, _0224D094 ; =ov9_0224D098
	add r2, r5, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	nop
_0224D094: .word ov9_0224D098
	thumb_func_end ov9_0224D078

	thumb_func_start ov9_0224D098
ov9_0224D098: ; 0x0224D098
	push {r4, r5, r6, lr}
	bl sub_02050A64
	add r4, r0, #0
	bl ov9_0224A598
	ldr r6, _0224D0C4 ; =0x02252224
	add r5, r0, #0
_0224D0A8:
	ldrh r2, [r5, #4]
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _0224D0A8
	cmp r0, #2
	bne _0224D0C0
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224D0C0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224D0C4: .word 0x02252224
	thumb_func_end ov9_0224D098

	thumb_func_start ov9_0224D0C8
ov9_0224D0C8: ; 0x0224D0C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	add r6, r0, #0
	ldrh r1, [r1, #0xe]
	strb r1, [r5]
	ldr r1, [r5, #0x64]
	ldrh r1, [r1, #0xc]
	strh r1, [r5, #2]
	bl ov9_022510D0
	add r4, r0, #0
	bl ov9_0224D720
	ldrb r1, [r5]
	cmp r1, #1
	bne _0224D13E
	ldr r0, [r0, #8]
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B5D8
	ldr r1, _0224D280 ; =0x0000023D
	cmp r4, r1
	bne _0224D11C
	cmp r0, #2
	bne _0224D11C
	ldr r0, [r6, #0]
	mov r1, #0x81
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	str r0, [r5, #0x68]
	cmp r0, #0
	bne _0224D184
	bl sub_02022974
	b _0224D184
_0224D11C:
	mov r1, #0x91
	lsl r1, r1, #2
	cmp r4, r1
	bne _0224D184
	cmp r0, #7
	bne _0224D184
	ldr r0, [r6, #0]
	mov r1, #0x86
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	str r0, [r5, #0x68]
	cmp r0, #0
	bne _0224D184
	bl sub_02022974
	b _0224D184
_0224D13E:
	ldr r0, [r0, #4]
	strh r0, [r5, #6]
	ldrh r0, [r5, #2]
	cmp r0, #0xa
	beq _0224D162
	cmp r0, #0xb
	beq _0224D16C
	cmp r0, #0xd
	bne _0224D184
	add r0, r6, #0
	mov r1, #3
	bl ov9_02249D70
	add r0, r6, #0
	mov r1, #4
	bl ov9_02249D8C
	b _0224D184
_0224D162:
	add r0, r6, #0
	mov r1, #5
	bl ov9_02249D8C
	b _0224D184
_0224D16C:
	add r0, r6, #0
	mov r1, #6
	bl ov9_02249D70
	add r0, r6, #0
	mov r1, #3
	bl ov9_02249D8C
	add r0, r6, #0
	mov r1, #5
	bl ov9_02249D8C
_0224D184:
	ldrh r0, [r5, #2]
	bl ov9_0224DE70
	add r4, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r1, r5, #0
	add r6, r0, #0
	add r1, #0x14
	bl sub_02063050
	add r0, r6, #0
	mov r1, #1
	bl sub_02062E28
	mov r0, #0
	str r0, [r5, #0x44]
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	add r0, r6, #0
	bl sub_02063020
	strh r0, [r5, #0xa]
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r5, #0xa]
	add r0, r6, #0
	bl sub_02063030
	strh r0, [r5, #0xc]
	mov r0, #0xc
	ldrsh r1, [r5, r0]
	mov r0, #6
	ldrsh r0, [r4, r0]
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #0xc]
	add r0, r6, #0
	bl sub_02063040
	strh r0, [r5, #0xe]
	mov r0, #0xe
	mov r2, #8
	ldrsh r3, [r5, r0]
	ldrsh r1, [r4, r2]
	mov r7, #0xc
	add r1, r3, r1
	strh r1, [r5, #0xe]
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r3, r4, #0
	add r3, #0x10
	lsl r1, r1, #0x10
	str r1, [r5, #0x2c]
	mov r1, #6
	ldrsh r1, [r4, r1]
	lsl r1, r1, #0x10
	str r1, [r5, #0x30]
	ldrsh r1, [r4, r2]
	add r2, r5, #0
	add r2, #0x20
	lsl r1, r1, #0x10
	str r1, [r5, #0x34]
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	lsl r1, r1, #0x10
	str r1, [r5, #0x38]
	ldrsh r1, [r4, r7]
	lsl r1, r1, #0x10
	str r1, [r5, #0x3c]
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0x10
	str r0, [r5, #0x40]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldrh r0, [r4, #2]
	strh r0, [r5, #8]
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0224D26C
	lsl r0, r7, #0xb
	str r0, [r5, #0x5c]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0206309C
	ldr r0, [sp, #4]
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _0224D252
	add r1, sp, #0
	bl sub_0206309C
	ldr r0, [sp, #4]
	str r0, [r5, #0x54]
_0224D252:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x20]
	bl ov9_0224E330
	ldr r0, [r0, #4]
	str r0, [r5, #0x58]
	mov r0, #1
	strb r0, [r5, #1]
	strh r0, [r5, #4]
	ldr r0, _0224D284 ; =0x000005C9
	bl sub_02005748
	b _0224D270
_0224D26C:
	mov r0, #2
	strh r0, [r5, #4]
_0224D270:
	ldrh r0, [r4, #0x1c]
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #0x1e]
	strh r0, [r5, #0x12]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224D280: .word 0x0000023D
_0224D284: .word 0x000005C9
	thumb_func_end ov9_0224D0C8

	thumb_func_start ov9_0224D288
ov9_0224D288: ; 0x0224D288
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, [r0, #0]
	add r5, r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x20]
	bl ov9_0224E330
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_0206309C
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x5c]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_020630AC
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x14
	bl ov9_022511F4
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _0224D2F4
	add r1, sp, #0xc
	bl sub_0206309C
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x5c]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	add r1, sp, #0xc
	bl sub_020630AC
	ldr r0, [r5, #0x68]
	add r1, sp, #0
	bl sub_02063050
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x68]
	bl ov9_022511F4
_0224D2F4:
	ldr r1, [r5, #0x58]
	ldr r0, [r5, #0x5c]
	add r0, r1, r0
	str r0, [r6, #4]
	ldr r0, [r5, #0x5c]
	neg r0, r0
	str r0, [r5, #0x5c]
	bmi _0224D36C
	mov r2, #1
	lsl r2, r2, #0xe
	cmp r0, r2
	blt _0224D314
	lsr r1, r2, #1
	sub r0, r0, r1
	str r0, [r5, #0x5c]
	b _0224D332
_0224D314:
	lsr r1, r2, #2
	cmp r0, r1
	ble _0224D320
	sub r0, r0, r1
	str r0, [r5, #0x5c]
	b _0224D332
_0224D320:
	ldr r0, [r5, #0x60]
	add r0, r0, #1
	str r0, [r5, #0x60]
	cmp r0, #8
	blo _0224D332
	ldr r1, [r5, #0x5c]
	lsr r0, r2, #2
	sub r0, r1, r0
	str r0, [r5, #0x5c]
_0224D332:
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	bgt _0224D36C
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_0206309C
	ldr r0, [r5, #0x50]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_020630AC
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _0224D364
	add r1, sp, #0xc
	bl sub_0206309C
	ldr r0, [r5, #0x54]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	bl sub_020630AC
_0224D364:
	ldr r0, [r5, #0x58]
	str r0, [r6, #4]
	mov r0, #2
	strh r0, [r5, #4]
_0224D36C:
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_0224D288

	thumb_func_start ov9_0224D374
ov9_0224D374: ; 0x0224D374
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, [r0, #0]
	add r5, r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x20]
	bl ov9_0224E330
	ldr r2, [r5, #0x44]
	ldr r1, [r5, #0x2c]
	cmp r2, r1
	beq _0224D3AA
	ldr r1, [r5, #0x20]
	add r1, r2, r1
	str r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x20]
	add r1, r2, r1
	str r1, [r5, #0x14]
	ldr r2, [r0, #0]
	ldr r1, [r5, #0x20]
	add r1, r2, r1
	str r1, [r0, #0]
_0224D3AA:
	ldr r2, [r5, #0x48]
	ldr r1, [r5, #0x30]
	cmp r2, r1
	beq _0224D3C8
	ldr r1, [r5, #0x24]
	add r1, r2, r1
	str r1, [r5, #0x48]
	ldr r2, [r5, #0x18]
	ldr r1, [r5, #0x24]
	add r1, r2, r1
	str r1, [r5, #0x18]
	ldr r2, [r0, #4]
	ldr r1, [r5, #0x24]
	add r1, r2, r1
	str r1, [r0, #4]
_0224D3C8:
	ldr r2, [r5, #0x4c]
	ldr r1, [r5, #0x34]
	cmp r2, r1
	beq _0224D3E6
	ldr r1, [r5, #0x28]
	add r1, r2, r1
	str r1, [r5, #0x4c]
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x28]
	add r1, r2, r1
	str r1, [r5, #0x1c]
	ldr r2, [r0, #8]
	ldr r1, [r5, #0x28]
	add r1, r2, r1
	str r1, [r0, #8]
_0224D3E6:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x14
	bl ov9_022511F4
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _0224D408
	add r1, sp, #0
	bl sub_02063050
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x68]
	bl ov9_022511F4
_0224D408:
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x38]
	cmp r1, r0
	bne _0224D42A
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x3c]
	cmp r1, r0
	bne _0224D42A
	ldr r1, [r5, #0x4c]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bne _0224D42A
	mov r0, #3
	strh r0, [r5, #4]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224D42A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov9_0224D374

	thumb_func_start ov9_0224D430
ov9_0224D430: ; 0x0224D430
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl ov9_0224E0DC
	ldrh r0, [r4, #8]
	cmp r0, #0x16
	bne _0224D466
	ldrh r1, [r4, #0x10]
	cmp r1, #0xb
	beq _0224D450
	add r0, r5, #0
	bl ov9_02249D70
_0224D450:
	ldrh r1, [r4, #0x12]
	cmp r1, #0xb
	beq _0224D45C
	add r0, r5, #0
	bl ov9_02249D8C
_0224D45C:
	ldrh r2, [r4, #6]
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov9_0224E07C
_0224D466:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0224D492
	ldrh r2, [r4, #6]
	ldr r1, _0224D4C0 ; =0x0000023E
	cmp r2, r1
	bne _0224D47C
	mov r1, #0x80
	bl sub_0206290C
	b _0224D48A
_0224D47C:
	mov r1, #0x80
	bl sub_0206290C
	ldr r0, [r4, #0x68]
	mov r1, #6
	bl sub_0206295C
_0224D48A:
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0x68]
	bl sub_02062914
_0224D492:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0224D4A4
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	mov r2, #2
	bl ov9_0224CC50
	b _0224D4B8
_0224D4A4:
	cmp r0, #0
	bne _0224D4B4
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	mov r2, #1
	bl ov9_0224CC50
	b _0224D4B8
_0224D4B4:
	bl sub_02022974
_0224D4B8:
	mov r0, #4
	strh r0, [r4, #4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224D4C0: .word 0x0000023E
	thumb_func_end ov9_0224D430

	thumb_func_start ov9_0224D4C4
ov9_0224D4C4: ; 0x0224D4C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x20]
	bl ov9_0224E330
	ldr r2, [r4, #0x44]
	ldr r1, [r4, #0x2c]
	cmp r2, r1
	beq _0224D4FC
	ldr r1, [r4, #0x20]
	add r1, r2, r1
	str r1, [r4, #0x44]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x20]
	add r1, r2, r1
	str r1, [r4, #0x14]
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x20]
	add r1, r2, r1
	str r1, [r0, #0]
_0224D4FC:
	ldr r2, [r4, #0x48]
	ldr r1, [r4, #0x30]
	cmp r2, r1
	beq _0224D51A
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r4, #0x18]
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r0, #4]
_0224D51A:
	ldr r2, [r4, #0x4c]
	ldr r1, [r4, #0x34]
	cmp r2, r1
	beq _0224D538
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r4, #0x4c]
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r4, #0x1c]
	ldr r2, [r0, #8]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r0, #8]
_0224D538:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x14
	bl ov9_022511F4
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0224D55A
	add r1, sp, #0
	bl sub_02063050
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x68]
	bl ov9_022511F4
_0224D55A:
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bne _0224D5DE
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	bne _0224D5DE
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bne _0224D5DE
	ldrh r0, [r4, #8]
	cmp r0, #0x16
	bne _0224D586
	ldr r0, _0224D5E4 ; =0x000005C9
	mov r1, #0
	bl sub_020057A4
	mov r0, #5
	strh r0, [r4, #4]
	b _0224D5D8
_0224D586:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	add r5, r0, #0
	bl sub_02063024
	mov r1, #0xc
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063034
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063044
	add r0, r5, #0
	bl sub_02064208
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0224D5C6
	mov r1, #0xc
	ldrsh r1, [r4, r1]
	bl sub_02063034
	ldr r0, [r4, #0x68]
	bl sub_02064208
_0224D5C6:
	ldrh r1, [r4, #8]
	ldr r0, [r4, #0x64]
	mov r2, #2
	strh r1, [r0, #0xc]
	ldr r0, [r0, #0x1c]
	bl sub_020629B4
	mov r0, #0
	strh r0, [r4, #4]
_0224D5D8:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224D5DE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224D5E4: .word 0x000005C9
	thumb_func_end ov9_0224D4C4

	thumb_func_start ov9_0224D5E8
ov9_0224D5E8: ; 0x0224D5E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov9_0224CC7C
	cmp r0, #0
	bne _0224D690
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	add r6, r0, #0
	bl sub_02063024
	mov r1, #0xc
	ldrsh r1, [r4, r1]
	add r0, r6, #0
	bl sub_02063034
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	add r0, r6, #0
	bl sub_02063044
	add r0, r6, #0
	bl sub_02064208
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205ED48
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0224D640
	mov r1, #0xc
	ldrsh r1, [r4, r1]
	bl sub_02063034
	ldr r0, [r4, #0x68]
	bl sub_02064208
_0224D640:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0224D65E
	ldrh r0, [r4, #2]
	cmp r0, #9
	bne _0224D65E
	add r0, r5, #0
	mov r1, #7
	bl ov9_02249D70
	ldr r1, _0224D694 ; =0x00000243
	add r0, r5, #0
	mov r2, #0
	bl ov9_0224DDA0
_0224D65E:
	ldrh r1, [r4, #6]
	ldr r0, _0224D698 ; =0x00000241
	cmp r1, r0
	bne _0224D68C
	ldrb r0, [r4]
	cmp r0, #1
	bne _0224D68C
	ldr r0, [r4, #0x64]
	ldrh r0, [r0, #4]
	cmp r0, #1
	bne _0224D68C
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B6DC
	cmp r0, #0
	bne _0224D68C
	mov r0, #6
	strh r0, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224D68C:
	mov r0, #2
	pop {r4, r5, r6, pc}
_0224D690:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224D694: .word 0x00000243
_0224D698: .word 0x00000241
	thumb_func_end ov9_0224D5E8

	thumb_func_start ov9_0224D69C
ov9_0224D69C: ; 0x0224D69C
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	ldr r0, [r0, #0x38]
	mov r1, #0x86
	bl sub_0206251C
	add r4, r0, #0
	bne _0224D6B2
	bl sub_02022974
_0224D6B2:
	add r0, r4, #0
	bl sub_02063020
	add r6, r0, #0
	sub r0, #0x58
	cmp r0, #3
	blo _0224D6C4
	bl sub_02022974
_0224D6C4:
	sub r6, #0x58
	ldr r1, _0224D6DC ; =0x02251384
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02065700
	str r0, [r5, #0x6c]
	mov r0, #7
	strh r0, [r5, #4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224D6DC: .word 0x02251384
	thumb_func_end ov9_0224D69C

	thumb_func_start ov9_0224D6E0
ov9_0224D6E0: ; 0x0224D6E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0x6c]
	bl sub_0206574C
	cmp r0, #1
	bne _0224D71A
	ldr r0, [r5, #0x6c]
	bl sub_02065758
	ldr r0, [r4, #0]
	mov r1, #0x86
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r1, r0, #0
	add r0, r4, #0
	bl ov9_0224EE70
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #1
	bl sub_0206B6EC
	mov r0, #2
	pop {r3, r4, r5, pc}
_0224D71A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224D6E0

	thumb_func_start ov9_0224D720
ov9_0224D720: ; 0x0224D720
	push {r3, lr}
	ldr r3, _0224D740 ; =0x022530A4
	mov r2, #0
_0224D726:
	ldr r1, [r3, #0]
	cmp r1, r0
	bne _0224D730
	add r0, r3, #0
	pop {r3, pc}
_0224D730:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0xa
	blt _0224D726
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0224D740: .word 0x022530A4
	thumb_func_end ov9_0224D720

	thumb_func_start ov9_0224D744
ov9_0224D744: ; 0x0224D744
	push {r4, lr}
	mov r1, #0xd
	lsl r1, r1, #6
	add r4, r0, r1
	ldr r2, _0224D77C ; =0x000012F8
	add r0, r4, #0
	mov r1, #0
	bl sub_020D5124
	mov r1, #0
	add r2, r4, #0
	mov r0, #0x19
_0224D75C:
	add r1, r1, #1
	str r0, [r2, #0]
	add r2, #0x18
	cmp r1, #0x19
	blt _0224D75C
	mov r0, #0x96
	mov r2, #0
	mov r1, #5
	lsl r0, r0, #2
_0224D76E:
	add r2, r2, #1
	str r1, [r4, r0]
	add r4, #8
	cmp r2, #5
	blt _0224D76E
	pop {r4, pc}
	nop
_0224D77C: .word 0x000012F8
	thumb_func_end ov9_0224D744

	thumb_func_start ov9_0224D780
ov9_0224D780: ; 0x0224D780
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0xd
	lsl r0, r0, #6
	add r4, r1, #0
	add r6, r5, r0
	cmp r4, #0x19
	blo _0224D796
	bl sub_02022974
_0224D796:
	mov r0, #0x18
	mul r0, r4
	add r1, r6, r0
	ldr r0, [r6, r0]
	cmp r0, #0x19
	bne _0224D7B8
	stmia r1!, {r4}
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r3, _0224D7BC ; =0x02252FD0
	lsl r4, r4, #2
	ldr r0, [r0, #0x40]
	ldr r3, [r3, r4]
	mov r2, #0
	bl ov5_021DFB00
_0224D7B8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224D7BC: .word 0x02252FD0
	thumb_func_end ov9_0224D780

	thumb_func_start ov9_0224D7C0
ov9_0224D7C0: ; 0x0224D7C0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xd
	lsl r1, r1, #6
	add r4, r0, r1
	cmp r5, #0x19
	blo _0224D7D2
	bl sub_02022974
_0224D7D2:
	mov r0, #0x18
	mul r0, r5
	add r1, r4, r0
	ldr r0, [r4, r0]
	cmp r0, #0x19
	beq _0224D7E8
	mov r0, #0x19
	str r0, [r1, #0]
	add r0, r1, #4
	bl sub_0207395C
_0224D7E8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224D7C0

	thumb_func_start ov9_0224D7EC
ov9_0224D7EC: ; 0x0224D7EC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xd
	lsl r1, r1, #6
	add r4, r0, r1
	cmp r5, #0x19
	blo _0224D7FE
	bl sub_02022974
_0224D7FE:
	mov r0, #0x18
	mul r0, r5
	add r5, r4, r0
	ldr r0, [r4, r0]
	cmp r0, #0x19
	bne _0224D80E
	bl sub_02022974
_0224D80E:
	add r0, r5, #4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224D7EC

	thumb_func_start ov9_0224D814
ov9_0224D814: ; 0x0224D814
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0xd
	lsl r0, r0, #6
	add r5, r1, #0
	add r7, r6, r0
	cmp r5, #5
	blo _0224D82A
	bl sub_02022974
_0224D82A:
	mov r0, #0x96
	lsl r0, r0, #2
	add r0, r7, r0
	lsl r4, r5, #3
	str r0, [sp, #4]
	ldr r0, [r0, r4]
	cmp r0, #5
	bne _0224D86C
	ldr r0, _0224D870 ; =0x022514A4
	lsl r1, r5, #2
	ldr r0, [r0, r1]
	str r0, [sp]
	ldr r0, [r6, #0]
	ldr r1, [sp]
	ldr r0, [r0, #0x40]
	bl ov5_021DF5A8
	add r1, r0, #0
	mov r0, #0x97
	lsl r0, r0, #2
	add r7, r7, r0
	mov r0, #4
	bl sub_02018184
	str r0, [r7, r4]
	ldr r0, [r6, #0]
	ldr r1, [sp]
	ldr r0, [r0, #0x40]
	ldr r2, [r7, r4]
	bl ov5_021DF5B4
	ldr r0, [sp, #4]
	str r5, [r0, r4]
_0224D86C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D870: .word 0x022514A4
	thumb_func_end ov9_0224D814

	thumb_func_start ov9_0224D874
ov9_0224D874: ; 0x0224D874
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xd
	lsl r1, r1, #6
	add r4, r0, r1
	cmp r5, #5
	blo _0224D886
	bl sub_02022974
_0224D886:
	mov r0, #0x96
	lsl r0, r0, #2
	lsl r3, r5, #3
	add r2, r4, r0
	ldr r1, [r2, r3]
	cmp r1, #5
	beq _0224D8A2
	mov r1, #5
	str r1, [r2, r3]
	add r1, r4, r3
	add r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_020181C4
_0224D8A2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224D874

	thumb_func_start ov9_0224D8A4
ov9_0224D8A4: ; 0x0224D8A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0xd
	lsl r1, r1, #6
	add r4, r0, r1
	add r0, r5, #0
	add r7, r2, #0
	bl ov9_0224DB04
	cmp r0, #1
	bne _0224D8E8
	ldr r2, _0224D924 ; =0x00000282
	mov r0, #0
	add r1, r4, #0
	sub r3, r2, #2
_0224D8C2:
	ldrh r6, [r1, r3]
	cmp r6, #1
	bne _0224D8E0
	ldrh r6, [r1, r2]
	cmp r5, r6
	bne _0224D8E0
	mov r1, #1
	str r1, [r7, #0]
	mov r1, #0xa
	lsl r1, r1, #6
	add r2, r4, r1
	mov r1, #0x7c
	mul r1, r0
	add r0, r2, r1
	pop {r3, r4, r5, r6, r7, pc}
_0224D8E0:
	add r0, r0, #1
	add r1, #0x7c
	cmp r0, #0x22
	blt _0224D8C2
_0224D8E8:
	mov r0, #0xa
	mov r1, #0
	add r3, r4, #0
	lsl r0, r0, #6
_0224D8F0:
	ldrh r2, [r3, r0]
	cmp r2, #0
	bne _0224D912
	mov r0, #0
	str r0, [r7, #0]
	mov r0, #0x7c
	mul r0, r1
	mov r1, #0xa
	lsl r1, r1, #6
	add r3, r4, r1
	mov r2, #1
	strh r2, [r3, r0]
	add r2, r4, r0
	add r1, r1, #2
	strh r5, [r2, r1]
	add r0, r3, r0
	pop {r3, r4, r5, r6, r7, pc}
_0224D912:
	add r1, r1, #1
	add r3, #0x7c
	cmp r1, #0x22
	blt _0224D8F0
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D924: .word 0x00000282
	thumb_func_end ov9_0224D8A4

	thumb_func_start ov9_0224D928
ov9_0224D928: ; 0x0224D928
	push {r4, lr}
	add r4, r1, #0
	bne _0224D932
	bl sub_02022974
_0224D932:
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end ov9_0224D928

	thumb_func_start ov9_0224D938
ov9_0224D938: ; 0x0224D938
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #2]
	bl ov9_0224DB04
	cmp r0, #0
	bne _0224D950
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224D928
_0224D950:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224D938

	thumb_func_start ov9_0224D954
ov9_0224D954: ; 0x0224D954
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xd
	lsl r0, r0, #6
	add r4, r7, r0
	sub r0, #0xc0
	str r1, [sp]
	mov r6, #0
	add r5, r4, r0
_0224D966:
	mov r0, #0xa
	lsl r0, r0, #6
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0224D982
	ldr r0, _0224D990 ; =0x00000282
	ldrh r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	bne _0224D982
	add r0, r7, #0
	add r1, r5, #0
	bl ov9_0224D928
_0224D982:
	add r6, r6, #1
	add r4, #0x7c
	add r5, #0x7c
	cmp r6, #0x22
	blt _0224D966
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D990: .word 0x00000282
	thumb_func_end ov9_0224D954

	thumb_func_start ov9_0224D994
ov9_0224D994: ; 0x0224D994
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0224D99A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224D7C0
	add r5, r5, #1
	cmp r5, #0x19
	blt _0224D99A
	mov r5, #0
_0224D9AA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224D874
	add r5, r5, #1
	cmp r5, #5
	blt _0224D9AA
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224D994

	thumb_func_start ov9_0224D9BC
ov9_0224D9BC: ; 0x0224D9BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #4]
	mov r3, #0xd
	add r6, r2, #0
	add r5, r1, #0
	lsl r3, r3, #6
	add r2, r0, #0
	add r4, r2, r3
	str r0, [sp]
	ldr r7, [sp, #0x28]
	cmp r5, #0x19
	beq _0224D9F4
	mov r2, #0x18
	add r3, r5, #0
	mul r3, r2
	add r2, r4, r3
	str r2, [sp, #0xc]
	ldr r2, [r4, r3]
	cmp r2, #0x19
	bne _0224D9EA
	bl ov9_0224D780
_0224D9EA:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, r1, #4
	bl sub_02073B70
_0224D9F4:
	cmp r6, #5
	beq _0224DA42
	lsl r0, r6, #3
	str r0, [sp, #8]
	add r1, r4, r0
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #5
	bne _0224DA10
	ldr r0, [sp]
	add r1, r6, #0
	bl ov9_0224D814
_0224DA10:
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r4, r1
	mov r1, #0x97
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	mov r2, #0
	bl sub_02073994
	mov r0, #0x18
	mul r0, r5
	add r4, r4, r0
	add r0, r7, #0
	add r1, r4, #4
	mov r2, #4
	bl sub_02073A3C
	add r0, r7, #0
	add r1, r4, #4
	bl sub_02073A5C
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_02073B84
_0224DA42:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224D9BC

	thumb_func_start ov9_0224DA48
ov9_0224DA48: ; 0x0224DA48
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r2, _0224DA60 ; =0x022531D0
	lsl r1, r1, #3
	str r3, [sp]
	add r5, r2, r1
	ldrh r1, [r2, r1]
	ldrh r2, [r5, #2]
	add r3, r4, #0
	bl ov9_0224D9BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224DA60: .word 0x022531D0
	thumb_func_end ov9_0224DA48

	thumb_func_start ov9_0224DA64
ov9_0224DA64: ; 0x0224DA64
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	mov r2, #0xd
	lsl r2, r2, #6
	add r5, r0, r2
	ldr r0, _0224DAA8 ; =0x022531D0
	lsl r1, r1, #3
	ldrh r1, [r0, r1]
	mov r0, #0x18
	add r5, #0x10
	add r4, r1, #0
	mul r4, r0
	mov r2, #0x1f
	ldr r0, [r5, r4]
	mov r1, #1
	lsl r2, r2, #0x10
	add r6, r3, #0
	bl sub_020B2D8C
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_020B3764
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0224DAA4
	mov r1, #0x3f
	ldr r0, [r5, r4]
	and r1, r6
	bl sub_020B3724
_0224DAA4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DAA8: .word 0x022531D0
	thumb_func_end ov9_0224DA64

	thumb_func_start ov9_0224DAAC
ov9_0224DAAC: ; 0x0224DAAC
	push {r3, lr}
	mov r3, #0
	mvn r3, r3
	bl ov9_0224DA64
	pop {r3, pc}
	thumb_func_end ov9_0224DAAC

	thumb_func_start ov9_0224DAB8
ov9_0224DAB8: ; 0x0224DAB8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	mov r2, #0xd
	lsl r2, r2, #6
	add r4, r0, r2
	ldr r0, _0224DAE8 ; =0x022531D0
	lsl r1, r1, #3
	ldrh r1, [r0, r1]
	mov r0, #0x18
	add r5, r1, #0
	mul r5, r0
	ldr r0, [r4, r5]
	cmp r0, #0x19
	blo _0224DAD8
	bl sub_02022974
_0224DAD8:
	add r0, r4, r5
	mov r1, #0x3f
	ldr r0, [r0, #0x10]
	and r1, r6
	bl sub_020B3724
	pop {r4, r5, r6, pc}
	nop
_0224DAE8: .word 0x022531D0
	thumb_func_end ov9_0224DAB8

	thumb_func_start ov9_0224DAEC
ov9_0224DAEC: ; 0x0224DAEC
	lsl r1, r0, #3
	ldr r0, _0224DB00 ; =0x022531D0
	add r0, r0, r1
	ldrh r0, [r0, #2]
	cmp r0, #5
	beq _0224DAFC
	mov r0, #1
	bx lr
_0224DAFC:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224DB00: .word 0x022531D0
	thumb_func_end ov9_0224DAEC

	thumb_func_start ov9_0224DB04
ov9_0224DB04: ; 0x0224DB04
	lsl r1, r0, #3
	ldr r0, _0224DB18 ; =0x022531D0
	add r0, r0, r1
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _0224DB14
	mov r0, #1
	bx lr
_0224DB14:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224DB18: .word 0x022531D0
	thumb_func_end ov9_0224DB04

	thumb_func_start ov9_0224DB1C
ov9_0224DB1C: ; 0x0224DB1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0224DB22:
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224B8DC
	cmp r0, #0
	bne _0224DB5A
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224E160
	cmp r0, #0
	bne _0224DB5A
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224E9F4
	cmp r0, #0
	bne _0224DB5A
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224ECC0
	cmp r0, #0
	bne _0224DB5A
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224D954
_0224DB5A:
	add r5, r5, #1
	cmp r5, #0x19
	blt _0224DB22
	mov r5, #0
_0224DB62:
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224B7B0
	cmp r0, #0
	bne _0224DB9A
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224E0E0
	cmp r0, #0
	bne _0224DB9A
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224E9A4
	cmp r0, #0
	bne _0224DB9A
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224ECE8
	cmp r0, #0
	bne _0224DB9A
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224D7C0
_0224DB9A:
	add r5, r5, #1
	cmp r5, #0x19
	blt _0224DB62
	mov r5, #0
_0224DBA2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224B844
	cmp r0, #0
	bne _0224DBDA
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224E120
	cmp r0, #0
	bne _0224DBDA
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224E9CC
	cmp r0, #0
	bne _0224DBDA
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224ED20
	cmp r0, #0
	bne _0224DBDA
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224D874
_0224DBDA:
	add r5, r5, #1
	cmp r5, #5
	blt _0224DBA2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224DB1C

	thumb_func_start ov9_0224DBE4
ov9_0224DBE4: ; 0x0224DBE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r2, #0
	ldr r7, _0224DC2C ; =0x022533C4
	mov r2, #0xc
	add r5, r1, #0
	mul r5, r2
	ldr r2, [r7, r5]
	cmp r2, #0
	bne _0224DBFE
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224DBFE:
	lsl r2, r1, #3
	ldr r1, _0224DC30 ; =0x022531D0
	ldrh r1, [r1, r2]
	bl ov9_0224D7EC
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020BB4C8
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	add r2, sp, #0
	add r3, r7, r5
	bl sub_0201CED8
	cmp r0, #0
	beq _0224DC26
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224DC26:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DC2C: .word 0x022533C4
_0224DC30: .word 0x022531D0
	thumb_func_end ov9_0224DBE4

	thumb_func_start ov9_0224DC34
ov9_0224DC34: ; 0x0224DC34
	ldr r1, _0224DC44 ; =0x000016D0
	mov r2, #0x12
	add r0, r0, r1
	ldr r3, _0224DC48 ; =sub_020D5124
	mov r1, #0
	lsl r2, r2, #6
	bx r3
	nop
_0224DC44: .word 0x000016D0
_0224DC48: .word sub_020D5124
	thumb_func_end ov9_0224DC34

	thumb_func_start ov9_0224DC4C
ov9_0224DC4C: ; 0x0224DC4C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0224DC70 ; =0x000016D0
	mov r4, #0
	add r5, r6, r0
_0224DC56:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0224DC64
	add r0, r6, #0
	add r1, r5, #0
	bl ov9_0224E044
_0224DC64:
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x20
	blt _0224DC56
	pop {r4, r5, r6, pc}
	nop
_0224DC70: .word 0x000016D0
	thumb_func_end ov9_0224DC4C

	thumb_func_start ov9_0224DC74
ov9_0224DC74: ; 0x0224DC74
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0224DCA4 ; =0x000016D0
	add r7, r1, #0
	mov r4, #0
	add r5, r6, r0
_0224DC80:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0224DC9A
	ldrh r0, [r5, #2]
	cmp r7, r0
	bne _0224DC9A
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0224DC9A
	add r0, r6, #0
	add r1, r5, #0
	bl ov9_0224E060
_0224DC9A:
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x20
	blt _0224DC80
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DCA4: .word 0x000016D0
	thumb_func_end ov9_0224DC74

	thumb_func_start ov9_0224DCA8
ov9_0224DCA8: ; 0x0224DCA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov9_02249D38
	cmp r0, #1
	bne _0224DD00
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #0
	ldr r4, [r0, #0x38]
	add r2, sp, #4
	add r0, r4, #0
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _0224DD1E
	add r6, sp, #0
	add r7, sp, #4
_0224DCD2:
	ldr r0, [sp]
	bl sub_02062910
	cmp r0, #0xfd
	bne _0224DCEC
	add r0, r5, #0
	bl ov9_0224DDDC
	add r1, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	bl ov9_0224DF10
_0224DCEC:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _0224DCD2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224DD00:
	add r0, r5, #0
	bl ov9_022510D0
	add r6, r0, #0
	bl ov9_0224D720
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224DD24
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov9_0224DD24
_0224DD1E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224DCA8

	thumb_func_start ov9_0224DD24
ov9_0224DD24: ; 0x0224DD24
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov9_0224DE40
	add r1, r0, #0
	beq _0224DD3C
	add r0, r5, #0
	add r2, r4, #0
	bl ov9_0224DD40
_0224DD3C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224DD24

	thumb_func_start ov9_0224DD40
ov9_0224DD40: ; 0x0224DD40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, #0
	bne _0224DD50
	bl sub_02022974
_0224DD50:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224DD9E
	mov r4, #0
_0224DD5A:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4]
	ldr r1, [r0, #0x14]
	cmp r1, #0xb
	beq _0224DD6E
	add r0, r6, #0
	bl ov9_02249DA8
	cmp r0, #1
	bne _0224DD94
_0224DD6E:
	ldr r1, [r5, #4]
	add r0, r6, #0
	ldr r1, [r1, r4]
	add r2, r7, #0
	ldrh r1, [r1]
	bl ov9_0224DE08
	cmp r0, #0
	bne _0224DD94
	add r0, r6, #0
	bl ov9_0224DDDC
	ldr r2, [r5, #4]
	add r1, r0, #0
	ldr r2, [r2, r4]
	add r0, r6, #0
	add r3, r7, #0
	bl ov9_0224DFF4
_0224DD94:
	ldr r0, [r5, #4]
	add r4, r4, #4
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _0224DD5A
_0224DD9E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224DD40

	thumb_func_start ov9_0224DDA0
ov9_0224DDA0: ; 0x0224DDA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl ov9_0224DE40
	add r4, r0, #0
	ldr r1, [r4, #4]
	lsl r7, r7, #2
	ldr r1, [r1, r7]
	add r0, r5, #0
	ldrh r1, [r1]
	add r2, r6, #0
	bl ov9_0224DE08
	cmp r0, #0
	bne _0224DDD8
	add r0, r5, #0
	bl ov9_0224DDDC
	ldr r2, [r4, #4]
	add r1, r0, #0
	ldr r2, [r2, r7]
	add r0, r5, #0
	add r3, r6, #0
	bl ov9_0224DFF4
_0224DDD8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224DDA0

	thumb_func_start ov9_0224DDDC
ov9_0224DDDC: ; 0x0224DDDC
	push {r3, lr}
	ldr r1, _0224DE04 ; =0x000016D0
	mov r2, #0
	add r1, r0, r1
	add r3, r1, #0
_0224DDE6:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0224DDF4
	mov r0, #0x24
	mul r0, r2
	add r0, r1, r0
	pop {r3, pc}
_0224DDF4:
	add r2, r2, #1
	add r3, #0x24
	cmp r2, #0x20
	blt _0224DDE6
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0224DE04: .word 0x000016D0
	thumb_func_end ov9_0224DDDC

	thumb_func_start ov9_0224DE08
ov9_0224DE08: ; 0x0224DE08
	push {r4, r5}
	ldr r4, _0224DE3C ; =0x000016D0
	mov r3, #0
	add r0, r0, r4
	add r5, r0, #0
_0224DE12:
	ldrb r4, [r5]
	cmp r4, #1
	bne _0224DE2E
	ldrh r4, [r5, #4]
	cmp r1, r4
	bne _0224DE2E
	ldrh r4, [r5, #2]
	cmp r2, r4
	bne _0224DE2E
	mov r1, #0x24
	mul r1, r3
	add r0, r0, r1
	pop {r4, r5}
	bx lr
_0224DE2E:
	add r3, r3, #1
	add r5, #0x24
	cmp r3, #0x20
	blt _0224DE12
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0224DE3C: .word 0x000016D0
	thumb_func_end ov9_0224DE08

	thumb_func_start ov9_0224DE40
ov9_0224DE40: ; 0x0224DE40
	ldr r3, _0224DE5C ; =0x02252C38
	mov r2, #0
_0224DE44:
	ldr r1, [r3, #0]
	cmp r1, r0
	bne _0224DE4E
	add r0, r3, #0
	bx lr
_0224DE4E:
	add r2, r2, #1
	add r3, #8
	cmp r2, #8
	blt _0224DE44
	mov r0, #0
	bx lr
	nop
_0224DE5C: .word 0x02252C38
	thumb_func_end ov9_0224DE40

	thumb_func_start ov9_0224DE60
ov9_0224DE60: ; 0x0224DE60
	push {r4, lr}
	add r4, r1, #0
	bl ov9_0224DE40
	ldr r1, [r0, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
	thumb_func_end ov9_0224DE60

	thumb_func_start ov9_0224DE70
ov9_0224DE70: ; 0x0224DE70
	push {r3, lr}
	ldr r3, _0224DE90 ; =0x02253830
	mov r2, #0
_0224DE76:
	ldrh r1, [r3]
	cmp r1, r0
	bne _0224DE80
	add r0, r3, #0
	pop {r3, pc}
_0224DE80:
	add r2, r2, #1
	add r3, #0x20
	cmp r2, #0x16
	blo _0224DE76
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0224DE90: .word 0x02253830
	thumb_func_end ov9_0224DE70

	thumb_func_start ov9_0224DE94
ov9_0224DE94: ; 0x0224DE94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov9_022510D0
	mov r1, #2
	lsl r1, r1, #0xc
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	add r2, r7, #0
	bl sub_020619DC
	add r4, r0, #0
	add r1, r6, #0
	bl sub_02063034
	add r0, r4, #0
	mov r1, #0xfd
	bl sub_0206290C
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	mov r2, #0
	bl sub_020629B4
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #1
	bl sub_020629B4
	ldr r1, [sp, #0x24]
	add r0, r4, #0
	mov r2, #2
	bl sub_020629B4
	add r0, r4, #0
	mov r1, #1
	bl sub_02062E5C
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D80
	add r0, r4, #0
	mov r1, #1
	bl sub_02062E28
	add r0, r4, #0
	mov r1, #1
	bl sub_02062FC4
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224DE94

	thumb_func_start ov9_0224DF10
ov9_0224DF10: ; 0x0224DF10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	str r0, [sp]
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_020629D8
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	bl sub_020629D8
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_020629D8
	add r7, r0, #0
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov9_0224DE60
	add r2, r0, #0
	mov r0, #1
	strb r0, [r5]
	strh r6, [r5, #2]
	add r3, r5, #4
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r4, #0
	bl sub_02063020
	strh r0, [r5, #6]
	add r0, r4, #0
	bl sub_02063030
	strh r0, [r5, #8]
	add r0, r4, #0
	bl sub_02063040
	strh r0, [r5, #0xa]
	strh r7, [r5, #0xc]
	ldr r0, [sp]
	str r4, [r5, #0x1c]
	add r1, r5, #0
	bl ov9_0224DFA0
	str r0, [r5, #0x20]
	add r0, r4, #0
	mov r1, #1
	bl sub_02062E5C
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D80
	add r0, r4, #0
	mov r1, #1
	bl sub_02062E28
	add r0, r4, #0
	mov r1, #1
	bl sub_02062FC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224DF10

	thumb_func_start ov9_0224DFA0
ov9_0224DFA0: ; 0x0224DFA0
	push {r3, lr}
	sub sp, #0x18
	mov r2, #6
	ldrsh r2, [r1, r2]
	add r3, sp, #8
	strh r2, [r3]
	mov r2, #8
	ldrsh r2, [r1, r2]
	strh r2, [r3, #2]
	mov r2, #0xa
	ldrsh r2, [r1, r2]
	strh r2, [r3, #4]
	ldr r2, [r1, #0x14]
	strh r2, [r3, #6]
	mov r2, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0x91
	ldrh r3, [r1, #2]
	lsl r2, r2, #2
	cmp r3, r2
	bne _0224DFD6
	ldrh r1, [r1, #4]
	cmp r1, #1
	bne _0224DFD6
	mov r1, #1
	str r1, [sp, #0x10]
_0224DFD6:
	add r1, sp, #8
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, _0224DFF0 ; =0x02251468
	ldr r0, [r0, #0x40]
	add r3, r2, #0
	bl ov5_021DF72C
	add sp, #0x18
	pop {r3, pc}
	nop
_0224DFF0: .word 0x02251468
	thumb_func_end ov9_0224DFA0

	thumb_func_start ov9_0224DFF4
ov9_0224DFF4: ; 0x0224DFF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #1
	add r4, r2, #0
	add r6, r3, #0
	strb r0, [r5]
	strh r6, [r5, #2]
	add r3, r4, #0
	add r2, r5, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldrh r0, [r4]
	mov r1, #2
	mov r2, #4
	str r0, [sp]
	ldrh r0, [r4, #8]
	mov r3, #6
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r7, #0
	bl ov9_0224DE94
	str r0, [r5, #0x1c]
	add r0, r7, #0
	add r1, r5, #0
	bl ov9_0224DFA0
	str r0, [r5, #0x20]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224DFF4

	thumb_func_start ov9_0224E044
ov9_0224E044: ; 0x0224E044
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224E052
	bl sub_0207136C
_0224E052:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E044

	thumb_func_start ov9_0224E060
ov9_0224E060: ; 0x0224E060
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224E070
	bl sub_02061AF4
_0224E070:
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224E044
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E060

	thumb_func_start ov9_0224E07C
ov9_0224E07C: ; 0x0224E07C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	strh r6, [r5, #2]
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl ov9_0224DE60
	add r3, r0, #0
	add r2, r5, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #6
	ldr r4, [r5, #0x1c]
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	bl sub_02063024
	mov r1, #8
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	bl sub_02063034
	mov r1, #0xa
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	bl sub_02063044
	ldrh r1, [r5, #4]
	add r0, r4, #0
	mov r2, #0
	bl sub_020629B4
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_020629B4
	ldrh r1, [r5, #0xc]
	add r0, r4, #0
	mov r2, #2
	bl sub_020629B4
	pop {r4, r5, r6, pc}
	thumb_func_end ov9_0224E07C

	thumb_func_start ov9_0224E0DC
ov9_0224E0DC: ; 0x0224E0DC
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov9_0224E0DC

	thumb_func_start ov9_0224E0E0
ov9_0224E0E0: ; 0x0224E0E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _0224E118 ; =0x000016D0
	add r4, r0, r1
	cmp r5, #0x19
	bne _0224E0F0
	bl sub_02022974
_0224E0F0:
	ldr r2, _0224E11C ; =0x022531D0
	mov r0, #0
_0224E0F4:
	ldrb r1, [r4]
	cmp r1, #0
	beq _0224E10A
	ldr r1, [r4, #0x14]
	lsl r1, r1, #0x10
	lsr r1, r1, #0xd
	ldrh r1, [r2, r1]
	cmp r5, r1
	bne _0224E10A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224E10A:
	add r0, r0, #1
	add r4, #0x24
	cmp r0, #0x20
	blt _0224E0F4
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224E118: .word 0x000016D0
_0224E11C: .word 0x022531D0
	thumb_func_end ov9_0224E0E0

	thumb_func_start ov9_0224E120
ov9_0224E120: ; 0x0224E120
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _0224E158 ; =0x000016D0
	add r4, r0, r1
	cmp r5, #5
	bne _0224E130
	bl sub_02022974
_0224E130:
	ldr r2, _0224E15C ; =0x022531D0
	mov r0, #0
_0224E134:
	ldrb r1, [r4]
	cmp r1, #0
	beq _0224E14C
	ldr r1, [r4, #0x14]
	lsl r1, r1, #0x10
	lsr r1, r1, #0xd
	add r1, r2, r1
	ldrh r1, [r1, #2]
	cmp r5, r1
	bne _0224E14C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224E14C:
	add r0, r0, #1
	add r4, #0x24
	cmp r0, #0x20
	blt _0224E134
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E158: .word 0x000016D0
_0224E15C: .word 0x022531D0
	thumb_func_end ov9_0224E120

	thumb_func_start ov9_0224E160
ov9_0224E160: ; 0x0224E160
	ldr r2, _0224E184 ; =0x000016D0
	mov r3, #0
	add r2, r0, r2
_0224E166:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0224E176
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bne _0224E176
	mov r0, #1
	bx lr
_0224E176:
	add r3, r3, #1
	add r2, #0x24
	cmp r3, #0x20
	blt _0224E166
	mov r0, #0
	bx lr
	nop
_0224E184: .word 0x000016D0
	thumb_func_end ov9_0224E160

	thumb_func_start ov9_0224E188
ov9_0224E188: ; 0x0224E188
	push {r4, r5, r6, r7}
	add r4, r1, #0
	add r1, r3, #0
	ldr r3, _0224E1C8 ; =0x000016D0
	ldr r6, [sp, #0x10]
	mov r5, #0x20
	add r0, r0, r3
_0224E196:
	ldrb r3, [r0]
	cmp r3, #0
	beq _0224E1BC
	ldrh r3, [r0, #2]
	cmp r3, r6
	bne _0224E1BC
	add r3, r0, #4
	mov r7, #4
	ldrsh r7, [r3, r7]
	cmp r7, r2
	bne _0224E1BC
	mov r7, #6
	ldrsh r7, [r3, r7]
	cmp r7, r1
	bne _0224E1BC
	mov r7, #2
	ldrsh r3, [r3, r7]
	cmp r3, r4
	beq _0224E1C4
_0224E1BC:
	add r0, #0x24
	sub r5, r5, #1
	bne _0224E196
	mov r0, #0
_0224E1C4:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0224E1C8: .word 0x000016D0
	thumb_func_end ov9_0224E188

	thumb_func_start ov9_0224E1CC
ov9_0224E1CC: ; 0x0224E1CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020715BC
	add r4, r0, #0
	add r2, r5, #0
	add r3, r4, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0xc]
	add r2, sp, #0
	bl ov9_0224D8A4
	str r0, [r5, #0x20]
	ldr r0, [sp]
	cmp r0, #0
	bne _0224E204
	ldr r3, [r5, #0x20]
	ldrh r1, [r4, #6]
	add r2, r3, #4
	ldr r0, [r4, #0xc]
	add r3, #0x58
	bl ov9_0224DA48
_0224E204:
	mov r0, #0
	mov r1, #4
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	add r2, r5, #4
	bl sub_02064450
	mov r0, #2
	ldrsh r1, [r4, r0]
	lsl r0, r0, #0xe
	lsl r1, r1, #0x10
	add r0, r1, r0
	str r0, [r5, #8]
	ldrh r2, [r4, #6]
	ldr r0, _0224E270 ; =0x02253298
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	add r1, r0, r3
	ldr r2, [r5, #4]
	ldr r0, [r0, r3]
	add r0, r2, r0
	str r0, [r5, #4]
	ldr r2, [r5, #8]
	ldr r0, [r1, #4]
	add r0, r2, r0
	str r0, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r0, [r1, #8]
	add r0, r2, r0
	str r0, [r5, #0xc]
	mov r0, #0x1f
	strb r0, [r5, #2]
	mov r0, #0
	strb r0, [r5]
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0224E26C
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AFD0
	cmp r0, #0
	bne _0224E26C
	mov r0, #0
	strb r0, [r5, #2]
	mov r0, #1
	strb r0, [r5]
	strb r0, [r5, #1]
_0224E26C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E270: .word 0x02253298
	thumb_func_end ov9_0224E1CC

	thumb_func_start ov9_0224E274
ov9_0224E274: ; 0x0224E274
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #0x16]
	bl ov9_0224DAEC
	cmp r0, #1
	bne _0224E28A
	ldr r0, [r4, #0x20]
	add r0, #0x58
	bl sub_02073AA8
_0224E28A:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl ov9_0224D938
	pop {r4, pc}
	thumb_func_end ov9_0224E274

	thumb_func_start ov9_0224E294
ov9_0224E294: ; 0x0224E294
	push {r4, lr}
	add r4, r1, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _0224E2DE
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AFD0
	cmp r0, #1
	bne _0224E2DE
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	cmp r0, #0x1f
	bhs _0224E2D0
	cmp r0, #0
	bne _0224E2C4
	ldr r0, _0224E2E0 ; =0x000005CC
	bl ov9_022511E0
_0224E2C4:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	asr r0, r0, #1
	strb r0, [r4, #2]
_0224E2D0:
	ldrb r0, [r4, #2]
	cmp r0, #0x1f
	blo _0224E2DE
	mov r0, #0x1f
	strb r0, [r4, #2]
	mov r0, #0
	strb r0, [r4]
_0224E2DE:
	pop {r4, pc}
	; .align 2, 0
_0224E2E0: .word 0x000005CC
	thumb_func_end ov9_0224E294

	thumb_func_start ov9_0224E2E4
ov9_0224E2E4: ; 0x0224E2E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0224E32E
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224E324
	add r4, r5, #0
	add r4, #0x10
	ldrh r1, [r4, #6]
	ldrb r2, [r5, #2]
	ldr r0, [r4, #0xc]
	mov r3, #1
	bl ov9_0224DA64
	ldr r0, [r5, #0x20]
	add r1, r5, #4
	add r0, r0, #4
	bl sub_02073BB4
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0xc]
	mov r2, #0
	bl ov9_0224DAB8
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0xc]
	mov r2, #0x1f
	bl ov9_0224DAAC
	pop {r3, r4, r5, pc}
_0224E324:
	ldr r0, [r5, #0x20]
	add r1, r5, #4
	add r0, r0, #4
	bl sub_02073BB4
_0224E32E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224E2E4

	thumb_func_start ov9_0224E330
ov9_0224E330: ; 0x0224E330
	push {r3, lr}
	bl sub_02071598
	add r0, r0, #4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E330

	thumb_func_start ov9_0224E33C
ov9_0224E33C: ; 0x0224E33C
	ldr r3, _0224E348 ; =sub_020D5124
	add r0, #0xd8
	mov r1, #0
	mov r2, #0xac
	bx r3
	nop
_0224E348: .word sub_020D5124
	thumb_func_end ov9_0224E33C

	thumb_func_start ov9_0224E34C
ov9_0224E34C: ; 0x0224E34C
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224E34C

	thumb_func_start ov9_0224E350
ov9_0224E350: ; 0x0224E350
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, #0xd8
	cmp r0, #0
	beq _0224E364
	bl sub_02022974
_0224E364:
	cmp r5, #0
	bne _0224E36C
	bl sub_02022974
_0224E36C:
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	str r5, [r4, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E350

	thumb_func_start ov9_0224E37C
ov9_0224E37C: ; 0x0224E37C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa0
	blo _0224E38A
	bl sub_02022974
_0224E38A:
	add r5, #0xe4
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E37C

	thumb_func_start ov9_0224E39C
ov9_0224E39C: ; 0x0224E39C
	add r0, #0xe4
	bx lr
	thumb_func_end ov9_0224E39C

	thumb_func_start ov9_0224E3A0
ov9_0224E3A0: ; 0x0224E3A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r4, #0xd8
	ldr r5, [r4, #8]
	str r0, [sp]
	str r1, [sp, #4]
	cmp r5, #0
	bne _0224E3B6
	bl sub_02022974
_0224E3B6:
	ldrh r0, [r4, #4]
	lsl r1, r0, #3
	ldr r0, [r5, r1]
	cmp r0, #0x12
	beq _0224E400
_0224E3C0:
	ldr r0, [r5, r1]
	lsl r1, r0, #2
	ldr r0, _0224E40C ; =0x02253BE4
	ldr r7, [r0, r1]
_0224E3C8:
	ldrh r3, [r4, #4]
	ldrh r6, [r4, #6]
	ldr r0, [sp]
	lsl r3, r3, #3
	add r3, r5, r3
	lsl r6, r6, #2
	ldr r1, [sp, #4]
	ldr r3, [r3, #4]
	ldr r6, [r7, r6]
	add r2, r4, #6
	blx r6
	cmp r0, #1
	beq _0224E3C8
	cmp r0, #0
	bne _0224E3EC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E3EC:
	mov r0, #0
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	lsl r1, r0, #3
	ldr r0, [r5, r1]
	cmp r0, #0x12
	bne _0224E3C0
_0224E400:
	mov r0, #0
	str r0, [r4, #0]
	strh r0, [r4, #4]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E40C: .word 0x02253BE4
	thumb_func_end ov9_0224E3A0

	thumb_func_start ov9_0224E410
ov9_0224E410: ; 0x0224E410
	ldr r3, _0224E42C ; =0x0000023D
	ldr r2, _0224E430 ; =0x02252D38
	add r1, r3, #0
	add r1, #0x14
_0224E418:
	cmp r3, r0
	bne _0224E420
	ldr r0, [r2, #4]
	bx lr
_0224E420:
	add r2, #8
	ldr r3, [r2, #0]
	cmp r3, r1
	bne _0224E418
	mov r0, #0
	bx lr
	; .align 2, 0
_0224E42C: .word 0x0000023D
_0224E430: .word 0x02252D38
	thumb_func_end ov9_0224E410

	thumb_func_start ov9_0224E434
ov9_0224E434: ; 0x0224E434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	ldr r0, [r0, #0xc]
	add r7, r2, #0
	str r3, [sp]
	bl sub_020507E4
	add r0, r5, #0
	bl ov9_022510D0
	bl ov9_0224E410
	add r4, r0, #0
	beq _0224E494
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0224E494
_0224E45A:
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r7, r0
	bne _0224E48C
	ldr r1, [r4, #4]
	ldr r0, [sp]
	cmp r0, r1
	bne _0224E48C
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r6, r0
	bne _0224E48C
	ldrh r1, [r4, #8]
	ldrh r2, [r4, #0xa]
	add r0, r5, #0
	bl ov9_02251104
	cmp r0, #1
	bne _0224E48C
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_0224E4B0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224E48C:
	add r4, #0x10
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0224E45A
_0224E494:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224E434

	thumb_func_start ov9_0224E498
ov9_0224E498: ; 0x0224E498
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224E350
	ldr r0, [r4, #0]
	ldr r1, _0224E4AC ; =ov9_0224E4BC
	add r2, r4, #0
	bl sub_02050904
	pop {r4, pc}
	; .align 2, 0
_0224E4AC: .word ov9_0224E4BC
	thumb_func_end ov9_0224E498

	thumb_func_start ov9_0224E4B0
ov9_0224E4B0: ; 0x0224E4B0
	ldr r3, _0224E4B8 ; =ov9_0224E498
	ldr r1, [r1, #0xc]
	bx r3
	nop
_0224E4B8: .word ov9_0224E498
	thumb_func_end ov9_0224E4B0

	thumb_func_start ov9_0224E4BC
ov9_0224E4BC: ; 0x0224E4BC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A64
	add r1, r4, #0
	bl ov9_0224E3A0
	cmp r0, #1
	bne _0224E4D2
	mov r0, #1
	pop {r4, pc}
_0224E4D2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E4BC

	thumb_func_start ov9_0224E4D8
ov9_0224E4D8: ; 0x0224E4D8
	push {r4, lr}
	mov r1, #4
	add r4, r2, #0
	bl ov9_0224E37C
	mov r0, #1
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end ov9_0224E4D8

	thumb_func_start ov9_0224E4E8
ov9_0224E4E8: ; 0x0224E4E8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	bl ov9_0224E39C
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r4, r0, #0
	bne _0224E506
	bl sub_02022974
_0224E506:
	add r0, r4, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0224E51C
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_02065638
	mov r0, #2
	strh r0, [r6]
_0224E51C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov9_0224E4E8

	thumb_func_start ov9_0224E520
ov9_0224E520: ; 0x0224E520
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl ov9_0224E39C
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r4, r0, #0
	bne _0224E53C
	bl sub_02022974
_0224E53C:
	add r0, r4, #0
	bl sub_020656AC
	cmp r0, #1
	bne _0224E54A
	mov r0, #2
	pop {r3, r4, r5, pc}
_0224E54A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E520

	thumb_func_start ov9_0224E550
ov9_0224E550: ; 0x0224E550
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r1, #0x38
	add r7, r2, #0
	add r5, r3, #0
	bl ov9_0224E37C
	add r4, r0, #0
	add r0, r6, #0
	bl ov9_022510D0
	add r2, r0, #0
	ldrh r1, [r5]
	add r0, r6, #0
	bl ov9_0224DE08
	str r0, [r4, #0x24]
	cmp r0, #0
	bne _0224E57C
	bl sub_02022974
_0224E57C:
	mov r0, #6
	ldrsh r0, [r5, r0]
	add r3, r5, #0
	add r2, r4, #0
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	mov r0, #8
	ldrsh r0, [r5, r0]
	add r3, #0xc
	add r2, #0x18
	lsl r0, r0, #0x10
	str r0, [r4, #0x10]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0x10
	str r0, [r4, #0x14]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #6
	lsl r0, r0, #0xb
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x20]
	bl ov9_0224E330
	ldr r0, [r0, #4]
	str r0, [r4, #0x2c]
	ldrh r0, [r5, #2]
	cmp r0, #1
	bne _0224E5D8
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	mov r1, #1
	bl sub_02062E28
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0206309C
	ldr r0, [sp, #4]
	str r0, [r4, #0x28]
_0224E5D8:
	ldr r0, _0224E5E8 ; =0x000005CA
	bl sub_02005748
	mov r0, #1
	strh r0, [r7]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E5E8: .word 0x000005CA
	thumb_func_end ov9_0224E550

	thumb_func_start ov9_0224E5EC
ov9_0224E5EC: ; 0x0224E5EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	str r2, [sp]
	str r3, [sp, #4]
	mov r4, #0
	bl ov9_0224E39C
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0x20]
	bl ov9_0224E330
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _0224E61A
	ldr r0, [r7, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
_0224E61A:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	add r0, r1, r0
	str r0, [r6, #4]
	cmp r4, #0
	beq _0224E64E
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_0206309C
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x30]
	add r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_020630AC
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_02063050
	add r0, r4, #0
	add r1, sp, #0x14
	bl ov9_022511F4
_0224E64E:
	ldr r0, [r5, #0x30]
	neg r1, r0
	str r1, [r5, #0x30]
	bmi _0224E6AA
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _0224E664
	sub r0, r1, r0
	str r0, [r5, #0x30]
	b _0224E672
_0224E664:
	ldr r0, [r5, #0x34]
	add r0, r0, #1
	str r0, [r5, #0x34]
	cmp r0, #4
	blo _0224E672
	mov r0, #0
	str r0, [r5, #0x30]
_0224E672:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _0224E6AA
	ldr r0, [r5, #0x2c]
	cmp r4, #0
	str r0, [r6, #4]
	beq _0224E6A4
	add r0, r4, #0
	add r1, sp, #8
	bl sub_0206309C
	ldr r0, [r5, #0x28]
	add r1, sp, #8
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_020630AC
	add r0, r4, #0
	add r1, sp, #8
	bl sub_02063050
	add r0, r4, #0
	add r1, sp, #8
	bl ov9_022511F4
_0224E6A4:
	ldr r0, [sp]
	mov r1, #2
	strh r1, [r0]
_0224E6AA:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224E5EC

	thumb_func_start ov9_0224E6B0
ov9_0224E6B0: ; 0x0224E6B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	add r2, sp, #0xc
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r6, r0, #0
	add r5, r3, #0
	str r1, [r2, #8]
	bl ov9_0224E39C
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x20]
	bl ov9_0224E330
	ldr r1, [r4, #0]
	ldr r2, [r4, #0xc]
	cmp r1, r2
	beq _0224E6F6
	ldr r2, [r4, #0x18]
	add r1, r1, r2
	str r1, [r4, #0]
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x18]
	add r1, r2, r1
	str r1, [r0, #0]
	ldrh r1, [r5, #2]
	cmp r1, #1
	bne _0224E6F6
	ldr r2, [sp, #0xc]
	ldr r1, [r4, #0x18]
	add r1, r2, r1
	str r1, [sp, #0xc]
_0224E6F6:
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x10]
	cmp r1, r2
	beq _0224E71A
	ldr r2, [r4, #0x1c]
	add r1, r1, r2
	str r1, [r4, #4]
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x1c]
	add r1, r2, r1
	str r1, [r0, #4]
	ldrh r1, [r5, #2]
	cmp r1, #1
	bne _0224E71A
	ldr r2, [sp, #0x10]
	ldr r1, [r4, #0x1c]
	add r1, r2, r1
	str r1, [sp, #0x10]
_0224E71A:
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x14]
	cmp r1, r2
	beq _0224E73E
	ldr r2, [r4, #0x20]
	add r1, r1, r2
	str r1, [r4, #8]
	ldr r2, [r0, #8]
	ldr r1, [r4, #0x20]
	add r1, r2, r1
	str r1, [r0, #8]
	ldrh r0, [r5, #2]
	cmp r0, #1
	bne _0224E73E
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x14]
_0224E73E:
	ldrh r0, [r5, #2]
	cmp r0, #1
	bne _0224E774
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r1, sp, #0
	add r5, r0, #0
	bl sub_02063050
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl ov9_022511F4
_0224E774:
	ldr r1, [r4, #0]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _0224E790
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bne _0224E790
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _0224E790
	mov r0, #3
	strh r0, [r7]
_0224E790:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E6B0

	thumb_func_start ov9_0224E798
ov9_0224E798: ; 0x0224E798
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r3, #0
	str r0, [sp, #4]
	ldrh r0, [r6, #2]
	cmp r0, #1
	bne _0224E84E
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02063020
	str r0, [sp, #0xc]
	mov r0, #6
	ldrsh r7, [r6, r0]
	add r0, r4, #0
	bl sub_02063030
	mov r1, #8
	ldrsh r1, [r6, r1]
	lsl r1, r1, #1
	add r5, r1, r0
	add r0, r4, #0
	bl sub_02063040
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xa
	ldrsh r6, [r6, r0]
	add r0, r4, #0
	add r1, r7, r1
	bl sub_02063024
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063034
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	add r1, r6, r1
	bl sub_02063044
	add r0, r4, #0
	bl sub_02064208
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x10]
	ldr r0, [r0, #0x3c]
	add r1, r7, r1
	str r0, [sp, #8]
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r5, r0, #1
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r5, #0
	add r3, r6, r3
	bl ov9_0224C378
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, r7, r1
	add r2, r5, #0
	add r3, r6, r3
	bl ov9_0224C4B8
	bl ov9_022510D8
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_0205F098
	cmp r5, #1
	bne _0224E846
	add r0, r4, #0
	mov r1, #0
	bl sub_02062E28
	b _0224E84E
_0224E846:
	add r0, r4, #0
	mov r1, #1
	bl sub_02062E28
_0224E84E:
	ldr r0, _0224E85C ; =0x000005CA
	mov r1, #0
	bl sub_020057A4
	mov r0, #2
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E85C: .word 0x000005CA
	thumb_func_end ov9_0224E798

	thumb_func_start ov9_0224E860
ov9_0224E860: ; 0x0224E860
	push {r3, lr}
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	bl ov9_0224F0D4
	mov r0, #2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E860

	thumb_func_start ov9_0224E870
ov9_0224E870: ; 0x0224E870
	push {r3, lr}
	ldr r1, [r3, #0]
	ldr r0, [r0, #0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov9_0224F16C
	mov r0, #2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov9_0224E870

	thumb_func_start ov9_0224E884
ov9_0224E884: ; 0x0224E884
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #1
	blo _0224E892
	bl sub_02022974
_0224E892:
	ldr r0, [r5, #4]
	mov r1, #0x24
	ldr r2, _0224E8A4 ; =0x02252414
	mul r1, r4
	ldr r0, [r0, #0x24]
	add r1, r2, r1
	bl ov9_0224E91C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E8A4: .word 0x02252414
	thumb_func_end ov9_0224E884

	thumb_func_start ov9_0224E8A8
ov9_0224E8A8: ; 0x0224E8A8
	ldr r0, [r0, #4]
	ldr r3, _0224E8B0 ; =ov9_0224E988
	ldr r0, [r0, #0x24]
	bx r3
	; .align 2, 0
_0224E8B0: .word ov9_0224E988
	thumb_func_end ov9_0224E8A8

	thumb_func_start ov9_0224E8B4
ov9_0224E8B4: ; 0x0224E8B4
	push {r3, r4, r5, lr}
	ldr r1, _0224E8E8 ; =0x00001E50
	add r5, r0, #0
	add r4, r5, r1
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _0224E8E4
	mov r1, #0x14
	add r2, sp, #0
	bl ov9_0224D8A4
	str r0, [r4, #4]
	ldr r0, [sp]
	cmp r0, #0
	bne _0224E8E0
	ldr r3, [r4, #4]
	add r0, r5, #0
	add r2, r3, #4
	mov r1, #0x14
	add r3, #0x58
	bl ov9_0224DA48
_0224E8E0:
	mov r0, #1
	str r0, [r4, #0]
_0224E8E4:
	pop {r3, r4, r5, pc}
	nop
_0224E8E8: .word 0x00001E50
	thumb_func_end ov9_0224E8B4

	thumb_func_start ov9_0224E8EC
ov9_0224E8EC: ; 0x0224E8EC
	push {r3, r4, r5, lr}
	ldr r1, _0224E918 ; =0x00001E50
	add r5, r0, #0
	add r4, r5, r1
	ldr r1, [r4, #0]
	cmp r1, #1
	bne _0224E914
	ldr r1, [r4, #4]
	bl ov9_0224D938
	add r0, r5, #0
	mov r1, #0
	bl ov9_0224D874
	add r0, r5, #0
	mov r1, #0x14
	bl ov9_0224D7C0
	mov r0, #0
	str r0, [r4, #0]
_0224E914:
	pop {r3, r4, r5, pc}
	nop
_0224E918: .word 0x00001E50
	thumb_func_end ov9_0224E8EC

	thumb_func_start ov9_0224E91C
ov9_0224E91C: ; 0x0224E91C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r4, r1, #0
	ldr r1, _0224E95C ; =0x00001E50
	add r5, r0, #0
	add r6, r5, r1
	bl ov9_0224E8B4
	str r5, [sp, #8]
	add r2, sp, #0x10
	mov r3, #4
_0224E932:
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _0224E932
	ldr r0, [r4, #0]
	ldr r1, _0224E960 ; =0x022514B8
	str r0, [r2, #0]
	ldr r0, [r6, #4]
	mov r2, #0
	str r0, [sp, #0xc]
	add r0, sp, #8
	str r0, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0]
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	bl ov5_021DF72C
	str r0, [r6, #8]
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224E95C: .word 0x00001E50
_0224E960: .word 0x022514B8
	thumb_func_end ov9_0224E91C

	thumb_func_start ov9_0224E964
ov9_0224E964: ; 0x0224E964
	push {r4, lr}
	ldr r1, _0224E980 ; =0x00001E50
	add r4, r0, r1
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0224E974
	bl sub_02022974
_0224E974:
	ldr r0, [r4, #8]
	bl sub_02071598
	ldr r0, [r0, #0x34]
	pop {r4, pc}
	nop
_0224E980: .word 0x00001E50
	thumb_func_end ov9_0224E964

	thumb_func_start ov9_0224E984
ov9_0224E984: ; 0x0224E984
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224E984

	thumb_func_start ov9_0224E988
ov9_0224E988: ; 0x0224E988
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224E9A0 ; =0x00001E58
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224E998
	bl sub_0207136C
_0224E998:
	add r0, r4, #0
	bl ov9_0224E8EC
	pop {r4, pc}
	; .align 2, 0
_0224E9A0: .word 0x00001E58
	thumb_func_end ov9_0224E988

	thumb_func_start ov9_0224E9A4
ov9_0224E9A4: ; 0x0224E9A4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, _0224E9C8 ; =0x00001E50
	cmp r4, #0x19
	bne _0224E9B4
	bl sub_02022974
_0224E9B4:
	ldr r0, [r5, r6]
	cmp r0, #1
	bne _0224E9C2
	cmp r4, #0x14
	bne _0224E9C2
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224E9C2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224E9C8: .word 0x00001E50
	thumb_func_end ov9_0224E9A4

	thumb_func_start ov9_0224E9CC
ov9_0224E9CC: ; 0x0224E9CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, _0224E9F0 ; =0x00001E50
	cmp r4, #5
	bne _0224E9DC
	bl sub_02022974
_0224E9DC:
	ldr r0, [r5, r6]
	cmp r0, #1
	bne _0224E9EA
	cmp r4, #0
	bne _0224E9EA
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224E9EA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224E9F0: .word 0x00001E50
	thumb_func_end ov9_0224E9CC

	thumb_func_start ov9_0224E9F4
ov9_0224E9F4: ; 0x0224E9F4
	ldr r2, _0224EA08 ; =0x00001E50
	ldr r0, [r0, r2]
	cmp r0, #1
	bne _0224EA04
	cmp r1, #0x14
	bne _0224EA04
	mov r0, #1
	bx lr
_0224EA04:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224EA08: .word 0x00001E50
	thumb_func_end ov9_0224E9F4

	thumb_func_start ov9_0224EA0C
ov9_0224EA0C: ; 0x0224EA0C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r6, r0, #0
	add r3, r4, #0
	mov r2, #5
_0224EA1E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224EA1E
	ldr r0, [r6, #0]
	add r2, r4, #0
	str r0, [r3, #0]
	mov r0, #1
	strh r0, [r4, #0x2e]
	add r2, #8
	mov r0, #6
	ldrsb r1, [r2, r0]
	ldr r3, _0224EA84 ; =0x022529F8
	lsl r6, r1, #3
	add r1, r3, r6
	ldrh r3, [r3, r6]
	strh r3, [r4, #0x38]
	ldrh r3, [r1, #2]
	strh r3, [r4, #0x3a]
	ldrh r3, [r1, #4]
	strh r3, [r4, #0x3c]
	ldrh r1, [r1, #6]
	mov r3, #2
	strh r1, [r4, #0x3e]
	mov r1, #8
	ldrsh r1, [r4, r1]
	lsl r1, r1, #0x10
	str r1, [sp]
	ldrsh r3, [r2, r3]
	lsl r3, r3, #0x10
	str r3, [sp, #4]
	mov r3, #4
	ldrsh r6, [r2, r3]
	lsl r6, r6, #0x10
	str r6, [sp, #8]
	ldrsb r0, [r2, r0]
	cmp r0, #4
	bne _0224EA70
	lsl r0, r3, #0xd
	add r0, r1, r0
	str r0, [sp]
_0224EA70:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	mov r0, #0
	strh r0, [r4, #0x2e]
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224EA84: .word 0x022529F8
	thumb_func_end ov9_0224EA0C

	thumb_func_start ov9_0224EA88
ov9_0224EA88: ; 0x0224EA88
	ldr r0, [r1, #4]
	ldr r3, _0224EA90 ; =sub_02073A90
	add r0, #0x58
	bx r3
	; .align 2, 0
_0224EA90: .word sub_02073A90
	thumb_func_end ov9_0224EA88

	thumb_func_start ov9_0224EA94
ov9_0224EA94: ; 0x0224EA94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r0, #0
	ldrh r0, [r5, #0x2c]
	add r4, r5, #0
	add r4, #8
	cmp r0, #0
	beq _0224EAAE
	cmp r0, #1
	beq _0224EACE
	cmp r0, #2
	b _0224EB12
_0224EAAE:
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0224EABE
	ldr r0, _0224EB2C ; =0x000001E7
	mov r1, #0
	bl sub_02005844
	b _0224EAC8
_0224EABE:
	cmp r0, #2
	bne _0224EAC8
	ldr r0, _0224EB30 ; =0x00000649
	bl sub_02005748
_0224EAC8:
	ldrh r0, [r5, #0x2c]
	add r0, r0, #1
	strh r0, [r5, #0x2c]
_0224EACE:
	add r6, r4, #0
	add r0, r7, #0
	add r1, sp, #0
	add r6, #0x14
	bl sub_020715E4
	ldr r1, [sp]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r6, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r6, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, r0, #1
	str r1, [r5, #0x30]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _0224EB0A
	ldrh r0, [r5, #0x2c]
	add r0, r0, #1
	strh r0, [r5, #0x2c]
	mov r0, #1
	str r0, [r5, #0x34]
	strh r0, [r5, #0x2e]
_0224EB0A:
	add r0, r7, #0
	add r1, sp, #0
	bl sub_020715D4
_0224EB12:
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _0224EB26
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, #0x58
	lsl r1, r1, #0xc
	mov r2, #1
	bl sub_02073AC0
_0224EB26:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224EB2C: .word 0x000001E7
_0224EB30: .word 0x00000649
	thumb_func_end ov9_0224EA94

	thumb_func_start ov9_0224EB34
ov9_0224EB34: ; 0x0224EB34
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrh r1, [r4, #0x2e]
	cmp r1, #0
	bne _0224EB62
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0]
	mov r1, #0x14
	mov r2, #8
	bl ov9_0224DAB8
	ldr r0, [r4, #4]
	add r2, r4, #0
	add r4, #0x38
	add r0, r0, #4
	add r1, sp, #0
	add r2, #0x10
	add r3, r4, #0
	bl sub_02073BC8
_0224EB62:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224EB34

	thumb_func_start ov9_0224EB68
ov9_0224EB68: ; 0x0224EB68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov9_022510D0
	add r6, r0, #0
	bl ov9_0224D720
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224EC48
	ldr r1, [r4, #8]
	ldr r0, _0224EB90 ; =0x00000251
	cmp r1, r0
	beq _0224EB8E
	add r0, r5, #0
	bl ov9_0224EC48
_0224EB8E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224EB90: .word 0x00000251
	thumb_func_end ov9_0224EB68

	thumb_func_start ov9_0224EB94
ov9_0224EB94: ; 0x0224EB94
	push {r3, r4, r5, lr}
	ldr r1, _0224EBB4 ; =0x00001B50
	mov r4, #0
	add r5, r0, r1
_0224EB9C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0224EBA8
	add r0, r5, #0
	bl ov9_0224EBB8
_0224EBA8:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #8
	blt _0224EB9C
	pop {r3, r4, r5, pc}
	nop
_0224EBB4: .word 0x00001B50
	thumb_func_end ov9_0224EB94

	thumb_func_start ov9_0224EBB8
ov9_0224EBB8: ; 0x0224EBB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224EBC6
	bl sub_0207136C
_0224EBC6:
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov9_0224EBB8

	thumb_func_start ov9_0224EBCC
ov9_0224EBCC: ; 0x0224EBCC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	strh r3, [r4]
	add r3, r4, #0
	add r6, r2, #0
	add r5, r0, #0
	add r3, #8
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrh r1, [r2, #4]
	ldr r0, [r5, #0]
	lsl r2, r1, #2
	ldr r1, _0224EC0C ; =0x02252F6C
	ldr r0, [r0, #0x40]
	ldr r1, [r1, r2]
	mov r2, #0
	add r3, r2, #0
	bl ov5_021DF72C
	str r0, [r4, #4]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0224EC0C: .word 0x02252F6C
	thumb_func_end ov9_0224EBCC

	thumb_func_start ov9_0224EC10
ov9_0224EC10: ; 0x0224EC10
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r4, [r6, #4]
	add r5, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #0x19
	beq _0224EC46
_0224EC1E:
	ldrh r1, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	add r0, r5, #0
	bl ov9_02251104
	cmp r0, #1
	bne _0224EC3E
	add r0, r5, #0
	bl ov9_0224EC70
	add r1, r0, #0
	ldr r3, [r6, #0]
	add r0, r5, #0
	add r2, r4, #0
	bl ov9_0224EBCC
_0224EC3E:
	add r4, #0x10
	ldrh r0, [r4, #4]
	cmp r0, #0x19
	bne _0224EC1E
_0224EC46:
	pop {r4, r5, r6, pc}
	thumb_func_end ov9_0224EC10

	thumb_func_start ov9_0224EC48
ov9_0224EC48: ; 0x0224EC48
	push {r4, lr}
	ldr r4, _0224EC68 ; =0x0000023D
	ldr r3, _0224EC6C ; =0x02252548
	add r2, r4, #0
	add r2, #0x14
_0224EC52:
	cmp r4, r1
	bne _0224EC5E
	add r1, r3, #0
	bl ov9_0224EC10
	pop {r4, pc}
_0224EC5E:
	add r3, #8
	ldr r4, [r3, #0]
	cmp r4, r2
	bne _0224EC52
	pop {r4, pc}
	; .align 2, 0
_0224EC68: .word 0x0000023D
_0224EC6C: .word 0x02252548
	thumb_func_end ov9_0224EC48

	thumb_func_start ov9_0224EC70
ov9_0224EC70: ; 0x0224EC70
	push {r3, lr}
	ldr r1, _0224EC90 ; =0x00001B50
	mov r2, #0
	add r0, r0, r1
_0224EC78:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0224EC8C
	add r2, r2, #1
	add r0, #0x18
	cmp r2, #8
	blt _0224EC78
	bl sub_02022974
	mov r0, #0
_0224EC8C:
	pop {r3, pc}
	nop
_0224EC90: .word 0x00001B50
	thumb_func_end ov9_0224EC70

	thumb_func_start ov9_0224EC94
ov9_0224EC94: ; 0x0224EC94
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _0224ECBC ; =0x00001B50
	mov r4, #0
	add r5, r0, r1
_0224EC9E:
	ldrh r0, [r5]
	cmp r0, r6
	bne _0224ECB0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0224ECB0
	add r0, r5, #0
	bl ov9_0224EBB8
_0224ECB0:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #8
	blt _0224EC9E
	pop {r4, r5, r6, pc}
	nop
_0224ECBC: .word 0x00001B50
	thumb_func_end ov9_0224EC94

	thumb_func_start ov9_0224ECC0
ov9_0224ECC0: ; 0x0224ECC0
	ldr r2, _0224ECE4 ; =0x00001B50
	mov r3, #0
	add r2, r0, r2
_0224ECC6:
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _0224ECD6
	ldrh r0, [r2, #0xc]
	cmp r0, r1
	bne _0224ECD6
	mov r0, #1
	bx lr
_0224ECD6:
	add r3, r3, #1
	add r2, #0x18
	cmp r3, #8
	blt _0224ECC6
	mov r0, #0
	bx lr
	nop
_0224ECE4: .word 0x00001B50
	thumb_func_end ov9_0224ECC0

	thumb_func_start ov9_0224ECE8
ov9_0224ECE8: ; 0x0224ECE8
	push {r3, r4}
	ldr r3, _0224ED18 ; =0x00001B50
	mov r2, #0
	add r4, r0, r3
	ldr r3, _0224ED1C ; =0x022531D0
_0224ECF2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224ED08
	ldrh r0, [r4, #0xc]
	lsl r0, r0, #3
	ldrh r0, [r3, r0]
	cmp r0, r1
	bne _0224ED08
	mov r0, #1
	pop {r3, r4}
	bx lr
_0224ED08:
	add r2, r2, #1
	add r4, #0x18
	cmp r2, #8
	blt _0224ECF2
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_0224ED18: .word 0x00001B50
_0224ED1C: .word 0x022531D0
	thumb_func_end ov9_0224ECE8

	thumb_func_start ov9_0224ED20
ov9_0224ED20: ; 0x0224ED20
	push {r3, r4}
	ldr r3, _0224ED50 ; =0x00001B50
	ldr r4, _0224ED54 ; =0x022531D0
	mov r2, #0
	add r0, r0, r3
_0224ED2A:
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _0224ED42
	ldrh r3, [r0, #0xc]
	lsl r3, r3, #3
	add r3, r4, r3
	ldrh r3, [r3, #2]
	cmp r3, r1
	bne _0224ED42
	mov r0, #1
	pop {r3, r4}
	bx lr
_0224ED42:
	add r2, r2, #1
	add r0, #0x18
	cmp r2, #8
	blt _0224ED2A
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0224ED50: .word 0x00001B50
_0224ED54: .word 0x022531D0
	thumb_func_end ov9_0224ED20

	thumb_func_start ov9_0224ED58
ov9_0224ED58: ; 0x0224ED58
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_020715BC
	ldr r5, [r0, #4]
	ldr r2, [r0, #0]
	ldr r1, [r0, #4]
	add r5, #8
	str r2, [r4, #0x1c]
	str r1, [r4, #0x20]
	ldrh r1, [r5, #4]
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl ov9_0224D8A4
	str r0, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, #0
	bne _0224ED8E
	ldr r3, [r4, #0x24]
	ldrh r1, [r5, #4]
	add r2, r3, #4
	ldr r0, [r4, #0x1c]
	add r3, #0x58
	bl ov9_0224DA48
_0224ED8E:
	mov r0, #6
	mov r1, #0xa
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	add r2, r4, #4
	bl sub_02064450
	mov r0, #8
	ldrsh r1, [r5, r0]
	lsl r0, r0, #0xc
	ldr r6, _0224EDD4 ; =0x02253298
	lsl r1, r1, #0x10
	add r0, r1, r0
	str r0, [r4, #8]
	ldrh r1, [r5, #4]
	mov r0, #0xc
	ldr r2, [r4, #4]
	add r3, r1, #0
	mul r3, r0
	ldr r1, [r6, r3]
	add r0, r6, r3
	add r1, r2, r1
	str r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r1, [r0, #4]
	add r1, r2, r1
	str r1, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0xc]
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224EDD4: .word 0x02253298
	thumb_func_end ov9_0224ED58

	thumb_func_start ov9_0224EDD8
ov9_0224EDD8: ; 0x0224EDD8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #0xc]
	bl ov9_0224DAEC
	cmp r0, #1
	bne _0224EDF0
	ldr r0, [r4, #0x24]
	add r0, #0x58
	bl sub_02073AA8
_0224EDF0:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	bl ov9_0224D938
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0224EDD8

	thumb_func_start ov9_0224EDFC
ov9_0224EDFC: ; 0x0224EDFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #0xc]
	add r0, r5, #0
	bl ov9_0224DAEC
	cmp r0, #1
	bne _0224EE1C
	ldr r0, [r4, #0x24]
	mov r1, #1
	add r0, #0x58
	lsl r1, r1, #0xc
	mov r2, #1
	bl sub_02073AC0
_0224EE1C:
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	add r2, r4, #4
	bl ov9_0224DBE4
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_0224EDFC

	thumb_func_start ov9_0224EE2C
ov9_0224EE2C: ; 0x0224EE2C
	push {r3, lr}
	ldrh r0, [r1, #2]
	cmp r0, #1
	bne _0224EE3E
	ldr r0, [r1, #0x24]
	add r1, r1, #4
	add r0, r0, #4
	bl sub_02073BB4
_0224EE3E:
	pop {r3, pc}
	thumb_func_end ov9_0224EE2C

	thumb_func_start ov9_0224EE40
ov9_0224EE40: ; 0x0224EE40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov9_022510D0
	add r6, r0, #0
	bl ov9_0224D720
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224F078
	ldr r1, [r4, #8]
	ldr r0, _0224EE68 ; =0x00000251
	cmp r1, r0
	beq _0224EE66
	add r0, r5, #0
	bl ov9_0224F078
_0224EE66:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224EE68: .word 0x00000251
	thumb_func_end ov9_0224EE40

	thumb_func_start ov9_0224EE6C
ov9_0224EE6C: ; 0x0224EE6C
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224EE6C

	thumb_func_start ov9_0224EE70
ov9_0224EE70: ; 0x0224EE70
	push {r4, lr}
	ldr r2, _0224EE9C ; =0x00001C10
	add r4, r0, r2
	mov r2, #0
_0224EE78:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224EE8C
	cmp r0, r1
	bne _0224EE8C
	bl sub_02061AF4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
_0224EE8C:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, #0x13
	blt _0224EE78
	bl sub_02022974
	pop {r4, pc}
	nop
_0224EE9C: .word 0x00001C10
	thumb_func_end ov9_0224EE70

	thumb_func_start ov9_0224EEA0
ov9_0224EEA0: ; 0x0224EEA0
	push {r3, lr}
	ldr r1, _0224EEC8 ; =0x00001C10
	add r2, r0, r1
	mov r1, #0
	add r3, r2, #0
_0224EEAA:
	ldr r0, [r3, #0]
	cmp r0, #0
	bne _0224EEB6
	lsl r0, r1, #2
	add r0, r2, r0
	pop {r3, pc}
_0224EEB6:
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, #0x13
	blt _0224EEAA
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_0224EEC8: .word 0x00001C10
	thumb_func_end ov9_0224EEA0

	thumb_func_start ov9_0224EECC
ov9_0224EECC: ; 0x0224EECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r0, #0]
	add r4, r2, #0
	ldr r6, [r0, #0x38]
	add r1, sp, #0
	add r0, r6, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _0224EF2A
	add r7, sp, #0
_0224EEEE:
	ldr r0, [sp]
	bl sub_02062918
	cmp r4, r0
	bne _0224EF1A
	ldr r0, [sp]
	bl sub_02062910
	ldrh r1, [r5]
	cmp r1, r0
	bne _0224EF1A
	ldr r0, [sp]
	bl sub_02062920
	ldrh r1, [r5, #2]
	cmp r1, r0
	beq _0224EF14
	bl sub_02022974
_0224EF14:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224EF1A:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _0224EEEE
_0224EF2A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224EECC

	thumb_func_start ov9_0224EF30
ov9_0224EF30: ; 0x0224EF30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldrh r4, [r1]
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	ldrh r7, [r1, #2]
	bl sub_020507E4
	cmp r4, #6
	bne _0224EF4E
	cmp r6, #0
	bne _0224EF60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224EF4E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov9_02251104
	cmp r0, #0
	bne _0224EF60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224EF60:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224EF30

	thumb_func_start ov9_0224EF64
ov9_0224EF64: ; 0x0224EF64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r1, #0
	add r1, r4, #0
	add r1, #8
	add r2, r3, #0
	add r6, r0, #0
	str r3, [sp, #4]
	bl ov9_0224EECC
	add r7, r0, #0
	beq _0224EF94
	add r0, r6, #0
	add r1, r7, #0
	bl ov9_0224F1CC
	cmp r0, #1
	bne _0224EF90
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224EF90:
	str r7, [r5, #0]
	b _0224EFCE
_0224EF94:
	add r2, sp, #0x10
	ldrh r2, [r2, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl ov9_0224EF30
	cmp r0, #0
	beq _0224EFB0
	ldrh r1, [r4, #0x10]
	ldr r0, [r6, #0]
	bl sub_0203F188
	cmp r0, #0
	beq _0224EFB6
_0224EFB0:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224EFB6:
	ldr r0, [r6, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	ldr r2, [sp, #4]
	add r1, #8
	bl sub_02061918
	str r0, [r5, #0]
	cmp r0, #0
	bne _0224EFCE
	bl sub_02022974
_0224EFCE:
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02062D64
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0224EFE6
	ldrh r2, [r4, #6]
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl ov9_0224A390
_0224EFE6:
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02062FC4
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02062E5C
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02062E28
	mov r1, #2
	ldr r0, [r5, #0]
	lsl r1, r1, #0xc
	bl sub_020628BC
	cmp r7, #0
	bne _0224F038
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	str r0, [sp]
	ldr r2, [r4, #0x24]
	ldrh r1, [r4, #0x20]
	asr r3, r2, #3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	ldrh r3, [r4, #0x22]
	ldr r0, [r5, #0]
	asr r2, r2, #0xc
	bl sub_02063340
	ldr r0, [r5, #0]
	bl ov5_021EB1A0
	add r1, r0, #0
	beq _0224F038
	ldr r0, [r5, #0]
	bl ov5_021EDEB4
_0224F038:
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_02062D64
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224EF64

	thumb_func_start ov9_0224F048
ov9_0224F048: ; 0x0224F048
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r6, r2, #0
	cmp r0, #0
	beq _0224F074
	mov r7, #0
_0224F058:
	add r0, r5, #0
	bl ov9_0224EEA0
	str r7, [sp]
	add r1, r0, #0
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r3, r6, #0
	bl ov9_0224EF64
	add r4, r4, #4
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0224F058
_0224F074:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224F048

	thumb_func_start ov9_0224F078
ov9_0224F078: ; 0x0224F078
	push {r4, lr}
	ldr r4, _0224F09C ; =0x0000023D
	add r2, r1, #0
	add r1, r4, #0
	ldr r3, _0224F0A0 ; =0x02252EB4
	add r1, #0x14
_0224F084:
	cmp r4, r2
	bne _0224F090
	ldr r1, [r3, #4]
	bl ov9_0224F048
	pop {r4, pc}
_0224F090:
	add r3, #8
	ldr r4, [r3, #0]
	cmp r4, r1
	bne _0224F084
	pop {r4, pc}
	nop
_0224F09C: .word 0x0000023D
_0224F0A0: .word 0x02252EB4
	thumb_func_end ov9_0224F078

	thumb_func_start ov9_0224F0A4
ov9_0224F0A4: ; 0x0224F0A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _0224F0D0 ; =0x00001C10
	mov r4, #0
	add r5, r0, r1
	add r7, r4, #0
_0224F0B0:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0224F0C6
	bl sub_02062918
	cmp r6, r0
	bne _0224F0C6
	ldr r0, [r5, #0]
	bl sub_02061AF4
	str r7, [r5, #0]
_0224F0C6:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x13
	blt _0224F0B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F0D0: .word 0x00001C10
	thumb_func_end ov9_0224F0A4

	thumb_func_start ov9_0224F0D4
ov9_0224F0D4: ; 0x0224F0D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	ldr r6, _0224F14C ; =0x02252EB4
	ldr r1, _0224F150 ; =0x0000023D
	str r0, [sp, #4]
	add r5, r2, #0
_0224F0E2:
	cmp r1, r7
	bne _0224F136
	ldr r4, [r6, #4]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224F132
_0224F0EE:
	ldrh r0, [r0, #8]
	cmp r0, r5
	bne _0224F12A
	ldr r0, [sp, #4]
	bl ov9_0224EEA0
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [r4, #0]
	add r1, r6, #0
	add r3, r7, #0
	bl ov9_0224EF64
	mov r0, #0x91
	lsl r0, r0, #2
	cmp r7, r0
	bne _0224F124
	cmp r5, #0x87
	blo _0224F124
	cmp r5, #0x8f
	bhi _0224F124
	ldr r0, [r6, #0]
	mov r1, #0
	bl sub_02062D80
_0224F124:
	add sp, #8
	ldr r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0224F12A:
	add r4, r4, #4
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0224F0EE
_0224F132:
	bl sub_02022974
_0224F136:
	add r6, #8
	ldr r1, [r6, #0]
	ldr r0, _0224F154 ; =0x00000251
	cmp r1, r0
	bne _0224F0E2
	bl sub_02022974
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F14C: .word 0x02252EB4
_0224F150: .word 0x0000023D
_0224F154: .word 0x00000251
	thumb_func_end ov9_0224F0D4

	thumb_func_start ov9_0224F158
ov9_0224F158: ; 0x0224F158
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x1c]
	ldr r3, _0224F168 ; =ov9_0224F0D4
	ldr r0, [r0, #0x24]
	ldr r1, [r1, #0]
	bx r3
	; .align 2, 0
_0224F168: .word ov9_0224F0D4
	thumb_func_end ov9_0224F158

	thumb_func_start ov9_0224F16C
ov9_0224F16C: ; 0x0224F16C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, [r0, #0x1c]
	ldr r5, [r0, #0x38]
	ldr r0, [r0, #4]
	ldr r4, [r1, #0]
	ldr r0, [r0, #0x24]
	add r1, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _0224F1C4
	add r7, sp, #4
_0224F194:
	ldr r0, [sp, #4]
	bl sub_02062910
	cmp r6, r0
	bne _0224F1B4
	ldr r0, [sp, #4]
	bl sub_02062918
	cmp r4, r0
	bne _0224F1B4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov9_0224EE70
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224F1B4:
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _0224F194
_0224F1C4:
	bl sub_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224F16C

	thumb_func_start ov9_0224F1CC
ov9_0224F1CC: ; 0x0224F1CC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _0224F1F4 ; =0x00001C10
	mov r4, #0
	add r5, r0, r1
	cmp r6, #0
	bne _0224F1DE
	bl sub_02022974
_0224F1DE:
	ldr r0, [r5, #0]
	cmp r0, r6
	bne _0224F1E8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224F1E8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x13
	blt _0224F1DE
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224F1F4: .word 0x00001C10
	thumb_func_end ov9_0224F1CC

	thumb_func_start ov9_0224F1F8
ov9_0224F1F8: ; 0x0224F1F8
	push {r4, r5, r6, r7}
	ldr r6, _0224F238 ; =0x00000243
	add r5, r0, #0
	add r7, r6, #0
	add r4, r1, #0
	add r1, r2, #0
	mov ip, r3
	ldr r0, _0224F23C ; =0x0225311C
	mov r2, #6
	mov r3, #4
	add r7, #0xe
_0224F20E:
	cmp r6, r5
	bne _0224F22A
	ldrsh r6, [r0, r3]
	cmp r6, r4
	bne _0224F22A
	ldrsh r6, [r0, r2]
	cmp r6, r1
	bne _0224F22A
	ldr r1, [r0, #8]
	mov r0, ip
	str r1, [r0, #0]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0224F22A:
	add r0, #0xc
	ldr r6, [r0, #0]
	cmp r6, r7
	bne _0224F20E
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0224F238: .word 0x00000243
_0224F23C: .word 0x0225311C
	thumb_func_end ov9_0224F1F8

	thumb_func_start ov9_0224F240
ov9_0224F240: ; 0x0224F240
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02062C00
	ldr r0, [r0, #0x1c]
	ldr r7, [r0, #0]
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp]
	add r0, r4, #0
	bl sub_02063040
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206419C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020641A8
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	add r1, r1, r6
	add r2, r4, r2
	add r3, sp, #4
	bl ov9_0224F1F8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224F240

	thumb_func_start ov9_0224F284
ov9_0224F284: ; 0x0224F284
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02062C00
	ldr r0, [r0, #0x1c]
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r3, r6, #0
	bl ov9_0224F1F8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_0224F284

	thumb_func_start ov9_0224F2B0
ov9_0224F2B0: ; 0x0224F2B0
	push {r3, lr}
	add r1, sp, #0
	bl ov9_0224F284
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov9_0224F2B0

	thumb_func_start ov9_0224F2BC
ov9_0224F2BC: ; 0x0224F2BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x24
	add r7, r2, #0
	bl sub_02018184
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #4]
	add r1, r4, #0
	ldr r0, [r0, #0x24]
	add r1, #0x14
	str r0, [r4, #0]
	str r5, [r4, #4]
	str r6, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r7, #0
	bl ov9_0224F284
	ldr r1, [r4, #0x14]
	cmp r1, #8
	bhi _0224F302
	cmp r1, #6
	blo _0224F31C
	beq _0224F30C
	cmp r1, #7
	beq _0224F30C
	cmp r1, #8
	beq _0224F30C
	b _0224F31C
_0224F302:
	cmp r1, #0x11
	bne _0224F31C
	mov r0, #0
	strh r0, [r4, #0x12]
	b _0224F320
_0224F30C:
	ldr r0, [r4, #0]
	bl ov9_02249E00
	cmp r0, #0
	bne _0224F31C
	mov r0, #1
	strh r0, [r4, #0x12]
	b _0224F320
_0224F31C:
	mov r0, #2
	strh r0, [r4, #0x12]
_0224F320:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_0224F2BC

	thumb_func_start ov9_0224F324
ov9_0224F324: ; 0x0224F324
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, [r5, #0xc]
	add r1, sp, #0
	add r0, r4, #0
	bl sub_02063050
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063060
	mov r0, #0x73
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	ble _0224F356
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224F356:
	ldr r0, _0224F3B8 ; =0x00000623
	bl sub_02005748
	mov r0, #0x73
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0206298C
	add r2, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020632D4
	mov r1, #0x91
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_02062914
	add r0, r4, #0
	bl sub_02062910
	cmp r0, #0x80
	beq _0224F390
	cmp r0, #0x81
	beq _0224F396
	cmp r0, #0x82
	beq _0224F39C
	b _0224F3A0
_0224F390:
	mov r7, #3
	mov r6, #0
	b _0224F3A0
_0224F396:
	mov r7, #4
	mov r6, #1
	b _0224F3A0
_0224F39C:
	mov r7, #5
	mov r6, #2
_0224F3A0:
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl ov9_02249DC8
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov9_02249DE4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224F3B8: .word 0x00000623
	thumb_func_end ov9_0224F324

	thumb_func_start ov9_0224F3BC
ov9_0224F3BC: ; 0x0224F3BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bls _0224F3CA
	b _0224F5CC
_0224F3CA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224F3D6: ; jump table
	.short _0224F3DE - _0224F3D6 - 2 ; case 0
	.short _0224F428 - _0224F3D6 - 2 ; case 1
	.short _0224F512 - _0224F3D6 - 2 ; case 2
	.short _0224F594 - _0224F3D6 - 2 ; case 3
_0224F3DE:
	ldr r5, [r4, #0xc]
	add r1, sp, #0x30
	add r0, r5, #0
	bl sub_02063050
	mov r0, #2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r1, sp, #0x30
	bl sub_02063060
	add r0, r5, #0
	bl sub_0206299C
	mov r2, #2
	add r1, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xc
	bl sub_020642A4
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #8
	bge _0224F41C
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224F41C:
	mov r0, #0
	str r0, [r4, #0x18]
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _0224F5CC
_0224F428:
	ldr r5, [r4, #0xc]
	add r1, sp, #0x24
	add r0, r5, #0
	bl sub_02063050
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, sp, #0x24
	bl sub_02063060
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #4
	bge _0224F454
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224F454:
	mov r7, #0
	str r7, [r4, #0x18]
	ldr r5, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x14]
	add r6, r7, #0
	bl ov9_02249DC8
	add r0, r5, #0
	bl sub_02062910
	cmp r0, #0x80
	beq _0224F478
	cmp r0, #0x81
	beq _0224F47E
	cmp r0, #0x82
	beq _0224F484
	b _0224F48A
_0224F478:
	mov r7, #0x90
	mov r6, #3
	b _0224F48E
_0224F47E:
	mov r7, #0x91
	mov r6, #4
	b _0224F48E
_0224F484:
	mov r7, #0x92
	mov r6, #5
	b _0224F48E
_0224F48A:
	bl sub_02022974
_0224F48E:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov9_02249DE4
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0206290C
	add r0, r5, #0
	bl sub_0206299C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063030
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0206419C
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_020641A8
	ldr r1, [sp, #8]
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, r1
	bl sub_02063024
	ldr r1, [sp]
	add r0, r5, #0
	sub r1, r1, #4
	bl sub_02063034
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, r1, r6
	bl sub_02063044
	add r0, r5, #0
	bl sub_02064208
	ldr r0, [r4, #0xc]
	add r1, sp, #0x18
	bl sub_0206309C
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x1c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x20]
	ldr r0, _0224F5D4 ; =0x00000623
	bl sub_02005748
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _0224F5CC
_0224F512:
	ldr r5, [r4, #0xc]
	add r1, sp, #0xc
	add r0, r5, #0
	bl sub_0206309C
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_020630AC
	ldr r0, [r4, #0x20]
	neg r0, r0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #7
	bne _0224F540
	mov r0, #0
	str r0, [r4, #0x20]
_0224F540:
	ldr r0, [r4, #0x18]
	cmp r0, #0x20
	bge _0224F54C
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224F54C:
	ldr r0, [r4, #0x14]
	mov r5, #0
	add r6, r5, #0
	cmp r0, #6
	beq _0224F560
	cmp r0, #7
	beq _0224F566
	cmp r0, #8
	beq _0224F56C
	b _0224F572
_0224F560:
	mov r6, #0xf
	mov r5, #5
	b _0224F576
_0224F566:
	mov r6, #0xe
	mov r5, #7
	b _0224F576
_0224F56C:
	mov r6, #0xd
	mov r5, #6
	b _0224F576
_0224F572:
	bl sub_02022974
_0224F576:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov9_02249DE4
	lsl r1, r5, #0x10
	mov r2, #0
	ldr r0, [r4, #8]
	lsr r1, r1, #0x10
	add r3, r2, #0
	bl sub_0203E8E0
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _0224F5CC
_0224F594:
	ldr r0, [r4, #0]
	mov r5, #0
	mov r1, #6
	bl ov9_02249E00
	add r5, r5, r0
	ldr r0, [r4, #0]
	mov r1, #7
	bl ov9_02249E00
	add r5, r5, r0
	ldr r0, [r4, #0]
	mov r1, #8
	bl ov9_02249E00
	add r0, r5, r0
	cmp r0, #3
	blt _0224F5C6
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #1
	bl sub_0206AFC0
_0224F5C6:
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224F5CC:
	mov r0, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0224F5D4: .word 0x00000623
	thumb_func_end ov9_0224F3BC

	thumb_func_start ov9_0224F5D8
ov9_0224F5D8: ; 0x0224F5D8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _0224F5EE
	cmp r0, #1
	beq _0224F638
	cmp r0, #2
	beq _0224F670
	b _0224F6E6
_0224F5EE:
	ldr r4, [r5, #0xc]
	add r1, sp, #0x18
	add r0, r4, #0
	bl sub_02063050
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r1, sp, #0x18
	bl sub_02063060
	add r0, r4, #0
	bl sub_0206299C
	mov r2, #2
	add r1, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xc
	bl sub_020642A4
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	cmp r0, #8
	bge _0224F62C
	add sp, #0x24
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0224F62C:
	mov r0, #0
	str r0, [r5, #0x18]
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _0224F6E6
_0224F638:
	ldr r4, [r5, #0xc]
	add r1, sp, #0xc
	add r0, r4, #0
	bl sub_02063050
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02063060
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	cmp r0, #4
	bge _0224F664
	add sp, #0x24
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0224F664:
	mov r0, #0
	str r0, [r5, #0x18]
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _0224F6E6
_0224F670:
	ldr r4, [r5, #0xc]
	add r1, sp, #0
	add r0, r4, #0
	bl sub_02063050
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063060
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	cmp r0, #0x28
	bge _0224F69C
	add sp, #0x24
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0224F69C:
	ldr r0, [r5, #0xc]
	mov r6, #0
	add r4, r6, #0
	bl sub_02062910
	cmp r0, #0x80
	beq _0224F6B4
	cmp r0, #0x81
	beq _0224F6B8
	cmp r0, #0x82
	beq _0224F6BE
	b _0224F6C4
_0224F6B4:
	mov r4, #3
	b _0224F6C8
_0224F6B8:
	mov r6, #1
	mov r4, #4
	b _0224F6C8
_0224F6BE:
	mov r6, #2
	mov r4, #5
	b _0224F6C8
_0224F6C4:
	bl sub_02022974
_0224F6C8:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov9_02249DC8
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov9_02249DE4
	ldr r0, [r5, #0]
	ldr r1, [r5, #0xc]
	bl ov9_0224EE70
	add sp, #0x24
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224F6E6:
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov9_0224F5D8

	thumb_func_start ov9_0224F6EC
ov9_0224F6EC: ; 0x0224F6EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r1, [r5, #0x12]
	cmp r1, #0
	beq _0224F700
	cmp r1, #1
	beq _0224F708
	cmp r1, #2
	beq _0224F710
	b _0224F716
_0224F700:
	bl ov9_0224F324
	add r4, r0, #0
	b _0224F716
_0224F708:
	bl ov9_0224F3BC
	add r4, r0, #0
	b _0224F716
_0224F710:
	bl ov9_0224F5D8
	add r4, r0, #0
_0224F716:
	cmp r4, #1
	bne _0224F720
	add r0, r5, #0
	bl sub_020181C4
_0224F720:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224F6EC

	thumb_func_start ov9_0224F724
ov9_0224F724: ; 0x0224F724
	push {r3, r4, r5, lr}
	ldr r1, _0224F758 ; =0x00001CAC
	add r5, r0, #0
	add r4, r5, r1
	bl ov9_022510D0
	ldr r1, _0224F75C ; =0x00000246
	cmp r0, r1
	bne _0224F74E
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B5D8
	cmp r0, #0xd
	bne _0224F74E
	mov r0, #1
	strh r0, [r4, #6]
	mov r0, #0xc
	strh r0, [r4]
_0224F74E:
	mov r0, #0
	mvn r0, r0
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
	nop
_0224F758: .word 0x00001CAC
_0224F75C: .word 0x00000246
	thumb_func_end ov9_0224F724

	thumb_func_start ov9_0224F760
ov9_0224F760: ; 0x0224F760
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224F760

	thumb_func_start ov9_0224F764
ov9_0224F764: ; 0x0224F764
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224F7F4 ; =0x00001CAC
	add r4, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAFC
	ldrh r1, [r4, #6]
	cmp r1, #0
	bne _0224F788
	ldr r1, [r0, #4]
	mov r0, #0x41
	lsl r0, r0, #0x10
	sub r0, r1, r0
	ldr r1, _0224F7F8 ; =0x0012AAAA
	bl sub_020E1F6C
	strh r0, [r4]
_0224F788:
	mov r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0224F794
	strh r0, [r4]
	b _0224F79C
_0224F794:
	cmp r1, #0xc
	ble _0224F79C
	mov r0, #0xc
	strh r0, [r4]
_0224F79C:
	mov r7, #0
	mov r0, #2
	ldrsh r1, [r4, r7]
	ldrsh r0, [r4, r0]
	cmp r1, r0
	beq _0224F7F0
	add r6, r4, #0
	add r6, #0x28
	add r5, r4, #0
_0224F7AE:
	ldrh r0, [r5, #8]
	ldrh r2, [r4]
	ldr r1, _0224F7FC ; =0x00002084
	add r3, r6, #0
	bl ov9_0224F86C
	add r7, r7, #1
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _0224F7AE
	add r5, r4, #0
	mov r7, #0
	add r5, #0xe8
	add r6, r4, #0
_0224F7CC:
	add r0, r6, #0
	add r0, #0x48
	ldrh r0, [r0]
	ldrh r2, [r4]
	ldr r1, _0224F800 ; =0x000020C6
	add r3, r5, #0
	bl ov9_0224F86C
	add r7, r7, #1
	add r5, r5, #2
	add r6, r6, #2
	cmp r7, #0x50
	blt _0224F7CC
	mov r0, #1
	strh r0, [r4, #4]
	mov r0, #0
	ldrsh r0, [r4, r0]
	strh r0, [r4, #2]
_0224F7F0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F7F4: .word 0x00001CAC
_0224F7F8: .word 0x0012AAAA
_0224F7FC: .word 0x00002084
_0224F800: .word 0x000020C6
	thumb_func_end ov9_0224F764

	thumb_func_start ov9_0224F804
ov9_0224F804: ; 0x0224F804
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224F850 ; =0x00001CAC
	add r4, r5, r0
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0224F84E
	add r1, r4, #0
	mov r0, #2
	add r1, #0x28
	mov r2, #0x20
	mov r3, #0
	bl sub_0201972C
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200A72C
	mov r1, #1
	bl sub_020A81FC
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #0xa0
	bl sub_020C2C54
	add r0, r4, #0
	add r0, #0xe8
	add r1, r5, #0
	mov r2, #0xa0
	bl sub_020C0160
	mov r0, #0
	strh r0, [r4, #4]
_0224F84E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F850: .word 0x00001CAC
	thumb_func_end ov9_0224F804

	thumb_func_start ov9_0224F854
ov9_0224F854: ; 0x0224F854
	ldr r2, _0224F85C ; =0x00001CB2
	strh r1, [r0, r2]
	bx lr
	nop
_0224F85C: .word 0x00001CB2
	thumb_func_end ov9_0224F854

	thumb_func_start ov9_0224F860
ov9_0224F860: ; 0x0224F860
	ldr r2, _0224F868 ; =0x00001CAC
	strh r1, [r0, r2]
	bx lr
	nop
_0224F868: .word 0x00001CAC
	thumb_func_end ov9_0224F860

	thumb_func_start ov9_0224F86C
ov9_0224F86C: ; 0x0224F86C
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6}
	add r1, r2, #0
	add r0, r3, #0
	add r2, sp, #0x10
	add r3, sp, #0x14
	cmp r1, #0x10
	bls _0224F87E
	mov r1, #0x10
_0224F87E:
	ldrh r4, [r2]
	ldrh r3, [r3]
	lsl r2, r4, #0x16
	lsr r6, r2, #0x1b
	lsl r2, r4, #0x1b
	lsr r5, r2, #0x1b
	lsl r2, r4, #0x11
	lsl r4, r3, #0x11
	lsr r2, r2, #0x1b
	lsr r4, r4, #0x1b
	sub r4, r4, r2
	mul r4, r1
	asr r4, r4, #4
	add r2, r2, r4
	lsl r4, r2, #0xa
	lsl r2, r3, #0x1b
	lsl r3, r3, #0x16
	lsr r3, r3, #0x1b
	lsr r2, r2, #0x1b
	sub r3, r3, r6
	sub r2, r2, r5
	mul r2, r1
	mul r3, r1
	asr r1, r3, #4
	asr r2, r2, #4
	add r1, r6, r1
	add r2, r5, r2
	lsl r1, r1, #5
	orr r1, r2
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6}
	add sp, #0x10
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224F86C

	thumb_func_start ov9_0224F8C4
ov9_0224F8C4: ; 0x0224F8C4
	push {r4, r5}
	add r4, r1, #0
	ldr r1, [r4, #0]
	mov r0, #0x18
	bic r1, r0
	ldr r0, [r2, #0]
	add r5, r4, #4
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1b
	orr r1, r0
	str r1, [r4, #0]
	mov r0, #2
	bic r1, r0
	ldrh r0, [r2, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r1
	str r0, [r4, #0]
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	mov r0, #0xe
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x20]
	mov r0, #0x10
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x24]
	mov r0, #0x12
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0x10
	str r0, [r4, #0x28]
	mov r0, #0x14
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0x10
	str r0, [r4, #0x2c]
	mov r0, #0x16
	ldrsh r0, [r2, r0]
	add r2, #0x18
	lsl r0, r0, #0x10
	str r0, [r4, #0x30]
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2, #0]
	add r4, #0x34
	str r0, [r5, #0]
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	pop {r4, r5}
	bx lr
	thumb_func_end ov9_0224F8C4

	thumb_func_start ov9_0224F930
ov9_0224F930: ; 0x0224F930
	push {r3, r4}
	cmp r1, #0
	beq _0224F940
	cmp r1, #1
	beq _0224F948
	cmp r1, #2
	beq _0224F950
	b _0224F956
_0224F940:
	add r1, r0, #0
	add r1, #0x40
	str r1, [r0, #0x4c]
	b _0224F956
_0224F948:
	add r1, r0, #0
	add r1, #0x44
	str r1, [r0, #0x4c]
	b _0224F956
_0224F950:
	add r1, r0, #0
	add r1, #0x48
	str r1, [r0, #0x4c]
_0224F956:
	mov r4, #1
	ldr r1, [r0, #0x4c]
	lsl r4, r4, #0xc
	str r4, [r1, #0]
	str r2, [r0, #0x50]
	str r3, [r0, #0x54]
	ldr r2, [r0, #0]
	mov r1, #4
	orr r1, r2
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov9_0224F930

	thumb_func_start ov9_0224F970
ov9_0224F970: ; 0x0224F970
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	cmp r2, r1
	beq _0224F98A
	ldr r1, [r4, #4]
	add r1, r2, r1
	str r1, [r4, #0x10]
	ldr r2, [r4, #0x34]
	ldr r1, [r4, #4]
	add r1, r2, r1
	str r1, [r4, #0x34]
_0224F98A:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x20]
	cmp r2, r1
	beq _0224F9A0
	ldr r1, [r4, #8]
	add r1, r2, r1
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x38]
	ldr r1, [r4, #8]
	add r1, r2, r1
	str r1, [r4, #0x38]
_0224F9A0:
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0x24]
	cmp r2, r1
	beq _0224F9B6
	ldr r1, [r4, #0xc]
	add r1, r2, r1
	str r1, [r4, #0x18]
	ldr r2, [r4, #0x3c]
	ldr r1, [r4, #0xc]
	add r1, r2, r1
	str r1, [r4, #0x3c]
_0224F9B6:
	ldr r1, [r4, #0]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _0224F9EC
	ldr r3, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	ldr r2, [r3, #0]
	add r1, r2, r1
	str r1, [r3, #0]
	ldr r3, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	ldr r2, [r3, #0]
	cmp r2, r1
	blt _0224F9DC
	str r1, [r3, #0]
	ldr r1, [r4, #0x50]
	neg r1, r1
	str r1, [r4, #0x50]
	b _0224F9EC
_0224F9DC:
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r2, r1
	bgt _0224F9EC
	str r1, [r3, #0]
	ldr r1, [r4, #0x50]
	neg r1, r1
	str r1, [r4, #0x50]
_0224F9EC:
	ldr r1, [r4, #0]
	lsl r2, r1, #0x1f
	lsr r2, r2, #0x1f
	bne _0224FA3E
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0x28]
	cmp r3, r2
	bne _0224FA3A
	ldr r3, [r4, #0x14]
	ldr r2, [r4, #0x2c]
	cmp r3, r2
	bne _0224FA3A
	ldr r3, [r4, #0x18]
	ldr r2, [r4, #0x30]
	cmp r3, r2
	bne _0224FA3A
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	bne _0224FA1C
	mov r1, #0
	mov r2, #1
	bl ov9_0224CC50
	b _0224FA24
_0224FA1C:
	mov r1, #0
	mov r2, #2
	bl ov9_0224CC50
_0224FA24:
	ldr r2, [r4, #0]
	mov r1, #1
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x1f
	add r2, r1, #1
	mov r1, #1
	and r1, r2
	orr r0, r1
	str r0, [r4, #0]
_0224FA3A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224FA3E:
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	cmp r1, r2
	bne _0224FA5A
	ldr r5, [r4, #0x14]
	ldr r3, [r4, #0x20]
	cmp r5, r3
	bne _0224FA5A
	ldr r5, [r4, #0x18]
	ldr r3, [r4, #0x24]
	cmp r5, r3
	bne _0224FA5A
	mov r0, #3
	pop {r3, r4, r5, pc}
_0224FA5A:
	ldr r3, [r4, #0]
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1e
	beq _0224FA6C
	cmp r3, #1
	beq _0224FA70
	cmp r3, #2
	beq _0224FA78
	b _0224FA7E
_0224FA6C:
	sub r0, r2, r1
	b _0224FA7E
_0224FA70:
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	b _0224FA7E
_0224FA78:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x18]
	sub r0, r1, r0
_0224FA7E:
	cmp r0, #0
	bge _0224FA84
	neg r0, r0
_0224FA84:
	mov r1, #1
	lsl r1, r1, #0x10
	sub r0, r0, r1
	bne _0224FA90
	mov r0, #2
	pop {r3, r4, r5, pc}
_0224FA90:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_0224F970

	thumb_func_start ov9_0224FA94
ov9_0224FA94: ; 0x0224FA94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r4, #0x54]
	ldrh r2, [r4, #4]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	cmp r2, #0
	bne _0224FADC
	mov r0, #0x13
	mvn r0, r0
	cmp r1, r0
	bne _0224FADC
	ldr r1, _0224FB34 ; =0x02251E40
	add r0, r5, #0
	bl ov9_0224A148
	mov r2, #0x1f
	add r0, r5, #0
	add r1, r6, #0
	mvn r2, r2
	mov r3, #0x48
	bl ov9_0224A4D0
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0224FB0A
_0224FADC:
	cmp r2, #1
	bne _0224FB0A
	mov r0, #0x23
	mvn r0, r0
	cmp r1, r0
	bne _0224FB0A
	add r0, r6, #0
	mov r1, #2
	bl sub_02062974
	ldr r1, _0224FB38 ; =0x02251888
	add r0, r5, #0
	bl ov9_0224A148
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x20
	mov r3, #0x1f
	bl ov9_0224A4D0
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
_0224FB0A:
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0224FB30
	mov r0, #6
	ldrsh r1, [r4, r0]
	cmp r1, #0
	blt _0224FB30
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #0x20
	blt _0224FB30
	add r0, r6, #0
	mov r1, #0
	bl sub_02062974
	mov r0, #0
	mvn r0, r0
	strh r0, [r4, #6]
_0224FB30:
	pop {r4, r5, r6, pc}
	nop
_0224FB34: .word 0x02251E40
_0224FB38: .word 0x02251888
	thumb_func_end ov9_0224FA94

	thumb_func_start ov9_0224FB3C
ov9_0224FB3C: ; 0x0224FB3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	mov r1, #0x98
	str r2, [sp]
	str r3, [sp, #4]
	bl ov9_0224E37C
	add r4, r0, #0
	ldr r0, [r6, #0]
	add r5, r4, #0
	ldr r0, [r0, #0x3c]
	add r5, #0x40
	str r0, [sp, #8]
	bl sub_0205EB3C
	add r7, r0, #0
	add r1, sp, #0x18
	bl sub_02063050
	add r0, r7, #0
	mov r1, #2
	bl sub_02062974
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r3, sp, #0x18
	bl ov9_0224F8C4
	ldr r0, [r5, #4]
	mov r3, #0
	asr r0, r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r7, #0
	asr r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	mov r2, #0x5a
	asr r0, r0, #1
	str r0, [r5, #0xc]
	mov r0, #0x20
	strh r0, [r4]
	ldrsh r3, [r4, r3]
	add r0, r6, #0
	bl ov9_0224A4D0
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r7, #0
	bl sub_020630AC
	ldr r0, [sp, #8]
	bl sub_0205EC04
	add r6, r0, #0
	bl ov5_021F88A8
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #5
	bl ov5_021F88B4
	add r0, r6, #0
	mov r1, #0x74
	bl ov5_021F88CC
	ldrh r0, [r5]
	mov r1, #0x5a
	lsl r1, r1, #8
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldrh r0, [r5, #2]
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	ldrh r0, [r5, #4]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	ldr r0, _0224FC24 ; =0xFFFFD300
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x20]
	lsl r0, r1, #4
	str r0, [r4, #0x30]
	ldr r0, _0224FC28 ; =0xFFFFDD00
	str r0, [r4, #0x34]
	add r0, r6, #0
	bl ov5_021F88FC
	mov r2, #0
	str r2, [r0, #0]
	mov r1, #6
	str r2, [r0, #4]
	lsl r1, r1, #0xc
	str r1, [r0, #8]
	str r2, [r4, #0x24]
	mov r0, #2
	str r2, [r4, #0x28]
	lsl r0, r0, #8
	str r0, [r4, #0x2c]
	mov r0, #0x5d
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224FC24: .word 0xFFFFD300
_0224FC28: .word 0xFFFFDD00
	thumb_func_end ov9_0224FB3C

	thumb_func_start ov9_0224FC2C
ov9_0224FC2C: ; 0x0224FC2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0]
	str r2, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r7, r0, #0
	add r0, r6, #0
	bl ov9_0224E39C
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0x40
	add r0, r6, #0
	add r1, r5, #0
	bl ov9_0224F970
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x34
	bl sub_02063060
	add r0, r6, #0
	add r1, r4, #0
	bl ov9_0224FA94
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EC04
	str r0, [sp, #4]
	bl ov5_021F88A8
	add r7, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0xc
	bl ov9_02250F1C
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x10
	bl ov9_02250F1C
	add r0, r4, #0
	ldr r1, [r4, #0x20]
	add r0, #0x14
	bl ov9_02250F1C
	ldr r1, [r4, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r7]
	ldr r1, [r4, #0x10]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r7, #2]
	ldr r1, [r4, #0x14]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r7, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x30
	bl ov9_02250F1C
	ldr r2, [r4, #0x30]
	ldr r0, [sp, #4]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bl ov5_021F8908
	ldr r0, [sp, #4]
	bl ov5_021F88FC
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r1, [r4, #0x2c]
	add r1, r2, r1
	str r1, [r0, #8]
	mov r1, #0
	ldrsh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0224FD64
	ldr r0, [r5, #4]
	mov r2, #1
	lsl r0, r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	lsl r2, r2, #0xa
	lsl r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	lsl r3, r2, #4
	lsl r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl ov9_0224F930
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EC04
	bl ov5_021F88FC
	mov r2, #0
	str r2, [r0, #0]
	mov r1, #0xa
	str r2, [r0, #4]
	lsl r1, r1, #0xc
	str r1, [r0, #8]
	mov r0, #0x46
	strh r0, [r4, #8]
	sub r0, #0x47
	strh r0, [r4, #0xa]
	str r2, [r4, #0x24]
	str r2, [r4, #0x28]
	mov r1, #8
	ldrsh r1, [r4, r1]
	ldr r0, _0224FD6C ; =0xFFFF0000
	bl sub_020E1F6C
	str r0, [r4, #0x2c]
	mov r1, #8
	ldrsh r1, [r4, r1]
	ldr r0, _0224FD70 ; =0xFFFFC000
	bl sub_020E1F6C
	str r0, [r4, #0x3c]
	ldr r0, [sp]
	mov r1, #2
	strh r1, [r0]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224FD64:
	add r0, r1, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224FD6C: .word 0xFFFF0000
_0224FD70: .word 0xFFFFC000
	thumb_func_end ov9_0224FC2C

	thumb_func_start ov9_0224FD74
ov9_0224FD74: ; 0x0224FD74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [r6, #0]
	str r2, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EC04
	str r0, [sp, #8]
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov9_0224E39C
	add r4, r0, #0
	add r7, r4, #0
	add r7, #0x40
	add r0, r6, #0
	add r1, r7, #0
	bl ov9_0224F970
	str r0, [sp, #0xc]
	add r1, r7, #0
	ldr r0, [sp, #4]
	add r1, #0x34
	bl sub_02063060
	add r3, r7, #0
	add r3, #0x40
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_02063088
	add r0, r6, #0
	add r1, r4, #0
	bl ov9_0224FA94
	ldr r0, [sp, #8]
	bl ov5_021F88FC
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl ov5_021F88F0
	add r7, #0x40
	add r2, r0, #0
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0]
	str r0, [r2, #0]
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0224FE26
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0224FE82
	sub r0, r0, #1
	strh r0, [r4, #8]
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x38]
	b _0224FE82
_0224FE26:
	cmp r0, #2
	bne _0224FE82
	mov r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0224FE56
	mov r0, #0x1e
	strh r0, [r4, #0xa]
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r0, #6
	ldrsh r1, [r4, r1]
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [r4, #0x2c]
	mov r1, #0xa
	mov r0, #1
	ldrsh r1, [r4, r1]
	lsl r0, r0, #0xe
	bl sub_020E1F6C
	str r0, [r4, #0x3c]
_0224FE56:
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0224FE82
	sub r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x38]
_0224FE82:
	ldr r0, [sp, #0xc]
	cmp r0, #2
	bne _0224FEBE
	mov r0, #0x10
	strh r0, [r4]
	mov r3, #0
	ldrsh r3, [r4, r3]
	ldr r1, [sp, #4]
	add r0, r6, #0
	mov r2, #0x5a
	bl ov9_0224A4D0
	ldr r0, _0224FED0 ; =0xFFFFA600
	mov r1, #0x20
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	ldr r0, _0224FED4 ; =0xFFFFF900
	str r0, [r4, #0x2c]
	ldr r0, _0224FED8 ; =0xFFFF9200
	str r0, [r4, #0x34]
	ldr r0, [sp, #8]
	bl ov5_021F88DC
	ldr r0, [sp]
	mov r1, #3
	strh r1, [r0]
_0224FEBE:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0224FEC8
	bl sub_02022974
_0224FEC8:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224FED0: .word 0xFFFFA600
_0224FED4: .word 0xFFFFF900
_0224FED8: .word 0xFFFF9200
	thumb_func_end ov9_0224FD74

	thumb_func_start ov9_0224FEDC
ov9_0224FEDC: ; 0x0224FEDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r0, #0
	ldr r0, [r6, #0]
	str r2, [sp, #4]
	ldr r0, [r0, #0x3c]
	str r3, [sp, #8]
	bl sub_0205EC04
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	add r0, r6, #0
	bl ov9_0224E39C
	add r4, r0, #0
	str r0, [sp, #0x10]
	add r0, #0x40
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl ov9_0224F970
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x34
	bl sub_02063060
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0x40
	str r1, [sp, #0x10]
	bl sub_02063088
	add r0, r6, #0
	add r1, r4, #0
	bl ov9_0224FA94
	add r0, r7, #0
	bl ov5_021F88A8
	str r0, [sp, #0x18]
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0xc
	bl ov9_02250F1C
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x10
	bl ov9_02250F1C
	add r0, r4, #0
	ldr r1, [r4, #0x20]
	add r0, #0x14
	bl ov9_02250F1C
	ldr r1, [r4, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	ldr r1, [r4, #0x10]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, [sp, #0x18]
	strh r1, [r0, #2]
	ldr r1, [r4, #0x14]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, [sp, #0x18]
	strh r1, [r0, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x30
	bl ov9_02250F1C
	ldr r1, [r4, #0x30]
	add r0, r7, #0
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	lsl r1, r2, #4
	lsr r1, r1, #0x10
	bl ov5_021F8908
	add r0, r7, #0
	bl ov5_021F88FC
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r0, #4]
	add r0, #8
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x2c]
	add r1, r2, r1
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	cmp r0, #3
	beq _0224FFC4
	b _022500D0
_0224FFC4:
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	mov r1, #6
	ldrsh r4, [r0, r1]
	add r0, r5, #0
	bl sub_02063030
	ldr r1, [sp, #8]
	mov r2, #8
	ldrsh r1, [r1, r2]
	lsl r1, r1, #1
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	mov r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, r1
	bl sub_02063024
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063034
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	add r1, r2, r1
	bl sub_02063044
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	mov r1, #2
	bl sub_02062974
	add r0, r5, #0
	mov r1, #2
	bl sub_02062994
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_02063088
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_020630AC
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	lsr r3, r2, #0x1f
	add r3, r2, r3
	add r1, r4, r1
	asr r2, r3, #1
	mov r0, #4
	str r0, [sp]
	ldr r4, [sp, #0x24]
	ldr r3, [sp, #0x20]
	add r0, r6, #0
	add r3, r4, r3
	bl ov9_0224C378
	ldr r0, [r6, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205F098
	add r0, r5, #0
	mov r1, #0
	bl sub_02062E28
	add r0, r7, #0
	bl ov5_021F88FC
	add r2, sp, #0x28
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	add r0, r7, #0
	bl ov5_021F88F0
	add r2, sp, #0x28
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	ldr r1, _022500D8 ; =0x0000010E
	str r0, [r3, #0]
	add r0, r7, #0
	bl ov5_021F8908
	add r0, r7, #0
	mov r1, #2
	mov r2, #1
	bl ov5_021F88B4
	add r0, r7, #0
	mov r1, #0x74
	bl ov5_021F88DC
	mov r0, #0x5d
	lsl r0, r0, #4
	mov r1, #0
	bl sub_020057A4
	ldr r0, [sp, #4]
	mov r1, #4
	strh r1, [r0]
	add r0, r6, #0
	mov r1, #7
	bl ov9_02249D70
	ldr r1, _022500DC ; =0x00000243
	add r0, r6, #0
	mov r2, #0
	bl ov9_0224DDA0
_022500D0:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_022500D8: .word 0x0000010E
_022500DC: .word 0x00000243
	thumb_func_end ov9_0224FEDC

	thumb_func_start ov9_022500E0
ov9_022500E0: ; 0x022500E0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _02250134 ; =0x02251290
	add r4, r0, #0
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #0x14]
	str r2, [sp]
	str r1, [sp, #4]
	bl ov9_0224E39C
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #0
	bne _0225010E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225010E:
	ldrh r1, [r5, #2]
	cmp r1, #2
	blo _0225011A
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, pc}
_0225011A:
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02065638
	ldrh r0, [r5, #2]
	add r0, r0, #1
	strh r0, [r5, #2]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02250134: .word 0x02251290
	thumb_func_end ov9_022500E0

	thumb_func_start ov9_02250138
ov9_02250138: ; 0x02250138
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	ldr r0, [r4, #0x48]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _0225016A
	cmp r1, #0x14
	bne _0225016A
	ldr r1, _0225016C ; =0x02251C48
	add r0, r5, #0
	bl ov9_0224A148
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
_0225016A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225016C: .word 0x02251C48
	thumb_func_end ov9_02250138

	thumb_func_start ov9_02250170
ov9_02250170: ; 0x02250170
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	mov r1, #0x8c
	str r2, [sp]
	str r3, [sp, #4]
	bl ov9_0224E37C
	add r4, r0, #0
	ldr r0, [r6, #0]
	add r5, r4, #0
	ldr r0, [r0, #0x3c]
	add r5, #0x34
	str r0, [sp, #8]
	bl sub_0205EB3C
	add r7, r0, #0
	add r1, sp, #0x18
	bl sub_02063050
	add r0, r7, #0
	mov r1, #3
	bl sub_02062974
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r3, sp, #0x18
	bl ov9_0224F8C4
	ldr r0, [r5, #4]
	mov r2, #4
	asr r0, r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	mov r3, #0
	asr r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	asr r0, r0, #1
	str r0, [r5, #0xc]
	strh r2, [r4]
	ldrsh r3, [r4, r3]
	add r0, r6, #0
	sub r2, #0x5e
	bl ov9_0224A4D0
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r7, #0
	bl sub_020630AC
	ldr r0, [sp, #8]
	bl sub_0205EC04
	add r6, r0, #0
	bl ov5_021F88A8
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #3
	mov r2, #1
	bl ov5_021F88B4
	add r0, r6, #0
	mov r1, #0x74
	bl ov5_021F88CC
	ldrh r0, [r5]
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	ldrh r0, [r5, #2]
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldrh r0, [r5, #4]
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	ldr r0, _02250254 ; =0xFFFE9800
	str r0, [r4, #0x14]
	mov r0, #0x2d
	lsl r0, r0, #0xc
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, _02250258 ; =0x0010E000
	str r0, [r4, #0x2c]
	mov r0, #0x6e
	lsl r0, r0, #0xa
	str r0, [r4, #0x30]
	add r0, r6, #0
	bl ov5_021F88FC
	mov r2, #0
	str r2, [r0, #0]
	ldr r1, _0225025C ; =0xFFFF9000
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r2, [r4, #0x20]
	mov r0, #0x5d
	str r2, [r4, #0x24]
	lsl r0, r0, #4
	str r2, [r4, #0x28]
	bl sub_02005748
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02250254: .word 0xFFFE9800
_02250258: .word 0x0010E000
_0225025C: .word 0xFFFF9000
	thumb_func_end ov9_02250170

	thumb_func_start ov9_02250260
ov9_02250260: ; 0x02250260
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0]
	str r2, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r7, r0, #0
	add r0, r6, #0
	bl ov9_0224E39C
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0x34
	add r0, r6, #0
	add r1, r5, #0
	bl ov9_0224F970
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x34
	bl sub_02063060
	add r0, r6, #0
	add r1, r4, #0
	bl ov9_02250138
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EC04
	str r0, [sp, #4]
	bl ov5_021F88A8
	add r7, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #8
	bl ov9_02250F1C
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0xc
	bl ov9_02250F1C
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x10
	bl ov9_02250F1C
	ldr r1, [r4, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r7]
	ldr r1, [r4, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r7, #2]
	ldr r1, [r4, #0x10]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r7, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x30]
	add r0, #0x2c
	bl ov9_02250F1C
	ldr r2, [r4, #0x2c]
	ldr r0, [sp, #4]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bl ov5_021F8908
	ldr r0, [sp, #4]
	bl ov5_021F88FC
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x20]
	add r1, r2, r1
	str r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r0, #8]
	mov r1, #0
	ldrsh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0225037C
	ldr r0, [r5, #4]
	mov r2, #2
	lsl r0, r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	lsl r2, r2, #8
	lsl r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	lsl r3, r2, #5
	lsl r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl ov9_0224F930
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EC04
	bl ov5_021F88FC
	mov r2, #0
	str r2, [r0, #0]
	ldr r1, _02250384 ; =0xFFFF9000
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r2, [r4, #0x20]
	mov r0, #0x11
	str r2, [r4, #0x24]
	lsl r0, r0, #8
	str r0, [r4, #0x28]
	ldr r0, [sp]
	mov r1, #2
	strh r1, [r0]
	add sp, #8
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225037C:
	add r0, r1, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02250384: .word 0xFFFF9000
	thumb_func_end ov9_02250260

	thumb_func_start ov9_02250388
ov9_02250388: ; 0x02250388
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r2, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EC04
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov9_0224E39C
	add r4, r0, #0
	add r6, r4, #0
	add r6, #0x34
	add r0, r5, #0
	add r1, r6, #0
	bl ov9_0224F970
	add r7, r0, #0
	add r1, r6, #0
	ldr r0, [sp, #4]
	add r1, #0x34
	bl sub_02063060
	add r1, r6, #0
	ldr r0, [sp, #4]
	add r1, #0x40
	bl sub_02063088
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_02250138
	ldr r0, [sp, #8]
	bl ov5_021F88F0
	add r6, #0x40
	add r2, r0, #0
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _02250416
	ldr r0, [sp, #8]
	bl ov5_021F88FC
	mov r1, #0xa
	ldr r2, [r0, #8]
	lsl r1, r1, #0xc
	cmp r2, r1
	bge _02250416
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x20]
	add r1, r2, r1
	str r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r0, #8]
_02250416:
	cmp r7, #2
	bne _02250454
	mov r2, #2
	strh r2, [r4]
	mov r3, #0
	ldrsh r3, [r4, r3]
	ldr r1, [sp, #4]
	add r0, r5, #0
	sub r2, #0x5c
	bl ov9_0224A4D0
	mov r0, #0x2d
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, _02250464 ; =0xFFFFE000
	mov r1, #0x20
	str r0, [r4, #0x28]
	mov r0, #0x23
	lsl r0, r0, #0xc
	str r0, [r4, #0x30]
	ldr r0, [sp, #8]
	bl ov5_021F88DC
	ldr r0, [sp]
	mov r1, #3
	strh r1, [r0]
_02250454:
	cmp r7, #3
	bne _0225045C
	bl sub_02022974
_0225045C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02250464: .word 0xFFFFE000
	thumb_func_end ov9_02250388

	thumb_func_start ov9_02250468
ov9_02250468: ; 0x02250468
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r0, #0
	ldr r0, [r6, #0]
	str r2, [sp, #4]
	ldr r0, [r0, #0x3c]
	str r3, [sp, #8]
	bl sub_0205EC04
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	add r0, r6, #0
	bl ov9_0224E39C
	add r4, r0, #0
	str r0, [sp, #0x10]
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl ov9_0224F970
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x34
	bl sub_02063060
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0x40
	str r1, [sp, #0x10]
	bl sub_02063088
	add r0, r6, #0
	add r1, r4, #0
	bl ov9_02250138
	add r0, r7, #0
	bl ov5_021F88A8
	str r0, [sp, #0x18]
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #8
	bl ov9_02250F1C
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0xc
	bl ov9_02250F1C
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x10
	bl ov9_02250F1C
	ldr r1, [r4, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	ldr r1, [r4, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, [sp, #0x18]
	strh r1, [r0, #2]
	ldr r1, [r4, #0x10]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, [sp, #0x18]
	strh r1, [r0, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x30]
	add r0, #0x2c
	bl ov9_02250F1C
	ldr r1, [r4, #0x2c]
	add r0, r7, #0
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	lsl r1, r2, #4
	lsr r1, r1, #0x10
	bl ov5_021F8908
	add r0, r7, #0
	bl ov5_021F88FC
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x20]
	add r1, r2, r1
	str r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r0, #4]
	add r0, #8
	ldr r2, [r0, #0]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _02250648
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	mov r1, #6
	ldrsh r4, [r0, r1]
	add r0, r5, #0
	bl sub_02063030
	ldr r1, [sp, #8]
	mov r2, #8
	ldrsh r1, [r1, r2]
	lsl r1, r1, #1
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	mov r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, r1
	bl sub_02063024
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063034
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	add r1, r2, r1
	bl sub_02063044
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	mov r1, #3
	bl sub_02062974
	add r0, r5, #0
	mov r1, #3
	bl sub_02062994
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_02063088
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_020630AC
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	lsr r3, r2, #0x1f
	add r3, r2, r3
	add r1, r4, r1
	asr r2, r3, #1
	mov r0, #4
	str r0, [sp]
	ldr r4, [sp, #0x24]
	ldr r3, [sp, #0x20]
	add r0, r6, #0
	add r3, r4, r3
	bl ov9_0224C378
	ldr r0, [r6, #0]
	mov r1, #5
	ldr r0, [r0, #0x3c]
	bl sub_0205F098
	add r0, r5, #0
	mov r1, #1
	bl sub_02062E28
	add r0, r7, #0
	bl ov5_021F88FC
	add r2, sp, #0x28
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	add r0, r7, #0
	bl ov5_021F88F0
	add r2, sp, #0x28
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	mov r1, #0x5a
	str r0, [r3, #0]
	add r0, r7, #0
	bl ov5_021F8908
	add r0, r7, #0
	mov r1, #3
	mov r2, #5
	bl ov5_021F88B4
	add r0, r7, #0
	mov r1, #0x74
	bl ov5_021F88DC
	mov r0, #0x5d
	lsl r0, r0, #4
	mov r1, #0
	bl sub_020057A4
	ldr r0, [sp, #4]
	mov r1, #4
	strh r1, [r0]
_02250648:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_02250468

	thumb_func_start ov9_02250650
ov9_02250650: ; 0x02250650
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r3, _022506A8 ; =0x02251390
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r4, #0
	bl ov9_0224E39C
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #0
	bne _02250682
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_02250682:
	ldrh r1, [r5, #2]
	cmp r1, #3
	blo _0225068E
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_0225068E:
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02065638
	ldrh r0, [r5, #2]
	add r0, r0, #1
	strh r0, [r5, #2]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022506A8: .word 0x02251390
	thumb_func_end ov9_02250650

	thumb_func_start ov9_022506AC
ov9_022506AC: ; 0x022506AC
	push {r4, lr}
	add r0, r1, #0
	ldr r1, [r3, #0]
	add r4, r2, #0
	lsl r1, r1, #0x10
	mov r2, #0
	lsr r1, r1, #0x10
	add r3, r2, #0
	bl sub_0203E8E0
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_022506AC

	thumb_func_start ov9_022506CC
ov9_022506CC: ; 0x022506CC
	mov r0, #2
	bx lr
	thumb_func_end ov9_022506CC

	thumb_func_start ov9_022506D0
ov9_022506D0: ; 0x022506D0
	push {r4, lr}
	ldr r0, [r0, #0]
	add r4, r3, #0
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r1, [r4, #0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B5E8
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_022506D0

	thumb_func_start ov9_022506EC
ov9_022506EC: ; 0x022506EC
	push {r4, lr}
	ldr r0, [r0, #0]
	add r4, r3, #0
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, [r4, #0]
	mov r1, #1
	bl sub_0206AFB0
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ov9_022506EC

	thumb_func_start ov9_02250704
ov9_02250704: ; 0x02250704
	push {r3, lr}
	ldr r1, [r3, #0]
	bl ov9_02249DC8
	mov r0, #2
	pop {r3, pc}
	thumb_func_end ov9_02250704

	thumb_func_start ov9_02250710
ov9_02250710: ; 0x02250710
	push {r3, lr}
	ldr r1, [r3, #0]
	bl ov9_02249DE4
	mov r0, #2
	pop {r3, pc}
	thumb_func_end ov9_02250710

	thumb_func_start ov9_0225071C
ov9_0225071C: ; 0x0225071C
	push {r4, lr}
	add r1, r3, #0
	add r4, r2, #0
	bl ov9_0224E91C
	mov r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_0225071C

	thumb_func_start ov9_02250730
ov9_02250730: ; 0x02250730
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224E964
	cmp r0, #1
	bne _02250746
	add r0, r4, #0
	bl ov9_0224E988
	mov r0, #2
	pop {r4, pc}
_02250746:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_02250730

	thumb_func_start ov9_0225074C
ov9_0225074C: ; 0x0225074C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0, #0]
	add r4, r0, #0
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	lsl r0, r1, #0x10
	ldr r5, _0225077C ; =0x02252284
	mov r6, #0
	add r4, #0x1c
	lsr r7, r0, #0x10
_02250764:
	ldrh r0, [r5]
	mov r1, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov9_0224F86C
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r6, #0x10
	blo _02250764
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225077C: .word 0x02252284
	thumb_func_end ov9_0225074C

	thumb_func_start ov9_02250780
ov9_02250780: ; 0x02250780
	push {r3, r4, r5, lr}
	ldr r0, [r0, #4]
	ldr r5, [r0, #0x24]
	ldr r0, _022507C0 ; =0x00001E6C
	ldrh r0, [r5, r0]
	cmp r0, #1
	bne _022507BE
	add r0, r5, #0
	bl ov9_0224E39C
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206285C
	bl ov5_021EDCB0
	mov r1, #0xe6
	bl sub_02022D98
	bl sub_02022F14
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r4, #0x1c
	mov r0, #1
	lsr r1, r1, #0xd
	add r2, r4, #0
	mov r3, #0x20
	bl sub_0201DC68
_022507BE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022507C0: .word 0x00001E6C
	thumb_func_end ov9_02250780

	thumb_func_start ov9_022507C4
ov9_022507C4: ; 0x022507C4
	push {r4, r5, r6, lr}
	mov r1, #0x3c
	add r6, r0, #0
	add r5, r2, #0
	bl ov9_0224E37C
	add r4, r0, #0
	ldr r1, _022507F8 ; =0x00000246
	add r0, r6, #0
	mov r2, #0x80
	bl ov9_0224F0D4
	str r0, [r4, #0x18]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	add r4, #8
	add r1, r4, #0
	bl sub_020630AC
	mov r0, #1
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_022507F8: .word 0x00000246
	thumb_func_end ov9_022507C4

	thumb_func_start ov9_022507FC
ov9_022507FC: ; 0x022507FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	bl ov9_0224E39C
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov5_021EB1A0
	cmp r0, #0
	beq _02250842
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov9_0225074C
	ldr r0, _02250848 ; =0x00001E6C
	mov r1, #1
	strh r1, [r5, r0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov9_0224F854
	ldr r0, _0225084C ; =0x00001E6E
	mov r1, #2
	strh r1, [r5, r0]
	ldr r0, _02250850 ; =0x000005D1
	bl sub_02005748
	mov r0, #2
	strh r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02250842:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02250848: .word 0x00001E6C
_0225084C: .word 0x00001E6E
_02250850: .word 0x000005D1
	thumb_func_end ov9_022507FC

	thumb_func_start ov9_02250854
ov9_02250854: ; 0x02250854
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r2, #0
	bl ov9_0224E39C
	add r4, r0, #0
	mov r0, #0x5b
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #3
	lsl r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _02250874
	str r0, [r4, #4]
_02250874:
	ldr r2, [r4, #4]
	add r0, r6, #0
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	lsl r1, r1, #4
	asr r1, r1, #0x10
	bl ov9_0224F860
	mov r0, #1
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _02250894
	lsr r0, r0, #4
	b _02250896
_02250894:
	lsr r0, r0, #5
_02250896:
	sub r0, r1, r0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bge _022508B2
	mov r0, #3
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _022508B2
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #3
	strh r0, [r5]
_022508B2:
	ldr r0, [r4, #0x18]
	add r4, #8
	add r1, r4, #0
	bl sub_020630AC
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov9_02250854

	thumb_func_start ov9_022508C0
ov9_022508C0: ; 0x022508C0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl ov9_0224E39C
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov5_021EB1A0
	bl sub_02021430
	mov r0, #0xb6
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	sub r0, r1, r0
	str r0, [r4, #0]
	bpl _022508E8
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #4
	strh r0, [r5]
_022508E8:
	add r0, r4, #0
	bl ov9_0225074C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_022508C0

	thumb_func_start ov9_022508F4
ov9_022508F4: ; 0x022508F4
	push {r4, lr}
	add r4, r0, #0
	bl ov9_0224E39C
	ldr r1, [r0, #0x14]
	add r1, r1, #1
	str r1, [r0, #0x14]
	cmp r1, #0x1e
	blt _02250910
	ldr r0, _02250914 ; =0x00001E6C
	mov r1, #0
	strh r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
_02250910:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02250914: .word 0x00001E6C
	thumb_func_end ov9_022508F4

	thumb_func_start ov9_02250918
ov9_02250918: ; 0x02250918
	push {r4, r5, r6, lr}
	mov r1, #0x24
	add r6, r0, #0
	add r5, r2, #0
	bl ov9_0224E37C
	add r4, r0, #0
	ldr r1, _02250948 ; =0x00000243
	add r0, r6, #0
	mov r2, #0x83
	bl ov9_0224F0D4
	str r0, [r4, #0x20]
	mov r0, #0x1e
	lsl r0, r0, #4
	mov r1, #0
	bl sub_02005844
	mov r0, #1
	str r0, [r4, #4]
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02250948: .word 0x00000243
	thumb_func_end ov9_02250918

	thumb_func_start ov9_0225094C
ov9_0225094C: ; 0x0225094C
	push {r4, r5, r6, lr}
	mov r5, #2
	add r6, r2, #0
	lsl r5, r5, #0xc
	bl ov9_0224E39C
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0x10
	bge _0225096C
	lsl r5, r5, #1
_0225096C:
	ldr r0, [r4, #0x18]
	add r1, r4, #0
	add r0, r0, r5
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	add r1, #0x14
	bl sub_020630AC
	ldr r0, [r4, #0x18]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0x11
	blt _02250990
	mov r0, #2
	strh r0, [r6]
_02250990:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov9_0225094C

	thumb_func_start ov9_02250994
ov9_02250994: ; 0x02250994
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl ov9_0224E39C
	add r4, r0, #0
	mov r0, #1
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	add r1, r4, #0
	ldr r0, [r4, #0x20]
	add r1, #0x14
	bl sub_020630AC
	ldr r0, [r4, #0x1c]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	bgt _022509CE
	ldr r0, [r4, #0x18]
	str r0, [r4, #0xc]
	mov r0, #3
	strh r0, [r5]
_022509CE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02250994

	thumb_func_start ov9_022509D4
ov9_022509D4: ; 0x022509D4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	ldr r3, _02250A54 ; =0x022522A4
	add r5, r2, #0
	add r4, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r4, #0
	bl ov9_0224E39C
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, [r4, #0xc]
	asr r1, r1, #1
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	add r0, r0, r1
	str r0, [r4, #0x18]
	add r1, r4, #0
	ldr r0, [r4, #0x20]
	add r1, #0x14
	bl sub_020630AC
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r4, #0]
	cmp r0, #0xf
	bge _02250A22
	cmp r0, #0
	bgt _02250A4C
_02250A22:
	ldr r0, [r4, #4]
	neg r0, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02250A4C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #3
	blt _02250A4C
	ldr r0, [r4, #0]
	ldr r2, [r4, #0xc]
	asr r0, r0, #1
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add r0, r2, r0
	str r0, [r4, #0x18]
	mov r0, #4
	strh r0, [r5]
_02250A4C:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_02250A54: .word 0x022522A4
	thumb_func_end ov9_022509D4

	thumb_func_start ov9_02250A58
ov9_02250A58: ; 0x02250A58
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl ov9_0224E39C
	add r4, r0, #0
	mov r0, #1
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #0x1c]
	add r1, r4, #0
	ldr r0, [r4, #0x20]
	add r1, #0x14
	bl sub_020630AC
	ldr r0, [r4, #0x1c]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #1
	bne _02250A8A
	mov r0, #5
	strh r0, [r5]
_02250A8A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02250A58

	thumb_func_start ov9_02250A90
ov9_02250A90: ; 0x02250A90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov9_0224E39C
	add r4, r0, #0
	mov r0, #2
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02250AAA
	lsr r0, r0, #4
	add r0, r1, r0
	str r0, [r4, #0x10]
_02250AAA:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
	str r0, [r4, #0x18]
	add r1, r4, #0
	ldr r0, [r4, #0x20]
	add r1, #0x14
	bl sub_020630AC
	ldr r0, [r4, #0x18]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0
	bgt _02250AF6
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	bl ov9_0224EE70
	add r0, r5, #0
	mov r1, #0xa
	bl ov9_02249DC8
	add r0, r5, #0
	mov r1, #0xd
	bl ov9_02249DC8
	mov r1, #0x91
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x84
	bl ov9_0224F0D4
	str r0, [r4, #0x20]
	mov r0, #2
	pop {r3, r4, r5, pc}
_02250AF6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02250A90

	thumb_func_start ov9_02250AFC
ov9_02250AFC: ; 0x02250AFC
	push {r4, r5, r6, lr}
	mov r1, #0x18
	add r6, r0, #0
	add r5, r2, #0
	bl ov9_0224E37C
	add r4, r0, #0
	ldr r1, _02250B28 ; =0x00000243
	add r0, r6, #0
	mov r2, #0x84
	bl ov9_0224F0D4
	str r0, [r4, #0x14]
	ldr r0, _02250B2C ; =0x000001E2
	mov r1, #0
	bl sub_02005844
	mov r0, #1
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02250B28: .word 0x00000243
_02250B2C: .word 0x000001E2
	thumb_func_end ov9_02250AFC

	thumb_func_start ov9_02250B30
ov9_02250B30: ; 0x02250B30
	push {r4, r5, r6, lr}
	mov r5, #2
	add r6, r2, #0
	lsl r5, r5, #0xc
	bl ov9_0224E39C
	add r4, r0, #0
	ldr r0, [r4, #8]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0xc
	bge _02250B50
	lsl r5, r5, #1
_02250B50:
	ldr r0, [r4, #8]
	add r1, r4, #4
	add r0, r0, r5
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	bl sub_020630AC
	ldr r0, [r4, #8]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0xd
	blt _02250B7C
	ldr r0, [r4, #0x14]
	ldr r1, _02250B80 ; =0x02251E74
	bl sub_02065700
	str r0, [r4, #0x10]
	mov r0, #2
	strh r0, [r6]
_02250B7C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02250B80: .word 0x02251E74
	thumb_func_end ov9_02250B30

	thumb_func_start ov9_02250B84
ov9_02250B84: ; 0x02250B84
	push {r3, r4, r5, lr}
	add r4, r2, #0
	bl ov9_0224E39C
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0206574C
	cmp r0, #1
	bne _02250BA6
	ldr r0, [r5, #0x10]
	bl sub_02065758
	mov r0, #3
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250BA6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02250B84

	thumb_func_start ov9_02250BAC
ov9_02250BAC: ; 0x02250BAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov9_0224E39C
	add r4, r0, #0
	mov r0, #2
	ldr r1, [r4, #0]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02250BC6
	lsr r0, r0, #4
	add r0, r1, r0
	str r0, [r4, #0]
_02250BC6:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0]
	sub r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	add r1, r4, #4
	bl sub_020630AC
	ldr r0, [r4, #8]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0
	bgt _02250C10
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	bl ov9_0224EE70
	add r0, r5, #0
	mov r1, #0xb
	bl ov9_02249DC8
	add r0, r5, #0
	mov r1, #0xe
	bl ov9_02249DC8
	mov r1, #0x91
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x85
	bl ov9_0224F0D4
	str r0, [r4, #0x14]
	mov r0, #2
	pop {r3, r4, r5, pc}
_02250C10:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_02250BAC

	thumb_func_start ov9_02250C14
ov9_02250C14: ; 0x02250C14
	push {r4, r5, r6, lr}
	mov r1, #0x18
	add r6, r0, #0
	add r5, r2, #0
	bl ov9_0224E37C
	add r4, r0, #0
	ldr r1, _02250C40 ; =0x00000243
	add r0, r6, #0
	mov r2, #0x85
	bl ov9_0224F0D4
	str r0, [r4, #0x18]
	ldr r0, _02250C44 ; =0x000001E1
	mov r1, #0
	bl sub_02005844
	mov r0, #1
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02250C40: .word 0x00000243
_02250C44: .word 0x000001E1
	thumb_func_end ov9_02250C14

	thumb_func_start ov9_02250C48
ov9_02250C48: ; 0x02250C48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r5, #2
	add r6, r0, #0
	add r7, r2, #0
	lsl r5, r5, #0xc
	bl ov9_0224E39C
	add r4, r0, #0
	ldr r0, [r4, #8]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #8
	bge _02250C6C
	lsl r5, r5, #1
_02250C6C:
	ldr r0, [r4, #8]
	add r1, r4, #4
	add r0, r0, r5
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	bl sub_020630AC
	ldr r0, [r4, #8]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #9
	blt _02250CC2
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl ov9_02250F44
	ldr r0, [sp]
	cmp r0, #0x43
	bne _02250CA2
	ldr r5, _02250CC8 ; =0x02252E14
	ldr r1, _02250CCC ; =0x02252D80
	b _02250CA6
_02250CA2:
	ldr r5, _02250CD0 ; =0x02252E64
	ldr r1, _02250CD4 ; =0x02252DC8
_02250CA6:
	ldr r0, [r4, #0x18]
	bl sub_02065700
	str r0, [r4, #0x10]
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r1, r5, #0
	bl sub_02065700
	str r0, [r4, #0x14]
	mov r0, #2
	strh r0, [r7]
_02250CC2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02250CC8: .word 0x02252E14
_02250CCC: .word 0x02252D80
_02250CD0: .word 0x02252E64
_02250CD4: .word 0x02252DC8
	thumb_func_end ov9_02250C48

	thumb_func_start ov9_02250CD8
ov9_02250CD8: ; 0x02250CD8
	push {r3, r4, r5, lr}
	add r4, r2, #0
	bl ov9_0224E39C
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0206574C
	cmp r0, #1
	bne _02250D0A
	ldr r0, [r5, #0x14]
	bl sub_0206574C
	cmp r0, #1
	bne _02250D0A
	ldr r0, [r5, #0x10]
	bl sub_02065758
	ldr r0, [r5, #0x14]
	bl sub_02065758
	mov r0, #3
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250D0A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov9_02250CD8

	thumb_func_start ov9_02250D10
ov9_02250D10: ; 0x02250D10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov9_0224E39C
	add r4, r0, #0
	mov r0, #2
	ldr r1, [r4, #0]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02250D2A
	lsr r0, r0, #4
	add r0, r1, r0
	str r0, [r4, #0]
_02250D2A:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0]
	sub r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	add r1, r4, #4
	bl sub_020630AC
	ldr r0, [r4, #8]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0
	bgt _02250D74
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl ov9_0224EE70
	add r0, r5, #0
	mov r1, #0xc
	bl ov9_02249DC8
	add r0, r5, #0
	mov r1, #0xf
	bl ov9_02249DC8
	mov r1, #0x91
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x83
	bl ov9_0224F0D4
	str r0, [r4, #0x18]
	mov r0, #2
	pop {r3, r4, r5, pc}
_02250D74:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov9_02250D10

	thumb_func_start ov9_02250D78
ov9_02250D78: ; 0x02250D78
	push {r4, r5, r6, lr}
	mov r1, #4
	add r6, r0, #0
	add r5, r2, #0
	bl ov9_0224E37C
	add r4, r0, #0
	ldr r1, _02250D9C ; =0x02251D68
	add r0, r6, #0
	bl ov9_0224A148
	mov r0, #0x24
	strh r0, [r4, #2]
	mov r0, #1
	strh r0, [r4]
	strh r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_02250D9C: .word 0x02251D68
	thumb_func_end ov9_02250D78

	thumb_func_start ov9_02250DA0
ov9_02250DA0: ; 0x02250DA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov9_0224E39C
	add r4, r0, #0
	mov r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _02250DE0
	mov r0, #0x30
	strh r0, [r4, #2]
	ldr r0, _02250DE4 ; =0x000005CC
	mov r1, #0
	bl sub_020057A4
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov9_0224B64C
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r0, [r4, r0]
	cmp r0, #4
	blt _02250DE0
	mov r0, #2
	pop {r3, r4, r5, pc}
_02250DE0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250DE4: .word 0x000005CC
	thumb_func_end ov9_02250DA0

	thumb_func_start ov9_02250DE8
ov9_02250DE8: ; 0x02250DE8
	push {r4, lr}
	mov r1, #4
	add r4, r2, #0
	bl ov9_0224E37C
	mov r1, #0x10
	strh r1, [r0, #2]
	mov r1, #3
	strh r1, [r0]
	mov r0, #1
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end ov9_02250DE8

	thumb_func_start ov9_02250E00
ov9_02250E00: ; 0x02250E00
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r2, #0
	bl ov9_0224E39C
	add r4, r0, #0
	mov r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bgt _02250E46
	mov r1, #0
	ldrsh r2, [r4, r1]
	cmp r2, #1
	blt _02250E40
	mov r0, #0x30
	strh r0, [r4, #2]
	ldr r0, _02250E4C ; =0x000005CC
	bl sub_020057A4
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r0, r6, #0
	bl ov9_0224B624
	mov r0, #0
	ldrsh r0, [r4, r0]
	sub r0, r0, #1
	strh r0, [r4]
	b _02250E46
_02250E40:
	mov r1, #8
	strh r1, [r4, #2]
	strh r0, [r5]
_02250E46:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02250E4C: .word 0x000005CC
	thumb_func_end ov9_02250E00

	thumb_func_start ov9_02250E50
ov9_02250E50: ; 0x02250E50
	push {r3, lr}
	bl ov9_0224E39C
	mov r2, #2
	ldrsh r1, [r0, r2]
	sub r1, r1, #1
	strh r1, [r0, #2]
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _02250E66
	mov r2, #0
_02250E66:
	add r0, r2, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov9_02250E50

	thumb_func_start ov9_02250E6C
ov9_02250E6C: ; 0x02250E6C
	push {r4, r5}
	mov r4, #2
	ldrsh r5, [r3, r4]
	cmp r1, r5
	blt _02250EAA
	mov r4, #8
	ldrsh r4, [r3, r4]
	add r4, r5, r4
	cmp r1, r4
	bgt _02250EAA
	mov r1, #4
	ldrsh r4, [r3, r1]
	cmp r2, r4
	blt _02250EAA
	mov r1, #0xa
	ldrsh r1, [r3, r1]
	add r1, r4, r1
	cmp r2, r1
	bgt _02250EAA
	mov r1, #0
	ldrsh r2, [r3, r1]
	cmp r0, r2
	blt _02250EAA
	mov r1, #6
	ldrsh r1, [r3, r1]
	add r1, r2, r1
	cmp r0, r1
	bgt _02250EAA
	mov r0, #1
	pop {r4, r5}
	bx lr
_02250EAA:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov9_02250E6C

	thumb_func_start ov9_02250EB0
ov9_02250EB0: ; 0x02250EB0
	push {r3, r4}
	lsl r2, r1, #0x10
	asr r3, r2, #0x10
	lsl r2, r0, #0x10
	asr r2, r2, #0x10
	sub r4, r3, r2
	add r3, r4, #0
	cmp r4, #0
	bge _02250EC4
	neg r3, r4
_02250EC4:
	mov r2, #2
	lsl r2, r2, #0xe
	cmp r3, r2
	ble _02250EE0
	add r2, r3, r2
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x11
	sub r3, r3, r4
	mov r2, #0x11
	ror r3, r2
	add r4, r4, r3
	cmp r0, r1
	bhs _02250EE0
	neg r4, r4
_02250EE0:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov9_02250EB0

	thumb_func_start ov9_02250EE8
ov9_02250EE8: ; 0x02250EE8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldrsh r2, [r4, r0]
	add r1, r2, r1
	strh r1, [r4]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _02250F10
	mov r0, #0
	mov r1, #0x5a
	lsl r1, r1, #2
	add r2, r0, #0
_02250F02:
	ldrsh r3, [r4, r0]
	add r3, r3, r1
	strh r3, [r4]
	ldrsh r3, [r4, r2]
	cmp r3, #0
	blt _02250F02
	pop {r4, pc}
_02250F10:
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	strh r1, [r4]
	pop {r4, pc}
	thumb_func_end ov9_02250EE8

	thumb_func_start ov9_02250F1C
ov9_02250F1C: ; 0x02250F1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r0, r0, r1
	str r0, [r4, #0]
	bpl _02250F36
	mov r0, #0x5a
	lsl r0, r0, #0xe
_02250F2C:
	ldr r1, [r4, #0]
	add r1, r1, r0
	str r1, [r4, #0]
	bmi _02250F2C
	pop {r4, pc}
_02250F36:
	mov r1, #0x5a
	lsl r1, r1, #0xe
	bl sub_020E1F6C
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_02250F1C

	thumb_func_start ov9_02250F44
ov9_02250F44: ; 0x02250F44
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	ldr r0, [r0, #0x3c]
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0205EB3C
	add r7, r0, #0
	bl sub_02063020
	str r0, [r5, #0]
	add r0, r7, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [r4, #0]
	add r0, r7, #0
	bl sub_02063040
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_02250F44

	thumb_func_start ov9_02250F74
ov9_02250F74: ; 0x02250F74
	push {r3, lr}
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #9
	bne _02250F8A
	mov r0, #1
	pop {r3, pc}
_02250F8A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov9_02250F74

	thumb_func_start ov9_02250F90
ov9_02250F90: ; 0x02250F90
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x24]
	bl ov9_0224C55C
	add r1, r0, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _02250FA8
	mov r0, #1
	pop {r3, pc}
_02250FA8:
	mov r1, #2
	lsl r1, r1, #0xe
	and r0, r1
	lsl r0, r0, #1
	lsr r0, r0, #0x10
	beq _02250FB8
	mov r0, #1
	pop {r3, pc}
_02250FB8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov9_02250F90

	thumb_func_start ov9_02250FBC
ov9_02250FBC: ; 0x02250FBC
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x24]
	bl ov9_0224C55C
	add r0, r0, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bls _02250FD4
	mov r0, #1
	pop {r3, pc}
_02250FD4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov9_02250FBC

	thumb_func_start ov9_02250FD8
ov9_02250FD8: ; 0x02250FD8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #4]
	add r5, r1, #0
	ldr r7, [r0, #0x24]
	add r4, r2, #0
	add r0, r7, #0
	add r6, r3, #0
	bl ov9_0224C494
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov9_0224C324
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_02250FD8

	thumb_func_start ov9_02251000
ov9_02251000: ; 0x02251000
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r5, r1, #0
	ldr r0, [r0, #0x24]
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #4]
	bl ov9_0224C494
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl ov9_0224C324
	cmp r0, #1
	bne _0225103C
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl ov9_0224C378
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0225103C:
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_02251000

	thumb_func_start ov9_02251044
ov9_02251044: ; 0x02251044
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r4, [sp, #0x18]
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #9
	beq _02251068
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02251068:
	ldr r0, [r5, #4]
	ldr r3, [sp]
	ldr r0, [r0, #0x24]
	add r1, r6, #0
	add r2, r7, #0
	bl ov9_0224C55C
	add r1, r0, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _0225108A
	bl sub_0205DF98
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225108A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov9_02251044

	thumb_func_start ov9_02251094
ov9_02251094: ; 0x02251094
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb5
	mov r1, #4
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02006C24
	add r1, sp, #8
	str r0, [sp, #4]
	bl ov9_0224BF8C
	add r0, sp, #8
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl ov9_0224C050
	add r0, sp, #8
	bl ov9_0224BFE0
	ldr r0, [sp, #4]
	bl sub_02006CA8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov9_02251094

	thumb_func_start ov9_022510D0
ov9_022510D0: ; 0x022510D0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov9_022510D0

	thumb_func_start ov9_022510D8
ov9_022510D8: ; 0x022510D8
	cmp r0, #3
	bhi _02251100
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022510E8: ; jump table
	.short _022510F0 - _022510E8 - 2 ; case 0
	.short _022510F4 - _022510E8 - 2 ; case 1
	.short _022510F8 - _022510E8 - 2 ; case 2
	.short _022510FC - _022510E8 - 2 ; case 3
_022510F0:
	mov r0, #2
	bx lr
_022510F4:
	mov r0, #3
	bx lr
_022510F8:
	mov r0, #4
	bx lr
_022510FC:
	mov r0, #5
	bx lr
_02251100:
	mov r0, #1
	bx lr
	thumb_func_end ov9_022510D8

	thumb_func_start ov9_02251104
ov9_02251104: ; 0x02251104
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	ldr r0, [r0, #0xc]
	add r4, r2, #0
	bl sub_020507E4
	cmp r6, #8
	bhi _0225119A
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02251124: ; jump table
	.short _02251136 - _02251124 - 2 ; case 0
	.short _0225113A - _02251124 - 2 ; case 1
	.short _0225114A - _02251124 - 2 ; case 2
	.short _0225115A - _02251124 - 2 ; case 3
	.short _02251166 - _02251124 - 2 ; case 4
	.short _02251172 - _02251124 - 2 ; case 5
	.short _0225119A - _02251124 - 2 ; case 6
	.short _0225117E - _02251124 - 2 ; case 7
	.short _0225118E - _02251124 - 2 ; case 8
_02251136:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225113A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_02249E00
	cmp r0, #1
	beq _0225119A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225114A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov9_02249E00
	cmp r0, #1
	bne _0225119A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225115A:
	bl sub_0206B5D8
	cmp r4, r0
	bne _0225119A
	mov r0, #1
	pop {r4, r5, r6, pc}
_02251166:
	bl sub_0206B5D8
	cmp r0, r4
	bhi _0225119A
	mov r0, #1
	pop {r4, r5, r6, pc}
_02251172:
	bl sub_0206B5D8
	cmp r0, r4
	blo _0225119A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225117E:
	mov r1, #2
	add r2, r4, #0
	bl sub_0206AFB0
	cmp r0, #0
	bne _0225119A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225118E:
	bl sub_0206B6DC
	cmp r4, r0
	bne _0225119A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225119A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov9_02251104

	thumb_func_start ov9_022511A0
ov9_022511A0: ; 0x022511A0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #4]
	add r5, r1, #0
	ldr r7, [r0, #0x24]
	add r4, r2, #0
	add r0, r7, #0
	add r6, r3, #0
	bl ov9_022510D0
	ldr r1, _022511DC ; =0x00000246
	cmp r0, r1
	bne _022511D8
	cmp r4, #0xf
	bne _022511D8
	cmp r5, #0xf
	bne _022511D8
	cmp r6, #1
	bne _022511D8
	ldr r0, [r7, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B5D8
	cmp r0, #0xe
	bne _022511D8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022511D8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022511DC: .word 0x00000246
	thumb_func_end ov9_022511A0

	thumb_func_start ov9_022511E0
ov9_022511E0: ; 0x022511E0
	push {r4, lr}
	add r4, r0, #0
	bl sub_020057D4
	cmp r0, #0
	bne _022511F2
	add r0, r4, #0
	bl sub_02005748
_022511F2:
	pop {r4, pc}
	thumb_func_end ov9_022511E0

	thumb_func_start ov9_022511F4
ov9_022511F4: ; 0x022511F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02063060
	add r0, r4, #0
	bl ov5_021EB1A0
	add r1, r0, #0
	beq _0225120C
	add r0, r4, #0
	bl ov5_021EDEB4
_0225120C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov9_022511F4
	; 0x02251210

	.incbin "data/overlay9.bin"
