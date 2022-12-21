	.include "macros/function.inc"
	.include "include/unk_0206A8DC.inc"

	

	.text


	thumb_func_start sub_0206A8DC
sub_0206A8DC: ; 0x0206A8DC
	ldr r3, _0206A8E0 ; =sub_0205081C
	bx r3
	; .align 2, 0
_0206A8E0: .word sub_0205081C
	thumb_func_end sub_0206A8DC

	thumb_func_start sub_0206A8E4
sub_0206A8E4: ; 0x0206A8E4
	ldr r3, _0206A8E8 ; =sub_02050844
	bx r3
	; .align 2, 0
_0206A8E8: .word sub_02050844
	thumb_func_end sub_0206A8E4

	thumb_func_start sub_0206A8EC
sub_0206A8EC: ; 0x0206A8EC
	ldr r3, _0206A8F0 ; =sub_020507F0
	bx r3
	; .align 2, 0
_0206A8F0: .word sub_020507F0
	thumb_func_end sub_0206A8EC

	thumb_func_start sub_0206A8F4
sub_0206A8F4: ; 0x0206A8F4
	push {r3, lr}
	cmp r1, #0
	beq _0206A90E
	cmp r1, #1
	beq _0206A904
	cmp r1, #2
	beq _0206A918
	b _0206A922
_0206A904:
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	bl sub_0206A8DC
	b _0206A926
_0206A90E:
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	bl sub_0206A8E4
	b _0206A926
_0206A918:
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	bl sub_0206A8EC
	pop {r3, pc}
_0206A922:
	bl sub_02022974
_0206A926:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206A8F4

	thumb_func_start sub_0206A92C
sub_0206A92C: ; 0x0206A92C
	ldr r3, _0206A934 ; =sub_0206A8DC
	mov r1, #0x96
	lsl r1, r1, #4
	bx r3
	; .align 2, 0
_0206A934: .word sub_0206A8DC
	thumb_func_end sub_0206A92C

	thumb_func_start sub_0206A938
sub_0206A938: ; 0x0206A938
	ldr r3, _0206A940 ; =sub_0206A8EC
	mov r1, #0x96
	lsl r1, r1, #4
	bx r3
	; .align 2, 0
_0206A940: .word sub_0206A8EC
	thumb_func_end sub_0206A938

	thumb_func_start sub_0206A944
sub_0206A944: ; 0x0206A944
	ldr r3, _0206A94C ; =sub_0206A8DC
	ldr r1, _0206A950 ; =0x00000964
	bx r3
	nop
_0206A94C: .word sub_0206A8DC
_0206A950: .word 0x00000964
	thumb_func_end sub_0206A944

	thumb_func_start sub_0206A954
sub_0206A954: ; 0x0206A954
	ldr r3, _0206A95C ; =sub_0206A8EC
	ldr r1, _0206A960 ; =0x00000964
	bx r3
	nop
_0206A95C: .word sub_0206A8EC
_0206A960: .word 0x00000964
	thumb_func_end sub_0206A954

	thumb_func_start sub_0206A964
sub_0206A964: ; 0x0206A964
	ldr r3, _0206A96C ; =sub_0206A8DC
	ldr r1, _0206A970 ; =0x00000961
	bx r3
	nop
_0206A96C: .word sub_0206A8DC
_0206A970: .word 0x00000961
	thumb_func_end sub_0206A964

	thumb_func_start sub_0206A974
sub_0206A974: ; 0x0206A974
	ldr r3, _0206A97C ; =sub_0206A8E4
	ldr r1, _0206A980 ; =0x00000961
	bx r3
	nop
_0206A97C: .word sub_0206A8E4
_0206A980: .word 0x00000961
	thumb_func_end sub_0206A974

	thumb_func_start sub_0206A984
sub_0206A984: ; 0x0206A984
	ldr r3, _0206A98C ; =sub_0206A8EC
	ldr r1, _0206A990 ; =0x00000961
	bx r3
	nop
_0206A98C: .word sub_0206A8EC
_0206A990: .word 0x00000961
	thumb_func_end sub_0206A984

	thumb_func_start sub_0206A994
sub_0206A994: ; 0x0206A994
	ldr r3, _0206A99C ; =sub_0206A8DC
	ldr r1, _0206A9A0 ; =0x00000965
	bx r3
	nop
