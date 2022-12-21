	.include "macros/function.inc"
	.include "include/unk_0209C194.inc"

	

	.text


	thumb_func_start sub_0209C194
sub_0209C194: ; 0x0209C194
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	add r2, r4, #0
	add r2, #0x14
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0209BDF8
	str r0, [r4, #0x34]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209C194

	thumb_func_start sub_0209C1D0
sub_0209C1D0: ; 0x0209C1D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0209BE64
	ldr r0, [r4, #0x34]
	bl sub_0209BE38
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209C1D0

	thumb_func_start sub_0209C1E8
sub_0209C1E8: ; 0x0209C1E8
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0209C1E8

	thumb_func_start sub_0209C1EC
sub_0209C1EC: ; 0x0209C1EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x38
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	str r5, [r4, #0x2c]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0202B628
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	bl sub_02027B50
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209C1EC

	thumb_func_start sub_0209C238
sub_0209C238: ; 0x0209C238
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _0209C258 ; =0x020F951C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _0209C254
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0209C254:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0209C258: .word 0x020F951C
	thumb_func_end sub_0209C238

	thumb_func_start sub_0209C25C
sub_0209C25C: ; 0x0209C25C
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	mov r1, #0xb
	bl sub_0209C194
	str r0, [r4, #0x28]
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #0x2c]
	ldr r1, _0209C27C ; =0x020F94FC
	ldr r2, [r4, #0x28]
	bl sub_0203CD84
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0209C27C: .word 0x020F94FC
	thumb_func_end sub_0209C25C

	thumb_func_start sub_0209C280
sub_0209C280: ; 0x0209C280
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020509B4
	cmp r0, #0
	bne _0209C2BA
	ldr r0, [r4, #0x28]
	bl sub_0209C1E8
	cmp r0, #0
	bne _0209C29E
	mov r0, #5
	str r0, [r4, #0]
	b _0209C2BA
_0209C29E:
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #4]
	bl sub_0203D644
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #2
	str r0, [r4, #0]
_0209C2BA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C280

	thumb_func_start sub_0209C2C0
sub_0209C2C0: ; 0x0209C2C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_020509B4
	cmp r0, #0
	bne _0209C31C
	ldr r0, [r5, #0x30]
	add r1, r0, #0
	add r1, #0x22
	ldrb r4, [r1]
	bl sub_020181C4
	ldr r0, [r5, #0x30]
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #1
	bne _0209C304
	ldr r0, [r5, #0x2c]
	mov r1, #3
	mov r2, #0
	bl sub_0203D670
	str r0, [r5, #0x34]
	str r4, [r5, #4]
	ldr r0, [r5, #0x34]
	strb r4, [r0, #0x14]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x34]
	bl sub_0203D334
	mov r0, #3
	str r0, [r5, #0]
	b _0209C31C
_0209C304:
	ldr r0, [r5, #0x28]
	ldr r1, _0209C320 ; =0x020F950C
	str r4, [r0, #4]
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0x28]
	bl sub_0203CD84
	ldr r0, [r5, #0x28]
	mov r1, #3
	str r1, [r0, #0]
	mov r0, #4
	str r0, [r5, #0]
_0209C31C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209C320: .word 0x020F950C
	thumb_func_end sub_0209C2C0

	thumb_func_start sub_0209C324
sub_0209C324: ; 0x0209C324
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020509B4
	cmp r0, #0
	bne _0209C346
	ldr r0, [r4, #0x34]
	bl sub_020181C4
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #4]
	bl sub_0203D644
	str r0, [r4, #0x30]
	mov r0, #2
	str r0, [r4, #0]
_0209C346:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C324

	thumb_func_start sub_0209C34C
sub_0209C34C: ; 0x0209C34C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020509B4
	cmp r0, #0
	bne _0209C35E
	mov r0, #5
	str r0, [r4, #0]
_0209C35E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C34C

	thumb_func_start sub_0209C364
sub_0209C364: ; 0x0209C364
	push {r3, lr}
	ldr r0, [r0, #0x28]
	bl sub_0209C1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0209C364

	.rodata


	.global Unk_020F94FC
Unk_020F94FC: ; 0x020F94FC
	.incbin "incbin/arm9_rodata.bin", 0x148BC, 0x148CC - 0x148BC

	.global Unk_020F950C
Unk_020F950C: ; 0x020F950C
	.incbin "incbin/arm9_rodata.bin", 0x148CC, 0x148DC - 0x148CC

	.global Unk_020F951C
Unk_020F951C: ; 0x020F951C
	.incbin "incbin/arm9_rodata.bin", 0x148DC, 0x18

