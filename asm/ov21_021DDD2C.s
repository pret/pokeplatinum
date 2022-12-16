	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021DDD2C
ov21_021DDD2C: ; 0x021DDD2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021DDDA4
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021DDDF0
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021DDE18
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021DDE48
	str r0, [r5, #0x24]
	ldr r0, _021DDD74 ; =ov21_021DDE4C
	str r0, [r5, #8]
	ldr r0, _021DDD78 ; =ov21_021DDE84
	str r0, [r5, #0xc]
	ldr r0, _021DDD7C ; =ov21_021DDEB4
	str r0, [r5, #0x10]
	ldr r0, _021DDD80 ; =ov21_021DDEC8
	str r0, [r5, #0x14]
	ldr r0, _021DDD84 ; =ov21_021DDF80
	str r0, [r5, #0x18]
	ldr r0, _021DDD88 ; =ov21_021DDFB4
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DDD74: .word ov21_021DDE4C
_021DDD78: .word ov21_021DDE84
_021DDD7C: .word ov21_021DDEB4
_021DDD80: .word ov21_021DDEC8
_021DDD84: .word ov21_021DDF80
_021DDD88: .word ov21_021DDFB4
	thumb_func_end ov21_021DDD2C

	thumb_func_start ov21_021DDD8C
ov21_021DDD8C: ; 0x021DDD8C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021DDE1C
	ldr r0, [r4, #4]
	bl ov21_021DDE30
	ldr r0, [r4, #0x20]
	bl ov21_021DDE44
	pop {r4, pc}
	thumb_func_end ov21_021DDD8C

	thumb_func_start ov21_021DDDA4
ov21_021DDDA4: ; 0x021DDDA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _021DDDB6
	bl sub_02022974
_021DDDB6:
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
	add r0, r5, #0
	mov r1, #6
	bl ov21_021D1410
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #3
	bl ov21_021D1430
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DDDA4

	thumb_func_start ov21_021DDDF0
ov21_021DDDF0: ; 0x021DDDF0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021DDE02
	bl sub_02022974
_021DDE02:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DDDF0

	thumb_func_start ov21_021DDE18
ov21_021DDE18: ; 0x021DDE18
	mov r0, #0
	bx lr
	thumb_func_end ov21_021DDE18

	thumb_func_start ov21_021DDE1C
ov21_021DDE1C: ; 0x021DDE1C
	push {r4, lr}
	add r4, r0, #0
	bne _021DDE26
	bl sub_02022974
_021DDE26:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DDE1C

	thumb_func_start ov21_021DDE30
ov21_021DDE30: ; 0x021DDE30
	push {r4, lr}
	add r4, r0, #0
	bne _021DDE3A
	bl sub_02022974
_021DDE3A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DDE30

	thumb_func_start ov21_021DDE44
ov21_021DDE44: ; 0x021DDE44
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021DDE44

	thumb_func_start ov21_021DDE48
ov21_021DDE48: ; 0x021DDE48
	mov r0, #0
	bx lr
	thumb_func_end ov21_021DDE48

	thumb_func_start ov21_021DDE4C
ov21_021DDE4C: ; 0x021DDE4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	mov r1, #0x28
	bl sub_02018144
	add r4, r0, #0
	bne _021DDE62
	bl sub_02022974
_021DDE62:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl sub_020D5124
	str r4, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DE5A4
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DE2EC
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DDE4C

	thumb_func_start ov21_021DDE84
ov21_021DDE84: ; 0x021DDE84
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021DDE94
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DDE94:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021DDE9E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DDE9E:
	ldr r0, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021DDEB0
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021DE334
_021DDEB0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DDE84

	thumb_func_start ov21_021DDEB4
ov21_021DDEB4: ; 0x021DDEB4
	push {r4, lr}
	ldr r4, [r0, #8]
	add r0, r4, #0
	bl ov21_021DE484
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021DDEB4

	thumb_func_start ov21_021DDEC8
ov21_021DDEC8: ; 0x021DDEC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r3, #8]
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021DDF7C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DDEE8: ; jump table
	.short _021DDEF0 - _021DDEE8 - 2 ; case 0
	.short _021DDF0A - _021DDEE8 - 2 ; case 1
	.short _021DDF3E - _021DDEE8 - 2 ; case 2
	.short _021DDF60 - _021DDEE8 - 2 ; case 3
_021DDEF0:
	ldr r0, [r4, #4]
	mov r1, #0x2c
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x2c
	bl sub_020D5124
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDF7C
_021DDF0A:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021DE100
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021DE49C
	ldr r3, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov21_021DE4D4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021DE058
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDF7C
_021DDF3E:
	ldr r3, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021DE4D4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021DE0C4
	cmp r0, #0
	beq _021DDF7C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDF7C
_021DDF60:
	ldr r3, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021DE4D4
	mov r0, #0x79
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov21_021D25AC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DDF7C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DDEC8

	thumb_func_start ov21_021DDF80
ov21_021DDF80: ; 0x021DDF80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r3, #8]
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp]
	ldr r7, [r5, #8]
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r4, #0
	bl ov21_021DE49C
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r4, #0
	bl ov21_021DE630
	ldr r3, [r5, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021DE4D4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DDF80

	thumb_func_start ov21_021DDFB4
ov21_021DDFB4: ; 0x021DDFB4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021DE03C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DDFD0: ; jump table
	.short _021DDFDA - _021DDFD0 - 2 ; case 0
	.short _021DDFFC - _021DDFD0 - 2 ; case 1
	.short _021DE012 - _021DDFD0 - 2 ; case 2
	.short _021DE024 - _021DDFD0 - 2 ; case 3
	.short _021DE038 - _021DDFD0 - 2 ; case 4
_021DDFDA:
	mov r0, #0x79
	ldr r1, [r6, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	bl ov21_021D25AC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl ov21_021DE058
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE03C
_021DDFFC:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl ov21_021DE0C4
	cmp r0, #0
	beq _021DE03C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE03C
_021DE012:
	ldr r2, [r4, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021DE128
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE03C
_021DE024:
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DE03C
_021DE038:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DE03C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DDFB4

	thumb_func_start ov21_021DE040
ov21_021DE040: ; 0x021DE040
	ldr r3, _021DE048 ; =sub_02021FE0
	ldr r0, [r0, #0]
	mov r1, #1
	bx r3
	; .align 2, 0
_021DE048: .word sub_02021FE0
	thumb_func_end ov21_021DE040

	thumb_func_start ov21_021DE04C
ov21_021DE04C: ; 0x021DE04C
	ldr r3, _021DE054 ; =sub_02021FE0
	ldr r0, [r0, #0]
	mov r1, #0
	bx r3
	; .align 2, 0
_021DE054: .word sub_02021FE0
	thumb_func_end ov21_021DE04C

	thumb_func_start ov21_021DE058
ov21_021DE058: ; 0x021DE058
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021DE040
	ldr r0, [r4, #8]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021DE0C0
	cmp r6, #0
	beq _021DE09C
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, #0x19
	ldr r2, [r5, #0]
	lsl r0, r0, #4
	add r0, r2, r0
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021DE09C:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, #0x19
	ldr r3, [r5, #0]
	lsl r0, r0, #4
	add r0, r3, r0
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021DE0C0:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021DE058

	thumb_func_start ov21_021DE0C4
ov21_021DE0C4: ; 0x021DE0C4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r2, #8]
	add r5, r1, #0
	add r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021DE0E4
	mov r0, #0x19
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov21_021D2424
	b _021DE0EA
_021DE0E4:
	mov r0, #2
	bl sub_0200AC1C
_021DE0EA:
	cmp r0, #0
	beq _021DE0FC
	cmp r4, #0
	beq _021DE0F8
	add r0, r6, #0
	bl ov21_021DE04C
_021DE0F8:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DE0FC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DE0C4

	thumb_func_start ov21_021DE100
ov21_021DE100: ; 0x021DE100
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DE13C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021DE1A4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021DE258
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE100

	thumb_func_start ov21_021DE128
ov21_021DE128: ; 0x021DE128
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021DE2E0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DE224
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DE128

	thumb_func_start ov21_021DE13C
ov21_021DE13C: ; 0x021DE13C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x22
	mov r3, #6
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x45
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #6
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE13C

	thumb_func_start ov21_021DE1A4
ov21_021DE1A4: ; 0x021DE1A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021DE218 ; =0x000017D9
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r2, #0x69
	mov r3, #1
	bl sub_02009A4C
	str r0, [r5, #4]
	bl sub_0200A3DC
	ldr r0, [r5, #4]
	bl sub_02009D4C
	ldr r0, _021DE21C ; =0x000017D7
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x67
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0xc]
	ldr r0, _021DE220 ; =0x000017D8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x68
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x10]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DE218: .word 0x000017D9
_021DE21C: .word 0x000017D7
_021DE220: .word 0x000017D8
	thumb_func_end ov21_021DE1A4

	thumb_func_start ov21_021DE224
ov21_021DE224: ; 0x021DE224
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE224

	thumb_func_start ov21_021DE258
ov21_021DE258: ; 0x021DE258
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	ldr r3, _021DE2D8 ; =0x000017D8
	add r5, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	add r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, _021DE2DC ; =0x0000083F
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x1f
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	mov r0, #3
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	str r1, [sp, #0x34]
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0]
	bl sub_02021D6C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DE2D8: .word 0x000017D8
_021DE2DC: .word 0x0000083F
	thumb_func_end ov21_021DE258

	thumb_func_start ov21_021DE2E0
ov21_021DE2E0: ; 0x021DE2E0
	ldr r3, _021DE2E8 ; =sub_02021BD4
	ldr r0, [r0, #0]
	bx r3
	nop
_021DE2E8: .word sub_02021BD4
	thumb_func_end ov21_021DE2E0

	thumb_func_start ov21_021DE2EC
ov21_021DE2EC: ; 0x021DE2EC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #4
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r1, #0xfe
	strb r1, [r0]
	ldr r1, [r5, #0]
	ldr r0, [r5, #0x14]
	add r3, r5, #0
	strb r1, [r0, #1]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x14]
	ldr r2, _021DE330 ; =ov21_021DE44C
	strb r1, [r0, #2]
	ldr r0, [r5, #0x14]
	mov r1, #0x20
	strb r1, [r0, #3]
	str r4, [r5, #0x18]
	str r5, [r5, #0x1c]
	str r6, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, #0x18
	bl sub_02023FCC
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021DE330: .word ov21_021DE44C
	thumb_func_end ov21_021DE2EC

	thumb_func_start ov21_021DE334
ov21_021DE334: ; 0x021DE334
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r5, r1, #0
	bl sub_0202404C
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021DE3D0
	ldr r1, [r4, #0]
	ldr r0, [r4, #0x14]
	strb r1, [r0, #1]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x14]
	strb r1, [r0, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE334

	thumb_func_start ov21_021DE358
ov21_021DE358: ; 0x021DE358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021DE3C8 ; =0x021BF6BC
	add r4, r1, #0
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	bne _021DE3C4
	ldr r0, [r4, #8]
	bl ov21_021E33BC
	cmp r0, #1
	bne _021DE3C4
	ldr r0, [r4, #4]
	bl ov21_021D3998
	cmp r0, #2
	bne _021DE3C4
	ldr r0, [r4, #0]
	bl ov21_021DCA28
	ldr r1, _021DE3CC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	tst r1, r2
	beq _021DE3A4
	sub r1, r0, #1
	bpl _021DE390
	mov r1, #0
_021DE390:
	ldr r0, [r4, #0]
	bl ov21_021DCA30
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DE5A4
	mov r0, #1
	str r0, [r5, #0x24]
	pop {r3, r4, r5, pc}
_021DE3A4:
	mov r1, #0x10
	tst r1, r2
	beq _021DE3C4
	add r1, r0, #1
	cmp r1, #3
	blt _021DE3B2
	mov r1, #2
_021DE3B2:
	ldr r0, [r4, #0]
	bl ov21_021DCA30
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DE5A4
	mov r0, #1
	str r0, [r5, #0x24]
_021DE3C4:
	pop {r3, r4, r5, pc}
	nop
_021DE3C8: .word 0x021BF6BC
_021DE3CC: .word 0x021BF67C
	thumb_func_end ov21_021DE358

	thumb_func_start ov21_021DE3D0
ov21_021DE3D0: ; 0x021DE3D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0
	str r2, [r5, #0x24]
	ldr r3, [r5, #0x20]
	add r4, r1, #0
	cmp r3, #0
	beq _021DE442
	ldr r0, _021DE448 ; =0x021BF6BC
	ldrh r1, [r0, #0x22]
	cmp r1, #0
	beq _021DE43E
	ldrh r2, [r0, #0x1c]
	ldr r1, [r5, #8]
	sub r1, r2, r1
	str r1, [r5, #0]
	ldrh r1, [r0, #0x1e]
	ldr r0, [r5, #0xc]
	sub r0, r1, r0
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	cmp r0, #0x18
	bge _021DE402
	mov r0, #0x18
	str r0, [r5, #0]
_021DE402:
	ldr r0, [r5, #0]
	cmp r0, #0xf6
	ble _021DE40C
	mov r0, #0xf6
	str r0, [r5, #0]
_021DE40C:
	ldr r0, [r5, #4]
	cmp r0, #0x40
	bge _021DE416
	mov r0, #0x40
	str r0, [r5, #4]
_021DE416:
	ldr r0, [r5, #0]
	bl ov21_021DE5DC
	ldr r1, [r5, #4]
	add r0, #0x84
	cmp r1, r0
	ble _021DE426
	str r0, [r5, #4]
_021DE426:
	ldr r0, [r5, #0]
	mov r1, #0x55
	bl sub_020E1F6C
	add r1, r0, #0
	cmp r1, #2
	ble _021DE436
	mov r1, #2
_021DE436:
	ldr r0, [r4, #0]
	bl ov21_021DCA30
	pop {r3, r4, r5, pc}
_021DE43E:
	str r2, [r5, #0x20]
	pop {r3, r4, r5, pc}
_021DE442:
	bl ov21_021DE358
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DE448: .word 0x021BF6BC
	thumb_func_end ov21_021DE3D0

	thumb_func_start ov21_021DE44C
ov21_021DE44C: ; 0x021DE44C
	push {r4, lr}
	ldr r0, [r2, #0]
	ldr r4, [r2, #4]
	cmp r1, #0
	bne _021DE47A
	ldr r0, [r0, #8]
	mov r1, #1
	bl ov21_021E33B4
	ldr r0, _021DE47C ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r0, _021DE480 ; =0x021BF6BC
	ldr r1, [r4, #0]
	ldrh r2, [r0, #0x1c]
	sub r1, r2, r1
	str r1, [r4, #8]
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	str r0, [r4, #0xc]
_021DE47A:
	pop {r4, pc}
	; .align 2, 0
_021DE47C: .word 0x000005DD
_021DE480: .word 0x021BF6BC
	thumb_func_end ov21_021DE44C

	thumb_func_start ov21_021DE484
ov21_021DE484: ; 0x021DE484
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02024034
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x14]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE484

	thumb_func_start ov21_021DE49C
ov21_021DE49C: ; 0x021DE49C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r2, #0]
	add r4, r1, #0
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r2, #4]
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	str r1, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0]
	bl ov21_021DCA28
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02021D6C
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE49C

	thumb_func_start ov21_021DE4D4
ov21_021DE4D4: ; 0x021DE4D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r2, #0]
	add r7, r1, #0
	str r3, [sp]
	mov r4, #0
	bl ov21_021DCA28
	ldr r1, [r5, #0x18]
	add r6, r0, #0
	cmp r1, r6
	bne _021DE4F8
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DE4F8
	ldr r0, [r5, #0x1c]
	cmp r0, r1
	beq _021DE5A2
_021DE4F8:
	ldr r0, [r5, #0x1c]
	cmp r0, r6
	beq _021DE504
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x24]
_021DE504:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021DE514
	cmp r0, #1
	beq _021DE54A
	cmp r0, #2
	beq _021DE580
	b _021DE588
_021DE514:
	str r6, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DE520
	bl sub_020181C4
_021DE520:
	ldr r1, [r5, #0x18]
	add r2, r5, #0
	ldr r0, [r7, #0]
	ldr r3, [sp]
	add r1, #0xf
	add r2, #0x20
	bl ov21_021D27E0
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x18]
	cmp r0, r6
	ble _021DE540
	mov r4, #1
	b _021DE542
_021DE540:
	mov r4, #2
_021DE542:
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
	b _021DE588
_021DE54A:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DE554
	bl sub_020181C4
_021DE554:
	ldr r1, [r5, #0x1c]
	add r2, r5, #0
	ldr r0, [r7, #0]
	ldr r3, [sp]
	add r1, #0xf
	add r2, #0x20
	bl ov21_021D27E0
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	bge _021DE576
	mov r4, #1
	b _021DE578
_021DE576:
	mov r4, #2
_021DE578:
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
	b _021DE588
_021DE580:
	mov r4, #0
	str r4, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x18]
_021DE588:
	ldr r2, [r5, #0x20]
	mov r0, #0x1f
	ldr r3, [r2, #0xc]
	lsl r2, r4, #5
	add r2, r3, r2
	mov r1, #0x40
	mov r3, #0x20
	bl sub_0201DC68
	cmp r0, #0
	bne _021DE5A2
	bl sub_02022974
_021DE5A2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DE4D4

	thumb_func_start ov21_021DE5A4
ov21_021DE5A4: ; 0x021DE5A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	bl ov21_021DCA28
	cmp r0, #0
	beq _021DE5BC
	cmp r0, #1
	beq _021DE5C6
	cmp r0, #2
	beq _021DE5D0
	pop {r4, pc}
_021DE5BC:
	mov r0, #0x20
	str r0, [r4, #0]
	mov r0, #0x80
	str r0, [r4, #4]
	pop {r4, pc}
_021DE5C6:
	mov r0, #0x80
	str r0, [r4, #0]
	mov r0, #0x60
	str r0, [r4, #4]
	pop {r4, pc}
_021DE5D0:
	mov r0, #0xe0
	str r0, [r4, #0]
	mov r0, #0x80
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE5A4

	thumb_func_start ov21_021DE5DC
ov21_021DE5DC: ; 0x021DE5DC
	push {r3, lr}
	cmp r0, #0x28
	blt _021DE5E6
	cmp r0, #0xd8
	ble _021DE5EA
_021DE5E6:
	mov r0, #0x30
	pop {r3, pc}
_021DE5EA:
	ldr r1, _021DE628 ; =0x00007FFF
	sub r0, #0x28
	mul r1, r0
	add r0, r1, #0
	mov r1, #0xb0
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021DE62C ; =0x020F983C
	mov r2, #3
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0x10
	mov r3, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r1, r1, #0xc
	mov r0, #0x30
	sub r0, r0, r1
	pop {r3, pc}
	; .align 2, 0
_021DE628: .word 0x00007FFF
_021DE62C: .word 0x020F983C
	thumb_func_end ov21_021DE5DC

	thumb_func_start ov21_021DE630
ov21_021DE630: ; 0x021DE630
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	ldr r0, [r2, #8]
	add r5, r1, #0
	bl ov21_021E33BC
	cmp r0, #1
	bne _021DE664
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021DE656
	mov r3, #0x20
	str r3, [sp]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl ov21_021D2574
	pop {r3, r4, r5, pc}
_021DE656:
	mov r3, #0x20
	str r3, [sp]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl ov21_021D25E8
_021DE664:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DE630