_0206A99C: .word sub_0206A8DC
_0206A9A0: .word 0x00000965
	thumb_func_end sub_0206A994

	thumb_func_start sub_0206A9A4
sub_0206A9A4: ; 0x0206A9A4
	ldr r3, _0206A9AC ; =sub_0206A8E4
	ldr r1, _0206A9B0 ; =0x00000965
	bx r3
	nop
_0206A9AC: .word sub_0206A8E4
_0206A9B0: .word 0x00000965
	thumb_func_end sub_0206A9A4

	thumb_func_start sub_0206A9B4
sub_0206A9B4: ; 0x0206A9B4
	ldr r3, _0206A9BC ; =sub_0206A8EC
	ldr r1, _0206A9C0 ; =0x00000965
	bx r3
	nop
_0206A9BC: .word sub_0206A8EC
_0206A9C0: .word 0x00000965
	thumb_func_end sub_0206A9B4

	thumb_func_start sub_0206A9C4
sub_0206A9C4: ; 0x0206A9C4
	ldr r3, _0206A9CC ; =sub_0206A8DC
	ldr r1, _0206A9D0 ; =0x0000096D
	bx r3
	nop
_0206A9CC: .word sub_0206A8DC
_0206A9D0: .word 0x0000096D
	thumb_func_end sub_0206A9C4

	thumb_func_start sub_0206A9D4
sub_0206A9D4: ; 0x0206A9D4
	ldr r3, _0206A9DC ; =sub_0206A8E4
	ldr r1, _0206A9E0 ; =0x0000096D
	bx r3
	nop
_0206A9DC: .word sub_0206A8E4
_0206A9E0: .word 0x0000096D
	thumb_func_end sub_0206A9D4

	thumb_func_start sub_0206A9E4
sub_0206A9E4: ; 0x0206A9E4
	ldr r3, _0206A9EC ; =sub_0206A8EC
	ldr r1, _0206A9F0 ; =0x0000096D
	bx r3
	nop
_0206A9EC: .word sub_0206A8EC
_0206A9F0: .word 0x0000096D
	thumb_func_end sub_0206A9E4

	thumb_func_start sub_0206A9F4
sub_0206A9F4: ; 0x0206A9F4
	ldr r3, _0206A9FC ; =sub_0206A8DC
	ldr r1, _0206AA00 ; =0x0000096E
	bx r3
	nop
_0206A9FC: .word sub_0206A8DC
_0206AA00: .word 0x0000096E
	thumb_func_end sub_0206A9F4

	thumb_func_start sub_0206AA04
sub_0206AA04: ; 0x0206AA04
	ldr r3, _0206AA0C ; =sub_0206A8DC
	ldr r1, _0206AA10 ; =0x0000096F
	bx r3
	nop
_0206AA0C: .word sub_0206A8DC
_0206AA10: .word 0x0000096F
	thumb_func_end sub_0206AA04

	thumb_func_start sub_0206AA14
sub_0206AA14: ; 0x0206AA14
	ldr r3, _0206AA1C ; =sub_0206A8DC
	mov r1, #0x97
	lsl r1, r1, #4
	bx r3
	; .align 2, 0
_0206AA1C: .word sub_0206A8DC
	thumb_func_end sub_0206AA14

	thumb_func_start sub_0206AA20
sub_0206AA20: ; 0x0206AA20
	ldr r3, _0206AA28 ; =sub_0206A8DC
	ldr r1, _0206AA2C ; =0x00000971
	bx r3
	nop
_0206AA28: .word sub_0206A8DC
_0206AA2C: .word 0x00000971
	thumb_func_end sub_0206AA20

	thumb_func_start sub_0206AA30
sub_0206AA30: ; 0x0206AA30
	ldr r3, _0206AA38 ; =sub_0206A8DC
	ldr r1, _0206AA3C ; =0x00000972
	bx r3
	nop
_0206AA38: .word sub_0206A8DC
_0206AA3C: .word 0x00000972
	thumb_func_end sub_0206AA30

	thumb_func_start sub_0206AA40
sub_0206AA40: ; 0x0206AA40
	ldr r3, _0206AA48 ; =sub_0206A8DC
	ldr r1, _0206AA4C ; =0x00000973
	bx r3
	nop
_0206AA48: .word sub_0206A8DC
_0206AA4C: .word 0x00000973
	thumb_func_end sub_0206AA40

	thumb_func_start sub_0206AA50
