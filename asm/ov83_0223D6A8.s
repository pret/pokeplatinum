	.include "macros/function.inc"
	.include "include/ov83_0223D6A8.inc"

	

	.text


	thumb_func_start ov83_0223D6A8
ov83_0223D6A8: ; 0x0223D6A8
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r2, #0
	bl sub_02002D7C
	lsr r0, r0, #1
	sub r0, r4, r0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D6A8

	thumb_func_start ov83_0223D6BC
ov83_0223D6BC: ; 0x0223D6BC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r2, [sp]
	add r0, r3, #0
	mov r2, #0
	add r3, sp, #4
	bl sub_020071B4
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #8
	bl sub_02015128
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D6BC

	thumb_func_start ov83_0223D6EC
ov83_0223D6EC: ; 0x0223D6EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r0, #0
	add r0, r3, #0
	add r2, sp, #0
	add r3, r4, #0
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #4
	bl sub_020151A4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D6EC

	thumb_func_start ov83_0223D720
ov83_0223D720: ; 0x0223D720
	push {r4, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r0, sp, #0
	ldr r1, [sp, #0x28]
	strh r3, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r2, #0
	strh r2, [r0, #0x10]
	mov r1, #0x1f
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x2c]
	str r1, [sp, #0x18]
	strh r2, [r0, #0x1c]
	add r0, sp, #0
	bl sub_02015214
	mov r1, #0
	add r4, r0, #0
	bl sub_02015240
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov83_0223D720

	thumb_func_start ov83_0223D754
ov83_0223D754: ; 0x0223D754
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r6, r3, #0
	add r7, r2, #0
	add r1, r5, #4
	add r2, r6, #0
	bl sub_020095C4
	str r0, [r5, #0]
	mov r4, #0
_0223D76A:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223D76A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D754

	thumb_func_start ov83_0223D784
ov83_0223D784: ; 0x0223D784
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02021964
	mov r4, #0
	mov r6, #0x4b
	str r4, [r5, #0]
	lsl r6, r6, #2
_0223D796:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223D796
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D784

	thumb_func_start ov83_0223D7A8
ov83_0223D7A8: ; 0x0223D7A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, [sp, #0x58]
	add r5, r0, #0
	ldr r7, [sp, #0x5c]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r4, r1, #0
	str r3, [sp, #0x30]
	str r2, [sp, #0x2c]
	add r1, r2, #0
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x4c]
	mov r3, #0
	bl sub_02009AA8
	str r0, [r4, #0]
	str r6, [sp]
	mov r1, #1
	ldr r0, [sp, #0x48]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #0x13
	str r1, [sp, #0x10]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	mov r3, #0
	bl sub_02009B64
	str r0, [r4, #4]
	mov r3, #0
	str r3, [r4, #0x10]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4d
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x50]
	bl sub_02009BC4
	str r0, [r4, #8]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4e
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x54]
	mov r3, #0
	bl sub_02009BC4
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl sub_0200A450
	cmp r0, #0
	bne _0223D838
	bl sub_02022974
_0223D838:
	ldr r0, [r4, #0]
	bl sub_02009D4C
	ldr r0, [r4, #4]
	bl sub_0200A640
	cmp r0, #0
	bne _0223D84C
	bl sub_02022974
_0223D84C:
	ldr r0, [r4, #4]
	bl sub_02009D4C
	mov r0, #0
	mov r2, #0x4b
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r4, #0x14
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	add r2, r6, #0
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020093B4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D7A8

	thumb_func_start ov83_0223D894
ov83_0223D894: ; 0x0223D894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, [sp, #0x5c]
	add r5, r0, #0
	ldr r7, [sp, #0x60]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r4, r1, #0
	str r3, [sp, #0x30]
	str r2, [sp, #0x2c]
	add r1, r2, #0
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x50]
	mov r3, #0
	bl sub_02009AA8
	str r0, [r4, #0]
	ldr r0, [sp, #0x30]
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x30]
	bl sub_02009E08
	str r0, [sp, #0x34]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4d
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x54]
	mov r3, #0
	bl sub_02009BC4
	str r0, [r4, #8]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4e
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x58]
	mov r3, #0
	bl sub_02009BC4
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl sub_0200A450
	cmp r0, #0
	bne _0223D912
	bl sub_02022974
_0223D912:
	ldr r0, [r4, #0]
	bl sub_02009D4C
	mov r0, #0
	mov r2, #0x4b
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r4, #0x14
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	ldr r2, [sp, #0x34]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020093B4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D894

	thumb_func_start ov83_0223D95C
ov83_0223D95C: ; 0x0223D95C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	ldr r0, [r7, #0]
	bl sub_0200A4E4
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0223D974
	ldr r0, [r7, #4]
	bl sub_0200A6DC
_0223D974:
	mov r6, #0
	add r4, r7, #0
_0223D978:
	cmp r6, #1
	beq _0223D98A
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0]
	bl sub_02009D68
	b _0223D99C
_0223D98A:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0223D99C
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0]
	bl sub_02009D68
_0223D99C:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0223D978
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D95C

	thumb_func_start ov83_0223D9A8
ov83_0223D9A8: ; 0x0223D9A8
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0]
	add r1, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r2, [sp, #8]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x30]
	str r3, [sp, #0xc]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl sub_02021B90
	add r4, r0, #0
	bne _0223D9D6
	bl sub_02022974
_0223D9D6:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov83_0223D9A8

	thumb_func_start ov83_0223D9DC
ov83_0223D9DC: ; 0x0223D9DC
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov83_0223D9DC

	thumb_func_start ov83_0223D9EC
ov83_0223D9EC: ; 0x0223D9EC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _0223DA2C
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0223DA2C:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D9EC

	thumb_func_start ov83_0223DA34
ov83_0223DA34: ; 0x0223DA34
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r7, r2, #0
	add r0, r3, #0
	add r6, r1, #0
	lsl r2, r4, #0xc
	str r3, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	sub r0, r7, r6
	mov r7, #2
	mov r3, #0
	lsl r7, r7, #0xa
	add r2, r2, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r2, r0, r2
	asr r1, r2, #0x1f
	lsr r0, r2, #0x13
	lsl r1, r1, #0xd
	orr r1, r0
	lsl r0, r2, #0xd
	add r0, r0, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r4, #0
	mul r1, r4
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	str r6, [r5, #0]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DA34

	thumb_func_start ov83_0223DA94
ov83_0223DA94: ; 0x0223DA94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r6, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	add r2, r6, #0
	orr r4, r0
	ldr r0, [r5, #0xc]
	mul r2, r6
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #2
	bl sub_020BCFD0
	ldr r1, [r5, #4]
	add r0, r4, r0
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	cmp r0, r1
	bgt _0223DAF4
	str r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223DAF4:
	str r1, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DA94

	thumb_func_start ov83_0223DAFC
ov83_0223DAFC: ; 0x0223DAFC
	push {r4}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r2, sp, #0
	add r4, r0, #0
	str r1, [sp]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4}
	bx lr
	thumb_func_end ov83_0223DAFC

	thumb_func_start ov83_0223DB18
ov83_0223DB18: ; 0x0223DB18
	push {r3, r4, r5, lr}
	mov r2, #0x1f
	add r4, r1, #0
	mov r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0x42
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223DB18

	thumb_func_start ov83_0223DB30
ov83_0223DB30: ; 0x0223DB30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223DB3E
	bl sub_02022974
_0223DB3E:
	mov r2, #0x1f
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov83_0223DB30

	thumb_func_start ov83_0223DB4C
ov83_0223DB4C: ; 0x0223DB4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r6, [sp, #0x48]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r0, #0x35
	add r1, r6, #0
	add r7, r2, #0
	str r3, [sp, #0x20]
	bl sub_02006C24
	ldr r4, [sp, #0x18]
	str r0, [sp, #0x24]
	mov r0, #0
	ldr r5, [sp, #0x18]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r4, #0x28
_0223DB70:
	ldr r0, [sp, #0x1c]
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _0223DBEC
	mov r0, #1
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x8f
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xfa
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	add r1, r4, #0
	sub r3, #0x4f
	str r6, [sp, #0x14]
	bl ov83_0223D7A8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #0
	add r0, r7, #0
	add r1, r4, #0
	add r3, r2, #0
	str r6, [sp, #8]
	bl ov83_0223D9A8
	mov r1, #0
	str r0, [r5, #8]
	bl sub_02021CAC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r1, [sp, #0x20]
	str r6, [sp, #8]
	add r0, r7, #0
	add r3, r2, #0
	bl ov83_0223D9A8
	str r0, [r5, #0x18]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [sp, #0x28]
	add r4, #0x38
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x28]
_0223DBEC:
	mov r0, #0x42
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	beq _0223DC0A
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #4
	blt _0223DB70
_0223DC0A:
	ldr r0, [sp, #0x24]
	bl sub_02006CA8
	ldr r0, [sp, #0x18]
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DB4C

	thumb_func_start ov83_0223DC1C
ov83_0223DC1C: ; 0x0223DC1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	str r1, [sp]
	cmp r0, #1
	beq _0223DC2C
	bl sub_02022974
_0223DC2C:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	ble _0223DC62
	add r6, r7, #0
	add r5, r7, #0
	add r6, #0x28
_0223DC3E:
	ldr r0, [r5, #8]
	bl sub_02021BD4
	ldr r0, [r5, #0x18]
	bl sub_02021BD4
	ldr r0, [sp]
	add r1, r6, #0
	bl ov83_0223D95C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r4, r4, #1
	add r5, r5, #4
	add r6, #0x38
	cmp r4, r0
	blt _0223DC3E
_0223DC62:
	mov r0, #0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223DC1C

	thumb_func_start ov83_0223DC68
ov83_0223DC68: ; 0x0223DC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0223DC78
	bl sub_02022974
_0223DC78:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r2, #0x42
	ldr r0, [sp, #4]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	cmp r0, #0
	ble _0223DD18
	ldr r0, [sp, #4]
	add r1, r2, #4
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r2, #0x64
	ldr r4, _0223DD2C ; =0x02240460
	add r7, r0, r2
	add r6, r0, #0
	add r5, r0, #0
_0223DC9C:
	ldrb r0, [r4, #0x10]
	mov r1, #8
	mov r2, #0xa
	str r0, [sp]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [sp, #8]
	ldr r3, [r4, #0]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov83_0223DA34
	ldrb r0, [r4, #0x10]
	mov r1, #0xc
	mov r2, #0xe
	str r0, [sp]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #4]
	add r0, r7, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov83_0223DA34
	mov r1, #0x43
	mov r2, #0x5b
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	add r0, sp, #0x10
	mov r3, #0
	bl ov83_0223DAFC
	ldr r0, [r5, #8]
	add r1, sp, #0x10
	bl sub_02021C50
	mov r0, #0x73
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldrb r1, [r4, #0x11]
	add r0, #0x10
	add r4, #0x14
	str r1, [r5, r0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r7, #0x18
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, [sp, #0xc]
	add r6, #0x18
	add r5, r5, #4
	cmp r0, r1
	blt _0223DC9C
_0223DD18:
	mov r1, #0x7b
	ldr r0, [sp, #4]
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r1, #1
	str r1, [r0, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223DD2C: .word 0x02240460
	thumb_func_end ov83_0223DC68

	thumb_func_start ov83_0223DD30
ov83_0223DD30: ; 0x0223DD30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0223DD46
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223DD46:
	mov r0, #0x7b
	lsl r0, r0, #2
	add r1, r0, #0
	sub r1, #0xe4
	ldr r2, [r6, r0]
	ldr r1, [r6, r1]
	cmp r2, r1
	bge _0223DD96
	add r1, r0, #0
	sub r1, #0x10
	add r1, r6, r1
	lsl r3, r2, #2
	ldr r2, [r1, r3]
	sub r2, r2, #1
	str r2, [r1, r3]
	ldr r1, [r6, r0]
	lsl r1, r1, #2
	add r2, r6, r1
	add r1, r0, #0
	sub r1, #0x10
	ldr r1, [r2, r1]
	cmp r1, #0
	bgt _0223DD96
	add r3, r0, #0
	mov r1, #1
	sub r3, #0x20
	str r1, [r2, r3]
	ldr r0, [r6, r0]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #8]
	bl sub_02021CAC
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r2, [r6, r1]
	add r0, r2, #2
	str r0, [sp, #4]
	add r0, r2, #1
	str r0, [r6, r1]
_0223DD96:
	mov r1, #0x42
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	cmp r0, #0
	ble _0223DE7A
	add r0, r1, #4
	add r0, r6, r0
	add r1, #0x64
	add r4, r6, #0
	str r0, [sp]
	add r7, r6, r1
	add r5, r6, #0
_0223DDB2:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _0223DE58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223DDC8: ; jump table
	.short _0223DE5C - _0223DDC8 - 2 ; case 0
	.short _0223DDD0 - _0223DDC8 - 2 ; case 1
	.short _0223DE36 - _0223DDC8 - 2 ; case 2
	.short _0223DE5C - _0223DDC8 - 2 ; case 3
_0223DDD0:
	ldr r0, [sp]
	bl ov83_0223DA94
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov83_0223DA94
	mov r1, #0x43
	mov r2, #0x5b
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, sp, #0x10
	mov r3, #0
	bl ov83_0223DAFC
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl sub_02021C50
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0223DE5C
	ldr r0, [r4, #0x18]
	add r1, sp, #0x10
	bl sub_02021C50
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0223DE9C ; =0x000006BC
	bl sub_02005748
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223DE5C
_0223DE36:
	ldr r0, [r4, #0x18]
	bl sub_02021FD0
	cmp r0, #0
	bne _0223DE5C
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223DE5C
_0223DE58:
	bl sub_02022974
_0223DE5C:
	ldr r0, [sp]
	add r4, r4, #4
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #8]
	add r7, #0x18
	add r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #8]
	add r5, #0x18
	cmp r1, r0
	blt _0223DDB2
_0223DE7A:
	sub r0, r0, #1
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #3
	bne _0223DE94
	mov r0, #0
	str r0, [r6, #4]
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223DE94:
	ldr r0, [sp, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223DE9C: .word 0x000006BC
	thumb_func_end ov83_0223DD30

	thumb_func_start ov83_0223DEA0
ov83_0223DEA0: ; 0x0223DEA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x34
	add r7, r3, #0
	bl sub_020D5124
	str r6, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r4, [r5, #0x14]
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x1c]
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DEA0

	thumb_func_start ov83_0223DEC4
ov83_0223DEC4: ; 0x0223DEC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0223DED2
	bl sub_02022974
_0223DED2:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x34
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DEC4

	thumb_func_start ov83_0223DEE0
ov83_0223DEE0: ; 0x0223DEE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0223DEF4
	bl sub_02022974
_0223DEF4:
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #4]
	bl ov83_0223E09C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov83_0223E15C
	mov r0, #1
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DEE0

	thumb_func_start ov83_0223DF10
ov83_0223DF10: ; 0x0223DF10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #1
	beq _0223DF1E
	bl sub_02022974
_0223DF1E:
	add r0, r4, #0
	bl ov83_0223E138
	add r0, r4, #0
	bl ov83_0223E208
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end ov83_0223DF10

	thumb_func_start ov83_0223DF30
ov83_0223DF30: ; 0x0223DF30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r2, r1, #0
	ldr r0, [r0, #4]
	mov r1, #0
	bl sub_0200B70C
	ldr r2, [r4, #0x18]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x10]
	bl sub_0200C388
	ldr r0, [r4, #8]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r1, [r4, #0x18]
	mov r2, #0
	ldr r0, [r4, #8]
	ldr r1, [r1, #8]
	add r3, r2, #0
	bl ov83_0223E21C
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #1
	add r3, r1, #0
	bl sub_0200E060
	pop {r4, pc}
	thumb_func_end ov83_0223DF30

	thumb_func_start ov83_0223DF70
ov83_0223DF70: ; 0x0223DF70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0201ACF4
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019EBC
	pop {r4, pc}
	thumb_func_end ov83_0223DF70

	thumb_func_start ov83_0223DF84
ov83_0223DF84: ; 0x0223DF84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r1, [r4, #0x18]
	mov r2, #0
	ldr r0, [r4, #8]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl ov83_0223E21C
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #1
	add r3, r1, #0
	bl sub_0200E060
	pop {r4, pc}
	thumb_func_end ov83_0223DF84

	thumb_func_start ov83_0223DFAC
ov83_0223DFAC: ; 0x0223DFAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #1
	beq _0223E098
	mov r4, #0
	cmp r0, #0
	ble _0223E08A
_0223DFBE:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r1, r2, r1
	add r2, r4, r2
	asr r2, r2, #1
	mov r0, #0xc
	add r6, r1, #0
	mul r6, r0
	lsl r0, r2, #2
	add r2, r2, r0
	str r2, [sp, #0x1c]
	mov r2, #0xa
	str r2, [sp]
	mov r2, #4
	str r2, [sp, #4]
	ldr r2, [r5, #0x2c]
	lsl r0, r0, #0x18
	add r2, #0xc
	str r2, [sp, #8]
	mov r2, #0xa
	mul r2, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	lsr r0, r0, #0x18
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #8
	add r2, r6, #5
	add r3, #0xd
	str r0, [sp, #0x18]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #4]
	mov r1, #5
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	mov r0, #0xa
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	add r2, r6, #5
	add r3, #0xd
	str r0, [sp, #8]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #4]
	mov r1, #5
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	ldr r7, [r5, #0x1c]
	mov r2, #0x13
	ldr r0, [r5, #0x18]
	add r3, r7, r4
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #2
	add r3, r7, r2
	mov r2, #0x4d
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	bl sub_0200B498
	ldr r2, [r5, #0x18]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x14]
	bl sub_0200C388
	ldr r1, [r5, #0x18]
	lsl r0, r6, #3
	ldr r1, [r1, #8]
	add r0, #0x20
	mov r2, #1
	bl ov83_0223D6A8
	ldr r1, [r5, #0x18]
	ldr r3, [sp, #0x1c]
	add r2, r0, #0
	lsl r3, r3, #3
	ldr r0, [r5, #0xc]
	ldr r1, [r1, #8]
	add r3, #8
	bl ov83_0223E21C
	ldr r0, [r5, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0223DFBE
_0223E08A:
	ldr r0, [r5, #0xc]
	bl sub_0201A9A4
	ldr r0, [r5, #4]
	mov r1, #5
	bl sub_0201C3C0
_0223E098:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223DFAC

	thumb_func_start ov83_0223E09C
ov83_0223E09C: ; 0x0223E09C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r5, #0xc]
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	mov r2, #4
	mov r3, #6
	bl sub_0201A7E8
	ldr r0, [r5, #8]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x10]
	mov r1, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #4]
	mov r2, #1
	mov r3, #0
	bl sub_0200DD0C
	mov r0, #4
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02002E98
	mov r1, #1
	ldr r0, [r5, #8]
	add r2, r1, #0
	mov r3, #0
	bl sub_0200E060
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E09C

	thumb_func_start ov83_0223E138
ov83_0223E138: ; 0x0223E138
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0201A8FC
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0201A928
	ldr r0, [r4, #0xc]
	bl sub_0201A8FC
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0201A928
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E138

	thumb_func_start ov83_0223E15C
ov83_0223E15C: ; 0x0223E15C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	mov r3, #0x40
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp]
	add r0, r6, #0
	mov r1, #1
	mov r2, #4
	str r4, [sp, #4]
	bl sub_02007130
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r6, #0
	mov r3, #5
	bl sub_020070E8
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0223E194
	mov r1, #2
	b _0223E196
_0223E194:
	mov r1, #3
_0223E196:
	add r3, r5, #0
	str r4, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x24
	bl sub_020071D0
	str r0, [r5, #0x20]
	ldr r2, [r5, #0x24]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_020198C0
	ldr r1, [r5, #0x24]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02019E2C
	add r3, r5, #0
	str r4, [sp]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0
	add r3, #0x2c
	bl sub_020071D0
	str r0, [r5, #0x28]
	ldr r0, [r5, #4]
	mov r1, #5
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E15C

	thumb_func_start ov83_0223E208
ov83_0223E208: ; 0x0223E208
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_020181C4
	ldr r0, [r4, #0x28]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E208

	thumb_func_start ov83_0223E21C
ov83_0223E21C: ; 0x0223E21C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	mov r2, #0
	ldr r1, _0223E240 ; =0x0001020F
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #1
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223E240: .word 0x0001020F
	thumb_func_end ov83_0223E21C

	thumb_func_start ov83_0223E244
ov83_0223E244: ; 0x0223E244
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
	thumb_func_end ov83_0223E244

	thumb_func_start ov83_0223E260
ov83_0223E260: ; 0x0223E260
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223E26E
	bl sub_02022974
_0223E26E:
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
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E260

	thumb_func_start ov83_0223E28C
ov83_0223E28C: ; 0x0223E28C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r1, #0
	ldr r3, [sp, #0x18]
	mov r1, #0x38
	mul r1, r3
	add r1, r2, r1
	mov r2, #2
	mov r3, #6
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov83_0223D9A8
	str r0, [r4, #8]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	bl sub_02021D6C
	mov r0, #1
	str r0, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov83_0223E28C

	thumb_func_start ov83_0223E2C8
ov83_0223E2C8: ; 0x0223E2C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _0223E2D6
	bl sub_02022974
_0223E2D6:
	ldr r0, [r4, #8]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E2C8

	thumb_func_start ov83_0223E2E4
ov83_0223E2E4: ; 0x0223E2E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CC8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E2E4

	thumb_func_start ov83_0223E2FC
ov83_0223E2FC: ; 0x0223E2FC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x2a
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #0xf
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E2FC

	thumb_func_start ov83_0223E32C
ov83_0223E32C: ; 0x0223E32C
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_02021FD0
	cmp r0, #0
	bne _0223E33C
	mov r0, #1
	pop {r3, pc}
_0223E33C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov83_0223E32C

	thumb_func_start ov83_0223E340
ov83_0223E340: ; 0x0223E340
	ldr r3, _0223E348 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x78
	bx r3
	; .align 2, 0
_0223E348: .word sub_020D5124
	thumb_func_end ov83_0223E340

	thumb_func_start ov83_0223E34C
ov83_0223E34C: ; 0x0223E34C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0223E35A
	bl sub_02022974
_0223E35A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x78
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E34C

	thumb_func_start ov83_0223E368
ov83_0223E368: ; 0x0223E368
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	ldr r0, [r0, #0x74]
	add r7, r2, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0223E37E
	bl sub_02022974
_0223E37E:
	ldr r4, _0223E420 ; =0x02240418
	ldr r5, [sp, #8]
	mov r6, #0
_0223E384:
	ldrb r1, [r4]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r2, r7, #0
	bl ov83_0223D6BC
	add r6, r6, #1
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r6, #6
	blt _0223E384
	ldr r4, _0223E424 ; =0x02240438
	ldr r5, [sp, #8]
	mov r6, #0
_0223E3A0:
	ldrb r1, [r4]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r2, r7, #0
	bl ov83_0223D6EC
	str r0, [r5, #0x18]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #8
	blt _0223E3A0
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0223E428 ; =0x02240428
	ldr r6, _0223E42C ; =0x02240430
	ldr r4, _0223E430 ; =0x02240440
	ldr r5, [sp, #8]
	ldr r7, _0223E434 ; =0x02240420
	str r0, [sp, #0x18]
_0223E3C8:
	ldrb r0, [r6]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrb r1, [r7]
	ldrb r3, [r4]
	ldr r0, [sp, #0xc]
	lsl r2, r1, #2
	ldr r1, [sp, #8]
	ldr r1, [r1, r2]
	ldr r2, [r5, #0x18]
	bl ov83_0223D720
	str r0, [r5, #0x38]
	ldrb r2, [r4]
	mov r1, #0x80
	ldrb r3, [r6]
	sub r1, r1, r2
	mov r2, #0x60
	sub r2, r2, r3
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02015268
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r0, r0, #1
	add r5, r5, #4
	add r7, r7, #1
	str r0, [sp, #0x14]
	cmp r0, #8
	blt _0223E3C8
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #0x74]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E420: .word 0x02240418
_0223E424: .word 0x02240438
_0223E428: .word 0x02240428
_0223E42C: .word 0x02240430
_0223E430: .word 0x02240440
_0223E434: .word 0x02240420
	thumb_func_end ov83_0223E368

	thumb_func_start ov83_0223E438
ov83_0223E438: ; 0x0223E438
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x74]
	cmp r0, #1
	beq _0223E446
	bl sub_02022974
_0223E446:
	mov r4, #0
	add r5, r6, #0
_0223E44A:
	ldr r0, [r5, #0x38]
	bl sub_02015238
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0223E44A
	mov r5, #0
	add r4, r6, #0
_0223E45C:
	ldr r0, [r4, #0]
	bl sub_02015164
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _0223E45C
	mov r5, #0
	add r4, r6, #0
_0223E46E:
	ldr r0, [r4, #0x18]
	bl sub_020151D4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _0223E46E
	mov r0, #0
	str r0, [r6, #0x74]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E438

	thumb_func_start ov83_0223E484
ov83_0223E484: ; 0x0223E484
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	blo _0223E494
	bl sub_02022974
_0223E494:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	add r1, r6, #0
	bl sub_02015240
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E484

	thumb_func_start ov83_0223E4A4
ov83_0223E4A4: ; 0x0223E4A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #5
	add r5, #0x14
_0223E4AE:
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	bl sub_020152BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	ble _0223E4AE
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223E4A4

	thumb_func_start ov83_0223E4C0
ov83_0223E4C0: ; 0x0223E4C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #5
	add r5, #0x14
_0223E4CA:
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02015270
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	ble _0223E4CA
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E4C0

	thumb_func_start ov83_0223E4E0
ov83_0223E4E0: ; 0x0223E4E0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	blo _0223E4F0
	bl sub_02022974
_0223E4F0:
	lsl r0, r4, #2
	add r0, r5, r0
	lsl r1, r6, #0x18
	ldr r0, [r0, #0x38]
	lsr r1, r1, #0x18
	bl sub_02015294
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223E4E0

	thumb_func_start ov83_0223E500
ov83_0223E500: ; 0x0223E500
	push {r3, lr}
	mov r2, #1
	str r2, [r0, #0x6c]
	mov r1, #0
	str r1, [r0, #0x70]
	lsl r1, r2, #0xc
	ldr r2, _0223E518 ; =0x00000FAE
	add r0, #0x58
	mov r3, #4
	bl ov83_0223D9DC
	pop {r3, pc}
	; .align 2, 0
_0223E518: .word 0x00000FAE
	thumb_func_end ov83_0223E500

	thumb_func_start ov83_0223E51C
ov83_0223E51C: ; 0x0223E51C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	add r3, r1, #0
	cmp r0, #0
	beq _0223E52E
	cmp r0, #1
	beq _0223E568
	b _0223E592
_0223E52E:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _0223E54C
	ldr r1, _0223E598 ; =0x02240448
	lsl r4, r3, #2
	ldr r2, _0223E59C ; =0x02240454
	ldr r1, [r1, r4]
	ldr r2, [r2, r4]
	ldr r4, _0223E5A0 ; =0x02240414
	add r0, r5, #0
	ldrb r3, [r4, r3]
	add r0, #0x58
	bl ov83_0223D9DC
	b _0223E562
_0223E54C:
	ldr r1, _0223E59C ; =0x02240454
	lsl r4, r3, #2
	ldr r2, _0223E598 ; =0x02240448
	ldr r1, [r1, r4]
	ldr r2, [r2, r4]
	ldr r4, _0223E5A0 ; =0x02240414
	add r0, r5, #0
	ldrb r3, [r4, r3]
	add r0, #0x58
	bl ov83_0223D9DC
_0223E562:
	ldr r0, [r5, #0x6c]
	add r0, r0, #1
	str r0, [r5, #0x6c]
_0223E568:
	add r0, r5, #0
	add r0, #0x58
	bl ov83_0223D9EC
	add r7, r0, #0
	mov r6, #0
	add r4, r5, #0
_0223E576:
	ldr r1, [r5, #0x58]
	ldr r0, [r4, #0x38]
	add r2, r1, #0
	bl sub_02015270
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	ble _0223E576
	cmp r7, #1
	bne _0223E596
	mov r0, #0
	str r0, [r5, #0x6c]
	pop {r3, r4, r5, r6, r7, pc}
_0223E592:
	bl sub_02022974
_0223E596:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E598: .word 0x02240448
_0223E59C: .word 0x02240454
_0223E5A0: .word 0x02240414
	thumb_func_end ov83_0223E51C

	thumb_func_start ov83_0223E5A4
ov83_0223E5A4: ; 0x0223E5A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	add r7, r3, #0
	bl sub_020D5124
	str r4, [r5, #0x14]
	str r6, [r5, #0x18]
	str r7, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E5A4

	thumb_func_start ov83_0223E5C0
ov83_0223E5C0: ; 0x0223E5C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223E5CE
	bl sub_02022974
_0223E5CE:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E5C0

	thumb_func_start ov83_0223E5DC
ov83_0223E5DC: ; 0x0223E5DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x14]
	mov r0, #6
	add r6, r2, #0
	lsl r0, r0, #0x10
	ldr r5, [sp, #0xc]
	str r1, [sp, #0x10]
	add r7, r3, #0
	str r0, [sp, #0x18]
	mov r4, #0
	add r6, #0x38
_0223E5FA:
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	add r1, r6, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov83_0223D9A8
	str r0, [r5, #4]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #4]
	add r1, r4, #4
	bl sub_02021D6C
	ldr r0, [r5, #4]
	add r1, sp, #0x14
	bl sub_02021C50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223E5FA
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E5DC

	thumb_func_start ov83_0223E63C
ov83_0223E63C: ; 0x0223E63C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0223E644:
	ldr r0, [r5, #4]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223E644
	mov r0, #0
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223E63C

	thumb_func_start ov83_0223E658
ov83_0223E658: ; 0x0223E658
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r7, [r6, #0x14]
	ldr r0, [r6, #0x18]
	add r7, #0x98
	mov r4, #0
	cmp r0, #0
	bls _0223E696
	add r5, r6, #0
_0223E66C:
	ldr r0, [r6, #0x14]
	add r1, r0, r4
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	add r0, r7, r1
	ldrb r1, [r7, r1]
	lsl r1, r1, #0xc
	str r1, [sp]
	ldrb r0, [r0, #4]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_02021C50
	ldr r0, [r6, #0x18]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _0223E66C
_0223E696:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E658

	thumb_func_start ov83_0223E69C
ov83_0223E69C: ; 0x0223E69C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	mov r6, #0
	str r1, [sp]
	cmp r0, #0
	bls _0223E6D2
	add r7, r5, #0
_0223E6AC:
	ldr r0, [r5, #0x14]
	add r1, r0, r6
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r4, [r1, r0]
	ldr r0, [r5, #0x1c]
	bl ov83_0223D570
	cmp r4, r0
	beq _0223E6C8
	ldr r0, [r7, #4]
	ldr r1, [sp]
	bl sub_02021CAC
_0223E6C8:
	ldr r0, [r5, #0x18]
	add r6, r6, #1
	add r7, r7, #4
	cmp r6, r0
	blo _0223E6AC
_0223E6D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223E69C

	thumb_func_start ov83_0223E6D4
ov83_0223E6D4: ; 0x0223E6D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x38
	add r7, r3, #0
	bl sub_020D5124
	str r6, [r5, #0x1c]
	ldr r0, [sp, #0x1c]
	str r4, [r5, #0x20]
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x24]
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E6D4

	thumb_func_start ov83_0223E6F8
ov83_0223E6F8: ; 0x0223E6F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0223E706
	bl sub_02022974
_0223E706:
	add r0, r4, #0
	bl ov83_0223E994
	add r0, r4, #0
	bl ov83_0223E9D0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E6F8

	thumb_func_start ov83_0223E720
ov83_0223E720: ; 0x0223E720
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0223E734
	bl sub_02022974
_0223E734:
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #4]
	bl ov83_0223E77C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov83_0223E844
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	str r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E720

	thumb_func_start ov83_0223E760
ov83_0223E760: ; 0x0223E760
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	beq _0223E76E
	bl sub_02022974
_0223E76E:
	add r0, r4, #0
	bl ov83_0223E824
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E760

	thumb_func_start ov83_0223E77C
ov83_0223E77C: ; 0x0223E77C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldr r0, [r7, #0x18]
	str r1, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r1, #0
	str r0, [sp, #4]
	ldr r0, [r7, #4]
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl sub_0200DD0C
	ldr r2, [sp, #0x14]
	mov r0, #0
	mov r1, #0x40
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #2
	str r0, [sp, #4]
	ldr r0, [r7, #4]
	mov r2, #0x1f
	mov r3, #1
	bl sub_0200DAA4
	ldr r2, [sp, #0x14]
	mov r0, #0
	mov r1, #0x60
	bl sub_02002E7C
	ldr r5, _0223E820 ; =0x022405C0
	mov r6, #0
	add r4, r7, #0
_0223E7CA:
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #8]
	ldrh r0, [r5, #2]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldrh r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xa]
	str r0, [sp, #0x10]
	ldrh r3, [r5]
	ldr r0, [r7, #4]
	ldr r1, [r4, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0201ADA4
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0xc
	cmp r6, #4
	blt _0223E7CA
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E820: .word 0x022405C0
	thumb_func_end ov83_0223E77C

	thumb_func_start ov83_0223E824
ov83_0223E824: ; 0x0223E824
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #1
_0223E82C:
	ldr r0, [r5, #8]
	bl sub_0201A8FC
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_0201A928
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223E82C
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223E824

	thumb_func_start ov83_0223E844
ov83_0223E844: ; 0x0223E844
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r2, #0
	mov r0, #0x20
	add r4, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	mov r3, #0x80
	str r4, [sp, #4]
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r6, #0
	mov r1, #5
	mov r3, #1
	bl sub_020070E8
	str r4, [sp]
	add r0, r6, #0
	mov r1, #7
	mov r2, #0
	add r3, sp, #0x10
	bl sub_020071D0
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	ldrh r0, [r2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_020198C0
	ldr r1, [sp, #0x10]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02019E2C
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E844

	thumb_func_start ov83_0223E8DC
ov83_0223E8DC: ; 0x0223E8DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
	cmp r0, #0x1e
	blt _0223E906
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x2c]
_0223E906:
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223E8DC

	thumb_func_start ov83_0223E908
ov83_0223E908: ; 0x0223E908
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	add r5, r1, #0
	cmp r0, #0
	beq _0223E91A
	bl sub_02022974
_0223E91A:
	mov r2, #1
	ldr r0, _0223E97C ; =ov83_0223E8DC
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200D9E8
	str r0, [r4, #0x2c]
	mov r1, #0
	str r1, [r4, #0x30]
	ldr r0, [r4, #8]
	bl sub_0201ADA4
	ldr r1, [r4, #0x1c]
	lsl r5, r5, #2
	add r1, r1, r5
	ldr r1, [r1, #0x38]
	mov r0, #1
	mov r2, #0
	mov r3, #0x80
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _0223E980 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #8]
	add r2, r2, r5
	ldr r2, [r2, #0x38]
	mov r1, #1
	bl sub_0201D78C
	ldr r0, [r4, #8]
	bl sub_0201A954
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223E97C: .word ov83_0223E8DC
_0223E980: .word 0x0001020F
	thumb_func_end ov83_0223E908

	thumb_func_start ov83_0223E984
ov83_0223E984: ; 0x0223E984
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _0223E98E
	mov r0, #1
	bx lr
_0223E98E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223E984

	thumb_func_start ov83_0223E994
ov83_0223E994: ; 0x0223E994
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0223E9B8
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x2c]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x2c]
_0223E9B8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E994

	thumb_func_start ov83_0223E9BC
ov83_0223E9BC: ; 0x0223E9BC
	push {r4, lr}
	add r4, r0, #0
	bl ov83_0223E9D0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200E7FC
	str r0, [r4, #0x34]
	pop {r4, pc}
	thumb_func_end ov83_0223E9BC

	thumb_func_start ov83_0223E9D0
ov83_0223E9D0: ; 0x0223E9D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0223E9E2
	bl sub_0200EBA0
	mov r0, #0
	str r0, [r4, #0x34]
_0223E9E2:
	pop {r4, pc}
	thumb_func_end ov83_0223E9D0

	thumb_func_start ov83_0223E9E4
ov83_0223E9E4: ; 0x0223E9E4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0xc]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r1, [r4, #0x1c]
	mov r0, #0
	ldr r1, [r1, #0x34]
	add r2, r0, #0
	mov r3, #0xe0
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _0223EA68 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x34]
	bl sub_0201D78C
	ldr r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #1
	bl sub_0200DC48
	ldr r0, [r4, #0x10]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223EA68 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r2, [r2, #0x64]
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #1
	bl sub_0200DC48
	ldr r0, [r4, #0xc]
	bl sub_0201A9A4
	ldr r0, [r4, #0x10]
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223EA68: .word 0x0001020F
	thumb_func_end ov83_0223E9E4

	thumb_func_start ov83_0223EA6C
ov83_0223EA6C: ; 0x0223EA6C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x4c]
	add r3, r1, #0
	bl sub_0201D78C
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x66
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	mov r1, #0
	bl sub_0200B60C
	mov r3, #2
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x67
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	bl sub_0200B60C
	mov r1, #2
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x68
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x50]
	bl sub_0200C388
	mov r0, #0x18
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0xa0
	bl sub_0201D78C
	mov r0, #0x30
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x54]
	add r3, r1, #0
	bl sub_0201D78C
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #4]
	ldr r2, [r2, #0x58]
	mov r3, #4
	bl sub_0200B60C
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x58]
	cmp r0, #1
	bne _0223EB34
	mov r2, #3
	b _0223EB36
_0223EB34:
	mov r2, #5
_0223EB36:
	ldr r3, [r4, #0x1c]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r2, #0x4c]
	bl sub_0200C388
	mov r0, #0x30
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0xa0
	bl sub_0201D78C
	mov r0, #0x44
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x5c]
	add r3, r1, #0
	bl sub_0201D78C
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #4]
	ldr r2, [r2, #0x5c]
	mov r3, #4
	bl sub_0200B60C
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	bne _0223EB9C
	mov r2, #3
	b _0223EB9E
_0223EB9C:
	mov r2, #5
_0223EB9E:
	ldr r3, [r4, #0x1c]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r2, #0x4c]
	bl sub_0200C388
	mov r0, #0x44
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0xa0
	bl sub_0201D78C
	ldr r0, [r4, #0xc]
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	nop
_0223EBD4: .word 0x0001020F
	thumb_func_end ov83_0223EA6C

	thumb_func_start ov83_0223EBD8
ov83_0223EBD8: ; 0x0223EBD8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x64
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	mov r1, #3
	bl sub_0200BF74
	mov r3, #2
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x65
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	bl sub_0200B60C
	mov r1, #2
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	ldr r0, [r0, #4]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x68]
	bl sub_0200C388
	mov r0, #0x18
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EC48 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r2, [r2, #8]
	mov r3, #0x10
	bl sub_0201D78C
	ldr r0, [r4, #0x10]
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223EC48: .word 0x0001020F
	thumb_func_end ov83_0223EBD8

	thumb_func_start ov83_0223EC4C
ov83_0223EC4C: ; 0x0223EC4C
	push {r3, lr}
	cmp r1, #0
	beq _0223EC5C
	cmp r1, #1
	beq _0223EC62
	cmp r1, #2
	beq _0223EC68
	pop {r3, pc}
_0223EC5C:
	bl ov83_0223E9E4
	pop {r3, pc}
_0223EC62:
	bl ov83_0223EA6C
	pop {r3, pc}
_0223EC68:
	bl ov83_0223EBD8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov83_0223EC4C

	thumb_func_start ov83_0223EC70
ov83_0223EC70: ; 0x0223EC70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0xc]
	bl sub_0201ACF4
	ldr r0, [r4, #0x10]
	bl sub_0201ACF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223EC70

	thumb_func_start ov83_0223EC8C
ov83_0223EC8C: ; 0x0223EC8C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r1, #0
	bl ov83_0223E9D0
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl sub_0201ADA4
	cmp r6, #6
	bhi _0223ED0C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223ECB0: ; jump table
	.short _0223ECBE - _0223ECB0 - 2 ; case 0
	.short _0223ECEA - _0223ECB0 - 2 ; case 1
	.short _0223ECF0 - _0223ECB0 - 2 ; case 2
	.short _0223ECF6 - _0223ECB0 - 2 ; case 3
	.short _0223ECFC - _0223ECB0 - 2 ; case 4
	.short _0223ED02 - _0223ECB0 - 2 ; case 5
	.short _0223ED08 - _0223ECB0 - 2 ; case 6
_0223ECBE:
	mov r3, #0x51
	ldr r2, [r4, #0x24]
	lsl r3, r3, #2
	ldrb r5, [r2, r3]
	ldr r0, [r4, #0x1c]
	sub r3, #0x10
	lsl r5, r5, #2
	add r2, r2, r5
	ldr r0, [r0, #4]
	ldr r2, [r2, r3]
	mov r1, #0
	bl sub_0200B498
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x18]
	bl sub_0200C388
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #8]
	b _0223ED0C
_0223ECEA:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x1c]
	b _0223ED0C
_0223ECF0:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x28]
	b _0223ED0C
_0223ECF6:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x24]
	b _0223ED0C
_0223ECFC:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x20]
	b _0223ED0C
_0223ED02:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x2c]
	b _0223ED0C
_0223ED08:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0xc]
_0223ED0C:
	mov r3, #0
	str r3, [sp]
	ldr r0, _0223ED38 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x14]
	mov r1, #1
	add r2, r5, #0
	bl sub_0201D78C
	mov r1, #0
	ldr r0, [r4, #0x14]
	mov r2, #1
	add r3, r1, #0
	bl sub_0200E060
	ldr r0, [r4, #0x14]
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223ED38: .word 0x0001020F
	thumb_func_end ov83_0223EC8C

	thumb_func_start ov83_0223ED3C
ov83_0223ED3C: ; 0x0223ED3C
	ldr r3, _0223ED44 ; =sub_020D5124
	mov r1, #0
	ldr r2, _0223ED48 ; =0x00000414
	bx r3
	; .align 2, 0
_0223ED44: .word sub_020D5124
_0223ED48: .word 0x00000414
	thumb_func_end ov83_0223ED3C

	thumb_func_start ov83_0223ED4C
ov83_0223ED4C: ; 0x0223ED4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223ED5A
	bl sub_02022974
_0223ED5A:
	ldr r2, _0223ED68 ; =0x00000414
	add r0, r4, #0
	mov r1, #0
	bl sub_020D5124
	pop {r4, pc}
	nop
_0223ED68: .word 0x00000414
	thumb_func_end ov83_0223ED4C

	thumb_func_start ov83_0223ED6C
ov83_0223ED6C: ; 0x0223ED6C
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	mov r1, #1
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov83_0223ED6C

	thumb_func_start ov83_0223ED78
ov83_0223ED78: ; 0x0223ED78
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x10
_0223ED84:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223ED94
	add r0, r5, #0
	bl ov83_0223F054
_0223ED94:
	add r6, r6, #1
	add r4, #0x80
	add r5, #0x80
	cmp r6, #8
	blt _0223ED84
	mov r0, #0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223ED78

	thumb_func_start ov83_0223EDA4
ov83_0223EDA4: ; 0x0223EDA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r7, r1, #0
	mov r6, #0
	add r4, #0x10
_0223EDB0:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223EDCE
	add r0, r4, #0
	bl ov83_0223F074
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0223EDCE
	add r0, r4, #0
	add r1, r7, #0
	bl ov83_0223F0F4
_0223EDCE:
	add r6, r6, #1
	add r5, #0x80
	add r4, #0x80
	cmp r6, #8
	blt _0223EDB0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223EDA4

	thumb_func_start ov83_0223EDDC
ov83_0223EDDC: ; 0x0223EDDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	add r5, r0, #0
	lsl r0, r1, #1
	add r0, r1, r0
	add r2, r2, r0
	mov r0, #0x1c
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0223EFC0 ; =0x022404B0
	add r3, sp, #0x9c
	add r4, r0, r1
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	cmp r2, #8
	str r0, [r3, #0]
	blt _0223EE0A
	b _0223EFBC
_0223EE0A:
	add r0, r5, #0
	bl ov83_0223EFF4
	str r0, [sp, #0x60]
	cmp r0, #0
	bne _0223EE2C
	add r0, r5, #0
	bl ov83_0223F018
	str r0, [sp, #0x60]
	cmp r0, #0
	bne _0223EE26
	bl sub_02022974
_0223EE26:
	ldr r0, [sp, #0x60]
	bl ov83_0223F054
_0223EE2C:
	bl sub_0201D35C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	bl sub_0201D35C
	add r1, sp, #0x9c
	ldrb r1, [r1, #0x11]
	bl sub_020E2178
	add r0, sp, #0x9c
	ldrb r0, [r0, #0x10]
	add r4, r0, r1
	bl sub_0201D35C
	add r1, sp, #0x9c
	ldrb r1, [r1, #0x13]
	bl sub_020E2178
	add r0, sp, #0x9c
	ldrb r0, [r0, #0x12]
	add r0, r0, r1
	add r0, r0, r4
	asr r1, r6, #4
	lsl r2, r1, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x6c]
	asr r0, r0, #0x1f
	lsl r3, r2, #1
	ldr r1, _0223EFC4 ; =0x020F983C
	str r0, [sp, #0x70]
	ldr r0, [sp, #0xa8]
	ldrsh r6, [r1, r3]
	lsl r3, r4, #0xc
	add r2, r2, #1
	str r3, [sp, #0x64]
	asr r3, r3, #0x1f
	lsl r2, r2, #1
	str r0, [sp, #0x74]
	asr r0, r0, #0x1f
	str r3, [sp, #0x68]
	ldrsh r4, [r1, r2]
	str r0, [sp, #0x78]
	bl sub_0201D35C
	ldr r1, [sp, #0xa0]
	bl sub_020E2178
	ldr r0, [sp, #0x9c]
	ldr r2, [sp, #0x64]
	add r0, r0, r1
	str r0, [sp, #0x5c]
	asr r0, r6, #0x1f
	str r0, [sp, #0x7c]
	ldr r1, [sp, #0x7c]
	ldr r3, [sp, #0x68]
	add r0, r6, #0
	asr r7, r4, #0x1f
	bl sub_020E1F1C
	str r1, [sp, #0x58]
	str r0, [sp, #0x80]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	add r0, r6, #0
	bl sub_020E1F1C
	str r1, [sp, #0x50]
	str r0, [sp, #0x84]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x74]
	ldr r3, [sp, #0x78]
	add r0, r6, #0
	bl sub_020E1F1C
	str r0, [sp, #0x88]
	str r1, [sp, #0x98]
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x68]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E1F1C
	str r0, [sp, #0x8c]
	str r1, [sp, #0x48]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E1F1C
	str r0, [sp, #0x90]
	str r1, [sp, #0x40]
	ldr r2, [sp, #0x74]
	ldr r3, [sp, #0x78]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E1F1C
	add r2, r0, #0
	mov r4, #2
	ldr r0, [sp, #0x88]
	ldr r3, [sp, #0x98]
	mov r6, #0
	lsl r4, r4, #0xa
	add r0, r0, r4
	adc r3, r6
	str r3, [sp, #0x98]
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	str r0, [sp]
	ldr r0, [sp, #0x8c]
	ldr r3, [sp, #0x48]
	add r0, r0, r4
	adc r3, r6
	str r3, [sp, #0x48]
	mov r7, #6
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	lsl r7, r7, #0x10
	add r0, r0, r7
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r3, [sp, #0x40]
	add r0, r0, r4
	adc r3, r6
	str r3, [sp, #0x40]
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	add r0, r0, r7
	add r2, r2, r4
	adc r1, r6
	str r0, [sp, #8]
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0xc]
	ldr r0, _0223EFC8 ; =0x0000019A
	add r2, sp, #0x9c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	mov r1, #0x38
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0x18]
	ldrb r0, [r2, #0x18]
	str r0, [sp, #0x1c]
	ldrb r0, [r2, #0x14]
	str r0, [sp, #0x20]
	ldrb r3, [r2, #0x15]
	ldr r0, [r5, #8]
	mul r1, r3
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldrb r0, [r2, #0x16]
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x30]
	ldrb r0, [r2, #0x19]
	str r0, [sp, #0x34]
	ldrb r0, [r2, #0x1a]
	str r0, [sp, #0x38]
	ldrb r1, [r2, #0x17]
	ldr r2, [sp, #0x80]
	ldr r0, [sp, #0x60]
	add r3, r2, r4
	ldr r2, [sp, #0x58]
	adc r2, r6
	str r2, [sp, #0x58]
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	lsl r2, r4, #8
	add r2, r3, r2
	ldr r3, [sp, #0x84]
	add r7, r3, r4
	ldr r3, [sp, #0x50]
	adc r3, r6
	str r3, [sp, #0x50]
	lsl r3, r3, #0x14
	lsr r6, r7, #0xc
	orr r6, r3
	lsl r3, r4, #8
	add r3, r6, r3
	bl ov83_0223F1C0
	mov r1, #0x41
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	ldr r0, [sp, #0x60]
	str r2, [r0, #0x7c]
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
_0223EFBC:
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223EFC0: .word 0x022404B0
_0223EFC4: .word 0x020F983C
_0223EFC8: .word 0x0000019A
	thumb_func_end ov83_0223EDDC

	thumb_func_start ov83_0223EFCC
ov83_0223EFCC: ; 0x0223EFCC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r6, #0
	add r4, #0x10
_0223EFD6:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223EFE6
	add r0, r4, #0
	bl ov83_0223F268
_0223EFE6:
	add r6, r6, #1
	add r5, #0x80
	add r4, #0x80
	cmp r6, #8
	blt _0223EFD6
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223EFCC

	thumb_func_start ov83_0223EFF4
ov83_0223EFF4: ; 0x0223EFF4
	mov r2, #0
	add r3, r0, #0
_0223EFF8:
	add r1, r3, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0223F00A
	add r0, #0x10
	lsl r1, r2, #7
	add r0, r0, r1
	bx lr
_0223F00A:
	add r2, r2, #1
	add r3, #0x80
	cmp r2, #8
	blt _0223EFF8
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223EFF4

	thumb_func_start ov83_0223F018
ov83_0223F018: ; 0x0223F018
	push {r4, r5}
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
	add r3, #0x10
_0223F022:
	add r4, r0, #0
	add r4, #0x88
	ldr r4, [r4, #0]
	cmp r4, #0
	beq _0223F042
	cmp r2, #0
	bne _0223F034
	add r2, r3, #0
	b _0223F042
_0223F034:
	add r4, r0, #0
	add r4, #0x8c
	ldr r5, [r2, #0x7c]
	ldr r4, [r4, #0]
	cmp r5, r4
	ble _0223F042
	add r2, r3, #0
_0223F042:
	add r1, r1, #1
	add r0, #0x80
	add r3, #0x80
	cmp r1, #8
	blt _0223F022
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223F018

	thumb_func_start ov83_0223F054
ov83_0223F054: ; 0x0223F054
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _0223F062
	bl sub_02022974
_0223F062:
	ldr r0, [r4, #0x78]
	bl sub_02021BD4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov83_0223F054

	thumb_func_start ov83_0223F074
ov83_0223F074: ; 0x0223F074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F0C6
	add r0, r4, #0
	add r0, #0x30
	bl ov83_0223DA94
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x48
	bl ov83_0223DA94
	add r0, r4, #0
	add r0, #0x60
	bl ov83_0223DA94
	ldr r0, [r4, #0x30]
	add r1, r4, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x48]
	add r1, #0x14
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x78]
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223F0C6
	ldr r0, [r4, #0x60]
	add r1, r4, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x60]
	add r1, #0x20
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x60]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x78]
	bl sub_02021C70
_0223F0C6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0223F0DA
	ldr r0, [r4, #0x78]
	bl sub_02021FD0
	cmp r0, #0
	bne _0223F0DA
	mov r0, #1
	str r0, [r4, #8]
_0223F0DA:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0223F0F2
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0223F0F2
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0223F0F2
	add r0, r4, #0
	bl ov83_0223F054
_0223F0F2:
	pop {r4, pc}
	thumb_func_end ov83_0223F074

	thumb_func_start ov83_0223F0F4
ov83_0223F0F4: ; 0x0223F0F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _0223F1B8
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0223F1B8
	add r0, r1, #0
	add r0, #0xa4
	ldrb r0, [r0]
	ldr r2, [r5, #0x2c]
	cmp r0, #0
	bne _0223F11A
	add r1, #0xa2
	ldrh r0, [r1]
	add r0, r2, r0
	b _0223F120
_0223F11A:
	add r1, #0xa2
	ldrh r0, [r1]
	sub r0, r2, r0
_0223F120:
	str r0, [r5, #0x2c]
	mov r0, #2
	ldr r1, [r5, #0x14]
	lsl r0, r0, #0x12
	sub r4, r1, r0
	mov r0, #6
	mov r2, #0
	ldr r1, [r5, #0x18]
	lsl r0, r0, #0x10
	sub r6, r1, r0
	asr r0, r4, #0xc
	asr r1, r6, #0xc
	add r3, r2, #0
	bl sub_0201E3BC
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020BDA20
	lsl r6, r7, #0xc
	ldr r1, [r5, #0x2c]
	asr r7, r6, #0x1f
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r4, r0, #1
	add r0, r4, #1
	lsl r1, r0, #1
	ldr r0, _0223F1BC ; =0x020F983C
	add r2, r6, #0
	ldrsh r0, [r0, r1]
	add r3, r7, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [sp]
	ldr r0, _0223F1BC ; =0x020F983C
	lsl r1, r4, #1
	ldrsh r0, [r0, r1]
	add r2, r6, #0
	add r3, r7, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r3, [sp]
	lsl r1, r2, #8
	add r1, r3, r1
	str r1, [sp]
	mov r1, #6
	lsl r1, r1, #0x10
	str r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #0x78]
	add r1, sp, #0
	bl sub_02021C50
_0223F1B8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F1BC: .word 0x020F983C
	thumb_func_end ov83_0223F0F4

	thumb_func_start ov83_0223F1C0
ov83_0223F1C0: ; 0x0223F1C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [sp, #0x40]
	str r1, [r5, #0]
	add r4, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r3, #0
	ldr r3, [sp, #0x20]
	add r0, #0x30
	add r1, r4, #0
	ldr r6, [sp, #0x30]
	bl ov83_0223DA34
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	add r0, r5, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, #0x48
	bl ov83_0223DA34
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x34]
	str r0, [sp]
	add r0, r5, #0
	ldr r3, [sp, #0x38]
	add r0, #0x60
	add r1, r6, #0
	bl ov83_0223DA34
	ldr r3, [sp, #0x24]
	str r4, [r5, #0x14]
	str r3, [r5, #0x18]
	str r6, [r5, #0x20]
	str r6, [r5, #0x24]
	ldr r0, [sp, #0x3c]
	str r6, [r5, #0x28]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x44]
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x58
	ldrb r0, [r0]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	str r0, [sp, #8]
	ldr r0, [sp, #0x4c]
	bl ov83_0223D9A8
	str r0, [r5, #0x78]
	cmp r0, #0
	bne _0223F238
	bl sub_02022974
_0223F238:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0223F24A
	add r1, r5, #0
	ldr r0, [r5, #0x78]
	add r1, #0x20
	mov r2, #2
	bl sub_02021C80
_0223F24A:
	ldr r0, [r5, #0x78]
	ldr r1, [sp, #0x48]
	bl sub_02021D6C
	ldr r0, [r5, #0x78]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r5, #0x78]
	mov r1, #2
	bl sub_02021E80
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F1C0

	thumb_func_start ov83_0223F268
ov83_0223F268: ; 0x0223F268
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _0223F296
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r4, #0x60]
	add r0, #0x60
	mov r2, #0xcd
	mov r3, #0
	bl ov83_0223DA34
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x78]
	mov r1, #2
	bl sub_02021CF8
_0223F296:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F268

	thumb_func_start ov83_0223F29C
ov83_0223F29C: ; 0x0223F29C
	ldr r3, _0223F2A4 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x80
	bx r3
	; .align 2, 0
_0223F2A4: .word sub_020D5124
	thumb_func_end ov83_0223F29C

	thumb_func_start ov83_0223F2A8
ov83_0223F2A8: ; 0x0223F2A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0223F2B6
	bl sub_02022974
_0223F2B6:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F2A8

	thumb_func_start ov83_0223F2C4
ov83_0223F2C4: ; 0x0223F2C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [r6, #0x7c]
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x18]
	cmp r0, #0
	beq _0223F2DA
	bl sub_02022974
_0223F2DA:
	str r7, [r6, #0]
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x1f
	str r0, [sp, #8]
	mov r0, #0x1e
	str r0, [sp, #0xc]
	ldr r0, _0223F344 ; =0x00001B58
	add r1, r6, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r3, #0x21
	bl ov83_0223D7A8
	mov r4, #0
	add r5, r6, #0
_0223F304:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r2, #2
	mov r3, #6
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r6, #4
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov83_0223D9A8
	str r0, [r5, #0x3c]
	cmp r4, #2
	blt _0223F32C
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_02021D6C
_0223F32C:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_02021CAC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223F304
	mov r0, #1
	str r0, [r6, #0x7c]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F344: .word 0x00001B58
	thumb_func_end ov83_0223F2C4

	thumb_func_start ov83_0223F348
ov83_0223F348: ; 0x0223F348
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x7c]
	cmp r0, #1
	beq _0223F356
	bl sub_02022974
_0223F356:
	mov r4, #0
	add r5, r6, #0
_0223F35A:
	ldr r0, [r5, #0x3c]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223F35A
	ldr r0, [r6, #0]
	add r1, r6, #4
	bl ov83_0223D95C
	mov r0, #0
	str r0, [r6, #0x7c]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F348

	thumb_func_start ov83_0223F378
ov83_0223F378: ; 0x0223F378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x3c
_0223F380:
	cmp r4, #2
	beq _0223F388
	cmp r4, #0
	bne _0223F390
_0223F388:
	add r0, r5, #0
	bl ov83_0223F420
	b _0223F396
_0223F390:
	add r0, r5, #0
	bl ov83_0223F458
_0223F396:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223F380
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223F378

	thumb_func_start ov83_0223F3A0
ov83_0223F3A0: ; 0x0223F3A0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blt _0223F3AE
	bl sub_02022974
_0223F3AE:
	cmp r5, #2
	beq _0223F3B6
	cmp r5, #0
	bne _0223F3C2
_0223F3B6:
	add r4, #0x3c
	lsl r0, r5, #4
	add r0, r4, r0
	bl ov83_0223F410
	pop {r3, r4, r5, pc}
_0223F3C2:
	add r4, #0x3c
	lsl r0, r5, #4
	add r0, r4, r0
	bl ov83_0223F44C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F3A0

	thumb_func_start ov83_0223F3D0
ov83_0223F3D0: ; 0x0223F3D0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blt _0223F3DE
	bl sub_02022974
_0223F3DE:
	lsl r0, r5, #4
	mov r1, #0
	add r0, r4, r0
	str r1, [r0, #0x48]
	ldr r0, [r0, #0x3c]
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F3D0

	thumb_func_start ov83_0223F3F0
ov83_0223F3F0: ; 0x0223F3F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blt _0223F3FE
	bl sub_02022974
_0223F3FE:
	lsl r0, r5, #4
	add r0, r4, r0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _0223F40C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223F40C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223F3F0

	thumb_func_start ov83_0223F410
ov83_0223F410: ; 0x0223F410
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #3
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223F410

	thumb_func_start ov83_0223F420
ov83_0223F420: ; 0x0223F420
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0223F448
	bl ov83_0223F458
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F448
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _0223F448
	mov r1, #0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0]
	bl sub_02021CAC
_0223F448:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F420

	thumb_func_start ov83_0223F44C
ov83_0223F44C: ; 0x0223F44C
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223F44C

	thumb_func_start ov83_0223F458
ov83_0223F458: ; 0x0223F458
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223F490
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F472
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	b _0223F48A
_0223F472:
	cmp r0, #8
	bne _0223F480
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
	b _0223F48A
_0223F480:
	cmp r0, #0x10
	bne _0223F48A
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
_0223F48A:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_0223F490:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F458

	thumb_func_start ov83_0223F494
ov83_0223F494: ; 0x0223F494
	push {r3, r4, r5, lr}
	ldr r2, _0223F4A8 ; =0x0000090C
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl sub_020D5124
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	nop
_0223F4A8: .word 0x0000090C
	thumb_func_end ov83_0223F494

	thumb_func_start ov83_0223F4AC
ov83_0223F4AC: ; 0x0223F4AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223F4BA
	bl sub_02022974
_0223F4BA:
	ldr r2, _0223F4C8 ; =0x0000090C
	add r0, r4, #0
	mov r1, #0
	bl sub_020D5124
	pop {r4, pc}
	nop
_0223F4C8: .word 0x0000090C
	thumb_func_end ov83_0223F4AC

	thumb_func_start ov83_0223F4CC
ov83_0223F4CC: ; 0x0223F4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r7, r3, #0
	mov r4, #0
	add r5, r0, #0
	add r6, #0x38
_0223F4DE:
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	add r3, r2, #0
	str r7, [sp, #8]
	bl ov83_0223D9A8
	mov r1, #0
	str r0, [r5, #0x50]
	bl sub_02021CAC
	add r4, r4, #1
	add r5, #0x48
	cmp r4, #0x20
	blt _0223F4DE
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F4CC

	thumb_func_start ov83_0223F510
ov83_0223F510: ; 0x0223F510
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0223F518:
	ldr r0, [r5, #0x50]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, #0x48
	cmp r4, #0x20
	blt _0223F518
	mov r0, #0
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223F510

	thumb_func_start ov83_0223F52C
ov83_0223F52C: ; 0x0223F52C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0xc
_0223F534:
	add r0, r5, #0
	bl ov83_0223F670
	add r4, r4, #1
	add r5, #0x48
	cmp r4, #0x20
	blt _0223F534
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223F52C

	thumb_func_start ov83_0223F544
ov83_0223F544: ; 0x0223F544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, r1, #0
	str r1, [sp, #0x10]
	add r1, r2, #0
	sub r0, #0x80
	sub r1, #0x60
	str r2, [sp, #0x14]
	bl sub_020BDA20
	asr r0, r0, #4
	lsl r1, r0, #1
	add r0, r1, #1
	ldr r7, _0223F648 ; =0x020F983C
	lsl r0, r0, #1
	ldrsh r3, [r7, r0]
	asr r6, r3, #0x1f
	lsr r2, r3, #0x10
	lsl r0, r6, #0x10
	orr r0, r2
	mov r2, #2
	lsl r5, r3, #0x10
	lsl r2, r2, #0xa
	add r5, r5, r2
	ldr r2, _0223F64C ; =0x00000000
	adc r0, r2
	lsr r2, r5, #0xc
	lsl r0, r0, #0x14
	str r2, [sp, #0x18]
	orr r2, r0
	lsl r0, r1, #1
	str r2, [sp, #0x18]
	ldrsh r2, [r7, r0]
	asr r0, r2, #0x1f
	mov ip, r0
	lsr r1, r2, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	mov r1, #2
	lsl r5, r2, #0x10
	lsl r1, r1, #0xa
	add r1, r5, r1
	ldr r5, _0223F64C ; =0x00000000
	adc r0, r5
	lsr r7, r1, #0xc
	lsl r0, r0, #0x14
	orr r7, r0
	lsr r0, r3, #0x14
	lsl r1, r6, #0xc
	orr r1, r0
	mov r0, #2
	lsl r3, r3, #0xc
	lsl r0, r0, #0xa
	add r0, r3, r0
	ldr r3, _0223F64C ; =0x00000000
	adc r1, r3
	lsr r6, r0, #0xc
	lsl r1, r1, #0x14
	orr r6, r1
	mov r1, ip
	lsr r0, r2, #0x14
	lsl r1, r1, #0xc
	orr r1, r0
	mov r0, #2
	lsl r2, r2, #0xc
	lsl r0, r0, #0xa
	add r2, r2, r0
	ldr r0, _0223F64C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r5, r2, #0xc
	orr r5, r0
	add r0, r4, #0
	bl ov83_0223F650
	cmp r0, #0
	beq _0223F604
	mov r2, #2
	ldr r1, [sp, #0x18]
	lsl r2, r2, #0x12
	add r1, r1, r2
	str r1, [sp]
	mov r1, #6
	lsl r1, r1, #0x10
	add r1, r7, r1
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldr r1, [r4, #8]
	lsl r2, r2, #0xc
	lsl r3, r3, #0xc
	bl ov83_0223F6CC
_0223F604:
	add r0, r4, #0
	bl ov83_0223F650
	cmp r0, #0
	beq _0223F636
	mov r2, #2
	ldr r1, [sp, #0x18]
	lsl r2, r2, #0x12
	sub r1, r2, r1
	str r1, [sp]
	mov r1, #6
	lsl r1, r1, #0x10
	sub r1, r1, r7
	str r1, [sp, #4]
	neg r1, r6
	str r1, [sp, #8]
	neg r1, r5
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r4, #8]
	lsl r2, r2, #0xc
	lsl r3, r3, #0xc
	bl ov83_0223F6CC
_0223F636:
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r4, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223F648: .word 0x020F983C
_0223F64C: .word 0x00000000
	thumb_func_end ov83_0223F544

	thumb_func_start ov83_0223F650
ov83_0223F650: ; 0x0223F650
	mov r2, #0
	add r3, r0, #0
_0223F654:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	bne _0223F664
	mov r1, #0x48
	add r0, #0xc
	mul r1, r2
	add r0, r0, r1
	bx lr
_0223F664:
	add r2, r2, #1
	add r3, #0x48
	cmp r2, #0x20
	blt _0223F654
	mov r0, #0
	bx lr
	thumb_func_end ov83_0223F650

	thumb_func_start ov83_0223F670
ov83_0223F670: ; 0x0223F670
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223F6B0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F6A4
	add r0, r4, #0
	add r0, #0x14
	bl ov83_0223DA94
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x2c
	bl ov83_0223DA94
	ldr r0, [r4, #0x14]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	add r1, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x44]
	bl sub_02021C50
_0223F6A4:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0223F6B0
	add r0, r4, #0
	bl ov83_0223F6B4
_0223F6B0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F670

	thumb_func_start ov83_0223F6B4
ov83_0223F6B4: ; 0x0223F6B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223F6CA
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0
	str r0, [r4, #0]
_0223F6CA:
	pop {r4, pc}
	thumb_func_end ov83_0223F6B4

	thumb_func_start ov83_0223F6CC
ov83_0223F6CC: ; 0x0223F6CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x10
	add r4, r2, #0
	add r6, r3, #0
	str r0, [sp]
	add r0, r5, #0
	add r7, r1, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x20]
	add r0, #0x14
	add r1, r4, #0
	bl ov83_0223DA34
	mov r0, #0x10
	str r0, [sp]
	add r0, r5, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x24]
	add r0, #0x2c
	add r1, r6, #0
	bl ov83_0223DA34
	str r4, [r5, #8]
	str r6, [r5, #0xc]
	ldr r0, [r5, #0x44]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r5, #0x44]
	add r1, r7, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x44]
	bl sub_02021DE0
	ldr r0, [r5, #0x44]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r5, #0x44]
	mov r1, #2
	bl sub_02021E80
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F6CC

	thumb_func_start ov83_0223F730
ov83_0223F730: ; 0x0223F730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	mov r1, #1
	add r6, r2, #0
	add r7, r3, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02098FFC
	str r0, [r5, #0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	lsl r2, r4, #0x10
	lsl r3, r6, #0x10
	ldr r0, [r5, #0]
	add r1, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0209916C
	str r0, [r5, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F730

	thumb_func_start ov83_0223F770
ov83_0223F770: ; 0x0223F770
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl sub_02099370
	ldr r0, [r4, #0]
	bl sub_0209903C
	pop {r4, pc}
	thumb_func_end ov83_0223F770

	thumb_func_start ov83_0223F784
ov83_0223F784: ; 0x0223F784
	ldr r3, _0223F78C ; =sub_02099160
	ldr r0, [r0, #0]
	bx r3
	nop
_0223F78C: .word sub_02099160
	thumb_func_end ov83_0223F784

	thumb_func_start ov83_0223F790
ov83_0223F790: ; 0x0223F790
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_02015920
	str r0, [r5, #0]
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F790

	thumb_func_start ov83_0223F7A4
ov83_0223F7A4: ; 0x0223F7A4
	ldr r3, _0223F7AC ; =sub_02015938
	ldr r0, [r0, #0]
	bx r3
	nop
_0223F7AC: .word sub_02015938
	thumb_func_end ov83_0223F7A4

	thumb_func_start ov83_0223F7B0
ov83_0223F7B0: ; 0x0223F7B0
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #4]
	mov r2, #0x18
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #0xaf
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0
	strb r2, [r1, #0x10]
	mov r2, #8
	strb r2, [r1, #0x11]
	ldr r0, [r0, #0]
	add r1, sp, #0
	bl sub_02015958
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end ov83_0223F7B0

	thumb_func_start ov83_0223F7DC
ov83_0223F7DC: ; 0x0223F7DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_020159FC
	add r4, r0, #0
	beq _0223F7F0
	ldr r0, [r5, #0]
	bl sub_02015A54
_0223F7F0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223F7DC

	.rodata


	.global Unk_ov83_02240414
Unk_ov83_02240414: ; 0x02240414
	.incbin "incbin/overlay83_rodata.bin", 0x20C, 0x210 - 0x20C

	.global Unk_ov83_02240418
Unk_ov83_02240418: ; 0x02240418
	.incbin "incbin/overlay83_rodata.bin", 0x210, 0x218 - 0x210

	.global Unk_ov83_02240420
Unk_ov83_02240420: ; 0x02240420
	.incbin "incbin/overlay83_rodata.bin", 0x218, 0x220 - 0x218

	.global Unk_ov83_02240428
Unk_ov83_02240428: ; 0x02240428
	.incbin "incbin/overlay83_rodata.bin", 0x220, 0x228 - 0x220

	.global Unk_ov83_02240430
Unk_ov83_02240430: ; 0x02240430
	.incbin "incbin/overlay83_rodata.bin", 0x228, 0x230 - 0x228

	.global Unk_ov83_02240438
Unk_ov83_02240438: ; 0x02240438
	.incbin "incbin/overlay83_rodata.bin", 0x230, 0x238 - 0x230

	.global Unk_ov83_02240440
Unk_ov83_02240440: ; 0x02240440
	.incbin "incbin/overlay83_rodata.bin", 0x238, 0x240 - 0x238

	.global Unk_ov83_02240448
Unk_ov83_02240448: ; 0x02240448
	.incbin "incbin/overlay83_rodata.bin", 0x240, 0x24C - 0x240

	.global Unk_ov83_02240454
Unk_ov83_02240454: ; 0x02240454
	.incbin "incbin/overlay83_rodata.bin", 0x24C, 0x258 - 0x24C

	.global Unk_ov83_02240460
Unk_ov83_02240460: ; 0x02240460
	.incbin "incbin/overlay83_rodata.bin", 0x258, 0x2A8 - 0x258

	.global Unk_ov83_022404B0
Unk_ov83_022404B0: ; 0x022404B0
	.incbin "incbin/overlay83_rodata.bin", 0x2A8, 0xE0


	.data


	.global Unk_ov83_022405C0
Unk_ov83_022405C0: ; 0x022405C0
	.incbin "incbin/overlay83_data.bin", 0x0, 0x30

