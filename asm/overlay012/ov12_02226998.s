	.include "macros/function.inc"



	.extern ov12_02226B1C
    .extern ov12_0222AE68
    .extern ov12_0222FE30
    .extern ov12_0222D56C
    .extern ov12_02230CEC
    .extern ov12_02231010
    .extern ov12_022312A4
    .extern ov12_02231650
    .extern ov12_02231950
    .extern ov12_02231C1C
    .extern ov12_0222777C
    .extern ov12_02232378
    .extern ov12_022329E0
    .extern ov12_02232CA8
    .extern ov12_02233454
    .extern ov12_02233734
    .extern ov12_022339C4
    .extern ov12_0222CC54
    .extern ov12_02234008
    .extern ov12_0222D7C0
    .extern ov12_0222DB60
    .extern ov12_0222DEFC
    .extern ov12_0222E2F8
    .extern ov12_0222E61C
    .extern ov12_0222EC90
    .extern ov12_0222A1AC
    .extern ov12_0222A34C
    .extern ov12_0222A410
    .extern ov12_0222A5C0
    .extern ov12_022346A4
    .extern ov12_02234A10
    .extern ov12_022348C8
    .extern ov12_02234D98
	.extern ov12_022269C0
    .extern ov12_022269EC
    .extern ov12_02226A3C
    .extern ov12_02226A88
    .extern ov12_02227408
    .extern ov12_0222B194
    .extern ov12_0222B45C
    .extern ov12_0222B68C
    .extern ov12_0222F770
    .extern ov12_0222F9E4
    .extern ov12_02227534
    .extern ov12_022300C4
    .extern ov12_022303D0
    .extern ov12_0222B9E0
    .extern ov12_0222BAE4
    .extern ov12_0222BCF4
    .extern ov12_0222BE48
    .extern ov12_02230754
    .extern ov12_02230804
    .extern ov12_0222BFA8
    .extern ov12_02230A8C
    .extern ov12_0222C0C0
    .extern ov12_0222C3C0
    .extern ov12_02231444
    .extern ov12_0222C5FC
    .extern ov12_02231E7C
    .extern ov12_0222C6D4
    .extern ov12_0222C8F8
    .extern ov12_0222CA2C
    .extern ov12_0223249C
    .extern ov12_022326AC
    .extern ov12_02232024
    .extern ov12_02233178
    .extern ov12_02227828
    .extern ov12_0222797C
    .extern ov12_02227CBC
    .extern ov12_02226CB0
    .extern ov12_02233CD4
    .extern ov12_02228168
    .extern ov12_0222CB90
    .extern ov12_02228214
    .extern ov12_02233F30
    .extern ov12_02227F30
    .extern ov12_02234214
    .extern ov12_02226EB0
    .extern ov12_022271D8
    .extern ov12_022342C4
    .extern ov12_022344D0
    .extern ov12_0223464C
    .extern ov12_0222CFA0
    .extern ov12_022282BC
    .extern ov12_02228394
    .extern ov12_02228520
    .extern ov12_022287CC
    .extern ov12_02228A0C
    .extern ov12_0222E1A8
    .extern ov12_02228B40
    .extern ov12_02228C6C
    .extern ov12_0222E810
    .extern ov12_0222EAA0
    .extern ov12_02228E00
    .extern ov12_02228EC0
    .extern ov12_022290DC
    .extern ov12_022291AC
    .extern ov12_02229304
    .extern ov12_02229B28
    .extern ov12_02229E54
    .extern ov12_02229638
    .extern ov12_02229810
    .extern ov12_02229908
    .extern ov12_0222EFB0
    .extern ov12_0222F2F8
    .extern ov12_0222A00C
    .extern ov12_02229C5C
    .extern ov12_0222A604
    .extern ov12_0222A8F4
    .extern ov12_0222AC40
    .extern ov12_02228FB4
    .extern ov12_0222AB50
    .extern ov12_0222F5EC
    .extern ov12_022351A4
    .extern ov12_022351D0
    .extern ov12_022351FC
    .extern ov12_02235228


	.text


	thumb_func_start ov12_02226998
ov12_02226998: ; 0x02226998
	cmp r0, #0x54
	blo _022269A0
	mov r0, #0
	bx lr
_022269A0:
	lsl r1, r0, #2
	ldr r0, _022269A8 ; =0x02239EEC
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_022269A8: .word Unk_ov12_02239EEC
	thumb_func_end ov12_02226998

	thumb_func_start ov12_022269AC
