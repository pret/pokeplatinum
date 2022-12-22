	.include "macros/function.inc"
	.include "include/ov97_02238534.inc"

	

	.text


	thumb_func_start ov97_02238534
ov97_02238534: ; 0x02238534
	push {r4, lr}
	ldr r1, _02238570 ; =0x022403F8
	add r4, r0, #0
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02238550
	ldr r3, [r1, #0]
	ldr r1, _02238574 ; =0x00001150
	ldr r0, _02238578 ; =0x0223F10C
	ldr r1, [r3, r1]
	lsl r3, r1, #2
	ldr r1, _0223857C ; =0x0223F0E4
	ldr r1, [r1, r3]
	blx r2
_02238550:
	ldr r3, _02238570 ; =0x022403F8
	ldr r1, _02238574 ; =0x00001150
	ldr r0, [r3, #0]
	str r4, [r0, r1]
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _0223856C
	ldr r3, [r3, #0]
	ldr r0, _02238580 ; =0x0223F114
	ldr r1, [r3, r1]
	lsl r3, r1, #2
	ldr r1, _0223857C ; =0x0223F0E4
	ldr r1, [r1, r3]
	blx r2
_0223856C:
	pop {r4, pc}
	nop
_02238570: .word 0x022403F8
_02238574: .word 0x00001150
_02238578: .word 0x0223F10C
_0223857C: .word 0x0223F0E4
_02238580: .word 0x0223F114
	thumb_func_end ov97_02238534

	thumb_func_start ov97_02238584
ov97_02238584: ; 0x02238584
	ldr r1, _02238598 ; =0x022403F8
	ldr r3, [r1, #0]
	ldr r1, _0223859C ; =0x00001150
	ldr r2, [r3, r1]
	sub r2, #9
	cmp r2, #1
	bls _02238596
	add r1, r1, #4
	str r0, [r3, r1]
_02238596:
	bx lr
	; .align 2, 0
_02238598: .word 0x022403F8
_0223859C: .word 0x00001150
	thumb_func_end ov97_02238584

	thumb_func_start ov97_022385A0
ov97_022385A0: ; 0x022385A0
	push {r4, lr}
	ldr r0, _0223860C ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238610 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #4
	bne _022385B2
	bl OS_Terminate
_022385B2:
	mov r0, #2
	bl ov97_02238534
	ldr r3, _0223860C ; =0x022403F8
	ldr r0, _02238614 ; =0x0000FFFF
	ldr r2, [r3, #0]
	ldr r1, _02238618 ; =0x00000FCC
	strh r0, [r2, r1]
	sub r2, r1, #2
	ldr r4, [r3, #0]
	sub r1, r1, #4
	strh r0, [r4, r2]
	ldr r2, [r3, #0]
	strh r0, [r2, r1]
	bl ov97_02238624
	cmp r0, #0
	bne _022385F0
	mov r0, #9
	bl ov97_02238534
	ldr r0, _0223860C ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _0223861C ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022385EC
	mov r0, #4
	blx r1
_022385EC:
	mov r0, #0
	pop {r4, pc}
_022385F0:
	ldr r1, _0223860C ; =0x022403F8
	ldr r0, _02238620 ; =0x00001158
	ldr r2, [r1, #0]
	mov r3, #2
	strh r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, #0x24
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238608
	mov r0, #0
	blx r1
_02238608:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0223860C: .word 0x022403F8
_02238610: .word 0x00001150
_02238614: .word 0x0000FFFF
_02238618: .word 0x00000FCC
_0223861C: .word 0x0000117C
_02238620: .word 0x00001158
	thumb_func_end ov97_022385A0

	thumb_func_start ov97_02238624
ov97_02238624: ; 0x02238624
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022386FC ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238700 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _02238638
	bl OS_Terminate
	mov r0, #0
_02238638:
	bl WM_GetAllowedChannel
	add r4, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r4, r0
	bne _02238650
	mov r0, #3
	bl ov97_02238584
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02238650:
	cmp r4, #0
	bne _0223865E
	mov r0, #0x16
	bl ov97_02238584
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223865E:
	ldr r0, _022386FC ; =0x022403F8
	ldr r2, [r0, #0]
	ldr r0, _02238704 ; =0x00001176
	ldrh r1, [r2, r0]
	cmp r1, #0x10
	blo _022386A0
	sub r1, #0x10
	mov r5, #0
	mov r7, #0xd
	mov r6, #1
	b _02238686
_02238674:
	add r0, r1, #1
	add r1, r7, #0
	bl _s32_div_f
	add r0, r6, #0
	lsl r0, r1
	tst r0, r4
	bne _0223868A
	add r5, r5, #1
_02238686:
	cmp r5, #0xd
	blt _02238674
_0223868A:
	ldr r2, _022386FC ; =0x022403F8
	add r4, r1, #0
	ldr r3, [r2, #0]
	ldr r0, _02238704 ; =0x00001176
	add r4, #0x10
	strh r4, [r3, r0]
	add r3, r1, #1
	ldr r1, [r2, #0]
	ldr r0, _02238708 ; =0x00000FC4
	strh r3, [r1, r0]
	b _022386A4
_022386A0:
	ldr r0, _02238708 ; =0x00000FC4
	strh r1, [r2, r0]
_022386A4:
	ldr r2, _022386FC ; =0x022403F8
	ldr r0, _0223870C ; =0x00000FC6
	ldr r1, [r2, #0]
	mov r3, #0xdc
	strh r3, [r1, r0]
	add r1, r0, #0
	ldr r3, [r2, #0]
	sub r1, #0xc6
	add r1, r3, r1
	sub r0, r0, #6
	str r1, [r3, r0]
	ldr r1, [r2, #0]
	ldr r0, _02238710 ; =0x00001158
	ldrh r0, [r1, r0]
	cmp r0, #3
	bne _022386DA
	mov r5, #0
	ldr r0, _02238714 ; =0x00001170
	ldr r1, _02238718 ; =0x00000FC8
	b _022386D6
_022386CC:
	ldr r3, [r2, #0]
	add r4, r3, r5
	ldrb r3, [r4, r0]
	add r5, r5, #1
	strb r3, [r4, r1]
_022386D6:
	cmp r5, #6
	blt _022386CC
_022386DA:
	ldr r1, _022386FC ; =0x022403F8
	ldr r0, _0223871C ; =ov97_02238720
	ldr r2, [r1, #0]
	mov r1, #0x3f
	lsl r1, r1, #6
	add r1, r2, r1
	bl WM_StartScan
	cmp r0, #2
	beq _022386F6
	bl ov97_02238584
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022386F6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022386FC: .word 0x022403F8
_02238700: .word 0x00001150
_02238704: .word 0x00001176
_02238708: .word 0x00000FC4
_0223870C: .word 0x00000FC6
_02238710: .word 0x00001158
_02238714: .word 0x00001170
_02238718: .word 0x00000FC8
_0223871C: .word ov97_02238720
	thumb_func_end ov97_02238624

	thumb_func_start ov97_02238720
ov97_02238720: ; 0x02238720
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02238746
	bl ov97_02238584
	mov r0, #9
	bl ov97_02238534
	ldr r0, _02238834 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238838 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	mov r0, #4
	blx r1
	pop {r3, r4, r5, pc}
_02238746:
	ldr r0, _02238834 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _0223883C ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _02238772
	bl ov97_02238858
	cmp r0, #0
	bne _02238832
	mov r0, #9
	bl ov97_02238534
	ldr r0, _02238834 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238838 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	mov r0, #4
	blx r1
	pop {r3, r4, r5, pc}
_02238772:
	ldrh r0, [r4, #8]
	cmp r0, #3
	beq _02238832
	cmp r0, #4
	beq _02238814
	cmp r0, #5
	bne _02238814
	mov r0, #0xf
	lsl r0, r0, #8
	add r0, r1, r0
	mov r1, #0xc0
	bl DC_InvalidateRange
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _0223879A
	ldr r1, [r4, #0x3c]
	ldr r0, _02238840 ; =0x00400318
	cmp r1, r0
	beq _022387AC
_0223879A:
	ldr r0, _02238834 ; =0x022403F8
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _02238814
	ldr r0, _02238844 ; =0x0223F118
	ldr r1, [r4, #0x3c]
	ldr r2, _02238840 ; =0x00400318
	blx r3
	b _02238814
_022387AC:
	ldr r1, _02238834 ; =0x022403F8
	ldrh r3, [r4, #0x12]
	ldr r2, [r1, #0]
	ldr r0, _02238848 ; =0x0000116C
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	sub r0, #0x14
	ldrh r0, [r1, r0]
	cmp r0, #2
	bne _022387F8
	add r0, r4, #0
	add r0, #0x48
	bl ov97_02238AB4
	ldr r2, _02238834 ; =0x022403F8
	ldr r1, _0223884C ; =0x00001170
	mov r0, #0
_022387CE:
	add r3, r4, r0
	ldrb r5, [r3, #0xa]
	ldr r3, [r2, #0]
	add r3, r3, r0
	add r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, #6
	blt _022387CE
	ldr r1, _02238834 ; =0x022403F8
	ldr r0, _02238850 ; =0x00001176
	ldr r3, [r1, #0]
	ldrh r2, [r3, r0]
	sub r2, #0xf
	strh r2, [r3, r0]
	ldr r1, [r1, #0]
	add r0, r0, #6
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022387F8
	mov r0, #1
	blx r1
_022387F8:
	add r4, #0x48
	add r0, r4, #0
	bl ov97_02238B34
	cmp r0, #0
	beq _02238814
	ldr r0, _02238834 ; =0x022403F8
	mov r2, #4
	ldr r1, [r0, #0]
	ldr r0, _02238854 ; =0x00001158
	strh r2, [r1, r0]
	bl ov97_022389C8
	pop {r3, r4, r5, pc}
_02238814:
	bl ov97_02238624
	cmp r0, #0
	bne _02238832
	mov r0, #9
	bl ov97_02238534
	ldr r0, _02238834 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238838 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	mov r0, #4
	blx r1
_02238832:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238834: .word 0x022403F8
_02238838: .word 0x0000117C
_0223883C: .word 0x00001150
_02238840: .word 0x00400318
_02238844: .word 0x0223F118
_02238848: .word 0x0000116C
_0223884C: .word 0x00001170
_02238850: .word 0x00001176
_02238854: .word 0x00001158
	thumb_func_end ov97_02238720

	thumb_func_start ov97_02238858
ov97_02238858: ; 0x02238858
	push {r3, lr}
	ldr r0, _02238870 ; =ov97_02238874
	bl WM_EndScan
	cmp r0, #2
	beq _0223886C
	bl ov97_02238584
	mov r0, #0
	pop {r3, pc}
_0223886C:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02238870: .word ov97_02238874
	thumb_func_end ov97_02238858

	thumb_func_start ov97_02238874
ov97_02238874: ; 0x02238874
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02238882
	bl ov97_02238584
	pop {r3, pc}
_02238882:
	mov r0, #1
	bl ov97_02238534
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02238874

	thumb_func_start ov97_0223888C
ov97_0223888C: ; 0x0223888C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0223889C
	mov r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_0223889C:
	mov r0, #0
	bl ov97_02238534
	ldr r0, _022388B4 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _022388B8 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022388B2
	mov r0, #3
	blx r1
_022388B2:
	pop {r3, pc}
	; .align 2, 0
_022388B4: .word 0x022403F8
_022388B8: .word 0x0000117C
	thumb_func_end ov97_0223888C

	thumb_func_start ov97_022388BC
ov97_022388BC: ; 0x022388BC
	push {r3, lr}
	ldr r0, _022388D8 ; =0x022403F8
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _022388DC ; =0x00001154
	str r2, [r1, r0]
	bl ov97_02238908
	cmp r0, #0
	beq _022388D4
	mov r0, #1
	pop {r3, pc}
_022388D4:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022388D8: .word 0x022403F8
_022388DC: .word 0x00001154
	thumb_func_end ov97_022388BC

	thumb_func_start ov97_022388E0
ov97_022388E0: ; 0x022388E0
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	bne _022388FE
	mov r0, #9
	bl ov97_02238534
	ldr r0, _02238900 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238904 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022388FE
	mov r0, #4
	blx r1
_022388FE:
	pop {r3, pc}
	; .align 2, 0
_02238900: .word 0x022403F8
_02238904: .word 0x0000117C
	thumb_func_end ov97_022388E0

	thumb_func_start ov97_02238908
ov97_02238908: ; 0x02238908
	push {r3, lr}
	mov r0, #3
	bl ov97_02238534
	ldr r0, _02238934 ; =0x022403F8
	ldr r1, _02238938 ; =ov97_0223893C
	ldr r0, [r0, #0]
	mov r2, #2
	bl WM_Initialize
	cmp r0, #2
	beq _0223892E
	bl ov97_02238584
	mov r0, #0xa
	bl ov97_02238534
	mov r0, #0
	pop {r3, pc}
_0223892E:
	mov r0, #1
	pop {r3, pc}
	nop
_02238934: .word 0x022403F8
_02238938: .word ov97_0223893C
	thumb_func_end ov97_02238908

	thumb_func_start ov97_0223893C
ov97_0223893C: ; 0x0223893C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02238950
	bl ov97_02238584
	mov r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_02238950:
	ldr r0, _02238974 ; =ov97_022388E0
	bl WM_SetIndCallback
	cmp r0, #0
	beq _02238966
	bl ov97_02238584
	mov r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_02238966:
	mov r0, #1
	bl ov97_02238534
	bl ov97_022385A0
	pop {r3, pc}
	nop
_02238974: .word ov97_022388E0
	thumb_func_end ov97_0223893C

	thumb_func_start ov97_02238978
ov97_02238978: ; 0x02238978
	push {r3, lr}
	ldr r0, _022389B8 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _022389BC ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _0223898A
	bl OS_Terminate
_0223898A:
	mov r0, #3
	bl ov97_02238534
	ldr r0, _022389C0 ; =ov97_0223888C
	bl WM_End
	cmp r0, #2
	beq _022389B4
	mov r0, #9
	bl ov97_02238534
	ldr r0, _022389B8 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _022389C4 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022389B0
	mov r0, #4
	blx r1
_022389B0:
	mov r0, #0
	pop {r3, pc}
_022389B4:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_022389B8: .word 0x022403F8
_022389BC: .word 0x00001150
_022389C0: .word ov97_0223888C
_022389C4: .word 0x0000117C
	thumb_func_end ov97_02238978

	thumb_func_start ov97_022389C8
ov97_022389C8: ; 0x022389C8
	push {r3, lr}
	ldr r0, _022389E4 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _022389E8 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _022389DC
	bl ov97_02238978
	pop {r3, pc}
_022389DC:
	bl ov97_022389EC
	pop {r3, pc}
	nop
_022389E4: .word 0x022403F8
_022389E8: .word 0x00001150
	thumb_func_end ov97_022389C8

	thumb_func_start ov97_022389EC
ov97_022389EC: ; 0x022389EC
	push {r3, lr}
	mov r0, #3
	bl ov97_02238534
	ldr r0, _02238A0C ; =ov97_02238A10
	bl WM_Reset
	cmp r0, #2
	beq _02238A06
	bl ov97_02238584
	mov r0, #0
	pop {r3, pc}
_02238A06:
	mov r0, #1
	pop {r3, pc}
	nop
_02238A0C: .word ov97_02238A10
	thumb_func_end ov97_022389EC

	thumb_func_start ov97_02238A10
ov97_02238A10: ; 0x02238A10
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02238A38
	mov r0, #9
	bl ov97_02238534
	ldrh r0, [r4, #2]
	bl ov97_02238584
	ldr r0, _02238A44 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238A48 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238A42
	mov r0, #4
	blx r1
	pop {r4, pc}
_02238A38:
	mov r0, #1
	bl ov97_02238534
	bl ov97_02238978
_02238A42:
	pop {r4, pc}
	; .align 2, 0
_02238A44: .word 0x022403F8
_02238A48: .word 0x0000117C
	thumb_func_end ov97_02238A10

	thumb_func_start ov97_02238A4C
ov97_02238A4C: ; 0x02238A4C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r2, #0x1f
	mov r0, #0x1f
	bic r2, r0
	ldr r4, _02238AA8 ; =0x022403F8
	ldr r3, _02238AAC ; =0x00001150
	str r2, [r4, #0]
	mov r0, #0
	str r0, [r2, r3]
	add r2, r3, #0
	ldr r5, [r4, #0]
	mov r6, #1
	add r2, #8
	strh r6, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	add r2, #0x28
	str r7, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	add r2, #0xc
	strh r0, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	add r2, #0xe
	strh r0, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	add r2, #0x2c
	str r1, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	mov r1, #0x10
	add r2, #0x26
	strh r1, [r5, r2]
	ldr r5, [r4, #0]
	ldr r2, _02238AB0 ; =0x00001048
	sub r1, #0x11
	str r0, [r5, r2]
	ldr r0, [r4, #0]
	add r3, #0x1c
	str r1, [r0, r3]
	bl ov97_022388BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02238AA8: .word 0x022403F8
_02238AAC: .word 0x00001150
_02238AB0: .word 0x00001048
	thumb_func_end ov97_02238A4C

	thumb_func_start ov97_02238AB4
ov97_02238AB4: ; 0x02238AB4
	push {r4, r5, r6, lr}
	ldr r3, _02238B24 ; =0x022403F8
	ldr r1, _02238B28 ; =0x00001048
	ldr r2, [r3, #0]
	mov r4, #0
	str r4, [r2, r1]
	ldr r1, [r3, #0]
	ldr r2, _02238B2C ; =0x00001158
	mov r4, #3
	strh r4, [r1, r2]
	ldrh r5, [r0]
	ldr r4, [r3, #0]
	add r1, r2, #2
	strh r5, [r4, r1]
	ldr r4, [r0, #4]
	add r0, r2, #0
	ldr r1, [r3, #0]
	add r0, #8
	str r4, [r1, r0]
	ldr r4, [r3, #0]
	add r2, #8
	ldr r0, [r4, r2]
	mov r1, #0x68
	sub r0, r0, #1
	bl _u32_div_f
	ldr r2, _02238B30 ; =0x0000115C
	add r0, r0, #1
	strh r0, [r4, r2]
	ldr r4, _02238B24 ; =0x022403F8
	mov r0, #0
	ldr r3, [r4, #0]
	add r1, r2, #2
	strh r0, [r3, r1]
	add r1, r2, #0
	ldr r3, [r4, #0]
	add r1, #8
	str r0, [r3, r1]
	ldr r1, [r4, #0]
	ldrh r2, [r1, r2]
	cmp r2, #0
	ble _02238B20
	mov r2, #0x46
	lsl r2, r2, #6
	add r3, r2, #0
	add r6, r0, #0
	sub r3, #0x24
_02238B12:
	add r1, r1, r0
	strb r6, [r1, r2]
	ldr r1, [r4, #0]
	add r0, r0, #1
	ldrh r5, [r1, r3]
	cmp r0, r5
	blt _02238B12
_02238B20:
	pop {r4, r5, r6, pc}
	nop
_02238B24: .word 0x022403F8
_02238B28: .word 0x00001048
_02238B2C: .word 0x00001158
_02238B30: .word 0x0000115C
	thumb_func_end ov97_02238AB4

	thumb_func_start ov97_02238B34
ov97_02238B34: ; 0x02238B34
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02238C50 ; =0x022403F8
	ldrh r1, [r4]
	ldr r3, [r0, #0]
	ldr r0, _02238C54 ; =0x0000115A
	ldrh r2, [r3, r0]
	cmp r2, r1
	bne _02238B50
	add r0, r0, #6
	ldr r1, [r3, r0]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _02238B7C
_02238B50:
	ldr r0, _02238C50 ; =0x022403F8
	ldr r3, [r0, #0]
	ldr r0, _02238C58 ; =0x00001164
	ldr r2, [r3, r0]
	add r1, r2, #1
	str r1, [r3, r0]
	cmp r2, #0x10
	blo _02238B78
	add r0, r4, #0
	bl ov97_02238AB4
	ldr r0, _02238C50 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238C5C ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238B7C
	mov r0, #5
	blx r1
	b _02238B7C
_02238B78:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02238B7C:
	ldrh r3, [r4, #2]
	ldr r0, _02238C60 ; =0x0000FFFF
	cmp r3, r0
	bne _02238BA4
	ldr r1, _02238C50 ; =0x022403F8
	add r4, #8
	ldr r2, [r1, #0]
	mov r1, #0xfe
	lsl r1, r1, #4
	add r1, r2, r1
	add r0, r4, #0
	mov r2, #0x68
	bl MIi_CpuCopy32
	ldr r0, _02238C50 ; =0x022403F8
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02238C64 ; =0x00001048
	str r2, [r1, r0]
	b _02238C4C
_02238BA4:
	ldr r1, _02238C50 ; =0x022403F8
	ldr r0, _02238C68 ; =0x00001168
	ldr r2, [r1, #0]
	str r3, [r2, r0]
	ldr r3, [r1, #0]
	add r1, r0, #0
	sub r1, #0xc
	ldrh r2, [r4, #2]
	ldrh r1, [r3, r1]
	cmp r2, r1
	blo _02238BCC
	add r0, #0x14
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _02238BC6
	mov r0, #4
	blx r1
_02238BC6:
	mov r0, #9
	bl ov97_02238534
_02238BCC:
	ldr r0, _02238C50 ; =0x022403F8
	mov r2, #0x46
	ldr r1, [r0, #0]
	lsl r2, r2, #6
	ldrh r3, [r4, #2]
	add r5, r1, r2
	ldrb r1, [r5, r3]
	cmp r1, #0
	bne _02238C4C
	mov r1, #1
	strb r1, [r5, r3]
	ldr r5, [r0, #0]
	add r0, r2, #0
	sub r0, #0x24
	ldrh r0, [r5, r0]
	ldrh r1, [r4, #2]
	sub r0, r0, #1
	cmp r1, r0
	bne _02238C10
	add r3, r1, #0
	add r1, r2, #0
	sub r1, #8
	sub r2, #0x20
	mov r0, #0x68
	ldr r1, [r5, r1]
	mul r3, r0
	ldr r2, [r5, r2]
	add r4, #8
	add r0, r4, #0
	add r1, r1, r3
	sub r2, r2, r3
	bl MIi_CpuCopy32
	b _02238C24
_02238C10:
	add r4, #8
	sub r2, #8
	add r0, r4, #0
	ldr r4, [r5, r2]
	mov r2, #0x68
	add r3, r1, #0
	mul r3, r2
	add r1, r4, r3
	bl MIi_CpuCopy32
_02238C24:
	ldr r1, _02238C50 ; =0x022403F8
	ldr r0, _02238C6C ; =0x0000115E
	ldr r3, [r1, #0]
	ldrh r2, [r3, r0]
	add r2, r2, #1
	strh r2, [r3, r0]
	ldr r3, [r1, #0]
	sub r1, r0, #2
	ldrh r2, [r3, r0]
	ldrh r1, [r3, r1]
	cmp r2, r1
	bne _02238C4C
	add r0, #0x1e
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _02238C48
	mov r0, #2
	blx r1
_02238C48:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02238C4C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238C50: .word 0x022403F8
_02238C54: .word 0x0000115A
_02238C58: .word 0x00001164
_02238C5C: .word 0x0000117C
_02238C60: .word 0x0000FFFF
_02238C64: .word 0x00001048
_02238C68: .word 0x00001168
_02238C6C: .word 0x0000115E
	thumb_func_end ov97_02238B34

	thumb_func_start ov97_02238C70
ov97_02238C70: ; 0x02238C70
	push {r3, r4}
	mov r2, #0
	add r3, r2, #0
	lsr r1, r1, #1
	beq _02238C98
_02238C7A:
	lsl r4, r3, #1
	ldrh r4, [r0, r4]
	add r3, r3, #1
	lsl r3, r3, #0x10
	add r2, r2, r4
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r4, r2, #1
	asr r2, r2, #0xf
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r3, #0x10
	lsr r2, r2, #0x10
	cmp r3, r1
	blo _02238C7A
_02238C98:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02238C70

	thumb_func_start ov97_02238CA0
ov97_02238CA0: ; 0x02238CA0
	push {r4, lr}
	sub sp, #8
	ldr r0, _02238D34 ; =0x022403F8
	add r1, sp, #0
	ldr r4, [r0, #0]
	ldr r0, _02238D38 ; =0x00001170
	add r3, r4, r0
	ldrh r2, [r3]
	sub r0, #0x16
	strh r2, [r1]
	ldrh r2, [r3, #2]
	strh r2, [r1, #6]
	ldrh r2, [r3, #4]
	add r3, sp, #0
	strh r2, [r1, #4]
	ldrh r0, [r4, r0]
	ldr r2, _02238D3C ; =0x00003FA2
	strh r0, [r1, #2]
	mov r1, #0
_02238CC6:
	ldrh r0, [r3]
	add r1, r1, #1
	eor r0, r2
	strh r0, [r3]
	ldrh r2, [r3]
	add r3, r3, #2
	cmp r1, #4
	blt _02238CC6
	ldr r0, _02238D34 ; =0x022403F8
	mov r2, #8
	ldr r1, [r0, #0]
	ldr r0, _02238D40 ; =0x0000104C
	add r0, r1, r0
	add r1, sp, #0
	bl CRYPTO_RC4Init
	ldr r0, _02238D34 ; =0x022403F8
	ldr r2, _02238D44 ; =0x00001178
	ldr r3, [r0, #0]
	ldr r0, _02238D40 ; =0x0000104C
	ldr r1, [r3, r2]
	sub r2, #0x18
	ldr r2, [r3, r2]
	add r0, r3, r0
	add r3, r1, #0
	blx ov97_02239420
	ldr r1, _02238D34 ; =0x022403F8
	ldr r2, _02238D40 ; =0x0000104C
	ldr r1, [r1, #0]
	mov r0, #0
	add r1, r1, r2
	lsr r2, r2, #4
	bl MIi_CpuClear32
	ldr r0, _02238D34 ; =0x022403F8
	ldr r1, _02238D44 ; =0x00001178
	ldr r2, [r0, #0]
	ldr r0, [r2, r1]
	sub r1, #0x18
	ldr r1, [r2, r1]
	bl ov97_02238C70
	ldr r1, _02238D34 ; =0x022403F8
	ldr r2, [r1, #0]
	ldr r1, _02238D48 ; =0x0000115A
	ldrh r1, [r2, r1]
	cmp r1, r0
	bne _02238D2E
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_02238D2E:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02238D34: .word 0x022403F8
_02238D38: .word 0x00001170
_02238D3C: .word 0x00003FA2
_02238D40: .word 0x0000104C
_02238D44: .word 0x00001178
_02238D48: .word 0x0000115A
	thumb_func_end ov97_02238CA0

	thumb_func_start ov97_02238D4C
ov97_02238D4C: ; 0x02238D4C
	ldr r0, _02238D50 ; =0x000016A0
	bx lr
	; .align 2, 0
_02238D50: .word 0x000016A0
	thumb_func_end ov97_02238D4C

	thumb_func_start ov97_02238D54
ov97_02238D54: ; 0x02238D54
	ldr r0, _02238D6C ; =0x022403F8
	ldr r2, [r0, #0]
	ldr r0, _02238D70 ; =0x00001048
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _02238D66
	sub r0, #0x68
	add r0, r2, r0
	bx lr
_02238D66:
	mov r0, #0
	bx lr
	nop
_02238D6C: .word 0x022403F8
_02238D70: .word 0x00001048
	thumb_func_end ov97_02238D54
	.data


	.global Unk_ov97_0223EFF0
Unk_ov97_0223EFF0: ; 0x0223EFF0
	.incbin "incbin/overlay97_data.bin", 0x10B0, 0x10C4 - 0x10B0

	.global Unk_ov97_0223F004
Unk_ov97_0223F004: ; 0x0223F004
	.incbin "incbin/overlay97_data.bin", 0x10C4, 0x10D8 - 0x10C4

	.global Unk_ov97_0223F018
Unk_ov97_0223F018: ; 0x0223F018
	.incbin "incbin/overlay97_data.bin", 0x10D8, 0x10EC - 0x10D8

	.global Unk_ov97_0223F02C
Unk_ov97_0223F02C: ; 0x0223F02C
	.incbin "incbin/overlay97_data.bin", 0x10EC, 0x1100 - 0x10EC

	.global Unk_ov97_0223F040
Unk_ov97_0223F040: ; 0x0223F040
	.incbin "incbin/overlay97_data.bin", 0x1100, 0x1118 - 0x1100

	.global Unk_ov97_0223F058
Unk_ov97_0223F058: ; 0x0223F058
	.incbin "incbin/overlay97_data.bin", 0x1118, 0x1130 - 0x1118

	.global Unk_ov97_0223F070
Unk_ov97_0223F070: ; 0x0223F070
	.incbin "incbin/overlay97_data.bin", 0x1130, 0x114C - 0x1130

	.global Unk_ov97_0223F08C
Unk_ov97_0223F08C: ; 0x0223F08C
	.incbin "incbin/overlay97_data.bin", 0x114C, 0x1168 - 0x114C

	.global Unk_ov97_0223F0A8
Unk_ov97_0223F0A8: ; 0x0223F0A8
	.incbin "incbin/overlay97_data.bin", 0x1168, 0x1184 - 0x1168

	.global Unk_ov97_0223F0C4
Unk_ov97_0223F0C4: ; 0x0223F0C4
	.incbin "incbin/overlay97_data.bin", 0x1184, 0x11A4 - 0x1184

	.global Unk_ov97_0223F0E4
Unk_ov97_0223F0E4: ; 0x0223F0E4
	.incbin "incbin/overlay97_data.bin", 0x11A4, 0x11CC - 0x11A4

	.global Unk_ov97_0223F10C
Unk_ov97_0223F10C: ; 0x0223F10C
	.incbin "incbin/overlay97_data.bin", 0x11CC, 0x11D4 - 0x11CC

	.global Unk_ov97_0223F114
Unk_ov97_0223F114: ; 0x0223F114
	.incbin "incbin/overlay97_data.bin", 0x11D4, 0x11D8 - 0x11D4

	.global Unk_ov97_0223F118
Unk_ov97_0223F118: ; 0x0223F118
	.incbin "incbin/overlay97_data.bin", 0x11D8, 0x1F


	.bss


	.global Unk_ov97_022403F8
Unk_ov97_022403F8: ; 0x022403F8
	.space 0x4

	.global Unk_ov97_022403FC
Unk_ov97_022403FC: ; 0x022403FC
	.space 0x4

