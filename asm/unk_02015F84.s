	.include "macros/function.inc"
	.include "include/unk_02015F84.inc"

	

	.text


	thumb_func_start sub_02015F84
sub_02015F84: ; 0x02015F84
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	strb r6, [r4, #8]
	mov r0, #0x1d
	strb r7, [r4, #9]
	lsl r0, r0, #4
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	add r1, r6, #0
	str r5, [r4, #4]
	bl sub_02018144
	mov r1, #0
	add r2, r6, #0
	str r0, [r4, #0]
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015F84

	thumb_func_start sub_02015FB8
sub_02015FB8: ; 0x02015FB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02015FB8

	thumb_func_start sub_02015FCC
sub_02015FCC: ; 0x02015FCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, r2, #0
	ldrh r6, [r0]
	ldrh r0, [r0, #2]
	add r7, r1, #0
	ldrb r1, [r5, #9]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	str r2, [sp]
	cmp r0, r1
	blo _02015FEC
	bl sub_02022974
_02015FEC:
	ldr r0, [sp, #4]
	mov r1, #0x1d
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, #0]
	mul r4, r1
	add r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02016004
	bl sub_02022974
_02016004:
	ldr r0, [r5, #0]
	mov r2, #0x1d
	add r0, r0, r4
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	ldr r0, [r5, #0]
	mov r1, #1
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #0]
	cmp r6, #0x8f
	str r7, [r0, r4]
	blt _02016026
	mov r6, #0
	str r6, [sp, #8]
_02016026:
	ldr r0, [r5, #0]
	add r0, r0, r4
	str r6, [r0, #0x14]
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02016038
	ldr r0, [sp]
	ldrb r2, [r0, #4]
	b _0201603A
_02016038:
	mov r2, #0
_0201603A:
	ldr r0, [r5, #0]
	add r1, r0, r4
	mov r0, #0x73
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	add r1, r1, r4
	ldr r1, [r1, #0x14]
	mov r0, #0x5e
	bl sub_02006ADC
	ldr r1, [r5, #0]
	mov r2, #0
	add r1, r1, r4
	str r0, [r1, #8]
	ldr r0, [r5, #0]
	mov r6, #0x1c
	add r1, r0, r4
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0]
	add r0, r0, r4
	str r2, [r0, #0x1c]
	ldr r0, [r5, #0]
	add r0, r0, r4
	str r2, [r0, #0x20]
	ldr r0, [r5, #0]
	add r1, r0, r4
	ldr r0, _020160EC ; =0x000001CD
	strb r2, [r1, r0]
	ldr r1, [r5, #0]
	add r3, r1, r4
	add r1, r0, #1
	strb r6, [r3, r1]
	ldr r1, [r5, #0]
	add r0, r0, #2
	add r1, r1, r4
	strb r2, [r1, r0]
	ldr r1, [r5, #0]
	ldr r0, _020160F0 ; =sub_02016150
	add r1, r1, r4
	bl sub_0200D9E8
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r0, [r5, #0]
	add r1, r0, r4
	ldr r0, [sp, #8]
	str r0, [r1, #0x54]
	add r0, r7, #0
	mov r1, #0
	bl sub_020080C0
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x58]
	add r0, r7, #0
	mov r1, #1
	bl sub_020080C0
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x5c]
	ldr r1, [r5, #0]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #0x60]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x64]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x68]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x6c]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x70]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x74]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x78]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020160EC: .word 0x000001CD
_020160F0: .word sub_02016150
	thumb_func_end sub_02015FCC

	thumb_func_start sub_020160F4
sub_020160F4: ; 0x020160F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	cmp r4, r0
	blo _02016104
	bl sub_02022974
_02016104:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r1, [r5, #0]
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x20]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020160F4

	thumb_func_start sub_02016114
sub_02016114: ; 0x02016114
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201614E
	bl sub_0200DA58
	ldr r1, [r5, #0]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r1, [r5, #0]
	mov r2, #1
	add r1, r1, r4
	str r2, [r1, #0x20]
	ldr r1, [r5, #0]
	add r1, r1, r4
	str r0, [r1, #0x10]
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_020181C4
_0201614E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016114

	thumb_func_start sub_02016150
sub_02016150: ; 0x02016150
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _02016164
	add r0, r4, #0
	bl sub_02016188
	b _02016168
_02016164:
	sub r0, r0, #1
	str r0, [r4, #0x54]
_02016168:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02016186
	mov r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl sub_020181C4
_02016186:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016150

	thumb_func_start sub_02016188
sub_02016188: ; 0x02016188
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	str r6, [r5, #0x18]
	add r7, r5, #0
	str r6, [r5, #0x44]
	add r4, r6, #0
	add r7, #0x7c
_02016198:
	mov r0, #0x54
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	ldr r1, [r7, r1]
	cmp r1, #0
	beq _020161C6
	add r1, r0, #0
	add r1, #0x2d
	ldrb r1, [r1]
	cmp r1, #0
	bne _020161B8
	ldr r2, [r0, #0x50]
	add r1, r5, #0
	blx r2
	b _020161CC
_020161B8:
	add r1, r0, #0
	add r1, #0x2d
	ldrb r1, [r1]
	add r0, #0x2d
	sub r1, r1, #1
	strb r1, [r0]
	b _020161CC
_020161C6:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_020161CC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02016198
	cmp r6, #4
	bne _020161E0
	ldr r0, _02016274 ; =0x000001CD
	mov r1, #0
	strb r1, [r5, r0]
_020161E0:
	ldr r0, _02016274 ; =0x000001CD
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _020161F6
	add r0, r5, #0
	bl sub_02016A60
	add r0, r5, #0
	bl sub_02016AA8
	pop {r3, r4, r5, r6, r7, pc}
_020161F6:
	add r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0201620E
	ldr r0, [r5, #0]
	bl sub_020087B4
	cmp r0, #0
	bne _02016270
	ldr r0, _02016278 ; =0x000001CF
	mov r1, #0
	strb r1, [r5, r0]
_0201620E:
	add r6, r5, #0
	add r4, r5, #0
	ldr r7, _0201627C ; =0x020E55D4
	add r6, #0xc
	add r4, #0x44
_02016218:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #0x22
	blo _0201622A
	bl sub_02022974
_0201622A:
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	ldr r1, [r1, #0]
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	blx r1
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _02016270
	ldr r0, [r6, #0]
	add r0, r0, #4
	str r0, [r6, #0]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _02016270
	ldr r0, _02016274 ; =0x000001CD
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0201625E
	add r0, r5, #0
	bl sub_02016A60
	add r0, r5, #0
	bl sub_02016AA8
	pop {r3, r4, r5, r6, r7, pc}
_0201625E:
	mov r0, #1
	ldr r1, [r5, #0x44]
	lsl r0, r0, #8
	cmp r1, r0
	blt _02016218
	bl sub_02022974
	mov r0, #1
	str r0, [r5, #0x1c]
_02016270:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02016274: .word 0x000001CD
_02016278: .word 0x000001CF
_0201627C: .word 0x020E55D4
	thumb_func_end sub_02016188

	thumb_func_start sub_02016280
sub_02016280: ; 0x02016280
	push {r4, lr}
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	cmp r2, #1
	beq _0201628E
	bl sub_02022974
_0201628E:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016280

	thumb_func_start sub_02016294
sub_02016294: ; 0x02016294
	ldr r3, _0201629C ; =sub_02016280
	add r2, r1, #0
	mov r1, #0
	bx r3
	; .align 2, 0
_0201629C: .word sub_02016280
	thumb_func_end sub_02016294

	thumb_func_start sub_020162A0
sub_020162A0: ; 0x020162A0
	ldr r3, _020162A8 ; =sub_02016294
	mov r1, #1
	bx r3
	nop
_020162A8: .word sub_02016294
	thumb_func_end sub_020162A0

	thumb_func_start sub_020162AC
sub_020162AC: ; 0x020162AC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r3, #0
	add r0, #0x7c
	mov r2, #0x54
_020162B6:
	add r1, r3, #0
	mul r1, r2
	add r4, r0, r1
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _020162E0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x54
	bl sub_020C4CF4
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	ldr r0, _020162F4 ; =0x020E5598
	ldr r0, [r0, r1]
	str r0, [r4, #0x50]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_020162E0:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _020162B6
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020162F4: .word 0x020E5598
	thumb_func_end sub_020162AC

	thumb_func_start sub_020162F8
sub_020162F8: ; 0x020162F8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_020162A0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_020162F8

	thumb_func_start sub_0201630C
sub_0201630C: ; 0x0201630C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_020162A0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0201630C

	thumb_func_start sub_02016320
sub_02016320: ; 0x02016320
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_020162A0
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #8
	blo _0201633C
	bl sub_02022974
_0201633C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016320

	thumb_func_start sub_02016340
sub_02016340: ; 0x02016340
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02016320
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016320
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016340

	thumb_func_start sub_02016354
sub_02016354: ; 0x02016354
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02016320
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _02016394
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	add r1, r6, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_020162F8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02016394:
	cmp r0, #0x13
	bne _020163C0
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, #1
	bl sub_02016340
	add r0, sp, #0
	ldrb r1, [r0, #2]
	add sp, #4
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [r4, #0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, pc}
_020163C0:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02016354

	thumb_func_start sub_020163C8
sub_020163C8: ; 0x020163C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02016320
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_0201630C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x12
	bne _020163FA
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020162F8
	b _0201641A
_020163FA:
	cmp r0, #0x13
	bne _02016416
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #3]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0]
	b _0201641A
_02016416:
	bl sub_02022974
_0201641A:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _0201642E
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020162F8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0201642E:
	cmp r0, #0x13
	bne _0201644C
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	add sp, #4
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, pc}
_0201644C:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020163C8

	thumb_func_start sub_02016454
sub_02016454: ; 0x02016454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #0
	add r2, #3
	add r5, r0, #0
	add r6, r3, #0
	bl sub_02016340
	add r0, sp, #0
	ldrb r0, [r0, #3]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r7, [r0, #0x24]
	add r0, r5, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0201648A
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020162F8
	b _020164AA
_0201648A:
	cmp r0, #0x15
	bne _020164A6
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0]
	b _020164AA
_020164A6:
	bl sub_02022974
_020164AA:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _020164C4
	add r0, r5, #0
	add r1, sp, #4
	bl sub_020162F8
	b _020164E4
_020164C4:
	cmp r0, #0x15
	bne _020164E0
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _020164E4
_020164E0:
	bl sub_02022974
_020164E4:
	ldr r0, [sp, #4]
	add r0, r7, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02016454

	thumb_func_start sub_020164FC
sub_020164FC: ; 0x020164FC
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	sub r0, r2, r0
	bpl _02016508
	mov r0, #0xf
	bx lr
_02016508:
	cmp r0, #0
	ble _02016510
	mov r0, #0x10
	bx lr
_02016510:
	mov r0, #0x11
	bx lr
	thumb_func_end sub_020164FC

	thumb_func_start sub_02016514
sub_02016514: ; 0x02016514
	add r2, r0, #0
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x74]
	mov r1, #1
	neg r3, r2
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	ldr r3, _0201652C ; =sub_02008274
	asr r2, r2, #3
	bx r3
	nop
_0201652C: .word sub_02008274
	thumb_func_end sub_02016514

	thumb_func_start sub_02016530
sub_02016530: ; 0x02016530
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016548
	mov r0, #1
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_02016530

	thumb_func_start sub_02016540
sub_02016540: ; 0x02016540
	mov r1, #1
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02016540

	thumb_func_start sub_02016548
sub_02016548: ; 0x02016548
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x58]
	mov r1, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x5c]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #0xa
	mov r2, #0
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0]
	add r2, #0xf3
	bl sub_02007DEC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016548

	thumb_func_start sub_02016590
sub_02016590: ; 0x02016590
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	add r4, r0, #0
	bl sub_02016340
	add r0, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	ldr r1, [r1, #0x24]
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016590

	thumb_func_start sub_020165B8
sub_020165B8: ; 0x020165B8
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02016354
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_020165B8

	thumb_func_start sub_020165DC
sub_020165DC: ; 0x020165DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02016354
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r2, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020165DC

	thumb_func_start sub_02016604
sub_02016604: ; 0x02016604
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020163C8
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02016604

	thumb_func_start sub_02016628
sub_02016628: ; 0x02016628
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020163C8
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_020E1F6C
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016628

	thumb_func_start sub_02016650
sub_02016650: ; 0x02016650
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020163C8
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_020E1F6C
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016650

	thumb_func_start sub_02016678
sub_02016678: ; 0x02016678
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r1, sp, #0
	add r5, r0, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _020166AC
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #3]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_020162F8
	b _020166DA
_020166AC:
	cmp r0, #0x15
	bne _020166D6
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #3
	add r2, #2
	bl sub_02016340
	add r0, sp, #0
	ldrb r1, [r0, #3]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [sp, #0xc]
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #8]
	b _020166DA
_020166D6:
	bl sub_02022974
_020166DA:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x11
	bls _020166F0
	bl sub_02022974
_020166F0:
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_020164FC
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0201671E
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02016320
	add r0, r5, #0
	add r1, sp, #4
	bl sub_020162F8
	b _02016742
_0201671E:
	cmp r0, #0x15
	bne _0201673E
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #3
	add r2, #2
	bl sub_02016340
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _02016742
_0201673E:
	bl sub_02022974
_02016742:
	add r0, sp, #0
	ldrb r1, [r0, #1]
	cmp r1, r4
	bne _02016754
	ldrb r0, [r0, #3]
	ldr r1, [sp, #4]
	lsl r0, r0, #2
	add r0, r5, r0
	str r1, [r0, #0x24]
_02016754:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016678

	thumb_func_start sub_02016758
sub_02016758: ; 0x02016758
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02016320
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	bl sub_020162A0
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02016758

	thumb_func_start sub_0201677C
sub_0201677C: ; 0x0201677C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0201678A
	bl sub_02022974
_0201678A:
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0xc]
	bl sub_020162A0
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x4c]
	pop {r4, pc}
	thumb_func_end sub_0201677C

	thumb_func_start sub_020167A0
sub_020167A0: ; 0x020167A0
	ldr r1, [r0, #0x4c]
	add r2, r1, #1
	str r2, [r0, #0x4c]
	ldr r1, [r0, #0x48]
	cmp r2, r1
	blt _020167B6
	mov r1, #0
	str r1, [r0, #0x50]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x48]
	bx lr
_020167B6:
	ldr r1, [r0, #0x50]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_020167A0

	thumb_func_start sub_020167BC
sub_020167BC: ; 0x020167BC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	bl sub_020162F8
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02016320
	add r2, sp, #0
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020167BC

	thumb_func_start sub_020167E8
sub_020167E8: ; 0x020167E8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	bl sub_020162F8
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02016320
	add r2, sp, #0
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_02008274
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020167E8

	thumb_func_start sub_02016814
sub_02016814: ; 0x02016814
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #8
	add r4, r0, #0
	bl sub_020162F8
	add r1, sp, #0
	add r0, r4, #0
	add r1, #1
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	bne _0201683C
	add r0, r4, #0
	add r1, sp, #4
	bl sub_020162F8
	b _0201685C
_0201683C:
	cmp r0, #0x15
	bne _02016858
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _0201685C
_02016858:
	bl sub_02022974
_0201685C:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0201687A
	ldr r0, [r4, #0]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0201687A:
	cmp r0, #0x17
	bne _0201688C
	ldr r0, [r4, #0]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_02008274
	add sp, #0xc
	pop {r3, r4, pc}
_0201688C:
	bl sub_02022974
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02016814

	thumb_func_start sub_02016894
sub_02016894: ; 0x02016894
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02016454
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020168C4 ; =0x020F983C
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_020168C4: .word 0x020F983C
	thumb_func_end sub_02016894

	thumb_func_start sub_020168C8
sub_020168C8: ; 0x020168C8
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02016454
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _020168FC ; =0x020F983C
	ldrsh r1, [r1, r2]
	mul r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	asr r1, r1, #0xc
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_020168FC: .word 0x020F983C
	thumb_func_end sub_020168C8

	thumb_func_start sub_02016900
sub_02016900: ; 0x02016900
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r4, r0, #0
	add r1, #1
	bl sub_02016320
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #8
	bne _0201692C
	ldrb r0, [r0, #1]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_0201692C:
	cmp r1, #9
	bne _0201693E
	ldrb r0, [r0, #1]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x64]
	pop {r3, r4, pc}
_0201693E:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016900

	thumb_func_start sub_02016948
sub_02016948: ; 0x02016948
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r4, r0, #0
	add r1, #1
	bl sub_02016320
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #8
	bne _02016978
	ldrb r0, [r0, #1]
	ldr r1, [r4, #0x60]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02016978:
	cmp r1, #9
	bne _0201698E
	ldrb r0, [r0, #1]
	ldr r1, [r4, #0x64]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x64]
	pop {r3, r4, pc}
_0201698E:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016948

	thumb_func_start sub_02016998
sub_02016998: ; 0x02016998
	push {r3, r4, r5, lr}
	sub sp, #8
	add r1, sp, #0
	add r1, #3
	add r5, r0, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #8
	bne _020169B4
	add r4, r5, #0
	add r4, #0x60
	b _020169F4
_020169B4:
	cmp r0, #9
	bne _020169BE
	add r4, r5, #0
	add r4, #0x64
	b _020169F4
_020169BE:
	cmp r0, #0xa
	bne _020169C8
	add r4, r5, #0
	add r4, #0x68
	b _020169F4
_020169C8:
	cmp r0, #0xb
	bne _020169D2
	add r4, r5, #0
	add r4, #0x6c
	b _020169F4
_020169D2:
	cmp r0, #0xc
	bne _020169DC
	add r4, r5, #0
	add r4, #0x70
	b _020169F4
_020169DC:
	cmp r0, #0xd
	bne _020169E6
	add r4, r5, #0
	add r4, #0x74
	b _020169F4
_020169E6:
	cmp r0, #0xe
	bne _020169F0
	add r4, r5, #0
	add r4, #0x78
	b _020169F4
_020169F0:
	bl sub_02022974
_020169F4:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	bne _02016A10
	add r0, r5, #0
	add r1, sp, #4
	bl sub_020162F8
	b _02016A30
_02016A10:
	cmp r0, #0x15
	bne _02016A2C
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02016320
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _02016A30
_02016A2C:
	bl sub_02022974
_02016A30:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201630C
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _02016A48
	ldr r0, [sp, #4]
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02016A48:
	cmp r0, #0x17
	bne _02016A58
	ldr r0, [sp, #4]
	ldr r1, [r4, #0]
	add sp, #8
	add r0, r1, r0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02016A58:
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016998

	thumb_func_start sub_02016A60
sub_02016A60: ; 0x02016A60
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, [r4, #0]
	beq _02016A82
	ldr r3, [r4, #0x60]
	ldr r2, [r4, #0x68]
	ldr r5, [r4, #0x58]
	add r2, r3, r2
	mov r1, #0
	sub r2, r5, r2
	bl sub_02007DEC
	b _02016A92
_02016A82:
	ldr r3, [r4, #0x58]
	ldr r2, [r4, #0x60]
	ldr r5, [r4, #0x68]
	add r2, r3, r2
	mov r1, #0
	add r2, r5, r2
	bl sub_02007DEC
_02016A92:
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x64]
	ldr r5, [r4, #0x6c]
	add r2, r3, r2
	ldr r0, [r4, #0]
	mov r1, #1
	add r2, r5, r2
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02016A60

	thumb_func_start sub_02016AA8
sub_02016AA8: ; 0x02016AA8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xc
	add r2, r1, #0
	ldr r3, [r4, #0x70]
	add r2, #0xf4
	ldr r0, [r4, #0]
	add r2, r3, r2
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r3, [r4, #0x74]
	add r2, #0xf3
	ldr r0, [r4, #0]
	add r2, r3, r2
	bl sub_02007DEC
	ldr r2, [r4, #0x78]
	ldr r0, [r4, #0]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_02007DEC
	ldr r0, _02016B0C ; =0x000001CE
	ldrb r0, [r4, r0]
	cmp r0, #0x1b
	bne _02016AF0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	bge _02016B0A
	add r0, r4, #0
	bl sub_02016514
	pop {r4, pc}
_02016AF0:
	cmp r0, #0x1d
	bne _02016B02
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _02016B0A
	add r0, r4, #0
	bl sub_02016514
	pop {r4, pc}
_02016B02:
	cmp r0, #0x1c
	beq _02016B0A
	bl sub_02022974
_02016B0A:
	pop {r4, pc}
	; .align 2, 0
_02016B0C: .word 0x000001CE
	thumb_func_end sub_02016AA8

	thumb_func_start sub_02016B10
sub_02016B10: ; 0x02016B10
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02016320
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	bl sub_020162A0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	beq _02016B32
	cmp r0, #0xa
	bne _02016B42
_02016B32:
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x68]
	pop {r3, r4, pc}
_02016B42:
	cmp r0, #9
	beq _02016B4A
	cmp r0, #0xb
	bne _02016B5A
_02016B4A:
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x6c]
	pop {r3, r4, pc}
_02016B5A:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016B10

	thumb_func_start sub_02016B64
sub_02016B64: ; 0x02016B64
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x54
	bl sub_020162F8
	mov r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016B64

	thumb_func_start sub_02016B78
sub_02016B78: ; 0x02016B78
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #4
	add r1, #2
	add r4, r0, #0
	bl sub_0201630C
	add r1, sp, #4
	add r0, r4, #0
	add r1, #1
	bl sub_0201630C
	add r0, r4, #0
	add r1, sp, #4
	bl sub_0201630C
	add r0, r4, #0
	add r1, sp, #8
	bl sub_020162F8
	ldr r0, [sp, #8]
	add r3, sp, #4
	str r0, [sp]
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r4, #0]
	bl sub_020086FC
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016B78

	thumb_func_start sub_02016BB8
sub_02016BB8: ; 0x02016BB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020087B4
	cmp r0, #0
	beq _02016BCE
	ldr r0, _02016BD0 ; =0x000001CF
	mov r1, #1
	strb r1, [r4, r0]
	str r1, [r4, #0x18]
_02016BCE:
	pop {r4, pc}
	; .align 2, 0
_02016BD0: .word 0x000001CF
	thumb_func_end sub_02016BB8

	thumb_func_start sub_02016BD4
sub_02016BD4: ; 0x02016BD4
	ldr r1, _02016BDC ; =0x000001CD
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_02016BDC: .word 0x000001CD
	thumb_func_end sub_02016BD4

	thumb_func_start sub_02016BE0
sub_02016BE0: ; 0x02016BE0
	push {r4, lr}
	ldr r1, _02016C14 ; =0x000001CE
	add r4, r0, #0
	add r1, r4, r1
	bl sub_0201630C
	ldr r0, _02016C14 ; =0x000001CE
	mov r1, #1
	ldrb r0, [r4, r0]
	add r2, r1, #0
	cmp r0, #0x1b
	beq _02016BFE
	cmp r0, #0x1d
	beq _02016BFE
	mov r2, #0
_02016BFE:
	cmp r2, #0
	bne _02016C08
	cmp r0, #0x1c
	beq _02016C08
	mov r1, #0
_02016C08:
	cmp r1, #0
	bne _02016C10
	bl sub_02022974
_02016C10:
	pop {r4, pc}
	nop
_02016C14: .word 0x000001CE
	thumb_func_end sub_02016BE0

	thumb_func_start sub_02016C18
sub_02016C18: ; 0x02016C18
	ldr r3, _02016C20 ; =sub_02016D04
	mov r1, #0
	bx r3
	nop
_02016C20: .word sub_02016D04
	thumb_func_end sub_02016C18

	thumb_func_start sub_02016C24
sub_02016C24: ; 0x02016C24
	ldr r3, _02016C2C ; =sub_02016D04
	mov r1, #1
	bx r3
	nop
_02016C2C: .word sub_02016D04
	thumb_func_end sub_02016C24

	thumb_func_start sub_02016C30
sub_02016C30: ; 0x02016C30
	ldr r3, _02016C38 ; =sub_02016D04
	mov r1, #2
	bx r3
	nop
_02016C38: .word sub_02016D04
	thumb_func_end sub_02016C30

	thumb_func_start sub_02016C3C
sub_02016C3C: ; 0x02016C3C
	ldr r3, _02016C44 ; =sub_02016D04
	mov r1, #3
	bx r3
	nop
_02016C44: .word sub_02016D04
	thumb_func_end sub_02016C3C

	thumb_func_start sub_02016C48
sub_02016C48: ; 0x02016C48
	ldr r3, _02016C50 ; =sub_02016D04
	mov r1, #4
	bx r3
	nop
_02016C50: .word sub_02016D04
	thumb_func_end sub_02016C48

	thumb_func_start sub_02016C54
sub_02016C54: ; 0x02016C54
	push {r3, lr}
	cmp r0, #0x18
	bne _02016C60
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	pop {r3, pc}
_02016C60:
	cmp r0, #0x19
	bne _02016C6E
	ldr r1, [r1, #0]
	ldr r0, [r2, #0]
	add r0, r1, r0
	str r0, [r3, #0]
	pop {r3, pc}
_02016C6E:
	cmp r0, #0x1a
	bne _02016C7C
	ldr r1, [r3, #0]
	ldr r0, [r2, #0]
	add r0, r1, r0
	str r0, [r3, #0]
	pop {r3, pc}
_02016C7C:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02016C54

	thumb_func_start sub_02016C84
sub_02016C84: ; 0x02016C84
	push {r3, lr}
	sub r0, #0x23
	cmp r0, #4
	bhi _02016CFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02016C98: ; jump table
	.short _02016CA2 - _02016C98 - 2 ; case 0
	.short _02016CB4 - _02016C98 - 2 ; case 1
	.short _02016CC6 - _02016C98 - 2 ; case 2
	.short _02016CD8 - _02016C98 - 2 ; case 3
	.short _02016CEA - _02016C98 - 2 ; case 4
_02016CA2:
	add r0, r1, #0
	add r0, #0x3c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x68
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x68]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CB4:
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x6c
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x6c]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CC6:
	add r0, r1, #0
	add r0, #0x44
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x70
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CD8:
	add r0, r1, #0
	add r0, #0x48
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x74
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CEA:
	add r0, r1, #0
	add r0, #0x4c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x78
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x78]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02016CFC:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02016C84

	thumb_func_start sub_02016D04
sub_02016D04: ; 0x02016D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	bl sub_020162AC
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2c
	bl sub_0201630C
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2d
	bl sub_0201630C
	mov r0, #0xc
	mul r0, r6
	ldr r1, _02016DA0 ; =0x020E559C
	str r0, [sp]
	ldr r0, [r1, r0]
	mov r4, #0
	cmp r0, #0
	ble _02016D5A
	ldr r1, _02016DA4 ; =0x020E5598
	ldr r0, [sp]
	add r6, r1, r0
	ldr r0, [sp, #4]
	add r7, r0, #4
_02016D44:
	lsl r1, r4, #2
	add r0, r5, #0
	add r1, r7, r1
	bl sub_020162F8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r6, #4]
	cmp r4, r0
	blt _02016D44
_02016D5A:
	ldr r1, _02016DA8 ; =0x020E55A0
	ldr r0, [sp]
	add r2, r5, #0
	ldr r0, [r1, r0]
	lsl r1, r0, #2
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02016C84
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _02016D8C
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r0, #0
	ldr r2, [r2, #0x50]
	blx r2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02016D8C:
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #4]
	add r0, #0x2d
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02016DA0: .word 0x020E559C
_02016DA4: .word 0x020E5598
_02016DA8: .word 0x020E55A0
	thumb_func_end sub_02016D04

	thumb_func_start sub_02016DAC
sub_02016DAC: ; 0x02016DAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	ldr r2, [r4, #0x14]
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _02016E38
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02016DD4: ; jump table
	.short _02016DDC - _02016DD4 - 2 ; case 0
	.short _02016DF0 - _02016DD4 - 2 ; case 1
	.short _02016E08 - _02016DD4 - 2 ; case 2
	.short _02016E1E - _02016DD4 - 2 ; case 3
_02016DDC:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02016E60 ; =0x020F983C
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016E3C
_02016DF0:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02016E60 ; =0x020F983C
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0, #0]
	b _02016E3C
_02016E08:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02016E60 ; =0x020F983C
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016E3C
_02016E1E:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02016E60 ; =0x020F983C
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016E3C
_02016E38:
	bl sub_02022974
_02016E3C:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02016E5E
	mov r0, #0
	str r0, [r4, #0]
_02016E5E:
	pop {r4, pc}
	; .align 2, 0
_02016E60: .word 0x020F983C
	thumb_func_end sub_02016DAC

	thumb_func_start sub_02016E64
sub_02016E64: ; 0x02016E64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	mul r0, r1
	ldr r1, [r4, #0x18]
	bl sub_020E1F6C
	ldr r1, [r4, #0x14]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _02016EF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02016E92: ; jump table
	.short _02016E9A - _02016E92 - 2 ; case 0
	.short _02016EAE - _02016E92 - 2 ; case 1
	.short _02016EC6 - _02016E92 - 2 ; case 2
	.short _02016EDC - _02016E92 - 2 ; case 3
_02016E9A:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02016F20 ; =0x020F983C
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016EFA
_02016EAE:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02016F20 ; =0x020F983C
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0, #0]
	b _02016EFA
_02016EC6:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02016F20 ; =0x020F983C
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016EFA
_02016EDC:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02016F20 ; =0x020F983C
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0]
	b _02016EFA
_02016EF6:
	bl sub_02022974
_02016EFA:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02016F1C
	mov r0, #0
	str r0, [r4, #0]
_02016F1C:
	pop {r4, pc}
	nop
_02016F20: .word 0x020F983C
	thumb_func_end sub_02016E64

	thumb_func_start sub_02016F24
sub_02016F24: ; 0x02016F24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x14]
	ldr r5, [r4, #8]
	mul r2, r3
	ldr r0, [r1, #0]
	add r2, r5, r2
	add r0, r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x2c
	add r1, r4, #0
	ldrb r0, [r0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x14]
	add r1, r0, #1
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _02016F5C
	mov r0, #0
	str r0, [r4, #0]
_02016F5C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02016F24

	thumb_func_start sub_02016F60
sub_02016F60: ; 0x02016F60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r0, #1
	ldr r0, [r4, #8]
	mul r0, r1
	ldr r1, [r4, #0xc]
	bl sub_020E1F6C
	ldr r1, [r4, #0x24]
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x2c
	add r1, r4, #0
	ldrb r0, [r0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x10]
	add r1, r0, #1
	str r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _02016F98
	mov r0, #0
	str r0, [r4, #0]
_02016F98:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016F60

	thumb_func_start sub_02016F9C
sub_02016F9C: ; 0x02016F9C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #8]
	mul r0, r1
	ldr r1, [r4, #0x24]
	add r2, r2, r0
	ldr r0, [r1, #0]
	add r0, r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _02016FC0
	cmp r0, #0x1a
	bne _02016FE6
_02016FC0:
	cmp r2, #0
	ldr r2, [r4, #0x10]
	bge _02016FD6
	ldr r1, [r4, #0x24]
	ldr r0, [r1, #0]
	cmp r0, r2
	bgt _0201701C
	str r2, [r1, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0201701C
_02016FD6:
	ldr r1, [r4, #0x24]
	ldr r0, [r1, #0]
	cmp r0, r2
	blt _0201701C
	str r2, [r1, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0201701C
_02016FE6:
	cmp r0, #0x19
	bne _02017018
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0x30]
	ldr r0, [r1, #0]
	add r3, r3, r0
	cmp r2, #0
	ldr r2, [r4, #0x10]
	bge _02017008
	cmp r3, r2
	bgt _0201701C
	sub r2, r2, r3
	add r0, r0, r2
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0201701C
_02017008:
	cmp r3, r2
	blt _0201701C
	sub r2, r3, r2
	sub r0, r0, r2
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0201701C
_02017018:
	bl sub_02022974
_0201701C:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02016C54
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02016F9C

	.rodata


	.global Unk_020E5598
Unk_020E5598: ; 0x020E5598
	.incbin "incbin/arm9_rodata.bin", 0x958, 0x994 - 0x958

	.global Unk_020E55D4
Unk_020E55D4: ; 0x020E55D4
	.incbin "incbin/arm9_rodata.bin", 0x994, 0x88

