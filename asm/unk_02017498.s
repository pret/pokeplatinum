	.include "macros/function.inc"
	.include "include/unk_02017498.inc"

	

	.text


	thumb_func_start sub_02017498
sub_02017498: ; 0x02017498
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _02017514 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _02017518 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0201751C ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x74
	lsl r2, r2, #0xe
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x74
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x80
	add r5, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02006840
	str r0, [r5, #0]
	ldr r1, _02017520 ; =0x00000497
	mov r0, #0xb
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02017514: .word 0xFFFFE0FF
_02017518: .word 0x04001000
_0201751C: .word 0xFFFF1FFF
_02017520: .word 0x00000497
	thumb_func_end sub_02017498

	thumb_func_start sub_02017524
sub_02017524: ; 0x02017524
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #8
	bhi _02017622
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02017540: ; jump table
	.short _02017552 - _02017540 - 2 ; case 0
	.short _0201755C - _02017540 - 2 ; case 1
	.short _0201757E - _02017540 - 2 ; case 2
	.short _02017592 - _02017540 - 2 ; case 3
	.short _020175BA - _02017540 - 2 ; case 4
	.short _020175D6 - _02017540 - 2 ; case 5
	.short _020175EE - _02017540 - 2 ; case 6
	.short _02017602 - _02017540 - 2 ; case 7
	.short _0201761E - _02017540 - 2 ; case 8
_02017552:
	bl sub_0201767C
	mov r0, #1
	str r0, [r5, #0]
	b _02017622
_0201755C:
	bl sub_020334A4
	cmp r0, #0
	beq _02017622
	ldr r1, [r4, #0x10]
	ldr r0, _02017648 ; =0x021BF678
	str r1, [r0, #0]
	ldr r0, _0201764C ; =sub_020176DC
	ldr r1, _02017650 ; =sub_02017704
	bl ov4_021D776C
	mov r0, #1
	str r0, [r4, #0x78]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_0201757E:
	ldr r0, _02017654 ; =0x020E5664
	add r1, r4, #0
	mov r2, #0x74
	bl sub_020067E8
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_02017592:
	ldr r0, [r4, #8]
	bl sub_02006844
	cmp r0, #1
	bne _02017622
	ldr r0, [r4, #8]
	bl sub_02006814
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _020175B4
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_020175B4:
	mov r0, #8
	str r0, [r5, #0]
	b _02017622
_020175BA:
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0xc]
	bl sub_0208BE5C
	ldr r1, [r4, #0]
	mov r2, #0x74
	ldr r1, [r1, #0]
	bl sub_020067E8
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_020175D6:
	ldr r0, [r4, #8]
	bl sub_02006844
	cmp r0, #1
	bne _02017622
	ldr r0, [r4, #8]
	bl sub_02006814
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_020175EE:
	ldr r0, _02017654 ; =0x020E5664
	add r1, r4, #0
	mov r2, #0x74
	bl sub_020067E8
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_02017602:
	ldr r0, [r4, #8]
	bl sub_02006844
	cmp r0, #1
	bne _02017622
	ldr r0, [r4, #8]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02017622
_0201761E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02017622:
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _02017644
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02017644
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02017644
	bl ov4_021D8018
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02017644:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02017648: .word 0x021BF678
_0201764C: .word sub_020176DC
_02017650: .word sub_02017704
_02017654: .word 0x020E5664
	thumb_func_end sub_02017524

	thumb_func_start sub_02017658
sub_02017658: ; 0x02017658
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_020176B4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x74
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02017658

	thumb_func_start sub_0201767C
sub_0201767C: ; 0x0201767C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _020176AE
	ldr r1, _020176B0 ; =0x00020020
	mov r0, #0x74
	bl sub_02018144
	str r0, [r4, #0xc]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl sub_020A5404
	str r0, [r4, #0x10]
	bl sub_02099550
	bl sub_020995B4
	bl sub_02033478
_020176AE:
	pop {r4, pc}
	; .align 2, 0
_020176B0: .word 0x00020020
	thumb_func_end sub_0201767C

	thumb_func_start sub_020176B4
sub_020176B4: ; 0x020176B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _020176DA
	ldr r0, [r4, #0x10]
	bl sub_020A543C
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	bl sub_020995C4
	bl sub_02099560
	bl sub_020334CC
	mov r0, #0
	str r0, [r4, #0x78]
_020176DA:
	pop {r4, pc}
	thumb_func_end sub_020176B4

	thumb_func_start sub_020176DC
sub_020176DC: ; 0x020176DC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020C3D98
	add r6, r0, #0
	ldr r0, _02017700 ; =0x021BF678
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_020A5448
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020C3DAC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02017700: .word 0x021BF678
	thumb_func_end sub_020176DC

	thumb_func_start sub_02017704
sub_02017704: ; 0x02017704
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _02017720
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _02017724 ; =0x021BF678
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl sub_020A55D8
	add r0, r4, #0
	bl sub_020C3DAC
_02017720:
	pop {r3, r4, r5, pc}
	nop
_02017724: .word 0x021BF678
	thumb_func_end sub_02017704

	.rodata


	.global Unk_020E5664
Unk_020E5664: ; 0x020E5664
	.incbin "incbin/arm9_rodata.bin", 0xA24, 0x10



	.bss


	.global Unk_021BF678
Unk_021BF678: ; 0x021BF678
	.space 0x4

