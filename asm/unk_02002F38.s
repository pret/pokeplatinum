	.include "macros/function.inc"
	.include "include/unk_02002F38.inc"

	

	.text


	thumb_func_start sub_02002F38
sub_02002F38: ; 0x02002F38
	push {r4, lr}
	mov r1, #0x12
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x12
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02002F38

	thumb_func_start sub_02002F54
sub_02002F54: ; 0x02002F54
	ldr r3, _02002F58 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02002F58: .word sub_020181C4
	thumb_func_end sub_02002F54

	thumb_func_start sub_02002F5C
sub_02002F5C: ; 0x02002F5C
	push {r3, r4}
	mov r4, #0x14
	mul r4, r1
	str r2, [r0, r4]
	add r1, r0, r4
	ldr r0, [sp, #8]
	str r3, [r1, #4]
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02002F5C

	thumb_func_start sub_02002F70
sub_02002F70: ; 0x02002F70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp, #4]
	add r0, r3, #0
	add r1, r4, #0
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02018144
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	str r4, [sp]
	bl sub_02002F5C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02002F70

	thumb_func_start sub_02002FA0
sub_02002FA0: ; 0x02002FA0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x14
	add r5, r1, #0
	mul r5, r0
	ldr r0, [r4, r5]
	bl sub_020181C4
	add r0, r4, r5
	ldr r0, [r0, #4]
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02002FA0

	thumb_func_start sub_02002FBC
sub_02002FBC: ; 0x02002FBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, sp, #8
	ldrh r7, [r0, #0x10]
	add r6, r2, #0
	mov r0, #0x14
	mul r6, r0
	str r1, [sp]
	add r0, r1, #0
	ldr r1, [r5, r6]
	lsl r4, r3, #1
	add r1, r1, r4
	add r2, r7, #0
	bl sub_020C4B18
	add r1, r5, r6
	ldr r1, [r1, #4]
	ldr r0, [sp]
	add r1, r1, r4
	add r2, r7, #0
	bl sub_020C4B18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02002FBC

	thumb_func_start sub_02002FEC
sub_02002FEC: ; 0x02002FEC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #4
	ldr r4, [sp, #0x1c]
	bl sub_02006F88
	add r6, r0, #0
	bne _02003006
	bl sub_02022974
_02003006:
	cmp r4, #0
	bne _0200300E
	ldr r0, [sp, #4]
	ldr r4, [r0, #8]
_0200300E:
	add r0, sp, #8
	ldrh r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	mov r1, #0x14
	mul r1, r2
	add r1, r5, r1
	lsl r0, r0, #1
	ldr r1, [r1, #8]
	add r0, r4, r0
	cmp r0, r1
	bls _02003028
	bl sub_02022974
_02003028:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	add r3, sp, #8
	ldr r2, [r1, #0xc]
	ldrh r1, [r3, #0x1c]
	ldrh r3, [r3, #0x18]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r2, r1
	ldr r2, [sp, #0x18]
	bl sub_02002FBC
	add r0, r6, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02002FEC

	thumb_func_start sub_02003050
sub_02003050: ; 0x02003050
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	add r4, sp, #8
	ldrh r4, [r4, #0x18]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	bl sub_02002FEC
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02003050

	thumb_func_start sub_02003070
sub_02003070: ; 0x02003070
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x14
	add r6, r0, #0
	mul r1, r4
	add r5, r2, #0
	add r1, r6, r1
	add r7, r3, #0
	lsl r0, r5, #1
	ldr r1, [r1, #8]
	add r0, r7, r0
	cmp r0, r1
	bls _0200308E
	bl sub_02022974
_0200308E:
	cmp r4, #3
	bhi _020030C6
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200309E: ; jump table
	.short _020030A6 - _0200309E - 2 ; case 0
	.short _020030AE - _0200309E - 2 ; case 1
	.short _020030B6 - _0200309E - 2 ; case 2
	.short _020030BE - _0200309E - 2 ; case 3
_020030A6:
	bl sub_020241F0
	add r1, r0, #0
	b _020030CC
_020030AE:
	bl sub_02024200
	add r1, r0, #0
	b _020030CC
_020030B6:
	bl sub_02024210
	add r1, r0, #0
	b _020030CC
_020030BE:
	bl sub_02024218
	add r1, r0, #0
	b _020030CC
_020030C6:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_020030CC:
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	lsl r2, r5, #1
	str r0, [sp]
	add r1, r1, r2
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_02002FBC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02003070

	thumb_func_start sub_020030E4
sub_020030E4: ; 0x020030E4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r3, #0
	add r2, sp, #0
	add r3, r4, #0
	bl sub_02006F88
	add r4, r0, #0
	bne _020030FA
	bl sub_02022974
_020030FA:
	cmp r5, #0
	bne _02003102
	ldr r0, [sp]
	ldr r5, [r0, #8]
_02003102:
	ldr r0, [sp]
	add r2, r5, #0
	ldr r1, [r0, #0xc]
	add r0, sp, #0
	ldrh r0, [r0, #0x10]
	lsl r0, r0, #1
	add r0, r1, r0
	ldr r1, [sp, #0x14]
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020030E4

	thumb_func_start sub_02003120
sub_02003120: ; 0x02003120
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	ldrh r1, [r4, #0x14]
	add r6, r3, #0
	str r1, [sp]
	ldrh r1, [r4, #0x10]
	lsl r4, r2, #1
	ldr r2, [sp]
	lsl r7, r1, #1
	mov r1, #0x14
	mul r6, r1
	mul r1, r0
	ldr r0, [r5, r1]
	str r1, [sp, #4]
	ldr r1, [r5, r6]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_020C4B18
	ldr r0, [sp, #4]
	add r1, r5, r6
	ldr r0, [r5, r0]
	ldr r1, [r1, #4]
	ldr r2, [sp]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_020C4B18
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02003120

	thumb_func_start sub_02003164
sub_02003164: ; 0x02003164
	mov r2, #0x14
	mul r2, r1
	ldr r0, [r0, r2]
	bx lr
	thumb_func_end sub_02003164

	thumb_func_start sub_0200316C
sub_0200316C: ; 0x0200316C
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200316C

	thumb_func_start sub_02003178
sub_02003178: ; 0x02003178
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #8]
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	mov r6, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	add r7, r1, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r4, r6, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x28
	ldrh r0, [r0, #8]
	str r0, [sp, #0xc]
_0200319A:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200327C
	cmp r0, #1
	bne _0200320E
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r1, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bl sub_0200327C
	cmp r0, #0
	bne _0200320E
	mov r0, #0x14
	add r6, r4, #0
	mul r6, r0
	add r0, r4, #0
	add r1, r5, r6
	add r2, sp, #0x30
	bl sub_020032D0
	ldr r0, [sp, #0x3c]
	add r1, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	add r0, r5, r6
	ldrh r1, [r1, #8]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x38]
	add r0, #0xc
	bl sub_0200330C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02003290
	cmp r4, #4
	blo _020031FC
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #8
	bl sub_02003504
	b _02003206
_020031FC:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl sub_02003504
_02003206:
	ldr r1, [sp, #0xc]
	add r0, sp, #0x28
	strh r1, [r0, #8]
	mov r6, #1
_0200320E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _0200319A
	cmp r6, #1
	bne _02003268
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r2, [r5, r0]
	ldr r1, _02003274 ; =0xFFFF0003
	and r1, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x12
	orr r2, r7
	lsl r2, r2, #0x12
	lsr r2, r2, #0x10
	orr r1, r2
	strh r1, [r5, r0]
	add r1, r0, #2
	ldrh r1, [r5, r1]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1f
	bne _02003268
	add r1, r0, #2
	ldrh r2, [r5, r1]
	mov r1, #1
	lsl r1, r1, #0xe
	orr r2, r1
	add r1, r0, #2
	strh r2, [r5, r1]
	ldrh r2, [r5, r0]
	mov r1, #3
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r5, r0]
	mov r2, #0
	add r0, r0, #4
	strb r2, [r5, r0]
	ldr r0, _02003278 ; =sub_020033CC
	add r1, r5, #0
	sub r2, r2, #2
	bl sub_0200D9E8
_02003268:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_02003274: .word 0xFFFF0003
_02003278: .word sub_020033CC
	thumb_func_end sub_02003178

	thumb_func_start sub_0200327C
sub_0200327C: ; 0x0200327C
	mov r3, #1
	add r2, r3, #0
	lsl r2, r1
	tst r0, r2
	bne _02003288
	mov r3, #0
_02003288:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200327C

	thumb_func_start sub_02003290
sub_02003290: ; 0x02003290
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020032C8 ; =0x0000011A
	add r4, r1, #0
	ldrh r0, [r5, r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	bl sub_0200327C
	cmp r0, #1
	beq _020032C6
	ldr r3, _020032C8 ; =0x0000011A
	ldr r1, _020032CC ; =0xFFFFC000
	ldrh r2, [r5, r3]
	add r0, r2, #0
	lsl r2, r2, #0x12
	lsr r6, r2, #0x12
	mov r2, #1
	lsl r2, r4
	orr r2, r6
	lsl r2, r2, #0x10
	and r0, r1
	lsr r2, r2, #0x10
	lsr r1, r1, #0x12
	and r1, r2
	orr r0, r1
	strh r0, [r5, r3]
_020032C6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020032C8: .word 0x0000011A
_020032CC: .word 0xFFFFC000
	thumb_func_end sub_02003290

	thumb_func_start sub_020032D0
sub_020032D0: ; 0x020032D0
	push {r4, r5}
	cmp r0, #4
	ldr r0, [r1, #8]
	bge _020032DC
	lsl r0, r0, #0x13
	b _020032E0
_020032DC:
	lsr r0, r0, #9
	lsl r0, r0, #0x18
_020032E0:
	mov r4, #0
	lsr r0, r0, #0x18
	add r5, r4, #0
	cmp r0, #0
	bls _02003300
	mov r3, #1
_020032EC:
	add r1, r3, #0
	lsl r1, r5
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, r0
	blo _020032EC
_02003300:
	ldrh r0, [r2]
	and r0, r4
	strh r0, [r2]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020032D0

	thumb_func_start sub_0200330C
sub_0200330C: ; 0x0200330C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r2, #0
	bge _0200333C
	add r0, r2, #0
	bl sub_020D4070
	add r0, r0, #2
	ldrh r1, [r5, #6]
	mov r2, #0xf
	lsl r0, r0, #0x10
	bic r1, r2
	lsr r2, r0, #0x10
	mov r0, #0xf
	and r0, r2
	orr r0, r1
	strh r0, [r5, #6]
	ldrh r1, [r5, #2]
	mov r0, #0x3f
	bic r1, r0
	strh r1, [r5, #2]
	b _0200335A
_0200333C:
	ldrh r1, [r5, #6]
	mov r0, #0xf
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strh r0, [r5, #6]
	ldrh r0, [r5, #2]
	mov r1, #0x3f
	bic r0, r1
	lsl r1, r2, #0x10
	lsr r2, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r0, r1
	strh r0, [r5, #2]
_0200335A:
	strh r6, [r5]
	ldrh r1, [r5, #2]
	ldr r0, _020033BC ; =0xFFFFF83F
	add r3, sp, #0
	and r1, r0
	lsl r0, r4, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldr r0, _020033C0 ; =0xFFFF07FF
	add r2, r1, #0
	ldrb r1, [r3, #0x10]
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r5, #2]
	ldrh r0, [r5, #4]
	ldr r2, _020033C4 ; =0xFFFF8000
	ldrh r6, [r3, #0x14]
	lsr r3, r2, #0x11
	and r0, r2
	and r3, r6
	orr r0, r3
	strh r0, [r5, #4]
	ldrh r3, [r5, #6]
	ldr r0, _020033C8 ; =0xFFFFFC0F
	and r0, r3
	ldrh r3, [r5, #2]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1a
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x16
	orr r0, r3
	strh r0, [r5, #6]
	cmp r4, r1
	ldrh r1, [r5, #4]
	bhs _020033B0
	sub r0, r2, #1
	and r0, r1
	strh r0, [r5, #4]
	pop {r4, r5, r6, pc}
_020033B0:
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_020033BC: .word 0xFFFFF83F
_020033C0: .word 0xFFFF07FF
_020033C4: .word 0xFFFF8000
_020033C8: .word 0xFFFFFC0F
	thumb_func_end sub_0200330C

	thumb_func_start sub_020033CC
sub_020033CC: ; 0x020033CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x47
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	add r5, r0, #0
	cmp r2, #1
	bne _0200340C
	mov r2, #0
	strb r2, [r4, r1]
	sub r2, r1, #2
	ldrh r3, [r4, r2]
	ldr r2, _0200345C ; =0xFFFFC000
	add r5, r3, #0
	and r5, r2
	sub r3, r1, #2
	strh r5, [r4, r3]
	sub r3, r1, #4
	ldrh r5, [r4, r3]
	ldr r3, _02003460 ; =0xFFFF0003
	sub r2, r2, #1
	and r5, r3
	sub r3, r1, #4
	strh r5, [r4, r3]
	sub r3, r1, #2
	ldrh r3, [r4, r3]
	sub r1, r1, #2
	and r2, r3
	strh r2, [r4, r1]
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
_0200340C:
	sub r0, r1, #4
	ldrh r2, [r4, r0]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _02003458
	sub r0, r1, #2
	ldrh r0, [r4, r0]
	ldr r3, _0200345C ; =0xFFFFC000
	lsl r2, r2, #0x10
	lsr r6, r2, #0x12
	lsr r2, r3, #0x12
	and r0, r3
	and r2, r6
	orr r2, r0
	sub r0, r1, #2
	strh r2, [r4, r0]
	add r0, r4, #0
	bl sub_02003468
	add r0, r4, #0
	bl sub_02003488
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bne _02003458
	add r0, r1, #2
	ldrh r2, [r4, r0]
	ldr r0, _02003464 ; =0xFFFFBFFF
	and r2, r0
	add r0, r1, #2
	strh r2, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
_02003458:
	pop {r4, r5, r6, pc}
	nop
_0200345C: .word 0xFFFFC000
_02003460: .word 0xFFFF0003
_02003464: .word 0xFFFFBFFF
	thumb_func_end sub_020033CC

	thumb_func_start sub_02003468
sub_02003468: ; 0x02003468
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x10
_02003470:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020034A8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02003470
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02003468

	thumb_func_start sub_02003488
sub_02003488: ; 0x02003488
	push {r4, r5, r6, lr}
	mov r4, #4
	add r6, r4, #0
	add r5, r0, #0
	add r6, #0xfc
_02003492:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020034A8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _02003492
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02003488

	thumb_func_start sub_020034A8
sub_020034A8: ; 0x020034A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bl sub_0200327C
	cmp r0, #0
	beq _020034FC
	mov r0, #0x14
	mul r0, r4
	add r2, r5, r0
	ldrh r0, [r2, #0x12]
	ldrh r3, [r2, #0xe]
	lsl r1, r0, #0x16
	lsl r3, r3, #0x1a
	lsr r1, r1, #0x1a
	lsr r3, r3, #0x1a
	cmp r1, r3
	bhs _020034EC
	ldr r3, _02003500 ; =0xFFFFFC0F
	and r3, r0
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x16
	orr r0, r3
	strh r0, [r2, #0x12]
	pop {r4, r5, r6, pc}
_020034EC:
	ldr r1, _02003500 ; =0xFFFFFC0F
	and r0, r1
	strh r0, [r2, #0x12]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02003504
_020034FC:
	pop {r4, r5, r6, pc}
	nop
_02003500: .word 0xFFFFFC0F
	thumb_func_end sub_020034A8

	thumb_func_start sub_02003504
sub_02003504: ; 0x02003504
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x14
	mul r1, r0
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0xc
	add r7, r2, #0
	add r4, r6, #0
	str r0, [sp, #8]
_02003524:
	ldrh r0, [r5, #0xc]
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	bl sub_0200327C
	cmp r0, #0
	beq _02003544
	ldr r0, [r5, #0]
	lsl r1, r4, #1
	ldr r2, [r5, #4]
	add r0, r0, r1
	add r1, r2, r1
	ldr r2, [sp, #8]
	add r3, r7, #0
	bl sub_02003560
_02003544:
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #0x10
	blo _02003524
	ldr r1, [sp, #4]
	add r5, #0xc
	lsl r1, r1, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r5, #0
	bl sub_020035EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02003504

	thumb_func_start sub_02003560
sub_02003560: ; 0x02003560
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	mov r0, #0
	add r6, r1, #0
	mov ip, r0
	str r2, [sp]
	mov lr, r3
	add r0, r3, #0
	beq _020035E8
_02003574:
	ldr r0, [sp, #4]
	mov r1, #0x1f
	ldrh r0, [r0]
	asr r2, r0, #5
	add r5, r2, #0
	and r5, r1
	ldr r1, [sp]
	asr r4, r0, #0xa
	ldrh r1, [r1, #4]
	lsl r1, r1, #0x11
	lsr r3, r1, #0x11
	ldr r1, [sp]
	ldrh r1, [r1, #2]
	lsl r1, r1, #0x15
	lsr r2, r1, #0x1b
	mov r1, #0x1f
	and r1, r4
	mov r4, #0x1f
	and r0, r4
	and r4, r3
	sub r4, r4, r0
	mul r4, r2
	asr r4, r4, #4
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	asr r4, r3, #0xa
	mov r0, #0x1f
	and r0, r4
	sub r0, r0, r1
	mul r0, r2
	asr r0, r0, #4
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	asr r3, r3, #5
	mov r1, #0x1f
	and r1, r3
	sub r1, r1, r5
	mul r1, r2
	asr r1, r1, #4
	add r1, r5, r1
	lsl r1, r1, #0x18
	lsl r0, r0, #0xa
	lsr r1, r1, #0x13
	orr r0, r1
	orr r0, r7
	strh r0, [r6]
	ldr r0, [sp, #4]
	add r6, r6, #2
	add r0, r0, #2
	str r0, [sp, #4]
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _02003574
_020035E8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02003560

	thumb_func_start sub_020035EC
sub_020035EC: ; 0x020035EC
	push {r4, r5}
	ldrh r4, [r2, #2]
	lsl r3, r4, #0x10
	lsl r4, r4, #0x15
	lsr r3, r3, #0x1b
	lsr r4, r4, #0x1b
	cmp r4, r3
	bne _02003626
	mov r3, #0x46
	lsl r3, r3, #2
	ldrh r4, [r0, r3]
	mov r2, #1
	lsl r2, r1
	lsl r1, r4, #0x10
	lsr r5, r1, #0x12
	add r1, r5, #0
	tst r1, r2
	beq _02003686
	eor r2, r5
	lsl r2, r2, #0x10
	ldr r1, _0200368C ; =0xFFFF0003
	lsr r2, r2, #0x10
	lsl r2, r2, #0x12
	and r1, r4
	lsr r2, r2, #0x10
	orr r1, r2
	strh r1, [r0, r3]
	pop {r4, r5}
	bx lr
_02003626:
	ldrh r0, [r2, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _0200365C
	lsl r0, r4, #0x10
	asr r1, r0, #0x10
	ldrh r0, [r2, #6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r3
	ble _02003646
	lsl r0, r3, #0x10
	asr r4, r0, #0x10
_02003646:
	ldrh r1, [r2, #2]
	ldr r0, _02003690 ; =0xFFFFF83F
	and r1, r0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r2, #2]
	pop {r4, r5}
	bx lr
_0200365C:
	lsl r0, r4, #0x10
	asr r1, r0, #0x10
	ldrh r0, [r2, #6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r3
	bge _02003674
	lsl r0, r3, #0x10
	asr r4, r0, #0x10
_02003674:
	ldrh r1, [r2, #2]
	ldr r0, _02003690 ; =0xFFFFF83F
	and r1, r0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r2, #2]
_02003686:
	pop {r4, r5}
	bx lr
	nop
_0200368C: .word 0xFFFF0003
_02003690: .word 0xFFFFF83F
	thumb_func_end sub_020035EC

	thumb_func_start sub_02003694
sub_02003694: ; 0x02003694
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02003844 ; =0x0000011A
	ldrh r1, [r6, r0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1f
	bne _020036B0
	sub r0, r0, #2
	ldrh r0, [r6, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #1
	beq _020036B0
	b _02003842
_020036B0:
	mov r7, #2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #0xc
_020036B8:
	ldr r0, _02003844 ; =0x0000011A
	ldrh r1, [r6, r0]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	bne _020036D8
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020036E4
	lsl r0, r1, #0x12
	lsl r1, r5, #0x10
	lsr r0, r0, #0x12
	lsr r1, r1, #0x10
	bl sub_0200327C
	cmp r0, #0
	beq _020036E4
_020036D8:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl sub_020C2C54
	cmp r5, #0xd
	bls _020036E6
_020036E4:
	b _0200380C
_020036E6:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020036F2: ; jump table
	.short _0200370E - _020036F2 - 2 ; case 0
	.short _0200371A - _020036F2 - 2 ; case 1
	.short _02003726 - _020036F2 - 2 ; case 2
	.short _02003732 - _020036F2 - 2 ; case 3
	.short _0200373E - _020036F2 - 2 ; case 4
	.short _02003752 - _020036F2 - 2 ; case 5
	.short _02003766 - _020036F2 - 2 ; case 6
	.short _0200377C - _020036F2 - 2 ; case 7
	.short _02003792 - _020036F2 - 2 ; case 8
	.short _020037A6 - _020036F2 - 2 ; case 9
	.short _020037BA - _020036F2 - 2 ; case 10
	.short _020037D0 - _020036F2 - 2 ; case 11
	.short _020037E6 - _020036F2 - 2 ; case 12
	.short _020037FA - _020036F2 - 2 ; case 13
_0200370E:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C00B4
	b _0200380C
_0200371A:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0108
	b _0200380C
_02003726:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0160
	b _0200380C
_02003732:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C01B8
	b _0200380C
_0200373E:
	bl sub_020C096C
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0A0C
	bl sub_020C0A7C
	b _0200380C
_02003752:
	bl sub_020C096C
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	add r1, r7, #0
	bl sub_020C0A0C
	bl sub_020C0A7C
	b _0200380C
_02003766:
	bl sub_020C096C
	mov r1, #1
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020C0A0C
	bl sub_020C0A7C
	b _0200380C
_0200377C:
	bl sub_020C096C
	mov r1, #6
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_020C0A0C
	bl sub_020C0A7C
	b _0200380C
_02003792:
	bl sub_020C0BBC
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0BD4
	bl sub_020C0C38
	b _0200380C
_020037A6:
	bl sub_020C0BBC
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	add r1, r7, #0
	bl sub_020C0BD4
	bl sub_020C0C38
	b _0200380C
_020037BA:
	bl sub_020C0BBC
	mov r1, #1
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020C0BD4
	bl sub_020C0C38
	b _0200380C
_020037D0:
	bl sub_020C0BBC
	mov r1, #6
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_020C0BD4
	bl sub_020C0C38
	b _0200380C
_020037E6:
	bl sub_020C0AC4
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0B0C
	bl sub_020C0B78
	b _0200380C
_020037FA:
	bl sub_020C0C78
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0C90
	bl sub_020C0CF4
_0200380C:
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #0xe
	bge _02003816
	b _020036B8
_02003816:
	ldr r3, _02003844 ; =0x0000011A
	ldr r1, _02003848 ; =0xFFFFC000
	sub r2, r3, #2
	ldrh r2, [r6, r2]
	ldrh r0, [r6, r3]
	lsl r2, r2, #0x10
	and r0, r1
	lsr r2, r2, #0x12
	lsr r1, r1, #0x12
	and r1, r2
	orr r0, r1
	strh r0, [r6, r3]
	ldrh r0, [r6, r3]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	bne _02003842
	sub r0, r3, #2
	ldrh r1, [r6, r0]
	mov r0, #3
	bic r1, r0
	sub r0, r3, #2
	strh r1, [r6, r0]
_02003842:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02003844: .word 0x0000011A
_02003848: .word 0xFFFFC000
	thumb_func_end sub_02003694

	thumb_func_start sub_0200384C
sub_0200384C: ; 0x0200384C
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bx lr
	thumb_func_end sub_0200384C

	thumb_func_start sub_02003858
sub_02003858: ; 0x02003858
	push {r3, r4}
	ldr r3, _02003874 ; =0x0000011A
	lsl r1, r1, #0x10
	ldrh r4, [r0, r3]
	ldr r2, _02003878 ; =0xFFFF7FFF
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	and r2, r4
	lsr r1, r1, #0x10
	orr r1, r2
	strh r1, [r0, r3]
	pop {r3, r4}
	bx lr
	nop
_02003874: .word 0x0000011A
_02003878: .word 0xFFFF7FFF
	thumb_func_end sub_02003858

	thumb_func_start sub_0200387C
sub_0200387C: ; 0x0200387C
	push {r3, r4}
	mov r2, #0x46
	lsl r2, r2, #2
	ldrh r3, [r0, r2]
	mov r4, #3
	bic r3, r4
	mov r4, #1
	and r1, r4
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	mov r1, #3
	and r1, r4
	orr r1, r3
	strh r1, [r0, r2]
	ldrh r3, [r0, r2]
	ldr r1, _020038A8 ; =0xFFFF0003
	and r3, r1
	ldr r1, _020038AC ; =0x0000FFFC
	orr r1, r3
	strh r1, [r0, r2]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_020038A8: .word 0xFFFF0003
_020038AC: .word 0x0000FFFC
	thumb_func_end sub_0200387C

	thumb_func_start sub_020038B0
sub_020038B0: ; 0x020038B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r3, [sp]
	mov r0, #0x14
	add r4, r1, #0
	mul r4, r0
	add r0, sp, #0x10
	ldrh r0, [r0, #0x14]
	add r7, r2, #0
	ldr r5, [sp, #0x20]
	str r0, [sp, #4]
	lsl r1, r0, #1
	add r0, r6, r4
	ldr r0, [r0, #8]
	cmp r1, r0
	bls _020038D6
	bl sub_02022974
_020038D6:
	sub r0, r7, #1
	cmp r0, #1
	bhi _020038EE
	ldr r2, [r6, r4]
	lsl r1, r5, #1
	add r1, r2, r1
	ldr r2, [sp, #4]
	ldr r0, [sp]
	sub r2, r2, r5
	lsl r2, r2, #1
	bl sub_020C4AF0
_020038EE:
	cmp r7, #0
	beq _020038F6
	cmp r7, #2
	bne _0200390A
_020038F6:
	add r1, r6, r4
	ldr r2, [r1, #4]
	lsl r1, r5, #1
	add r1, r2, r1
	ldr r2, [sp, #4]
	ldr r0, [sp]
	sub r2, r2, r5
	lsl r2, r2, #1
	bl sub_020C4AF0
_0200390A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020038B0

	thumb_func_start sub_02003910
sub_02003910: ; 0x02003910
	push {r3, lr}
	cmp r2, #1
	bne _02003922
	mov r2, #0x14
	mul r2, r1
	ldr r1, [r0, r2]
	lsl r0, r3, #1
	ldrh r0, [r1, r0]
	pop {r3, pc}
_02003922:
	cmp r2, #0
	bne _02003934
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	ldr r1, [r0, #4]
	lsl r0, r3, #1
	ldrh r0, [r1, r0]
	pop {r3, pc}
_02003934:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02003910

	thumb_func_start sub_0200393C
sub_0200393C: ; 0x0200393C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	str r1, [sp, #4]
	add r7, r2, #0
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	mov ip, r1
	lsl r1, r0, #0x16
	lsl r0, r0, #0x11
	lsr r1, r1, #0x1b
	lsr r0, r0, #0x1b
	mov r2, #0
	mov lr, r1
	str r0, [sp, #8]
	cmp r7, #0
	bls _020039AA
_02003962:
	ldr r0, [sp]
	lsl r6, r2, #1
	ldrh r4, [r0, r6]
	lsl r0, r4, #0x1b
	lsr r1, r0, #0x1b
	lsl r0, r4, #0x16
	lsl r4, r4, #0x11
	lsr r5, r4, #0x1b
	ldr r4, [sp, #8]
	lsr r0, r0, #0x1b
	sub r4, r4, r5
	mul r4, r3
	asr r4, r4, #4
	add r4, r5, r4
	lsl r5, r4, #0xa
	mov r4, ip
	sub r4, r4, r1
	mul r4, r3
	asr r4, r4, #4
	add r1, r1, r4
	mov r4, lr
	sub r4, r4, r0
	mul r4, r3
	asr r4, r4, #4
	add r0, r0, r4
	lsl r0, r0, #5
	orr r0, r1
	add r1, r5, #0
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0, r6]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, r7
	blo _02003962
_020039AA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200393C

	thumb_func_start sub_020039B0
sub_020039B0: ; 0x020039B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r5, r0, #0
	mov r2, #0x14
	add r6, r1, #0
	mul r6, r2
	str r3, [sp, #4]
	ldr r1, [r5, r6]
	mov r0, #0
	add r4, r5, r6
	cmp r1, #0
	beq _020039D2
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020039D2
	mov r0, #1
_020039D2:
	cmp r0, #0
	bne _020039DA
	bl sub_02022974
_020039DA:
	add r3, sp, #0x10
	ldrh r0, [r3, #0x14]
	add r2, r5, r6
	lsl r1, r7, #1
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, [r2, #4]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3, #0x10]
	ldr r2, [sp, #4]
	bl sub_0200393C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020039B0

	thumb_func_start sub_020039F8
sub_020039F8: ; 0x020039F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp, #4]
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	ldr r7, [sp, #0x20]
	beq _02003A28
_02003A08:
	mov r0, #1
	tst r0, r4
	beq _02003A1C
	str r7, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x10
	bl sub_0200393C
_02003A1C:
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
	add r6, #0x20
	add r5, #0x20
	cmp r4, #0
	bne _02003A08
_02003A28:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020039F8

	thumb_func_start sub_02003A2C
sub_02003A2C: ; 0x02003A2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x20]
	add r5, r2, #0
	mov r1, #0x14
	add r2, r7, #0
	str r0, [sp, #0x20]
	mul r2, r1
	mov r4, #0
	ldr r1, [r6, r2]
	add r0, r4, #0
	cmp r1, #0
	beq _02003A56
	add r1, r6, r2
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02003A56
	mov r0, #1
_02003A56:
	cmp r0, #0
	bne _02003A5E
	bl sub_02022974
_02003A5E:
	cmp r5, #0
	beq _02003A88
_02003A62:
	mov r0, #1
	tst r0, r5
	beq _02003A7E
	ldr r0, [sp, #8]
	lsl r2, r4, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_020039B0
_02003A7E:
	lsl r0, r5, #0xf
	lsr r5, r0, #0x10
	add r4, #0x10
	cmp r5, #0
	bne _02003A62
_02003A88:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02003A2C

	thumb_func_start sub_02003A8C
sub_02003A8C: ; 0x02003A8C
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r1
	mov ip, r2
	add r7, r3, #0
	mov r4, #0
	cmp r1, #0
	ble _02003B04
	ldr r6, [sp, #0x18]
_02003A9C:
	ldrh r3, [r0]
	mov r1, #0x1f
	add r2, r3, #0
	asr r5, r3, #0xa
	and r2, r1
	and r5, r1
	mov r1, #0x1d
	mul r1, r5
	mov r5, #0x4c
	mul r5, r2
	asr r3, r3, #5
	mov r2, #0x1f
	and r3, r2
	mov r2, #0x97
	mul r2, r3
	add r2, r5, r2
	add r1, r1, r2
	asr r3, r1, #8
	mov r1, ip
	add r2, r1, #0
	mul r2, r3
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	asr r2, r1, #8
	add r1, r7, #0
	mul r1, r3
	mul r3, r6
	lsl r1, r1, #0x10
	lsl r3, r3, #0x10
	lsr r1, r1, #0x10
	lsr r3, r3, #0x10
	asr r1, r1, #8
	asr r3, r3, #8
	cmp r2, #0x1f
	ble _02003AE4
	mov r2, #0x1f
_02003AE4:
	cmp r1, #0x1f
	ble _02003AEA
	mov r1, #0x1f
_02003AEA:
	cmp r3, #0x1f
	ble _02003AF0
	mov r3, #0x1f
_02003AF0:
	lsl r3, r3, #0xa
	lsl r1, r1, #5
	orr r1, r3
	orr r1, r2
	strh r1, [r0]
	add r4, r4, #1
	mov r1, lr
	add r0, r0, #2
	cmp r4, r1
	blt _02003A9C
_02003B04:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02003A8C

	thumb_func_start sub_02003B08
sub_02003B08: ; 0x02003B08
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #4
	bl sub_02006F88
	add r4, r0, #0
	bne _02003B20
	bl sub_02022974
_02003B20:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02003B2C
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x1c]
_02003B2C:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x28]
	ldr r0, [r0, #0xc]
	mov r1, #0x10
	bl sub_02003A8C
	ldr r0, [sp, #0x1c]
	add r3, sp, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	ldrh r3, [r3, #0x18]
	ldr r1, [r1, #0xc]
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	bl sub_02002FBC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02003B08