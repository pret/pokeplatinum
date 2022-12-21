	.include "macros/function.inc"
	.include "include/unk_020170BC.inc"

	

	.text


	thumb_func_start sub_020170BC
sub_020170BC: ; 0x020170BC
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	str r4, [sp]
	add r2, r4, #0
	bl sub_02006FE8
	str r0, [r5, #0]
	add r0, r5, #0
	bl sub_020173CC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020170BC

	thumb_func_start sub_020170D8
sub_020170D8: ; 0x020170D8
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	str r4, [sp]
	add r2, r4, #0
	bl sub_0200723C
	str r0, [r5, #0]
	add r0, r5, #0
	bl sub_020173CC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020170D8

	thumb_func_start sub_020170F4
sub_020170F4: ; 0x020170F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201CBCC
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	bl sub_0201CBB0
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020170F4

	thumb_func_start sub_02017110
sub_02017110: ; 0x02017110
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02017140
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020AE9B8
	ldr r1, _0201715C ; =0x02100DF0
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0201715C ; =0x02100DF0
	ldr r0, [sp]
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [r4, #0xc]
	bl sub_020AEA70
	ldr r1, _02017160 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
_02017140:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0201714A
	bl sub_020181C4
_0201714A:
	mov r1, #0x10
	mov r0, #0
_0201714E:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0201714E
	add sp, #8
	pop {r4, pc}
	nop
_0201715C: .word 0x02100DF0
_02017160: .word 0x02100DF8
	thumb_func_end sub_02017110

	thumb_func_start sub_02017164
sub_02017164: ; 0x02017164
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r6, #0
	add r1, r3, #0
	add r5, r0, #0
	add r0, r2, #0
	ldr r3, [sp, #0x18]
	add r2, r6, #0
	str r6, [sp]
	bl sub_0200723C
	add r2, r0, #0
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020173A0
	add r0, r6, #0
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02017164

	thumb_func_start sub_02017190
sub_02017190: ; 0x02017190
	push {r4, lr}
	add r4, r0, #0
	bl sub_020173A0
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02017190

	thumb_func_start sub_020171A0
sub_020171A0: ; 0x020171A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020171BE
	add r0, r1, #0
	ldr r1, [r4, #8]
	bl sub_020B2CD8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _020171BE
	ldr r0, [r4, #0]
	bl sub_020181C4
_020171BE:
	mov r1, #0x14
	mov r0, #0
_020171C2:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _020171C2
	pop {r4, pc}
	thumb_func_end sub_020171A0

	thumb_func_start sub_020171CC
sub_020171CC: ; 0x020171CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r2, r0, #0xc
	cmp r1, #0
	ble _020171EA
	ldr r0, [r4, #0xc]
	add r0, r0, r1
	add r1, r2, #0
	bl sub_020E1F6C
	str r1, [r4, #0xc]
	b _020171FC
_020171EA:
	ldr r0, [r4, #0xc]
	add r3, r4, #0
	add r3, #0xc
	add r0, r0, r1
	str r0, [r4, #0xc]
	bpl _020171FC
	ldr r0, [r3, #0]
	add r0, r0, r2
	str r0, [r3, #0]
_020171FC:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_020171CC

	thumb_func_start sub_02017204
sub_02017204: ; 0x02017204
	push {r3, r4}
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #0
	cmp r1, #0
	ble _02017226
	add r1, r3, r1
	cmp r1, r4
	bge _02017220
	str r1, [r0, #0xc]
	b _02017232
_02017220:
	str r4, [r0, #0xc]
	mov r2, #1
	b _02017232
_02017226:
	add r1, r3, r1
	bmi _0201722E
	str r1, [r0, #0xc]
	b _02017232
_0201722E:
	str r2, [r0, #0xc]
	mov r2, #1
_02017232:
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0, #0]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017204

	thumb_func_start sub_02017240
sub_02017240: ; 0x02017240
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02017240

	thumb_func_start sub_02017248
sub_02017248: ; 0x02017248
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02017248

	thumb_func_start sub_0201724C
sub_0201724C: ; 0x0201724C
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201724C

	thumb_func_start sub_02017258
sub_02017258: ; 0x02017258
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #0x78
	add r4, r0, #0
	bl sub_020D5124
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl sub_020AE608
	mov r0, #1
	str r0, [r4, #0x6c]
	lsl r0, r0, #0xc
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02017258

	thumb_func_start sub_0201727C
sub_0201727C: ; 0x0201727C
	ldr r3, _02017284 ; =sub_020AE77C
	ldr r1, [r1, #8]
	bx r3
	nop
_02017284: .word sub_020AE77C
	thumb_func_end sub_0201727C

	thumb_func_start sub_02017288
sub_02017288: ; 0x02017288
	ldr r3, _02017290 ; =sub_020AE870
	ldr r1, [r1, #8]
	bx r3
	nop
_02017290: .word sub_020AE870
	thumb_func_end sub_02017288

	thumb_func_start sub_02017294
sub_02017294: ; 0x02017294
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _02017328
	add r0, sp, #0x24
	bl sub_020BB4C8
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	ldr r3, _0201732C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5AC
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x74
	ldrh r0, [r0]
	ldr r3, _0201732C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5E4
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x72
	ldrh r0, [r0]
	ldr r3, _0201732C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5C8
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	add r1, r4, #0
	add r0, r4, #0
	add r4, #0x60
	add r1, #0x54
	add r2, sp, #0x24
	add r3, r4, #0
	bl sub_0201CA74
_02017328:
	add sp, #0x48
	pop {r4, pc}
	; .align 2, 0
_0201732C: .word 0x020F983C
	thumb_func_end sub_02017294

	thumb_func_start sub_02017330
sub_02017330: ; 0x02017330
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r0, #0x6c]
	cmp r1, #0
	beq _02017346
	add r1, r0, #0
	add r3, r0, #0
	add r1, #0x54
	add r3, #0x60
	bl sub_0201CA74
_02017346:
	pop {r3, pc}
	thumb_func_end sub_02017330

	thumb_func_start sub_02017348
sub_02017348: ; 0x02017348
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02017348

	thumb_func_start sub_0201734C
sub_0201734C: ; 0x0201734C
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end sub_0201734C

	thumb_func_start sub_02017350
sub_02017350: ; 0x02017350
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	str r3, [r0, #0x5c]
	bx lr
	thumb_func_end sub_02017350

	thumb_func_start sub_02017358
sub_02017358: ; 0x02017358
	push {r3, r4}
	ldr r4, [r0, #0x54]
	str r4, [r1, #0]
	ldr r1, [r0, #0x58]
	str r1, [r2, #0]
	ldr r0, [r0, #0x5c]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017358

	thumb_func_start sub_0201736C
sub_0201736C: ; 0x0201736C
	str r1, [r0, #0x60]
	str r2, [r0, #0x64]
	str r3, [r0, #0x68]
	bx lr
	thumb_func_end sub_0201736C

	thumb_func_start sub_02017374
sub_02017374: ; 0x02017374
	push {r3, r4}
	ldr r4, [r0, #0x60]
	str r4, [r1, #0]
	ldr r1, [r0, #0x64]
	str r1, [r2, #0]
	ldr r0, [r0, #0x68]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017374

	thumb_func_start sub_02017388
sub_02017388: ; 0x02017388
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, #0x70
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017388

	thumb_func_start sub_02017394
sub_02017394: ; 0x02017394
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, #0x70
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02017394

	thumb_func_start sub_020173A0
sub_020173A0: ; 0x020173A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r2, [r5, #0]
	add r0, r2, #0
	mov r1, #0
	add r6, r3, #0
	bl sub_020B3C5C
	str r0, [r5, #4]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_020B2CB4
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_020AE4F0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020173A0

	thumb_func_start sub_020173CC
sub_020173CC: ; 0x020173CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020173DA
	bl sub_02022974
_020173DA:
	ldr r0, [r4, #0]
	bl sub_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _02017406
	add r2, r0, #0
	add r2, #8
	beq _020173FA
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _020173FA
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _020173FC
_020173FA:
	mov r1, #0
_020173FC:
	cmp r1, #0
	beq _02017406
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02017408
_02017406:
	mov r0, #0
_02017408:
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl sub_020B3C1C
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _02017422
	mov r2, #1
	ldr r0, _02017424 ; =sub_020170F4
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
_02017422:
	pop {r4, pc}
	; .align 2, 0
_02017424: .word sub_020170F4
	thumb_func_end sub_020173CC