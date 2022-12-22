	.include "macros/function.inc"
	.include "include/ov17_022492DC.inc"

	

	.text


	thumb_func_start ov17_022492DC
ov17_022492DC: ; 0x022492DC
	push {r4, lr}
	mov r0, #0x17
	mov r1, #0xf4
	bl sub_02018144
	mov r1, #0
	mov r2, #0xf4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_022492DC

	thumb_func_start ov17_02249300
ov17_02249300: ; 0x02249300
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02249354 ; =0x022545C0
	add r5, r0, #0
	add r7, r4, #0
_0224930A:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020183C4
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019EE0
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #4
	blo _0224930A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249354: .word 0x022545C0
	thumb_func_end ov17_02249300

	thumb_func_start ov17_02249358
ov17_02249358: ; 0x02249358
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_02249360:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_02019120
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #4
	blo _02249360
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02249358

	thumb_func_start ov17_02249380
ov17_02249380: ; 0x02249380
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov17_022492DC
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	mov r0, #6
	mov r1, #0x17
	bl sub_02012744
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov17_022493DC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02249380

	thumb_func_start ov17_022493A4
ov17_022493A4: ; 0x022493A4
	push {r4, lr}
	add r4, r0, #0
	bl ov17_022495F8
	add r0, r4, #0
	mov r1, #1
	bl ov17_02249D3C
	ldr r0, [r4, #0x18]
	bl sub_020127BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_022493A4

	thumb_func_start ov17_022493C4
ov17_022493C4: ; 0x022493C4
	push {r4, lr}
	add r4, r0, #0
	bl ov17_02249828
	add r0, r4, #0
	bl ov17_022498F4
	add r0, r4, #0
	mov r1, #0
	bl ov17_02249CFC
	pop {r4, pc}
	thumb_func_end ov17_022493C4

	thumb_func_start ov17_022493DC
ov17_022493DC: ; 0x022493DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #6
	add r4, r0, #0
	mov r0, #0x17
	lsl r1, r1, #0xc
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	mov r1, #6
	mov r0, #0x17
	lsl r1, r1, #0xc
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	mov r1, #0x1b
	mov r0, #0x17
	lsl r1, r1, #8
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #8
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #8
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #9
	mov r2, #1
	add r3, sp, #0xc
	bl sub_02006F50
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r1, #0xd0
	mov r2, #6
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0]
	lsl r2, r2, #0xc
	bl MIi_CpuCopy32
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #0x12
	mov r2, #1
	add r3, sp, #0xc
	bl sub_02006F50
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r1, #0xd4
	mov r2, #6
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0]
	lsl r2, r2, #0xc
	bl MIi_CpuCopy32
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #0x10
	mov r2, #1
	add r3, sp, #0xc
	bl sub_02006F50
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r1, #0xd8
	mov r2, #0x1b
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0]
	lsl r2, r2, #8
	bl MIi_CpuCopy32
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #7
	mov r2, #1
	add r3, sp, #8
	bl sub_02006F6C
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, #0xdc
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl MIi_CpuCopy32
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #8
	mov r2, #1
	add r3, sp, #8
	bl sub_02006F6C
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, #0xe0
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl MIi_CpuCopy32
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #0x11
	mov r2, #1
	add r3, sp, #8
	bl sub_02006F6C
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, #0xe4
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl MIi_CpuCopy32
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #0x1c
	mov r2, #1
	add r3, sp, #8
	bl sub_02006F6C
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, #0xe8
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl MIi_CpuCopy32
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	mov r3, #2
	str r0, [sp, #4]
	mov r0, #0x2d
	mov r1, #0x1f
	mov r2, #0x17
	lsl r3, r3, #8
	bl sub_020030E4
	ldr r0, [r4, #4]
	mov r2, #0x17
	ldr r1, [r0, #0]
	ldr r0, _022495F4 ; =0x0000011F
	mov r3, #0x20
	ldrb r0, [r1, r0]
	mov r1, #0x26
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x2d
	bl sub_020030E4
	mov r0, #0
	mov r3, #2
	add r4, #0xf0
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x21
	str r0, [sp, #4]
	mov r0, #0x2d
	mov r2, #0x17
	lsl r3, r3, #8
	bl sub_020030E4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022495F4: .word 0x0000011F
	thumb_func_end ov17_022493DC

	thumb_func_start ov17_022495F8
ov17_022495F8: ; 0x022495F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_02249600:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02249600
	mov r6, #0
	add r4, r5, #0
_02249616:
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02249616
	mov r4, #0
_0224962A:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0224962A
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_022495F8

	thumb_func_start ov17_02249640
ov17_02249640: ; 0x02249640
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	str r3, [r7, #8]
	ldr r0, [r7, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x60]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	mov r0, #0x96
	ldrsb r2, [r7, r0]
	sub r0, #0x97
	cmp r2, r0
	bne _02249664
	mov r0, #1
	str r0, [sp, #8]
	mov r6, #0
	b _0224966C
_02249664:
	mov r0, #0x24
	ldr r1, _02249750 ; =0x02254578
	mul r0, r2
	add r6, r1, r0
_0224966C:
	ldr r0, [sp, #4]
	mov r1, #0x24
	ldr r2, _02249750 ; =0x02254578
	mul r1, r0
	add r0, r2, r1
	str r0, [sp, #0x10]
	mov r4, #0
	add r5, r0, #0
_0224967C:
	ldrh r1, [r5, #0xc]
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0224967C
	ldr r0, [sp, #0x10]
	mov r2, #8
	ldrh r1, [r0]
	add r0, r7, #0
	add r0, #0x94
	strh r1, [r0]
	ldr r0, _02249754 ; =ov17_0224A088
	add r1, r7, #0
	bl sub_0200DA3C
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldr r0, _02249758 ; =0x0000FFFF
	cmp r1, r0
	beq _022496DA
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _022496BE
	ldrh r0, [r6, #2]
	cmp r1, r0
	beq _022496DA
_022496BE:
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r7, #4]
	lsl r1, r1, #2
	add r1, r7, r1
	add r0, #0x90
	add r1, #0xec
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #1
	mov r3, #0
	bl sub_02002FBC
_022496DA:
	ldr r4, [sp, #0x10]
	mov r5, #0
_022496DE:
	ldrh r2, [r4, #4]
	ldr r0, _02249758 ; =0x0000FFFF
	cmp r2, r0
	beq _02249716
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _022496F2
	ldrh r0, [r6, #4]
	cmp r2, r0
	beq _02249716
_022496F2:
	lsl r2, r2, #2
	add r2, r7, r2
	add r1, r5, #4
	add r2, #0xdc
	lsl r1, r1, #0x18
	mov r3, #2
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xa
	bl sub_02019574
	add r1, r5, #4
	lsl r1, r1, #0x18
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
_02249716:
	add r5, r5, #1
	add r4, r4, #2
	add r6, r6, #2
	cmp r5, #4
	blt _022496DE
	add r1, r7, #0
	ldr r0, [sp, #4]
	add r1, #0x96
	strb r0, [r1]
	add r0, r7, #0
	mov r1, #0
	bl ov17_02249D3C
	ldr r0, [sp, #0x10]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _02249740
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	blx r3
_02249740:
	ldr r0, _0224975C ; =ov17_0224A038
	add r1, r7, #0
	mov r2, #0xa
	bl sub_0200DA3C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02249750: .word 0x02254578
_02249754: .word ov17_0224A088
_02249758: .word 0x0000FFFF
_0224975C: .word ov17_0224A038
	thumb_func_end ov17_02249640

	thumb_func_start ov17_02249760
ov17_02249760: ; 0x02249760
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x96
	ldrsb r1, [r5, r0]
	sub r0, #0x97
	cmp r1, r0
	bne _02249772
	bl sub_02022974
_02249772:
	mov r0, #0x96
	ldrsb r1, [r5, r0]
	ldr r3, _022497F8 ; =0x02254578
	mov r0, #0x24
	add r2, r1, #0
	mul r2, r0
	add r4, r3, r2
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0224978A
	sub r0, #0x25
	pop {r4, r5, r6, pc}
_0224978A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02249794
	bl sub_02022974
_02249794:
	ldr r0, [r4, #0x14]
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022497D8
	ldr r2, [r4, #0x18]
	ldr r1, _022497FC ; =0x02254554
	cmp r2, r1
	bne _022497D8
	ldr r1, _02249800 ; =0x021BF67C
	mov r2, #0x11
	ldr r1, [r1, #0x48]
	add r3, r1, #0
	tst r3, r2
	beq _022497BA
	mov r0, #3
	b _022497D8
_022497BA:
	mov r3, #0x82
	add r6, r1, #0
	tst r6, r3
	beq _022497C6
	mov r0, #1
	b _022497D8
_022497C6:
	lsl r2, r2, #6
	tst r2, r1
	beq _022497D0
	mov r0, #0
	b _022497D8
_022497D0:
	lsl r2, r3, #4
	tst r1, r2
	beq _022497D8
	mov r0, #2
_022497D8:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022497E6
	ldr r1, [r4, #0x18]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
_022497E6:
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _022497F2
	add r0, r5, #0
	blx r2
	add r1, r0, #0
_022497F2:
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	nop
_022497F8: .word 0x02254578
_022497FC: .word 0x02254554
_02249800: .word 0x021BF67C
	thumb_func_end ov17_02249760

	thumb_func_start ov17_02249804
ov17_02249804: ; 0x02249804
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0224980E
	mov r0, #1
	bx lr
_0224980E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02249804

	thumb_func_start ov17_02249814
ov17_02249814: ; 0x02249814
	mov r1, #0x96
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02249814

	thumb_func_start ov17_0224981C
ov17_0224981C: ; 0x0224981C
	ldr r3, _02249824 ; =ov17_02249CFC
	mov r1, #1
	bx r3
	nop
_02249824: .word ov17_02249CFC
	thumb_func_end ov17_0224981C

	thumb_func_start ov17_02249828
ov17_02249828: ; 0x02249828
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcc
	mov r3, #0x17
	bl sub_0200B144
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r0, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	ldrb r1, [r3, r1]
	ldr r3, [r5, #0]
	add r2, #0x51
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, _022498DC ; =0x0000011F
	ldr r2, [r0, #0]
	ldrb r0, [r2, r1]
	add r1, r1, #2
	ldrb r1, [r2, r1]
	bl sub_020958C4
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, _022498E0 ; =0x00010200
	add r1, r5, #0
	str r0, [sp]
	mov r3, #0
	ldr r0, _022498E4 ; =0x000080EB
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x7f
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x1c
	add r2, r6, #0
	bl ov17_02249BC4
	ldr r0, _022498E0 ; =0x00010200
	mov r3, #0
	str r0, [sp]
	ldr r0, _022498E4 ; =0x000080EB
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x9f
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r5, #0x30
	add r1, r5, #0
	add r2, r7, #0
	bl ov17_02249BC4
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022498DC: .word 0x0000011F
_022498E0: .word 0x00010200
_022498E4: .word 0x000080EB
	thumb_func_end ov17_02249828

	thumb_func_start ov17_022498E8
ov17_022498E8: ; 0x022498E8
	ldr r3, _022498F0 ; =ov17_02249CFC
	mov r1, #1
	bx r3
	nop
_022498F0: .word ov17_02249CFC
	thumb_func_end ov17_022498E8

	thumb_func_start ov17_022498F4
ov17_022498F4: ; 0x022498F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r2, [r0, #4]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #0x84
	ldr r5, [r0, #0]
	ldr r1, [r2, #0]
	ldr r0, _022499FC ; =0x00000123
	ldrb r0, [r1, r0]
	add r1, r2, r0
	ldr r0, _02249A00 ; =0x00000ABC
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224991C
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B1EC
	b _02249924
_0224991C:
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B1EC
_02249924:
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, _02249A04 ; =0x0001010B
	add r2, r4, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 ; =0x000080EB
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x44
	bl ov17_02249BC4
	ldr r0, _02249A04 ; =0x0001010B
	add r2, r6, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 ; =0x000080EB
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x78
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x58
	bl ov17_02249BC4
	ldr r0, _02249A04 ; =0x0001010B
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 ; =0x000080EB
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x6c
	bl ov17_02249BC4
	ldr r0, _02249A04 ; =0x0001010B
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 ; =0x000080EB
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0xd0
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x80
	str r1, [sp, #0x18]
	bl ov17_02249BC4
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022499FC: .word 0x00000123
_02249A00: .word 0x00000ABC
_02249A04: .word 0x0001010B
_02249A08: .word 0x000080EB
	thumb_func_end ov17_022498F4

	thumb_func_start ov17_02249A0C
ov17_02249A0C: ; 0x02249A0C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #1
	cmp r0, #4
	bhi _02249A2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249A24: ; jump table
	.short _02249A2E - _02249A24 - 2 ; case 0
	.short _02249A32 - _02249A24 - 2 ; case 1
	.short _02249A36 - _02249A24 - 2 ; case 2
	.short _02249A3A - _02249A24 - 2 ; case 3
	.short _02249A3E - _02249A24 - 2 ; case 4
_02249A2E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02249A32:
	mov r5, #2
	b _02249A40
_02249A36:
	mov r5, #3
	b _02249A40
_02249A3A:
	mov r5, #4
	b _02249A40
_02249A3E:
	mov r5, #5
_02249A40:
	ldr r0, _02249A9C ; =ov17_02249DA0
	add r1, r4, #0
	bl ov17_02249D50
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0xca
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x2d
	add r0, #0xc8
	strh r1, [r0]
	mov r0, #0xc
	ldr r1, _02249AA0 ; =0x02254630
	mul r0, r6
	add r2, r1, r0
	add r1, r4, #0
	add r1, #0xa0
	str r2, [r1, #0]
	ldr r1, _02249AA4 ; =0x02254660
	add r2, r1, r0
	add r1, r4, #0
	add r1, #0xa4
	str r2, [r1, #0]
	ldr r1, _02249AA8 ; =0x02254690
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	str r6, [r0, #0]
	add r4, #0xcc
	strb r5, [r4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02249A9C: .word ov17_02249DA0
_02249AA0: .word 0x02254630
_02249AA4: .word 0x02254660
_02249AA8: .word 0x02254690
	thumb_func_end ov17_02249A0C

	thumb_func_start ov17_02249AAC
ov17_02249AAC: ; 0x02249AAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x17
	mov r1, #0x20
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02249AD8
	lsl r0, r5, #2
	add r0, r6, r0
	add r0, #0xd0
	ldr r0, [r0, #0]
	str r0, [r4, #0xc]
_02249AD8:
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #5
	strh r0, [r4, #0x1c]
	ldr r0, [sp, #0x18]
	ldrh r1, [r0]
	strh r1, [r4, #0x10]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0x12]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0x14]
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x16]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x18]
	ldrh r0, [r0, #0xa]
	strh r0, [r4, #0x1a]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_02019F28
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249AAC

	thumb_func_start ov17_02249B08
ov17_02249B08: ; 0x02249B08
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl ov17_02249AAC
	add r4, r0, #0
	ldr r0, _02249B2C ; =ov17_0224A0C8
	add r1, r4, #0
	mov r2, #0x14
	bl sub_0200DA3C
	str r0, [r4, #0]
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02249B2C: .word ov17_0224A0C8
	thumb_func_end ov17_02249B08

	thumb_func_start ov17_02249B30
ov17_02249B30: ; 0x02249B30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02249B4E
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02249B44
	bl sub_020181C4
_02249B44:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_02249B4E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02249B30

	thumb_func_start ov17_02249B54
ov17_02249B54: ; 0x02249B54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5, #0x16]
	ldrh r0, [r5, #0x1c]
	mov r6, #0
	mul r0, r1
	str r0, [sp]
	ldrh r0, [r5, #0x12]
	lsl r7, r0, #0xa
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	ble _02249BC0
	add r4, r6, #0
_02249B6E:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _02249B9C
	ldrh r0, [r5, #0x14]
	ldrh r3, [r5, #0x1c]
	lsl r1, r0, #5
	add r0, r3, #0
	ldr r3, [sp]
	mul r0, r6
	add r0, r3, r0
	add r0, r1, r0
	ldrh r1, [r5, #0x10]
	add r0, r2, r0
	ldr r3, [r5, #4]
	lsl r2, r1, #5
	add r1, r7, r4
	add r1, r2, r1
	ldrh r2, [r5, #0x18]
	add r1, r3, r1
	lsl r2, r2, #5
	bl MIi_CpuCopy16
	b _02249BB2
_02249B9C:
	ldrh r1, [r5, #0x10]
	ldr r3, [r5, #4]
	mov r0, #0
	lsl r2, r1, #5
	add r1, r7, r4
	add r1, r2, r1
	ldrh r2, [r5, #0x18]
	add r1, r3, r1
	lsl r2, r2, #5
	bl MIi_CpuClear16
_02249BB2:
	mov r0, #1
	lsl r0, r0, #0xa
	add r4, r4, r0
	ldrh r0, [r5, #0x1a]
	add r6, r6, #1
	cmp r6, r0
	blt _02249B6E
_02249BC0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249B54

	thumb_func_start ov17_02249BC4
ov17_02249BC4: ; 0x02249BC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r5, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x9c]
	cmp r0, #0
	beq _02249BDC
	bl sub_02022974
_02249BDC:
	ldr r0, [sp, #0x18]
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x60]
	str r0, [sp, #0x28]
	ldr r0, [r1, #0x5c]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	bl sub_02002D7C
	add r7, r0, #0
	asr r1, r7, #2
	lsr r1, r1, #0x1d
	add r1, r7, r1
	asr r6, r1, #3
	mov r1, #8
	bl FX_ModS32
	cmp r0, #0
	beq _02249C08
	add r6, r6, #1
_02249C08:
	add r0, sp, #0x38
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x28]
	add r1, sp, #0x38
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x20]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	add r0, sp, #0x38
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	add r0, sp, #0x38
	mov r1, #2
	mov r2, #0x17
	bl sub_02012898
	mov r1, #1
	mov r2, #2
	add r3, sp, #0x2c
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _02249C60
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	sub r4, r4, r0
_02249C60:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x48]
	add r0, sp, #0x38
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x24]
	bl sub_0200D9B0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x98]
	bl sub_0200D04C
	mov r1, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa0]
	str r4, [sp, #0x60]
	add r0, #0xf8
	str r0, [sp, #0x64]
	mov r0, #0x64
	str r0, [sp, #0x6c]
	mov r0, #2
	str r0, [sp, #0x70]
	mov r0, #0x17
	str r0, [sp, #0x74]
	add r0, sp, #0x48
	str r1, [sp, #0x68]
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r6, r0, #0
	bl sub_02012AC0
	ldr r2, [sp, #0xa0]
	add r0, r6, #0
	add r1, r4, #0
	add r2, #0xf8
	bl sub_020128C4
	add r0, sp, #0x38
	bl sub_0201A8FC
	str r6, [r5, #0]
	add r3, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	strh r7, [r5, #0x10]
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249BC4

	thumb_func_start ov17_02249CD0
ov17_02249CD0: ; 0x02249CD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r4, #0x20
	add r7, r6, #0
_02249CDC:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02249CEE
	bl sub_02012870
	add r0, r4, #0
	bl sub_0201EE28
	str r7, [r5, #0x1c]
_02249CEE:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #6
	blt _02249CDC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249CD0

	thumb_func_start ov17_02249CFC
ov17_02249CFC: ; 0x02249CFC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	cmp r7, #1
	bne _02249D18
	mov r1, #0x96
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _02249D12
	mov r4, #0
	mov r6, #1
	b _02249D1C
_02249D12:
	mov r4, #2
	mov r6, #5
	b _02249D1C
_02249D18:
	mov r4, #0
	mov r6, #5
_02249D1C:
	cmp r4, r6
	bgt _02249D3A
	mov r1, #0x14
	mul r1, r4
	add r5, r0, r1
_02249D26:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02249D32
	add r1, r7, #0
	bl sub_020129D0
_02249D32:
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r6
	ble _02249D26
_02249D3A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02249CFC

	thumb_func_start ov17_02249D3C
ov17_02249D3C: ; 0x02249D3C
	push {r3, lr}
	cmp r1, #1
	bne _02249D48
	bl ov17_02249CD0
	pop {r3, pc}
_02249D48:
	mov r1, #0
	bl ov17_02249CFC
	pop {r3, pc}
	thumb_func_end ov17_02249D3C

	thumb_func_start ov17_02249D50
ov17_02249D50: ; 0x02249D50
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249D60
	bl sub_02022974
_02249D60:
	add r0, r4, #0
	add r0, #0x98
	mov r1, #0
	mov r2, #0x38
	bl MI_CpuFill8
	ldr r2, _02249D7C ; =0x00000514
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02249D7C: .word 0x00000514
	thumb_func_end ov17_02249D50

	thumb_func_start ov17_02249D80
ov17_02249D80: ; 0x02249D80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249D9C
	bl sub_0200DA58
	mov r1, #0
	str r1, [r4, #0xc]
	add r4, #0x98
	add r0, r4, #0
	mov r2, #0x38
	bl MI_CpuFill8
_02249D9C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02249D80

	thumb_func_start ov17_02249DA0
ov17_02249DA0: ; 0x02249DA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bls _02249DB0
	b _0224A02C
_02249DB0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249DBC: ; jump table
	.short _02249DCE - _02249DBC - 2 ; case 0
	.short _02249E56 - _02249DBC - 2 ; case 1
	.short _02249E70 - _02249DBC - 2 ; case 2
	.short _02249E96 - _02249DBC - 2 ; case 3
	.short _02249F20 - _02249DBC - 2 ; case 4
	.short _02249F3C - _02249DBC - 2 ; case 5
	.short _02249F62 - _02249DBC - 2 ; case 6
	.short _02249FEC - _02249DBC - 2 ; case 7
	.short _0224A006 - _02249DBC - 2 ; case 8
_02249DCE:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	ldrh r0, [r0]
	add r3, r4, #0
	add r2, #0xc8
	str r0, [sp, #4]
	add r3, #0xb8
	ldrh r2, [r2]
	ldr r3, [r3, #0]
	add r0, r4, #0
	mov r1, #4
	bl ov17_02249B08
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	add r2, sp, #8
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl sub_020129A4
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	ldr r2, [sp, #8]
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	add r2, #0x10
	bl sub_020128C4
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_02249E2C:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249E40
	ldr r0, [r0, #0]
	add r1, r7, #0
	mov r2, #0x10
	bl sub_0200D5AC
_02249E40:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _02249E2C
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r4, #0x98
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249E56:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov17_02249B30
	cmp r0, #0
	beq _02249F2E
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_02249E70:
	mov r1, #0x9a
	ldrsh r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _02249F2E
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9a
	strh r1, [r0]
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_02249E96:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	ldrh r0, [r0]
	add r3, r4, #0
	add r2, #0xc8
	str r0, [sp, #4]
	add r3, #0xbc
	ldrh r2, [r2]
	ldr r3, [r3, #0]
	add r0, r4, #0
	mov r1, #4
	bl ov17_02249B08
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	add r2, sp, #8
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl sub_020129A4
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	ldr r2, [sp, #8]
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	sub r2, r2, #4
	bl sub_020128C4
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_02249EF4:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249F0A
	mov r2, #3
	ldr r0, [r0, #0]
	add r1, r7, #0
	mvn r2, r2
	bl sub_0200D5AC
_02249F0A:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _02249EF4
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r4, #0x98
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249F20:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov17_02249B30
	cmp r0, #0
	bne _02249F30
_02249F2E:
	b _0224A032
_02249F30:
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_02249F3C:
	mov r1, #0x9a
	ldrsh r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _0224A032
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9a
	strh r1, [r0]
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_02249F62:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	ldrh r0, [r0]
	add r3, r4, #0
	add r2, #0xc8
	str r0, [sp, #4]
	add r3, #0xc0
	ldrh r2, [r2]
	ldr r3, [r3, #0]
	add r0, r4, #0
	mov r1, #4
	bl ov17_02249B08
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	add r2, sp, #8
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl sub_020129A4
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	ldr r2, [sp, #8]
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	sub r2, #0xc
	bl sub_020128C4
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_02249FC0:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249FD6
	mov r2, #0xb
	ldr r0, [r0, #0]
	add r1, r7, #0
	mvn r2, r2
	bl sub_0200D5AC
_02249FD6:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _02249FC0
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r4, #0x98
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249FEC:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov17_02249B30
	cmp r0, #0
	beq _0224A032
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_0224A006:
	mov r1, #0x9a
	ldrsh r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _0224A032
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9a
	strh r1, [r0]
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_0224A02C:
	add r0, r4, #0
	bl ov17_02249D80
_0224A032:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249DA0

	thumb_func_start ov17_0224A038
ov17_0224A038: ; 0x0224A038
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x96
	ldrsb r1, [r1, r0]
	mov r0, #0x24
	mov r4, #0
	ldr r2, _0224A080 ; =0x02254578
	mul r0, r1
	ldr r6, _0224A084 ; =0x0000FFFF
	add r5, r2, r0
	add r7, r4, #0
_0224A04E:
	ldrh r0, [r5, #4]
	cmp r0, r6
	bne _0224A062
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_02019120
	b _0224A06E
_0224A062:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019120
_0224A06E:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0224A04E
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A080: .word 0x02254578
_0224A084: .word 0x0000FFFF
	thumb_func_end ov17_0224A038

	thumb_func_start ov17_0224A088
ov17_0224A088: ; 0x0224A088
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x94
	ldrh r2, [r0]
	ldr r0, _0224A0C4 ; =0x0000FFFF
	cmp r2, r0
	beq _0224A0BA
	mov r0, #0
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r4, #4]
	add r2, r4, r2
	add r2, #0xd0
	mov r3, #6
	ldr r0, [r0, #0x60]
	ldr r2, [r2, #0]
	mov r1, #4
	lsl r3, r3, #0xc
	bl sub_0201958C
	ldr r0, _0224A0C4 ; =0x0000FFFF
	add r4, #0x94
	strh r0, [r4]
_0224A0BA:
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0224A0C4: .word 0x0000FFFF
	thumb_func_end ov17_0224A088

	thumb_func_start ov17_0224A0C8
ov17_0224A0C8: ; 0x0224A0C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov17_02249B54
	mov r0, #0
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224A0C8

	thumb_func_start ov17_0224A0E0
ov17_0224A0E0: ; 0x0224A0E0
	push {r3, lr}
	sub sp, #8
	str r2, [sp]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r1, #1
	add r0, #0x90
	ldr r0, [r0, #0]
	mov r2, #0
	mov r3, #0x40
	bl sub_020039B0
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov17_0224A0E0

	.rodata


	.global Unk_ov17_02254554
Unk_ov17_02254554: ; 0x02254554
	.incbin "incbin/overlay17_rodata.bin", 0x17C8, 0x17D8 - 0x17C8

	.global Unk_ov17_02254564
Unk_ov17_02254564: ; 0x02254564
	.incbin "incbin/overlay17_rodata.bin", 0x17D8, 0x17EC - 0x17D8

	.global Unk_ov17_02254578
Unk_ov17_02254578: ; 0x02254578
	.incbin "incbin/overlay17_rodata.bin", 0x17EC, 0x1834 - 0x17EC

	.global Unk_ov17_022545C0
Unk_ov17_022545C0: ; 0x022545C0
	.incbin "incbin/overlay17_rodata.bin", 0x1834, 0x18A4 - 0x1834

	.global Unk_ov17_02254630
Unk_ov17_02254630: ; 0x02254630
	.incbin "incbin/overlay17_rodata.bin", 0x18A4, 0x90

