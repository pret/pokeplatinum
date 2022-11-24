	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov10_0221F800
ov10_0221F800: ; 0x0221F800
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0221F85C ; =ov10_0221F870
	ldr r1, _0221F860 ; =0x00000BD4
	ldr r3, [r5, #0x24]
	mov r2, #0x64
	bl sub_0200679C
	bl sub_0201CED0
	ldr r2, _0221F860 ; =0x00000BD4
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _0221F864 ; =0x00000B7F
	str r5, [r4, #0]
	mov r1, #0
	strb r1, [r4, r0]
	bl sub_0202FAC0
	ldr r1, _0221F868 ; =0x00000BC8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0221F858
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0221F858
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0221F858
	bl sub_0207D990
	ldr r1, _0221F86C ; =0x000001D1
	ldr r3, [r5, #0x24]
	mov r2, #1
	bl sub_0207D688
	ldr r1, _0221F868 ; =0x00000BC8
	str r0, [r4, r1]
_0221F858:
	pop {r3, r4, r5, pc}
	nop
_0221F85C: .word ov10_0221F870
_0221F860: .word 0x00000BD4
_0221F864: .word 0x00000B7F
_0221F868: .word 0x00000BC8
_0221F86C: .word 0x000001D1
	thumb_func_end ov10_0221F800

	thumb_func_start ov10_0221F870
ov10_0221F870: ; 0x0221F870
	push {r4, r5, r6, lr}
	ldr r2, _0221F8F8 ; =0x00000B7F
	add r5, r1, #0
	ldrb r2, [r5, r2]
	cmp r2, #0
	beq _0221F886
	cmp r2, #1
	beq _0221F892
	cmp r2, #2
	beq _0221F8C4
	b _0221F8CC
_0221F886:
	add r0, r5, #0
	bl ov10_0221FB28
	ldr r1, _0221F8F8 ; =0x00000B7F
	strb r0, [r5, r1]
	b _0221F8CC
_0221F892:
	mov r4, #0x2e
	lsl r4, r4, #6
	add r6, r4, #0
_0221F898:
	ldrb r1, [r5, r6]
	ldr r2, [r5, #4]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	blx r1
	cmp r0, #0
	beq _0221F8AE
	ldrb r1, [r5, r4]
	add r1, r1, #1
	strb r1, [r5, r4]
_0221F8AE:
	cmp r0, #2
	beq _0221F898
	ldr r0, [r5, #0]
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0221F8CC
	add r0, r5, #0
	bl ov10_0221F930
	b _0221F8CC
_0221F8C4:
	bl ov10_02220A50
	cmp r0, #1
	beq _0221F8F6
_0221F8CC:
	mov r0, #0x2e
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0221F8E6
	add r0, r5, #0
	bl ov10_02220C2C
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200C7EC
_0221F8E6:
	ldr r0, [r5, #0]
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0221F8F6
	ldr r0, _0221F8FC ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
_0221F8F6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0221F8F8: .word 0x00000B7F
_0221F8FC: .word 0x04000540
	thumb_func_end ov10_0221F870

	thumb_func_start ov10_0221F900
ov10_0221F900: ; 0x0221F900
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0221F92C ; =0x02222C10
	add r3, sp, #0
	mov r2, #5
_0221F90A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221F90A
	add r0, sp, #0
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	add sp, #0x28
	pop {r4, pc}
	nop
_0221F92C: .word 0x02222C10
	thumb_func_end ov10_0221F900

	thumb_func_start ov10_0221F930
ov10_0221F930: ; 0x0221F930
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov10_02222A08
	cmp r0, #0
	bne _0221F940
	b _0221FB08
_0221F940:
	ldr r2, _0221FB0C ; =0x00000BBC
	ldr r0, [r4, r2]
	cmp r0, #8
	bhi _0221F9BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221F954: ; jump table
	.short _0221FB08 - _0221F954 - 2 ; case 0
	.short _0221F966 - _0221F954 - 2 ; case 1
	.short _0221F9A6 - _0221F954 - 2 ; case 2
	.short _0221F9C4 - _0221F954 - 2 ; case 3
	.short _0221FA5C - _0221F954 - 2 ; case 4
	.short _0221FA98 - _0221F954 - 2 ; case 5
	.short _0221FB08 - _0221F954 - 2 ; case 6
	.short _0221FAD8 - _0221F954 - 2 ; case 7
	.short _0221FB08 - _0221F954 - 2 ; case 8
_0221F966:
	add r0, r4, #0
	bl ov10_022229D4
	ldr r2, _0221FB10 ; =0x00000BAC
	mov r1, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221FB14 ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0221FB18 ; =0x00000BB8
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0201C3C0
	ldr r0, _0221FB0C ; =0x00000BBC
	mov r1, #2
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221F9A6:
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0221F9BA
	ldr r0, _0221FB1C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0221F9BC
_0221F9BA:
	b _0221FB08
_0221F9BC:
	mov r0, #3
	add sp, #0xc
	str r0, [r4, r2]
	pop {r3, r4, pc}
_0221F9C4:
	add r0, r2, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0221F9E0
	add r0, r2, #0
	sub r0, #0x10
	sub r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #2
	bl sub_0200B1B8
	b _0221F9F0
_0221F9E0:
	add r0, r2, #0
	sub r0, #0x10
	sub r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0200B1B8
_0221F9F0:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, _0221FB20 ; =0x00000B98
	mov r2, #0
	add r0, r4, r0
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r0, _0221FB20 ; =0x00000B98
	mov r1, #0
	add r0, r4, r0
	mov r2, #1
	mov r3, #0xf
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221FB20 ; =0x00000B98
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x1c
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0221FB18 ; =0x00000BB8
	mov r2, #0x1f
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0221FB24 ; =0x02222A68
	ldr r0, [r0, #0x24]
	mov r3, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl sub_02002054
	mov r1, #0x2f
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0201C3C0
	ldr r0, _0221FB0C ; =0x00000BBC
	mov r1, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221FA5C:
	ldr r1, [r4, #0]
	add r0, r2, #4
	ldr r0, [r4, r0]
	ldr r1, [r1, #0x24]
	bl sub_02002114
	cmp r0, #0
	beq _0221FA78
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0221FA88
	add sp, #0xc
	pop {r3, r4, pc}
_0221FA78:
	ldr r0, _0221FB0C ; =0x00000BBC
	mov r1, #5
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221FA88:
	ldr r0, _0221FB0C ; =0x00000BBC
	mov r1, #1
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221FA98:
	add r0, r4, #0
	bl ov10_022229D4
	ldr r2, _0221FB10 ; =0x00000BAC
	mov r1, #5
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221FB14 ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0221FB18 ; =0x00000BB8
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0201C3C0
	ldr r0, _0221FB0C ; =0x00000BBC
	mov r1, #6
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221FAD8:
	add r0, r2, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0221FAF0
	ldr r1, [r4, #0]
	ldr r1, [r1, #0x24]
	bl sub_02002154
	mov r0, #0x2f
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_0221FAF0:
	ldr r0, _0221FB14 ; =0x00000B88
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0201C3C0
	ldr r0, _0221FB0C ; =0x00000BBC
	mov r1, #8
	str r1, [r4, r0]
_0221FB08:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0221FB0C: .word 0x00000BBC
_0221FB10: .word 0x00000BAC
_0221FB14: .word 0x00000B88
_0221FB18: .word 0x00000BB8
_0221FB1C: .word 0x021BF67C
_0221FB20: .word 0x00000B98
_0221FB24: .word 0x02222A68
	thumb_func_end ov10_0221F930

	thumb_func_start ov10_0221FB28
ov10_0221FB28: ; 0x0221FB28
	push {r4, lr}
	ldr r1, _0221FBDC ; =0x04000050
	add r4, r0, #0
	mov r0, #0
	strh r0, [r1]
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0221FBE0 ; =0xFFFFE0FF
	ldr r3, _0221FBE4 ; =0x04001000
	and r2, r1
	str r2, [r0, #0]
	ldr r2, [r3, #0]
	add r0, #0x50
	and r1, r2
	str r1, [r3, #0]
	mov r1, #0
	strh r1, [r0]
	add r3, #0x50
	strh r1, [r3]
	bl ov10_0221F900
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	bl sub_02018340
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	bl sub_02002F38
	str r0, [r4, #8]
	ldr r3, [r4, #0]
	mov r2, #2
	ldr r3, [r3, #0x24]
	mov r1, #0
	lsl r2, r2, #8
	bl sub_02002F70
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	ldr r0, _0221FBE8 ; =0x00000B82
	mov r3, #0
	strb r3, [r4, r0]
	sub r1, r0, #1
	mov r2, #8
	strb r2, [r4, r1]
	sub r0, r0, #2
	strb r3, [r4, r0]
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0221FBB6
	cmp r0, #1
	beq _0221FBBC
	cmp r0, #2
	beq _0221FBC2
	b _0221FBD8
_0221FBB6:
	ldr r0, _0221FBEC ; =0x02222AD0
	str r0, [r4, #4]
	b _0221FBD8
_0221FBBC:
	ldr r0, _0221FBF0 ; =0x02222AA8
	str r0, [r4, #4]
	b _0221FBD8
_0221FBC2:
	add r1, #0x2a
	ldrb r0, [r1]
	cmp r0, #3
	bne _0221FBCE
	ldr r0, _0221FBF4 ; =0x02222C38
	b _0221FBD0
_0221FBCE:
	ldr r0, _0221FBF8 ; =0x02222CA8
_0221FBD0:
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov10_022227A4
_0221FBD8:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0221FBDC: .word 0x04000050
_0221FBE0: .word 0xFFFFE0FF
_0221FBE4: .word 0x04001000
_0221FBE8: .word 0x00000B82
_0221FBEC: .word 0x02222AD0
_0221FBF0: .word 0x02222AA8
_0221FBF4: .word 0x02222C38
_0221FBF8: .word 0x02222CA8
	thumb_func_end ov10_0221FB28

	thumb_func_start ov10_0221FBFC
ov10_0221FBFC: ; 0x0221FBFC
	push {r4, lr}
	ldr r1, _0221FC70 ; =0x00000B82
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0221FC12
	cmp r2, #1
	beq _0221FC1E
	cmp r2, #2
	beq _0221FC2A
	b _0221FC64
_0221FC12:
	bl ov10_02221970
	add r0, r4, #0
	bl ov10_02221A3C
	b _0221FC64
_0221FC1E:
	bl ov10_02221E58
	add r0, r4, #0
	bl ov10_02222050
	b _0221FC64
_0221FC2A:
	mov r2, #0
	strb r2, [r4, r1]
	mov r2, #0x20
	sub r1, r1, #1
	strb r2, [r4, r1]
	bl ov10_02221AE4
	add r0, r4, #0
	bl ov10_022223C0
	add r0, r4, #0
	bl ov10_02222720
	add r0, r4, #0
	bl ov10_02221C14
	bl sub_02039734
	ldr r1, [r4, #0]
	mov r0, #0
	ldr r1, [r1, #0x24]
	bl sub_0208C120
	ldr r0, _0221FC74 ; =ov10_02220C64
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	pop {r4, pc}
_0221FC64:
	ldr r0, _0221FC70 ; =0x00000B82
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0221FC70: .word 0x00000B82
_0221FC74: .word ov10_02220C64
	thumb_func_end ov10_0221FBFC

	thumb_func_start ov10_0221FC78
ov10_0221FC78: ; 0x0221FC78
	push {r4, lr}
	ldr r1, _0221FCF8 ; =0x00000B82
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0221FC8E
	cmp r1, #1
	beq _0221FCA2
	cmp r1, #2
	beq _0221FCBC
	b _0221FCEA
_0221FC8E:
	mov r1, #1
	mov r2, #0
	bl ov10_02220C94
	add r0, r4, #0
	bl ov10_02220E70
	bl ov10_02221004
	b _0221FCEA
_0221FCA2:
	mov r1, #0
	add r2, r1, #0
	bl ov10_022214A0
	add r0, r4, #0
	bl ov10_0222101C
	bl sub_02039734
	add r0, r4, #0
	bl ov10_022217CC
	b _0221FCEA
_0221FCBC:
	ldr r1, [r4, #0]
	mov r0, #0
	ldr r1, [r1, #0x24]
	bl sub_0208C120
	ldr r0, _0221FCFC ; =ov10_02220C64
	add r1, r4, #0
	bl sub_02017798
	ldr r1, _0221FCF8 ; =0x00000B82
	mov r0, #0
	strb r0, [r4, r1]
	mov r2, #8
	sub r0, r1, #6
	strb r2, [r4, r0]
	sub r0, r1, #5
	mov r2, #4
	strb r2, [r4, r0]
	mov r0, #0x10
	sub r1, #0xe
	str r0, [r4, r1]
	mov r0, #1
	pop {r4, pc}
_0221FCEA:
	ldr r0, _0221FCF8 ; =0x00000B82
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	nop
_0221FCF8: .word 0x00000B82
_0221FCFC: .word ov10_02220C64
	thumb_func_end ov10_0221FC78

	thumb_func_start ov10_0221FD00
ov10_0221FD00: ; 0x0221FD00
	push {r3, r4, r5, lr}
	ldr r1, _0221FDF8 ; =0x00000B82
	add r5, r0, #0
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _0221FD16
	cmp r1, #1
	beq _0221FD72
	cmp r1, #2
	beq _0221FD8A
	b _0221FDEA
_0221FD16:
	mov r1, #0
	mov r2, #1
	bl ov10_02220C94
	add r0, r5, #0
	bl ov10_02220E70
	add r0, r5, #0
	bl ov10_02220F1C
	bl ov10_02221004
	ldr r2, [r5, #0]
	mov r0, #7
	ldr r1, [r2, #0]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	ldr r1, [r2, #0x24]
	add r2, sp, #0
	mov r3, #0
	bl sub_0202F330
	ldr r1, [sp]
	ldr r0, _0221FDFC ; =0x00000BCC
	mov r4, #0
	str r1, [r5, r0]
	add r0, r0, #4
	str r4, [r5, r0]
_0221FD4E:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _0221FD6A
	bl sub_02025FCC
	cmp r0, #0
	bne _0221FD6A
	mov r0, #0xbd
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _0221FDEA
_0221FD6A:
	add r4, r4, #1
	cmp r4, #8
	blt _0221FD4E
	b _0221FDEA
_0221FD72:
	mov r1, #0x1f
	mvn r1, r1
	add r2, r1, #0
	add r2, #0x10
	bl ov10_022214A0
	add r0, r5, #0
	bl ov10_02221588
	bl sub_02039734
	b _0221FDEA
_0221FD8A:
	ldr r1, [r5, #0]
	mov r0, #0
	ldr r1, [r1, #0x24]
	bl sub_0208C120
	ldr r0, _0221FE00 ; =ov10_02220C64
	add r1, r5, #0
	bl sub_02017798
	ldr r2, _0221FDF8 ; =0x00000B82
	mov r0, #0
	strb r0, [r5, r2]
	mov r3, #4
	sub r1, r2, #6
	strb r3, [r5, r1]
	sub r1, r2, #5
	mov r3, #2
	strb r3, [r5, r1]
	mov r1, #0xc
	sub r2, #0xe
	str r1, [r5, r2]
	ldr r3, [r5, #0]
	ldr r2, _0221FE04 ; =0x0000025D
	ldr r3, [r3, #0x24]
	mov r1, #0x1a
	bl sub_0200B144
	ldr r1, _0221FE08 ; =0x00000BAC
	str r0, [r5, r1]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x24]
	bl sub_0200B358
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r1, [r5, #0]
	mov r0, #5
	ldr r1, [r1, #0x24]
	lsl r0, r0, #6
	bl sub_02023790
	ldr r1, _0221FE0C ; =0x00000BB4
	str r0, [r5, r1]
	mov r0, #1
	add r1, #8
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_0221FDEA:
	ldr r0, _0221FDF8 ; =0x00000B82
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0221FDF8: .word 0x00000B82
_0221FDFC: .word 0x00000BCC
_0221FE00: .word ov10_02220C64
_0221FE04: .word 0x0000025D
_0221FE08: .word 0x00000BAC
_0221FE0C: .word 0x00000BB4
	thumb_func_end ov10_0221FD00

	thumb_func_start ov10_0221FE10
ov10_0221FE10: ; 0x0221FE10
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _0221FE20
	mov r0, #0
	pop {r4, pc}
_0221FE20:
	ldr r1, _0221FE44 ; =0x00000B81
	add r0, r1, #1
	ldrb r2, [r4, r1]
	ldrb r0, [r4, r0]
	cmp r2, r0
	bne _0221FE36
	mov r2, #0
	add r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0221FE36:
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0221FE44: .word 0x00000B81
	thumb_func_end ov10_0221FE10

	thumb_func_start ov10_0221FE48
ov10_0221FE48: ; 0x0221FE48
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_020192EC
	cmp r0, #0x18
	bgt _0221FEE4
	ldr r1, _0222000C ; =0x00000B82
	mov r2, #0
	add r0, r1, #0
	strb r2, [r4, r1]
	sub r0, #0xa
	strh r2, [r4, r0]
	sub r1, #8
	strh r2, [r4, r1]
	ldr r0, [r4, #0xc]
	mov r1, #3
	mov r3, #0x18
	bl sub_0201C63C
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r4, #0xc]
	mov r1, #2
	sub r3, #0x18
	bl sub_0201C63C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov10_02221188
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl ov10_02221188
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl ov10_02221188
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl ov10_02221188
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov10_02221440
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl ov10_02221440
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl ov10_02221440
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl ov10_02221440
	mov r0, #1
	pop {r3, r4, r5, pc}
_0221FEE4:
	ldr r3, _02220010 ; =0x00000B74
	ldr r0, [r4, #0xc]
	ldr r3, [r4, r3]
	mov r1, #3
	mov r2, #2
	bl sub_0201C63C
	ldr r3, _02220010 ; =0x00000B74
	ldr r0, [r4, #0xc]
	ldr r3, [r4, r3]
	mov r1, #2
	mov r2, #1
	bl sub_0201C63C
	ldr r3, _0222000C ; =0x00000B82
	mov r1, #0
	ldrb r0, [r4, r3]
	add r2, r3, #0
	sub r2, #0xe
	add r0, r0, #1
	strb r0, [r4, r3]
	ldr r5, [r4, r2]
	ldrb r2, [r4, r3]
	add r3, r5, #0
	add r0, r4, #0
	mul r3, r2
	mov r2, #1
	lsl r2, r2, #8
	sub r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add r3, r1, #0
	bl ov10_02221188
	ldr r2, _02220010 ; =0x00000B74
	mov r1, #1
	ldr r3, [r4, r2]
	add r2, #0xe
	add r5, r3, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	mov r3, #0
	mul r5, r2
	add r2, r1, #0
	add r2, #0xff
	sub r2, r5, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220010 ; =0x00000B74
	mov r1, #2
	ldr r3, [r4, r2]
	add r2, #0xe
	add r5, r3, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	mov r3, #0
	mul r5, r2
	add r2, r1, #0
	add r2, #0xfe
	sub r2, r2, r5
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220010 ; =0x00000B74
	mov r1, #3
	ldr r3, [r4, r2]
	add r2, #0xe
	add r5, r3, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	mov r3, #0
	mul r5, r2
	add r2, r1, #0
	add r2, #0xfd
	sub r2, r2, r5
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220010 ; =0x00000B74
	mov r1, #0
	ldr r3, [r4, r2]
	add r2, #0xe
	add r5, r3, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	add r3, r1, #0
	mul r5, r2
	mov r2, #1
	lsl r2, r2, #8
	sub r2, r5, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220010 ; =0x00000B74
	mov r1, #1
	ldr r3, [r4, r2]
	add r2, #0xe
	add r5, r3, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	mov r3, #0
	mul r5, r2
	add r2, r1, #0
	add r2, #0xff
	sub r2, r5, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220010 ; =0x00000B74
	mov r1, #2
	ldr r3, [r4, r2]
	add r2, #0xe
	add r5, r3, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	mov r3, #0
	mul r5, r2
	add r2, r1, #0
	add r2, #0xfe
	sub r2, r2, r5
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220010 ; =0x00000B74
	add r0, r4, #0
	ldr r3, [r4, r2]
	add r2, #0xe
	ldrb r2, [r4, r2]
	add r4, r3, #0
	mov r1, #3
	mul r4, r2
	add r2, r1, #0
	add r2, #0xfd
	sub r2, r2, r4
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	mov r3, #0
	bl ov10_02221440
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222000C: .word 0x00000B82
_02220010: .word 0x00000B74
	thumb_func_end ov10_0221FE48

	thumb_func_start ov10_02220014
ov10_02220014: ; 0x02220014
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov10_022218BC
	cmp r0, #0
	bne _02220030
	ldr r0, _02220210 ; =0x00000B82
	ldrb r1, [r5, r0]
	cmp r1, #0x18
	bls _02220030
	mov r1, #0
	strb r1, [r5, r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02220030:
	ldr r0, _02220210 ; =0x00000B82
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _02220050
	ldr r0, [r5, #0]
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0222004A
	ldr r0, _02220214 ; =0x00000715
	bl sub_02005748
	b _02220050
_0222004A:
	ldr r0, _02220218 ; =0x00000852
	bl sub_02005748
_02220050:
	ldr r0, _02220210 ; =0x00000B82
	ldrb r1, [r5, r0]
	cmp r1, #0x18
	bne _022200EC
	ldr r0, [r5, #0xc]
	mov r1, #3
	mov r2, #0
	mov r3, #0x18
	bl sub_0201C63C
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r5, #0xc]
	mov r1, #2
	sub r3, #0x18
	bl sub_0201C63C
	mov r1, #3
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	mov r3, #0
	bl sub_0201C63C
	ldr r0, [r5, #0xc]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov10_02221188
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl ov10_02221188
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl ov10_02221188
	mov r2, #0
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl ov10_02221188
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov10_02221440
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl ov10_02221440
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl ov10_02221440
	mov r2, #0
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl ov10_02221440
	b _02220204
_022200EC:
	blo _022200F0
	b _02220204
_022200F0:
	sub r0, r0, #6
	ldrsb r4, [r5, r0]
	bl sub_0201D2E8
	add r1, r4, #0
	bl sub_020E1F6C
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, _0222021C ; =0x00000B7D
	ldrsb r4, [r5, r0]
	bl sub_0201D2E8
	add r1, r4, #0
	bl sub_020E1F6C
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r6, #0
	bge _02220130
	ldr r0, _02220220 ; =0x00000B78
	ldrsh r0, [r5, r0]
	cmp r0, #0
	blt _0222013C
_02220130:
	cmp r6, #0
	ble _02220146
	ldr r0, _02220220 ; =0x00000B78
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02220146
_0222013C:
	mov r0, #0
	mvn r0, r0
	mul r0, r6
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_02220146:
	cmp r4, #0
	bge _02220152
	ldr r0, _02220224 ; =0x00000B7A
	ldrsh r0, [r5, r0]
	cmp r0, #0
	blt _0222015E
_02220152:
	cmp r4, #0
	ble _02220168
	ldr r0, _02220224 ; =0x00000B7A
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02220168
_0222015E:
	mov r0, #0
	mvn r0, r0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_02220168:
	add r3, r6, #0
	ldr r0, [r5, #0xc]
	mov r1, #3
	mov r2, #0
	add r3, #0x18
	bl sub_0201C63C
	add r3, r6, #0
	ldr r0, [r5, #0xc]
	mov r1, #2
	mov r2, #0
	sub r3, #0x18
	bl sub_0201C63C
	mov r1, #3
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	add r3, r4, #0
	bl sub_0201C63C
	ldr r0, [r5, #0xc]
	mov r1, #2
	mov r2, #3
	add r3, r4, #0
	bl sub_0201C63C
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov10_02221188
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	add r3, r4, #0
	bl ov10_02221188
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	add r3, r4, #0
	bl ov10_02221188
	add r0, r5, #0
	mov r1, #3
	add r2, r6, #0
	add r3, r4, #0
	bl ov10_02221188
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov10_02221440
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	add r3, r4, #0
	bl ov10_02221440
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	add r3, r4, #0
	bl ov10_02221440
	add r0, r5, #0
	mov r1, #3
	add r2, r6, #0
	add r3, r4, #0
	bl ov10_02221440
	ldr r0, _02220220 ; =0x00000B78
	strh r6, [r5, r0]
	add r0, r0, #2
	strh r4, [r5, r0]
_02220204:
	ldr r0, _02220210 ; =0x00000B82
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02220210: .word 0x00000B82
_02220214: .word 0x00000715
_02220218: .word 0x00000852
_0222021C: .word 0x00000B7D
_02220220: .word 0x00000B78
_02220224: .word 0x00000B7A
	thumb_func_end ov10_02220014

	thumb_func_start ov10_02220228
ov10_02220228: ; 0x02220228
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _02220340 ; =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #8
	bne _02220250
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r3, _02220344 ; =0x00007FFF
	ldr r0, [r0, #0x24]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
_02220250:
	ldr r0, _02220340 ; =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #8
	blo _0222026C
	bl sub_0200F2AC
	cmp r0, #1
	bne _0222026C
	ldr r0, _02220348 ; =0x00000B7F
	mov r1, #2
	strb r1, [r4, r0]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0222026C:
	ldr r0, _02220340 ; =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0222027A
	ldr r0, _0222034C ; =0x00000719
	bl sub_02005748
_0222027A:
	ldr r0, [r4, #0xc]
	mov r1, #3
	mov r2, #1
	mov r3, #0x10
	bl sub_0201C63C
	mov r1, #2
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	mov r3, #0x10
	bl sub_0201C63C
	ldr r2, _02220340 ; =0x00000B82
	mov r1, #0
	ldrb r0, [r4, r2]
	add r3, r1, #0
	add r0, r0, #1
	strb r0, [r4, r2]
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r2, r2, #4
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220340 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	mov r3, #0
	lsl r2, r2, #4
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220340 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #2
	mov r3, #0
	lsl r2, r2, #0x14
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220340 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	mov r3, #0
	lsl r2, r2, #0x14
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220340 ; =0x00000B82
	mov r1, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	add r3, r1, #0
	lsl r2, r2, #4
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220340 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	mov r3, #0
	lsl r2, r2, #4
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220340 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #2
	mov r3, #0
	lsl r2, r2, #0x14
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220340 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	mov r3, #0
	lsl r2, r2, #0x14
	asr r2, r2, #0x10
	bl ov10_02221440
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02220340: .word 0x00000B82
_02220344: .word 0x00007FFF
_02220348: .word 0x00000B7F
_0222034C: .word 0x00000719
	thumb_func_end ov10_02220228

	thumb_func_start ov10_02220350
ov10_02220350: ; 0x02220350
	ldr r1, _0222035C ; =0x00000B81
	mov r2, #0x10
	strb r2, [r0, r1]
	mov r0, #2
	bx lr
	nop
_0222035C: .word 0x00000B81
	thumb_func_end ov10_02220350

	thumb_func_start ov10_02220360
ov10_02220360: ; 0x02220360
	push {r4, lr}
	add r4, r0, #0
	bl ov10_02220AD0
	cmp r0, #1
	ldr r0, [r4, #0]
	bne _02220384
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	ldr r0, _0222039C ; =0x00000B7E
	bne _0222037E
	mov r1, #0
	strb r1, [r4, r0]
	b _02220398
_0222037E:
	mov r1, #1
	strb r1, [r4, r0]
	b _02220398
_02220384:
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	ldr r0, _0222039C ; =0x00000B7E
	bne _02220394
	mov r1, #1
	strb r1, [r4, r0]
	b _02220398
_02220394:
	mov r1, #0
	strb r1, [r4, r0]
_02220398:
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
_0222039C: .word 0x00000B7E
	thumb_func_end ov10_02220360

	thumb_func_start ov10_022203A0
ov10_022203A0: ; 0x022203A0
	push {r3, lr}
	ldr r1, _022203B8 ; =0x00000B7E
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _022203B0
	bl ov10_022203BC
	pop {r3, pc}
_022203B0:
	bl ov10_022204C0
	pop {r3, pc}
	nop
_022203B8: .word 0x00000B7E
	thumb_func_end ov10_022203A0

	thumb_func_start ov10_022203BC
ov10_022203BC: ; 0x022203BC
	push {r3, r4, r5, lr}
	ldr r3, _022204B0 ; =0x00000B82
	add r4, r0, #0
	ldrb r3, [r4, r3]
	mov r1, #2
	ldr r0, [r4, #0xc]
	lsl r5, r3, #1
	ldr r3, _022204B4 ; =0x02222A7C
	add r2, r1, #0
	ldrb r3, [r3, r5]
	bl sub_0201C63C
	ldr r3, _022204B0 ; =0x00000B82
	ldr r0, [r4, #0xc]
	ldrb r3, [r4, r3]
	mov r1, #3
	mov r2, #2
	lsl r5, r3, #1
	ldr r3, _022204B4 ; =0x02222A7C
	ldrb r3, [r3, r5]
	bl sub_0201C63C
	ldr r2, _022204B0 ; =0x00000B82
	mov r1, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r3, r2, #1
	ldr r2, _022204B8 ; =0x02222A7D
	ldrb r2, [r2, r3]
	add r3, r1, #0
	bl ov10_02221188
	ldr r2, _022204B0 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	lsl r3, r2, #1
	ldr r2, _022204B8 ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	bl ov10_02221188
	ldr r2, _022204B0 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #2
	lsl r3, r2, #1
	ldr r2, _022204B8 ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	bl ov10_02221188
	ldr r2, _022204B0 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	lsl r3, r2, #1
	ldr r2, _022204B8 ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	bl ov10_02221188
	ldr r2, _022204B0 ; =0x00000B82
	mov r1, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r3, r2, #1
	ldr r2, _022204B8 ; =0x02222A7D
	ldrb r2, [r2, r3]
	add r3, r1, #0
	bl ov10_02221440
	ldr r2, _022204B0 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	lsl r3, r2, #1
	ldr r2, _022204B8 ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	bl ov10_02221440
	ldr r2, _022204B0 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #2
	lsl r3, r2, #1
	ldr r2, _022204B8 ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	bl ov10_02221440
	ldr r2, _022204B0 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	lsl r3, r2, #1
	ldr r2, _022204B8 ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	bl ov10_02221440
	ldr r0, _022204B0 ; =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02220496
	ldr r0, _022204BC ; =0x00000853
	bl sub_02005748
_02220496:
	ldr r0, _022204B0 ; =0x00000B82
	ldrb r1, [r4, r0]
	cmp r1, #5
	bne _022204A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_022204A6:
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022204B0: .word 0x00000B82
_022204B4: .word 0x02222A7C
_022204B8: .word 0x02222A7D
_022204BC: .word 0x00000853
	thumb_func_end ov10_022203BC

	thumb_func_start ov10_022204C0
ov10_022204C0: ; 0x022204C0
	push {r3, r4, r5, lr}
	ldr r3, _022205E4 ; =0x00000B82
	add r4, r0, #0
	ldrb r3, [r4, r3]
	ldr r0, [r4, #0xc]
	mov r1, #2
	lsl r5, r3, #1
	ldr r3, _022205E8 ; =0x02222A7C
	mov r2, #1
	ldrb r3, [r3, r5]
	bl sub_0201C63C
	ldr r3, _022205E4 ; =0x00000B82
	ldr r0, [r4, #0xc]
	ldrb r3, [r4, r3]
	mov r1, #3
	mov r2, #1
	lsl r5, r3, #1
	ldr r3, _022205E8 ; =0x02222A7C
	ldrb r3, [r3, r5]
	bl sub_0201C63C
	ldr r2, _022205E4 ; =0x00000B82
	mov r1, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r3, r2, #1
	ldr r2, _022205EC ; =0x02222A7D
	ldrb r2, [r2, r3]
	add r3, r1, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _022205E4 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	lsl r3, r2, #1
	ldr r2, _022205EC ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _022205E4 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #2
	lsl r3, r2, #1
	ldr r2, _022205EC ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _022205E4 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	lsl r3, r2, #1
	ldr r2, _022205EC ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _022205E4 ; =0x00000B82
	mov r1, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r3, r2, #1
	ldr r2, _022205EC ; =0x02222A7D
	ldrb r2, [r2, r3]
	add r3, r1, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _022205E4 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	lsl r3, r2, #1
	ldr r2, _022205EC ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _022205E4 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #2
	lsl r3, r2, #1
	ldr r2, _022205EC ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _022205E4 ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	lsl r3, r2, #1
	ldr r2, _022205EC ; =0x02222A7D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov10_02221440
	ldr r0, _022205E4 ; =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022205CA
	ldr r0, _022205F0 ; =0x00000853
	bl sub_02005748
_022205CA:
	ldr r0, _022205E4 ; =0x00000B82
	ldrb r1, [r4, r0]
	cmp r1, #5
	bne _022205DA
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_022205DA:
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022205E4: .word 0x00000B82
_022205E8: .word 0x02222A7C
_022205EC: .word 0x02222A7D
_022205F0: .word 0x00000853
	thumb_func_end ov10_022204C0

	thumb_func_start ov10_022205F4
ov10_022205F4: ; 0x022205F4
	ldr r1, _02220600 ; =0x00000B81
	mov r2, #0x10
	strb r2, [r0, r1]
	mov r0, #2
	bx lr
	nop
_02220600: .word 0x00000B81
	thumb_func_end ov10_022205F4

	thumb_func_start ov10_02220604
ov10_02220604: ; 0x02220604
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _0222068C ; =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02220648
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	lsl r0, r0, #0x1a
	add r3, r0, #0
	ldr r2, [r0, #0]
	ldr r1, _02220690 ; =0xFFFF1FFF
	add r3, #0x48
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	ldrh r5, [r3]
	mov r2, #0x3f
	mov r1, #0x1f
	bic r5, r2
	orr r5, r1
	mov r1, #0x20
	orr r1, r5
	strh r1, [r3]
	add r0, #0x4a
	ldrh r3, [r0]
	mov r1, #0x1d
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
_02220648:
	ldr r3, _0222068C ; =0x00000B82
	ldrb r1, [r4, r3]
	cmp r1, #0x10
	bne _02220668
	mov r0, #0
	mov r1, #0x20
	strb r0, [r4, r3]
	sub r0, r3, #1
	strb r1, [r4, r0]
	lsl r2, r1, #0x15
	ldr r1, [r2, #0]
	ldr r0, _02220690 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02220668:
	mov r2, #0x47
	sub r2, r2, r1
	add r1, #0x48
	lsl r1, r1, #0x18
	mov r6, #0xff
	ldr r0, _02220694 ; =0x04000040
	lsl r5, r2, #8
	lsl r2, r6, #8
	and r2, r5
	lsr r1, r1, #0x18
	strh r6, [r0]
	orr r1, r2
	strh r1, [r0, #4]
	ldrb r0, [r4, r3]
	add r0, r0, #1
	strb r0, [r4, r3]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222068C: .word 0x00000B82
_02220690: .word 0xFFFF1FFF
_02220694: .word 0x04000040
	thumb_func_end ov10_02220604

	thumb_func_start ov10_02220698
ov10_02220698: ; 0x02220698
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022206D0 ; =0x0000071A
	bl sub_02005748
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	ldr r0, _022206D4 ; =0x00000B81
	mov r1, #0x20
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_022206D0: .word 0x0000071A
_022206D4: .word 0x00000B81
	thumb_func_end ov10_02220698

	thumb_func_start ov10_022206D8
ov10_022206D8: ; 0x022206D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022206F8 ; =0x0000071A
	bl sub_02005748
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, _022206FC ; =0x00000B81
	mov r1, #0x40
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_022206F8: .word 0x0000071A
_022206FC: .word 0x00000B81
	thumb_func_end ov10_022206D8

	thumb_func_start ov10_02220700
ov10_02220700: ; 0x02220700
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov10_02222A08
	cmp r0, #0
	bne _02220718
	ldr r1, _02220894 ; =0x00000B81
	mov r0, #1
	add sp, #0xc
	strb r0, [r4, r1]
	pop {r3, r4, pc}
_02220718:
	mov r0, #0xbd
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02220730
	sub r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02220730
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_02220730:
	ldr r0, _02220898 ; =0x00000BBC
	ldr r1, [r4, r0]
	cmp r1, #5
	bne _0222073E
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0222073E:
	cmp r1, #6
	beq _02220758
	cmp r1, #5
	beq _02220758
	cmp r1, #7
	beq _02220758
	cmp r1, #8
	beq _02220758
	mov r1, #7
	str r1, [r4, r0]
	mov r1, #0xff
	sub r0, #0x3a
	strb r1, [r4, r0]
_02220758:
	ldr r0, _0222089C ; =0x00000B82
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0222076A
	cmp r1, #1
	beq _022207A8
	cmp r1, #2
	beq _02220842
	b _02220860
_0222076A:
	add r0, r4, #0
	bl ov10_022229D4
	ldr r2, _022208A0 ; =0x00000BAC
	mov r1, #8
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	ldr r2, _022208A4 ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0201D738
	ldr r1, _022208A8 ; =0x00000BB8
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov10_02222A28
	ldr r0, _0222089C ; =0x00000B82
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02220884
_022207A8:
	add r2, r0, #2
	add r0, r0, #4
	ldr r1, [r4, #0]
	add r2, r4, r2
	str r2, [sp]
	add r0, r4, r0
	str r0, [sp, #4]
	ldr r2, [r1, #0]
	mov r0, #7
	add r1, #0x2c
	lsl r0, r0, #6
	ldr r0, [r2, r0]
	mov r2, #0
	ldrb r1, [r1]
	add r3, r2, #0
	bl sub_0202F41C
	cmp r0, #2
	bne _022207E4
	ldr r2, _022208A0 ; =0x00000BAC
	mov r1, #6
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r0, _022208AC ; =0x0000061B
	bl sub_02005748
	b _022207F6
_022207E4:
	cmp r0, #3
	bne _02220884
	ldr r2, _022208A0 ; =0x00000BAC
	mov r1, #7
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
_022207F6:
	add r0, r4, #0
	bl ov10_02222A48
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, _022208A4 ; =0x00000B88
	mov r2, #0
	add r0, r4, r0
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	mov r3, #0
	str r3, [sp]
	ldr r2, _022208A4 ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0201D738
	ldr r1, _022208A8 ; =0x00000BB8
	mov r2, #0
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x37
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x36
	ldrb r0, [r4, r0]
	sub r1, #0x36
	add r0, r0, #1
	strb r0, [r4, r1]
	b _02220884
_02220842:
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x1e
	bls _02220884
	mov r2, #0
	sub r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02220884
_02220860:
	add r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl sub_0200E084
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0201C3C0
	ldr r0, _0222089C ; =0x00000B82
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #0x15
	sub r0, r0, #1
	strb r1, [r4, r0]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02220884:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0201C3C0
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02220894: .word 0x00000B81
_02220898: .word 0x00000BBC
_0222089C: .word 0x00000B82
_022208A0: .word 0x00000BAC
_022208A4: .word 0x00000B88
_022208A8: .word 0x00000BB8
_022208AC: .word 0x0000061B
	thumb_func_end ov10_02220700

	thumb_func_start ov10_022208B0
ov10_022208B0: ; 0x022208B0
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02220938 ; =0x00000B82
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _022208C4
	cmp r1, #1
	beq _02220910
	b _02220926
_022208C4:
	bl ov10_022229D4
	ldr r2, _0222093C ; =0x00000BAC
	mov r1, #9
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	ldr r2, _02220940 ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02220944 ; =0x00000BB8
	str r0, [r4, r1]
	mov r0, #0x3e
	bl sub_020364F0
	ldr r0, _02220948 ; =0x00000BC8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02220906
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
_02220906:
	ldr r0, _02220938 ; =0x00000B82
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0222092A
_02220910:
	mov r0, #0x3e
	bl sub_02036540
	cmp r0, #0
	beq _0222092A
	ldr r0, _02220938 ; =0x00000B82
	mov r1, #0
	strb r1, [r4, r0]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02220926:
	bl sub_02022974
_0222092A:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0201C3C0
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02220938: .word 0x00000B82
_0222093C: .word 0x00000BAC
_02220940: .word 0x00000B88
_02220944: .word 0x00000BB8
_02220948: .word 0x00000BC8
	thumb_func_end ov10_022208B0

	thumb_func_start ov10_0222094C
ov10_0222094C: ; 0x0222094C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov10_02220AD0
	cmp r0, #1
	ldr r0, [r4, #0]
	bne _0222098E
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0222097A
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #0x40
	add r3, r1, #0
	bl sub_02003120
	b _022209BE
_0222097A:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r2, #0x40
	add r3, r1, #0
	bl sub_02003120
	b _022209BE
_0222098E:
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _022209AA
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r2, #0x40
	add r3, r1, #0
	bl sub_02003120
	b _022209BE
_022209AA:
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #0x40
	add r3, r1, #0
	bl sub_02003120
_022209BE:
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200387C
	ldr r0, _022209D8 ; =0x0000071B
	bl sub_02005748
	ldr r0, _022209DC ; =0x00000B81
	mov r1, #0x40
	strb r1, [r4, r0]
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_022209D8: .word 0x0000071B
_022209DC: .word 0x00000B81
	thumb_func_end ov10_0222094C

	thumb_func_start ov10_022209E0
ov10_022209E0: ; 0x022209E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02220A2C ; =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022209F2
	ldr r0, _02220A30 ; =0x00000719
	bl sub_02005748
_022209F2:
	ldr r1, _02220A2C ; =0x00000B82
	ldrb r0, [r4, r1]
	cmp r0, #0x10
	bne _02220A08
	mov r0, #0
	strb r0, [r4, r1]
	mov r2, #0x40
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02220A08:
	add r0, r0, #1
	strb r0, [r4, r1]
	ldrb r2, [r4, r1]
	mov r1, #0x10
	add r0, r4, #0
	sub r1, r1, r2
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ov10_02222340
	ldr r1, _02220A2C ; =0x00000B82
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov10_02221C48
	mov r0, #0
	pop {r4, pc}
	nop
_02220A2C: .word 0x00000B82
_02220A30: .word 0x00000719
	thumb_func_end ov10_022209E0

	thumb_func_start ov10_02220A34
ov10_02220A34: ; 0x02220A34
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #1
	ldr r1, [r1, #0x24]
	bl sub_0208C120
	ldr r0, _02220A4C ; =0x00000B7F
	mov r1, #2
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02220A4C: .word 0x00000B7F
	thumb_func_end ov10_02220A34

	thumb_func_start ov10_02220A50
ov10_02220A50: ; 0x02220A50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _02220A62
	mov r0, #0
	pop {r3, r4, r5, pc}
_02220A62:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov10_02222A48
	ldr r0, [r4, #0]
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _02220A9A
	add r0, r4, #0
	bl ov10_02220DCC
	add r0, r4, #0
	bl ov10_02220DFC
	add r0, r4, #0
	bl ov10_02220E30
	add r0, r4, #0
	bl ov10_022218F4
	add r0, r4, #0
	bl ov10_0222146C
	b _02220AA6
_02220A9A:
	add r0, r4, #0
	bl ov10_02221A10
	add r0, r4, #0
	bl ov10_022223E8
_02220AA6:
	add r0, r4, #0
	bl ov10_02220BE8
	bl sub_0201DC3C
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #8]
	bl sub_02002F54
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x2b
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020067D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov10_02220A50

	thumb_func_start ov10_02220AD0
ov10_02220AD0: ; 0x02220AD0
	push {r3, lr}
	bl sub_0203608C
	bl sub_020362F4
	cmp r0, #3
	bhi _02220AFA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02220AEA: ; jump table
	.short _02220AF2 - _02220AEA - 2 ; case 0
	.short _02220AF6 - _02220AEA - 2 ; case 1
	.short _02220AF2 - _02220AEA - 2 ; case 2
	.short _02220AF6 - _02220AEA - 2 ; case 3
_02220AF2:
	mov r0, #1
	pop {r3, pc}
_02220AF6:
	mov r0, #0
	pop {r3, pc}
_02220AFA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov10_02220AD0

	thumb_func_start ov10_02220B00
ov10_02220B00: ; 0x02220B00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	str r1, [sp]
	ldr r1, [r5, #0]
	mov r0, #0x40
	ldr r1, [r1, #0x24]
	add r4, r2, #0
	bl sub_0201DBEC
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x24]
	bl sub_0200C6E4
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_0200C704
	mov r1, #0x65
	lsl r1, r1, #2
	add r2, sp, #0x18
	ldr r3, _02220B98 ; =0x02222BF0
	str r0, [r5, r1]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02220B9C ; =0x02222ABC
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	mov r0, #0x65
	lsl r0, r0, #2
	str r4, [sp, #4]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r2, r7, #0
	mov r3, #0x10
	bl sub_0200C73C
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C7C0
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [sp]
	bl sub_0200CB30
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220B98: .word 0x02222BF0
_02220B9C: .word 0x02222ABC
	thumb_func_end ov10_02220B00

	thumb_func_start ov10_02220BA0
ov10_02220BA0: ; 0x02220BA0
	push {lr}
	sub sp, #0x34
	add r2, r0, #0
	mov r0, #0
	add r3, sp, #0
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r3, [r1, #0x14]
	str r3, [sp, #8]
	ldr r3, [r1, #0x18]
	str r3, [sp, #0xc]
	mov r3, #1
	str r3, [sp, #0x10]
	ldr r3, [r1, #0]
	str r3, [sp, #0x14]
	ldr r3, [r1, #4]
	str r3, [sp, #0x18]
	ldr r3, [r1, #8]
	str r3, [sp, #0x1c]
	ldr r3, [r1, #0xc]
	str r3, [sp, #0x20]
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x2c]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #0x30]
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	add r2, sp, #0
	bl sub_0200CE6C
	add sp, #0x34
	pop {pc}
	thumb_func_end ov10_02220BA0

	thumb_func_start ov10_02220BE8
ov10_02220BE8: ; 0x02220BE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	bls _02220C12
	mov r7, #0x21
	add r5, r6, #0
	lsl r7, r7, #4
_02220BFE:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _02220BFE
_02220C12:
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r0, [r6, r1]
	add r1, r1, #4
	ldr r1, [r6, r1]
	bl sub_0200D0B0
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200C8D4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov10_02220BE8

	thumb_func_start ov10_02220C2C
ov10_02220C2C: ; 0x02220C2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _02220C60
	mov r7, #0x66
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x78
_02220C44:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _02220C44
_02220C60:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov10_02220C2C

	thumb_func_start ov10_02220C64
ov10_02220C64: ; 0x02220C64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201C2B8
	ldr r0, [r4, #8]
	bl sub_02003694
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r3, _02220C8C ; =0x027E0000
	ldr r1, _02220C90 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02220C8C: .word 0x027E0000
_02220C90: .word 0x00003FF8
	thumb_func_end ov10_02220C64

	thumb_func_start ov10_02220C94
ov10_02220C94: ; 0x02220C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	add r5, r0, #0
	ldr r0, _02220DB0 ; =0x00000BA8
	add r4, r1, #0
	ldr r6, _02220DB4 ; =0x02222A88
	str r4, [r5, r0]
	add r3, sp, #0x70
	add r7, r2, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	str r4, [sp, #0x7c]
	bl sub_02018368
	ldr r6, _02220DB8 ; =0x02222B2C
	add r3, sp, #0x54
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r5, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl sub_02019EBC
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	add r3, #0xfd
	bl sub_0201C63C
	ldr r6, _02220DBC ; =0x02222B64
	add r3, sp, #0x38
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r5, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019EBC
	mov r3, #0xff
	ldr r0, [r5, #0xc]
	mov r1, #2
	mov r2, #0
	mvn r3, r3
	bl sub_0201C63C
	ldr r6, _02220DC0 ; =0x02222B80
	add r3, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r5, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02019EBC
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	cmp r7, #1
	bne _02220D64
	ldr r0, [r5, #0xc]
	mov r1, #1
	mov r2, #3
	mov r3, #0x18
	bl sub_02019184
_02220D64:
	cmp r4, #0
	bne _02220DAC
	ldr r4, _02220DC4 ; =0x02222BB8
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, [r5, #0xc]
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_02019EBC
	ldr r0, _02220DC8 ; =0x00000BC8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02220DA4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
_02220DA4:
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
_02220DAC:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220DB0: .word 0x00000BA8
_02220DB4: .word 0x02222A88
_02220DB8: .word 0x02222B2C
_02220DBC: .word 0x02222B64
_02220DC0: .word 0x02222B80
_02220DC4: .word 0x02222BB8
_02220DC8: .word 0x00000BC8
	thumb_func_end ov10_02220C94

	thumb_func_start ov10_02220DCC
ov10_02220DCC: ; 0x02220DCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02220DF4 ; =0x00000B94
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02220DE0
	sub r0, #0xc
	add r0, r4, r0
	bl sub_0201A8FC
_02220DE0:
	ldr r0, _02220DF8 ; =0x00000BA4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02220DF0
	sub r0, #0xc
	add r0, r4, r0
	bl sub_0201A8FC
_02220DF0:
	pop {r4, pc}
	nop
_02220DF4: .word 0x00000B94
_02220DF8: .word 0x00000BA4
	thumb_func_end ov10_02220DCC

	thumb_func_start ov10_02220DFC
ov10_02220DFC: ; 0x02220DFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02220E28 ; =0x00000BB4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02220E0C
	bl sub_020237BC
_02220E0C:
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02220E1A
	bl sub_0200B3F0
_02220E1A:
	ldr r0, _02220E2C ; =0x00000BAC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02220E26
	bl sub_0200B190
_02220E26:
	pop {r4, pc}
	; .align 2, 0
_02220E28: .word 0x00000BB4
_02220E2C: .word 0x00000BAC
	thumb_func_end ov10_02220DFC

	thumb_func_start ov10_02220E30
ov10_02220E30: ; 0x02220E30
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, _02220E6C ; =0x00000BA8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02220E64
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02019044
_02220E64:
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_02220E6C: .word 0x00000BA8
	thumb_func_end ov10_02220E30

	thumb_func_start ov10_02220E70
ov10_02220E70: ; 0x02220E70
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x6c
	ldr r1, [r1, #0x24]
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [r5, #0]
	mov r3, #1
	ldr r2, [r2, #0x24]
	add r4, r0, #0
	str r2, [sp, #0xc]
	ldr r2, [r5, #0xc]
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #4
	ldr r0, [r0, #0x24]
	mov r3, #1
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #2
	ldr r0, [r0, #0x24]
	add r3, r1, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #0x24]
	add r3, r1, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0x24]
	add r3, r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02007130
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	mov r3, #0xa0
	bl sub_02003070
	ldr r1, _02220F18 ; =0x000018C6
	mov r0, #1
	bl sub_0201975C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02220F18: .word 0x000018C6
	thumb_func_end ov10_02220E70

	thumb_func_start ov10_02220F1C
ov10_02220F1C: ; 0x02220F1C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _02220FF8 ; =0x00000BA8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02220F40
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02220F40
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02220F40
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02220F44
_02220F40:
	bl sub_02022974
_02220F44:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	mov r2, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r3, #0xf
	bl sub_0200DD0C
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0xf0
	mov r3, #0x20
	bl sub_02003070
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	mov r2, #0x1f
	ldr r0, [r0, #0x24]
	mov r3, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl sub_0200DAA4
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0xe0
	mov r3, #0x20
	bl sub_02003070
	ldr r2, [r4, #0]
	mov r1, #0x1a
	ldr r2, [r2, #0x24]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E7C
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0xd0
	mov r3, #0x20
	bl sub_02003070
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02220FFC ; =0x00000B88
	str r0, [sp, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02221000 ; =0x00000B98
	str r0, [sp, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02220FF8: .word 0x00000BA8
_02220FFC: .word 0x00000B88
_02221000: .word 0x00000B98
	thumb_func_end ov10_02220F1C

	thumb_func_start ov10_02221004
ov10_02221004: ; 0x02221004
	push {r3, lr}
	ldr r0, _02221018 ; =0x04000050
	mov r3, #8
	mov r1, #2
	mov r2, #0x1c
	str r3, [sp]
	bl sub_020BF55C
	pop {r3, pc}
	nop
_02221018: .word 0x04000050
	thumb_func_end ov10_02221004

	thumb_func_start ov10_0222101C
ov10_0222101C: ; 0x0222101C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _022210EC ; =0x02222B14
	add r3, sp, #0
	add r6, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r6, #0
	mov r2, #0x15
	bl ov10_02220B00
	add r0, r6, #0
	bl ov10_022210F4
	ldr r4, _022210F0 ; =0x02222DB4
	mov r7, #0
	add r5, r6, #0
_0222104A:
	add r0, r6, #0
	add r1, r4, #0
	bl ov10_02220BA0
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #4
	cmp r7, #0xc
	blo _0222104A
	mov r1, #0
	mov r2, #0xff
	add r0, r6, #0
	mvn r2, r2
	add r3, r1, #0
	bl ov10_02221188
	mov r2, #0xff
	add r0, r6, #0
	mov r1, #1
	mvn r2, r2
	mov r3, #0
	bl ov10_02221188
	mov r1, #2
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfe
	mov r3, #0
	bl ov10_02221188
	mov r1, #3
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfd
	mov r3, #0
	bl ov10_02221188
	add r0, r6, #0
	bl ov10_022212AC
	mov r0, #0x21
	mov r1, #0xc
	lsl r0, r0, #4
	str r1, [r6, r0]
	add r0, r6, #0
	bl ov10_022213B8
	mov r1, #0
	mov r2, #0xff
	add r0, r6, #0
	mvn r2, r2
	add r3, r1, #0
	bl ov10_02221440
	mov r2, #0xff
	add r0, r6, #0
	mov r1, #1
	mvn r2, r2
	mov r3, #0
	bl ov10_02221440
	mov r1, #2
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfe
	mov r3, #0
	bl ov10_02221440
	mov r1, #3
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfd
	mov r3, #0
	bl ov10_02221440
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022210EC: .word 0x02222B14
_022210F0: .word 0x02222DB4
	thumb_func_end ov10_0222101C

	thumb_func_start ov10_022210F4
ov10_022210F4: ; 0x022210F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x1b
	ldr r1, [r1, #0x24]
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02221184 ; =0x0000B807
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0xd0
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _02221184 ; =0x0000B807
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x6c
	mov r3, #8
	bl sub_0200CC9C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02221184 ; =0x0000B807
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0xcf
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02221184 ; =0x0000B807
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0xd1
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02221184: .word 0x0000B807
	thumb_func_end ov10_022210F4

	thumb_func_start ov10_02221188
ov10_02221188: ; 0x02221188
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _022211E4 ; =0x02222A64
	str r2, [sp]
	ldrb r5, [r4]
	str r3, [sp, #4]
	add r3, sp, #8
	strb r5, [r3]
	ldrb r5, [r4, #1]
	add r2, sp, #8
	mov r7, #0
	strb r5, [r3, #1]
	ldrb r5, [r4, #2]
	ldrb r4, [r4, #3]
	add r6, r0, r1
	strb r5, [r3, #2]
	strb r4, [r3, #3]
	ldrb r2, [r2, r1]
	add r4, r7, #0
	lsl r2, r2, #2
	add r5, r0, r2
_022211B2:
	ldr r1, _022211E8 ; =0x00000B64
	mov r0, #0x66
	ldrb r1, [r6, r1]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r1, r4
	ldr r1, [sp]
	add r1, r1, r2
	ldr r2, _022211EC ; =0x00000B68
	lsl r1, r1, #0x10
	ldrb r3, [r6, r2]
	ldr r2, [sp, #4]
	asr r1, r1, #0x10
	add r2, r2, r3
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r7, r7, #1
	add r4, #0x13
	add r5, r5, #4
	cmp r7, #3
	blo _022211B2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022211E4: .word 0x02222A64
_022211E8: .word 0x00000B64
_022211EC: .word 0x00000B68
	thumb_func_end ov10_02221188

	thumb_func_start ov10_022211F0
ov10_022211F0: ; 0x022211F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r0, r1, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r3, #0
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r5, #0
	ldr r0, [sp, #4]
	add r4, r5, #0
	cmp r0, #0
	ble _022212A8
	lsl r0, r7, #2
	add r6, r6, r0
_02221216:
	lsl r0, r4, #2
	add r1, r6, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [sp, #8]
	cmp r0, r4
	bls _0222129C
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0222129C
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0222129C
	add r0, r7, #0
	bl sub_0208E9F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #6
	bne _02221270
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #3
	bl sub_0200D364
	b _02221296
_02221270:
	cmp r0, #7
	beq _02221286
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_0200D364
	b _02221296
_02221286:
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0200D364
_02221296:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0222129C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _02221216
_022212A8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov10_022211F0

	thumb_func_start ov10_022212AC
ov10_022212AC: ; 0x022212AC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0]
	add r1, r2, #0
	add r1, #0x29
	ldrb r1, [r1]
	cmp r1, #0
	ldr r1, [r2, #4]
	bne _022212D6
	mov r2, #6
	mov r3, #0
	bl ov10_022211F0
	ldr r1, [r4, #0]
	mov r2, #6
	ldr r1, [r1, #8]
	add r0, r4, #0
	add r3, r2, #0
	bl ov10_022211F0
	pop {r4, pc}
_022212D6:
	mov r2, #3
	mov r3, #0
	bl ov10_022211F0
	ldr r1, [r4, #0]
	mov r2, #3
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	add r3, r2, #0
	bl ov10_022211F0
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldr r1, [r1, #8]
	mov r2, #3
	mov r3, #6
	bl ov10_022211F0
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x10]
	mov r2, #3
	mov r3, #9
	bl ov10_022211F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov10_022212AC

	thumb_func_start ov10_0222130C
ov10_0222130C: ; 0x0222130C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r0, #0
	mov r0, #0
	add r5, r4, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r7, r2, #0
	add r5, #0x10
	add r6, r1, #0
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	mov r2, #8
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, _022213AC ; =0x00000B44
	ldr r0, [r4, r0]
	str r0, [sp, #0x10]
	mov r0, #0x65
	str r5, [sp, #0x14]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D9B0
	str r0, [sp, #0x18]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _022213B0 ; =0x0000B807
	bl sub_0200D04C
	mov r1, #0x3e
	lsl r2, r6, #4
	lsl r1, r1, #4
	sub r1, r1, r2
	lsl r1, r1, #5
	str r0, [sp, #0x1c]
	mov r0, #0
	str r1, [sp, #0x24]
	mov r1, #2
	str r0, [sp, #0x20]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x34]
	mov r0, #1
	str r1, [sp, #0x30]
	str r0, [sp, #0x38]
	ldr r0, [r4, #0]
	lsl r6, r6, #2
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x3c]
	ldr r0, _022213B4 ; =0x00000B48
	add r4, r4, r0
	add r0, sp, #0x10
	bl sub_020127E8
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	mov r1, #0
	bl sub_02012A60
	add r0, r5, #0
	bl sub_0201A8FC
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022213AC: .word 0x00000B44
_022213B0: .word 0x0000B807
_022213B4: .word 0x00000B48
	thumb_func_end ov10_0222130C

	thumb_func_start ov10_022213B8
ov10_022213B8: ; 0x022213B8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #8
	ldr r1, [r1, #0x24]
	bl sub_02012744
	ldr r1, _02221434 ; =0x00000B44
	str r0, [r4, r1]
	ldr r2, [r4, #0]
	add r0, r4, #0
	ldr r2, [r2, #0x14]
	mov r1, #0
	bl ov10_0222130C
	ldr r2, [r4, #0]
	add r0, r4, #0
	ldr r2, [r2, #0x18]
	mov r1, #2
	bl ov10_0222130C
	ldr r2, [r4, #0]
	add r0, r2, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _02221406
	ldr r2, [r2, #0x1c]
	add r0, r4, #0
	mov r1, #1
	bl ov10_0222130C
	ldr r2, [r4, #0]
	add r0, r4, #0
	ldr r2, [r2, #0x20]
	mov r1, #3
	bl ov10_0222130C
	pop {r4, pc}
_02221406:
	ldr r2, [r2, #0x14]
	add r0, r4, #0
	mov r1, #1
	bl ov10_0222130C
	ldr r2, [r4, #0]
	add r0, r4, #0
	ldr r2, [r2, #0x18]
	mov r1, #3
	bl ov10_0222130C
	ldr r0, _02221438 ; =0x00000B4C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020129D0
	ldr r0, _0222143C ; =0x00000B54
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020129D0
	pop {r4, pc}
	nop
_02221434: .word 0x00000B44
_02221438: .word 0x00000B4C
_0222143C: .word 0x00000B54
	thumb_func_end ov10_022213B8

	thumb_func_start ov10_02221440
ov10_02221440: ; 0x02221440
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	add r4, r0, #0
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r3, _02221468 ; =0x00000B48
	add r4, r4, r5
	add r5, r3, #0
	ldr r0, [r0, r3]
	add r5, #0x24
	add r3, #0x28
	ldrb r5, [r4, r5]
	ldrb r3, [r4, r3]
	add r1, r1, r5
	add r2, r2, r3
	bl sub_020128C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02221468: .word 0x00000B48
	thumb_func_end ov10_02221440

	thumb_func_start ov10_0222146C
ov10_0222146C: ; 0x0222146C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _02221496
	ldr r6, _02221498 ; =0x00000B48
	mov r4, #0
	add r5, r7, #0
_02221480:
	ldr r0, [r5, r6]
	bl sub_02012870
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _02221480
	ldr r0, _0222149C ; =0x00000B44
	ldr r0, [r7, r0]
	bl sub_020127BC
_02221496:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221498: .word 0x00000B48
_0222149C: .word 0x00000B44
	thumb_func_end ov10_0222146C

	thumb_func_start ov10_022214A0
ov10_022214A0: ; 0x022214A0
	push {r3, r4, r5, r6}
	ldr r3, [r0, #0]
	add r3, #0x29
	ldrb r3, [r3]
	cmp r3, #1
	ldr r3, _02221584 ; =0x00000B64
	bne _0222152A
	mov r4, #0x14
	add r5, r1, #0
	strb r4, [r0, r3]
	add r5, #0x92
	add r4, r3, #4
	strb r5, [r0, r4]
	mov r5, #0x51
	add r4, r3, #1
	strb r5, [r0, r4]
	add r5, r1, #0
	add r5, #0xa2
	add r4, r3, #5
	strb r5, [r0, r4]
	mov r5, #0x80
	add r4, r3, #2
	strb r5, [r0, r4]
	add r5, r2, #0
	add r5, #0x2c
	add r4, r3, #6
	strb r5, [r0, r4]
	mov r5, #0xbd
	add r4, r3, #3
	strb r5, [r0, r4]
	add r5, r2, #0
	add r5, #0x3c
	add r4, r3, #7
	strb r5, [r0, r4]
	add r4, r3, #0
	mov r5, #0xb
	add r4, #8
	strb r5, [r0, r4]
	add r5, r1, #0
	add r4, r3, #0
	add r5, #0x78
	add r4, #0xc
	strb r5, [r0, r4]
	add r4, r3, #0
	mov r5, #0x4c
	add r4, #9
	strb r5, [r0, r4]
	add r4, r3, #0
	add r1, #0x88
	add r4, #0xd
	strb r1, [r0, r4]
	add r1, r3, #0
	mov r4, #0x77
	add r1, #0xa
	strb r4, [r0, r1]
	add r4, r2, #0
	add r1, r3, #0
	add r4, #0x12
	add r1, #0xe
	strb r4, [r0, r1]
	add r1, r3, #0
	mov r4, #0xb8
	add r1, #0xb
	strb r4, [r0, r1]
	add r2, #0x22
	add r3, #0xf
	strb r2, [r0, r3]
	pop {r3, r4, r5, r6}
	bx lr
_0222152A:
	mov r4, #0x18
	strb r4, [r0, r3]
	add r4, r1, #0
	add r4, #0xa0
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	add r5, r3, #4
	strb r4, [r0, r5]
	mov r6, #0x51
	add r5, r3, #1
	strb r6, [r0, r5]
	add r5, r3, #5
	strb r4, [r0, r5]
	mov r5, #0x88
	add r4, r3, #2
	strb r5, [r0, r4]
	add r4, r2, #0
	add r4, #0x30
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	add r5, r3, #6
	strb r4, [r0, r5]
	mov r6, #0xc1
	add r5, r3, #3
	strb r6, [r0, r5]
	add r5, r3, #7
	strb r4, [r0, r5]
	add r4, r3, #0
	mov r5, #0xf
	add r4, #8
	strb r5, [r0, r4]
	add r4, r3, #0
	add r1, #0x86
	add r4, #0xc
	strb r1, [r0, r4]
	add r1, r3, #0
	mov r4, #0x80
	add r1, #0xa
	strb r4, [r0, r1]
	add r2, #0x16
	add r3, #0xe
	strb r2, [r0, r3]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02221584: .word 0x00000B64
	thumb_func_end ov10_022214A0

	thumb_func_start ov10_02221588
ov10_02221588: ; 0x02221588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _02221664 ; =0x02222AE4
	add r3, sp, #0
	add r6, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r6, #0
	mov r2, #0x17
	bl ov10_02220B00
	add r0, r6, #0
	bl ov10_022210F4
	add r0, r6, #0
	bl ov10_0222166C
	ldr r4, _02221668 ; =0x02222DB4
	mov r7, #0
	add r5, r6, #0
_022215BC:
	add r0, r6, #0
	add r1, r4, #0
	bl ov10_02220BA0
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #4
	cmp r7, #0xe
	blo _022215BC
	mov r1, #0
	mov r2, #0xff
	add r0, r6, #0
	mvn r2, r2
	add r3, r1, #0
	bl ov10_02221188
	mov r2, #0xff
	add r0, r6, #0
	mov r1, #1
	mvn r2, r2
	mov r3, #0
	bl ov10_02221188
	mov r1, #2
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfe
	mov r3, #0
	bl ov10_02221188
	mov r1, #3
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfd
	mov r3, #0
	bl ov10_02221188
	add r0, r6, #0
	bl ov10_022212AC
	add r0, r6, #0
	bl ov10_022216E0
	add r0, r6, #0
	bl ov10_022213B8
	mov r1, #0
	mov r2, #0xff
	add r0, r6, #0
	mvn r2, r2
	add r3, r1, #0
	bl ov10_02221440
	mov r2, #0xff
	add r0, r6, #0
	mov r1, #1
	mvn r2, r2
	mov r3, #0
	bl ov10_02221440
	mov r1, #2
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfe
	mov r3, #0
	bl ov10_02221440
	mov r1, #3
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfd
	mov r3, #0
	bl ov10_02221440
	mov r0, #0x21
	mov r1, #0xe
	lsl r0, r0, #4
	str r1, [r6, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221664: .word 0x02222AE4
_02221668: .word 0x02222DB4
	thumb_func_end ov10_02221588

	thumb_func_start ov10_0222166C
ov10_0222166C: ; 0x0222166C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x6c
	ldr r1, [r1, #0x24]
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022216DC ; =0x0000B808
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #5
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022216DC ; =0x0000B808
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #6
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022216DC ; =0x0000B808
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #7
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022216DC: .word 0x0000B808
	thumb_func_end ov10_0222166C

	thumb_func_start ov10_022216E0
ov10_022216E0: ; 0x022216E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #3
	bne _02221722
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x48
	bl sub_0200D4C4
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_0200D364
	pop {r4, pc}
_02221722:
	bl ov10_02220AD0
	cmp r0, #1
	ldr r0, [r4, #0]
	bne _02221770
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _02221752
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x30
	mov r2, #0x48
	bl sub_0200D4C4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd0
	mov r2, #0x48
	bl sub_0200D4C4
	b _022217B2
_02221752:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd0
	mov r2, #0x48
	bl sub_0200D4C4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x30
	mov r2, #0x48
	bl sub_0200D4C4
	b _022217B2
_02221770:
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _02221796
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd0
	mov r2, #0x48
	bl sub_0200D4C4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x30
	mov r2, #0x48
	bl sub_0200D4C4
	b _022217B2
_02221796:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x30
	mov r2, #0x48
	bl sub_0200D4C4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd0
	mov r2, #0x48
	bl sub_0200D4C4
_022217B2:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D364
	pop {r4, pc}
	thumb_func_end ov10_022216E0

	thumb_func_start ov10_022217CC
ov10_022217CC: ; 0x022217CC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #2
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #4
	ldr r0, [r0, #0x24]
	add r3, r1, #0
	bl sub_02024220
	ldr r1, _022218A4 ; =0x00000B58
	ldr r2, _022218A8 ; =0x04000060
	str r0, [r4, r1]
	ldrh r1, [r2]
	ldr r0, _022218AC ; =0xFFFFCFFF
	and r1, r0
	mov r0, #8
	orr r0, r1
	strh r0, [r2]
	bl sub_02014000
	ldr r0, [r4, #0]
	mov r1, #0x12
	ldr r0, [r0, #0x24]
	lsl r1, r1, #0xa
	bl sub_02018144
	mov r2, #0xb6
	lsl r2, r2, #4
	str r0, [r4, r2]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r3, #0x12
	ldr r0, [r0, #0x24]
	ldr r1, _022218B0 ; =ov10_0222194C
	str r0, [sp, #4]
	ldr r0, _022218B4 ; =ov10_02221928
	ldr r2, [r4, r2]
	lsl r3, r3, #0xa
	bl sub_02014014
	ldr r1, _022218B8 ; =0x00000B5C
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_02014784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	ldr r2, [r4, #0]
	mov r0, #0x3d
	ldr r2, [r2, #0x24]
	mov r1, #2
	bl sub_020144C4
	add r1, r0, #0
	ldr r0, _022218B8 ; =0x00000B5C
	mov r2, #0xa
	ldr r0, [r4, r0]
	mov r3, #1
	bl sub_020144CC
	mov r1, #0
	ldr r0, _022218B8 ; =0x00000B5C
	add r2, r1, #0
	ldr r0, [r4, r0]
	add r3, r1, #0
	bl sub_020146F4
	ldr r0, _022218B8 ; =0x00000B5C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #1
	add r3, r2, #0
	bl sub_020146F4
	ldr r0, _022218B8 ; =0x00000B5C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #2
	add r3, r2, #0
	bl sub_020146F4
	ldr r0, _022218B8 ; =0x00000B5C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #3
	add r3, r2, #0
	bl sub_020146F4
	ldr r0, _022218B8 ; =0x00000B5C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #4
	add r3, r2, #0
	bl sub_020146F4
	add sp, #8
	pop {r4, pc}
	nop
_022218A4: .word 0x00000B58
_022218A8: .word 0x04000060
_022218AC: .word 0xFFFFCFFF
_022218B0: .word ov10_0222194C
_022218B4: .word ov10_02221928
_022218B8: .word 0x00000B5C
	thumb_func_end ov10_022217CC

	thumb_func_start ov10_022218BC
ov10_022218BC: ; 0x022218BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	beq _022218CE
	mov r0, #0
	pop {r4, pc}
_022218CE:
	bl sub_020241B4
	ldr r0, _022218F0 ; =0x00000B5C
	ldr r0, [r4, r0]
	bl sub_02014710
	cmp r0, #0
	bne _022218E2
	mov r0, #0
	pop {r4, pc}
_022218E2:
	bl sub_0201469C
	bl sub_020146C0
	mov r0, #1
	pop {r4, pc}
	nop
_022218F0: .word 0x00000B5C
	thumb_func_end ov10_022218BC

	thumb_func_start ov10_022218F4
ov10_022218F4: ; 0x022218F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0222191C
	ldr r0, _02221920 ; =0x00000B5C
	ldr r0, [r4, r0]
	bl sub_0201411C
	mov r0, #0xb6
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _02221924 ; =0x00000B58
	ldr r0, [r4, r0]
	bl sub_020242C4
_0222191C:
	pop {r4, pc}
	nop
_02221920: .word 0x00000B5C
_02221924: .word 0x00000B58
	thumb_func_end ov10_022218F4

	thumb_func_start ov10_02221928
ov10_02221928: ; 0x02221928
	push {r4, lr}
	ldr r3, _02221948 ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145B4
	cmp r4, #0
	bne _02221940
	bl sub_02022974
_02221940:
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_02221948: .word 0x02100DEC
	thumb_func_end ov10_02221928

	thumb_func_start ov10_0222194C
ov10_0222194C: ; 0x0222194C
	push {r4, lr}
	ldr r3, _0222196C ; =0x02100DF4
	mov r2, #1
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145F4
	cmp r4, #0
	bne _02221964
	bl sub_02022974
_02221964:
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0222196C: .word 0x02100DF4
	thumb_func_end ov10_0222194C

	thumb_func_start ov10_02221970
ov10_02221970: ; 0x02221970
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _02221A00 ; =0x02222A98
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02221A04 ; =0x02222B9C
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02221A08 ; =0x02222B48
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02221A0C ; =0x02222BD4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	add sp, #0x64
	pop {r4, r5, pc}
	nop
_02221A00: .word 0x02222A98
_02221A04: .word 0x02222B9C
_02221A08: .word 0x02222B48
_02221A0C: .word 0x02222BD4
	thumb_func_end ov10_02221970

	thumb_func_start ov10_02221A10
ov10_02221A10: ; 0x02221A10
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov10_02221A10

	thumb_func_start ov10_02221A3C
ov10_02221A3C: ; 0x02221A3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x14
	ldr r1, [r1, #0x24]
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r5, #0]
	mov r3, #3
	ldr r1, [r1, #0x24]
	add r4, r0, #0
	str r1, [sp, #0xc]
	ldr r2, [r5, #0xc]
	mov r1, #0xf
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #0x11
	ldr r0, [r0, #0x24]
	mov r3, #3
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	bl sub_0200710C
	ldr r2, [r5, #0]
	add r0, r4, #0
	ldr r2, [r2, #0x24]
	mov r1, #0x10
	bl sub_02006CB8
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_020A71B0
	ldr r2, [sp, #0x10]
	mov r0, #3
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0201972C
	ldr r1, [sp, #0x10]
	ldr r0, _02221ADC ; =0x000004E4
	ldr r1, [r1, #0xc]
	add r0, r5, r0
	add r1, #0x60
	mov r2, #0x60
	bl sub_020D50B8
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r5, #0]
	mov r2, #0xa9
	lsl r2, r2, #2
	ldr r3, _02221AE0 ; =0x00000424
	add r1, r5, r2
	add r2, #0xc0
	ldr r0, [r0, #0x24]
	add r2, r5, r2
	add r3, r5, r3
	bl sub_02081940
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02221ADC: .word 0x000004E4
_02221AE0: .word 0x00000424
	thumb_func_end ov10_02221A3C

	thumb_func_start ov10_02221AE4
ov10_02221AE4: ; 0x02221AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r6, _02221BB8 ; =0x02222A70
	mov r4, #0
	add r7, r5, #0
_02221AF0:
	cmp r4, #0
	beq _02221AF8
	cmp r4, #3
	bne _02221B00
_02221AF8:
	mov r0, #0xa9
	lsl r0, r0, #2
	add r1, r5, r0
	b _02221B16
_02221B00:
	mov r0, #0x86
	lsl r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _02221B10
	ldr r0, _02221BBC ; =0x00000424
	add r1, r5, r0
	b _02221B16
_02221B10:
	mov r0, #0xd9
	lsl r0, r0, #2
	add r1, r5, r0
_02221B16:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	ldrb r2, [r6]
	ldrb r3, [r6, #1]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_020198E8
	mov r0, #0x86
	lsl r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02221BA2
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r2, [r6]
	ldrb r3, [r6, #1]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019E2C
	cmp r4, #3
	bhs _02221B6E
	ldr r0, [r5, #0]
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	beq _02221B7C
_02221B6E:
	cmp r4, #3
	blo _02221B90
	ldr r0, [r5, #0]
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _02221B90
_02221B7C:
	ldr r1, _02221BC0 ; =0x00000504
	add r3, r4, #3
	lsl r3, r3, #0x15
	mov r0, #2
	add r1, r5, r1
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_0201972C
	b _02221BA2
_02221B90:
	ldr r1, _02221BC4 ; =0x000004E4
	add r3, r4, #3
	lsl r3, r3, #0x15
	mov r0, #2
	add r1, r5, r1
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_0201972C
_02221BA2:
	add r4, r4, #1
	add r7, #0x18
	add r6, r6, #2
	cmp r4, #6
	blo _02221AF0
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02221BB8: .word 0x02222A70
_02221BBC: .word 0x00000424
_02221BC0: .word 0x00000504
_02221BC4: .word 0x000004E4
	thumb_func_end ov10_02221AE4

	thumb_func_start ov10_02221BC8
ov10_02221BC8: ; 0x02221BC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	str r1, [sp]
	add r1, r2, #0
	bl sub_02019FE4
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _02221BE6
	mov r7, #0x10
	b _02221BE8
_02221BE6:
	mov r7, #0
_02221BE8:
	mov r5, #0
_02221BEA:
	lsl r0, r5, #5
	add r0, r7, r0
	lsl r4, r0, #1
	ldr r0, [sp]
	lsl r1, r5, #5
	add r0, r0, r1
	add r1, r6, r4
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r6, r4
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x18
	blo _02221BEA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov10_02221BC8

	thumb_func_start ov10_02221C14
ov10_02221C14: ; 0x02221C14
	push {r4, lr}
	ldr r1, _02221C40 ; =0x00000544
	add r4, r0, #0
	add r1, r4, r1
	mov r2, #1
	bl ov10_02221BC8
	ldr r1, _02221C44 ; =0x00000844
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #2
	bl ov10_02221BC8
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_0201C3C0
	pop {r4, pc}
	; .align 2, 0
_02221C40: .word 0x00000544
_02221C44: .word 0x00000844
	thumb_func_end ov10_02221C14

	thumb_func_start ov10_02221C48
ov10_02221C48: ; 0x02221C48
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _02221CA8
	mov r0, #0x20
	sub r6, r0, r4
	ldr r1, _02221D0C ; =0x00000544
	str r4, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r1, r5, r1
	str r1, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	lsl r2, r6, #0x18
	str r3, [sp, #0x10]
	mov r1, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	mov r1, #1
	lsr r2, r2, #0x18
	bl sub_020198E8
	ldr r0, _02221D10 ; =0x00000844
	lsl r2, r6, #0x18
	str r4, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	mov r1, #2
	lsr r2, r2, #0x18
	bl sub_020198E8
	b _02221CF6
_02221CA8:
	ldr r2, _02221D0C ; =0x00000544
	mov r0, #0x10
	str r4, [sp]
	mov r1, #0x18
	sub r6, r0, r4
	str r1, [sp, #4]
	add r2, r5, r2
	str r2, [sp, #8]
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	mov r1, #1
	add r3, r2, #0
	bl sub_020198E8
	ldr r1, _02221D10 ; =0x00000844
	mov r2, #0
	str r4, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r1, r5, r1
	str r1, [sp, #8]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r1, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	mov r1, #2
	add r3, r2, #0
	bl sub_020198E8
_02221CF6:
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02221D0C: .word 0x00000544
_02221D10: .word 0x00000844
	thumb_func_end ov10_02221C48

	thumb_func_start ov10_02221D14
ov10_02221D14: ; 0x02221D14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	str r1, [sp]
	add r5, r2, #0
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x18
	mul r0, r5
	add r0, r4, r0
	mov r6, #0
	str r0, [sp, #4]
_02221D34:
	ldr r0, [sp, #8]
	cmp r0, r6
	bhi _02221D56
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02079D8C
	mov r1, #0x18
	add r2, r6, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r2, r1, r2
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r2, r1]
	b _02221E30
_02221D56:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x18
	add r2, r6, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r4, r0, #0
	add r7, r1, r2
	bl sub_02079D80
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x86
	lsl r1, r1, #2
	strh r0, [r7, r1]
	add r0, r1, #0
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02221E30
	mov r0, #0x18
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r2, #0
	add r5, r0, r1
	add r0, r4, #0
	mov r1, #0x4c
	bl sub_02074470
	ldr r1, _02221E40 ; =0x00000223
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa3
	bl sub_02074470
	ldr r1, _02221E44 ; =0x0000021A
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa4
	bl sub_02074470
	mov r1, #0x87
	lsl r1, r1, #2
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	mov r1, #0x22
	lsl r1, r1, #4
	strb r0, [r5, r1]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	ldr r1, _02221E48 ; =0x0000021E
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa2
	bl sub_02074470
	mov r1, #0x89
	lsl r1, r1, #2
	strb r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	ldr r1, _02221E4C ; =0x00000225
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xb0
	bl sub_02074470
	cmp r0, #1
	bne _02221E10
	mov r1, #0
	b _02221E12
_02221E10:
	mov r1, #1
_02221E12:
	ldr r0, _02221E50 ; =0x00000222
	strb r1, [r7, r0]
	add r0, r4, #0
	bl sub_02075D6C
	ldr r1, _02221E54 ; =0x00000221
	strb r0, [r5, r1]
	add r0, r4, #0
	bl sub_0208E9F0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
_02221E30:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #3
	bhs _02221E3C
	b _02221D34
_02221E3C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02221E40: .word 0x00000223
_02221E44: .word 0x0000021A
_02221E48: .word 0x0000021E
_02221E4C: .word 0x00000225
_02221E50: .word 0x00000222
_02221E54: .word 0x00000221
	thumb_func_end ov10_02221D14

	thumb_func_start ov10_02221E58
ov10_02221E58: ; 0x02221E58
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x90
	bl sub_020D5124
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldr r1, [r1, #4]
	mov r2, #0
	bl ov10_02221D14
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	mov r2, #3
	bl ov10_02221D14
	pop {r4, pc}
	thumb_func_end ov10_02221E58

	thumb_func_start ov10_02221E84
ov10_02221E84: ; 0x02221E84
	push {r4, lr}
	add r3, r0, #0
	add r2, r1, #0
	mov r0, #0x18
	mul r2, r0
	ldr r1, _02221EE8 ; =0x0000021A
	add r4, r3, r2
	ldrh r0, [r4, r1]
	cmp r0, #0
	bne _02221E9C
	mov r0, #0
	pop {r4, pc}
_02221E9C:
	add r1, #0xe
	ldr r1, [r4, r1]
	cmp r1, #7
	beq _02221EAC
	cmp r1, #0
	beq _02221EAC
	mov r0, #5
	pop {r4, pc}
_02221EAC:
	mov r1, #0x87
	add r2, r3, r2
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _02221EE4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221ECA: ; jump table
	.short _02221EE4 - _02221ECA - 2 ; case 0
	.short _02221EE0 - _02221ECA - 2 ; case 1
	.short _02221EDC - _02221ECA - 2 ; case 2
	.short _02221ED8 - _02221ECA - 2 ; case 3
	.short _02221ED4 - _02221ECA - 2 ; case 4
_02221ED4:
	mov r0, #1
	pop {r4, pc}
_02221ED8:
	mov r0, #2
	pop {r4, pc}
_02221EDC:
	mov r0, #3
	pop {r4, pc}
_02221EE0:
	mov r0, #4
	pop {r4, pc}
_02221EE4:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02221EE8: .word 0x0000021A
	thumb_func_end ov10_02221E84

	thumb_func_start ov10_02221EEC
ov10_02221EEC: ; 0x02221EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	str r1, [sp]
	add r0, r1, #0
	lsl r1, r0, #2
	ldr r0, [sp]
	ldr r2, _02222044 ; =0x02222C6C
	add r7, r0, r1
	lsl r0, r7, #2
	add r4, r5, r0
	ldr r0, [sp]
	mov r1, #0xa
	mul r1, r0
	str r4, [sp, #4]
	add r6, r2, r1
_02221F10:
	mov r1, #0x1c
	add r2, r7, #0
	mul r2, r1
	ldr r1, _02222048 ; =0x02222F3C
	add r0, r5, #0
	add r1, r1, r2
	bl ov10_02220BA0
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldrb r1, [r6]
	ldrb r2, [r6, #1]
	ldr r0, [r4, r0]
	bl sub_0200D4C4
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #1
	add r4, r4, #4
	add r6, r6, #2
	str r0, [sp, #8]
	cmp r0, #5
	blo _02221F10
	ldr r0, [sp]
	mov r2, #0x86
	mov r1, #0x18
	add r6, r0, #0
	mul r6, r1
	add r3, r5, r6
	lsl r2, r2, #2
	ldrh r0, [r3, r2]
	cmp r0, #0
	bne _02221F78
	mov r5, #0
	add r4, r2, #0
	add r6, r5, #0
	sub r4, #0x80
_02221F5E:
	ldr r0, [sp, #4]
	add r1, r6, #0
	ldr r0, [r0, r4]
	bl sub_0200D3F4
	ldr r0, [sp, #4]
	add r5, r5, #1
	add r0, r0, #4
	str r0, [sp, #4]
	cmp r5, #5
	blo _02221F5E
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02221F78:
	ldr r1, [sp]
	mov r4, #0x14
	mul r4, r1
	add r1, r2, #0
	sub r1, #0x80
	add r7, r5, r1
	add r1, r2, #0
	add r1, #0xd
	add r2, #0xb
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r7, r4]
	bl sub_0200D41C
	ldr r1, [sp]
	add r0, r5, #0
	bl ov10_02221E84
	add r1, r0, #0
	ldr r0, [r7, r4]
	bl sub_0200D364
	ldr r1, _0222204C ; =0x0000021E
	add r0, r5, r6
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _02221FC2
	add r0, r5, r4
	sub r1, #0x82
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_0200D3F4
	b _02221FE8
_02221FC2:
	bl sub_0207D2D0
	cmp r0, #1
	bne _02221FDA
	mov r0, #0x67
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0200D364
	b _02221FE8
_02221FDA:
	mov r0, #0x67
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D364
_02221FE8:
	mov r0, #0x89
	add r1, r5, r6
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _02222002
	add r1, r5, r4
	sub r0, #0x84
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D3F4
	b _0222200E
_02222002:
	add r1, r5, r4
	sub r0, #0x84
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_0200D364
_0222200E:
	mov r3, #0x8a
	add r0, r5, r6
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	cmp r0, #7
	bne _0222202A
	add r0, r5, r4
	sub r3, #0x84
	ldr r0, [r0, r3]
	mov r1, #0
	bl sub_0200D3F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222202A:
	add r0, r3, #0
	add r1, r5, r4
	sub r0, #0x84
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	mov r2, #0x18
	mul r2, r1
	add r1, r5, r2
	ldr r1, [r1, r3]
	bl sub_0200D364
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222044: .word 0x02222C6C
_02222048: .word 0x02222F3C
_0222204C: .word 0x0000021E
	thumb_func_end ov10_02221EEC

	thumb_func_start ov10_02222050
ov10_02222050: ; 0x02222050
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r5, _022220B0 ; =0x02222AFC
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #0x1f
	bl ov10_02220B00
	add r0, r4, #0
	bl ov10_022220B4
	add r0, r4, #0
	bl ov10_0222216C
	add r0, r4, #0
	bl ov10_02222208
	add r0, r4, #0
	bl ov10_022222A4
	mov r5, #0
_0222208C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov10_02221EEC
	add r5, r5, #1
	cmp r5, #6
	blo _0222208C
	add r0, r4, #0
	mov r1, #0x10
	bl ov10_02222340
	mov r0, #0x21
	mov r1, #0x1e
	lsl r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022220B0: .word 0x02222AFC
	thumb_func_end ov10_02222050

	thumb_func_start ov10_022220B4
ov10_022220B4: ; 0x022220B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x13
	ldr r1, [r1, #0x24]
	bl sub_02006C24
	add r7, r0, #0
	bl sub_02079FD0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _02222164 ; =0x0000B808
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200CD0C
	bl sub_02079FD8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02222168 ; =0x0000B809
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200CE24
	bl sub_02079FE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02222168 ; =0x0000B809
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200CE54
	mov r4, #0
	add r6, r5, #0
_0222212C:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222168 ; =0x0000B809
	mov r1, #0x65
	add r0, r4, r0
	str r0, [sp, #8]
	mov r0, #0x19
	mov r3, #0x85
	lsl r0, r0, #4
	lsl r1, r1, #2
	lsl r3, r3, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r6, r3]
	add r2, r7, #0
	bl sub_0200CC3C
	add r4, r4, #1
	add r6, #0x18
	cmp r4, #6
	blo _0222212C
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222164: .word 0x0000B808
_02222168: .word 0x0000B809
	thumb_func_end ov10_022220B4

	thumb_func_start ov10_0222216C
ov10_0222216C: ; 0x0222216C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x14
	ldr r1, [r1, #0x24]
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022221FC ; =0x0000B80F
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x14
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02222200 ; =0x0000B809
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x15
	bl sub_0200CD0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02222204 ; =0x0000B80A
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x13
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02222204 ; =0x0000B80A
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x12
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022221FC: .word 0x0000B80F
_02222200: .word 0x0000B809
_02222204: .word 0x0000B80A
	thumb_func_end ov10_0222216C

	thumb_func_start ov10_02222208
ov10_02222208: ; 0x02222208
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x27
	ldr r1, [r1, #0x24]
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222298 ; =0x0000B810
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x40
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0222229C ; =0x0000B80A
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x41
	bl sub_0200CD0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022222A0 ; =0x0000B80B
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x3f
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022222A0 ; =0x0000B80B
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x3e
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02222298: .word 0x0000B810
_0222229C: .word 0x0000B80A
_022222A0: .word 0x0000B80B
	thumb_func_end ov10_02222208

	thumb_func_start ov10_022222A4
ov10_022222A4: ; 0x022222A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x14
	ldr r1, [r1, #0x24]
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222334 ; =0x0000B811
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #2
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _02222338 ; =0x0000B80B
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #8
	bl sub_0200CD0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222233C ; =0x0000B80C
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #1
	bl sub_0200CE24
	mov r3, #0
	mov r1, #0x19
	ldr r0, _0222233C ; =0x0000B80C
	str r3, [sp]
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02222334: .word 0x0000B811
_02222338: .word 0x0000B80B
_0222233C: .word 0x0000B80C
	thumb_func_end ov10_022222A4

	thumb_func_start ov10_02222340
ov10_02222340: ; 0x02222340
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #0]
	add r7, r1, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222235A
	mov r0, #3
	str r0, [sp, #8]
	lsl r0, r7, #0x13
	b _02222364
_0222235A:
	mov r0, #0
	str r0, [sp, #8]
	lsl r0, r7, #3
	neg r0, r0
	lsl r0, r0, #0x10
_02222364:
	asr r7, r0, #0x10
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0xa
	ldr r2, _022223BC ; =0x02222C6C
	mul r1, r0
	add r0, r2, r1
	str r0, [sp, #4]
_02222376:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #4]
	add r1, r1, r0
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r1, r0, #2
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
_0222238A:
	ldrb r1, [r4]
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r7, r1
	lsl r1, r1, #0x10
	ldrb r2, [r4, #1]
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #5
	blt _0222238A
	ldr r0, [sp, #4]
	add r0, #0xa
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _02222376
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022223BC: .word 0x02222C6C
	thumb_func_end ov10_02222340

	thumb_func_start ov10_022223C0
ov10_022223C0: ; 0x022223C0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	ldr r4, _022223E4 ; =0x02222CF4
	mov r6, #0
	add r5, #0x10
_022223CC:
	ldr r0, [r7, #0xc]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #0x18
	blo _022223CC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022223E4: .word 0x02222CF4
	thumb_func_end ov10_022223C0

	thumb_func_start ov10_022223E8
ov10_022223E8: ; 0x022223E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x10
_022223F0:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x18
	blo _022223F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov10_022223E8

	thumb_func_start ov10_02222400
ov10_02222400: ; 0x02222400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, [sp, #0x3c]
	add r5, r0, #0
	add r7, r5, #0
	lsl r0, r4, #6
	add r7, #0x10
	str r0, [sp, #0x1c]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r6, [sp, #0x38]
	cmp r4, #3
	ldr r0, [r5, #0]
	bhs _02222428
	ldr r0, [r0, #4]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x18]
	b _02222432
_02222428:
	ldr r0, [r0, #0xc]
	sub r1, r4, #3
	bl sub_0207A0FC
	str r0, [sp, #0x18]
_02222432:
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	add r1, #8
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x20]
	add r1, r6, #0
	bl sub_0200C388
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022224E4 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r3, r1, #0
	add r0, r7, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #0x18
	mul r0, r4
	add r2, r5, r0
	ldr r0, _022224E8 ; =0x00000222
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _022224E0
	sub r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _022224B8
	ldr r0, [sp, #0x10]
	mov r1, #0x1b
	add r2, r6, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r2, r6, #0
	add r0, r7, r0
	mov r3, #0x40
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_022224B8:
	cmp r0, #1
	bne _022224E0
	ldr r0, [sp, #0x10]
	mov r1, #0x1c
	add r2, r6, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022224EC ; =0x00050600
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	mov r3, #0x40
	add r0, r7, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_022224E0:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022224E4: .word 0x000F0E00
_022224E8: .word 0x00000222
_022224EC: .word 0x00050600
	thumb_func_end ov10_02222400

	thumb_func_start ov10_022224F0
ov10_022224F0: ; 0x022224F0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, [sp, #0x24]
	add r4, r0, #0
	lsl r5, r3, #2
	add r5, r5, #1
	mov r1, #0
	add r0, #0x10
	lsl r5, r5, #4
	str r1, [sp]
	add r0, r0, r5
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r2, #0
	mov r2, #0x18
	mul r2, r3
	add r3, r4, r2
	mov r2, #0x22
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	mov r1, #1
	mov r3, #3
	bl sub_0200C648
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov10_022224F0

	thumb_func_start ov10_02222528
ov10_02222528: ; 0x02222528
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, [sp, #0x24]
	add r5, r0, #0
	lsl r0, r1, #2
	add r7, r2, #0
	add r2, r5, #0
	add r0, r0, #2
	add r6, r1, #0
	add r2, #0x10
	lsl r0, r0, #4
	add r4, r2, r0
	mov r0, #0x18
	mul r6, r0
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r1, _02222590 ; =0x0000021A
	add r2, r5, r6
	ldrh r1, [r2, r1]
	add r0, r7, #0
	mov r2, #3
	mov r3, #1
	bl sub_0200C5BC
	mov r0, #2
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x18
	bl sub_0200C578
	mov r1, #0x87
	str r4, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r2, r5, r6
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	add r0, r7, #0
	mov r2, #3
	mov r3, #0
	bl sub_0200C5BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02222590: .word 0x0000021A
	thumb_func_end ov10_02222528

	thumb_func_start ov10_02222594
ov10_02222594: ; 0x02222594
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	lsl r0, r1, #2
	add r2, r5, #0
	add r0, r0, #3
	add r2, #0x10
	lsl r0, r0, #4
	add r4, r2, r0
	mov r0, #0x18
	add r6, r1, #0
	mul r6, r0
	mov r0, #0x87
	lsl r0, r0, #2
	add r7, r5, r0
	sub r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #8]
	ldrh r0, [r0, r6]
	ldrh r1, [r7, r6]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _02222622
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022225D2: ; jump table
	.short _02222622 - _022225D2 - 2 ; case 0
	.short _0222260C - _022225D2 - 2 ; case 1
	.short _022225F4 - _022225D2 - 2 ; case 2
	.short _022225DC - _022225D2 - 2 ; case 3
	.short _022225DC - _022225D2 - 2 ; case 4
_022225DC:
	ldrb r3, [r4, #9]
	ldr r1, _02222678 ; =0x000004F6
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
	b _02222622
_022225F4:
	ldrb r3, [r4, #9]
	ldr r1, _0222267C ; =0x00000516
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
	b _02222622
_0222260C:
	ldrb r3, [r4, #9]
	ldr r1, _02222680 ; =0x00000536
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
_02222622:
	ldr r0, [sp, #8]
	ldrh r1, [r7, r6]
	ldrh r0, [r0, r6]
	mov r2, #0x30
	bl sub_0208C0BC
	add r5, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #2
	bl sub_0201AE78
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	mov r3, #3
	bl sub_0201AE78
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #5
	bl sub_0201AE78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02222678: .word 0x000004F6
_0222267C: .word 0x00000516
_02222680: .word 0x00000536
	thumb_func_end ov10_02222594

	thumb_func_start ov10_02222684
ov10_02222684: ; 0x02222684
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r6, [sp, #0x2c]
	add r5, r7, #0
	str r1, [sp, #8]
	add r5, #0x10
	lsl r4, r6, #6
	add r0, r5, r4
	mov r1, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_0201ADA4
	add r0, r5, r4
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, r4
	add r0, #0x20
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, r4
	add r0, #0x30
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	str r6, [sp, #4]
	bl ov10_02222400
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	str r6, [sp, #4]
	bl ov10_022224F0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	str r6, [sp, #4]
	bl ov10_02222528
	add r0, r7, #0
	add r1, r6, #0
	bl ov10_02222594
	add r0, r5, r4
	bl sub_0201A9A4
	add r0, r5, r4
	add r0, #0x10
	bl sub_0201A9A4
	add r0, r5, r4
	add r0, #0x20
	bl sub_0201A9A4
	add r0, r5, r4
	add r0, #0x30
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov10_02222684

	thumb_func_start ov10_02222720
ov10_02222720: ; 0x02222720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r3, [r6, #0]
	ldr r2, _022227A0 ; =0x000001C5
	ldr r3, [r3, #0x24]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	ldr r3, [r6, #0]
	str r0, [sp, #0x10]
	ldr r3, [r3, #0x24]
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #0
	bl sub_0200C440
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_0200B358
	ldr r1, [r6, #0]
	str r0, [sp, #8]
	ldr r1, [r1, #0x24]
	mov r0, #0x20
	bl sub_02023790
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_02222760:
	mov r0, #0x86
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0222277A
	ldr r1, [sp, #0x10]
	str r7, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r6, #0
	str r4, [sp, #4]
	bl ov10_02222684
_0222277A:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #6
	blo _02222760
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	ldr r0, [sp, #0xc]
	bl sub_0200C560
	ldr r0, [sp, #8]
	bl sub_0200B3F0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022227A0: .word 0x000001C5
	thumb_func_end ov10_02222720

	thumb_func_start ov10_022227A4
ov10_022227A4: ; 0x022227A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02222828
	bl sub_0203608C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	ldr r1, [r4, #0]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0203A2DC
	cmp r0, #1
	bne _02222820
	mov r0, #1
	add r7, r5, #0
	eor r7, r0
	mov r0, #0x34
	ldr r1, [r4, #0]
	mul r0, r7
	add r0, r1, r0
	add r0, #0x29
	ldrb r0, [r0]
	bl sub_020793AC
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	mov r1, #0x10
	bl sub_02018144
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020362F4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	ldr r1, [sp, #0x10]
	ldr r3, [r4, #0x24]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0202C174
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020181C4
	b _022229BE
_02222820:
	bl sub_0203895C
	cmp r0, #4
	bls _0222282A
_02222828:
	b _022229CE
_0222282A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02222836: ; jump table
	.short _022229BA - _02222836 - 2 ; case 0
	.short _02222840 - _02222836 - 2 ; case 1
	.short _0222288C - _02222836 - 2 ; case 2
	.short _022228D8 - _02222836 - 2 ; case 3
	.short _02222924 - _02222836 - 2 ; case 4
_02222840:
	mov r0, #1
	add r7, r5, #0
	eor r7, r0
	mov r0, #0x34
	ldr r1, [r4, #0]
	mul r0, r7
	add r0, r1, r0
	add r0, #0x29
	ldrb r0, [r0]
	bl sub_020793AC
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x24]
	mov r1, #0x10
	bl sub_02018144
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020362F4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	ldr r1, [sp, #0x14]
	ldr r3, [r4, #0x24]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0202BFCC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020181C4
	b _022229BE
_0222288C:
	mov r0, #1
	add r7, r5, #0
	eor r7, r0
	mov r0, #0x34
	ldr r1, [r4, #0]
	mul r0, r7
	add r0, r1, r0
	add r0, #0x29
	ldrb r0, [r0]
	bl sub_020793AC
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x24]
	mov r1, #0x10
	bl sub_02018144
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020362F4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	ldr r1, [sp, #0x18]
	ldr r3, [r4, #0x24]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0202C00C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020181C4
	b _022229BE
_022228D8:
	mov r0, #1
	add r7, r5, #0
	eor r7, r0
	mov r0, #0x34
	ldr r1, [r4, #0]
	mul r0, r7
	add r0, r1, r0
	add r0, #0x29
	ldrb r0, [r0]
	bl sub_020793AC
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x24]
	mov r1, #0x10
	bl sub_02018144
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020362F4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	ldr r1, [sp, #0x1c]
	ldr r3, [r4, #0x24]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0202C0AC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020181C4
	b _022229BE
_02222924:
	ldr r0, [r4, #0x24]
	mov r1, #0x10
	bl sub_02018144
	add r5, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0x10
	bl sub_02018144
	add r7, r0, #0
	bl ov10_02220AD0
	cmp r0, #1
	ldr r0, [r4, #0]
	bne _0222296E
	add r0, #0x5d
	ldrb r0, [r0]
	bl sub_020793AC
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	add r0, #0xc5
	ldrb r0, [r0]
	bl sub_020793AC
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	mov r2, #8
	bl sub_02023DF0
	b _02222998
_0222296E:
	add r0, #0x29
	ldrb r0, [r0]
	bl sub_020793AC
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	add r0, #0x91
	ldrb r0, [r0]
	bl sub_020793AC
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	mov r2, #8
	bl sub_02023DF0
_02222998:
	str r6, [sp]
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_0202C04C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_020181C4
	b _022229BE
_022229BA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_022229BE:
	mov r0, #0x52
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	mov r2, #4
	bl sub_0202B758
_022229CE:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov10_022227A4

	thumb_func_start ov10_022229D4
ov10_022229D4: ; 0x022229D4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, _02222A04 ; =0x00000B88
	mov r2, #0
	add r0, r4, r0
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r0, _02222A04 ; =0x00000B88
	mov r1, #0
	add r0, r4, r0
	mov r2, #1
	mov r3, #0xf
	bl sub_0200E060
	add sp, #8
	pop {r4, pc}
	nop
_02222A04: .word 0x00000B88
	thumb_func_end ov10_022229D4

	thumb_func_start ov10_02222A08
ov10_02222A08: ; 0x02222A08
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r1, [r0, #0]
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02222A20
	bl sub_0202F250
	cmp r0, #0
	bne _02222A24
_02222A20:
	mov r0, #0
	pop {r3, pc}
_02222A24:
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov10_02222A08

	thumb_func_start ov10_02222A28
ov10_02222A28: ; 0x02222A28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02222A44 ; =0x00000BC4
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02222A42
	sub r0, #0x3c
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E7FC
	ldr r1, _02222A44 ; =0x00000BC4
	str r0, [r4, r1]
_02222A42:
	pop {r4, pc}
	; .align 2, 0
_02222A44: .word 0x00000BC4
	thumb_func_end ov10_02222A28

	thumb_func_start ov10_02222A48
ov10_02222A48: ; 0x02222A48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02222A60 ; =0x00000BC4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02222A5E
	bl sub_0200EBA0
	ldr r0, _02222A60 ; =0x00000BC4
	mov r1, #0
	str r1, [r4, r0]
_02222A5E:
	pop {r4, pc}
	; .align 2, 0
_02222A60: .word 0x00000BC4
	thumb_func_end ov10_02222A48
	; 0x02222A64


	.rodata
	.incbin "incbin/overlay10_rodata.bin"


	.bss
	.space 0x0
