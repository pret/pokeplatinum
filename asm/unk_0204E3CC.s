	.include "macros/function.inc"
	.include "include/unk_0204E3CC.inc"

	

	.text


	thumb_func_start sub_0204E3CC
sub_0204E3CC: ; 0x0204E3CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02027520
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E3CC

	thumb_func_start sub_0204E3FC
sub_0204E3FC: ; 0x0204E3FC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027540
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E3FC

	thumb_func_start sub_0204E410
sub_0204E410: ; 0x0204E410
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
	bl sub_0203A790
	bl sub_0203A780
	bl sub_0205EC40
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E410

	thumb_func_start sub_0204E440
sub_0204E440: ; 0x0204E440
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	mov r1, #1
	bl sub_0205EC54
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204E440

	thumb_func_start sub_0204E45C
sub_0204E45C: ; 0x0204E45C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	cmp r4, #8
	blo _0204E48E
	bl sub_02022974
_0204E48E:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r1, r4, #0
	bl sub_02025F34
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204E45C

	thumb_func_start sub_0204E4A4
sub_0204E4A4: ; 0x0204E4A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	cmp r4, #8
	blo _0204E4C2
	bl sub_02022974
_0204E4C2:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r1, r4, #0
	bl sub_02025F48
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E4A4

	thumb_func_start sub_0204E4D8
sub_0204E4D8: ; 0x0204E4D8
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
	bl sub_020507E4
	bl sub_0206A938
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E4D8

	thumb_func_start sub_0204E504
sub_0204E504: ; 0x0204E504
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r4, #0
	ldr r7, _0204E550 ; =0x020EC064
	str r0, [sp]
	add r5, r4, #0
_0204E520:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	ldrb r1, [r7, r4]
	bl sub_02025F34
	cmp r0, #1
	bne _0204E53C
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0204E53C:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _0204E520
	ldr r0, [sp]
	strh r5, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204E550: .word 0x020EC064
	thumb_func_end sub_0204E504

	thumb_func_start sub_0204E554
sub_0204E554: ; 0x0204E554
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A92C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E554

	thumb_func_start sub_0204E568
sub_0204E568: ; 0x0204E568
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
	bl sub_020507E4
	bl sub_0206A984
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E568

	thumb_func_start sub_0204E594
sub_0204E594: ; 0x0204E594
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A964
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E594

	thumb_func_start sub_0204E5A8
sub_0204E5A8: ; 0x0204E5A8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E5A8

	thumb_func_start sub_0204E5BC
sub_0204E5BC: ; 0x0204E5BC
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
	bl sub_020507E4
	bl sub_0206A9B4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E5BC

	thumb_func_start sub_0204E5E8
sub_0204E5E8: ; 0x0204E5E8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A994
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E5E8

	thumb_func_start sub_0204E5FC
sub_0204E5FC: ; 0x0204E5FC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A9A4
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E5FC

	thumb_func_start sub_0204E610
sub_0204E610: ; 0x0204E610
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
	bl sub_020507E4
	bl sub_0206A954
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E610

	thumb_func_start sub_0204E63C
sub_0204E63C: ; 0x0204E63C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A944
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204E63C

	thumb_func_start sub_0204E650
sub_0204E650: ; 0x0204E650
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, [r5, #8]
	add r4, r0, #0
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0204E67E
	cmp r1, #1
	beq _0204E676
	cmp r1, #2
	beq _0204E686
	b _0204E6A4
_0204E676:
	mov r1, #1
	bl sub_0206AEAC
	b _0204E6A8
_0204E67E:
	mov r1, #0
	bl sub_0206AEAC
	b _0204E6A8
_0204E686:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_0206AEAC
	strh r0, [r5]
	b _0204E6A8
_0204E6A4:
	bl sub_02022974
_0204E6A8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204E650

	thumb_func_start sub_0204E6AC
sub_0204E6AC: ; 0x0204E6AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, [r5, #8]
	add r4, r0, #0
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0204E6D8
	cmp r1, #1
	beq _0204E6D2
	cmp r1, #2
	beq _0204E6DE
	b _0204E6FA
_0204E6D2:
	bl sub_0206AEBC
	b _0204E6FE
_0204E6D8:
	bl sub_0206AECC
	b _0204E6FE
_0204E6DE:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206AEDC
	strh r0, [r5]
	b _0204E6FE
_0204E6FA:
	bl sub_02022974
_0204E6FE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E6AC

	thumb_func_start sub_0204E704
sub_0204E704: ; 0x0204E704
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, [r5, #8]
	add r4, r0, #0
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0204E730
	cmp r1, #1
	beq _0204E72A
	cmp r1, #2
	beq _0204E736
	b _0204E752
_0204E72A:
	bl sub_0206AEEC
	b _0204E756
_0204E730:
	bl sub_0206AEFC
	b _0204E756
_0204E736:
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206AF0C
	strh r0, [r5]
	b _0204E756
_0204E752:
	bl sub_02022974
_0204E756:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204E704

	.rodata


	.global Unk_020EC064
Unk_020EC064: ; 0x020EC064
	.incbin "incbin/arm9_rodata.bin", 0x7424, 0x8

