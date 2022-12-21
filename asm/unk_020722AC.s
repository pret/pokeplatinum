	.include "macros/function.inc"
	.include "include/unk_020722AC.inc"

	

	.text


	thumb_func_start sub_020722AC
sub_020722AC: ; 0x020722AC
	push {r4, r5, r6, lr}
	mov r2, #5
	add r6, r0, #0
	add r4, r1, #0
	mov r0, #3
	mov r1, #0x2b
	lsl r2, r2, #0xc
	bl sub_02017FC8
	mov r1, #0x6e
	mov r0, #0x2b
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x6e
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl sub_020C4CF4
	add r0, r6, #0
	str r4, [r5, #4]
	bl sub_0203D174
	mov r1, #0x5b
	lsl r1, r1, #2
	str r6, [r5, r1]
	mov r1, #0x2b
	str r1, [r5, #0]
	mov r1, #0
	strb r1, [r5, #0x19]
	mov r1, #0xff
	add r4, r0, #0
	strb r1, [r5, #0x1a]
	bl sub_02025E44
	bl sub_02027AC0
	strb r0, [r5, #0x16]
	add r0, r4, #0
	bl sub_02025E44
	bl sub_02027B50
	strh r0, [r5, #0x14]
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x1c
	mov r1, #0x14
	bl sub_02072ED0
	ldr r2, [r5, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02072F30
	add r0, r5, #0
	bl sub_02073130
	ldr r0, _02072330 ; =sub_02072370
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02072330: .word sub_02072370
	thumb_func_end sub_020722AC

	thumb_func_start sub_02072334
sub_02072334: ; 0x02072334
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200DA58
	ldr r0, [r4, #4]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020731A4
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0x14
	bl sub_02072F04
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_0201807C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02072334

	thumb_func_start sub_02072364
sub_02072364: ; 0x02072364
	ldr r3, _0207236C ; =sub_02072334
	add r0, r1, #0
	bx r3
	nop
_0207236C: .word sub_02072334
	thumb_func_end sub_02072364

	thumb_func_start sub_02072370
sub_02072370: ; 0x02072370
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020731F4
	add r0, r4, #0
	bl sub_020729B4
	ldr r1, _0207238C ; =sub_02072390
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0207238C: .word sub_02072390
	thumb_func_end sub_02072370

	thumb_func_start sub_02072390
sub_02072390: ; 0x02072390
	push {r3, r4, r5, lr}
	mov r0, #0x16
	add r5, r1, #0
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020723AE
	bl sub_0206A870
_020723AE:
	ldr r0, _02072404 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _020723CA
	ldr r1, _02072408 ; =sub_02072518
	ldr r2, _0207240C ; =sub_02072364
	add r0, r5, #0
	bl sub_02072EA4
	ldr r0, _02072410 ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, pc}
_020723CA:
	mov r0, #1
	tst r0, r1
	beq _02072402
	ldr r0, _02072410 ; =0x000005DC
	bl sub_02005748
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	beq _020723EA
	add r0, r1, #1
	cmp r4, r0
	beq _020723EA
	lsr r0, r1, #0x10
	cmp r4, r0
	bne _020723F6
_020723EA:
	ldr r1, _02072408 ; =sub_02072518
	ldr r2, _0207240C ; =sub_02072364
	add r0, r5, #0
	bl sub_02072EA4
	pop {r3, r4, r5, pc}
_020723F6:
	ldr r1, _02072408 ; =sub_02072518
	ldr r2, _02072414 ; =sub_02072418
	add r0, r5, #0
	strb r4, [r5, #0x18]
	bl sub_02072EA4
_02072402:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02072404: .word 0x021BF67C
_02072408: .word sub_02072518
_0207240C: .word sub_02072364
_02072410: .word 0x000005DC
_02072414: .word sub_02072418
	thumb_func_end sub_02072390

	thumb_func_start sub_02072418
sub_02072418: ; 0x02072418
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0207242A
	cmp r0, #1
	beq _02072452
	pop {r3, r4, r5, pc}
_0207242A:
	add r0, r4, #0
	bl sub_020731F4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02072C98
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020732C4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02072452:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	beq _02072468
	ldr r1, _0207246C ; =sub_02072470
	add r0, r5, #0
	bl sub_0201CECC
	mov r0, #0
	strh r0, [r4, #0x10]
_02072468:
	pop {r3, r4, r5, pc}
	nop
_0207246C: .word sub_02072470
	thumb_func_end sub_02072418

	thumb_func_start sub_02072470
sub_02072470: ; 0x02072470
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x16
	add r4, r1, #0
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02001288
	add r5, r0, #0
	ldr r0, _020724F8 ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0207249E
	ldr r1, _020724FC ; =sub_02072534
	ldr r2, _02072500 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	ldr r0, _02072504 ; =0x000005DC
	bl sub_02005748
	pop {r4, r5, r6, pc}
_0207249E:
	mov r1, #1
	tst r0, r1
	beq _020724F4
	ldr r0, _02072504 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #2
	cmp r0, #5
	bhi _020724EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020724BC: ; jump table
	.short _020724C8 - _020724BC - 2 ; case 0
	.short _020724C8 - _020724BC - 2 ; case 1
	.short _020724EC - _020724BC - 2 ; case 2
	.short _020724D4 - _020724BC - 2 ; case 3
	.short _020724E0 - _020724BC - 2 ; case 4
	.short _020724C8 - _020724BC - 2 ; case 5
_020724C8:
	ldr r1, _020724FC ; =sub_02072534
	ldr r2, _02072500 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	pop {r4, r5, r6, pc}
_020724D4:
	ldr r1, _02072508 ; =sub_020725D0
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	pop {r4, r5, r6, pc}
_020724E0:
	ldr r1, _0207250C ; =sub_02072754
	ldr r2, _02072510 ; =sub_020727F8
	add r0, r4, #0
	bl sub_02072EA4
	pop {r4, r5, r6, pc}
_020724EC:
	ldr r1, _02072514 ; =sub_02072550
	add r0, r6, #0
	bl sub_0201CECC
_020724F4:
	pop {r4, r5, r6, pc}
	nop
_020724F8: .word 0x021BF67C
_020724FC: .word sub_02072534
_02072500: .word sub_02072370
_02072504: .word 0x000005DC
_02072508: .word sub_020725D0
_0207250C: .word sub_02072754
_02072510: .word sub_020727F8
_02072514: .word sub_02072550
	thumb_func_end sub_02072470

	thumb_func_start sub_02072518
sub_02072518: ; 0x02072518
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02072DB8
	add r0, r4, #0
	bl sub_02073294
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02072518

	thumb_func_start sub_02072534
sub_02072534: ; 0x02072534
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02072E4C
	add r0, r4, #0
	bl sub_02073294
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02072534

	thumb_func_start sub_02072550
sub_02072550: ; 0x02072550
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bhi _020725C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02072568: ; jump table
	.short _02072570 - _02072568 - 2 ; case 0
	.short _02072586 - _02072568 - 2 ; case 1
	.short _02072592 - _02072568 - 2 ; case 2
	.short _0207259E - _02072568 - 2 ; case 3
_02072570:
	add r0, r4, #0
	mov r1, #0
	bl sub_02073438
	cmp r0, #0
	beq _020725CA
	add r0, r4, #0
	mov r1, #1
	bl sub_020734F4
	b _020725C4
_02072586:
	add r0, r4, #0
	bl sub_020735E8
	cmp r0, #0
	bne _020725C4
	pop {r3, r4, r5, pc}
_02072592:
	add r0, r4, #0
	bl sub_02073480
	cmp r0, #0
	bne _020725C4
	pop {r3, r4, r5, pc}
_0207259E:
	add r0, r4, #0
	mov r1, #1
	bl sub_02073438
	cmp r0, #0
	beq _020725CA
	add r0, r4, #0
	bl sub_020731F4
	add r0, r4, #0
	bl sub_020729B4
	mov r0, #0
	strh r0, [r4, #0x10]
	ldr r1, _020725CC ; =sub_02072390
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
_020725C4:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_020725CA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020725CC: .word sub_02072390
	thumb_func_end sub_02072550

	thumb_func_start sub_020725D0
sub_020725D0: ; 0x020725D0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #5
	bhi _0207269A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020725E8: ; jump table
	.short _020725F4 - _020725E8 - 2 ; case 0
	.short _02072604 - _020725E8 - 2 ; case 1
	.short _02072616 - _020725E8 - 2 ; case 2
	.short _02072640 - _020725E8 - 2 ; case 3
	.short _02072658 - _020725E8 - 2 ; case 4
	.short _0207266A - _020725E8 - 2 ; case 5
_020725F4:
	mov r1, #1
	str r1, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r3, #0
	bl sub_020732C4
	b _0207269A
_02072604:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	beq _020726A0
	add r0, r4, #0
	bl sub_020733E0
	b _0207269A
_02072616:
	add r0, r4, #0
	bl sub_0207340C
	cmp r0, #0
	blt _020726A0
	beq _02072638
	mov r3, #0
	str r3, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r1, #2
	bl sub_020732C4
	mov r0, #4
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_02072638:
	mov r0, #3
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_02072640:
	add r0, r4, #0
	bl sub_02073398
	ldr r1, _020726A4 ; =sub_02072534
	ldr r2, _020726A8 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	mov r0, #0
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_02072658:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	beq _020726A0
	add r0, r4, #0
	bl sub_020733E0
	b _0207269A
_0207266A:
	add r0, r4, #0
	bl sub_0207340C
	cmp r0, #0
	blt _020726A0
	beq _02072682
	ldr r1, _020726AC ; =sub_02072878
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	b _0207268C
_02072682:
	ldr r1, _020726B0 ; =sub_020726B4
	ldr r2, _020726A4 ; =sub_02072534
	add r0, r4, #0
	bl sub_02072EA4
_0207268C:
	add r0, r4, #0
	bl sub_02073398
	mov r0, #0
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_0207269A:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_020726A0:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_020726A4: .word sub_02072534
_020726A8: .word sub_02072370
_020726AC: .word sub_02072878
_020726B0: .word sub_020726B4
	thumb_func_end sub_020725D0

	thumb_func_start sub_020726B4
sub_020726B4: ; 0x020726B4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _020726CA
	cmp r0, #1
	beq _0207270E
	cmp r0, #2
	beq _0207271C
	b _0207273E
_020726CA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020726E0
	add r0, r4, #0
	bl sub_020731F4
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_02072C98
_020726E0:
	add r0, r4, #0
	bl sub_02073060
	cmp r0, #0
	beq _020726FC
	mov r0, #1
	str r0, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_020732C4
	b _0207273E
_020726FC:
	mov r0, #1
	str r0, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl sub_020732C4
	b _0207273E
_0207270E:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	bne _0207273E
	add sp, #4
	pop {r3, r4, pc}
_0207271C:
	ldr r0, _02072748 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02072744
	add r0, r4, #0
	bl sub_02073398
	ldr r1, _0207274C ; =sub_02072534
	ldr r2, _02072750 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	mov r0, #0
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_0207273E:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_02072744:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02072748: .word 0x021BF67C
_0207274C: .word sub_02072534
_02072750: .word sub_02072370
	thumb_func_end sub_020726B4

	thumb_func_start sub_02072754
sub_02072754: ; 0x02072754
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bhi _020727EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207276A: ; jump table
	.short _02072772 - _0207276A - 2 ; case 0
	.short _02072788 - _0207276A - 2 ; case 1
	.short _02072796 - _0207276A - 2 ; case 2
	.short _020727A2 - _0207276A - 2 ; case 3
_02072772:
	add r0, r4, #0
	mov r1, #0
	bl sub_02073438
	cmp r0, #0
	beq _020727F2
	add r0, r4, #0
	mov r1, #1
	bl sub_020734F4
	b _020727EC
_02072788:
	add r0, r4, #0
	mov r1, #0xe
	bl sub_02073524
	cmp r0, #0
	bne _020727EC
	pop {r3, r4, r5, pc}
_02072796:
	add r0, r4, #0
	bl sub_02073480
	cmp r0, #0
	bne _020727EC
	pop {r3, r4, r5, pc}
_020727A2:
	add r0, r4, #0
	mov r1, #1
	bl sub_02073438
	cmp r0, #0
	beq _020727F2
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #0
	add r1, #0x22
	ldrb r5, [r1]
	bl sub_020181C4
	cmp r5, #7
	bne _020727D2
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_020727D2:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_020730B8
	ldr r1, _020727F4 ; =sub_02072370
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_020727EC:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_020727F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020727F4: .word sub_02072370
	thumb_func_end sub_02072754

	thumb_func_start sub_020727F8
sub_020727F8: ; 0x020727F8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0207280E
	cmp r0, #1
	beq _02072830
	cmp r0, #2
	beq _0207283E
	b _02072860
_0207280E:
	add r0, r4, #0
	bl sub_020731F4
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl sub_02072C98
	mov r0, #1
	str r0, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl sub_020732C4
	b _02072860
_02072830:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	bne _02072860
	add sp, #4
	pop {r3, r4, pc}
_0207283E:
	ldr r0, _0207286C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02072866
	add r0, r4, #0
	bl sub_02073398
	ldr r1, _02072870 ; =sub_02072534
	ldr r2, _02072874 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	mov r0, #0
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_02072860:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_02072866:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0207286C: .word 0x021BF67C
_02072870: .word sub_02072534
_02072874: .word sub_02072370
	thumb_func_end sub_020727F8

	thumb_func_start sub_02072878
sub_02072878: ; 0x02072878
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #5
	bls _02072884
	b _020729A0
_02072884:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02072890: ; jump table
	.short _0207289C - _02072890 - 2 ; case 0
	.short _020728E4 - _02072890 - 2 ; case 1
	.short _02072928 - _02072890 - 2 ; case 2
	.short _02072946 - _02072890 - 2 ; case 3
	.short _02072978 - _02072890 - 2 ; case 4
	.short _02072984 - _02072890 - 2 ; case 5
_0207289C:
	add r0, r4, #0
	mov r1, #0
	bl sub_02073438
	cmp r0, #0
	beq _020729A6
	add r0, r4, #0
	mov r1, #1
	bl sub_020734F4
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrb r2, [r4, #0x18]
	mov r1, #0xc
	ldr r0, [r4, r0]
	mul r1, r2
	add r1, r4, r1
	ldrh r1, [r1, #0x22]
	ldr r2, [r4, #0]
	bl sub_0207D730
	cmp r0, #0
	ldr r1, _020729A8 ; =0x0000013B
	beq _020728DA
	ldrb r2, [r4, r1]
	mov r0, #0xc0
	bic r2, r0
	mov r0, #0x40
	orr r0, r2
	strb r0, [r4, r1]
	b _020729A0
_020728DA:
	ldrb r2, [r4, r1]
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r4, r1]
	b _020729A0
_020728E4:
	add r0, r4, #0
	mov r1, #9
	bl sub_02073524
	cmp r0, #0
	beq _020729A6
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #0
	add r1, #0x22
	ldrb r5, [r1]
	add r1, r0, #0
	add r1, #0x23
	ldrb r6, [r1]
	bl sub_020181C4
	cmp r6, #6
	bne _0207290E
	cmp r5, #7
	bne _02072918
_0207290E:
	ldr r0, _020729AC ; =sub_020726B4
	str r0, [r4, #0xc]
	mov r0, #4
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02072918:
	strb r5, [r4, #0x17]
	ldrb r1, [r4, #0x18]
	mov r0, #0xc
	mov r2, #0
	mul r0, r1
	add r0, r4, r0
	strb r2, [r0, #0x1d]
	b _020729A0
_02072928:
	add r0, r4, #0
	bl sub_020735E8
	cmp r0, #0
	beq _020729A6
	cmp r0, #1
	bne _02072940
	ldr r0, _020729AC ; =sub_020726B4
	str r0, [r4, #0xc]
	mov r0, #4
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02072940:
	ldr r0, _020729B0 ; =sub_02072370
	str r0, [r4, #0xc]
	b _020729A0
_02072946:
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02073524
	cmp r0, #0
	beq _020729A6
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r2, _020729A8 ; =0x0000013B
	ldrb r1, [r4, #0x17]
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	bl sub_020730B8
	ldr r1, _020729A8 ; =0x0000013B
	mov r0, #0xc0
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	b _020729A0
_02072978:
	add r0, r4, #0
	bl sub_02073480
	cmp r0, #0
	bne _020729A0
	pop {r4, r5, r6, pc}
_02072984:
	add r0, r4, #0
	mov r1, #1
	bl sub_02073438
	cmp r0, #0
	beq _020729A6
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_020729A0:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_020729A6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020729A8: .word 0x0000013B
_020729AC: .word sub_020726B4
_020729B0: .word sub_02072370
	thumb_func_end sub_02072878

	thumb_func_start sub_020729B4
sub_020729B4: ; 0x020729B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r6, #0
	bl sub_0206A780
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0xc8
	mov r2, #0xa
	mov r3, #0x8a
	bl sub_0206A8A0
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #1
	bl sub_0206A8C4
	mov r0, #0x69
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0206A8C4
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r2, _02072B98 ; =0x020F04F4
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x24
	ldr r2, _02072B9C ; =0x020F04FC
	add r1, r5, r1
	bl sub_0201A8D4
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xff
	bl sub_0201ADA4
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xff
	bl sub_0201ADA4
	ldrb r0, [r5, #0x1b]
	ldr r1, [r5, #0]
	add r0, r0, #1
	bl sub_02013A04
	mov r1, #0x59
	lsl r1, r1, #2
	add r7, r5, #0
	str r0, [r5, r1]
	add r4, r6, #0
	add r7, #0x1c
_02072A3E:
	mov r0, #0xc
	mul r0, r4
	add r2, r7, r0
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _02072A5E
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r2, #8]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_02013A6C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02072A5E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x14
	blo _02072A3E
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0x4c
	ldr r1, [r5, r1]
	ldr r2, _02072BA0 ; =0x0000FFFF
	bl sub_02013A6C
	add r0, r6, #1
	lsl r0, r0, #0x18
	mov r1, #5
	lsr r6, r0, #0x18
	lsl r1, r1, #6
	ldr r0, _02072BA4 ; =0x020F0504
	add r1, r5, r1
	mov r2, #0x20
	bl sub_020C4DB0
	mov r1, #0x5d
	lsl r1, r1, #2
	add r0, r1, #0
	add r2, r5, r1
	sub r0, #0x28
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x10
	ldr r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x34
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x18
	str r5, [r5, r0]
	add r0, r1, #0
	sub r0, #0x24
	strh r6, [r5, r0]
	add r0, r1, #0
	sub r0, #0x1d
	ldrb r2, [r5, r0]
	mov r0, #0xf
	bic r2, r0
	mov r0, #6
	orr r2, r0
	add r0, r1, #0
	sub r0, #0x1d
	strb r2, [r5, r0]
	add r0, r1, #0
	ldr r2, _02072BA8 ; =sub_02072C0C
	sub r0, #0x30
	str r2, [r5, r0]
	add r0, r1, #0
	ldr r2, _02072BAC ; =sub_02072BBC
	sub r0, #0x2c
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x39
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	beq _02072B24
	add r0, r1, #0
	sub r0, #0x38
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02072B08
	add r0, r1, #0
	sub r0, #0x36
	ldrh r2, [r5, r0]
	cmp r2, #0
	beq _02072B1A
	sub r0, r6, #1
	cmp r2, r0
	blt _02072B1A
	add r0, r1, #0
	sub r0, #0x36
	ldrh r0, [r5, r0]
	sub r1, #0x36
	sub r0, r0, #1
	strh r0, [r5, r1]
	b _02072B1A
_02072B08:
	add r0, r0, #7
	cmp r0, r6
	blt _02072B1A
	add r0, r1, #0
	sub r0, #0x38
	ldrh r0, [r5, r0]
	sub r1, #0x38
	sub r0, r0, #1
	strh r0, [r5, r1]
_02072B1A:
	ldr r1, _02072BB0 ; =0x0000013B
	mov r0, #0x30
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
_02072B24:
	mov r2, #5
	lsl r2, r2, #6
	sub r1, r2, #4
	add r0, r5, r2
	sub r2, r2, #2
	ldr r3, [r5, #0]
	ldrh r1, [r5, r1]
	lsl r3, r3, #0x18
	ldrh r2, [r5, r2]
	lsr r3, r3, #0x18
	bl sub_0200112C
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, #0x14
	add r0, r5, r1
	ldr r2, _02072BB4 ; =0x000003D9
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	mov r1, #0
	str r1, [sp]
	mov r2, #0x65
	ldr r0, _02072BB8 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	lsl r2, r2, #2
	add r0, r5, r2
	str r1, [sp, #0xc]
	sub r2, #0x78
	ldr r2, [r5, r2]
	mov r3, #2
	bl sub_0201D78C
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r2, _02072BB4 ; =0x000003D9
	add r0, r5, r0
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0201C3C0
	ldr r1, _02072BB0 ; =0x0000013B
	mov r0, #0xf
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02072B98: .word 0x020F04F4
_02072B9C: .word 0x020F04FC
_02072BA0: .word 0x0000FFFF
_02072BA4: .word 0x020F0504
_02072BA8: .word sub_02072C0C
_02072BAC: .word sub_02072BBC
_02072BB0: .word 0x0000013B
_02072BB4: .word 0x000003D9
_02072BB8: .word 0x0001020F
	thumb_func_end sub_020729B4

	thumb_func_start sub_02072BBC
sub_02072BBC: ; 0x02072BBC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	ldr r1, _02072C08 ; =0x0000FFFF
	cmp r4, r1
	bne _02072BDC
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, r4, r5, pc}
_02072BDC:
	mov r1, #0xc
	mul r1, r4
	add r0, r0, r1
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _02072BF8
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xf
	mov r3, #4
	bl sub_0200147C
	pop {r3, r4, r5, pc}
_02072BF8:
	add r0, r5, #0
	mov r1, #7
	mov r2, #0xf
	mov r3, #8
	bl sub_0200147C
	pop {r3, r4, r5, pc}
	nop
_02072C08: .word 0x0000FFFF
	thumb_func_end sub_02072BBC

	thumb_func_start sub_02072C0C
sub_02072C0C: ; 0x02072C0C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x13
	add r4, r0, #0
	add r6, r2, #0
	bl sub_02001504
	add r1, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r0, r4, #0
	mov r1, #2
	bl sub_02001504
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r6, #0
	bne _02072C3E
	ldr r0, _02072C94 ; =0x000005DC
	bl sub_02005748
_02072C3E:
	add r0, sp, #0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02072C56
	mov r0, #0x69
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0206A8C4
	b _02072C64
_02072C56:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #1
	bl sub_0206A8C4
_02072C64:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	sub r0, r4, #7
	cmp r1, r0
	bge _02072C80
	mov r0, #0x69
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0206A8C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02072C80:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02072C94: .word 0x000005DC
	thumb_func_end sub_02072C0C

	thumb_func_start sub_02072C98
sub_02072C98: ; 0x02072C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	add r5, r0, #0
	str r2, [sp, #4]
	ldr r1, [r5, #0]
	mov r0, #4
	bl sub_02013A04
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	add r1, #0x10
	ldr r0, [r5, r0]
	ldr r2, _02072D88 ; =0x020F04EC
	add r1, r5, r1
	bl sub_0201A8D4
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xff
	bl sub_0201ADA4
	mov r7, #0x43
	ldr r6, _02072D8C ; =0x020F0524
	mov r4, #0
	lsl r7, r7, #2
_02072CD4:
	lsl r2, r4, #3
	add r3, r6, r2
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r7]
	ldr r2, [r6, r2]
	ldr r3, [r3, #4]
	bl sub_02013A4C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02072CD4
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, _02072D90 ; =0x020F0504
	add r1, r5, r1
	mov r2, #0x20
	bl sub_020C4DB0
	mov r0, #0x5d
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r5, r0
	sub r1, #0x28
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x10
	ldr r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x34
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x18
	str r5, [r5, r1]
	add r1, r0, #0
	mov r2, #4
	sub r1, #0x24
	strh r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x22
	strh r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x1a
	ldrh r2, [r5, r1]
	ldr r1, _02072D94 ; =0xFFFFFE7F
	and r2, r1
	add r1, r0, #0
	sub r1, #0x1a
	strh r2, [r5, r1]
	add r1, r0, #0
	sub r0, #0x34
	ldr r2, _02072D98 ; =sub_02072DA4
	sub r1, #0x30
	str r2, [r5, r1]
	ldr r3, [r5, #0]
	ldr r1, [sp]
	lsl r3, r3, #0x18
	ldr r2, [sp, #4]
	add r0, r5, r0
	lsr r3, r3, #0x18
	bl sub_0200112C
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, #0x14
	add r0, r5, r1
	ldr r2, _02072D9C ; =0x000003D9
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0201C3C0
	ldr r1, _02072DA0 ; =0x0000013B
	mov r0, #0xf
	ldrb r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02072D88: .word 0x020F04EC
_02072D8C: .word 0x020F0524
_02072D90: .word 0x020F0504
_02072D94: .word 0xFFFFFE7F
_02072D98: .word sub_02072DA4
_02072D9C: .word 0x000003D9
_02072DA0: .word 0x0000013B
	thumb_func_end sub_02072C98

	thumb_func_start sub_02072DA4
sub_02072DA4: ; 0x02072DA4
	push {r3, lr}
	cmp r2, #0
	bne _02072DB0
	ldr r0, _02072DB4 ; =0x000005DC
	bl sub_02005748
_02072DB0:
	pop {r3, pc}
	nop
_02072DB4: .word 0x000005DC
	thumb_func_end sub_02072DA4

	thumb_func_start sub_02072DB8
sub_02072DB8: ; 0x02072DB8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_02001384
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, sp, #0
	mov r1, #0x4f
	ldrh r2, [r0, #2]
	lsl r1, r1, #2
	strh r2, [r4, r1]
	ldrh r2, [r0]
	add r0, r1, #2
	add r1, #0x68
	strh r2, [r4, r0]
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _02072E3C
	bl sub_0206A844
	mov r0, #0x69
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02072E3C:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02072DB8

	thumb_func_start sub_02072E4C
sub_02072E4C: ; 0x02072E4C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x16
	lsl r0, r0, #4
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_02001384
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, r4, #0
	bl sub_02073398
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02072E4C

	thumb_func_start sub_02072EA4
sub_02072EA4: ; 0x02072EA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r2, #0
	bl sub_0201CECC
	mov r0, #0
	strh r0, [r5, #0x10]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02072EA4

	thumb_func_start sub_02072EB8
sub_02072EB8: ; 0x02072EB8
	push {r3, lr}
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02072ECE
	bl sub_020237E8
_02072ECE:
	pop {r3, pc}
	thumb_func_end sub_02072EB8

	thumb_func_start sub_02072ED0
sub_02072ED0: ; 0x02072ED0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	mov r4, #0
	cmp r6, #0
	bls _02072F00
_02072EDE:
	mov r0, #8
	add r1, r7, #0
	bl sub_02023790
	mov r1, #0xc
	mul r1, r4
	add r1, r5, r1
	str r0, [r1, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02072EB8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _02072EDE
_02072F00:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02072ED0

	thumb_func_start sub_02072F04
sub_02072F04: ; 0x02072F04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _02072F2C ; =0x00000000
	beq _02072F2A
	mov r7, #0xc
_02072F10:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02072F20
	bl sub_020237BC
_02072F20:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _02072F10
_02072F2A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02072F2C: .word 0x00000000
	thumb_func_end sub_02072F04

	thumb_func_start sub_02072F30
sub_02072F30: ; 0x02072F30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	add r5, r2, #0
	bl sub_02028430
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [sp, #4]
	str r0, [r6, r1]
	add r0, r4, #0
	bl sub_0207D990
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r0, r5, #0
	bl sub_0202818C
	add r7, r0, #0
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x1b
	str r0, [sp, #0x10]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x1c
	mov r4, #0
	str r0, [sp, #8]
_02072F6E:
	ldr r0, [sp, #4]
	mov r1, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_020284CC
	mov r0, #0xc
	mul r0, r4
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	add r5, r1, r0
	ldrb r1, [r6, #0x19]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	add r1, r4, #0
	add r0, r0, r2
	str r0, [sp]
	add r0, r5, #0
	bl sub_02072EB8
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	strb r4, [r1, r0]
	add r0, r7, #0
	bl sub_0202817C
	cmp r0, #0
	beq _02072FF4
	mov r0, #1
	strb r0, [r5, #1]
	add r0, r7, #0
	bl sub_02028310
	strb r0, [r5, #4]
	add r0, r7, #0
	bl sub_02028314
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	bl sub_0207D310
	strh r0, [r5, #6]
	add r0, r7, #0
	bl sub_0202830C
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl sub_02023D28
	ldrb r0, [r6, #0x19]
	strb r0, [r5, #2]
	ldrb r1, [r5]
	ldr r0, [sp]
	strb r1, [r0, #3]
	ldrb r0, [r5]
	strb r0, [r6, #0x19]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	ldrb r0, [r6, #0x1a]
	cmp r0, #0xff
	bne _02072FF4
	strb r4, [r6, #0x1a]
_02072FF4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x14
	blo _02072F6E
	ldrb r1, [r6, #0x19]
	ldrb r3, [r6, #0x1a]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r1, r6, r2
	strb r3, [r1, #0x1f]
	ldrb r1, [r6, #0x1a]
	ldrb r2, [r6, #0x19]
	mul r0, r1
	add r0, r6, r0
	strb r2, [r0, #0x1e]
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02072F30

	thumb_func_start sub_02073020
sub_02073020: ; 0x02073020
	push {r3, r4, r5, r6}
	add r2, r1, #0
	mov r3, #0xc
	add r1, r0, #0
	mul r2, r3
	add r1, #0x1c
	add r1, r1, r2
	ldrb r4, [r1, #2]
	ldrb r6, [r1, #3]
	add r5, r4, #0
	mul r5, r3
	add r4, r0, r5
	strb r6, [r4, #0x1f]
	ldrb r4, [r1, #2]
	ldrb r1, [r1, #3]
	mul r3, r1
	add r1, r0, r3
	strb r4, [r1, #0x1e]
	add r1, r0, r2
	mov r3, #0
	strb r3, [r1, #0x1d]
	ldr r2, _0207305C ; =0x0000013B
	mov r1, #0x30
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_0207305C: .word 0x0000013B
	thumb_func_end sub_02073020

	thumb_func_start sub_02073060
sub_02073060: ; 0x02073060
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r1, [r5, #0x18]
	add r2, r5, #0
	mov r0, #0xc
	add r2, #0x1c
	mul r0, r1
	add r4, r2, r0
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrh r1, [r4, #6]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #1
	bl sub_0207D55C
	add r6, r0, #0
	beq _02073094
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrh r1, [r4, #6]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #1
	bl sub_0207D570
_02073094:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldrb r2, [r5, #0x18]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02028470
	ldrb r1, [r5, #0x18]
	add r0, r5, #0
	bl sub_02073020
	ldrb r1, [r5, #0x18]
	add r0, r4, #0
	bl sub_02072EB8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02073060

	thumb_func_start sub_020730B8
sub_020730B8: ; 0x020730B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldrb r1, [r5, #0x18]
	add r6, r2, #0
	add r2, r5, #0
	mov r0, #0xc
	add r2, #0x1c
	mul r0, r1
	add r4, r2, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0207312E
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203D174
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	bl sub_020977E4
	cmp r6, #0
	beq _0207311E
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrh r1, [r4, #6]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #1
	bl sub_0207D55C
	cmp r0, #0
	beq _0207311E
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrh r1, [r4, #6]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #1
	bl sub_0207D570
_0207311E:
	ldrb r1, [r5, #0x18]
	add r0, r5, #0
	bl sub_02073020
	ldrb r1, [r5, #0x18]
	add r0, r4, #0
	bl sub_02072EB8
_0207312E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020730B8

	thumb_func_start sub_02073130
sub_02073130: ; 0x02073130
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r2, #0x66
	ldr r3, [r6, #0]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	mov r1, #0x43
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r2, [r6, #0]
	mov r0, #1
	mov r1, #0x80
	bl sub_0200B368
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r6, r1]
	ldr r1, [r6, #0]
	mov r0, #0x80
	bl sub_02023790
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #8
	ldr r0, [r6, r1]
	mov r1, #4
	bl sub_0200B1EC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	mov r1, #0
	bl sub_0200B1EC
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r4, #0
	add r5, r6, #0
	add r7, r1, #4
_0207318C:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #6
	bl sub_0200B1EC
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0207318C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02073130

	thumb_func_start sub_020731A4
sub_020731A4: ; 0x020731A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x12
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_020731B0:
	ldr r0, [r5, r7]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _020731B0
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020237BC
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020237BC
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200B3F0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020731A4

	thumb_func_start sub_020731F4
sub_020731F4: ; 0x020731F4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203D170
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldrh r0, [r4, #0x14]
	ldr r2, _02073288 ; =0x000003E2
	mov r3, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	mov r1, #3
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0207328C ; =0x000003D9
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r1, #0x1a
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E7C
	mov r1, #6
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #6
	bl sub_02002E98
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _02073290 ; =0x0000036D
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [sp, #0x10]
	ldr r0, [r4, r1]
	add r1, #0x14
	add r1, r4, r1
	mov r2, #3
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02073288: .word 0x000003E2
_0207328C: .word 0x000003D9
_02073290: .word 0x0000036D
	thumb_func_end sub_020731F4

	thumb_func_start sub_02073294
sub_02073294: ; 0x02073294
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	mov r0, #0x17
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end sub_02073294

	thumb_func_start sub_020732C4
sub_020732C4: ; 0x020732C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _020732E6
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, _0207338C ; =0x000003E2
	add r0, r5, r0
	mov r1, #1
	mov r3, #0xa
	bl sub_0200E060
_020732E6:
	mov r1, #0xd8
	str r1, [sp]
	mov r0, #0x20
	mov r2, #0
	add r1, #0xac
	str r0, [sp, #4]
	add r0, r5, r1
	mov r1, #0xff
	add r3, r2, #0
	bl sub_0201AE78
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	cmp r4, #0
	bne _02073354
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020237E8
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #4
	ldrb r3, [r5, #0x18]
	mov r2, #0xc
	ldr r0, [r5, r0]
	mul r2, r3
	add r2, r5, r2
	ldr r2, [r2, #0x24]
	mov r1, #0
	mov r3, #2
	bl sub_0200B48C
	mov r2, #0x11
	lsl r2, r2, #4
	lsl r3, r4, #2
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r3, r5, r3
	add r2, #0x10
	ldr r1, [r5, r1]
	ldr r2, [r3, r2]
	bl sub_0200C388
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	b _0207335E
_02073354:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r2, [r1, r0]
_0207335E:
	mov r3, #0
	str r3, [sp]
	ldr r0, _02073390 ; =0x0001020F
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	str r3, [sp, #0xc]
	bl sub_0201D78C
	mov r1, #0x4e
	lsl r1, r1, #2
	strb r0, [r5, r1]
	add r1, #0x4c
	add r0, r5, r1
	bl sub_0201A954
	ldr r0, _02073394 ; =0x00000139
	strb r7, [r5, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207338C: .word 0x000003E2
_02073390: .word 0x0001020F
_02073394: .word 0x00000139
	thumb_func_end sub_020732C4

	thumb_func_start sub_02073398
sub_02073398: ; 0x02073398
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	pop {r4, pc}
	thumb_func_end sub_02073398

	thumb_func_start sub_020733B4
sub_020733B4: ; 0x020733B4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	beq _020733CA
	mov r0, #0
	pop {r4, pc}
_020733CA:
	ldr r0, _020733DC ; =0x00000139
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _020733D8
	add r0, r4, #0
	bl sub_02073398
_020733D8:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020733DC: .word 0x00000139
	thumb_func_end sub_020733B4

	thumb_func_start sub_020733E0
sub_020733E0: ; 0x020733E0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02073404 ; =0x020F04E4
	str r0, [sp]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _02073408 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02073404: .word 0x020F04E4
_02073408: .word 0x000003D9
	thumb_func_end sub_020733E0

	thumb_func_start sub_0207340C
sub_0207340C: ; 0x0207340C
	push {r3, lr}
	add r1, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r1, #0]
	bl sub_02002114
	cmp r0, #0
	beq _0207342A
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0207342E
	b _02073432
_0207342A:
	mov r0, #1
	pop {r3, pc}
_0207342E:
	mov r0, #0
	pop {r3, pc}
_02073432:
	add r0, r1, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207340C

	thumb_func_start sub_02073438
sub_02073438: ; 0x02073438
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	beq _0207344A
	cmp r0, #1
	beq _02073468
	b _0207347A
_0207344A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _0207347A
_02073468:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0207347A
	mov r0, #0
	strh r0, [r4, #0x12]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0207347A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02073438

	thumb_func_start sub_02073480
sub_02073480: ; 0x02073480
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	beq _02073494
	cmp r0, #1
	beq _020734A6
	cmp r0, #2
	beq _020734D4
	b _020734EE
_02073494:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020509D4
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _020734EE
_020734A6:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020509DC
	cmp r0, #0
	beq _020734EE
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x5a
	bl ov6_02247078
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x5a
	bl ov6_022470E8
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _020734EE
_020734D4:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x5a
	ldr r0, [r0, #0x54]
	bl ov5_021D42F0
	cmp r0, #0
	beq _020734EE
	mov r0, #0
	strh r0, [r4, #0x12]
	mov r0, #1
	pop {r4, pc}
_020734EE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073480

	thumb_func_start sub_020734F4
sub_020734F4: ; 0x020734F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x5a
	bl ov5_021D4D68
	cmp r4, #0
	bne _02073512
	add r0, r5, #0
	bl sub_02072DB8
	b _02073518
_02073512:
	add r0, r5, #0
	bl sub_02072E4C
_02073518:
	add r0, r5, #0
	bl sub_02073294
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020734F4

	thumb_func_start sub_02073524
sub_02073524: ; 0x02073524
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x12]
	add r6, r1, #0
	cmp r0, #0
	beq _02073536
	cmp r0, #1
	beq _020735C8
	b _020735DE
_02073536:
	ldr r0, [r5, #0]
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203D174
	bl sub_0207A268
	str r0, [r4, #0]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203D174
	bl sub_0207D990
	str r0, [r4, #4]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203D174
	bl sub_02025E44
	str r0, [r4, #0xc]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	strb r6, [r0]
	ldrb r1, [r5, #0x18]
	mov r0, #0xc
	mul r0, r1
	add r0, r5, r0
	ldrh r0, [r0, #0x22]
	cmp r6, #0xb
	strh r0, [r4, #0x24]
	bne _020735AC
	ldrb r1, [r5, #0x17]
	add r0, r4, #0
	add r0, #0x22
	strb r1, [r0]
_020735AC:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, _020735E4 ; =0x020F1E88
	add r2, r4, #0
	bl sub_0203CD84
	mov r0, #0x6d
	lsl r0, r0, #2
	str r4, [r5, r0]
	ldrh r0, [r5, #0x12]
	add r0, r0, #1
	strh r0, [r5, #0x12]
	b _020735DE
_020735C8:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020509B4
	cmp r0, #0
	bne _020735DE
	mov r0, #0
	strh r0, [r5, #0x12]
	mov r0, #1
	pop {r4, r5, r6, pc}
_020735DE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020735E4: .word 0x020F1E88
	thumb_func_end sub_02073524

	thumb_func_start sub_020735E8
sub_020735E8: ; 0x020735E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	beq _020735F8
	cmp r0, #1
	beq _0207363A
	b _02073690
_020735F8:
	ldrb r2, [r4, #0x18]
	mov r0, #0xc
	mul r0, r2
	add r3, r4, r0
	ldrb r0, [r3, #0x1d]
	cmp r0, #0
	beq _02073616
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r4, #0]
	mov r1, #0
	bl sub_0203D94C
	b _0207362C
_02073616:
	ldr r0, [r4, #0]
	add r3, #0x21
	str r0, [sp]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrb r2, [r4, #0x17]
	ldrb r3, [r3]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0203D920
_0207362C:
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _02073690
_0207363A:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020509B4
	cmp r0, #0
	bne _02073690
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02097728
	cmp r0, #0
	beq _0207367C
	ldrb r0, [r4, #0x18]
	mov r2, #0xc
	mov r3, #1
	add r1, r0, #0
	mul r1, r2
	add r0, r4, r1
	strb r3, [r0, #0x1d]
	ldrb r3, [r4, #0x18]
	mov r0, #0x6a
	lsl r0, r0, #2
	mul r2, r3
	add r2, r4, r2
	ldrb r2, [r2, #0x1c]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0209772C
	mov r5, #2
	b _0207367E
_0207367C:
	mov r5, #1
_0207367E:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r0, #0
	strh r0, [r4, #0x12]
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02073690:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020735E8

	thumb_func_start sub_02073694
sub_02073694: ; 0x02073694
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020736B2
	cmp r1, #1
	beq _020736C2
	b _020736D4
_020736B2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020722AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020736D4
_020736C2:
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _020736CC
	mov r0, #0
	pop {r3, r4, r5, pc}
_020736CC:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020736D4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073694

	thumb_func_start sub_020736D8
sub_020736D8: ; 0x020736D8
	push {r4, lr}
	bl sub_02050A60
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	ldr r0, [r4, #0x10]
	ldr r1, _020736FC ; =sub_02073694
	bl sub_02050944
	pop {r4, pc}
	nop
_020736FC: .word sub_02073694
	thumb_func_end sub_020736D8

	.rodata


	.global Unk_020F04E4
Unk_020F04E4: ; 0x020F04E4
	.incbin "incbin/arm9_rodata.bin", 0xB8A4, 0xB8AC - 0xB8A4

	.global Unk_020F04EC
Unk_020F04EC: ; 0x020F04EC
	.incbin "incbin/arm9_rodata.bin", 0xB8AC, 0xB8B4 - 0xB8AC

	.global Unk_020F04F4
Unk_020F04F4: ; 0x020F04F4
	.incbin "incbin/arm9_rodata.bin", 0xB8B4, 0xB8C4 - 0xB8B4

	.global Unk_020F0504
Unk_020F0504: ; 0x020F0504
	.incbin "incbin/arm9_rodata.bin", 0xB8C4, 0xB8E4 - 0xB8C4

	.global Unk_020F0524
Unk_020F0524: ; 0x020F0524
	.incbin "incbin/arm9_rodata.bin", 0xB8E4, 0x20

