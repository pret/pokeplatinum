	.include "macros/function.inc"
	.include "include/ov97_0222D04C.inc"

	

	.text


	thumb_func_start ov97_0222D04C
ov97_0222D04C: ; 0x0222D04C
	push {r4, lr}
	ldr r1, _0222D09C ; =0x0223F1A4
	add r4, r0, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0222D098
	bl ov97_0222D2F8
	mov r1, #0xf5
	mov r0, #0xf
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, _0222D09C ; =0x0223F1A4
	mov r2, #0xf5
	str r0, [r1, #0]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	ldr r0, _0222D09C ; =0x0223F1A4
	mov r1, #0x32
	ldr r0, [r0, #0]
	mov r2, #0xa
	strh r1, [r0, #0x24]
	ldr r0, _0222D0A0 ; =ov97_0222D19C
	mov r1, #0
	bl sub_0200D9E8
	ldr r1, _0222D09C ; =0x0223F1A4
	ldr r2, [r1, #0]
	str r0, [r2, #0x1c]
	ldr r0, [r1, #0]
	str r4, [r0, #0]
	ldr r0, [r1, #0]
	add r0, r0, #4
	bl sub_020361BC
_0222D098:
	pop {r4, pc}
	nop
_0222D09C: .word 0x0223F1A4
_0222D0A0: .word ov97_0222D19C
	thumb_func_end ov97_0222D04C

	thumb_func_start ov97_0222D0A4
ov97_0222D0A4: ; 0x0222D0A4
	ldr r2, _0222D0B0 ; =0x0223F1A4
	ldr r3, [r2, #0]
	str r0, [r3, #0x20]
	ldr r0, [r2, #0]
	strh r1, [r0, #0x24]
	bx lr
	; .align 2, 0
_0222D0B0: .word 0x0223F1A4
	thumb_func_end ov97_0222D0A4

	thumb_func_start ov97_0222D0B4
ov97_0222D0B4: ; 0x0222D0B4
	push {r4, lr}
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _0222D0E2
	mov r4, #0
	ldr r1, _0222D0E4 ; =0x0223F1A4
	ldr r0, _0222D0E8 ; =0x000003C1
	add r3, r4, #0
_0222D0CA:
	ldr r2, [r1, #0]
	add r2, r2, r4
	add r4, r4, #1
	strb r3, [r2, r0]
	cmp r4, #0x10
	blt _0222D0CA
	bl sub_02032AC0
	ldr r0, _0222D0EC ; =ov97_0222D0F0
	mov r1, #0
	bl ov97_0222D0A4
_0222D0E2:
	pop {r4, pc}
	; .align 2, 0
_0222D0E4: .word 0x0223F1A4
_0222D0E8: .word 0x000003C1
_0222D0EC: .word ov97_0222D0F0
	thumb_func_end ov97_0222D0B4

	thumb_func_start ov97_0222D0F0
ov97_0222D0F0: ; 0x0222D0F0
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _0222D124 ; =0x0223F1A4
	add r5, r4, #0
_0222D0F8:
	ldr r0, [r6, #0]
	add r0, r0, r5
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _0222D11A
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #1
	bne _0222D11A
	add r0, r4, #0
	bl sub_02032EE8
	ldr r1, [r6, #0]
	add r1, r1, r5
	str r0, [r1, #0x28]
_0222D11A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _0222D0F8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222D124: .word 0x0223F1A4
	thumb_func_end ov97_0222D0F0

	thumb_func_start ov97_0222D128
ov97_0222D128: ; 0x0222D128
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _0222D13A
	ldr r0, _0222D13C ; =ov97_0222D140
	mov r1, #0
	bl ov97_0222D0A4
_0222D13A:
	pop {r3, pc}
	; .align 2, 0
_0222D13C: .word ov97_0222D140
	thumb_func_end ov97_0222D128

	thumb_func_start ov97_0222D140
ov97_0222D140: ; 0x0222D140
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0222D140

	thumb_func_start ov97_0222D144
ov97_0222D144: ; 0x0222D144
	push {r3, lr}
	ldr r0, _0222D15C ; =0x0223F1A4
	ldr r0, [r0, #0]
	add r0, #0x27
	ldrb r0, [r0]
	bl sub_02036948
	ldr r0, _0222D160 ; =ov97_0222D164
	mov r1, #0
	bl ov97_0222D0A4
	pop {r3, pc}
	; .align 2, 0
_0222D15C: .word 0x0223F1A4
_0222D160: .word ov97_0222D164
	thumb_func_end ov97_0222D144

	thumb_func_start ov97_0222D164
ov97_0222D164: ; 0x0222D164
	push {r3, lr}
	bl sub_0203699C
	cmp r0, #0
	beq _0222D18C
	ldr r0, _0222D190 ; =0x0223F1A4
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xf
	lsl r0, r0, #6
	strb r2, [r1, r0]
	bl sub_02032AC0
	mov r0, #0xab
	bl sub_020364F0
	ldr r0, _0222D194 ; =ov97_0222D198
	mov r1, #0
	bl ov97_0222D0A4
_0222D18C:
	pop {r3, pc}
	nop
_0222D190: .word 0x0223F1A4
_0222D194: .word ov97_0222D198
	thumb_func_end ov97_0222D164

	thumb_func_start ov97_0222D198
ov97_0222D198: ; 0x0222D198
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0222D198

	thumb_func_start ov97_0222D19C
ov97_0222D19C: ; 0x0222D19C
	push {r3, lr}
	ldr r1, _0222D1C0 ; =0x0223F1A4
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0222D1AC
	bl sub_0200DA58
	pop {r3, pc}
_0222D1AC:
	ldr r1, [r2, #0x20]
	cmp r1, #0
	beq _0222D1BC
	add r2, #0x26
	ldrb r0, [r2]
	cmp r0, #0
	bne _0222D1BC
	blx r1
_0222D1BC:
	pop {r3, pc}
	nop
_0222D1C0: .word 0x0223F1A4
	thumb_func_end ov97_0222D19C

	thumb_func_start ov97_0222D1C4
ov97_0222D1C4: ; 0x0222D1C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035E38
	cmp r0, #0
	bne _0222D1EA
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02036BE8
	add r0, r5, #0
	bl ov97_0222D04C
	ldr r0, _0222D1EC ; =ov97_0222D0B4
	mov r1, #0
	bl ov97_0222D0A4
_0222D1EA:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222D1EC: .word ov97_0222D0B4
	thumb_func_end ov97_0222D1C4

	thumb_func_start ov97_0222D1F0
ov97_0222D1F0: ; 0x0222D1F0
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _0222D1FC ; =sub_02035A3C
	mov r0, #0x16
	bx r3
	; .align 2, 0
_0222D1FC: .word sub_02035A3C
	thumb_func_end ov97_0222D1F0

	thumb_func_start ov97_0222D200
ov97_0222D200: ; 0x0222D200
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035E38
	cmp r0, #0
	bne _0222D22C
	bl ov97_022301A4
	bl sub_02006840
	ldr r0, [r0, #8]
	add r1, r4, #0
	bl sub_02036C1C
	add r0, r5, #0
	bl ov97_0222D04C
	ldr r0, _0222D230 ; =ov97_0222D128
	mov r1, #0
	bl ov97_0222D0A4
_0222D22C:
	pop {r3, r4, r5, pc}
	nop
_0222D230: .word ov97_0222D128
	thumb_func_end ov97_0222D200

	thumb_func_start ov97_0222D234
ov97_0222D234: ; 0x0222D234
	ldr r1, _0222D244 ; =0x0223F1A4
	ldr r3, _0222D248 ; =ov97_0222D0A4
	ldr r1, [r1, #0]
	add r1, #0x27
	strb r0, [r1]
	ldr r0, _0222D24C ; =ov97_0222D144
	mov r1, #0
	bx r3
	; .align 2, 0
_0222D244: .word 0x0223F1A4
_0222D248: .word ov97_0222D0A4
_0222D24C: .word ov97_0222D144
	thumb_func_end ov97_0222D234

	thumb_func_start ov97_0222D250
ov97_0222D250: ; 0x0222D250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0222D256:
	add r0, r4, #0
	bl sub_02034168
	add r1, r0, #0
	beq _0222D276
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0222D276
	add r5, #0x8c
	add r0, r5, #0
	mov r2, #0x50
	bl sub_020D50B8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222D276:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0222D256
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_0222D250

	thumb_func_start ov97_0222D284
ov97_0222D284: ; 0x0222D284
	ldr r1, _0222D29C ; =0x0223F1A4
	ldr r2, [r1, #0]
	add r1, r2, #0
	add r1, #0x27
	ldrb r1, [r1]
	cmp r1, r0
	bne _0222D29A
	mov r0, #0xf
	mov r1, #1
	lsl r0, r0, #6
	strb r1, [r2, r0]
_0222D29A:
	bx lr
	; .align 2, 0
_0222D29C: .word 0x0223F1A4
	thumb_func_end ov97_0222D284

	thumb_func_start ov97_0222D2A0
ov97_0222D2A0: ; 0x0222D2A0
	ldr r0, _0222D2AC ; =0x0223F1A4
	ldr r1, [r0, #0]
	mov r0, #0xf
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_0222D2AC: .word 0x0223F1A4
	thumb_func_end ov97_0222D2A0

	thumb_func_start ov97_0222D2B0
ov97_0222D2B0: ; 0x0222D2B0
	mov r0, #0xd6
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0222D2B0

	thumb_func_start ov97_0222D2B8
ov97_0222D2B8: ; 0x0222D2B8
	ldr r0, _0222D2C0 ; =0x0223F1A4
	ldr r0, [r0, #0]
	add r0, #0x68
	bx lr
	; .align 2, 0
_0222D2C0: .word 0x0223F1A4
	thumb_func_end ov97_0222D2B8

	thumb_func_start ov97_0222D2C4
ov97_0222D2C4: ; 0x0222D2C4
	ldr r1, _0222D2D4 ; =0x0223F1A4
	mov r2, #1
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _0222D2D8 ; =0x000003C1
	strb r2, [r1, r0]
	bx lr
	nop
_0222D2D4: .word 0x0223F1A4
_0222D2D8: .word 0x000003C1
	thumb_func_end ov97_0222D2C4

	thumb_func_start ov97_0222D2DC
ov97_0222D2DC: ; 0x0222D2DC
	push {r3, lr}
	ldr r1, _0222D2F4 ; =0x0223F1A4
	mov r0, #0xf
	ldr r1, [r1, #0]
	bl sub_02018238
	ldr r0, _0222D2F4 ; =0x0223F1A4
	mov r1, #0
	str r1, [r0, #0]
	bl sub_02036978
	pop {r3, pc}
	; .align 2, 0
_0222D2F4: .word 0x0223F1A4
	thumb_func_end ov97_0222D2DC
	.bss


	.global Unk_ov97_0223F1A4
Unk_ov97_0223F1A4: ; 0x0223F1A4
	.space 0x4

