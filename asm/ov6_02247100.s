	.include "macros/function.inc"
	.include "include/ov6_02247100.inc"

	

	.text


	thumb_func_start ov6_02247100
ov6_02247100: ; 0x02247100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x24
	bl ov6_02247590
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #8]
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x18]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02247100

	thumb_func_start ov6_02247120
ov6_02247120: ; 0x02247120
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
_02247132:
	ldr r3, [r5, #0]
	add r0, r6, #0
	lsl r4, r3, #2
	ldr r3, _02247158 ; =0x022495CC
	add r1, r7, #0
	ldr r3, [r3, r4]
	add r2, r5, #0
	blx r3
	add r4, r0, #0
	cmp r4, #2
	bne _0224714E
	add r0, r5, #0
	bl sub_020181C4
_0224714E:
	cmp r4, #1
	beq _02247132
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247158: .word 0x022495CC
	thumb_func_end ov6_02247120

	thumb_func_start ov6_0224715C
ov6_0224715C: ; 0x0224715C
	push {r4, lr}
	add r0, r1, #0
	mov r1, #4
	add r4, r2, #0
	bl ov5_021F0EB0
	ldr r2, _022471B0 ; =0xFFF6A000
	str r0, [r4, #0x14]
	mov r1, #1
	mov r3, #0xf
	bl ov5_021F0F10
	ldr r0, [r4, #0x18]
	ldr r1, _022471B4 ; =0x02249608
	bl sub_02065700
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02247194
	cmp r0, #1
	beq _0224719C
	cmp r0, #2
	beq _022471A4
	b _022471AA
_02247194:
	ldr r0, _022471B8 ; =0x00000603
	bl sub_02005748
	b _022471AA
_0224719C:
	ldr r0, _022471B8 ; =0x00000603
	bl sub_02005748
	b _022471AA
_022471A4:
	ldr r0, _022471BC ; =0x0000064E
	bl sub_02005748
_022471AA:
	mov r0, #0
	pop {r4, pc}
	nop
_022471B0: .word 0xFFF6A000
_022471B4: .word 0x02249608
_022471B8: .word 0x00000603
_022471BC: .word 0x0000064E
	thumb_func_end ov6_0224715C

	thumb_func_start ov6_022471C0
ov6_022471C0: ; 0x022471C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #0
	bne _022471D6
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_022471D6:
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #0x18]
	ldr r1, _0224723C ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #8
	bge _022471F6
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_022471F6:
	ldr r0, [r4, #8]
	cmp r0, #2
	bne _02247216
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	b _0224722E
_02247216:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _02247240 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
_0224722E:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0224723C: .word 0x022495DC
_02247240: .word 0x00007FFF
	thumb_func_end ov6_022471C0

	thumb_func_start ov6_02247244
ov6_02247244: ; 0x02247244
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #1
	bne _02247262
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #0x18]
	ldr r1, _02247284 ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
_02247262:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0224726E
	mov r0, #0
	pop {r4, pc}
_0224726E:
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #0x14]
	bl ov5_021F0EFC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02247284: .word 0x022495DC
	thumb_func_end ov6_02247244

	thumb_func_start ov6_02247288
ov6_02247288: ; 0x02247288
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	add r4, r2, #0
	bl sub_0203A790
	ldr r1, [r4, #8]
	cmp r1, #2
	bne _022472B2
	bl sub_0203A75C
	add r1, sp, #0
	bl sub_0203A7F0
	ldr r2, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02053CD4
	b _022472C0
_022472B2:
	bl sub_0203A72C
	add r1, r0, #0
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl sub_02053CD4
_022472C0:
	mov r0, #2
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02247288

	thumb_func_start ov6_022472C8
ov6_022472C8: ; 0x022472C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x24
	add r6, r2, #0
	bl ov6_02247590
	add r4, r0, #0
	str r6, [r4, #8]
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x18]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_022472C8

	thumb_func_start ov6_022472E8
ov6_022472E8: ; 0x022472E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	ldr r7, _02247328 ; =0x022495BC
	add r4, r0, #0
_022472FC:
	ldr r3, [r4, #0]
	add r0, r5, #0
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	add r1, r6, #0
	add r2, r4, #0
	blx r3
	cmp r0, #2
	bne _02247320
	add r0, r6, #0
	add r1, r4, #0
	bl ov6_0224732C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02247320:
	cmp r0, #1
	beq _022472FC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247328: .word 0x022495BC
	thumb_func_end ov6_022472E8

	thumb_func_start ov6_0224732C
ov6_0224732C: ; 0x0224732C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #2
	bne _02247352
	ldr r1, [r4, #0x1c]
	mov r0, #9
	ldr r1, [r1, #0]
	mov r2, #4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0202BE00
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #1
	bl sub_0202B758
_02247352:
	pop {r4, pc}
	thumb_func_end ov6_0224732C

	thumb_func_start ov6_02247354
ov6_02247354: ; 0x02247354
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r0, [r4, #8]
	add r5, r1, #0
	cmp r0, #2
	bne _0224737A
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	b _02247390
_0224737A:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r3, _022473BC ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
_02247390:
	add r0, r5, #0
	mov r1, #4
	bl ov5_021F0EB0
	mov r1, #1
	ldr r2, _022473C0 ; =0xFFF6A000
	str r0, [r4, #0x14]
	add r3, r1, #0
	bl ov5_021F0F10
	ldr r0, [r4, #0x18]
	ldr r1, _022473C4 ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022473BC: .word 0x00007FFF
_022473C0: .word 0xFFF6A000
_022473C4: .word 0x022495DC
	thumb_func_end ov6_02247354

	thumb_func_start ov6_022473C8
ov6_022473C8: ; 0x022473C8
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #1
	bne _022473E6
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #0x18]
	ldr r1, _02247408 ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
_022473E6:
	bl sub_0200F2AC
	cmp r0, #0
	bne _022473F2
	mov r0, #0
	pop {r4, pc}
_022473F2:
	ldr r0, [r4, #0x14]
	mov r1, #2
	mov r2, #0
	mov r3, #0x3c
	bl ov5_021F0F10
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02247408: .word 0x022495DC
	thumb_func_end ov6_022473C8

	thumb_func_start ov6_0224740C
ov6_0224740C: ; 0x0224740C
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #0
	bne _0224741E
	mov r0, #0
	pop {r4, pc}
_0224741E:
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	ldr r0, [r4, #0x18]
	bge _0224743C
	ldr r1, _02247450 ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0224743C:
	ldr r1, _02247454 ; =0x0224966C
	bl sub_02065700
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	nop
_02247450: .word 0x022495DC
_02247454: .word 0x0224966C
	thumb_func_end ov6_0224740C

	thumb_func_start ov6_02247458
ov6_02247458: ; 0x02247458
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #0
	bne _0224746A
	mov r0, #0
	pop {r4, pc}
_0224746A:
	ldr r0, [r4, #0x14]
	bl ov5_021F0EF0
	cmp r0, #0
	bne _02247478
	mov r0, #0
	pop {r4, pc}
_02247478:
	ldr r0, [r4, #0x14]
	bl ov5_021F0EFC
	ldr r0, [r4, #0xc]
	bl sub_02065758
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ov6_02247458

	thumb_func_start ov6_02247488
ov6_02247488: ; 0x02247488
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x24
	bl ov6_02247590
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #8]
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x18]
	str r6, [r4, #0x20]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02247488

	thumb_func_start ov6_022474AC
ov6_022474AC: ; 0x022474AC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
_022474BE:
	ldr r3, [r5, #0]
	add r0, r6, #0
	lsl r4, r3, #2
	ldr r3, _022474E4 ; =0x022495F0
	add r1, r7, #0
	ldr r3, [r3, r4]
	add r2, r5, #0
	blx r3
	add r4, r0, #0
	cmp r4, #2
	bne _022474DA
	add r0, r5, #0
	bl sub_020181C4
_022474DA:
	cmp r4, #1
	beq _022474BE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022474E4: .word 0x022495F0
	thumb_func_end ov6_022474AC

	thumb_func_start ov6_022474E8
ov6_022474E8: ; 0x022474E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x3c]
	add r4, r2, #0
	bl sub_0205EB98
	add r3, r0, #0
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	mov r1, #0
	bl ov6_02243F88
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022474E8

	thumb_func_start ov6_0224750C
ov6_0224750C: ; 0x0224750C
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x10]
	bl ov6_02243FBC
	cmp r0, #0
	bne _0224751E
	mov r0, #0
	pop {r4, pc}
_0224751E:
	ldr r0, [r4, #0x10]
	bl ov6_02243FC8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0224750C

	thumb_func_start ov6_02247530
ov6_02247530: ; 0x02247530
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x24
	bl ov6_02247590
	add r4, r0, #0
	mov r0, #2
	str r0, [r4, #8]
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x18]
	str r6, [r4, #0x20]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02247530

	thumb_func_start ov6_02247554
ov6_02247554: ; 0x02247554
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
_02247566:
	ldr r3, [r5, #0]
	add r0, r6, #0
	lsl r4, r3, #2
	ldr r3, _0224758C ; =0x022495F0
	add r1, r7, #0
	ldr r3, [r3, r4]
	add r2, r5, #0
	blx r3
	add r4, r0, #0
	cmp r4, #2
	bne _02247582
	add r0, r5, #0
	bl sub_020181C4
_02247582:
	cmp r4, #1
	beq _02247566
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224758C: .word 0x022495F0
	thumb_func_end ov6_02247554

	thumb_func_start ov6_02247590
ov6_02247590: ; 0x02247590
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02018184
	add r4, r0, #0
	bne _022475A0
	bl sub_02022974
_022475A0:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02247590

	.rodata


	.global Unk_ov6_022495BC
Unk_ov6_022495BC: ; 0x022495BC
	.incbin "incbin/overlay6_rodata.bin", 0x7A8, 0x7B8 - 0x7A8

	.global Unk_ov6_022495CC
Unk_ov6_022495CC: ; 0x022495CC
	.incbin "incbin/overlay6_rodata.bin", 0x7B8, 0x7C8 - 0x7B8

	.global Unk_ov6_022495DC
Unk_ov6_022495DC: ; 0x022495DC
	.incbin "incbin/overlay6_rodata.bin", 0x7C8, 0x7DC - 0x7C8

	.global Unk_ov6_022495F0
Unk_ov6_022495F0: ; 0x022495F0
	.incbin "incbin/overlay6_rodata.bin", 0x7DC, 0x7F4 - 0x7DC

	.global Unk_ov6_02249608
Unk_ov6_02249608: ; 0x02249608
	.incbin "incbin/overlay6_rodata.bin", 0x7F4, 0x858 - 0x7F4

	.global Unk_ov6_0224966C
Unk_ov6_0224966C: ; 0x0224966C
	.incbin "incbin/overlay6_rodata.bin", 0x858, 0x68

