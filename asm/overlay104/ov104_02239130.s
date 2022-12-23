	.include "macros/function.inc"
	.include "overlay104/ov104_02239130.inc"

	

	.text


	thumb_func_start ov104_02239130
ov104_02239130: ; 0x02239130
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r5, r0, #0
	add r0, r7, #0
	bl ov104_0222EA48
	add r6, r0, #0
	add r0, r7, #0
	bl ov104_0222FC00
	str r0, [sp]
	add r0, r7, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	cmp r6, #0x3b
	bgt _022391B0
	add r1, r6, #0
	sub r1, #0x21
	bmi _022391AA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02239174: ; jump table
	.short _022391EC - _02239174 - 2 ; case 0
	.short _022391F4 - _02239174 - 2 ; case 1
	.short _022391FC - _02239174 - 2 ; case 2
	.short _02239204 - _02239174 - 2 ; case 3
	.short _0223922E - _02239174 - 2 ; case 4
	.short _02239236 - _02239174 - 2 ; case 5
	.short _02239240 - _02239174 - 2 ; case 6
	.short _02239214 - _02239174 - 2 ; case 7
	.short _0223921C - _02239174 - 2 ; case 8
	.short _0223926C - _02239174 - 2 ; case 9
	.short _0223920C - _02239174 - 2 ; case 10
	.short _02239226 - _02239174 - 2 ; case 11
	.short _0223926C - _02239174 - 2 ; case 12
	.short _022391BC - _02239174 - 2 ; case 13
	.short _0223926C - _02239174 - 2 ; case 14
	.short _0223926C - _02239174 - 2 ; case 15
	.short _0223926C - _02239174 - 2 ; case 16
	.short _0223926C - _02239174 - 2 ; case 17
	.short _0223926C - _02239174 - 2 ; case 18
	.short _0223926C - _02239174 - 2 ; case 19
	.short _0223926C - _02239174 - 2 ; case 20
	.short _0223926C - _02239174 - 2 ; case 21
	.short _022391DE - _02239174 - 2 ; case 22
	.short _0223926C - _02239174 - 2 ; case 23
	.short _0223926C - _02239174 - 2 ; case 24
	.short _02239246 - _02239174 - 2 ; case 25
	.short _02239254 - _02239174 - 2 ; case 26
_022391AA:
	cmp r6, #2
	beq _022391B6
	b _0223926C
_022391B0:
	cmp r6, #0x64
	beq _0223925C
	b _0223926C
_022391B6:
	bl sub_02049F8C
	b _02239270
