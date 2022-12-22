	.include "macros/function.inc"
	.include "include/ov97_02236380.inc"

	

	.text


	thumb_func_start ov97_02236380
ov97_02236380: ; 0x02236380
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x18
	add r5, r2, #0
	mov r6, #0
	bl _u32_div_f
	cmp r1, #0x17
	bhi _022363D6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022363A0: ; jump table
	.short _022363D0 - _022363A0 - 2 ; case 0
	.short _02236402 - _022363A0 - 2 ; case 1
	.short _02236432 - _022363A0 - 2 ; case 2
	.short _02236462 - _022363A0 - 2 ; case 3
	.short _02236492 - _022363A0 - 2 ; case 4
	.short _022364C2 - _022363A0 - 2 ; case 5
	.short _022364F2 - _022363A0 - 2 ; case 6
	.short _02236524 - _022363A0 - 2 ; case 7
	.short _02236554 - _022363A0 - 2 ; case 8
	.short _02236584 - _022363A0 - 2 ; case 9
	.short _022365B4 - _022363A0 - 2 ; case 10
	.short _022365E4 - _022363A0 - 2 ; case 11
	.short _02236614 - _022363A0 - 2 ; case 12
	.short _02236646 - _022363A0 - 2 ; case 13
	.short _02236676 - _022363A0 - 2 ; case 14
	.short _022366A6 - _022363A0 - 2 ; case 15
	.short _022366D6 - _022363A0 - 2 ; case 16
	.short _02236706 - _022363A0 - 2 ; case 17
	.short _02236736 - _022363A0 - 2 ; case 18
	.short _02236768 - _022363A0 - 2 ; case 19
	.short _02236798 - _022363A0 - 2 ; case 20
	.short _022367C8 - _022363A0 - 2 ; case 21
	.short _022367F8 - _022363A0 - 2 ; case 22
	.short _02236828 - _022363A0 - 2 ; case 23
_022363D0:
	add r4, #0x20
	cmp r5, #3
	bls _022363D8
_022363D6:
	b _02236856
_022363D8:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022363E4: ; jump table
	.short _022363EC - _022363E4 - 2 ; case 0
	.short _022363F0 - _022363E4 - 2 ; case 1
	.short _022363F6 - _022363E4 - 2 ; case 2
	.short _022363FC - _022363E4 - 2 ; case 3
_022363EC:
	add r6, r4, #0
	b _02236856
_022363F0:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022363F6:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022363FC:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236402:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236414: ; jump table
	.short _0223641C - _02236414 - 2 ; case 0
	.short _02236420 - _02236414 - 2 ; case 1
	.short _02236426 - _02236414 - 2 ; case 2
	.short _0223642C - _02236414 - 2 ; case 3
_0223641C:
	add r6, r4, #0
	b _02236856
_02236420:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236426:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223642C:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236432:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236444: ; jump table
	.short _0223644C - _02236444 - 2 ; case 0
	.short _02236450 - _02236444 - 2 ; case 1
	.short _02236456 - _02236444 - 2 ; case 2
	.short _0223645C - _02236444 - 2 ; case 3
_0223644C:
	add r6, r4, #0
	b _02236856
_02236450:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236456:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_0223645C:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236462:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236474: ; jump table
	.short _0223647C - _02236474 - 2 ; case 0
	.short _02236480 - _02236474 - 2 ; case 1
	.short _02236486 - _02236474 - 2 ; case 2
	.short _0223648C - _02236474 - 2 ; case 3
_0223647C:
	add r6, r4, #0
	b _02236856
_02236480:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236486:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_0223648C:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236492:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022364A4: ; jump table
	.short _022364AC - _022364A4 - 2 ; case 0
	.short _022364B0 - _022364A4 - 2 ; case 1
	.short _022364B6 - _022364A4 - 2 ; case 2
	.short _022364BC - _022364A4 - 2 ; case 3
_022364AC:
	add r6, r4, #0
	b _02236856
_022364B0:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022364B6:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022364BC:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022364C2:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022364D4: ; jump table
	.short _022364DC - _022364D4 - 2 ; case 0
	.short _022364E0 - _022364D4 - 2 ; case 1
	.short _022364E6 - _022364D4 - 2 ; case 2
	.short _022364EC - _022364D4 - 2 ; case 3
_022364DC:
	add r6, r4, #0
	b _02236856
_022364E0:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022364E6:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022364EC:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022364F2:
	add r4, #0x20
	cmp r5, #3
	bls _022364FA
_022364F8:
	b _02236856
_022364FA:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236506: ; jump table
	.short _0223650E - _02236506 - 2 ; case 0
	.short _02236514 - _02236506 - 2 ; case 1
	.short _02236518 - _02236506 - 2 ; case 2
	.short _0223651E - _02236506 - 2 ; case 3
_0223650E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236514:
	add r6, r4, #0
	b _02236856
