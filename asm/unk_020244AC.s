	.include "macros/function.inc"
	.include "include/unk_020244AC.inc"

	

	.text


	thumb_func_start sub_020244AC
sub_020244AC: ; 0x020244AC
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _02024590 ; =0x000202CC
	mov r0, #1
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _02024590 ; =0x000202CC
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4BB8
	ldr r0, _02024594 ; =0x021C0794
	str r4, [r0, #0]
	bl sub_02025A3C
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, _02024598 ; =0x00020024
	add r0, r4, r0
	bl sub_020251DC
	ldr r0, _0202459C ; =0x00020284
	ldr r1, _02024598 ; =0x00020024
	add r0, r4, r0
	add r1, r4, r1
	bl sub_02025258
	ldr r1, _020245A0 ; =0x00020018
	mov r0, #0
	add r1, r4, r1
	mov r2, #8
	bl sub_020C4BB8
	add r0, r4, #0
	bl sub_02024ABC
	add r5, r0, #0
	mov r0, #0
	str r0, [r4, #0x10]
	cmp r5, #3
	bhi _02024588
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02024514: ; jump table
	.short _02024582 - _02024514 - 2 ; case 0
	.short _0202451C - _02024514 - 2 ; case 1
	.short _0202451E - _02024514 - 2 ; case 2
	.short _0202457A - _02024514 - 2 ; case 3
_0202451C:
	str r0, [r4, #0xc]
_0202451E:
	add r0, r4, #0
	bl sub_02024DBC
	mov r1, #1
	mov r0, #0
	str r1, [r4, #4]
	str r0, [r4, #8]
	cmp r5, #2
	bne _02024536
	ldr r0, [r4, #0x10]
	orr r0, r1
	str r0, [r4, #0x10]
_02024536:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02024CD4
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _02024550
	ldr r1, [r4, #0x10]
	mov r0, #8
	orr r0, r1
	str r0, [r4, #0x10]
	b _0202455C
_02024550:
	cmp r0, #2
	bne _0202455C
	ldr r1, [r4, #0x10]
	mov r0, #4
	orr r0, r1
	str r0, [r4, #0x10]
_0202455C:
	ldr r0, [sp]
	cmp r0, #3
	bne _0202456C
	ldr r1, [r4, #0x10]
	mov r0, #0x20
	orr r0, r1
	str r0, [r4, #0x10]
	b _02024588
_0202456C:
	cmp r0, #2
	bne _02024588
	ldr r1, [r4, #0x10]
	mov r0, #0x10
	orr r0, r1
	str r0, [r4, #0x10]
	b _02024588
_0202457A:
	ldr r1, [r4, #0x10]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x10]
_02024582:
	add r0, r4, #0
	bl sub_0202479C
_02024588:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02024590: .word 0x000202CC
_02024594: .word 0x021C0794
_02024598: .word 0x00020024
_0202459C: .word 0x00020284
_020245A0: .word 0x00020018
	thumb_func_end sub_020244AC

	thumb_func_start sub_020245A4
sub_020245A4: ; 0x020245A4
	push {r3, lr}
	ldr r0, _020245B8 ; =0x021C0794
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020245B2
	bl sub_02022974
_020245B2:
	ldr r0, _020245B8 ; =0x021C0794
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_020245B8: .word 0x021C0794
	thumb_func_end sub_020245A4

	thumb_func_start sub_020245BC
sub_020245BC: ; 0x020245BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x26
	blt _020245CA
	bl sub_02022974
_020245CA:
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _020245DC ; =0x0002002C
	add r2, r5, #0
	ldr r0, [r1, r0]
	add r2, #0x14
	add r0, r2, r0
	pop {r3, r4, r5, pc}
	nop
_020245DC: .word 0x0002002C
	thumb_func_end sub_020245BC

	thumb_func_start sub_020245E0
sub_020245E0: ; 0x020245E0
	ldr r3, _020245E4 ; =sub_020245BC
	bx r3
	; .align 2, 0
_020245E4: .word sub_020245BC
	thumb_func_end sub_020245E0

	thumb_func_start sub_020245E8
sub_020245E8: ; 0x020245E8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #1
	str r0, [sp]
	mov r0, #3
	lsl r1, r1, #0xc
	bl sub_02018184
	add r6, r0, #0
	mov r0, #1
	bl sub_02017B7C
	ldr r1, _020246A0 ; =0x00020020
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0202460C
	mov r2, #1
	b _0202460E
_0202460C:
	mov r2, #0
_0202460E:
	ldr r0, [sp]
	mov r1, #0
	bl sub_0202516C
	ldr r1, _020246A4 ; =0x00020021
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02024624
	mov r2, #1
	b _02024626
_02024624:
	mov r2, #0
_02024626:
	ldr r0, [sp]
	mov r1, #1
	bl sub_0202516C
	ldr r0, [sp]
	ldr r3, _020246A0 ; =0x00020020
	add r2, r0, #0
	ldrb r2, [r2, r3]
	mov r1, #0
	bl sub_0202516C
	ldr r0, [sp]
	ldr r3, _020246A4 ; =0x00020021
	add r2, r0, #0
	ldrb r2, [r2, r3]
	mov r1, #1
	bl sub_0202516C
	mov r0, #0
	mov r2, #1
	mvn r0, r0
	add r1, r6, #0
	lsl r2, r2, #0xc
	bl sub_020C4BB8
	mov r4, #0
	mov r7, #1
	add r5, r4, #0
	lsl r7, r7, #0xc
_02024660:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02025A9C
	add r0, r4, #0
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02025A9C
	mov r0, #1
	lsl r0, r0, #0xc
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #0x40
	blt _02024660
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp]
	bl sub_0202479C
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #1
	bl sub_02017B8C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020246A0: .word 0x00020020
_020246A4: .word 0x00020021
	thumb_func_end sub_020245E8

	thumb_func_start sub_020246A8
sub_020246A8: ; 0x020246A8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _020246BA
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_020246BA:
	bl sub_02024DBC
	cmp r0, #0
	beq _020246DA
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02024CD4
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_020246DA:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_020246A8

	thumb_func_start sub_020246E0
sub_020246E0: ; 0x020246E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020246EE
	mov r0, #3
	pop {r4, pc}
_020246EE:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02024744
	mov r0, #1
	bl sub_02017B7C
	ldr r0, _02024758 ; =0x00020020
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02024706
	mov r2, #1
	b _02024708
_02024706:
	mov r2, #0
_02024708:
	add r0, r4, #0
	mov r1, #0
	bl sub_0202516C
	ldr r0, _0202475C ; =0x00020021
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0202471C
	mov r2, #1
	b _0202471E
_0202471C:
	mov r2, #0
_0202471E:
	add r0, r4, #0
	mov r1, #1
	bl sub_0202516C
	ldr r2, _02024758 ; =0x00020020
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #0
	bl sub_0202516C
	ldr r2, _0202475C ; =0x00020021
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	bl sub_0202516C
	mov r0, #1
	bl sub_02017B8C
_02024744:
	add r0, r4, #0
	bl sub_0202513C
	cmp r0, #2
	bne _02024756
	mov r1, #1
	str r1, [r4, #4]
	mov r1, #0
	str r1, [r4, #8]
_02024756:
	pop {r4, pc}
	; .align 2, 0
_02024758: .word 0x00020020
_0202475C: .word 0x00020021
	thumb_func_end sub_020246E0

	thumb_func_start sub_02024760
sub_02024760: ; 0x02024760
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	blt _0202476E
	bl sub_02022974
_0202476E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02024778
	bl sub_02022974
_02024778:
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _02024782
	bl sub_02022974
_02024782:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02024814
_0202478A:
	add r0, r5, #0
	bl sub_02024828
	cmp r0, #0
	beq _0202478A
	cmp r0, #1
	beq _0202478A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02024760

	thumb_func_start sub_0202479C
sub_0202479C: ; 0x0202479C
	add r2, r0, #0
	mov r0, #1
	str r0, [r2, #8]
	ldr r1, _020247B0 ; =0x00020024
	str r0, [r2, #0xc]
	add r0, r2, #0
	ldr r3, _020247B4 ; =sub_020252EC
	add r0, #0x14
	add r1, r2, r1
	bx r3
	; .align 2, 0
_020247B0: .word 0x00020024
_020247B4: .word sub_020252EC
	thumb_func_end sub_0202479C

	thumb_func_start sub_020247B8
sub_020247B8: ; 0x020247B8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_020247B8

	thumb_func_start sub_020247BC
sub_020247BC: ; 0x020247BC
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_020247BC

	thumb_func_start sub_020247C0
sub_020247C0: ; 0x020247C0
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_020247C0

	thumb_func_start sub_020247C4
sub_020247C4: ; 0x020247C4
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_020247C4

	thumb_func_start sub_020247C8
sub_020247C8: ; 0x020247C8
	push {r3, lr}
	bl sub_0202783C
	bl sub_020278CC
	pop {r3, pc}
	thumb_func_end sub_020247C8

	thumb_func_start sub_020247D4
sub_020247D4: ; 0x020247D4
	push {r3, lr}
	bl sub_0202783C
	bl sub_020278B8
	pop {r3, pc}
	thumb_func_end sub_020247D4

	thumb_func_start sub_020247E0
sub_020247E0: ; 0x020247E0
	push {r4, lr}
	add r4, r0, #0
	bl sub_020247C4
	cmp r0, #0
	beq _020247FA
	add r0, r4, #0
	bl sub_020247C0
	cmp r0, #0
	beq _020247FA
	mov r0, #1
	pop {r4, pc}
_020247FA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020247E0

	thumb_func_start sub_02024800
sub_02024800: ; 0x02024800
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02024800

	thumb_func_start sub_02024804
sub_02024804: ; 0x02024804
	ldr r0, _02024810 ; =0x021C0794
	mov r1, #1
	ldr r0, [r0, #0]
	str r1, [r0, #0xc]
	bx lr
	nop
_02024810: .word 0x021C0794
	thumb_func_end sub_02024804

	thumb_func_start sub_02024814
sub_02024814: ; 0x02024814
	add r2, r1, #0
	ldr r1, _02024820 ; =0x0002029C
	ldr r3, _02024824 ; =sub_02024EC8
	add r1, r0, r1
	bx r3
	nop
_02024820: .word 0x0002029C
_02024824: .word sub_02024EC8
	thumb_func_end sub_02024814

	thumb_func_start sub_02024828
sub_02024828: ; 0x02024828
	push {r3, r4, r5, lr}
	ldr r1, _0202484C ; =0x0002029C
	add r5, r0, #0
	add r1, r5, r1
	bl sub_02024F44
	add r4, r0, #0
	beq _02024848
	cmp r4, #1
	beq _02024848
	ldr r1, _0202484C ; =0x0002029C
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl sub_0202506C
_02024848:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202484C: .word 0x0002029C
	thumb_func_end sub_02024828

	thumb_func_start sub_02024850
sub_02024850: ; 0x02024850
	ldr r1, _02024858 ; =0x0002029C
	ldr r3, _0202485C ; =sub_020250DC
	add r1, r0, r1
	bx r3
	; .align 2, 0
_02024858: .word 0x0002029C
_0202485C: .word sub_020250DC
	thumb_func_end sub_02024850

	thumb_func_start sub_02024860
sub_02024860: ; 0x02024860
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02024860

	thumb_func_start sub_0202486C
sub_0202486C: ; 0x0202486C
	ldr r3, _02024874 ; =sub_0201D628
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	; .align 2, 0
_02024874: .word sub_0201D628
	thumb_func_end sub_0202486C

	thumb_func_start sub_02024878
sub_02024878: ; 0x02024878
	ldr r3, _02024884 ; =sub_0201D628
	sub r2, #0x14
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_02024884: .word sub_0201D628
	thumb_func_end sub_02024878

	thumb_func_start sub_02024888
sub_02024888: ; 0x02024888
	cmp r0, #0
	bne _02024890
	mov r2, #0
	b _02024894
_02024890:
	mov r2, #1
	lsl r2, r2, #0x12
_02024894:
	ldr r0, [r1, #4]
	add r0, r2, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02024888

	thumb_func_start sub_0202489C
sub_0202489C: ; 0x0202489C
	push {r3, r4, r5, lr}
	ldr r3, _020248C0 ; =0x00020284
	add r3, r0, r3
	mov r0, #0xc
	mul r0, r2
	add r5, r3, r0
	ldr r0, [r5, #4]
	add r4, r1, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _020248B6
	bl sub_02022974
_020248B6:
	ldr r0, [r5, #8]
	add r0, r4, r0
	sub r0, #0x14
	pop {r3, r4, r5, pc}
	nop
_020248C0: .word 0x00020284
	thumb_func_end sub_0202489C

	thumb_func_start sub_020248C4
sub_020248C4: ; 0x020248C4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02024918 ; =0x00020284
	add r3, r0, #0
	add r3, r3, r4
	add r5, r2, #0
	mov r4, #0xc
	mul r4, r5
	str r0, [sp]
	add r7, r1, #0
	add r6, r3, r4
	bl sub_0202489C
	add r4, r0, #0
	ldr r2, [r6, #8]
	ldr r0, [r4, #8]
	ldr r1, [r6, #4]
	cmp r0, r2
	beq _020248EC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020248EC:
	ldr r3, [r4, #0xc]
	ldr r0, _0202491C ; =0x20060623
	cmp r3, r0
	beq _020248F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020248F8:
	ldrb r0, [r4, #0x10]
	cmp r0, r5
	beq _02024902
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02024902:
	ldr r0, [sp]
	add r1, r7, r1
	bl sub_02024878
	ldrh r1, [r4, #0x12]
	cmp r1, r0
	bne _02024914
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02024914:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02024918: .word 0x00020284
_0202491C: .word 0x20060623
	thumb_func_end sub_020248C4

	thumb_func_start sub_02024920
sub_02024920: ; 0x02024920
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r1, #0
	add r5, r0, #0
	str r3, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r3, #0
	bl sub_0202489C
	add r4, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020248C4
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	str r0, [r5, #4]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02024920

	thumb_func_start sub_0202494C
sub_0202494C: ; 0x0202494C
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _02024990 ; =0x00020284
	add r5, r0, #0
	add r7, r2, #0
	mov r4, #0xc
	add r3, r5, r3
	mul r4, r7
	str r1, [sp]
	add r6, r3, r4
	bl sub_0202489C
	ldr r2, _02024994 ; =0x00020014
	add r4, r0, #0
	ldr r0, [r5, r2]
	ldr r1, [r6, #4]
	add r2, r2, #4
	str r0, [r4, #0]
	lsl r0, r7, #2
	add r0, r5, r0
	ldr r0, [r0, r2]
	ldr r2, [sp]
	str r0, [r4, #4]
	ldr r0, [r6, #8]
	add r1, r2, r1
	str r0, [r4, #8]
	ldr r0, _02024998 ; =0x20060623
	str r0, [r4, #0xc]
	strb r7, [r4, #0x10]
	ldr r2, [r6, #8]
	add r0, r5, #0
	bl sub_02024878
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02024990: .word 0x00020284
_02024994: .word 0x00020014
_02024998: .word 0x20060623
	thumb_func_end sub_0202494C

	thumb_func_start sub_0202499C
sub_0202499C: ; 0x0202499C
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	bne _020249AC
	cmp r1, #0
	bne _020249AC
	add r0, r2, #0
	bx lr
_020249AC:
	cmp r0, #0
	bne _020249BC
	mov r2, #0
	mvn r2, r2
	cmp r1, r2
	bne _020249BC
	mov r0, #1
	bx lr
_020249BC:
	cmp r0, r1
	bls _020249C4
	mov r0, #1
	bx lr
_020249C4:
	cmp r0, r1
	bhs _020249CC
	mov r0, #1
	b _020249CE
_020249CC:
	mov r0, #0
_020249CE:
	neg r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202499C

	thumb_func_start sub_020249D4
sub_020249D4: ; 0x020249D4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [r7, #4]
	ldr r1, [r6, #4]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0202499C
	str r0, [sp]
	ldr r0, [r7, #8]
	ldr r1, [r6, #8]
	bl sub_0202499C
	ldr r2, [r7, #0]
	cmp r2, #0
	beq _02024A4E
	ldr r1, [r6, #0]
	cmp r1, #0
	beq _02024A4E
	ldr r1, [sp]
	cmp r1, #0
	ble _02024A14
	cmp r0, #0
	bgt _02024A0A
	bl sub_02022974
_02024A0A:
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r4, #0]
	b _02024A4A
_02024A14:
	bge _02024A28
	cmp r0, #0
	blt _02024A1E
	bl sub_02022974
_02024A1E:
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _02024A4A
_02024A28:
	cmp r0, #0
	ble _02024A36
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r4, #0]
	b _02024A4A
_02024A36:
	bge _02024A42
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _02024A4A
_02024A42:
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r4, #0]
_02024A4A:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02024A4E:
	cmp r2, #0
	beq _02024A64
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _02024A64
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02024A64:
	cmp r2, #0
	bne _02024A78
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _02024A78
	mov r0, #1
	str r0, [r5, #0]
	mov r1, #2
	str r1, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02024A78:
	mov r0, #2
	str r0, [r5, #0]
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020249D4

	thumb_func_start sub_02024A84
sub_02024A84: ; 0x02024A84
	push {r3, r4, r5, r6}
	mov r4, #0xc
	add r5, r3, #0
	mul r5, r4
	add r6, r1, r5
	ldr r5, [r6, #4]
	ldr r1, _02024AB8 ; =0x00020014
	str r5, [r0, r1]
	ldr r6, [r6, #8]
	add r5, r1, #4
	str r6, [r0, r5]
	ldr r5, [sp, #0x10]
	mul r4, r5
	add r2, r2, r4
	ldr r4, [r2, #8]
	add r2, r1, #0
	add r2, #8
	str r4, [r0, r2]
	add r2, r1, #0
	add r2, #0xc
	strb r3, [r0, r2]
	add r1, #0xd
	strb r5, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02024AB8: .word 0x00020014
	thumb_func_end sub_02024A84

	thumb_func_start sub_02024ABC
sub_02024ABC: ; 0x02024ABC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	mov r1, #2
	add r5, r0, #0
	mov r0, #3
	lsl r1, r1, #0x10
	bl sub_02018184
	mov r1, #2
	add r6, r0, #0
	mov r0, #3
	lsl r1, r1, #0x10
	bl sub_02018184
	mov r2, #2
	add r4, r0, #0
	mov r0, #0
	add r1, r6, #0
	lsl r2, r2, #0x10
	bl sub_02025AC0
	cmp r0, #0
	add r0, sp, #0x2c
	beq _02024B04
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_02024920
	add r0, sp, #0x14
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_02024920
	b _02024B0E
_02024B04:
	bl sub_02024860
	add r0, sp, #0x14
	bl sub_02024860
_02024B0E:
	mov r0, #1
	lsl r0, r0, #0x12
	add r1, r4, #0
	lsr r2, r0, #1
	bl sub_02025AC0
	cmp r0, #0
	add r0, sp, #0x38
	beq _02024B38
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_02024920
	add r0, sp, #0x20
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_02024920
	b _02024B42
_02024B38:
	bl sub_02024860
	add r0, sp, #0x20
	bl sub_02024860
_02024B42:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, sp, #0x2c
	add r1, sp, #0x38
	add r2, sp, #0x10
	add r3, sp, #8
	bl sub_020249D4
	add r4, r0, #0
	add r0, sp, #0x14
	add r1, sp, #0x20
	add r2, sp, #0xc
	add r3, sp, #4
	bl sub_020249D4
	cmp r4, #0
	bne _02024B76
	cmp r0, #0
	bne _02024B76
	add sp, #0x44
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02024B76:
	cmp r4, #0
	beq _02024B7E
	cmp r0, #0
	bne _02024B84
_02024B7E:
	add sp, #0x44
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02024B84:
	cmp r4, #2
	bne _02024BC8
	cmp r0, #2
	bne _02024BC8
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0xc]
	mov r2, #0xc
	add r4, r3, #0
	mul r4, r2
	add r0, sp, #0x30
	ldr r0, [r0, r4]
	add r4, r1, #0
	mul r4, r2
	add r2, sp, #0x18
	ldr r2, [r2, r4]
	cmp r0, r2
	str r1, [sp]
	add r1, sp, #0x2c
	bne _02024BB8
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02024BB8:
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02024BC8:
	cmp r4, #1
	bne _02024C1E
	cmp r0, #2
	bne _02024C1E
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r4, #0xc
	add r2, r3, #0
	add r6, r0, #0
	mul r2, r4
	add r1, sp, #0x30
	ldr r2, [r1, r2]
	mul r6, r4
	add r1, sp, #0x18
	ldr r6, [r1, r6]
	cmp r2, r6
	bne _02024BFC
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x2c
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02024BFC:
	ldr r0, [sp, #4]
	mul r4, r0
	ldr r1, [r1, r4]
	cmp r2, r1
	bne _02024C18
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x2c
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02024C18:
	add sp, #0x44
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02024C1E:
	cmp r4, #2
	bne _02024C62
	cmp r0, #1
	bne _02024C62
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0xc]
	mov r2, #0xc
	add r4, r3, #0
	mul r4, r2
	add r0, sp, #0x30
	ldr r0, [r0, r4]
	add r4, r1, #0
	mul r4, r2
	add r2, sp, #0x18
	ldr r2, [r2, r4]
	cmp r0, r2
	str r1, [sp]
	add r1, sp, #0x2c
	bne _02024C52
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02024C52:
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02024C62:
	cmp r4, #1
	bne _02024CA0
	cmp r0, #1
	bne _02024CA0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	cmp r2, r0
	bne _02024CA0
	add r3, r2, #0
	mov r1, #0xc
	mul r3, r1
	add r2, sp, #0x30
	mul r1, r0
	add r0, sp, #0x18
	ldr r2, [r2, r3]
	ldr r0, [r0, r1]
	cmp r2, r0
	beq _02024C8A
	bl sub_02022974
_02024C8A:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x2c
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02024CA0:
	ldr r1, [sp, #0x10]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r1, sp, #0x30
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x18
	ldr r0, [r0, r2]
	cmp r3, r0
	beq _02024CBE
	bl sub_02022974
_02024CBE:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x2c
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	mov r0, #2
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02024ABC

	thumb_func_start sub_02024CD4
sub_02024CD4: ; 0x02024CD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0202783C
	add r7, r0, #0
	mov r0, #1
	str r0, [r4, #0]
	str r0, [r5, #0]
	add r0, r6, #0
	bl sub_020247C8
	cmp r0, #0
	beq _02024D9E
	add r0, sp, #4
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_020279A8
	mov r0, #0
	ldr r1, [sp, #0xc]
	mvn r0, r0
	cmp r1, r0
	bne _02024D14
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02024D42
_02024D14:
	add r0, sp, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	mov r2, #1
	add r3, sp, #0x14
	bl sub_020257E8
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	cmp r0, #2
	bne _02024D34
	mov r0, #3
	str r0, [r4, #0]
	b _02024D42
_02024D34:
	cmp r0, #1
	bne _02024D42
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02024D42
	mov r0, #2
	str r0, [r4, #0]
_02024D42:
	mov r4, #2
_02024D44:
	add r0, sp, #4
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_020279A8
	mov r0, #0
	ldr r1, [sp, #0xc]
	mvn r0, r0
	cmp r1, r0
	bne _02024D64
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02024D98
_02024D64:
	add r0, sp, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #0
	add r3, sp, #0x14
	bl sub_020257E8
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	cmp r0, #2
	bne _02024D84
	mov r0, #3
	str r0, [r5, #0]
	b _02024D98
_02024D84:
	cmp r0, #1
	bne _02024D98
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02024D98
	ldr r0, [r5, #0]
	cmp r0, #3
	beq _02024D98
	mov r0, #2
	str r0, [r5, #0]
_02024D98:
	add r4, r4, #1
	cmp r4, #5
	ble _02024D44
_02024D9E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02024CD4

	thumb_func_start sub_02024DA4
sub_02024DA4: ; 0x02024DA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02024888
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r1, r4, r1
	bl sub_02025AC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02024DA4

	thumb_func_start sub_02024DBC
sub_02024DBC: ; 0x02024DBC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02024E20 ; =0x00020284
	add r7, r6, #0
	mov r4, #0
	add r5, r6, r0
	add r7, #0x14
_02024DCA:
	ldr r0, _02024E24 ; =0x00020020
	add r1, r6, r4
	ldrb r0, [r1, r0]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02024DA4
	cmp r0, #0
	bne _02024DE0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02024DE0:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_020248C4
	cmp r0, #0
	bne _02024DF2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02024DF2:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #2
	blt _02024DCA
	ldr r7, _02024E28 ; =0x00020030
	mov r5, #0
	add r4, r6, #0
_02024E00:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020245BC
	ldr r1, _02024E2C ; =0x00020028
	ldr r1, [r4, r1]
	bl sub_0201D628
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x26
	blt _02024E00
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02024E20: .word 0x00020284
_02024E24: .word 0x00020020
_02024E28: .word 0x00020030
_02024E2C: .word 0x00020028
	thumb_func_end sub_02024DBC

	thumb_func_start sub_02024E30
sub_02024E30: ; 0x02024E30
	push {r4, r5, r6, lr}
	add r3, r1, #0
	ldr r1, _02024E64 ; =0x00020284
	add r5, r0, #0
	add r6, r2, #0
	add r2, r5, r1
	mov r1, #0xc
	mul r1, r3
	add r4, r2, r1
	add r1, r5, #0
	add r1, #0x14
	add r2, r3, #0
	bl sub_0202494C
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02024888
	ldr r2, [r4, #8]
	ldr r1, [r4, #4]
	add r5, #0x14
	add r1, r5, r1
	sub r2, #0x14
	bl sub_02025B3C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02024E64: .word 0x00020284
	thumb_func_end sub_02024E30

	thumb_func_start sub_02024E68
sub_02024E68: ; 0x02024E68
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02024E94 ; =0x00020284
	add r3, r6, r0
	mov r0, #0xc
	mul r0, r1
	add r4, r3, r0
	add r0, r2, #0
	add r1, r4, #0
	ldr r5, [r4, #8]
	bl sub_02024888
	ldr r1, [r4, #4]
	add r0, r5, r0
	add r1, r6, r1
	sub r0, #0x14
	add r1, r1, r5
	mov r2, #0x14
	bl sub_02025B3C
	pop {r4, r5, r6, pc}
	nop
_02024E94: .word 0x00020284
	thumb_func_end sub_02024E68

	thumb_func_start sub_02024E98
sub_02024E98: ; 0x02024E98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02024EC4 ; =0x00020284
	add r3, r5, r0
	mov r0, #0xc
	mul r0, r1
	add r6, r3, r0
	add r0, r2, #0
	add r1, r6, #0
	ldr r4, [r6, #8]
	bl sub_02024888
	add r0, r4, r0
	ldr r1, [r6, #4]
	add r5, #8
	add r1, r5, r1
	sub r0, #0xc
	add r1, r1, r4
	mov r2, #8
	bl sub_02025B3C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02024EC4: .word 0x00020284
	thumb_func_end sub_02024E98

	thumb_func_start sub_02024EC8
sub_02024EC8: ; 0x02024EC8
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02024F3C ; =0x00020018
	add r4, r1, #0
	mov ip, r2
	mov r1, #0
	add r2, r0, #0
	add r3, r4, #0
	add r6, r7, #0
_02024ED8:
	ldr r5, _02024F3C ; =0x00020018
	add r1, r1, #1
	ldr r5, [r2, r5]
	str r5, [r3, #0x1c]
	ldr r5, [r2, r7]
	add r3, r3, #4
	add r5, r5, #1
	str r5, [r2, r6]
	add r2, r2, #4
	cmp r1, #2
	blt _02024ED8
	mov r1, #0
	str r1, [r4, #0x14]
	str r1, [r4, #0]
	mov r2, ip
	str r1, [r4, #0x24]
	cmp r2, #2
	bne _02024F26
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _02024F1C
	mov r2, #1
	str r2, [r4, #0]
	ldr r2, _02024F40 ; =0x00020014
	ldr r3, [r0, r2]
	str r3, [r4, #0x18]
	ldr r3, [r0, r2]
	add r3, r3, #1
	str r3, [r0, r2]
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	b _02024F34
_02024F1C:
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	b _02024F34
_02024F26:
	mov r0, ip
	str r0, [r4, #4]
	mov r0, ip
	str r0, [r4, #8]
	mov r0, ip
	add r0, r0, #1
	str r0, [r4, #0xc]
_02024F34:
	mov r0, #1
	bl sub_02017B7C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02024F3C: .word 0x00020018
_02024F40: .word 0x00020014
	thumb_func_end sub_02024EC8

	thumb_func_start sub_02024F44
sub_02024F44: ; 0x02024F44
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #5
	bls _02024F52
	b _02025062
_02024F52:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02024F5E: ; jump table
	.short _02024F6A - _02024F5E - 2 ; case 0
	.short _02024F92 - _02024F5E - 2 ; case 1
	.short _02024FB4 - _02024F5E - 2 ; case 2
	.short _02024FDC - _02024F5E - 2 ; case 3
	.short _0202500C - _02024F5E - 2 ; case 4
	.short _02025034 - _02024F5E - 2 ; case 5
_02024F6A:
	ldr r1, [r4, #8]
	ldr r0, _02025068 ; =0x00020020
	add r2, r5, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _02024F7A
	mov r2, #1
	b _02024F7C
_02024F7A:
	mov r2, #0
_02024F7C:
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02024E30
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_02024F92:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl sub_02025BB8
	cmp r0, #0
	beq _02025062
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, #0
	bne _02024FAE
	mov r0, #3
	pop {r3, r4, r5, pc}
_02024FAE:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_02024FB4:
	ldr r1, [r4, #8]
	ldr r0, _02025068 ; =0x00020020
	add r2, r5, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _02024FC4
	mov r2, #1
	b _02024FC6
_02024FC4:
	mov r2, #0
_02024FC6:
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02024E98
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_02024FDC:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl sub_02025BB8
	cmp r0, #0
	beq _02025062
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, #0
	bne _02024FF8
	mov r0, #3
	pop {r3, r4, r5, pc}
_02024FF8:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	add r1, r0, #1
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _0202500C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202500C:
	ldr r1, [r4, #8]
	ldr r0, _02025068 ; =0x00020020
	add r2, r5, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0202501C
	mov r2, #1
	b _0202501E
_0202501C:
	mov r2, #0
_0202501E:
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02024E68
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_02025034:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl sub_02025BB8
	cmp r0, #0
	beq _02025062
	mov r2, #0
	str r2, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, #0
	bne _02025050
	mov r0, #3
	pop {r3, r4, r5, pc}
_02025050:
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _02025060
	mov r0, #2
	pop {r3, r4, r5, pc}
_02025060:
	str r2, [r4, #0x14]
_02025062:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02025068: .word 0x00020020
	thumb_func_end sub_02024F44

	thumb_func_start sub_0202506C
sub_0202506C: ; 0x0202506C
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	add r0, r1, #0
	cmp r2, #3
	bne _02025096
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02025082
	ldr r2, [r0, #0x18]
	ldr r1, _020250D0 ; =0x00020014
	str r2, [r3, r1]
_02025082:
	ldr r1, _020250D4 ; =0x00020018
	mov r4, #0
_02025086:
	ldr r2, [r0, #0x1c]
	add r4, r4, #1
	str r2, [r3, r1]
	add r0, r0, #4
	add r3, r3, #4
	cmp r4, #2
	blt _02025086
	b _020250C6
_02025096:
	ldr r6, [r0, #4]
	ldr r1, [r0, #0xc]
	cmp r6, r1
	bge _020250BC
	ldr r1, _020250D8 ; =0x00020020
	mov r7, #1
	add r2, r1, #0
_020250A4:
	add r5, r3, r6
	ldrb r4, [r5, r2]
	cmp r4, #0
	bne _020250B0
	add r4, r7, #0
	b _020250B2
_020250B0:
	mov r4, #0
_020250B2:
	strb r4, [r5, r1]
	ldr r4, [r0, #0xc]
	add r6, r6, #1
	cmp r6, r4
	blt _020250A4
_020250BC:
	mov r0, #1
	str r0, [r3, #4]
	mov r0, #0
	str r0, [r3, #8]
	str r0, [r3, #0xc]
_020250C6:
	mov r0, #1
	bl sub_02017B8C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020250D0: .word 0x00020014
_020250D4: .word 0x00020018
_020250D8: .word 0x00020020
	thumb_func_end sub_0202506C

	thumb_func_start sub_020250DC
sub_020250DC: ; 0x020250DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _020250EC
	ldr r2, [r4, #0x18]
	ldr r1, _02025134 ; =0x00020014
	str r2, [r0, r1]
_020250EC:
	ldr r1, _02025138 ; =0x00020018
	mov r3, #0
	add r5, r4, #0
_020250F2:
	ldr r2, [r5, #0x1c]
	add r3, r3, #1
	str r2, [r0, r1]
	add r5, r5, #4
	add r0, r0, #4
	cmp r3, #2
	blt _020250F2
	bl sub_020CD050
	cmp r0, #0
	bne _0202510C
	bl sub_020CD05C
_0202510C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0202512A
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC89C
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	mov r0, #0
	str r0, [r4, #0x24]
_0202512A:
	mov r0, #1
	bl sub_02017B8C
	pop {r3, r4, r5, pc}
	nop
_02025134: .word 0x00020014
_02025138: .word 0x00020018
	thumb_func_end sub_020250DC

	thumb_func_start sub_0202513C
sub_0202513C: ; 0x0202513C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r1, sp, #0
	mov r2, #2
	add r5, r0, #0
	bl sub_02024EC8
	add r6, sp, #0
_0202514C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02024F44
	add r4, r0, #0
	beq _0202514C
	cmp r4, #1
	beq _0202514C
	add r0, r5, #0
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0202506C
	add r0, r4, #0
	add sp, #0x28
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202513C

	thumb_func_start sub_0202516C
sub_0202516C: ; 0x0202516C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r2, #0
	ldr r2, _020251A0 ; =0x00020284
	add r2, r0, r2
	mov r0, #0xc
	mul r0, r1
	add r5, r2, r0
	add r0, sp, #0
	mov r1, #0xff
	mov r2, #0x14
	bl sub_020C4CF4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02024888
	ldr r1, [r5, #8]
	mov r2, #0x14
	add r0, r1, r0
	sub r0, #0x14
	add r1, sp, #0
	bl sub_02025A9C
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_020251A0: .word 0x00020284
	thumb_func_end sub_0202516C

	thumb_func_start sub_020251A4
sub_020251A4: ; 0x020251A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020251D4 ; =0x020E5830
	ldr r4, _020251D8 ; =0x020E5894
	ldr r0, [r0, #0]
	cmp r5, r0
	blt _020251B6
	bl sub_02022974
_020251B6:
	lsl r0, r5, #4
	add r0, r4, r0
	ldr r0, [r0, #8]
	blx r0
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r2, r3, r2
	mov r1, #4
	sub r1, r1, r2
	add r0, r0, r1
	add r0, r0, #4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020251D4: .word 0x020E5830
_020251D8: .word 0x020E5894
	thumb_func_end sub_020251A4

	thumb_func_start sub_020251DC
sub_020251DC: ; 0x020251DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02025250 ; =0x020E5830
	ldr r4, _02025254 ; =0x020E5894
	ldr r0, [r0, #0]
	mov r7, #0
	str r0, [sp]
	cmp r0, #0x26
	beq _020251F4
	bl sub_02022974
_020251F4:
	ldr r0, [sp]
	mov r6, #0
	cmp r0, #0
	ble _02025240
	sub r0, r0, #1
	str r0, [sp, #4]
_02025200:
	ldr r0, [r4, #0]
	cmp r6, r0
	beq _0202520A
	bl sub_02022974
_0202520A:
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	add r0, r6, #0
	bl sub_020251A4
	str r0, [r5, #4]
	str r7, [r5, #8]
	mov r0, #0
	strh r0, [r5, #0xc]
	ldr r0, [r4, #4]
	strh r0, [r5, #0xe]
	ldr r0, [r5, #4]
	add r7, r7, r0
	ldr r0, [sp, #4]
	cmp r6, r0
	beq _02025232
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	beq _02025234
_02025232:
	add r7, #0x14
_02025234:
	ldr r0, [sp]
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, r0
	blt _02025200
_02025240:
	mov r0, #2
	lsl r0, r0, #0x10
	cmp r7, r0
	ble _0202524C
	bl sub_02022974
_0202524C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02025250: .word 0x020E5830
_02025254: .word 0x020E5894
	thumb_func_end sub_020251DC

	thumb_func_start sub_02025258
sub_02025258: ; 0x02025258
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov ip, r0
	add r4, r0, #0
	add r3, r0, #0
	ldr r0, _020252E4 ; =0x020E5830
	ldr r6, [sp]
	ldr r7, [r0, #0]
	add r5, r1, #0
_02025270:
	add r2, r6, #0
	strb r3, [r6]
	mov r0, #0
	str r0, [r6, #8]
	add r2, #8
	b _02025288
_0202527C:
	ldr r0, [r5, #4]
	ldr r1, [r2, #0]
	add r5, #0x10
	add r0, r1, r0
	str r0, [r2, #0]
	add r4, r4, #1
_02025288:
	ldrh r0, [r5, #0xe]
	cmp r3, r0
	bne _02025292
	cmp r4, r7
	blt _0202527C
_02025292:
	ldr r0, [r6, #8]
	add r3, r3, #1
	add r0, #0x14
	str r0, [r6, #8]
	ldr r0, [sp, #4]
	strb r0, [r6, #1]
	mov r0, ip
	str r0, [r6, #4]
	ldr r1, [r6, #8]
	ldr r0, _020252E8 ; =0x00000FFF
	add r0, r1, r0
	lsr r0, r0, #0xc
	strb r0, [r6, #2]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	mov r1, ip
	add r0, r1, r0
	add r6, #0xc
	mov ip, r0
	cmp r3, #2
	blt _02025270
	ldr r0, [sp]
	ldrb r1, [r0, #0xd]
	ldrb r0, [r0, #0xe]
	add r1, r1, r0
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _020252D4
	bl sub_02022974
_020252D4:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	ble _020252DE
	bl sub_02022974
_020252DE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020252E4: .word 0x020E5830
_020252E8: .word 0x00000FFF
	thumb_func_end sub_02025258

	thumb_func_start sub_020252EC
sub_020252EC: ; 0x020252EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r2, #2
	add r5, r1, #0
	mov r0, #0
	add r1, r6, #0
	lsl r2, r2, #0x10
	ldr r4, _02025338 ; =0x020E5894
	bl sub_020C4BB8
	ldr r0, _0202533C ; =0x020E5830
	mov r7, #0
	ldr r0, [r0, #0]
	str r0, [sp]
	cmp r0, #0
	ble _02025332
_0202530E:
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	mov r0, #0
	add r1, r6, r1
	bl sub_020C4BB8
	ldr r0, [sp, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, r0
	blx r1
	ldr r0, [sp]
	add r7, r7, #1
	add r5, #0x10
	add r4, #0x10
	cmp r7, r0
	blt _0202530E
_02025332:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02025338: .word 0x020E5894
_0202533C: .word 0x020E5830
	thumb_func_end sub_020252EC

	thumb_func_start sub_02025340
sub_02025340: ; 0x02025340
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r5, _020253AC ; =0x020E5834
	bl sub_020247C8
	cmp r0, #1
	beq _020253A8
	ldr r0, _020253B0 ; =0x020E582C
	mov r7, #0
	ldr r0, [r0, #0]
	str r0, [sp]
	cmp r0, #0
	ble _020253A2
_0202535C:
	ldr r2, [r5, #0]
	cmp r2, #0
	beq _02025398
	add r0, r6, #0
	mov r1, #3
	add r3, sp, #4
	bl sub_02025680
	add r4, r0, #0
	bne _02025374
	bl sub_02022974
_02025374:
	ldr r0, [r5, #8]
	blx r0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	blx r1
	ldr r1, [r5, #0]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02025428
	add r0, r4, #0
	bl sub_020181C4
_02025398:
	ldr r0, [sp]
	add r7, r7, #1
	add r5, #0x10
	cmp r7, r0
	blt _0202535C
_020253A2:
	add r0, r6, #0
	bl sub_020247D4
_020253A8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020253AC: .word 0x020E5834
_020253B0: .word 0x020E582C
	thumb_func_end sub_02025340

	thumb_func_start sub_020253B4
sub_020253B4: ; 0x020253B4
	push {r3, r4, r5, lr}
	ldr r5, _020253D8 ; =0x20060623
	add r4, r1, r3
	str r5, [r1, r3]
	ldr r5, _020253DC ; =0x000202C8
	ldr r0, [r0, r5]
	add r0, r0, #1
	str r0, [r4, #4]
	str r3, [r4, #8]
	add r3, #0xe
	add r0, r1, #0
	add r1, r3, #0
	strh r2, [r4, #0xc]
	bl sub_0201D628
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
	nop
_020253D8: .word 0x20060623
_020253DC: .word 0x000202C8
	thumb_func_end sub_020253B4

	thumb_func_start sub_020253E0
sub_020253E0: ; 0x020253E0
	push {r3, r4, r5, lr}
	ldr r5, [r1, r3]
	ldr r0, _0202541C ; =0x20060623
	add r4, r1, r3
	cmp r5, r0
	beq _020253F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_020253F0:
	ldr r0, [r4, #8]
	cmp r0, r3
	beq _020253FA
	mov r0, #0
	pop {r3, r4, r5, pc}
_020253FA:
	ldrh r0, [r4, #0xc]
	cmp r0, r2
	beq _02025404
	mov r0, #0
	pop {r3, r4, r5, pc}
_02025404:
	add r3, #0xe
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0201D628
	ldrh r1, [r4, #0xe]
	cmp r1, r0
	bne _02025418
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025418:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202541C: .word 0x20060623
	thumb_func_end sub_020253E0

	thumb_func_start sub_02025420
sub_02025420: ; 0x02025420
	add r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025420

	thumb_func_start sub_02025428
sub_02025428: ; 0x02025428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #1
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02017B7C
	ldr r0, _02025568 ; =0x020E582C
	ldr r0, [r0, #0]
	cmp r5, r0
	blt _02025444
	bl sub_02022974
_02025444:
	ldr r1, _0202556C ; =0x020E5834
	lsl r0, r5, #4
	add r4, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r5
	beq _02025454
	bl sub_02022974
_02025454:
	ldr r0, [r4, #8]
	blx r0
	str r0, [sp, #4]
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, _02025570 ; =0x000202C4
	ldr r0, [r7, r0]
	cmp r0, #1
	ldr r0, [r4, #8]
	bne _020254DA
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #4]
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025A9C
	str r0, [sp]
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202549C
	bl sub_02022974
_0202549C:
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #4]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025A9C
	ldr r1, [sp]
	orr r0, r1
	str r0, [sp]
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202554A
	bl sub_02022974
	b _0202554A
_020254DA:
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #4]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025A9C
	str r0, [sp]
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _02025510
	bl sub_02022974
_02025510:
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #4]
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025A9C
	ldr r1, [sp]
	orr r0, r1
	str r0, [sp]
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202554A
	bl sub_02022974
_0202554A:
	ldr r0, [sp]
	cmp r0, #1
	bne _0202555C
	mov r0, #1
	bl sub_02017B8C
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0202555C:
	mov r0, #1
	bl sub_02017B8C
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02025568: .word 0x020E582C
_0202556C: .word 0x020E5834
_02025570: .word 0x000202C4
	thumb_func_end sub_02025428

	thumb_func_start sub_02025574
sub_02025574: ; 0x02025574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	mov r0, #1
	add r5, r1, #0
	add r7, r2, #0
	bl sub_02017B7C
	ldr r0, _02025678 ; =0x020E582C
	ldr r0, [r0, #0]
	cmp r5, r0
	blt _02025590
	bl sub_02022974
_02025590:
	ldr r1, _0202567C ; =0x020E5834
	lsl r0, r5, #4
	add r4, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r5
	beq _020255A0
	bl sub_02022974
_020255A0:
	ldr r0, [r4, #8]
	blx r0
	str r0, [sp, #8]
	add r0, #0x10
	str r0, [sp, #8]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_020259F8
_020255BA:
	ldr r0, [sp, #0x14]
	bl sub_0201D30C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _020255BA
	add r0, sp, #0xc
	ldrb r1, [r0]
	mov r0, #1
	add r2, r6, #0
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	bl sub_02025A18
	str r6, [r7, #0]
	add r0, sp, #0xc
	ldrb r0, [r0]
	cmp r0, #1
	ldr r0, [r4, #8]
	bne _02025626
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #8]
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl sub_02025A9C
	add r6, r0, #0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202565C
	bl sub_02022974
	b _0202565C
_02025626:
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #8]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl sub_02025A9C
	add r6, r0, #0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202565C
	bl sub_02022974
_0202565C:
	cmp r6, #1
	bne _0202566C
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0202566C:
	mov r0, #1
	bl sub_02017B8C
	mov r0, #3
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02025678: .word 0x020E582C
_0202567C: .word 0x020E5834
	thumb_func_end sub_02025574

	thumb_func_start sub_02025680
sub_02025680: ; 0x02025680
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _020257DC ; =0x020E582C
	add r7, r2, #0
	ldr r0, [r0, #0]
	add r6, r1, #0
	str r3, [sp]
	cmp r7, r0
	blt _02025698
	bl sub_02022974
_02025698:
	ldr r1, _020257E0 ; =0x020E5834
	lsl r0, r7, #4
	add r4, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r7
	beq _020256A8
	bl sub_02022974
_020256A8:
	ldr r0, [r4, #8]
	blx r0
	str r0, [sp, #0x10]
	add r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_02018144
	add r6, r0, #0
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x10]
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025AC0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020253E0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	blx r0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02025420
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x10]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025AC0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020253E0
	add r7, r0, #0
	ldr r0, [r4, #8]
	blx r0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02025420
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02025744
	cmp r7, #0
	bne _02025744
	ldr r0, _020257E4 ; =0x000202C4
	mov r1, #0
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	lsl r0, r0, #0xc
	bl sub_02025AC0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02025744:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0202576E
	cmp r7, #1
	bne _0202576E
	ldr r0, _020257E4 ; =0x000202C4
	mov r1, #1
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x10]
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r0, #0x40
	lsl r0, r0, #0xc
	bl sub_02025AC0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0202576E:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _020257C4
	cmp r7, #1
	bne _020257C4
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_0202499C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	ldr r0, _020257E4 ; =0x000202C4
	beq _020257A6
	mov r1, #0
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	lsl r0, r0, #0xc
	bl sub_02025AC0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020257A6:
	mov r1, #1
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x10]
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r0, #0x40
	lsl r0, r0, #0xc
	bl sub_02025AC0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020257C4:
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0, #0]
	ldr r0, _020257E4 ; =0x000202C4
	mov r1, #0
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_020257DC: .word 0x020E582C
_020257E0: .word 0x020E5834
_020257E4: .word 0x000202C4
	thumb_func_end sub_02025680

	thumb_func_start sub_020257E8
sub_020257E8: ; 0x020257E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #4]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #8]
	ldr r7, [sp, #0x48]
	bl sub_0202783C
	str r0, [sp, #0xc]
	ldr r0, _020259F0 ; =0x020E582C
	ldr r0, [r0, #0]
	cmp r6, r0
	blt _02025808
	bl sub_02022974
_02025808:
	cmp r6, #0
	bne _02025810
	bl sub_02022974
_02025810:
	ldr r1, _020259F4 ; =0x020E5834
	lsl r0, r6, #4
	add r4, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r6
	beq _02025820
	bl sub_02022974
_02025820:
	ldr r0, [r4, #8]
	blx r0
	str r0, [sp, #0x18]
	add r0, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl sub_02018144
	add r5, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, sp, #0x24
	add r3, sp, #0x20
	bl sub_020259F8
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020253E0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #4
	bl sub_020C4DB0
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020253E0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x28
	mov r2, #4
	bl sub_020C4DB0
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	ldr r1, [sp, #0x14]
	str r0, [r7, #0]
	cmp r1, #1
	bne _020258E0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _020258E0
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	bne _020258E0
	add r1, sp, #0x1c
	ldrb r1, [r1]
	cmp r1, #1
	bne _020258CE
	ldr r2, [sp, #0x20]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r2, #0
	bl sub_02025A18
	mov r0, #1
	str r0, [r7, #0]
_020258CE:
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020258E0:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02025924
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02025924
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	bne _02025924
	add r0, sp, #0x1c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02025910
	ldr r2, [sp, #0x20]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02025A18
	mov r0, #1
	str r0, [r7, #0]
_02025910:
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02025924:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _020259D4
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _020259D4
	add r0, sp, #0x1c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02025986
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	bne _02025952
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02025952:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x28]
	cmp r2, r1
	bne _020259D4
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02025A18
	mov r0, #1
	str r0, [r7, #0]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02025986:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	cmp r2, r1
	bne _020259A2
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020259A2:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	bne _020259D4
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02025A18
	mov r0, #1
	str r0, [r7, #0]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020259D4:
	ldr r0, [sp, #8]
	mov r1, #2
	str r1, [r0, #0]
	mov r2, #0
	str r2, [sp]
	sub r2, r2, #1
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0]
	add r3, r2, #0
	bl sub_020279D0
	add r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020259F0: .word 0x020E582C
_020259F4: .word 0x020E5834
	thumb_func_end sub_020257E8

	thumb_func_start sub_020259F8
sub_020259F8: ; 0x020259F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202783C
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	str r1, [sp]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_020279A8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020259F8

	thumb_func_start sub_02025A18
sub_02025A18: ; 0x02025A18
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202783C
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	add r2, r4, #0
	add r3, r6, #0
	str r1, [sp]
	add r1, r5, #0
	bl sub_020279D0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02025A18

	thumb_func_start sub_02025A3C
sub_02025A3C: ; 0x02025A3C
	push {r3, r4, r5, lr}
	bl sub_020C1A00
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _02025A50
	bl sub_02022974
_02025A50:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC88C
	ldr r0, _02025A94 ; =0x00001302
	bl sub_020CCF0C
	cmp r0, #0
	beq _02025A66
	ldr r5, _02025A94 ; =0x00001302
	b _02025A76
_02025A66:
	ldr r0, _02025A98 ; =0x00001202
	bl sub_020CCF0C
	cmp r0, #0
	beq _02025A74
	ldr r5, _02025A98 ; =0x00001202
	b _02025A76
_02025A74:
	mov r5, #0
_02025A76:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC89C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	cmp r5, #0
	beq _02025A8E
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025A8E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02025A94: .word 0x00001302
_02025A98: .word 0x00001202
	thumb_func_end sub_02025A3C

	thumb_func_start sub_02025A9C
sub_02025A9C: ; 0x02025A9C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	bl sub_02025B3C
	add r5, r0, #0
	mov r4, #1
	add r6, sp, #0
_02025AAA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02025BB8
	cmp r0, #0
	beq _02025AAA
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02025A9C

	thumb_func_start sub_02025AC0
sub_02025AC0: ; 0x02025AC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_020C1A00
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _02025ADC
	bl sub_02022974
_02025ADC:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC88C
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	str r3, [sp, #0x10]
	bl sub_020CCE10
	bl sub_020CD044
	add r5, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC89C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	cmp r5, #0
	bne _02025B26
	ldr r0, _02025B2C ; =0x021C0794
	ldr r0, [r0, #0]
	bl sub_020181C4
	mov r0, #1
	bl sub_0209A74C
_02025B26:
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02025B2C: .word 0x021C0794
	thumb_func_end sub_02025AC0

	thumb_func_start sub_02025B30
sub_02025B30: ; 0x02025B30
	ldr r0, _02025B38 ; =0x021C0794
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_02025B38: .word 0x021C0794
	thumb_func_end sub_02025B30

	thumb_func_start sub_02025B3C
sub_02025B3C: ; 0x02025B3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_020C1A00
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _02025B58
	bl sub_02022974
_02025B58:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC88C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	add r1, sp, #0x14
	mov r2, #4
	add r3, r0, #0
	str r0, [sp, #0x10]
	bl sub_020CCE10
	cmp r0, #0
	bne _02025B86
	add r0, r4, #0
	mov r1, #1
	bl sub_02025C1C
_02025B86:
	ldr r0, _02025BB0 ; =0x021C0794
	mov r1, #0
	str r1, [r0, #4]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r3, _02025BB4 ; =sub_02025B30
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020CCE10
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02025BB0: .word 0x021C0794
_02025BB4: .word sub_02025B30
	thumb_func_end sub_02025B3C

	thumb_func_start sub_02025BB8
sub_02025BB8: ; 0x02025BB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02025C18 ; =0x021C0794
	add r4, r2, #0
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _02025C14
	cmp r1, #0
	bne _02025BCE
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025BCE:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC89C
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	bl sub_020CC840
	cmp r0, #0
	beq _02025BF0
	cmp r0, #4
	beq _02025BFA
	cmp r0, #6
	beq _02025C04
	b _02025BF6
_02025BF0:
	mov r0, #1
	str r0, [r4, #0]
	b _02025C10
_02025BF6:
	bl sub_02022974
_02025BFA:
	mov r1, #0
	add r0, r5, #0
	str r1, [r4, #0]
	bl sub_02025C1C
_02025C04:
	mov r0, #0
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl sub_02025C1C
_02025C10:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025C14:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02025C18: .word 0x021C0794
	thumb_func_end sub_02025BB8

	thumb_func_start sub_02025C1C
sub_02025C1C: ; 0x02025C1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	add r4, r1, #0
	bl sub_020CC89C
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	ldr r0, _02025C44 ; =0x021C0794
	ldr r0, [r0, #0]
	bl sub_020181C4
	mov r0, #1
	add r1, r4, #0
	bl sub_0209AA74
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02025C44: .word 0x021C0794
	thumb_func_end sub_02025C1C

	thumb_func_start sub_02025C48
sub_02025C48: ; 0x02025C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020245A4
	add r1, r5, #0
	bl sub_020245BC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020251A4
	sub r5, r0, #4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201D628
	lsr r1, r5, #0x1f
	add r1, r5, r1
	asr r1, r1, #1
	lsl r1, r1, #1
	ldrh r1, [r4, r1]
	cmp r0, r1
	bne _02025C7A
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025C7A:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02025C48

	thumb_func_start sub_02025C84
sub_02025C84: ; 0x02025C84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020245A4
	add r1, r5, #0
	bl sub_020245BC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020251A4
	sub r5, r0, #4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201D628
	lsr r1, r5, #0x1f
	add r1, r5, r1
	asr r1, r1, #1
	lsl r1, r1, #1
	strh r0, [r4, r1]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02025C84

	.bss


	.global Unk_021C0794
Unk_021C0794: ; 0x021C0794
	.space 0x4

	.global Unk_021C0798
Unk_021C0798: ; 0x021C0798
	.space 0x4