sub_0206AA50: ; 0x0206AA50
	push {r3, lr}
	cmp r1, #4
	bhi _0206AA92
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206AA62: ; jump table
	.short _0206AA6C - _0206AA62 - 2 ; case 0
	.short _0206AA74 - _0206AA62 - 2 ; case 1
	.short _0206AA7C - _0206AA62 - 2 ; case 2
	.short _0206AA84 - _0206AA62 - 2 ; case 3
	.short _0206AA8C - _0206AA62 - 2 ; case 4
_0206AA6C:
	ldr r1, _0206AA94 ; =0x00000968
	bl sub_0206A8DC
	pop {r3, pc}
_0206AA74:
	ldr r1, _0206AA98 ; =0x00000969
	bl sub_0206A8DC
	pop {r3, pc}
_0206AA7C:
	ldr r1, _0206AA9C ; =0x0000096A
	bl sub_0206A8DC
	pop {r3, pc}
_0206AA84:
	ldr r1, _0206AAA0 ; =0x0000096B
	bl sub_0206A8DC
	pop {r3, pc}
_0206AA8C:
	ldr r1, _0206AAA4 ; =0x0000096C
	bl sub_0206A8DC
_0206AA92:
	pop {r3, pc}
	; .align 2, 0
_0206AA94: .word 0x00000968
_0206AA98: .word 0x00000969
_0206AA9C: .word 0x0000096A
_0206AAA0: .word 0x0000096B
_0206AAA4: .word 0x0000096C
	thumb_func_end sub_0206AA50

	thumb_func_start sub_0206AAA8
sub_0206AAA8: ; 0x0206AAA8
	push {r3, lr}
	cmp r1, #4
	bhi _0206AAEA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206AABA: ; jump table
	.short _0206AAC4 - _0206AABA - 2 ; case 0
	.short _0206AACC - _0206AABA - 2 ; case 1
	.short _0206AAD4 - _0206AABA - 2 ; case 2
	.short _0206AADC - _0206AABA - 2 ; case 3
	.short _0206AAE4 - _0206AABA - 2 ; case 4
_0206AAC4:
	ldr r1, _0206AAEC ; =0x00000968
	bl sub_0206A8EC
	pop {r3, pc}
_0206AACC:
	ldr r1, _0206AAF0 ; =0x00000969
	bl sub_0206A8EC
	pop {r3, pc}
_0206AAD4:
	ldr r1, _0206AAF4 ; =0x0000096A
	bl sub_0206A8EC
	pop {r3, pc}
_0206AADC:
	ldr r1, _0206AAF8 ; =0x0000096B
	bl sub_0206A8EC
	pop {r3, pc}
_0206AAE4:
	ldr r1, _0206AAFC ; =0x0000096C
	bl sub_0206A8EC
_0206AAEA:
	pop {r3, pc}
	; .align 2, 0
_0206AAEC: .word 0x00000968
_0206AAF0: .word 0x00000969
_0206AAF4: .word 0x0000096A
_0206AAF8: .word 0x0000096B
_0206AAFC: .word 0x0000096C
	thumb_func_end sub_0206AAA8

	thumb_func_start sub_0206AB00
sub_0206AB00: ; 0x0206AB00
	push {r3, lr}
	mov r2, #0
	cmp r1, #5
	bhi _0206AB52
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206AB14: ; jump table
	.short _0206AB52 - _0206AB14 - 2 ; case 0
	.short _0206AB20 - _0206AB14 - 2 ; case 1
	.short _0206AB2A - _0206AB14 - 2 ; case 2
	.short _0206AB36 - _0206AB14 - 2 ; case 3
	.short _0206AB40 - _0206AB14 - 2 ; case 4
	.short _0206AB4A - _0206AB14 - 2 ; case 5
_0206AB20:
	ldr r1, _0206AB58 ; =0x0000097F
	bl sub_0206A8EC
	add r2, r0, #0
	b _0206AB52
_0206AB2A:
	mov r1, #0x26
	lsl r1, r1, #6
	bl sub_0206A8EC
	add r2, r0, #0
	b _0206AB52
_0206AB36:
	ldr r1, _0206AB5C ; =0x00000981
	bl sub_0206A8EC
	add r2, r0, #0
	b _0206AB52