_02236518:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223651E:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236524:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236536: ; jump table
	.short _0223653E - _02236536 - 2 ; case 0
	.short _02236544 - _02236536 - 2 ; case 1
	.short _02236548 - _02236536 - 2 ; case 2
	.short _0223654E - _02236536 - 2 ; case 3
_0223653E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236544:
	add r6, r4, #0
	b _02236856
_02236548:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223654E:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236554:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236566: ; jump table
	.short _0223656E - _02236566 - 2 ; case 0
	.short _02236574 - _02236566 - 2 ; case 1
	.short _02236578 - _02236566 - 2 ; case 2
	.short _0223657E - _02236566 - 2 ; case 3
_0223656E:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236574:
	add r6, r4, #0
	b _02236856
_02236578:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_0223657E:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236584:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236596: ; jump table
	.short _0223659E - _02236596 - 2 ; case 0
	.short _022365A4 - _02236596 - 2 ; case 1
	.short _022365A8 - _02236596 - 2 ; case 2
	.short _022365AE - _02236596 - 2 ; case 3
_0223659E:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022365A4:
	add r6, r4, #0
	b _02236856
_022365A8:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022365AE:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022365B4:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022365C6: ; jump table
	.short _022365CE - _022365C6 - 2 ; case 0
	.short _022365D4 - _022365C6 - 2 ; case 1
	.short _022365D8 - _022365C6 - 2 ; case 2
	.short _022365DE - _022365C6 - 2 ; case 3
_022365CE:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022365D4:
	add r6, r4, #0
	b _02236856
_022365D8:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022365DE:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022365E4:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022365F6: ; jump table
	.short _022365FE - _022365F6 - 2 ; case 0
	.short _02236604 - _022365F6 - 2 ; case 1
	.short _02236608 - _022365F6 - 2 ; case 2
	.short _0223660E - _022365F6 - 2 ; case 3
_022365FE:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236604:
	add r6, r4, #0
	b _02236856
_02236608:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223660E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236614:
	add r4, #0x20
	cmp r5, #3
	bls _0223661C
_0223661A:
	b _02236856
_0223661C:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236628: ; jump table
	.short _02236630 - _02236628 - 2 ; case 0
	.short _02236636 - _02236628 - 2 ; case 1
	.short _0223663C - _02236628 - 2 ; case 2
	.short _02236640 - _02236628 - 2 ; case 3
_02236630:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236636:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223663C:
	add r6, r4, #0
	b _02236856
_02236640:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236646:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236658: ; jump table
	.short _02236660 - _02236658 - 2 ; case 0
	.short _02236666 - _02236658 - 2 ; case 1
	.short _0223666C - _02236658 - 2 ; case 2
	.short _02236670 - _02236658 - 2 ; case 3
_02236660:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236666:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223666C:
	add r6, r4, #0
	b _02236856
_02236670:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236676:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236688: ; jump table
	.short _02236690 - _02236688 - 2 ; case 0
	.short _02236696 - _02236688 - 2 ; case 1
	.short _0223669C - _02236688 - 2 ; case 2
	.short _022366A0 - _02236688 - 2 ; case 3
_02236690:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236696:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_0223669C:
	add r6, r4, #0
	b _02236856
_022366A0:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022366A6:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022366B8: ; jump table
	.short _022366C0 - _022366B8 - 2 ; case 0
	.short _022366C6 - _022366B8 - 2 ; case 1
	.short _022366CC - _022366B8 - 2 ; case 2
	.short _022366D0 - _022366B8 - 2 ; case 3
_022366C0:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022366C6:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022366CC:
	add r6, r4, #0
	b _02236856
_022366D0:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022366D6:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022366E8: ; jump table
	.short _022366F0 - _022366E8 - 2 ; case 0
	.short _022366F6 - _022366E8 - 2 ; case 1
	.short _022366FC - _022366E8 - 2 ; case 2
	.short _02236700 - _022366E8 - 2 ; case 3
_022366F0:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022366F6:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022366FC:
	add r6, r4, #0
	b _02236856
_02236700:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236706:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236718: ; jump table
	.short _02236720 - _02236718 - 2 ; case 0
	.short _02236726 - _02236718 - 2 ; case 1
	.short _0223672C - _02236718 - 2 ; case 2
	.short _02236730 - _02236718 - 2 ; case 3
_02236720:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236726:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223672C:
	add r6, r4, #0
	b _02236856
_02236730:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236736:
	add r4, #0x20
	cmp r5, #3
	bls _0223673E
_0223673C:
	b _02236856
_0223673E:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223674A: ; jump table
	.short _02236752 - _0223674A - 2 ; case 0
	.short _02236758 - _0223674A - 2 ; case 1
	.short _0223675E - _0223674A - 2 ; case 2
	.short _02236764 - _0223674A - 2 ; case 3
_02236752:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236758:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223675E:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236764:
	add r6, r4, #0
	b _02236856
_02236768:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223677A: ; jump table
	.short _02236782 - _0223677A - 2 ; case 0
	.short _02236788 - _0223677A - 2 ; case 1
	.short _0223678E - _0223677A - 2 ; case 2
	.short _02236794 - _0223677A - 2 ; case 3