ov12_022269AC: ; 0x022269AC
	cmp r0, #0x21
	blo _022269B4
	mov r0, #0
	bx lr
_022269B4:
	lsl r1, r0, #2
	ldr r0, _022269BC ; =0x02239E68
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_022269BC: .word Unk_ov12_02239E68
	thumb_func_end ov12_022269AC

	.rodata


	.global Unk_ov12_02239E64
Unk_ov12_02239E64: ; 0x02239E64
	.incbin "incbin/overlay12_rodata.bin", 0x18D0, 0x18D4 - 0x18D0

	.global Unk_ov12_02239E68
Unk_ov12_02239E68: ; 0x02239E68
	.word ov12_02226B1C
    .word ov12_0222AE68
    .word ov12_0222FE30
    .word ov12_0222D56C
    .word ov12_02230CEC
    .word ov12_02231010
    .word ov12_022312A4
    .word ov12_02231650
    .word ov12_02231950
    .word ov12_02231C1C
    .word ov12_0222777C
    .word ov12_02232378
    .word ov12_022329E0
    .word ov12_02232CA8
    .word ov12_02233454
    .word ov12_02233734
    .word ov12_022339C4
    .word ov12_0222CC54
    .word ov12_02234008
    .word ov12_0222D7C0
    .word ov12_0222DB60
    .word ov12_0222DEFC
    .word ov12_0222E2F8
    .word ov12_0222E61C
    .word ov12_0222EC90
    .word ov12_0222A1AC
    .word ov12_0222A34C
    .word ov12_0222A410
    .word ov12_0222A5C0
    .word ov12_022346A4
    .word ov12_02234A10
    .word ov12_022348C8
    .word ov12_02234D98

	.global Unk_ov12_02239EEC
Unk_ov12_02239EEC: ; 0x02239EEC
	.word ov12_022269C0
    .word ov12_022269EC
    .word ov12_02226A3C
    .word ov12_02226A88
    .word ov12_02227408
    .word ov12_0222B194
    .word ov12_0222B45C
    .word ov12_0222B68C
    .word ov12_0222F770
    .word ov12_0222F9E4
    .word ov12_02227534
    .word ov12_022300C4
    .word ov12_022303D0
    .word ov12_0222B9E0
    .word ov12_0222BAE4
    .word ov12_0222BCF4
    .word ov12_0222BE48
    .word ov12_02230754
    .word ov12_02230804
    .word ov12_0222BFA8
    .word ov12_02230A8C
    .word ov12_0222C0C0
    .word ov12_0222C3C0
    .word ov12_02231444
    .word ov12_0222C5FC
    .word ov12_02231E7C
    .word ov12_0222C6D4
    .word ov12_0222C8F8
    .word ov12_0222CA2C
    .word ov12_0223249C
    .word ov12_022326AC
    .word ov12_02232024
    .word ov12_02233178
    .word ov12_02227828
    .word ov12_0222797C
    .word ov12_02227CBC
    .word ov12_02226CB0
    .word ov12_02233CD4
    .word ov12_02228168
    .word ov12_0222CB90
    .word ov12_02228214
    .word ov12_02233F30
    .word ov12_02227F30
    .word ov12_02234214
    .word ov12_02226EB0
    .word ov12_022271D8
    .word ov12_022342C4
    .word ov12_022344D0
    .word ov12_0223464C
    .word ov12_0222CFA0
    .word ov12_022282BC
    .word ov12_02228394
    .word ov12_02228520
    .word ov12_022287CC
    .word ov12_02228A0C
    .word ov12_0222E1A8
    .word ov12_02228B40
    .word ov12_02228C6C
    .word ov12_0222E810
    .word ov12_0222EAA0
    .word ov12_02228E00
    .word ov12_02228EC0
    .word ov12_022290DC
    .word ov12_022291AC
    .word ov12_02229304
    .word ov12_02229B28
    .word ov12_02229E54
    .word ov12_02229638
    .word ov12_02229810
    .word ov12_02229908
    .word ov12_0222EFB0
    .word ov12_0222F2F8
    .word ov12_0222A00C
    .word ov12_02229C5C
    .word ov12_0222A604
    .word ov12_0222A8F4
    .word ov12_0222AC40
    .word ov12_02228FB4
    .word ov12_0222AB50
    .word ov12_0222F5EC
    .word ov12_022351A4
    .word ov12_022351D0
    .word ov12_022351FC
    .word ov12_02235228