_022391BC:
	bl sub_0204AA04
	strh r0, [r4]
	ldr r0, [r5, #8]
	bl sub_0202440C
	ldrh r1, [r4]
	bl sub_0206D0C8
	ldr r0, [r5, #8]
	bl sub_0202CD88
	ldrh r2, [r4]
	mov r1, #0x44
	bl sub_0202CF70
	b _02239270
_022391DE:
	ldr r1, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov104_0223927C
	strh r0, [r4]
	b _02239270
_022391EC:
	bl sub_0204A578
	strh r0, [r4]
	b _02239270
_022391F4:
	bl ov104_022395B4
	strh r0, [r4]
	b _02239270
_022391FC:
	bl sub_0204A57C
	strh r0, [r4]
	b _02239270
_02239204:
	bl ov104_022395D8
	strh r0, [r4]
	b _02239270
_0223920C:
	bl sub_0204A9F8
	strh r0, [r4]
	b _02239270
_02239214:
	ldr r1, [r5, #8]
	bl ov104_022394A4
	b _02239270
_0223921C:
	ldr r1, [sp]
	bl ov104_02239588
	strh r0, [r4]
	b _02239270
_02239226:
	ldr r1, [sp]
	bl ov104_022395A0
	b _02239270
_0223922E:
	ldr r1, [r5, #8]
	bl sub_0204A660
	b _02239270
_02239236:
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl sub_0204A7A4
	b _02239270
_02239240:
	bl sub_0204A8C8
	b _02239270
_02239246:
	ldr r1, _02239274 ; =0x00000884
	mov r2, #0x46
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	b _02239270
_02239254:
	ldr r1, _02239278 ; =0x000008D6
	mov r2, #1
	strb r2, [r0, r1]
	b _02239270
_0223925C:
	cmp r0, #0
	bne _02239266
	mov r0, #1
	strh r0, [r4]
	b _02239270
_02239266:
	mov r0, #0
	strh r0, [r4]
	b _02239270
_0223926C:
	bl GF_AssertFail
_02239270:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02239274: .word 0x00000884
_02239278: .word 0x000008D6
	thumb_func_end ov104_02239130

	thumb_func_start ov104_0223927C
ov104_0223927C: ; 0x0223927C
	cmp r1, #2
	bne _02239288
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	bx lr
_02239288:
	cmp r1, #1
	bne _022392AE
	ldrb r1, [r0, #0xf]
	cmp r1, #2
	bne _022392A0
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	lsl r1, r0, #1
	ldr r0, _022392BC ; =0x0223FC94
	ldrh r0, [r0, r1]
	bx lr
_022392A0:
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _022392AA
	mov r0, #0x61
	bx lr
_022392AA:
	mov r0, #0
	bx lr
_022392AE:
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _022392B8
	mov r0, #0x61
	bx lr
_022392B8:
	mov r0, #0
	bx lr
	; .align 2, 0
_022392BC: .word 0x0223FC94
	thumb_func_end ov104_0223927C

	thumb_func_start ov104_022392C0
ov104_022392C0: ; 0x022392C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r1, [r5, #0x1c]
	add r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	ldrb r6, [r1]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	bne _022392E4
	mov r0, #0
	pop {r4, r5, r6, pc}
_022392E4:
	ldrb r0, [r4, #0xf]
	bl ov104_0223A790
	lsl r1, r6, #4
	add r1, r6, r1
	add r2, r0, #0
	add r4, #0x90
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r4, r1
	bl ov104_0223310C
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_022392C0

	thumb_func_start ov104_02239300
ov104_02239300: ; 0x02239300
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl sub_0204A32C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02239300

	thumb_func_start ov104_02239314
ov104_02239314: ; 0x02239314
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r6, #0
	add r4, r0, #0
	bl ov104_0223A580
	add r6, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #4
	str r6, [r4, r0]
	ldr r1, _0223935C ; =0x0000045F
	mov r0, #5
	mov r2, #1
	bl sub_02004550
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0]
	ldr r1, _02239360 ; =0x020EA358
	ldr r0, [r0, #0]
	add r2, r6, #0
	bl sub_0209B988
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223935C: .word 0x0000045F
_02239360: .word 0x020EA358
	thumb_func_end ov104_02239314

	thumb_func_start ov104_02239364
ov104_02239364: ; 0x02239364
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r6, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x14]
	bl sub_02052868
	ldr r1, _02239398 ; =0x000008CC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	strh r0, [r6]
	add r0, r5, #0
	bl sub_020520A4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02239398: .word 0x000008CC
	thumb_func_end ov104_02239364

	thumb_func_start ov104_0223939C
ov104_0223939C: ; 0x0223939C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r0, r4, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r4, #0
	bl ov104_0222FBE4
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	cmp r6, #2
	bne _022393D6
	add r1, r7, #0
	bl ov104_0223A734
	b _022393DA
_022393D6:
	bl GF_AssertFail
_022393DA:
	bl sub_0203608C
	ldr r1, _022393FC ; =0x0000083E
	add r1, r4, r1
	bl sub_02036614
	cmp r0, #1
	bne _022393F0
	mov r0, #1
	strh r0, [r5]
	b _022393F8
_022393F0:
	mov r0, #0
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022393F8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022393FC: .word 0x0000083E
	thumb_func_end ov104_0223939C

	thumb_func_start ov104_02239400
ov104_02239400: ; 0x02239400
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222EA48
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r1, r5, #0
	add r1, #0x78
	strh r4, [r1]
	add r1, r5, #0
	add r1, #0x7a
	strh r0, [r1]
	ldr r1, _02239428 ; =ov104_0223942C
	add r0, r5, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02239428: .word ov104_0223942C
	thumb_func_end ov104_02239400

	thumb_func_start ov104_0223942C
ov104_0223942C: ; 0x0223942C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x7a
	ldrh r0, [r0]
	str r0, [sp]
	add r0, r5, #0
	add r5, #0x78
	ldrh r3, [r5]
	ldr r2, [r4, #8]
	bl ov104_02239464
	cmp r0, #1
	bne _02239460
	mov r0, #1
	pop {r3, r4, r5, pc}
_02239460:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223942C

	thumb_func_start ov104_02239464
ov104_02239464: ; 0x02239464
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r5, r3, #0
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_0203664C
	add r7, r0, #0
	bne _02239480
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02239480:
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	add r0, r4, #0
	bl ov104_0222FC14
	add r4, r0, #0
	cmp r5, #2
	bne _0223949C
	add r0, r6, #0
	add r1, r7, #0
	bl ov104_0223A750
	strh r0, [r4]
	b _022394A0
_0223949C:
	bl GF_AssertFail
_022394A0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02239464

	.rodata


	.global Unk_ov104_0223FC94
Unk_ov104_0223FC94: ; 0x0223FC94
	.incbin "incbin/overlay104_rodata.bin", 0xA04, 0xA

