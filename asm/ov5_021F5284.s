	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F5284
ov5_021F5284: ; 0x021F5284
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x78
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #8]
	bl ov5_021F52B0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5284

	thumb_func_start ov5_021F52A0
ov5_021F52A0: ; 0x021F52A0
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F52D8
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F52A0

	thumb_func_start ov5_021F52B0
ov5_021F52B0: ; 0x021F52B0
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xc
	mov r3, #0x17
	bl ov5_021DFB00
	add r0, r4, #0
	add r4, #0xc
	add r0, #0x20
	add r1, r4, #0
	bl sub_02073B70
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F52B0

	thumb_func_start ov5_021F52D8
ov5_021F52D8: ; 0x021F52D8
	ldr r3, _021F52E0 ; =sub_0207395C
	add r0, #0xc
	bx r3
	nop
_021F52E0: .word sub_0207395C
	thumb_func_end ov5_021F52D8

	thumb_func_start ov5_021F52E4
ov5_021F52E4: ; 0x021F52E4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov5_021DF578
	add r4, r0, #0
	mov r1, #6
	str r4, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_02063050
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021F531C ; =0x02200A94
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021F531C: .word 0x02200A94
	thumb_func_end ov5_021F52E4

	thumb_func_start ov5_021F5320
ov5_021F5320: ; 0x021F5320
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x38]
	bl sub_02062910
	str r0, [r4, #8]
	ldr r0, [r4, #0x38]
	bl sub_02062918
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	add r1, sp, #0
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5320

	thumb_func_start ov5_021F5368
ov5_021F5368: ; 0x021F5368
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F5368

	thumb_func_start ov5_021F536C
ov5_021F536C: ; 0x021F536C
	push {r4, r5, lr}
	sub sp, #0xc
	add r2, r1, #0
	ldr r5, [r2, #0x38]
	ldr r1, [r2, #8]
	add r4, r0, #0
	ldr r2, [r2, #0xc]
	add r0, r5, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F5388
	bl sub_02022974
_021F5388:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063050
	mov r0, #0xa
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F536C

	thumb_func_start ov5_021F53A8
ov5_021F53A8: ; 0x021F53A8
	push {r4, r5, r6, lr}
	sub sp, #0x60
	ldr r5, _021F5420 ; =0x02200A88
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x48
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r6, _021F5424 ; =0x02200AA8
	str r0, [r3, #0]
	add r5, sp, #0x24
	mov r3, #4
_021F53C2:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021F53C2
	ldr r0, [r6, #0]
	add r1, sp, #0x54
	str r0, [r5, #0]
	add r0, r2, #0
	bl sub_020715E4
	mov r0, #0x19
	ldr r1, [sp, #0x58]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x58]
	mov r0, #5
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x5c]
	bl sub_020AF5E0
	mov r2, #0
	add r5, r0, #0
	add r0, sp, #0x24
	mov r1, #0x5a
	add r3, r2, #0
	bl sub_0201E2E0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020C4C88
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl sub_020BB8EC
	ldr r0, [r4, #0x34]
	add r1, sp, #0x54
	add r0, #0x20
	add r2, sp, #0x48
	add r3, sp, #0x24
	bl sub_02073C1C
	add sp, #0x60
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F5420: .word 0x02200A88
_021F5424: .word 0x02200AA8
	thumb_func_end ov5_021F53A8

	.rodata


	.global Unk_ov5_02200A88
Unk_ov5_02200A88: ; 0x02200A88
	.incbin "incbin/overlay5_rodata.bin", 0x8174, 0x8180 - 0x8174

	.global Unk_ov5_02200A94
Unk_ov5_02200A94: ; 0x02200A94
	.incbin "incbin/overlay5_rodata.bin", 0x8180, 0x8194 - 0x8180

	.global Unk_ov5_02200AA8
Unk_ov5_02200AA8: ; 0x02200AA8
	.incbin "incbin/overlay5_rodata.bin", 0x8194, 0x24