_0206AB40:
	ldr r1, _0206AB60 ; =0x00000982
	bl sub_0206A8EC
	add r2, r0, #0
	b _0206AB52
_0206AB4A:
	ldr r1, _0206AB64 ; =0x00000983
	bl sub_0206A8EC
	add r2, r0, #0
_0206AB52:
	add r0, r2, #0
	pop {r3, pc}
	nop
_0206AB58: .word 0x0000097F
_0206AB5C: .word 0x00000981
_0206AB60: .word 0x00000982
_0206AB64: .word 0x00000983
	thumb_func_end sub_0206AB00

	thumb_func_start sub_0206AB68
sub_0206AB68: ; 0x0206AB68
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _0206AD2C ; =0x00000132
	add r6, r0, #0
	mov r5, #0
	cmp r4, r1
	bgt _0206ABC6
	blt _0206AB7A
	b _0206AC7E
_0206AB7A:
	cmp r4, #0xc9
	bgt _0206ABA8
	blt _0206AB82
	b _0206ACCC
_0206AB82:
	cmp r4, #0x4b
	bgt _0206ABA0
	add r1, r4, #0
	sub r1, #0x48
	bmi _0206ABA6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206AB98: ; jump table
	.short _0206ACB2 - _0206AB98 - 2 ; case 0
	.short _0206ACB2 - _0206AB98 - 2 ; case 1
	.short _0206ACB2 - _0206AB98 - 2 ; case 2
	.short _0206ACB2 - _0206AB98 - 2 ; case 3
_0206ABA0:
	cmp r4, #0xb9
	bne _0206ABA6
	b _0206AD1A
_0206ABA6:
	b _0206AD28
_0206ABA8:
	add r2, r1, #0
	sub r2, #0x32
	cmp r4, r2
	bgt _0206ABBE
	sub r1, #0x32
	cmp r4, r1
	blt _0206ABB8
	b _0206ACE6
_0206ABB8:
	cmp r4, #0xfb
	beq _0206AC60
	b _0206AD28
_0206ABBE:
	sub r0, r1, #1
	cmp r4, r0
	beq _0206AC7E
	b _0206AD28
_0206ABC6:
	add r2, r1, #0
	add r2, #0x5d
	cmp r4, r2
	bgt _0206AC10
	add r2, r1, #0
	add r2, #0x5d
	cmp r4, r2
	blt _0206ABD8
	b _0206AD00
_0206ABD8:
	add r2, r1, #1
	cmp r4, r2
	bgt _0206ABE6
	add r0, r2, #0
	cmp r4, r0
	beq _0206AC7E
	b _0206AD28
_0206ABE6:
	add r1, r1, #2
	sub r1, r4, r1
	cmp r1, #0xa
	bhi _0206AC1E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206ABFA: ; jump table
	.short _0206AC7E - _0206ABFA - 2 ; case 0
	.short _0206AC7E - _0206ABFA - 2 ; case 1
	.short _0206AC7E - _0206ABFA - 2 ; case 2
	.short _0206AD28 - _0206ABFA - 2 ; case 3
	.short _0206AC44 - _0206ABFA - 2 ; case 4
	.short _0206AD28 - _0206ABFA - 2 ; case 5
	.short _0206AC28 - _0206ABFA - 2 ; case 6
	.short _0206AD28 - _0206ABFA - 2 ; case 7
	.short _0206AC36 - _0206ABFA - 2 ; case 8
	.short _0206AD28 - _0206ABFA - 2 ; case 9
	.short _0206AC52 - _0206ABFA - 2 ; case 10
_0206AC10:
	ldr r0, _0206AD30 ; =0x000001EE
	cmp r4, r0
	bgt _0206AC20
	bge _0206AC7E
	sub r0, #0x48
	cmp r4, r0
	beq _0206AC6E
_0206AC1E:
	b _0206AD28
_0206AC20:
	add r0, r0, #3
	cmp r4, r0
	beq _0206AC7E
	b _0206AD28
_0206AC28:
	ldr r1, _0206AD34 ; =0x00000984
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD38 ; =0x0000042E
	b _0206AD28
_0206AC36:
	ldr r1, _0206AD34 ; =0x00000984
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD3C ; =0x00000429
	b _0206AD28
_0206AC44:
	ldr r1, _0206AD40 ; =0x0000098E
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD38 ; =0x0000042E
	b _0206AD28