_02236782:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236788:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223678E:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236794:
	add r6, r4, #0
	b _02236856
_02236798:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022367AA: ; jump table
	.short _022367B2 - _022367AA - 2 ; case 0
	.short _022367B8 - _022367AA - 2 ; case 1
	.short _022367BE - _022367AA - 2 ; case 2
	.short _022367C4 - _022367AA - 2 ; case 3
_022367B2:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022367B8:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022367BE:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022367C4:
	add r6, r4, #0
	b _02236856
_022367C8:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022367DA: ; jump table
	.short _022367E2 - _022367DA - 2 ; case 0
	.short _022367E8 - _022367DA - 2 ; case 1
	.short _022367EE - _022367DA - 2 ; case 2
	.short _022367F4 - _022367DA - 2 ; case 3
_022367E2:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022367E8:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022367EE:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022367F4:
	add r6, r4, #0
	b _02236856
_022367F8:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223680A: ; jump table
	.short _02236812 - _0223680A - 2 ; case 0
	.short _02236818 - _0223680A - 2 ; case 1
	.short _0223681E - _0223680A - 2 ; case 2
	.short _02236824 - _0223680A - 2 ; case 3
_02236812:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236818:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223681E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236824:
	add r6, r4, #0
	b _02236856
_02236828:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223683A: ; jump table
	.short _02236842 - _0223683A - 2 ; case 0
	.short _02236848 - _0223683A - 2 ; case 1
	.short _0223684E - _0223683A - 2 ; case 2
	.short _02236854 - _0223683A - 2 ; case 3
_02236842:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236848:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223684E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236854:
	add r6, r4, #0
_02236856:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02236380

	thumb_func_start ov97_0223685C
ov97_0223685C: ; 0x0223685C
	push {r3, r4}
	add r4, r0, #0
	mov r3, #0
	add r4, #0x20
