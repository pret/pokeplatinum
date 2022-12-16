	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov70_0226C8B4
ov70_0226C8B4: ; 0x0226C8B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_0226C8CA:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0226C8CA
	str r5, [r4, #0]
	add r0, r5, #0
	str r6, [r4, #4]
	bl ov66_0222F104
	add r7, r0, #0
	add r0, r5, #0
	bl ov66_0222E158
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _0226C90E
	cmp r7, #0
	beq _0226C90E
	add r0, r6, #0
	mov r1, #1
	bl ov70_0226251C
	add r0, r4, #0
	bl ov70_0226CC3C
	add r0, r5, #0
	bl ov66_0222F114
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_0226CB1C
_0226C90E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C8B4

	thumb_func_start ov70_0226C914
ov70_0226C914: ; 0x0226C914
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0226CC58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov70_0226C914

	thumb_func_start ov70_0226C924
ov70_0226C924: ; 0x0226C924
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov66_0222F104
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov66_0222F114
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl ov66_0222E158
	add r6, r0, #0
	ldrh r0, [r5, #0xa]
	cmp r0, r6
	beq _0226C964
	strh r6, [r5, #0xa]
	cmp r6, #1
	bne _0226C964
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov70_0226251C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0226CB1C
	add r0, r5, #0
	bl ov70_0226CC3C
_0226C964:
	cmp r6, #0
	beq _0226C982
	ldrb r0, [r5, #8]
	cmp r0, r4
	beq _0226C978
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0226CB1C
_0226C978:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0226C984
_0226C982:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C924

	thumb_func_start ov70_0226C984
ov70_0226C984: ; 0x0226C984
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _0226C994
	bl sub_02022974
_0226C994:
	cmp r4, #6
	bhs _0226C9A4
	ldr r2, _0226C9A8 ; =0x0226E6E4
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r6, #0
	blx r2
_0226C9A4:
	pop {r4, r5, r6, pc}
	nop
_0226C9A8: .word 0x0226E6E4
	thumb_func_end ov70_0226C984

	thumb_func_start ov70_0226C9AC
ov70_0226C9AC: ; 0x0226C9AC
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226C9AC

	thumb_func_start ov70_0226C9B0
ov70_0226C9B0: ; 0x0226C9B0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226C9B0

	thumb_func_start ov70_0226C9B4
ov70_0226C9B4: ; 0x0226C9B4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	mov r1, #0xe
	bl sub_020E2178
	cmp r1, #0
	bne _0226CA2E
	ldr r5, _0226CA30 ; =0x0226E74C
	mov r4, #0
_0226C9C8:
	ldr r0, [r7, #0xc]
	add r1, r4, #0
	lsl r2, r0, #3
	ldr r0, _0226CA34 ; =0x0226E72C
	mov r6, #0
	add r3, r0, r2
	mov r0, #3
	and r1, r0
	ldr r0, _0226CA34 ; =0x0226E72C
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _0226C9E8
	mov r0, #1
	str r0, [sp]
	add r6, r0, #0
	b _0226C9F4
_0226C9E8:
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _0226C9F4
	add r0, r6, #0
	str r0, [sp]
	mov r6, #1
_0226C9F4:
	cmp r6, #1
	bne _0226CA1A
	cmp r4, #0x11
	bhs _0226CA16
	ldrb r1, [r5]
	mov r3, #1
	ldr r0, [r7, #4]
	ldr r2, [sp]
	lsl r3, r3, #0xc
	bl ov70_02262754
	add r6, r0, #0
	cmp r6, #1
	beq _0226CA1C
	bl sub_02022974
	b _0226CA1C
_0226CA16:
	mov r6, #0
	b _0226CA1C
_0226CA1A:
	mov r6, #1
_0226CA1C:
	add r5, r5, #1
	add r4, r4, #1
	cmp r6, #1
	beq _0226C9C8
	ldr r0, [r7, #0xc]
	add r1, r0, #1
	mov r0, #3
	and r0, r1
	str r0, [r7, #0xc]
_0226CA2E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226CA30: .word 0x0226E74C
_0226CA34: .word 0x0226E72C
	thumb_func_end ov70_0226C9B4

	thumb_func_start ov70_0226CA38
ov70_0226CA38: ; 0x0226CA38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #6
	bl sub_020E2178
	cmp r1, #0
	bne _0226CAC8
	ldr r0, [r5, #0xc]
	lsl r1, r0, #1
	ldr r0, _0226CACC ; =0x0226E6D4
	ldrb r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0226CAD0 ; =0x0226E6D5
	ldrb r0, [r0, r1]
	add r1, sp, #4
	bl ov70_0226CBB4
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	bls _0226CA8A
	mov r7, #1
	add r6, r4, #0
	lsl r7, r7, #0xc
_0226CA6C:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02262754
	cmp r0, #1
	beq _0226CA82
	bl sub_02022974
_0226CA82:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _0226CA6C
_0226CA8A:
	ldr r0, [sp]
	add r1, sp, #4
	bl ov70_0226CBB4
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	bls _0226CABC
	mov r6, #1
	lsl r7, r6, #0xc
_0226CA9E:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02262754
	cmp r0, #1
	beq _0226CAB4
	bl sub_02022974
_0226CAB4:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _0226CA9E
_0226CABC:
	ldr r0, [r5, #0xc]
	mov r1, #7
	add r0, r0, #1
	bl sub_020E2178
	str r1, [r5, #0xc]
_0226CAC8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226CACC: .word 0x0226E6D4
_0226CAD0: .word 0x0226E6D5
	thumb_func_end ov70_0226CA38

	thumb_func_start ov70_0226CAD4
ov70_0226CAD4: ; 0x0226CAD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhs _0226CB0C
	lsl r2, r0, #3
	ldr r0, _0226CB10 ; =0x0226E6FC
	ldr r0, [r0, r2]
	cmp r0, r1
	bhs _0226CB0C
	ldr r1, _0226CB14 ; =0x0226E700
	ldr r0, [r4, #4]
	ldr r1, [r1, r2]
	bl ov70_0226278C
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	lsl r2, r1, #3
	ldr r1, _0226CB14 ; =0x0226E700
	ldr r1, [r1, r2]
	bl ov70_022625D8
	ldr r0, _0226CB18 ; =0x0000059D
	bl sub_02005748
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_0226CB0C:
	pop {r4, pc}
	nop
_0226CB10: .word 0x0226E6FC
_0226CB14: .word 0x0226E700
_0226CB18: .word 0x0000059D
	thumb_func_end ov70_0226CAD4

	thumb_func_start ov70_0226CB1C
ov70_0226CB1C: ; 0x0226CB1C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _0226CB2C
	bl sub_02022974
_0226CB2C:
	cmp r4, #6
	bhs _0226CB4C
	add r1, r5, #0
	mov r0, #0
	add r1, #0xc
	strb r0, [r5, #0xc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r2, _0226CB50 ; =0x0226E714
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r6, #0
	blx r2
	strb r4, [r5, #8]
_0226CB4C:
	pop {r4, r5, r6, pc}
	nop
_0226CB50: .word 0x0226E714
	thumb_func_end ov70_0226CB1C

	thumb_func_start ov70_0226CB54
ov70_0226CB54: ; 0x0226CB54
	ldr r3, _0226CB60 ; =ov70_02262724
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	; .align 2, 0
_0226CB60: .word ov70_02262724
	thumb_func_end ov70_0226CB54

	thumb_func_start ov70_0226CB64
ov70_0226CB64: ; 0x0226CB64
	ldr r3, _0226CB70 ; =ov70_02262724
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r2, r1, #0xc
	bx r3
	nop
_0226CB70: .word ov70_02262724
	thumb_func_end ov70_0226CB64

	thumb_func_start ov70_0226CB74
ov70_0226CB74: ; 0x0226CB74
	ldr r3, _0226CB80 ; =ov70_02262724
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	; .align 2, 0
_0226CB80: .word ov70_02262724
	thumb_func_end ov70_0226CB74

	thumb_func_start ov70_0226CB84
ov70_0226CB84: ; 0x0226CB84
	ldr r3, _0226CB90 ; =ov70_02262724
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	; .align 2, 0
_0226CB90: .word ov70_02262724
	thumb_func_end ov70_0226CB84

	thumb_func_start ov70_0226CB94
ov70_0226CB94: ; 0x0226CB94
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0226CC58
	mov r2, #1
	ldr r0, [r4, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bl ov70_02262724
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov70_0226251C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0226CB94

	thumb_func_start ov70_0226CBB4
ov70_0226CBB4: ; 0x0226CBB4
	push {r3, lr}
	cmp r0, #6
	bhi _0226CC1A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226CBC6: ; jump table
	.short _0226CBD4 - _0226CBC6 - 2 ; case 0
	.short _0226CBDE - _0226CBC6 - 2 ; case 1
	.short _0226CBE8 - _0226CBC6 - 2 ; case 2
	.short _0226CBF2 - _0226CBC6 - 2 ; case 3
	.short _0226CBFC - _0226CBC6 - 2 ; case 4
	.short _0226CC06 - _0226CBC6 - 2 ; case 5
	.short _0226CC10 - _0226CBC6 - 2 ; case 6
_0226CBD4:
	mov r0, #6
	str r0, [r1, #4]
	ldr r0, _0226CC20 ; =0x0226E6CC
	str r0, [r1, #0]
	pop {r3, pc}
_0226CBDE:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC24 ; =0x0226E6C4
	str r0, [r1, #0]
	pop {r3, pc}
_0226CBE8:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC28 ; =0x0226E6BC
	str r0, [r1, #0]
	pop {r3, pc}
_0226CBF2:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _0226CC2C ; =0x0226E6B4
	str r0, [r1, #0]
	pop {r3, pc}
_0226CBFC:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _0226CC30 ; =0x0226E6B8
	str r0, [r1, #0]
	pop {r3, pc}
_0226CC06:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC34 ; =0x0226E6C0
	str r0, [r1, #0]
	pop {r3, pc}
_0226CC10:
	mov r0, #3
	str r0, [r1, #4]
	ldr r0, _0226CC38 ; =0x0226E6C8
	str r0, [r1, #0]
	pop {r3, pc}
_0226CC1A:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
_0226CC20: .word 0x0226E6CC
_0226CC24: .word 0x0226E6C4
_0226CC28: .word 0x0226E6BC
_0226CC2C: .word 0x0226E6B4
_0226CC30: .word 0x0226E6B8
_0226CC34: .word 0x0226E6C0
_0226CC38: .word 0x0226E6C8
	thumb_func_end ov70_0226CBB4

	thumb_func_start ov70_0226CC3C
ov70_0226CC3C: ; 0x0226CC3C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0226CC50
	ldr r0, _0226CC54 ; =0x0000059E
	bl sub_02005748
	mov r0, #1
	strb r0, [r4, #9]
_0226CC50:
	pop {r4, pc}
	nop
_0226CC54: .word 0x0000059E
	thumb_func_end ov70_0226CC3C

	thumb_func_start ov70_0226CC58
ov70_0226CC58: ; 0x0226CC58
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0226CC6E
	ldr r0, _0226CC70 ; =0x0000059E
	mov r1, #0
	bl sub_020057A4
	mov r0, #0
	strb r0, [r4, #9]
_0226CC6E:
	pop {r4, pc}
	; .align 2, 0
_0226CC70: .word 0x0000059E
	thumb_func_end ov70_0226CC58

	.rodata


	.global Unk_ov70_0226E6B4
Unk_ov70_0226E6B4: ; 0x0226E6B4
	.incbin "incbin/overlay70_rodata.bin", 0x11E8, 0x11EC - 0x11E8

	.global Unk_ov70_0226E6B8
Unk_ov70_0226E6B8: ; 0x0226E6B8
	.incbin "incbin/overlay70_rodata.bin", 0x11EC, 0x11F0 - 0x11EC

	.global Unk_ov70_0226E6BC
Unk_ov70_0226E6BC: ; 0x0226E6BC
	.incbin "incbin/overlay70_rodata.bin", 0x11F0, 0x11F4 - 0x11F0

	.global Unk_ov70_0226E6C0
Unk_ov70_0226E6C0: ; 0x0226E6C0
	.incbin "incbin/overlay70_rodata.bin", 0x11F4, 0x11F8 - 0x11F4

	.global Unk_ov70_0226E6C4
Unk_ov70_0226E6C4: ; 0x0226E6C4
	.incbin "incbin/overlay70_rodata.bin", 0x11F8, 0x11FC - 0x11F8

	.global Unk_ov70_0226E6C8
Unk_ov70_0226E6C8: ; 0x0226E6C8
	.incbin "incbin/overlay70_rodata.bin", 0x11FC, 0x1200 - 0x11FC

	.global Unk_ov70_0226E6CC
Unk_ov70_0226E6CC: ; 0x0226E6CC
	.incbin "incbin/overlay70_rodata.bin", 0x1200, 0x1208 - 0x1200

	.global Unk_ov70_0226E6D4
Unk_ov70_0226E6D4: ; 0x0226E6D4
	.incbin "incbin/overlay70_rodata.bin", 0x1208, 0x1218 - 0x1208

	.global Unk_ov70_0226E6E4
Unk_ov70_0226E6E4: ; 0x0226E6E4
	.incbin "incbin/overlay70_rodata.bin", 0x1218, 0x1230 - 0x1218

	.global Unk_ov70_0226E6FC
Unk_ov70_0226E6FC: ; 0x0226E6FC
	.incbin "incbin/overlay70_rodata.bin", 0x1230, 0x1248 - 0x1230

	.global Unk_ov70_0226E714
Unk_ov70_0226E714: ; 0x0226E714
	.incbin "incbin/overlay70_rodata.bin", 0x1248, 0x1260 - 0x1248

	.global Unk_ov70_0226E72C
Unk_ov70_0226E72C: ; 0x0226E72C
	.incbin "incbin/overlay70_rodata.bin", 0x1260, 0x1280 - 0x1260

	.global Unk_ov70_0226E74C
Unk_ov70_0226E74C: ; 0x0226E74C
	.incbin "incbin/overlay70_rodata.bin", 0x1280, 0x11