_0206AC52:
	ldr r1, _0206AD44 ; =0x0000098F
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD38 ; =0x0000042E
	b _0206AD28
_0206AC60:
	ldr r1, _0206AD48 ; =0x00000995
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD4C ; =0x0000042D
	b _0206AD28
_0206AC6E:
	ldr r1, _0206AD50 ; =0x00000993
	add r0, r6, #0
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD54 ; =0x0000044A
	b _0206AD28
_0206AC7E:
	ldr r1, _0206AD58 ; =0x00000985
	add r0, r6, #0
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AC9C
	bl sub_02013948
	cmp r0, #0
	bne _0206AC98
	mov r5, #0xfe
	lsl r5, r5, #2
	b _0206AD28
_0206AC98:
	ldr r5, _0206AD5C ; =0x00000415
	b _0206AD28
_0206AC9C:
	ldr r0, _0206AD60 ; =0x00000131
	cmp r4, r0
	bne _0206AD28
	ldr r1, _0206AD64 ; =0x00000986
	add r0, r6, #0
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD68 ; =0x0000042B
	b _0206AD28
_0206ACB2:
	ldr r1, _0206AD6C ; =0x00000987
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	bl sub_02013948
	cmp r0, #0
	bne _0206ACC8
	ldr r5, _0206AD70 ; =0x000003F5
	b _0206AD28
_0206ACC8:
	ldr r5, _0206AD74 ; =0x00000412
	b _0206AD28
_0206ACCC:
	ldr r1, _0206AD78 ; =0x00000988
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	bl sub_02013948
	cmp r0, #0
	bne _0206ACE2
	ldr r5, _0206AD7C ; =0x000003FF
	b _0206AD28
_0206ACE2:
	ldr r5, _0206AD80 ; =0x0000041C
	b _0206AD28
_0206ACE6:
	ldr r1, _0206AD84 ; =0x00000989
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	bl sub_02013948
	cmp r0, #0
	bne _0206ACFC
	ldr r5, _0206AD88 ; =0x000003EE
	b _0206AD28
_0206ACFC:
	ldr r5, _0206AD8C ; =0x0000040B
	b _0206AD28
_0206AD00:
	ldr r1, _0206AD90 ; =0x0000098A
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	bl sub_02013948
	cmp r0, #0
	bne _0206AD16
	ldr r5, _0206AD88 ; =0x000003EE
	b _0206AD28
_0206AD16:
	ldr r5, _0206AD8C ; =0x0000040B
	b _0206AD28
_0206AD1A:
	ldr r1, _0206AD94 ; =0x0000098B
	add r0, r6, #0
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD98 ; =0x000003E9
_0206AD28:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0206AD2C: .word 0x00000132
_0206AD30: .word 0x000001EE
_0206AD34: .word 0x00000984
_0206AD38: .word 0x0000042E
_0206AD3C: .word 0x00000429
_0206AD40: .word 0x0000098E
_0206AD44: .word 0x0000098F
_0206AD48: .word 0x00000995
_0206AD4C: .word 0x0000042D
_0206AD50: .word 0x00000993
_0206AD54: .word 0x0000044A
_0206AD58: .word 0x00000985
_0206AD5C: .word 0x00000415
_0206AD60: .word 0x00000131
_0206AD64: .word 0x00000986
_0206AD68: .word 0x0000042B
_0206AD6C: .word 0x00000987
_0206AD70: .word 0x000003F5
_0206AD74: .word 0x00000412
_0206AD78: .word 0x00000988
_0206AD7C: .word 0x000003FF
_0206AD80: .word 0x0000041C
_0206AD84: .word 0x00000989
_0206AD88: .word 0x000003EE
_0206AD8C: .word 0x0000040B
_0206AD90: .word 0x0000098A
_0206AD94: .word 0x0000098B
_0206AD98: .word 0x000003E9
	thumb_func_end sub_0206AB68

	thumb_func_start sub_0206AD9C
sub_0206AD9C: ; 0x0206AD9C
	ldr r3, _0206ADA4 ; =sub_0206A8DC
	ldr r1, _0206ADA8 ; =0x00000966
	bx r3
	nop
_0206ADA4: .word sub_0206A8DC
_0206ADA8: .word 0x00000966
	thumb_func_end sub_0206AD9C

	thumb_func_start sub_0206ADAC
