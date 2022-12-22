	.include "macros/function.inc"
	.include "include/unk_020494DC.inc"

	

	.text


	thumb_func_start sub_020494DC
sub_020494DC: ; 0x020494DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204A124
	add r5, #0x80
	ldr r1, [r5, #0]
	add r1, #0xac
	str r0, [r1, #0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020494DC

	thumb_func_start sub_0204950C
sub_0204950C: ; 0x0204950C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	bl sub_0204A110
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204950C

	thumb_func_start sub_0204951C
sub_0204951C: ; 0x0204951C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0204A32C
	add r4, #0x80
	ldr r1, [r4, #0]
	mov r0, #0
	add r1, #0xac
	str r0, [r1, #0]
	pop {r4, pc}
	thumb_func_end sub_0204951C

	thumb_func_start sub_02049538
sub_02049538: ; 0x02049538
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	bl sub_0203E838
	str r0, [sp]
	add r0, r7, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0203E838
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [sp, #4]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r7, #0
	add r0, #0x80
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0xac
	ldr r5, [r0, #0]
	ldr r0, [sp]
	cmp r0, #0x3a
	bgt _02049606
	cmp r0, #0
	blt _0204960E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02049590: ; jump table
	.short _020497EE - _02049590 - 2 ; case 0
	.short _02049610 - _02049590 - 2 ; case 1
	.short _02049630 - _02049590 - 2 ; case 2
	.short _02049636 - _02049590 - 2 ; case 3
	.short _02049642 - _02049590 - 2 ; case 4
	.short _02049650 - _02049590 - 2 ; case 5
	.short _02049658 - _02049590 - 2 ; case 6
	.short _020497EE - _02049590 - 2 ; case 7
	.short _02049660 - _02049590 - 2 ; case 8
	.short _0204966C - _02049590 - 2 ; case 9
	.short _0204967A - _02049590 - 2 ; case 10
	.short _02049688 - _02049590 - 2 ; case 11
	.short _02049694 - _02049590 - 2 ; case 12
	.short _020497EE - _02049590 - 2 ; case 13
	.short _0204969E - _02049590 - 2 ; case 14
	.short _020496A8 - _02049590 - 2 ; case 15
	.short _020496B2 - _02049590 - 2 ; case 16
	.short _020497EE - _02049590 - 2 ; case 17
	.short _020497EE - _02049590 - 2 ; case 18
	.short _020497EE - _02049590 - 2 ; case 19
	.short _020497EE - _02049590 - 2 ; case 20
	.short _020497EE - _02049590 - 2 ; case 21
	.short _020497EE - _02049590 - 2 ; case 22
	.short _020497EE - _02049590 - 2 ; case 23
	.short _020497EE - _02049590 - 2 ; case 24
	.short _020497EE - _02049590 - 2 ; case 25
	.short _020497EE - _02049590 - 2 ; case 26
	.short _020497EE - _02049590 - 2 ; case 27
	.short _020497EE - _02049590 - 2 ; case 28
	.short _020497EE - _02049590 - 2 ; case 29
	.short _020496C4 - _02049590 - 2 ; case 30
	.short _020496DC - _02049590 - 2 ; case 31
	.short _020496F6 - _02049590 - 2 ; case 32
	.short _020497EE - _02049590 - 2 ; case 33
	.short _020497EE - _02049590 - 2 ; case 34
	.short _02049702 - _02049590 - 2 ; case 35
	.short _020497EE - _02049590 - 2 ; case 36
	.short _0204970C - _02049590 - 2 ; case 37
	.short _02049716 - _02049590 - 2 ; case 38
	.short _02049724 - _02049590 - 2 ; case 39
	.short _020497EE - _02049590 - 2 ; case 40
	.short _02049734 - _02049590 - 2 ; case 41
	.short _020497EE - _02049590 - 2 ; case 42
	.short _02049740 - _02049590 - 2 ; case 43
	.short _020497EE - _02049590 - 2 ; case 44
	.short _0204974A - _02049590 - 2 ; case 45
	.short _020497EE - _02049590 - 2 ; case 46
	.short _02049754 - _02049590 - 2 ; case 47
	.short _0204975E - _02049590 - 2 ; case 48
	.short _0204976A - _02049590 - 2 ; case 49
	.short _02049776 - _02049590 - 2 ; case 50
	.short _0204978A - _02049590 - 2 ; case 51
	.short _02049794 - _02049590 - 2 ; case 52
	.short _0204979E - _02049590 - 2 ; case 53
	.short _020497A8 - _02049590 - 2 ; case 54
	.short _020497B6 - _02049590 - 2 ; case 55
	.short _0204972C - _02049590 - 2 ; case 56
	.short _020497C4 - _02049590 - 2 ; case 57
	.short _020497E0 - _02049590 - 2 ; case 58
_02049606:
	ldr r0, [sp]
	cmp r0, #0x64
	bne _0204960E
	b _020497D0
_0204960E:
	b _020497EE
_02049610:
	cmp r6, #0
	bne _02049622
	ldrb r0, [r5, #0xe]
	ldr r1, [r2, #0xc]
	mov r2, #1
	bl sub_02049EC4
	strh r0, [r4]
	b _020497F6
_02049622:
	ldr r1, [r2, #0xc]
	add r0, r6, #0
	mov r2, #1
	bl sub_02049EC4
	strh r0, [r4]
	b _020497F6
_02049630:
	bl sub_02049F8C
	b _020497F6
_02049636:
	ldr r0, [r2, #0xc]
	bl sub_0202D740
	bl sub_02049F98
	b _020497F6
_02049642:
	ldr r0, [r2, #0xc]
	bl sub_0202D740
	bl sub_02049FA0
	strh r0, [r4]
	b _020497F6
_02049650:
	add r0, r2, #0
	bl sub_02049FA8
	b _020497F6
_02049658:
	add r0, r2, #0
	bl sub_02049FE8
	b _020497F6
_02049660:
	ldr r0, [r2, #0xc]
	add r1, r6, #0
	bl sub_02049FF8
	strh r0, [r4]
	b _020497F6
_0204966C:
	ldr r1, [r2, #0xc]
	mov r0, #0
	mov r2, #2
	bl sub_0204AABC
	strh r0, [r4]
	b _020497F6
_0204967A:
	mov r0, #0
	ldr r1, [r2, #0xc]
	add r2, r0, #0
	bl sub_0204AABC
	strh r0, [r4]
	b _020497F6
_02049688:
	lsl r1, r6, #0x18
	ldr r0, [r2, #0xc]
	lsr r1, r1, #0x18
	bl sub_0204A030
	b _020497F6
_02049694:
	ldr r0, [r2, #0xc]
	bl sub_0204A050
	strh r0, [r4]
	b _020497F6
_0204969E:
	ldr r0, [r2, #0xc]
	bl sub_0204A064
	strh r0, [r4]
	b _020497F6
_020496A8:
	ldr r0, [r2, #0xc]
	bl sub_0204A100
	strh r0, [r4]
	b _020497F6
_020496B2:
	ldrh r3, [r4]
	ldr r0, [r7, #0x74]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl sub_0206BCE4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020496C4:
	add r0, r2, #0
	mov r1, #0x13
	bl sub_0203F098
	add r2, r0, #0
	ldr r1, [r7, #0x74]
	add r0, r5, #0
	bl sub_0204A358
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020496DC:
	add r0, r2, #0
	mov r1, #0x13
	bl sub_0203F098
	add r7, #0x80
	ldr r2, [r7, #0]
	add r1, r0, #0
	ldr r2, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204A378
	strh r0, [r4]
	b _020497F6
_020496F6:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204A410
	strh r0, [r4]
	b _020497F6
_02049702:
	add r0, r5, #0
	bl sub_0204A57C
	strh r0, [r4]
	b _020497F6
_0204970C:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204A660
	b _020497F6
_02049716:
	ldr r1, [r2, #0xc]
	add r2, #0x9c
	ldr r2, [r2, #0]
	add r0, r5, #0
	bl sub_0204A7A4
	b _020497F6
_02049724:
	add r0, r5, #0
	bl sub_0204A8C8
	b _020497F6
_0204972C:
	add r0, r5, #0
	bl sub_0204A97C
	b _020497F6
_02049734:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0204A9E0
	strh r0, [r4]
	b _020497F6
_02049740:
	add r0, r5, #0
	bl sub_0204A9F8
	strh r0, [r4]
	b _020497F6
_0204974A:
	add r0, r5, #0
	bl sub_0204A9FC
	strh r0, [r4]
	b _020497F6
_02049754:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204AA7C
	b _020497F6
_0204975E:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204AB68
	strh r0, [r4]
	b _020497F6
_0204976A:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204ABA0
	strh r0, [r4]
	b _020497F6
_02049776:
	ldrb r1, [r5, #0x10]
	mov r0, #0xe0
	bic r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5, #0x10]
	b _020497F6
_0204978A:
	ldrb r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	strh r0, [r4]
	b _020497F6
_02049794:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204A4C8
	b _020497F6
_0204979E:
	add r0, r5, r6
	add r0, #0x2a
	ldrb r0, [r0]
	strh r0, [r4]
	b _020497F6
_020497A8:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	mov r2, #1
	bl sub_0204AABC
	strh r0, [r4]
	b _020497F6
_020497B6:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02049AE0
	strh r0, [r4]
	b _020497F6
_020497C4:
	ldr r1, [r2, #0xc]
	add r0, r5, #0
	bl sub_0204ABF4
	strh r0, [r4]
	b _020497F6
_020497D0:
	cmp r5, #0
	bne _020497DA
	mov r0, #1
	strh r0, [r4]
	b _020497F6
_020497DA:
	mov r0, #0
	strh r0, [r4]
	b _020497F6
_020497E0:
	ldr r0, _020497FC ; =0x00000884
	mov r1, #0
	add r0, r5, r0
	mov r2, #0x46
	bl MI_CpuFill8
	b _020497F6
_020497EE:
	bl GF_AssertFail
	mov r0, #0
	strh r0, [r4]
_020497F6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020497FC: .word 0x00000884
	thumb_func_end sub_02049538

	thumb_func_start sub_02049800
sub_02049800: ; 0x02049800
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r1, #0xac
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	lsl r2, r6, #4
	add r2, r6, r2
	mov r1, #0x38
	lsl r2, r2, #4
	mul r1, r7
	add r2, r4, r2
	add r3, r2, r1
	mov r2, #0xb2
	lsl r2, r2, #2
	ldrh r1, [r3, r2]
	lsl r1, r1, #0x15
	lsr r4, r1, #0x15
	ldr r1, [sp]
	strh r4, [r1]
	add r1, r2, #4
	ldrh r1, [r3, r1]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02049800

	thumb_func_start sub_02049880
sub_02049880: ; 0x02049880
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0206BDBC
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02049880

	thumb_func_start sub_020498A8
sub_020498A8: ; 0x020498A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0206BF04
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020498A8

	thumb_func_start sub_020498D0
sub_020498D0: ; 0x020498D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r6, [r0, #0]
	mov r0, #0
	strh r0, [r4]
	cmp r7, #0
	beq _0204992C
	cmp r7, #1
	beq _02049944
	cmp r7, #2
	beq _02049958
	b _0204996C
_0204992C:
	mov r0, #0x3e
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0xc]
	bl sub_0204B060
	b _0204996C
_02049944:
	mov r0, #0x3f
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0204B0BC
	b _0204996C
_02049958:
	mov r0, #0x40
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [sp, #4]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0204B0D4
_0204996C:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0205E6D8
	cmp r0, #1
	bne _02049996
	bl sub_0203608C
	ldr r1, _020499B8 ; =0x0000083E
	add r1, r6, r1
	bl sub_02036614
	cmp r0, #1
	bne _02049990
	mov r0, #1
	strh r0, [r4]
	b _020499B0
_02049990:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02049996:
	add r0, r6, #0
	bl sub_0209BA80
	ldr r1, _020499B8 ; =0x0000083E
	ldr r0, [sp]
	add r1, r6, r1
	mov r2, #0x46
	bl sub_020359DC
	cmp r0, #1
	bne _020499B0
	mov r0, #1
	strh r0, [r4]
_020499B0:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020499B8: .word 0x0000083E
	thumb_func_end sub_020498D0

	thumb_func_start sub_020499BC
sub_020499BC: ; 0x020499BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r1, #0xac
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0205E6D8
	cmp r0, #1
	bne _02049A04
	add r5, #0x80
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x10]
	add r2, r7, #0
	bl sub_0206BD88
	b _02049A14
_02049A04:
	ldr r0, _02049A18 ; =0x000008DA
	ldr r1, _02049A1C ; =sub_02049A20
	strh r7, [r4, r0]
	sub r0, r0, #5
	strb r6, [r4, r0]
	add r0, r5, #0
	bl sub_0203E764
_02049A14:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02049A18: .word 0x000008DA
_02049A1C: .word sub_02049A20
	thumb_func_end sub_020499BC

	thumb_func_start sub_02049A20
sub_02049A20: ; 0x02049A20
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0xac
	ldr r4, [r1, #0]
	ldr r1, _02049A5C ; =0x000008DA
	ldrh r1, [r4, r1]
	bl sub_0203F118
	ldr r1, _02049A60 ; =0x000008D5
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _02049A40
	mov r3, #1
	b _02049A42
_02049A40:
	mov r3, #2
_02049A42:
	ldr r1, _02049A64 ; =0x000008D4
	ldrb r2, [r4, r1]
	cmp r2, r3
	bne _02049A58
	mov r2, #0
	strb r2, [r4, r1]
	add r1, r1, #4
	ldrh r1, [r4, r1]
	strh r1, [r0]
	mov r0, #1
	pop {r4, pc}
_02049A58:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02049A5C: .word 0x000008DA
_02049A60: .word 0x000008D5
_02049A64: .word 0x000008D4
	thumb_func_end sub_02049A20

	thumb_func_start sub_02049A68
sub_02049A68: ; 0x02049A68
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D764
	add r1, sp, #0
	bl sub_0202D708
	add r0, sp, #0
	ldrb r1, [r0]
	strh r1, [r4]
	ldrb r0, [r0, #1]
	strh r0, [r6]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02049A68

	thumb_func_start sub_02049AB4
sub_02049AB4: ; 0x02049AB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D764
	bl sub_0202D5F0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02049AB4

	thumb_func_start sub_02049AE0
sub_02049AE0: ; 0x02049AE0
	cmp r1, #2
	bne _02049AEC
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	bx lr
_02049AEC:
	cmp r1, #1
	bne _02049B12
	ldrb r1, [r0, #0xf]
	cmp r1, #2
	bne _02049B04
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	lsl r1, r0, #1
	ldr r0, _02049B20 ; =0x020EBC78
	ldrh r0, [r0, r1]
	bx lr
_02049B04:
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _02049B0E
	mov r0, #0x61
	bx lr
_02049B0E:
	mov r0, #0
	bx lr
_02049B12:
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _02049B1C
	mov r0, #0x61
	bx lr
_02049B1C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02049B20: .word 0x020EBC78
	thumb_func_end sub_02049AE0

	thumb_func_start sub_02049B24
sub_02049B24: ; 0x02049B24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r1, [r5, #8]
	ldr r0, [r0, #0]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r6, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	mov r1, #0x26
	bl sub_0203F098
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r4, #0
	bl ov5_021DD140
	str r0, [r7, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02049B24

	thumb_func_start sub_02049B54
sub_02049B54: ; 0x02049B54
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DD084
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02049B54

	thumb_func_start sub_02049B6C
sub_02049B6C: ; 0x02049B6C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0203F098
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov5_021DD1A4
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02049B6C

	thumb_func_start sub_02049B8C
sub_02049B8C: ; 0x02049B8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02049B8C

	thumb_func_start sub_02049BBC
sub_02049BBC: ; 0x02049BBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x44
	add r2, r6, #0
	bl sub_0202CF70
	add r0, r4, #0
	bl sub_0202D750
	add r1, r6, #0
	mov r2, #5
	bl sub_0202D230
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02049BBC

	thumb_func_start sub_02049C00
sub_02049C00: ; 0x02049C00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x45
	add r2, r6, #0
	bl sub_0202CF70
	add r0, r4, #0
	bl sub_0202D750
	add r1, r6, #0
	mov r2, #6
	bl sub_0202D230
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02049C00

	thumb_func_start sub_02049C44
sub_02049C44: ; 0x02049C44
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r5, [r1, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	cmp r0, r6
	bhs _02049C8A
	mov r0, #0
	b _02049C8C
_02049C8A:
	mov r0, #1
_02049C8C:
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02049C44

	thumb_func_start sub_02049C94
sub_02049C94: ; 0x02049C94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	cmp r7, #1
	bne _02049CEA
	mov r1, #0x1a
	b _02049CEC
_02049CEA:
	mov r1, #0
_02049CEC:
	add r1, r1, r6
	lsl r2, r1, #2
	ldr r1, _02049D00 ; =0x020EBC82
	ldrh r1, [r1, r2]
	strh r1, [r4]
	ldr r1, _02049D04 ; =0x020EBC84
	ldrh r1, [r1, r2]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02049D00: .word 0x020EBC82
_02049D04: .word 0x020EBC84
	thumb_func_end sub_02049C94

	.rodata


	.global Unk_020EBC78
Unk_020EBC78: ; 0x020EBC78
	.incbin "incbin/arm9_rodata.bin", 0x7038, 0x7042 - 0x7038

	.global Unk_020EBC82
Unk_020EBC82: ; 0x020EBC82
	.incbin "incbin/arm9_rodata.bin", 0x7042, 0xA4

