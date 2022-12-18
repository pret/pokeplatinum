	.include "macros/function.inc"
	.include "include/ov5_021F10E8.inc"

	

	.text


	thumb_func_start ov5_021F10E8
ov5_021F10E8: ; 0x021F10E8
	push {r4, lr}
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	add r4, r0, #0
	bl ov5_021DF53C
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F10E8

	thumb_func_start ov5_021F10FC
ov5_021F10FC: ; 0x021F10FC
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F114C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F110E
	bl ov5_021DF554
_021F110E:
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F10FC

	thumb_func_start ov5_021F1118
ov5_021F1118: ; 0x021F1118
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	str r1, [r5, #0]
	mov r2, #0
	add r0, r3, #0
	add r1, r5, #4
	add r3, r4, #0
	str r2, [sp]
	bl ov5_021DFB00
	add r0, r5, #0
	add r0, #0x18
	add r1, r5, #4
	bl sub_02073B70
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F1118

	thumb_func_start ov5_021F113C
ov5_021F113C: ; 0x021F113C
	ldr r1, _021F1144 ; =0x0000FFFF
	ldr r3, _021F1148 ; =sub_0207395C
	stmia r0!, {r1}
	bx r3
	; .align 2, 0
_021F1144: .word 0x0000FFFF
_021F1148: .word sub_0207395C
	thumb_func_end ov5_021F113C

	thumb_func_start ov5_021F114C
ov5_021F114C: ; 0x021F114C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #4]
	mov r4, #0
	ldr r5, [r0, #8]
	cmp r6, #0
	bls _021F116E
	ldr r7, _021F1170 ; =0x0000FFFF
_021F115A:
	ldr r0, [r5, #0]
	cmp r0, r7
	beq _021F1166
	add r0, r5, #0
	bl ov5_021F113C
_021F1166:
	add r4, r4, #1
	add r5, #0x6c
	cmp r4, r6
	blo _021F115A
_021F116E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F1170: .word 0x0000FFFF
	thumb_func_end ov5_021F114C

	thumb_func_start ov5_021F1174
ov5_021F1174: ; 0x021F1174
	ldr r3, [r0, #4]
	ldr r0, [r0, #8]
_021F1178:
	ldr r2, [r0, #0]
	cmp r2, r1
	beq _021F1186
	add r0, #0x6c
	sub r3, r3, #1
	bne _021F1178
	mov r0, #0
_021F1186:
	bx lr
	thumb_func_end ov5_021F1174

	thumb_func_start ov5_021F1188
ov5_021F1188: ; 0x021F1188
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x1d
	add r6, r0, #0
	bl ov5_021DF55C
	add r4, r0, #0
	cmp r5, #0
	bne _021F119E
	bl sub_02022974
_021F119E:
	mov r1, #0x6c
	mov r2, #0
	add r0, r6, #0
	mul r1, r5
	add r3, r2, #0
	str r5, [r4, #4]
	bl ov5_021DF53C
	ldr r1, _021F11BC ; =0x0000FFFF
	str r0, [r4, #8]
_021F11B2:
	str r1, [r0, #0]
	add r0, #0x6c
	sub r5, r5, #1
	bne _021F11B2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F11BC: .word 0x0000FFFF
	thumb_func_end ov5_021F1188

	thumb_func_start ov5_021F11C0
ov5_021F11C0: ; 0x021F11C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x1d
	add r5, r0, #0
	add r6, r2, #0
	bl ov5_021DF55C
	add r1, r4, #0
	add r7, r0, #0
	bl ov5_021F1174
	cmp r0, #0
	bne _021F11F6
	ldr r1, _021F11F8 ; =0x0000FFFF
	add r0, r7, #0
	bl ov5_021F1174
	cmp r0, #0
	bne _021F11EC
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_021F11EC:
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov5_021F1118
_021F11F6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F11F8: .word 0x0000FFFF
	thumb_func_end ov5_021F11C0

	thumb_func_start ov5_021F11FC
ov5_021F11FC: ; 0x021F11FC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x1d
	bl ov5_021DF55C
	add r1, r4, #0
	bl ov5_021F1174
	add r4, r0, #0
	bne _021F1214
	bl sub_02022974
_021F1214:
	add r4, #0x18
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F11FC

	thumb_func_start ov5_021F121C
ov5_021F121C: ; 0x021F121C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl ov5_021DF578
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062920
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_02062758
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F1254 ; =0x0220021C
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021F1254: .word 0x0220021C
	thumb_func_end ov5_021F121C

	thumb_func_start ov5_021F1258
ov5_021F1258: ; 0x021F1258
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x24]
	bl sub_02062910
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov5_021F11FC
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	bl sub_02062E94
	cmp r0, #1
	ldr r0, [r4, #0x24]
	bne _021F1294
	bl sub_02062C18
	b _021F1298
_021F1294:
	bl sub_02062918
_021F1298:
	str r0, [r4, #8]
	add r4, #0xc
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020715E4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F1258

	thumb_func_start ov5_021F12A8
ov5_021F12A8: ; 0x021F12A8
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F12A8

	thumb_func_start ov5_021F12AC
ov5_021F12AC: ; 0x021F12AC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x24]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F12CE
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021F12CE:
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02063050
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02063078
	ldr r1, [sp]
	ldr r0, [r4, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0x14]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_020715D4
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F12AC

	thumb_func_start ov5_021F1310
ov5_021F1310: ; 0x021F1310
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_02073BB4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F1310

	thumb_func_start ov5_021F1328
ov5_021F1328: ; 0x021F1328
	push {r4, r5, r6, lr}
	mov r5, #9
	add r1, r5, #0
	add r6, r0, #0
	ldr r4, _021F1348 ; =0x02200230
	bl ov5_021F1188
_021F1336:
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl ov5_021F11C0
	add r4, #8
	sub r5, r5, #1
	bne _021F1336
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F1348: .word 0x02200230
	thumb_func_end ov5_021F1328

	.rodata


	.global Unk_ov5_0220021C
Unk_ov5_0220021C: ; 0x0220021C
	.incbin "incbin/overlay5_rodata.bin", 0x7908, 0x791C - 0x7908

	.global Unk_ov5_02200230
Unk_ov5_02200230: ; 0x02200230
	.incbin "incbin/overlay5_rodata.bin", 0x791C, 0x48