sub_0206ADAC: ; 0x0206ADAC
	ldr r3, _0206ADB4 ; =sub_0206A8E4
	ldr r1, _0206ADB8 ; =0x00000966
	bx r3
	nop
_0206ADB4: .word sub_0206A8E4
_0206ADB8: .word 0x00000966
	thumb_func_end sub_0206ADAC

	thumb_func_start sub_0206ADBC
sub_0206ADBC: ; 0x0206ADBC
	ldr r3, _0206ADC4 ; =sub_0206A8EC
	ldr r1, _0206ADC8 ; =0x00000966
	bx r3
	nop
_0206ADC4: .word sub_0206A8EC
_0206ADC8: .word 0x00000966
	thumb_func_end sub_0206ADBC

	thumb_func_start sub_0206ADCC
sub_0206ADCC: ; 0x0206ADCC
	ldr r3, _0206ADD4 ; =sub_0206A8EC
	ldr r1, _0206ADD8 ; =0x00000978
	bx r3
	nop
_0206ADD4: .word sub_0206A8EC
_0206ADD8: .word 0x00000978
	thumb_func_end sub_0206ADCC

	thumb_func_start sub_0206ADDC
sub_0206ADDC: ; 0x0206ADDC
	ldr r3, _0206ADE4 ; =sub_0206A8EC
	ldr r1, _0206ADE8 ; =0x00000992
	bx r3
	nop
_0206ADE4: .word sub_0206A8EC
_0206ADE8: .word 0x00000992
	thumb_func_end sub_0206ADDC

	thumb_func_start sub_0206ADEC
sub_0206ADEC: ; 0x0206ADEC
	ldr r3, _0206ADF4 ; =sub_0206A8EC
	ldr r1, _0206ADF8 ; =0x0000097D
	bx r3
	nop
_0206ADF4: .word sub_0206A8EC
_0206ADF8: .word 0x0000097D
	thumb_func_end sub_0206ADEC

	thumb_func_start sub_0206ADFC
sub_0206ADFC: ; 0x0206ADFC
	ldr r3, _0206AE04 ; =sub_0206A8EC
	ldr r1, _0206AE08 ; =0x0000097E
	bx r3
	nop
_0206AE04: .word sub_0206A8EC
_0206AE08: .word 0x0000097E
	thumb_func_end sub_0206ADFC

	thumb_func_start sub_0206AE0C
sub_0206AE0C: ; 0x0206AE0C
	ldr r3, _0206AE14 ; =sub_0206A8DC
	ldr r1, _0206AE18 ; =0x0000097C
	bx r3
	nop
_0206AE14: .word sub_0206A8DC
_0206AE18: .word 0x0000097C
	thumb_func_end sub_0206AE0C

	thumb_func_start sub_0206AE1C
sub_0206AE1C: ; 0x0206AE1C
	ldr r3, _0206AE24 ; =sub_0206A8E4
	ldr r1, _0206AE28 ; =0x0000097C
	bx r3
	nop
_0206AE24: .word sub_0206A8E4
_0206AE28: .word 0x0000097C
	thumb_func_end sub_0206AE1C

	thumb_func_start sub_0206AE2C
sub_0206AE2C: ; 0x0206AE2C
	ldr r3, _0206AE34 ; =sub_0206A8EC
	ldr r1, _0206AE38 ; =0x0000097C
	bx r3
	nop
_0206AE34: .word sub_0206A8EC
_0206AE38: .word 0x0000097C
	thumb_func_end sub_0206AE2C

	thumb_func_start sub_0206AE3C
sub_0206AE3C: ; 0x0206AE3C
	ldr r3, _0206AE44 ; =sub_0206A8DC
	ldr r1, _0206AE48 ; =0x00000967
	bx r3
	nop
_0206AE44: .word sub_0206A8DC
_0206AE48: .word 0x00000967
	thumb_func_end sub_0206AE3C

	thumb_func_start sub_0206AE4C
sub_0206AE4C: ; 0x0206AE4C
	ldr r3, _0206AE54 ; =sub_0206A8E4
	ldr r1, _0206AE58 ; =0x00000967
	bx r3
	nop
_0206AE54: .word sub_0206A8E4
_0206AE58: .word 0x00000967
	thumb_func_end sub_0206AE4C

	thumb_func_start sub_0206AE5C