_02236864:
	ldr r2, [r4, #0]
	ldr r1, [r0, #4]
	add r3, r3, #1
	eor r2, r1
	str r2, [r4, #0]
	ldr r1, [r0, #0]
	eor r1, r2
	stmia r4!, {r1}
	cmp r3, #0xc
	blo _02236864
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_0223685C

	thumb_func_start ov97_0223687C
ov97_0223687C: ; 0x0223687C
	push {r3, r4}
	add r4, r0, #0
	mov r3, #0
	add r4, #0x20
_02236884:
	ldr r2, [r4, #0]
	ldr r1, [r0, #0]
	add r3, r3, #1
	eor r2, r1
	str r2, [r4, #0]
	ldr r1, [r0, #4]
	eor r1, r2
	stmia r4!, {r1}
	cmp r3, #0xc
	blo _02236884
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_0223687C

	thumb_func_start ov97_0223689C
ov97_0223689C: ; 0x0223689C
	push {r3, r4, r5, r6, r7, lr}
	add r1, r0, #0
	mov r4, #0
	ldr r1, [r1, #0]
	str r0, [sp]
	add r2, r4, #0
	bl ov97_02236380
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl ov97_02236380
	add r6, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl ov97_02236380
	add r7, r0, #0
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl ov97_02236380
	add r1, r4, #0
_022368D8:
	ldrh r2, [r5]
	add r1, r1, #1
	add r5, r5, #2
	add r2, r4, r2
	lsl r2, r2, #0x10
	lsr r4, r2, #0x10
	cmp r1, #6
	blt _022368D8
	mov r2, #0
_022368EA:
	ldrh r1, [r6]
	add r2, r2, #1
	add r6, r6, #2
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r2, #6
	blt _022368EA
	mov r2, #0
_022368FC:
	ldrh r1, [r7]
	add r2, r2, #1
	add r7, r7, #2
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r2, #6
	blt _022368FC
	mov r2, #0
_0223690E:
	ldrh r1, [r0]
	add r2, r2, #1
	add r0, r0, #2
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r2, #6
	blt _0223690E
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_0223689C

	thumb_func_start ov97_02236924
ov97_02236924: ; 0x02236924
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	add r5, r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #8]
	str r4, [sp, #4]
	cmp r1, #0xa
	ble _0223699A
	ldr r1, [r6, #0]
	add r2, r4, #0
	bl ov97_02236380
	str r0, [sp, #0xc]
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #1
	bl ov97_02236380
	str r0, [sp, #8]
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #2
	bl ov97_02236380
	str r0, [sp, #4]
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #3
	bl ov97_02236380
	add r5, r0, #0
	add r0, r6, #0
	bl ov97_0223685C
	add r0, r6, #0
	bl ov97_0223689C
	ldrh r1, [r6, #0x1c]
	cmp r0, r1
	beq _0223699A
	ldrb r0, [r6, #0x13]
	mov r1, #1
	bic r0, r1
	mov r1, #1
	orr r0, r1
	strb r0, [r6, #0x13]
	ldrb r1, [r6, #0x13]
	mov r0, #4
	orr r0, r1
	strb r0, [r6, #0x13]
	mov r0, #1
	ldr r1, [r5, #4]
	lsl r0, r0, #0x1e
	orr r0, r1
	str r0, [r5, #4]
_0223699A:
	ldr r0, [sp]
	cmp r0, #0x50
	bls _022369A2
	b _02236C90
_022369A2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022369AE: ; jump table
	.short _02236A50 - _022369AE - 2 ; case 0
	.short _02236A54 - _022369AE - 2 ; case 1
	.short _02236A58 - _022369AE - 2 ; case 2
	.short _02236A78 - _022369AE - 2 ; case 3
	.short _02236A7C - _022369AE - 2 ; case 4
	.short _02236A84 - _022369AE - 2 ; case 5
	.short _02236A8C - _022369AE - 2 ; case 6
	.short _02236A94 - _022369AE - 2 ; case 7
	.short _02236AA8 - _022369AE - 2 ; case 8
	.short _02236AAC - _022369AE - 2 ; case 9
	.short _02236AB0 - _022369AE - 2 ; case 10
	.short _02236AB4 - _022369AE - 2 ; case 11
	.short _02236AC8 - _022369AE - 2 ; case 12
	.short _02236AE0 - _022369AE - 2 ; case 13
	.short _02236AE0 - _022369AE - 2 ; case 14
	.short _02236AE0 - _022369AE - 2 ; case 15
	.short _02236AE0 - _022369AE - 2 ; case 16
	.short _02236AEC - _022369AE - 2 ; case 17
	.short _02236AEC - _022369AE - 2 ; case 18
	.short _02236AEC - _022369AE - 2 ; case 19
	.short _02236AEC - _022369AE - 2 ; case 20
	.short _02236AD4 - _022369AE - 2 ; case 21
	.short _02236B1C - _022369AE - 2 ; case 22
	.short _02236B22 - _022369AE - 2 ; case 23
	.short _02236B28 - _022369AE - 2 ; case 24
	.short _02236ACE - _022369AE - 2 ; case 25
	.short _02236AF8 - _022369AE - 2 ; case 26
	.short _02236AFE - _022369AE - 2 ; case 27
	.short _02236B04 - _022369AE - 2 ; case 28
	.short _02236B0A - _022369AE - 2 ; case 29
	.short _02236B10 - _022369AE - 2 ; case 30
	.short _02236B16 - _022369AE - 2 ; case 31
	.short _02236ADA - _022369AE - 2 ; case 32
	.short _02236B2E - _022369AE - 2 ; case 33
	.short _02236B40 - _022369AE - 2 ; case 34
	.short _02236B48 - _022369AE - 2 ; case 35
	.short _02236B50 - _022369AE - 2 ; case 36
	.short _02236B58 - _022369AE - 2 ; case 37
	.short _02236B60 - _022369AE - 2 ; case 38
	.short _02236B6E - _022369AE - 2 ; case 39
	.short _02236B76 - _022369AE - 2 ; case 40
	.short _02236B7E - _022369AE - 2 ; case 41
	.short _02236B86 - _022369AE - 2 ; case 42
	.short _02236B8E - _022369AE - 2 ; case 43
	.short _02236B96 - _022369AE - 2 ; case 44
	.short _02236B9E - _022369AE - 2 ; case 45
	.short _02236BA6 - _022369AE - 2 ; case 46
	.short _02236B34 - _022369AE - 2 ; case 47
	.short _02236B3A - _022369AE - 2 ; case 48
	.short _02236B68 - _022369AE - 2 ; case 49
	.short _02236BAC - _022369AE - 2 ; case 50
	.short _02236BB4 - _022369AE - 2 ; case 51
	.short _02236BBC - _022369AE - 2 ; case 52
	.short _02236BC4 - _022369AE - 2 ; case 53
	.short _02236BCC - _022369AE - 2 ; case 54
	.short _02236C90 - _022369AE - 2 ; case 55
	.short _02236C90 - _022369AE - 2 ; case 56
	.short _02236C90 - _022369AE - 2 ; case 57
	.short _02236C90 - _022369AE - 2 ; case 58
	.short _02236C90 - _022369AE - 2 ; case 59
	.short _02236C90 - _022369AE - 2 ; case 60
	.short _02236C90 - _022369AE - 2 ; case 61
	.short _02236C90 - _022369AE - 2 ; case 62
	.short _02236C90 - _022369AE - 2 ; case 63
	.short _02236C90 - _022369AE - 2 ; case 64
	.short _02236C42 - _022369AE - 2 ; case 65
	.short _02236C60 - _022369AE - 2 ; case 66
	.short _02236BD4 - _022369AE - 2 ; case 67
	.short _02236BDC - _022369AE - 2 ; case 68
	.short _02236BE4 - _022369AE - 2 ; case 69
	.short _02236BEC - _022369AE - 2 ; case 70
	.short _02236BF4 - _022369AE - 2 ; case 71
	.short _02236BFC - _022369AE - 2 ; case 72
	.short _02236C04 - _022369AE - 2 ; case 73
	.short _02236C0C - _022369AE - 2 ; case 74
	.short _02236C14 - _022369AE - 2 ; case 75
	.short _02236C1C - _022369AE - 2 ; case 76
	.short _02236C24 - _022369AE - 2 ; case 77
	.short _02236C2C - _022369AE - 2 ; case 78
	.short _02236C34 - _022369AE - 2 ; case 79
	.short _02236C3C - _022369AE - 2 ; case 80
_02236A50:
	ldr r4, [r6, #0]
	b _02236C90
_02236A54:
	ldr r4, [r6, #4]
	b _02236C90
_02236A58:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02236A64
	mov r4, #0
	b _02236A72
_02236A64:
	mov r4, #0
_02236A66:
	add r0, r6, r4
	ldrb r0, [r0, #8]
	strb r0, [r7, r4]
	add r4, r4, #1
	cmp r4, #0xa
	blo _02236A66
_02236A72:
	mov r0, #0xff
	strb r0, [r7, r4]
	b _02236C90
_02236A78:
	ldrb r4, [r6, #0x12]
	b _02236C90
_02236A7C:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1f
	lsr r4, r0, #0x1f
	b _02236C90
_02236A84:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1e
	lsr r4, r0, #0x1f
	b _02236C90
_02236A8C:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1f
	b _02236C90
_02236A94:
	mov r4, #0
_02236A96:
	add r0, r6, r4
	ldrb r0, [r0, #0x14]
	strb r0, [r7, r4]
	add r4, r4, #1
	cmp r4, #7
	blo _02236A96
	mov r0, #0xff
	strb r0, [r7, r4]
	b _02236C90
_02236AA8:
	ldrb r4, [r6, #0x1b]
	b _02236C90
_02236AAC:
	ldrh r4, [r6, #0x1c]
	b _02236C90
_02236AB0:
	ldrh r4, [r6, #0x1e]
	b _02236C90
_02236AB4:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02236AC2
	mov r4, #0x67
	lsl r4, r4, #2
	b _02236C90
_02236AC2:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0]
	b _02236C90
_02236AC8:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0, #2]
	b _02236C90
_02236ACE:
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #4]
	b _02236C90
_02236AD4:
	ldr r0, [sp, #0xc]
	ldrb r4, [r0, #8]
	b _02236C90
_02236ADA:
	ldr r0, [sp, #0xc]
	ldrb r4, [r0, #9]
	b _02236C90
_02236AE0:
	ldr r0, [sp]
	sub r0, #0xd
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	ldrh r4, [r0, r1]
	b _02236C90
_02236AEC:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	sub r1, #0x11
	add r0, r0, r1
	ldrb r4, [r0, #8]
	b _02236C90
_02236AF8:
	ldr r0, [sp, #4]
	ldrb r4, [r0]
	b _02236C90
_02236AFE:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #1]
	b _02236C90
_02236B04:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #2]
	b _02236C90
_02236B0A:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #3]
	b _02236C90
_02236B10:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #4]
	b _02236C90
_02236B16:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #5]
	b _02236C90
_02236B1C:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #6]
	b _02236C90
_02236B22:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #7]
	b _02236C90
_02236B28:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #8]
	b _02236C90
_02236B2E:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #9]
	b _02236C90
_02236B34:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #0xa]
	b _02236C90
_02236B3A:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #0xb]
	b _02236C90
_02236B40:
	ldr r0, [r5, #0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _02236C90
_02236B48:
	ldr r0, [r5, #0]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x18
	b _02236C90
_02236B50:
	ldr r0, [r5, #0]
	lsl r0, r0, #9
	lsr r4, r0, #0x19
	b _02236C90
_02236B58:
	ldr r0, [r5, #0]
	lsl r0, r0, #5
	lsr r4, r0, #0x1c
	b _02236C90
_02236B60:
	ldr r0, [r5, #0]
	lsl r0, r0, #1
	lsr r4, r0, #0x1c
	b _02236C90
_02236B68:
	ldr r0, [r5, #0]
	lsr r4, r0, #0x1f
	b _02236C90
_02236B6E:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x1b
	lsr r4, r0, #0x1b
	b _02236C90
_02236B76:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x16
	lsr r4, r0, #0x1b
	b _02236C90
_02236B7E:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x1b
	b _02236C90
_02236B86:
	ldr r0, [r5, #4]
	lsl r0, r0, #0xc
	lsr r4, r0, #0x1b
	b _02236C90
_02236B8E:
	ldr r0, [r5, #4]
	lsl r0, r0, #7
	lsr r4, r0, #0x1b
	b _02236C90
_02236B96:
	ldr r0, [r5, #4]
	lsl r0, r0, #2
	lsr r4, r0, #0x1b
	b _02236C90
_02236B9E:
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	lsr r4, r0, #0x1f
	b _02236C90
_02236BA6:
	ldr r0, [r5, #4]
	lsr r4, r0, #0x1f
	b _02236C90
_02236BAC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1d
	b _02236C90
_02236BB4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x1a
	lsr r4, r0, #0x1d
	b _02236C90
_02236BBC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x17
	lsr r4, r0, #0x1d
	b _02236C90
_02236BC4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x14
	lsr r4, r0, #0x1d
	b _02236C90
_02236BCC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x1d
	b _02236C90
_02236BD4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x1f
	b _02236C90
_02236BDC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xf
	lsr r4, r0, #0x1f
	b _02236C90
_02236BE4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xe
	lsr r4, r0, #0x1f
	b _02236C90
_02236BEC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xd
	lsr r4, r0, #0x1f
	b _02236C90
_02236BF4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xc
	lsr r4, r0, #0x1f
	b _02236C90
_02236BFC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xb
	lsr r4, r0, #0x1f
	b _02236C90
_02236C04:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xa
	lsr r4, r0, #0x1f
	b _02236C90
_02236C0C:
	ldr r0, [r5, #8]
	lsl r0, r0, #9
	lsr r4, r0, #0x1f
	b _02236C90
_02236C14:
	ldr r0, [r5, #8]
	lsl r0, r0, #8
	lsr r4, r0, #0x1f
	b _02236C90
_02236C1C:
	ldr r0, [r5, #8]
	lsl r0, r0, #7
	lsr r4, r0, #0x1f
	b _02236C90
_02236C24:
	ldr r0, [r5, #8]
	lsl r0, r0, #6
	lsr r4, r0, #0x1f
	b _02236C90
_02236C2C:
	ldr r0, [r5, #8]
	lsl r0, r0, #5
	lsr r4, r0, #0x1f
	b _02236C90
_02236C34:
	ldr r0, [r5, #8]
	lsl r0, r0, #1
	lsr r4, r0, #0x1c
	b _02236C90
_02236C3C:
	ldr r0, [r5, #8]
	lsr r4, r0, #0x1f
	b _02236C90
_02236C42:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0]
	cmp r4, #0
	beq _02236C90
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	bne _02236C5A
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02236C90
_02236C5A:
	mov r4, #0x67
	lsl r4, r4, #2
	b _02236C90
_02236C60:
	ldr r4, [r5, #4]
	lsl r0, r4, #2
	lsr r0, r0, #0x1b
	lsl r5, r0, #0x19
	lsl r0, r4, #7
	lsr r0, r0, #0x1b
	lsl r3, r0, #0x14
	lsl r0, r4, #0xc
	lsr r0, r0, #0x1b
	lsl r2, r0, #0xf
	lsl r0, r4, #0x11
	lsr r0, r0, #0x1b
	lsl r1, r0, #0xa
	lsl r0, r4, #0x1b
	lsl r4, r4, #0x16
	lsr r4, r4, #0x1b
	lsr r0, r0, #0x1b
	lsl r4, r4, #5
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r4, r5, #0
	orr r4, r0
_02236C90:
	ldr r0, [sp]
	cmp r0, #0xa
	ble _02236C9C
	add r0, r6, #0
	bl ov97_0223687C
_02236C9C:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_02236924

	thumb_func_start ov97_02236CA4
ov97_02236CA4: ; 0x02236CA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	mov r7, #0
	cmp r6, #0xa
	ble _02236D18
	ldr r1, [r4, #0]
	add r2, r7, #0
	bl ov97_02236380
	add r7, r0, #0
	ldr r1, [r4, #0]
	add r0, r4, #0
	mov r2, #1
	bl ov97_02236380
	ldr r1, [r4, #0]
	add r0, r4, #0
	mov r2, #2
	bl ov97_02236380
	ldr r1, [r4, #0]
	add r0, r4, #0
	mov r2, #3
	bl ov97_02236380
	str r0, [sp]
	add r0, r4, #0
	bl ov97_0223685C
	add r0, r4, #0
	bl ov97_0223689C
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _02236D18
	ldrb r1, [r4, #0x13]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x13]
	ldrb r1, [r4, #0x13]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0x13]
	ldr r0, [sp]
	ldr r1, [r0, #4]
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	add r0, r4, #0
	bl ov97_0223687C
	pop {r3, r4, r5, r6, r7, pc}
_02236D18:
	cmp r6, #0xb
	bhi _02236DBC
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236D28: ; jump table
	.short _02236DBC - _02236D28 - 2 ; case 0
	.short _02236DBC - _02236D28 - 2 ; case 1
	.short _02236D40 - _02236D28 - 2 ; case 2
	.short _02236D50 - _02236D28 - 2 ; case 3
	.short _02236D56 - _02236D28 - 2 ; case 4
	.short _02236D68 - _02236D28 - 2 ; case 5
	.short _02236D7A - _02236D28 - 2 ; case 6
	.short _02236D8C - _02236D28 - 2 ; case 7
	.short _02236DBC - _02236D28 - 2 ; case 8
	.short _02236DBC - _02236D28 - 2 ; case 9
	.short _02236DBC - _02236D28 - 2 ; case 10
	.short _02236D9C - _02236D28 - 2 ; case 11
_02236D40:
	mov r2, #0
_02236D42:
	ldrb r1, [r5, r2]
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #8]
	cmp r2, #0xa
	blt _02236D42
	b _02236DBC
_02236D50:
	ldrb r0, [r5]
	strb r0, [r4, #0x12]
	b _02236DBC
_02236D56:
	ldrb r0, [r4, #0x13]
	ldrb r2, [r5]
	mov r1, #1
	bic r0, r1
	mov r1, #1
	and r1, r2
	orr r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D68:
	ldrb r0, [r4, #0x13]
	mov r1, #2
	bic r0, r1
	ldrb r1, [r5]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1e
	orr r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D7A:
	ldrb r0, [r4, #0x13]
	mov r1, #4
	bic r0, r1
	ldrb r1, [r5]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D8C:
	mov r2, #0
_02236D8E:
	ldrb r1, [r5, r2]
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x14]
	cmp r2, #7
	blt _02236D8E
	b _02236DBC
_02236D9C:
	ldrb r0, [r5, #1]
	ldrb r1, [r5]
	lsl r0, r0, #8
	add r0, r1, r0
	strh r0, [r7]
	ldrh r0, [r7]
	ldrb r1, [r4, #0x13]
	cmp r0, #0
	beq _02236DB6
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236DB6:
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x13]
_02236DBC:
	cmp r6, #0xa
	ble _02236DCE
	add r0, r4, #0
	bl ov97_0223689C
	strh r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov97_0223687C
_02236DCE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02236CA4

	thumb_func_start ov97_02236DD0
ov97_02236DD0: ; 0x02236DD0
	ldr r1, _02236DF4 ; =0x00000115
	cmp r0, r1
	blt _02236DF0
	ldr r3, _02236DF8 ; =0x0223ED5C
	mov r2, #0
_02236DDA:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02236DE8
	ldr r0, _02236DFC ; =0x0223ED5E
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_02236DE8:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x90
	blo _02236DDA
_02236DF0:
	bx lr
	nop
_02236DF4: .word 0x00000115
_02236DF8: .word 0x0223ED5C
_02236DFC: .word 0x0223ED5E
	thumb_func_end ov97_02236DD0

	thumb_func_start ov97_02236E00
ov97_02236E00: ; 0x02236E00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0xb
	mov r2, #0
	bl ov97_02236924
	bl ov97_02236DD0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x19
	mov r2, #0
	bl ov97_02236924
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02075B78
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02236E00

	thumb_func_start ov97_02236E28
ov97_02236E28: ; 0x02236E28
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0x2e
	mov r2, #0
	bl ov97_02236924
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x19
	bl sub_020759F0
	cmp r0, #0
	beq _02236E82
	ldr r2, _02236E8C ; =0x0223ECA0
	mov r4, #0
_02236E56:
	ldrh r1, [r2]
	cmp r5, r1
	bne _02236E66
	add r0, r5, #0
	mov r1, #0x18
	bl sub_020759F0
	b _02236E6E
_02236E66:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, #0x5e
	blo _02236E56
_02236E6E:
	cmp r4, #0x5e
	bne _02236E8A
	mov r1, #1
	tst r1, r6
	bne _02236E8A
	add r0, r5, #0
	mov r1, #0x18
	bl sub_020759F0
	pop {r4, r5, r6, pc}
_02236E82:
	add r0, r5, #0
	mov r1, #0x18
	bl sub_020759F0
_02236E8A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02236E8C: .word 0x0223ECA0
	thumb_func_end ov97_02236E28

	thumb_func_start ov97_02236E90
ov97_02236E90: ; 0x02236E90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02073C54
	add r0, r4, #0
	bl sub_02073D20
	mov r1, #0
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	bl ov97_02236DD0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	cmp r0, #0
	beq _02236EF2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207CF10
	str r0, [sp, #8]
_02236EF2:
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x19
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #8
	bl sub_02074C60
	mov r0, #0x46
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	add r1, r4, #0
	bl ov97_02236E28
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xb
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	add r2, sp, #4
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1a
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1b
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xe
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1c
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1d
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x10
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1e
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x11
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1f
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x12
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x16
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x13
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x14
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x15
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x21
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x16
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2f
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x17
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x30
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x18
	add r2, sp, #8
	bl sub_02074C60
	mov r5, #0
	add r7, r5, #0
_02237082:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xd
	mov r2, #0
	bl ov97_02236924
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x36
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0
	bl ov97_02236924
	mov r1, #3
	lsl r1, r7
	str r0, [sp, #8]
	and r0, r1
	lsr r0, r7
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x3e
	add r2, sp, #8
	bl sub_02074C60
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x42
	mov r2, #0
	bl sub_02074570
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x3a
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	add r7, r7, #2
	cmp r5, #4
	blt _02237082
	add r0, r6, #0
	mov r1, #0x27
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x46
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x28
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x47
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x29
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x48
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2a
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x49
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2b
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2d
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4c
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x32
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _022371A6
	mov r5, #0
	cmp r7, #0
	ble _022371A6
_02237190:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x4e
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _02237190
_022371A6:
	add r0, r6, #0
	mov r1, #0x33
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _022371D2
	mov r5, #0
	cmp r7, #0
	ble _022371D2
_022371BC:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x52
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _022371BC
_022371D2:
	add r0, r6, #0
	mov r1, #0x34
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _022371FE
	mov r5, #0
	cmp r7, #0
	ble _022371FE
_022371E8:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x56
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _022371E8
_022371FE:
	add r0, r6, #0
	mov r1, #0x35
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _0223722A
	mov r5, #0
	cmp r7, #0
	ble _0223722A
_02237214:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x5a
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _02237214
_0223722A:
	add r0, r6, #0
	mov r1, #0x36
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _02237256
	mov r5, #0
	cmp r7, #0
	ble _02237256
_02237240:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x5e
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _02237240
_02237256:
	add r0, r6, #0
	mov r1, #0x43
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x62
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x44
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x63
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x45
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x64
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x46
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x65
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x47
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x66
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x48
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x67
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x49
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x68
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4a
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x69
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4b
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6a
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6b
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4d
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6c
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4e
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6d
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x50
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6e
	add r2, sp, #8
	bl sub_02074C60
	add r0, r4, #0
	bl sub_02075D74
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6f
	add r2, sp, #8
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0xc9
	bne _022373D2
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl ov97_02236924
	add r3, r0, #0
	mov r7, #3
	lsl r0, r7, #8
	and r0, r3
	lsr r1, r0, #6
	lsl r0, r7, #0x18
	and r0, r3
	lsr r5, r0, #0x12
	lsl r0, r7, #0x10
	and r0, r3
	lsr r0, r0, #0xc
	add r2, r3, #0
	orr r0, r5
	orr r0, r1
	and r2, r7
	str r3, [sp, #8]
	orr r0, r2
	mov r1, #0x1c
	bl _u32_div_f
	str r1, [sp, #8]
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #8
	bl sub_02074C60
_022373D2:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _02237514 ; =0x00000182
	cmp r0, r1
	bne _02237422
	ldr r0, _02237518 ; =0x021BF6DC
	ldrb r0, [r0, #6]
	cmp r0, #5
	bhi _02237402
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022373F6: ; jump table
	.short _02237402 - _022373F6 - 2 ; case 0
	.short _02237402 - _022373F6 - 2 ; case 1
	.short _02237402 - _022373F6 - 2 ; case 2
	.short _02237414 - _022373F6 - 2 ; case 3
	.short _02237408 - _022373F6 - 2 ; case 4
	.short _0223740E - _022373F6 - 2 ; case 5
_02237402:
	mov r0, #0
	str r0, [sp, #8]
	b _02237418
_02237408:
	mov r0, #1
	str r0, [sp, #8]
	b _02237418
_0223740E:
	mov r0, #2
	str r0, [sp, #8]
	b _02237418
_02237414:
	mov r0, #3
	str r0, [sp, #8]
_02237418:
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #8
	bl sub_02074C60
_02237422:
	add r0, r6, #0
	mov r1, #2
	add r2, sp, #0x24
	bl ov97_02236924
	ldr r3, [sp, #4]
	add r0, sp, #0x24
	add r1, sp, #0xc
	mov r2, #0xc
	bl ov97_0223936C
	add r0, r4, #0
	mov r1, #0x76
	add r2, sp, #0xc
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	bl ov97_02236924
	ldr r1, _0223751C ; =0x020E4C44
	ldrb r1, [r1]
	cmp r1, r0
	beq _02237462
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4d
	add r2, sp, #8
	bl sub_02074C60
_02237462:
	add r0, r6, #0
	mov r1, #0x25
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x7a
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #7
	add r2, sp, #0x24
	bl ov97_02236924
	ldr r3, [sp, #4]
	add r0, sp, #0x24
	add r1, sp, #0xc
	mov r2, #8
	bl ov97_0223936C
	add r0, r4, #0
	mov r1, #0x90
	add r2, sp, #0xc
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x23
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x99
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x22
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9a
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x26
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9b
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x24
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9c
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x31
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9d
	add r2, sp, #8
	bl sub_02074C60
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02073D48
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237514: .word 0x00000182
_02237518: .word 0x021BF6DC
_0223751C: .word 0x020E4C44
	thumb_func_end ov97_02236E90
	.data


	.global Unk_ov97_0223ECA0
Unk_ov97_0223ECA0: ; 0x0223ECA0
	.incbin "incbin/overlay97_data.bin", 0xD60, 0xE1C - 0xD60

	.global Unk_ov97_0223ED5C
Unk_ov97_0223ED5C: ; 0x0223ED5C
	.incbin "incbin/overlay97_data.bin", 0xE1C, 0x240

