	.include "macros/function.inc"
	.include "include/ov21_021D3208.inc"

	

	.text


	thumb_func_start ov21_021D3208
ov21_021D3208: ; 0x021D3208
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _021D32FC ; =0x00001770
	mov r1, #0
	add r5, r0, #0
	bl sub_020D5124
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	ldr r1, [r4, #8]
	ldr r0, _021D3300 ; =0x00001744
	str r1, [r5, r0]
	ldr r0, [r5, #0]
	bl sub_02027474
	cmp r0, #0
	beq _021D3232
	mov r1, #1
	b _021D3234
_021D3232:
	mov r1, #0
_021D3234:
	ldr r0, _021D3304 ; =0x00001734
	str r1, [r5, r0]
	ldr r0, [r4, #0x20]
	cmp r0, #2
	bne _021D324C
	ldr r0, _021D3304 ; =0x00001734
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D324A
	mov r0, #1
	b _021D324C
_021D324A:
	mov r0, #0
_021D324C:
	cmp r0, #1
	ldr r0, _021D3308 ; =0x00001730
	bne _021D325A
	mov r1, #1
	str r1, [r5, r0]
	mov r1, #0
	b _021D325E
_021D325A:
	mov r1, #0
	str r1, [r5, r0]
_021D325E:
	str r1, [sp]
	ldr r0, _021D3308 ; =0x00001730
	str r1, [sp, #4]
	ldr r0, [r5, r0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r6, [sp, #0xc]
	bl ov21_021D3684
	cmp r0, #0
	bne _021D327C
	bl sub_02022974
_021D327C:
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl ov21_021D3794
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl ov21_021D3434
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	bl ov21_021D344C
	ldr r0, [r4, #4]
	bl sub_02025FCC
	ldr r1, _021D330C ; =0x0000174C
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	bl sub_02025F30
	ldr r1, _021D3310 ; =0x00001750
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_02025F04
	ldr r1, _021D3314 ; =0x00001754
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_02098700
	ldr r1, _021D3318 ; =0x00001748
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	ldr r0, [r5, r1]
	bne _021D32D4
	mov r1, #0
	add r2, r6, #0
	bl sub_0209872C
	b _021D32DC
_021D32D4:
	mov r1, #1
	add r2, r6, #0
	bl sub_0209872C
_021D32DC:
	ldr r0, [r4, #0xc]
	ldr r1, _021D331C ; =0x00001760
	str r0, [r5, r1]
	ldr r2, [r4, #0x10]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	ldr r2, [r4, #0x14]
	add r0, #8
	str r2, [r5, r0]
	ldr r0, [r4, #0x18]
	add r1, #0xc
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D32FC: .word 0x00001770
_021D3300: .word 0x00001744
_021D3304: .word 0x00001734
_021D3308: .word 0x00001730
_021D330C: .word 0x0000174C
_021D3310: .word 0x00001750
_021D3314: .word 0x00001754
_021D3318: .word 0x00001748
_021D331C: .word 0x00001760
	thumb_func_end ov21_021D3208

	thumb_func_start ov21_021D3320
ov21_021D3320: ; 0x021D3320
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D3344 ; =0x00001754
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _021D3348 ; =0x00001748
	ldr r0, [r4, r0]
	bl sub_020987BC
	ldr r0, _021D3348 ; =0x00001748
	ldr r0, [r4, r0]
	bl sub_02098718
	ldr r0, _021D3348 ; =0x00001748
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D3344: .word 0x00001754
_021D3348: .word 0x00001748
	thumb_func_end ov21_021D3320

	thumb_func_start ov21_021D334C
ov21_021D334C: ; 0x021D334C
	ldr r3, _021D3358 ; =sub_02027058
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bx r3
	nop
_021D3358: .word sub_02027058
	thumb_func_end ov21_021D334C

	thumb_func_start ov21_021D335C
ov21_021D335C: ; 0x021D335C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1c
	blt _021D336A
	bl sub_02022974
_021D336A:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020270AC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D335C

	thumb_func_start ov21_021D3374
ov21_021D3374: ; 0x021D3374
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	blt _021D3382
	bl sub_02022974
_021D3382:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020270F8
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D3374

	thumb_func_start ov21_021D338C
ov21_021D338C: ; 0x021D338C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	blt _021D339A
	bl sub_02022974
_021D339A:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_02027154
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D338C

	thumb_func_start ov21_021D33A4
ov21_021D33A4: ; 0x021D33A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _021D33B2
	bl sub_02022974
_021D33B2:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020271B0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D33A4

	thumb_func_start ov21_021D33BC
ov21_021D33BC: ; 0x021D33BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _021D33CA
	bl sub_02022974
_021D33CA:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_02027208
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D33BC

	thumb_func_start ov21_021D33D4
ov21_021D33D4: ; 0x021D33D4
	ldr r3, _021D33DC ; =sub_0202756C
	ldr r0, [r0, #0]
	mov r2, #0
	bx r3
	; .align 2, 0
_021D33DC: .word sub_0202756C
	thumb_func_end ov21_021D33D4

	thumb_func_start ov21_021D33E0
ov21_021D33E0: ; 0x021D33E0
	push {r3, lr}
	mov r2, #1
	bl ov21_021D334C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021D33F4
	mov r0, #1
	pop {r3, pc}
_021D33F4:
	mov r0, #2
	pop {r3, pc}
	thumb_func_end ov21_021D33E0

	thumb_func_start ov21_021D33F8
ov21_021D33F8: ; 0x021D33F8
	ldr r3, _021D3400 ; =sub_0202702C
	ldr r0, [r0, #0]
	mov r1, #0
	bx r3
	; .align 2, 0
_021D3400: .word sub_0202702C
	thumb_func_end ov21_021D33F8

	thumb_func_start ov21_021D3404
ov21_021D3404: ; 0x021D3404
	ldr r3, _021D340C ; =sub_02027264
	ldr r0, [r0, #0]
	bx r3
	nop
_021D340C: .word sub_02027264
	thumb_func_end ov21_021D3404

	thumb_func_start ov21_021D3410
ov21_021D3410: ; 0x021D3410
	ldr r3, _021D3418 ; =sub_0202756C
	ldr r0, [r0, #0]
	bx r3
	nop
_021D3418: .word sub_0202756C
	thumb_func_end ov21_021D3410

	thumb_func_start ov21_021D341C
ov21_021D341C: ; 0x021D341C
	ldr r3, _021D3424 ; =sub_020276C8
	ldr r0, [r0, #0]
	bx r3
	nop
_021D3424: .word sub_020276C8
	thumb_func_end ov21_021D341C

	thumb_func_start ov21_021D3428
ov21_021D3428: ; 0x021D3428
	ldr r3, _021D3430 ; =sub_02027474
	ldr r0, [r0, #0]
	bx r3
	nop
_021D3430: .word sub_02027474
	thumb_func_end ov21_021D3428

	thumb_func_start ov21_021D3434
ov21_021D3434: ; 0x021D3434
	ldr r2, _021D343C ; =0x0000175C
	strh r1, [r0, r2]
	bx lr
	nop
_021D343C: .word 0x0000175C
	thumb_func_end ov21_021D3434

	thumb_func_start ov21_021D3440
ov21_021D3440: ; 0x021D3440
	ldr r1, _021D3448 ; =0x0000175C
	ldrh r0, [r0, r1]
	bx lr
	nop
_021D3448: .word 0x0000175C
	thumb_func_end ov21_021D3440

	thumb_func_start ov21_021D344C
ov21_021D344C: ; 0x021D344C
	ldr r2, _021D3454 ; =0x0000175E
	strh r1, [r0, r2]
	bx lr
	nop
_021D3454: .word 0x0000175E
	thumb_func_end ov21_021D344C

	thumb_func_start ov21_021D3458
ov21_021D3458: ; 0x021D3458
	ldr r1, _021D3460 ; =0x0000175E
	ldrh r0, [r0, r1]
	bx lr
	nop
_021D3460: .word 0x0000175E
	thumb_func_end ov21_021D3458

	thumb_func_start ov21_021D3464
ov21_021D3464: ; 0x021D3464
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r7, [sp, #0x4c]
	str r1, [sp, #0xc]
	add r5, r0, #0
	ldr r1, _021D367C ; =0x000003DA
	add r0, r7, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_02018184
	add r6, r0, #0
	bne _021D3482
	bl sub_02022974
_021D3482:
	ldr r2, _021D367C ; =0x000003DA
	add r0, r6, #0
	mov r1, #0
	bl sub_020D5124
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, _021D367C ; =0x000003DA
	add r0, r7, #0
	bl sub_02018184
	add r4, r0, #0
	bne _021D34A0
	bl sub_02022974
_021D34A0:
	ldr r2, _021D367C ; =0x000003DA
	add r0, r4, #0
	mov r1, #0
	bl sub_020D5124
	mov r1, #0
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x20]
	cmp r0, #0
	add r2, sp, #0x1c
	bne _021D34D2
	add r0, r7, #0
	mov r1, #1
	bl ov21_021D3B64
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	ldr r2, [r5, #0]
	add r0, r6, #0
	add r1, sp, #0x24
	bl ov21_021D39A4
	b _021D34EA
_021D34D2:
	add r0, r7, #0
	bl ov21_021D3B64
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	ldr r2, [r5, #0]
	add r0, r6, #0
	add r1, sp, #0x24
	bl ov21_021D39A4
_021D34EA:
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r3, r6, #0
	bl ov21_021D3B98
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	str r2, [sp, #0x24]
	mov r1, #0
	lsl r2, r2, #1
	bl sub_020D5124
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r3, r6, #0
	bl ov21_021D3C48
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _021D353E
	mov r7, #0
	b _021D3656
_021D353E:
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	str r2, [sp, #0x24]
	mov r1, #0
	lsl r2, r2, #1
	bl sub_020D5124
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, r6, #0
	bl ov21_021D3D2C
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _021D357A
	mov r7, #0
	b _021D3656
_021D357A:
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	str r2, [sp, #0x24]
	mov r1, #0
	lsl r2, r2, #1
	bl sub_020D5124
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r3, r6, #0
	bl ov21_021D3D2C
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _021D35B6
	mov r7, #0
	b _021D3656
_021D35B6:
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	str r2, [sp, #0x24]
	mov r1, #0
	lsl r2, r2, #1
	bl sub_020D5124
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r3, r6, #0
	bl ov21_021D3E80
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _021D35F2
	mov r7, #0
	b _021D3656
_021D35F2:
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	str r2, [sp, #0x24]
	mov r1, #0
	lsl r2, r2, #1
	bl sub_020D5124
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r1, [r5, #0]
	ldr r3, [sp, #0x24]
	add r0, r5, #4
	add r2, r6, #0
	bl ov21_021D3A60
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021D3638
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021D3638
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021D3638
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _021D3638
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _021D363C
_021D3638:
	mov r0, #1
	str r0, [sp, #0x50]
_021D363C:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _021D364E
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r5, #4
	bl ov21_021D3AB8
	b _021D3654
_021D364E:
	add r0, r5, #4
	bl ov21_021D3B28
_021D3654:
	mov r7, #1
_021D3656:
	ldr r2, _021D3680 ; =0x00001738
	add r0, r5, #4
	add r1, r5, r2
	add r2, r2, #4
	add r2, r5, r2
	bl ov21_021D3FA8
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x18]
	bl sub_020181C4
	add r0, r7, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D367C: .word 0x000003DA
_021D3680: .word 0x00001738
	thumb_func_end ov21_021D3464

	thumb_func_start ov21_021D3684
ov21_021D3684: ; 0x021D3684
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	bl ov21_021D3464
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov21_021D3684

	thumb_func_start ov21_021D36A4
ov21_021D36A4: ; 0x021D36A4
	cmp r1, #0
	bne _021D36AC
	mov r0, #1
	bx lr
_021D36AC:
	ldr r1, _021D36BC ; =0x00001734
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021D36B8
	mov r0, #1
	bx lr
_021D36B8:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D36BC: .word 0x00001734
	thumb_func_end ov21_021D36A4

	thumb_func_start ov21_021D36C0
ov21_021D36C0: ; 0x021D36C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D36A4
	cmp r0, #0
	beq _021D36D2
	ldr r1, _021D36D4 ; =0x00001730
	str r4, [r5, r1]
_021D36D2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D36D4: .word 0x00001730
	thumb_func_end ov21_021D36C0

	thumb_func_start ov21_021D36D8
ov21_021D36D8: ; 0x021D36D8
	ldr r1, _021D36E0 ; =0x00001730
	ldr r0, [r0, r1]
	bx lr
	nop
_021D36E0: .word 0x00001730
	thumb_func_end ov21_021D36D8

	thumb_func_start ov21_021D36E4
ov21_021D36E4: ; 0x021D36E4
	cmp r1, #0
	blt _021D36F6
	mov r2, #0xf7
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	cmp r1, r0
	bge _021D36F6
	mov r0, #1
	bx lr
_021D36F6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D36E4

	thumb_func_start ov21_021D36FC
ov21_021D36FC: ; 0x021D36FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D36E4
	cmp r0, #0
	beq _021D3712
	ldr r0, _021D3718 ; =0x00000F6C
	str r4, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D3712:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D3718: .word 0x00000F6C
	thumb_func_end ov21_021D36FC

	thumb_func_start ov21_021D371C
ov21_021D371C: ; 0x021D371C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021D3758 ; =0x00000F6C
	add r5, r0, #0
	ldr r1, [r5, r1]
	add r1, r1, r4
	bl ov21_021D36E4
	cmp r0, #0
	beq _021D373C
	ldr r0, _021D3758 ; =0x00000F6C
	ldr r1, [r5, r0]
	add r1, r1, r4
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D373C:
	cmp r4, #0
	blt _021D374C
	mov r0, #0xf7
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	sub r0, r0, #4
	sub r1, r1, #1
	b _021D3750
_021D374C:
	ldr r0, _021D3758 ; =0x00000F6C
	mov r1, #0
_021D3750:
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D3758: .word 0x00000F6C
	thumb_func_end ov21_021D371C

	thumb_func_start ov21_021D375C
ov21_021D375C: ; 0x021D375C
	ldr r1, _021D3764 ; =0x00000F6C
	ldr r0, [r0, r1]
	bx lr
	nop
_021D3764: .word 0x00000F6C
	thumb_func_end ov21_021D375C

	thumb_func_start ov21_021D3768
ov21_021D3768: ; 0x021D3768
	mov r1, #0xf7
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov21_021D3768

	thumb_func_start ov21_021D3770
ov21_021D3770: ; 0x021D3770
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D3768
	mov r2, #0
	cmp r0, #0
	ble _021D378E
_021D3780:
	ldr r1, [r5, #4]
	cmp r1, r4
	beq _021D378E
	add r2, r2, #1
	add r5, #8
	cmp r2, r0
	blt _021D3780
_021D378E:
	add r0, r2, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3770

	thumb_func_start ov21_021D3794
ov21_021D3794: ; 0x021D3794
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov21_021D3768
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021D3770
	add r1, r0, #0
	cmp r4, r1
	bls _021D37B6
	add r0, r5, #0
	bl ov21_021D36FC
	pop {r4, r5, r6, pc}
_021D37B6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3794

	thumb_func_start ov21_021D37BC
ov21_021D37BC: ; 0x021D37BC
	ldr r1, _021D37C8 ; =0x00000F6C
	ldr r1, [r0, r1]
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
_021D37C8: .word 0x00000F6C
	thumb_func_end ov21_021D37BC

	thumb_func_start ov21_021D37CC
ov21_021D37CC: ; 0x021D37CC
	ldr r1, _021D37D8 ; =0x00000F6C
	ldr r1, [r0, r1]
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
_021D37D8: .word 0x00000F6C
	thumb_func_end ov21_021D37CC

	thumb_func_start ov21_021D37DC
ov21_021D37DC: ; 0x021D37DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D36E4
	cmp r0, #0
	beq _021D37F2
	add r1, r5, #4
	lsl r0, r4, #3
	add r0, r1, r0
	pop {r3, r4, r5, pc}
_021D37F2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D37DC

	thumb_func_start ov21_021D37F8
ov21_021D37F8: ; 0x021D37F8
	ldr r2, _021D380C ; =0x0000172C
	ldr r0, [r0, r2]
	cmp r0, r1
	ble _021D3808
	cmp r1, #0
	blt _021D3808
	mov r0, #1
	bx lr
_021D3808:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D380C: .word 0x0000172C
	thumb_func_end ov21_021D37F8

	thumb_func_start ov21_021D3810
ov21_021D3810: ; 0x021D3810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D37F8
	cmp r0, #0
	beq _021D3836
	ldr r1, _021D383C ; =0x00001728
	add r0, r5, #0
	str r4, [r5, r1]
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _021D3840 ; =0x00000F74
	ldr r1, [r2, r1]
	bl ov21_021D36FC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D3836:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D383C: .word 0x00001728
_021D3840: .word 0x00000F74
	thumb_func_end ov21_021D3810

	thumb_func_start ov21_021D3844
ov21_021D3844: ; 0x021D3844
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D387C
	cmp r0, #0
	beq _021D386E
	ldr r1, _021D3874 ; =0x00001728
	ldr r0, [r5, r1]
	add r0, r0, r4
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _021D3878 ; =0x00000F74
	ldr r1, [r2, r1]
	bl ov21_021D36FC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D386E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D3874: .word 0x00001728
_021D3878: .word 0x00000F74
	thumb_func_end ov21_021D3844

	thumb_func_start ov21_021D387C
ov21_021D387C: ; 0x021D387C
	push {r3, lr}
	ldr r2, _021D3894 ; =0x00001728
	ldr r2, [r0, r2]
	add r1, r2, r1
	bl ov21_021D37F8
	cmp r0, #0
	beq _021D3890
	mov r0, #1
	pop {r3, pc}
_021D3890:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D3894: .word 0x00001728
	thumb_func_end ov21_021D387C

	thumb_func_start ov21_021D3898
ov21_021D3898: ; 0x021D3898
	ldr r1, _021D38A0 ; =0x00001728
	ldr r0, [r0, r1]
	bx lr
	nop
_021D38A0: .word 0x00001728
	thumb_func_end ov21_021D3898

	thumb_func_start ov21_021D38A4
ov21_021D38A4: ; 0x021D38A4
	ldr r1, _021D38AC ; =0x0000172C
	ldr r0, [r0, r1]
	bx lr
	nop
_021D38AC: .word 0x0000172C
	thumb_func_end ov21_021D38A4

	thumb_func_start ov21_021D38B0
ov21_021D38B0: ; 0x021D38B0
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021D38BC ; =0x00000F74
	ldr r0, [r1, r0]
	bx lr
	nop
_021D38BC: .word 0x00000F74
	thumb_func_end ov21_021D38B0

	thumb_func_start ov21_021D38C0
ov21_021D38C0: ; 0x021D38C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021D38F8 ; =0x0000172C
	mov r6, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _021D38F6
	ldr r7, _021D38F8 ; =0x0000172C
_021D38D0:
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021D38B0
	add r4, r0, #0
	add r0, r5, #0
	bl ov21_021D375C
	cmp r4, r0
	bne _021D38EE
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021D3810
	pop {r3, r4, r5, r6, r7, pc}
_021D38EE:
	ldr r0, [r5, r7]
	add r6, r6, #1
	cmp r6, r0
	blt _021D38D0
_021D38F6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D38F8: .word 0x0000172C
	thumb_func_end ov21_021D38C0

	thumb_func_start ov21_021D38FC
ov21_021D38FC: ; 0x021D38FC
	ldr r1, _021D3904 ; =0x00001738
	ldr r0, [r0, r1]
	bx lr
	nop
_021D3904: .word 0x00001738
	thumb_func_end ov21_021D38FC

	thumb_func_start ov21_021D3908
ov21_021D3908: ; 0x021D3908
	ldr r1, _021D3910 ; =0x0000173C
	ldr r0, [r0, r1]
	bx lr
	nop
_021D3910: .word 0x0000173C
	thumb_func_end ov21_021D3908

	thumb_func_start ov21_021D3914
ov21_021D3914: ; 0x021D3914
	ldr r1, _021D391C ; =0x00001754
	ldr r0, [r0, r1]
	bx lr
	nop
_021D391C: .word 0x00001754
	thumb_func_end ov21_021D3914

	thumb_func_start ov21_021D3920
ov21_021D3920: ; 0x021D3920
	ldr r1, _021D3928 ; =0x00001750
	ldr r0, [r0, r1]
	bx lr
	nop
_021D3928: .word 0x00001750
	thumb_func_end ov21_021D3920

	thumb_func_start ov21_021D392C
ov21_021D392C: ; 0x021D392C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov21_021D37BC
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_02027514
	cmp r0, #0
	bne _021D3946
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D3946:
	lsl r1, r4, #0x10
	ldr r0, [r5, #0]
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl sub_020274D0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D392C

	thumb_func_start ov21_021D3954
ov21_021D3954: ; 0x021D3954
	ldr r3, _021D395C ; =sub_02027494
	ldr r0, [r0, #0]
	bx r3
	nop
_021D395C: .word sub_02027494
	thumb_func_end ov21_021D3954

	thumb_func_start ov21_021D3960
ov21_021D3960: ; 0x021D3960
	ldr r1, _021D398C ; =0x021BF6BC
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	beq _021D3970
	ldr r1, _021D3990 ; =0x00001758
	mov r2, #0
	str r2, [r0, r1]
	bx lr
_021D3970:
	ldr r1, _021D3994 ; =0x021BF67C
	ldr r1, [r1, #0x48]
	cmp r1, #0
	beq _021D398A
	ldr r1, _021D3990 ; =0x00001758
	ldr r2, [r0, r1]
	cmp r2, #0
	bne _021D3986
	mov r2, #1
	str r2, [r0, r1]
	bx lr
_021D3986:
	mov r2, #2
	str r2, [r0, r1]
_021D398A:
	bx lr
	; .align 2, 0
_021D398C: .word 0x021BF6BC
_021D3990: .word 0x00001758
_021D3994: .word 0x021BF67C
	thumb_func_end ov21_021D3960

	thumb_func_start ov21_021D3998
ov21_021D3998: ; 0x021D3998
	ldr r1, _021D39A0 ; =0x00001758
	ldr r0, [r0, r1]
	bx lr
	nop
_021D39A0: .word 0x00001758
	thumb_func_end ov21_021D3998

	thumb_func_start ov21_021D39A4
ov21_021D39A4: ; 0x021D39A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [sp, #0x20]
	add r5, r1, #0
	mov r6, #0
	add r4, r3, #0
	str r0, [sp]
	str r2, [sp, #4]
	str r6, [r5, #0]
	cmp r7, #0
	ble _021D39DE
_021D39BA:
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	bl sub_02026FE8
	cmp r0, #0
	beq _021D39D6
	ldr r1, [r5, #0]
	ldrh r0, [r4]
	lsl r2, r1, #1
	ldr r1, [sp]
	strh r0, [r1, r2]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_021D39D6:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r7
	blt _021D39BA
_021D39DE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D39A4

	thumb_func_start ov21_021D39E4
ov21_021D39E4: ; 0x021D39E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	mov r1, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r6, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	str r3, [sp, #8]
	str r1, [r0, #0]
	add r0, r3, #0
	ldr r7, [sp, #0x2c]
	str r1, [sp, #0xc]
	cmp r0, #0
	ble _021D3A5C
_021D3A0C:
	mov r4, #0
	cmp r7, #0
	ble _021D3A34
	ldr r5, [sp, #0x28]
_021D3A14:
	ldrh r1, [r6]
	ldrh r0, [r5]
	cmp r1, r0
	bne _021D3A2C
	ldr r0, [sp, #0x30]
	cmp r0, #1
	beq _021D3A34
	ldr r0, [sp, #0x34]
	bl sub_02026F9C
	cmp r0, #0
	bne _021D3A34
_021D3A2C:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r7
	blt _021D3A14
_021D3A34:
	cmp r4, r7
	bge _021D3A4E
	ldr r0, [sp, #4]
	ldrh r2, [r6]
	ldr r0, [r0, #0]
	lsl r1, r0, #1
	ldr r0, [sp]
	strh r2, [r0, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0, #0]
_021D3A4E:
	ldr r0, [sp, #0xc]
	add r6, r6, #2
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D3A0C
_021D3A5C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D39E4

	thumb_func_start ov21_021D3A60
ov21_021D3A60: ; 0x021D3A60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021D3AB4 ; =0x00000F6C
	mov r6, #0
	add r7, r3, #0
	add r4, r2, #0
	str r1, [sp]
	str r6, [r5, r0]
	cmp r7, #0
	ble _021D3AB2
_021D3A74:
	ldrh r1, [r4]
	ldr r0, [sp]
	bl sub_02026F9C
	cmp r0, #0
	ldr r0, _021D3AB4 ; =0x00000F6C
	beq _021D3A8C
	ldr r0, [r5, r0]
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #2
	b _021D3A94
_021D3A8C:
	ldr r0, [r5, r0]
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #1
_021D3A94:
	str r0, [r1, #4]
	ldr r1, _021D3AB4 ; =0x00000F6C
	ldrh r0, [r4]
	ldr r1, [r5, r1]
	add r6, r6, #1
	lsl r1, r1, #3
	str r0, [r5, r1]
	ldr r0, _021D3AB4 ; =0x00000F6C
	add r4, r4, #2
	ldr r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _021D3AB4 ; =0x00000F6C
	str r1, [r5, r0]
	cmp r6, r7
	blt _021D3A74
_021D3AB2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3AB4: .word 0x00000F6C
	thumb_func_end ov21_021D3A60

	thumb_func_start ov21_021D3AB8
ov21_021D3AB8: ; 0x021D3AB8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r4, #0
	ldr r1, _021D3B1C ; =0x00001728
	mov ip, r2
	str r4, [r0, r1]
	add r1, r2, #0
	mov lr, r4
	cmp r1, #0
	ble _021D3B1A
	ldr r7, _021D3B1C ; =0x00001728
	add r5, r0, #0
_021D3AD0:
	ldr r1, _021D3B20 ; =0x00000F6C
	ldr r1, [r0, r1]
	cmp r4, r1
	bge _021D3B0C
	ldrh r1, [r6]
	ldr r2, [r5, #0]
	cmp r2, r1
	ldr r1, _021D3B1C ; =0x00001728
	bne _021D3AFA
	ldr r1, [r0, r1]
	add r5, #8
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0xf7
	lsl r1, r1, #4
	str r4, [r2, r1]
	ldr r1, [r0, r7]
	add r4, r4, #1
	add r1, r1, #1
	str r1, [r0, r7]
	b _021D3B0C
_021D3AFA:
	ldr r1, [r0, r1]
	ldr r2, _021D3B24 ; =0x000001EE
	lsl r1, r1, #2
	add r3, r0, r1
	lsl r1, r2, #3
	str r2, [r3, r1]
	ldr r1, [r0, r7]
	add r1, r1, #1
	str r1, [r0, r7]
_021D3B0C:
	mov r1, lr
	add r1, r1, #1
	mov r2, ip
	add r6, r6, #2
	mov lr, r1
	cmp r1, r2
	blt _021D3AD0
_021D3B1A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3B1C: .word 0x00001728
_021D3B20: .word 0x00000F6C
_021D3B24: .word 0x000001EE
	thumb_func_end ov21_021D3AB8

	thumb_func_start ov21_021D3B28
ov21_021D3B28: ; 0x021D3B28
	push {r3, r4, r5, r6}
	ldr r2, _021D3B5C ; =0x00001728
	mov r1, #0
	str r1, [r0, r2]
	ldr r2, _021D3B60 ; =0x00000F6C
	ldr r2, [r0, r2]
	cmp r2, #0
	ble _021D3B58
	ldr r5, _021D3B5C ; =0x00001728
	mov r3, #0xf7
	lsl r3, r3, #4
	add r2, r5, #0
	sub r4, r3, #4
_021D3B42:
	ldr r6, [r0, r2]
	lsl r6, r6, #2
	add r6, r0, r6
	str r1, [r6, r3]
	ldr r6, [r0, r5]
	add r1, r1, #1
	add r6, r6, #1
	str r6, [r0, r5]
	ldr r6, [r0, r4]
	cmp r1, r6
	blt _021D3B42
_021D3B58:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_021D3B5C: .word 0x00001728
_021D3B60: .word 0x00000F6C
	thumb_func_end ov21_021D3B28

	thumb_func_start ov21_021D3B64
ov21_021D3B64: ; 0x021D3B64
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0x2f
	blt _021D3B76
	bl sub_02022974
_021D3B76:
	bl sub_020989B8
	mov r2, #0
	str r2, [sp]
	add r1, sp, #8
	add r5, #0xb
	str r1, [sp, #4]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02007068
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4, #0]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3B64

	thumb_func_start ov21_021D3B98
ov21_021D3B98: ; 0x021D3B98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r7, r2, #0
	mov r4, #0
	str r3, [sp, #0x14]
	ldr r0, [sp, #0x34]
	cmp r5, #5
	bhi _021D3C06
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3BB8: ; jump table
	.short _021D3BC4 - _021D3BB8 - 2 ; case 0
	.short _021D3BC8 - _021D3BB8 - 2 ; case 1
	.short _021D3BD6 - _021D3BB8 - 2 ; case 2
	.short _021D3BE2 - _021D3BB8 - 2 ; case 3
	.short _021D3BEE - _021D3BB8 - 2 ; case 4
	.short _021D3BFA - _021D3BB8 - 2 ; case 5
_021D3BC4:
	add r6, r4, #0
	b _021D3C0A
_021D3BC8:
	mov r1, #2
	add r2, sp, #0x18
	bl ov21_021D3B64
	add r6, r0, #0
	mov r4, #1
	b _021D3C0A
_021D3BD6:
	mov r1, #3
	add r2, sp, #0x18
	bl ov21_021D3B64
	add r6, r0, #0
	b _021D3C0A
_021D3BE2:
	mov r1, #4
	add r2, sp, #0x18
	bl ov21_021D3B64
	add r6, r0, #0
	b _021D3C0A
_021D3BEE:
	mov r1, #5
	add r2, sp, #0x18
	bl ov21_021D3B64
	add r6, r0, #0
	b _021D3C0A
_021D3BFA:
	mov r1, #6
	add r2, sp, #0x18
	bl ov21_021D3B64
	add r6, r0, #0
	b _021D3C0A
_021D3C06:
	bl sub_02022974
_021D3C0A:
	cmp r6, #0
	beq _021D3C32
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x18]
	bl ov21_021D39E4
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021D3C32:
	ldr r2, [sp, #0x30]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r0, [sp, #0x30]
	str r0, [r7, #0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3B98

	thumb_func_start ov21_021D3C48
ov21_021D3C48: ; 0x021D3C48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x34]
	cmp r5, #9
	bhi _021D3CEA
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3C66: ; jump table
	.short _021D3C7A - _021D3C66 - 2 ; case 0
	.short _021D3C7E - _021D3C66 - 2 ; case 1
	.short _021D3C8A - _021D3C66 - 2 ; case 2
	.short _021D3C96 - _021D3C66 - 2 ; case 3
	.short _021D3CA2 - _021D3C66 - 2 ; case 4
	.short _021D3CAE - _021D3C66 - 2 ; case 5
	.short _021D3CBA - _021D3C66 - 2 ; case 6
	.short _021D3CC6 - _021D3C66 - 2 ; case 7
	.short _021D3CD2 - _021D3C66 - 2 ; case 8
	.short _021D3CDE - _021D3C66 - 2 ; case 9
_021D3C7A:
	mov r4, #0
	b _021D3CEE
_021D3C7E:
	mov r1, #7
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3C8A:
	mov r1, #8
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3C96:
	mov r1, #9
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3CA2:
	mov r1, #0xa
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3CAE:
	mov r1, #0xb
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3CBA:
	mov r1, #0xc
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3CC6:
	mov r1, #0xd
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3CD2:
	mov r1, #0xe
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3CDE:
	mov r1, #0xf
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3CEE
_021D3CEA:
	bl sub_02022974
_021D3CEE:
	cmp r4, #0
	beq _021D3D16
	str r4, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021D39E4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D3D16:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r0, [sp, #0x30]
	str r0, [r6, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3C48

	thumb_func_start ov21_021D3D2C
ov21_021D3D2C: ; 0x021D3D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x34]
	cmp r5, #0x11
	bhi _021D3E3E
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3D4A: ; jump table
	.short _021D3D6E - _021D3D4A - 2 ; case 0
	.short _021D3D72 - _021D3D4A - 2 ; case 1
	.short _021D3D7E - _021D3D4A - 2 ; case 2
	.short _021D3D8A - _021D3D4A - 2 ; case 3
	.short _021D3D96 - _021D3D4A - 2 ; case 4
	.short _021D3DA2 - _021D3D4A - 2 ; case 5
	.short _021D3DAE - _021D3D4A - 2 ; case 6
	.short _021D3DBA - _021D3D4A - 2 ; case 7
	.short _021D3DC6 - _021D3D4A - 2 ; case 8
	.short _021D3DD2 - _021D3D4A - 2 ; case 9
	.short _021D3DDE - _021D3D4A - 2 ; case 10
	.short _021D3DEA - _021D3D4A - 2 ; case 11
	.short _021D3DF6 - _021D3D4A - 2 ; case 12
	.short _021D3E02 - _021D3D4A - 2 ; case 13
	.short _021D3E0E - _021D3D4A - 2 ; case 14
	.short _021D3E1A - _021D3D4A - 2 ; case 15
	.short _021D3E26 - _021D3D4A - 2 ; case 16
	.short _021D3E32 - _021D3D4A - 2 ; case 17
_021D3D6E:
	mov r4, #0
	b _021D3E42
_021D3D72:
	mov r1, #0x10
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3D7E:
	mov r1, #0x11
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3D8A:
	mov r1, #0x12
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3D96:
	mov r1, #0x13
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3DA2:
	mov r1, #0x14
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3DAE:
	mov r1, #0x15
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3DBA:
	mov r1, #0x16
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3DC6:
	mov r1, #0x17
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3DD2:
	mov r1, #0x18
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3DDE:
	mov r1, #0x19
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3DEA:
	mov r1, #0x1a
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3DF6:
	mov r1, #0x1b
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3E02:
	mov r1, #0x1c
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3E0E:
	mov r1, #0x1d
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3E1A:
	mov r1, #0x1e
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3E26:
	mov r1, #0x1f
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3E32:
	mov r1, #0x20
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3E42
_021D3E3E:
	bl sub_02022974
_021D3E42:
	cmp r4, #0
	beq _021D3E6A
	str r4, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021D39E4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D3E6A:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r0, [sp, #0x30]
	str r0, [r6, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3D2C

	thumb_func_start ov21_021D3E80
ov21_021D3E80: ; 0x021D3E80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x34]
	cmp r5, #0xe
	bhi _021D3F68
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3E9E: ; jump table
	.short _021D3EBC - _021D3E9E - 2 ; case 0
	.short _021D3EC0 - _021D3E9E - 2 ; case 1
	.short _021D3ECC - _021D3E9E - 2 ; case 2
	.short _021D3ED8 - _021D3E9E - 2 ; case 3
	.short _021D3EE4 - _021D3E9E - 2 ; case 4
	.short _021D3EF0 - _021D3E9E - 2 ; case 5
	.short _021D3EFC - _021D3E9E - 2 ; case 6
	.short _021D3F08 - _021D3E9E - 2 ; case 7
	.short _021D3F14 - _021D3E9E - 2 ; case 8
	.short _021D3F20 - _021D3E9E - 2 ; case 9
	.short _021D3F2C - _021D3E9E - 2 ; case 10
	.short _021D3F38 - _021D3E9E - 2 ; case 11
	.short _021D3F44 - _021D3E9E - 2 ; case 12
	.short _021D3F50 - _021D3E9E - 2 ; case 13
	.short _021D3F5C - _021D3E9E - 2 ; case 14
_021D3EBC:
	mov r4, #0
	b _021D3F6C
_021D3EC0:
	mov r1, #0x21
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3ECC:
	mov r1, #0x22
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3ED8:
	mov r1, #0x23
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3EE4:
	mov r1, #0x24
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3EF0:
	mov r1, #0x25
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3EFC:
	mov r1, #0x26
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F08:
	mov r1, #0x27
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F14:
	mov r1, #0x28
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F20:
	mov r1, #0x29
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F2C:
	mov r1, #0x2a
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F38:
	mov r1, #0x2b
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F44:
	mov r1, #0x2c
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F50:
	mov r1, #0x2d
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F5C:
	mov r1, #0x2e
	add r2, sp, #0x14
	bl ov21_021D3B64
	add r4, r0, #0
	b _021D3F6C
_021D3F68:
	bl sub_02022974
_021D3F6C:
	cmp r4, #0
	beq _021D3F94
	str r4, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021D39E4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D3F94:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	ldr r0, [sp, #0x30]
	str r0, [r6, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D3E80

	thumb_func_start ov21_021D3FA8
ov21_021D3FA8: ; 0x021D3FA8
	push {r3, r4, r5, r6}
	mov r3, #0
	str r3, [r1, #0]
	ldr r4, _021D3FDC ; =0x00000F6C
	str r3, [r2, #0]
	ldr r4, [r0, r4]
	cmp r4, #0
	ble _021D3FD8
	ldr r5, _021D3FDC ; =0x00000F6C
	add r4, r0, #0
_021D3FBC:
	ldr r6, [r4, #4]
	cmp r6, #2
	bne _021D3FC8
	ldr r6, [r2, #0]
	add r6, r6, #1
	str r6, [r2, #0]
_021D3FC8:
	ldr r6, [r1, #0]
	add r3, r3, #1
	add r6, r6, #1
	str r6, [r1, #0]
	ldr r6, [r0, r5]
	add r4, #8
	cmp r3, r6
	blt _021D3FBC
_021D3FD8:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_021D3FDC: .word 0x00000F6C
	thumb_func_end ov21_021D3FA8