sub_0206AE5C: ; 0x0206AE5C
	ldr r3, _0206AE64 ; =sub_0206A8EC
	ldr r1, _0206AE68 ; =0x00000967
	bx r3
	nop
_0206AE64: .word sub_0206A8EC
_0206AE68: .word 0x00000967
	thumb_func_end sub_0206AE5C

	thumb_func_start sub_0206AE6C
sub_0206AE6C: ; 0x0206AE6C
	ldr r3, _0206AE74 ; =sub_0206A8DC
	ldr r1, _0206AE78 ; =0x00000979
	bx r3
	nop
_0206AE74: .word sub_0206A8DC
_0206AE78: .word 0x00000979
	thumb_func_end sub_0206AE6C

	thumb_func_start sub_0206AE7C
sub_0206AE7C: ; 0x0206AE7C
	ldr r3, _0206AE84 ; =sub_0206A8E4
	ldr r1, _0206AE88 ; =0x00000979
	bx r3
	nop
_0206AE84: .word sub_0206A8E4
_0206AE88: .word 0x00000979
	thumb_func_end sub_0206AE7C

	thumb_func_start sub_0206AE8C
sub_0206AE8C: ; 0x0206AE8C
	ldr r3, _0206AE94 ; =sub_0206A8EC
	ldr r1, _0206AE98 ; =0x00000979
	bx r3
	nop
_0206AE94: .word sub_0206A8EC
_0206AE98: .word 0x00000979
	thumb_func_end sub_0206AE8C

	thumb_func_start sub_0206AE9C
sub_0206AE9C: ; 0x0206AE9C
	ldr r3, _0206AEA4 ; =sub_0206A8E4
	ldr r1, _0206AEA8 ; =0x00000994
	bx r3
	nop
_0206AEA4: .word sub_0206A8E4
_0206AEA8: .word 0x00000994
	thumb_func_end sub_0206AE9C

	thumb_func_start sub_0206AEAC
sub_0206AEAC: ; 0x0206AEAC
	ldr r3, _0206AEB4 ; =sub_0206A8F4
	ldr r2, _0206AEB8 ; =0x00000962
	bx r3
	nop
_0206AEB4: .word sub_0206A8F4
_0206AEB8: .word 0x00000962
	thumb_func_end sub_0206AEAC

	thumb_func_start sub_0206AEBC
sub_0206AEBC: ; 0x0206AEBC
	ldr r3, _0206AEC4 ; =sub_0206A8DC
	ldr r1, _0206AEC8 ; =0x0000097A
	bx r3
	nop
_0206AEC4: .word sub_0206A8DC
_0206AEC8: .word 0x0000097A
	thumb_func_end sub_0206AEBC

	thumb_func_start sub_0206AECC
sub_0206AECC: ; 0x0206AECC
	ldr r3, _0206AED4 ; =sub_0206A8E4
	ldr r1, _0206AED8 ; =0x0000097A
	bx r3
	nop
_0206AED4: .word sub_0206A8E4
_0206AED8: .word 0x0000097A
	thumb_func_end sub_0206AECC

	thumb_func_start sub_0206AEDC
sub_0206AEDC: ; 0x0206AEDC
	ldr r3, _0206AEE4 ; =sub_0206A8EC
	ldr r1, _0206AEE8 ; =0x0000097A
	bx r3
	nop
_0206AEE4: .word sub_0206A8EC
_0206AEE8: .word 0x0000097A
	thumb_func_end sub_0206AEDC

	thumb_func_start sub_0206AEEC
sub_0206AEEC: ; 0x0206AEEC
	ldr r3, _0206AEF4 ; =sub_0206A8DC
	ldr r1, _0206AEF8 ; =0x0000097B
	bx r3
	nop
_0206AEF4: .word sub_0206A8DC
_0206AEF8: .word 0x0000097B
	thumb_func_end sub_0206AEEC

	thumb_func_start sub_0206AEFC
sub_0206AEFC: ; 0x0206AEFC
	ldr r3, _0206AF04 ; =sub_0206A8E4
	ldr r1, _0206AF08 ; =0x0000097B
	bx r3
	nop
_0206AF04: .word sub_0206A8E4
_0206AF08: .word 0x0000097B
	thumb_func_end sub_0206AEFC

	thumb_func_start sub_0206AF0C
sub_0206AF0C: ; 0x0206AF0C
	ldr r3, _0206AF14 ; =sub_0206A8EC
	ldr r1, _0206AF18 ; =0x0000097B
	bx r3
	nop
_0206AF14: .word sub_0206A8EC
_0206AF18: .word 0x0000097B
	thumb_func_end sub_0206AF0C

	thumb_func_start sub_0206AF1C
sub_0206AF1C: ; 0x0206AF1C
	ldr r3, _0206AF24 ; =sub_0206A8F4
	ldr r2, _0206AF28 ; =0x00000996
	bx r3
	nop
_0206AF24: .word sub_0206A8F4
_0206AF28: .word 0x00000996
	thumb_func_end sub_0206AF1C

	thumb_func_start sub_0206AF2C
sub_0206AF2C: ; 0x0206AF2C
	ldr r3, _0206AF34 ; =sub_0206A8F4
	ldr r2, _0206AF38 ; =0x00000963
	bx r3
	nop
_0206AF34: .word sub_0206A8F4
_0206AF38: .word 0x00000963
	thumb_func_end sub_0206AF2C

	thumb_func_start sub_0206AF3C
sub_0206AF3C: ; 0x0206AF3C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #0x45
	blo _0206AF4C
	bl sub_02022974
_0206AF4C:
	mov r2, #0x9b
	lsl r2, r2, #4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r2
	bl sub_0206A8F4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206AF3C

	thumb_func_start sub_0206AF5C
sub_0206AF5C: ; 0x0206AF5C
	ldr r3, _0206AF64 ; =sub_0206A8DC
	ldr r1, _0206AF68 ; =0x0000098C
	bx r3
	nop
_0206AF64: .word sub_0206A8DC
_0206AF68: .word 0x0000098C
	thumb_func_end sub_0206AF5C

	thumb_func_start sub_0206AF6C
sub_0206AF6C: ; 0x0206AF6C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #0x14
	blt _0206AF7C
	bl sub_02022974
_0206AF7C:
	ldr r2, _0206AF8C ; =0x00000997
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r2
	bl sub_0206A8F4
	pop {r4, r5, r6, pc}
	nop
_0206AF8C: .word 0x00000997
	thumb_func_end sub_0206AF6C

	thumb_func_start sub_0206AF90
sub_0206AF90: ; 0x0206AF90
	ldr r3, _0206AF98 ; =sub_0206A8E4
	ldr r1, _0206AF9C ; =0x000009AB
	bx r3
	nop
_0206AF98: .word sub_0206A8E4
_0206AF9C: .word 0x000009AB
	thumb_func_end sub_0206AF90

	thumb_func_start sub_0206AFA0
sub_0206AFA0: ; 0x0206AFA0
	ldr r3, _0206AFA8 ; =sub_0206A8E4
	ldr r1, _0206AFAC ; =0x000009AC
	bx r3
	nop
_0206AFA8: .word sub_0206A8E4
_0206AFAC: .word 0x000009AC
	thumb_func_end sub_0206AFA0

	thumb_func_start sub_0206AFB0
sub_0206AFB0: ; 0x0206AFB0
	ldr r3, _0206AFB8 ; =0x000009AE
	add r2, r2, r3
	ldr r3, _0206AFBC ; =sub_0206A8F4
	bx r3
	; .align 2, 0
_0206AFB8: .word 0x000009AE
_0206AFBC: .word sub_0206A8F4
	thumb_func_end sub_0206AFB0

	thumb_func_start sub_0206AFC0
sub_0206AFC0: ; 0x0206AFC0
	ldr r3, _0206AFC8 ; =sub_0206A8F4
	ldr r2, _0206AFCC ; =0x000009AD
	bx r3
	nop
_0206AFC8: .word sub_0206A8F4
_0206AFCC: .word 0x000009AD
	thumb_func_end sub_0206AFC0

	thumb_func_start sub_0206AFD0
sub_0206AFD0: ; 0x0206AFD0
	ldr r3, _0206AFD8 ; =sub_0206A8F4
	mov r1, #2
	ldr r2, _0206AFDC ; =0x00000977
	bx r3
	; .align 2, 0
_0206AFD8: .word sub_0206A8F4
_0206AFDC: .word 0x00000977
	thumb_func_end sub_0206AFD0