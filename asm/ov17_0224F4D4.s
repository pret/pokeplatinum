	.include "macros/function.inc"
	.include "include/ov17_0224F4D4.inc"

	

	.text


	thumb_func_start ov17_0224F4D4
ov17_0224F4D4: ; 0x0224F4D4
	push {r4, r5, lr}
	sub sp, #0xc
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
	ldr r2, _0224F718 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0224F71C ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0224F720 ; =0xFFFF1FFF
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
	mov r2, #7
	mov r0, #3
	mov r1, #0x18
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x4a
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #0x18
	bl sub_0200681C
	mov r2, #0x4a
	mov r1, #0
	lsl r2, r2, #6
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #0x18
	bl ov17_0223F140
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_02006840
	mov r1, #0x5b
	str r0, [r5, #0]
	lsl r1, r1, #2
	str r5, [r0, r1]
	ldr r2, [r5, #0]
	mov r3, #3
	add r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r5, #0]
	str r0, [r5, #0x10]
	add r0, r5, #0
	bl ov17_0224FE1C
	ldr r0, _0224F724 ; =0x0000127F
	mov r1, #0
	strb r1, [r5, r0]
	mov r0, #0x18
	bl sub_02002F38
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003858
	add r0, r5, #0
	add r0, #0xd0
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x18
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xd0
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	mov r3, #0x18
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xd0
	mov r2, #7
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x18
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xd0
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x18
	bl sub_02002F70
	mov r0, #0x18
	bl sub_02018340
	str r0, [r5, #0x30]
	mov r0, #0x40
	mov r1, #0x18
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r5, #0x30]
	bl ov17_0224FB34
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #2
	mov r1, #0x18
	bl sub_02002BB8
	mov r0, #0x18
	bl sub_0200C6E4
	ldr r1, _0224F728 ; =0x02254B0C
	ldr r2, _0224F72C ; =0x02254AC4
	mov r3, #0x20
	str r0, [r5, #0x28]
	bl sub_0200C73C
	ldr r1, _0224F730 ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r5, #0x28]
	bl sub_0200C704
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r2, #0x80
	bl sub_0200C7C0
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _0224F734 ; =0x02254AD8
	bl sub_0200CB30
	mov r0, #0x18
	bl sub_0200762C
	str r0, [r5, #0x14]
	bl ov17_0224FDDC
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xda
	mov r3, #0x18
	bl sub_0200B144
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	mov r0, #0x18
	bl sub_0200B358
	add r1, r5, #0
	add r1, #0xc8
	str r0, [r1, #0]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #0x18
	bl sub_02023790
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1, #0]
	mov r0, #0xa
	mov r1, #0x18
	bl sub_02012744
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov17_0224FE60
	add r0, r5, #0
	bl ov17_0224FE70
	add r0, r5, #0
	bl ov17_0224FCA0
	add r0, r5, #0
	bl ov17_0224FE48
	add r0, r5, #0
	bl ov17_0224FE58
	add r0, r5, #0
	bl ov17_02250744
	bl sub_02039734
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0x18
	str r1, [sp, #8]
	mov r1, #0x21
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, _0224F738 ; =ov17_0224FAFC
	ldr r2, _0224F73C ; =0x00013880
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	mov r0, #0x85
	mov r1, #1
	lsl r0, r0, #4
	strb r1, [r5, r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r1, _0224F740 ; =0x0000046F
	mov r0, #6
	mov r2, #1
	bl sub_02004550
	ldr r1, [r5, #0]
	ldr r0, _0224F744 ; =0x00000171
	ldrb r0, [r1, r0]
	bl sub_020959F4
	ldr r0, _0224F748 ; =ov17_0224FA24
	add r1, r5, #0
	bl sub_02017798
	ldr r0, _0224F74C ; =ov17_0224FAE4
	add r1, r5, #0
	mov r2, #0xa
	bl sub_0200DA04
	str r0, [r5, #8]
	ldr r0, _0224F750 ; =0x000006E5
	bl sub_02005748
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224F718: .word 0xFFFFE0FF
_0224F71C: .word 0x04001000
_0224F720: .word 0xFFFF1FFF
_0224F724: .word 0x0000127F
_0224F728: .word 0x02254B0C
_0224F72C: .word 0x02254AC4
_0224F730: .word 0x00100010
_0224F734: .word 0x02254AD8
_0224F738: .word ov17_0224FAFC
_0224F73C: .word 0x00013880
_0224F740: .word 0x0000046F
_0224F744: .word 0x00000171
_0224F748: .word ov17_0224FA24
_0224F74C: .word ov17_0224FAE4
_0224F750: .word 0x000006E5
	thumb_func_end ov17_0224F4D4

	thumb_func_start ov17_0224F754
ov17_0224F754: ; 0x0224F754
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094E98
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0224F776
	cmp r0, #1
	beq _0224F7A8
	cmp r0, #2
	beq _0224F830
	b _0224F83E
_0224F776:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0224F83E
	ldr r0, _0224F844 ; =ov17_0224FAAC
	add r1, r4, #0
	bl sub_020177BC
	mov r0, #0xff
	str r0, [sp]
	ldr r0, _0224F848 ; =0x0000D6D8
	add r1, r4, #0
	str r0, [sp, #4]
	add r1, #0xd0
	ldr r1, [r1, #0]
	ldr r2, _0224F84C ; =0x02254AB4
	mov r0, #0x18
	mov r3, #8
	bl ov17_0223F70C
	ldr r1, _0224F850 ; =0x00000848
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r5, #0]
	b _0224F83E
_0224F7A8:
	ldr r0, [r4, #0]
	bl sub_02094EDC
	cmp r0, #1
	bne _0224F804
	ldr r2, _0224F854 ; =0x0000084E
	ldr r1, _0224F858 ; =0x00001274
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r4, r1
	lsl r3, r2, #2
	ldr r2, _0224F85C ; =0x02254B54
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	beq _0224F7CC
	cmp r0, #2
	bne _0224F7EE
_0224F7CC:
	cmp r0, #1
	bne _0224F7D8
	ldr r0, _0224F854 ; =0x0000084E
	ldrh r1, [r4, r0]
	add r1, r1, #1
	b _0224F7DE
_0224F7D8:
	ldr r0, _0224F860 ; =0x00001276
	ldrh r1, [r4, r0]
	ldr r0, _0224F854 ; =0x0000084E
_0224F7DE:
	strh r1, [r4, r0]
	ldr r0, _0224F858 ; =0x00001274
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl MI_CpuFill8
	b _0224F804
_0224F7EE:
	cmp r0, #3
	bne _0224F804
	mov r0, #2
	str r0, [r5, #0]
	ldr r0, _0224F858 ; =0x00001274
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl MI_CpuFill8
	b _0224F83E
_0224F804:
	ldr r0, _0224F864 ; =0x0000085C
	add r0, r4, r0
	bl ov17_0224F35C
	ldr r0, _0224F864 ; =0x0000085C
	add r1, r4, #0
	add r0, r4, r0
	bl ov17_0224F3D8
	ldr r0, _0224F868 ; =0x0000127C
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0224F83E
	mov r1, #2
	sub r0, #8
	str r1, [r5, #0]
	add r0, r4, r0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	b _0224F83E
_0224F830:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0224F83E
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224F83E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F844: .word ov17_0224FAAC
_0224F848: .word 0x0000D6D8
_0224F84C: .word 0x02254AB4
_0224F850: .word 0x00000848
_0224F854: .word 0x0000084E
_0224F858: .word 0x00001274
_0224F85C: .word 0x02254B54
_0224F860: .word 0x00001276
_0224F864: .word 0x0000085C
_0224F868: .word 0x0000127C
	thumb_func_end ov17_0224F754

	thumb_func_start ov17_0224F86C
ov17_0224F86C: ; 0x0224F86C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_020141E4
	add r0, r4, #0
	bl ov17_0224FE50
	add r0, r4, #0
	bl ov17_0224FE5C
	add r0, r4, #0
	bl ov17_0224FE68
	add r0, r4, #0
	bl ov17_0224FEC8
	add r5, r4, #0
	mov r6, #0
	add r5, #0x34
_0224F898:
	add r0, r5, #0
	bl sub_0201A8FC
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #9
	blt _0224F898
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl sub_02019044
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x30]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl sub_0200D0B0
	ldr r0, [r4, #0x28]
	bl sub_0200C8D4
	bl sub_0201DC3C
	add r0, r4, #0
	add r0, #0x10
	bl ov17_022507C4
	ldr r0, [r4, #0x14]
	bl sub_02007B6C
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl sub_020127BC
	mov r0, #2
	bl sub_02002C60
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02002F54
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0200B3F0
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_0200B190
	ldr r0, [r4, #0x30]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl ov17_0223F1E0
	bl sub_0201E530
	add r0, r7, #0
	bl sub_02006830
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0224FA00 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0224FA04 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0x18
	bl sub_0201807C
	bl sub_02095A24
	mov r1, #5
	mov r2, #2
	ldr r0, _0224FA08 ; =0x00007FFF
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	bl MIi_CpuClear16
	mov r2, #2
	ldr r0, _0224FA08 ; =0x00007FFF
	ldr r1, _0224FA0C ; =0x05000200
	lsl r2, r2, #8
	bl MIi_CpuClear16
	mov r2, #2
	ldr r0, _0224FA08 ; =0x00007FFF
	ldr r1, _0224FA10 ; =0x05000400
	lsl r2, r2, #8
	bl MIi_CpuClear16
	mov r2, #2
	ldr r0, _0224FA08 ; =0x00007FFF
	ldr r1, _0224FA14 ; =0x05000600
	lsl r2, r2, #8
	bl MIi_CpuClear16
	bl sub_02039794
	ldr r0, _0224FA18 ; =0x0000000B
	bl sub_02006514
	ldr r0, _0224FA1C ; =0x0000000C
	bl sub_02006514
	ldr r0, _0224FA20 ; =0x00000016
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224FA00: .word 0xFFFF1FFF
_0224FA04: .word 0x04001000
_0224FA08: .word 0x00007FFF
_0224FA0C: .word 0x05000200
_0224FA10: .word 0x05000400
_0224FA14: .word 0x05000600
_0224FA18: .word 0x0000000B
_0224FA1C: .word 0x0000000C
_0224FA20: .word 0x00000016
	thumb_func_end ov17_0224F86C

	thumb_func_start ov17_0224FA24
ov17_0224FA24: ; 0x0224FA24
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _0224FA9C ; =0x00000854
	sub r1, r0, #2
	ldrb r3, [r4, r1]
	sub r1, r0, #3
	ldrb r1, [r4, r1]
	sub r6, r0, #1
	ldrb r6, [r4, r6]
	lsl r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r2, r1
	orr r2, r6
	ldrb r5, [r4, r0]
	ldr r6, _0224FAA0 ; =0x04000040
	strh r2, [r6]
	lsl r2, r3, #8
	and r2, r1
	orr r2, r5
	strh r2, [r6, #4]
	add r2, r0, #4
	ldrb r5, [r4, r2]
	add r2, r0, #2
	ldrb r3, [r4, r2]
	add r2, r0, #1
	ldrb r2, [r4, r2]
	add r0, r0, #3
	ldrb r0, [r4, r0]
	lsl r2, r2, #8
	and r2, r1
	orr r0, r2
	strh r0, [r6, #2]
	lsl r0, r3, #8
	and r0, r1
	orr r0, r5
	strh r0, [r6, #6]
	ldr r0, [r4, #0x14]
	bl sub_02008A94
	bl sub_0201DCAC
	bl sub_0200C800
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02003694
	ldr r0, [r4, #0x30]
	bl sub_0201C2B8
	ldr r3, _0224FAA4 ; =0x027E0000
	ldr r1, _0224FAA8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, r5, r6, pc}
	nop
_0224FA9C: .word 0x00000854
_0224FAA0: .word 0x04000040
_0224FAA4: .word 0x027E0000
_0224FAA8: .word 0x00003FF8
	thumb_func_end ov17_0224FA24

	thumb_func_start ov17_0224FAAC
ov17_0224FAAC: ; 0x0224FAAC
	push {r3, lr}
	ldr r1, _0224FADC ; =0x0000127F
	ldrb r0, [r0, r1]
	cmp r0, #1
	bne _0224FAD8
	ldr r0, _0224FAE0 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0x90
	blt _0224FACC
	cmp r0, #0x98
	bgt _0224FACC
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	pop {r3, pc}
_0224FACC:
	cmp r0, #0x90
	bge _0224FAD8
	mov r0, #1
	mov r1, #2
	bl sub_02019060
_0224FAD8:
	pop {r3, pc}
	nop
_0224FADC: .word 0x0000127F
_0224FAE0: .word 0x04000006
	thumb_func_end ov17_0224FAAC

	thumb_func_start ov17_0224FAE4
ov17_0224FAE4: ; 0x0224FAE4
	push {r3, lr}
	ldr r0, _0224FAF8 ; =0x0000127F
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224FAF6
	mov r0, #1
	mov r1, #2
	bl sub_02019060
_0224FAF6:
	pop {r3, pc}
	; .align 2, 0
_0224FAF8: .word 0x0000127F
	thumb_func_end ov17_0224FAE4

	thumb_func_start ov17_0224FAFC
ov17_0224FAFC: ; 0x0224FAFC
	push {r4, lr}
	mov r0, #0x85
	add r4, r1, #0
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0224FB24
	ldr r0, [r4, #0x14]
	bl sub_02007768
	bl ov11_0221F8F0
	ldr r0, [r4, #0x2c]
	bl sub_0200C7EC
	bl sub_0200C808
	ldr r0, _0224FB30 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
_0224FB24:
	ldr r1, [r4, #0x30]
	mov r0, #0x18
	bl sub_02038A1C
	pop {r4, pc}
	nop
_0224FB30: .word 0x04000540
	thumb_func_end ov17_0224FAFC

	thumb_func_start ov17_0224FB34
ov17_0224FB34: ; 0x0224FB34
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _0224FC8C ; =0x02254B2C
	add r3, sp, #0x2c
	mov r2, #5
_0224FB44:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224FB44
	add r0, sp, #0x2c
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r5, _0224FC90 ; =0x02254AA4
	add r3, sp, #0x1c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0224FC94 ; =0x02254B80
	add r3, sp, #0x54
	mov r2, #0xa
_0224FBA4:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224FBA4
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _0224FC98 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r5, _0224FC9C ; =0x02254AF0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224FC8C: .word 0x02254B2C
_0224FC90: .word 0x02254AA4
_0224FC94: .word 0x02254B80
_0224FC98: .word 0x04000008
_0224FC9C: .word 0x02254AF0
	thumb_func_end ov17_0224FB34

	thumb_func_start ov17_0224FCA0
ov17_0224FCA0: ; 0x0224FCA0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x34
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	mov r2, #1
	add r1, r4, #0
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x8b
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r1, #0x44
	mov r3, #6
	bl sub_0201A7E8
	mov r0, #5
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xa3
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x54
	mov r2, #1
	mov r3, #6
	bl sub_0201A7E8
	mov r0, #9
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xbb
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x64
	mov r2, #1
	mov r3, #6
	bl sub_0201A7E8
	mov r1, #0xd
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xd3
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x74
	mov r2, #1
	mov r3, #6
	bl sub_0201A7E8
	mov r2, #1
	add r1, r4, #0
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xeb
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r1, #0x84
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #5
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, #0xf6
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x94
	mov r2, #1
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #9
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224FDD4 ; =0x0000011B
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r1, #0xa4
	mov r2, #1
	mov r3, #0x10
	bl sub_0201A7E8
	mov r1, #0xd
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _0224FDD8 ; =0x00000133
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r4, #0xb4
	add r1, r4, #0
	mov r2, #1
	mov r3, #0x10
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0224FDD4: .word 0x0000011B
_0224FDD8: .word 0x00000133
	thumb_func_end ov17_0224FCA0

	thumb_func_start ov17_0224FDDC
ov17_0224FDDC: ; 0x0224FDDC
	push {r3, r4, r5, lr}
	ldr r3, _0224FE14 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0224FE18 ; =0x02100DF4
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0224FE04
	bl sub_02022974
_0224FE04:
	cmp r5, #0
	bne _0224FE0C
	bl sub_02022974
_0224FE0C:
	bl sub_02014000
	pop {r3, r4, r5, pc}
	nop
_0224FE14: .word 0x02100DEC
_0224FE18: .word 0x02100DF4
	thumb_func_end ov17_0224FDDC

	thumb_func_start ov17_0224FE1C
ov17_0224FE1C: ; 0x0224FE1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0224FE2A
	bl sub_02022974
_0224FE2A:
	mov r1, #0xf3
	mov r5, #0
	mov r0, #3
	lsl r1, r1, #2
_0224FE32:
	sub r3, r0, r5
	add r2, r4, r5
	add r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _0224FE32
	add r0, r4, #0
	bl ov17_02251D6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224FE1C

	thumb_func_start ov17_0224FE48
ov17_0224FE48: ; 0x0224FE48
	ldr r3, _0224FE4C ; =ov17_02250A88
	bx r3
	; .align 2, 0
_0224FE4C: .word ov17_02250A88
	thumb_func_end ov17_0224FE48

	thumb_func_start ov17_0224FE50
ov17_0224FE50: ; 0x0224FE50
	ldr r3, _0224FE54 ; =ov17_02250D8C
	bx r3
	; .align 2, 0
_0224FE54: .word ov17_02250D8C
	thumb_func_end ov17_0224FE50

	thumb_func_start ov17_0224FE58
ov17_0224FE58: ; 0x0224FE58
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224FE58

	thumb_func_start ov17_0224FE5C
ov17_0224FE5C: ; 0x0224FE5C
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224FE5C

	thumb_func_start ov17_0224FE60
ov17_0224FE60: ; 0x0224FE60
	ldr r3, _0224FE64 ; =ov17_022509AC
	bx r3
	; .align 2, 0
_0224FE64: .word ov17_022509AC
	thumb_func_end ov17_0224FE60

	thumb_func_start ov17_0224FE68
ov17_0224FE68: ; 0x0224FE68
	ldr r3, _0224FE6C ; =ov17_02250D24
	bx r3
	; .align 2, 0
_0224FE6C: .word ov17_02250D24
	thumb_func_end ov17_0224FE68

	thumb_func_start ov17_0224FE70
ov17_0224FE70: ; 0x0224FE70
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #0x2d
	mov r1, #0x13
	mov r3, #4
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #0x2d
	mov r1, #0x14
	mov r3, #4
	bl sub_02006E60
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r4, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x2d
	mov r2, #0x22
	mov r3, #0x18
	bl sub_02003050
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224FE70

	thumb_func_start ov17_0224FEC8
ov17_0224FEC8: ; 0x0224FEC8
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224FEC8

	thumb_func_start ov17_0224FECC
ov17_0224FECC: ; 0x0224FECC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldrh r1, [r7]
	add r4, r0, #0
	cmp r1, #0
	beq _0224FEE2
	cmp r1, #1
	beq _0224FF70
	cmp r1, #2
	beq _0224FFA8
	b _0224FFCA
_0224FEE2:
	bl ov17_02251A1C
	mov r0, #0x13
	ldr r2, [r4, #0]
	mov r5, #0
	lsl r0, r0, #4
_0224FEEE:
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _0224FEFC
	add r5, r5, #1
	add r2, #0xc
	cmp r5, #4
	blt _0224FEEE
_0224FEFC:
	cmp r5, #4
	bne _0224FF04
	bl sub_02022974
_0224FF04:
	ldr r0, _0224FFD4 ; =0x00000438
	ldr r1, _0224FFD8 ; =0x00000439
	strb r5, [r4, r0]
	mov r5, #0
	sub r0, #0x67
_0224FF0E:
	add r3, r4, r5
	ldrb r2, [r3, r0]
	add r5, r5, #1
	cmp r5, #4
	strb r2, [r3, r1]
	blt _0224FF0E
	mov r3, #0
	add r1, r3, #0
	add r2, r4, #0
_0224FF20:
	ldr r0, [r4, #0]
	mov r5, #0x4a
	add r0, r0, r1
	lsl r5, r5, #2
	ldrh r6, [r0, r5]
	mov r5, #0xe7
	lsl r5, r5, #2
	strh r6, [r2, r5]
	ldr r5, _0224FFDC ; =0x0000012A
	add r3, r3, #1
	ldrh r6, [r0, r5]
	ldr r5, _0224FFE0 ; =0x0000039E
	add r1, #0xc
	strh r6, [r2, r5]
	mov r5, #0x4b
	lsl r5, r5, #2
	ldrh r6, [r0, r5]
	mov r5, #0x3a
	lsl r5, r5, #4
	strh r6, [r2, r5]
	ldr r5, _0224FFE4 ; =0x0000012E
	ldrh r6, [r0, r5]
	ldr r5, _0224FFE8 ; =0x000003A2
	strh r6, [r2, r5]
	mov r5, #0x13
	lsl r5, r5, #4
	ldrh r6, [r0, r5]
	mov r5, #0xe9
	lsl r5, r5, #2
	strh r6, [r2, r5]
	ldr r5, _0224FFEC ; =0x00000132
	ldrh r5, [r0, r5]
	ldr r0, _0224FFF0 ; =0x000003A6
	strh r5, [r2, r0]
	add r2, #0xc
	cmp r3, #4
	blt _0224FF20
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0224FF70:
	ldr r1, [r4, #0]
	ldr r0, _0224FFF4 ; =0x00000177
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224FF86
	ldr r0, [r7, #4]
	cmp r0, #0x78
	bge _0224FF86
	add r0, r0, #1
	str r0, [r7, #4]
	b _0224FFCE
_0224FF86:
	ldr r0, _0224FFF8 ; =0x0000085C
	mov r3, #0xe7
	lsl r3, r3, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #1
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0224FFCE
	mov r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0224FFCE
_0224FFA8:
	ldr r0, _0224FFF8 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0224FFFC ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0224FFCE
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0224FFCE
_0224FFCA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224FFCE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224FFD4: .word 0x00000438
_0224FFD8: .word 0x00000439
_0224FFDC: .word 0x0000012A
_0224FFE0: .word 0x0000039E
_0224FFE4: .word 0x0000012E
_0224FFE8: .word 0x000003A2
_0224FFEC: .word 0x00000132
_0224FFF0: .word 0x000003A6
_0224FFF4: .word 0x00000177
_0224FFF8: .word 0x0000085C
_0224FFFC: .word 0x00000127
	thumb_func_end ov17_0224FECC

	thumb_func_start ov17_02250000
ov17_02250000: ; 0x02250000
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02250012
	cmp r0, #1
	beq _0225004C
	b _0225006E
_02250012:
	ldr r3, _02250078 ; =0x00000445
	mov r1, #0
	strb r1, [r5, r3]
	add r0, r3, #2
	strb r1, [r5, r0]
	add r0, r3, #1
	strb r1, [r5, r0]
	add r0, r3, #0
	sub r0, #0x79
	ldrb r1, [r5, r0]
	sub r0, r3, #7
	mov r2, #5
	strb r1, [r5, r0]
	sub r0, r3, #1
	mov r1, #1
	strb r1, [r5, r0]
	ldr r0, _0225007C ; =0x0000085C
	sub r3, #0xf
	add r0, r5, r0
	add r1, r5, #0
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250072
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250072
_0225004C:
	ldr r0, _0225007C ; =0x0000085C
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _02250080 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250072
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250072
_0225006E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250072:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02250078: .word 0x00000445
_0225007C: .word 0x0000085C
_02250080: .word 0x00000127
	thumb_func_end ov17_02250000

	thumb_func_start ov17_02250084
ov17_02250084: ; 0x02250084
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02250096
	cmp r0, #1
	beq _022500B4
	b _022500D6
_02250096:
	ldr r0, _022500E0 ; =0x0000085C
	mov r3, #0xe7
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #6
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022500DA
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _022500DA
_022500B4:
	ldr r0, _022500E0 ; =0x0000085C
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _022500E4 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022500DA
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _022500DA
_022500D6:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022500DA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022500E0: .word 0x0000085C
_022500E4: .word 0x00000127
	thumb_func_end ov17_02250084

	thumb_func_start ov17_022500E8
ov17_022500E8: ; 0x022500E8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022500FE
	cmp r0, #1
	beq _02250130
	cmp r0, #2
	beq _02250152
	b _02250164
_022500FE:
	ldr r3, _0225016C ; =0x00000445
	mov r0, #0
	strb r0, [r5, r3]
	mov r1, #1
	add r0, r3, #2
	strb r1, [r5, r0]
	add r0, r3, #1
	strb r1, [r5, r0]
	sub r0, r3, #1
	mov r1, #6
	strb r1, [r5, r0]
	ldr r0, _02250170 ; =0x0000085C
	sub r3, #0xf
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #5
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250168
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250130:
	ldr r0, _02250170 ; =0x0000085C
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _02250174 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250168
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250152:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _02250168
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250164:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250168:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225016C: .word 0x00000445
_02250170: .word 0x0000085C
_02250174: .word 0x00000127
	thumb_func_end ov17_022500E8

	thumb_func_start ov17_02250178
ov17_02250178: ; 0x02250178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #4
	bhi _02250268
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250190: ; jump table
	.short _0225019A - _02250190 - 2 ; case 0
	.short _022501F0 - _02250190 - 2 ; case 1
	.short _02250212 - _02250190 - 2 ; case 2
	.short _02250234 - _02250190 - 2 ; case 3
	.short _02250256 - _02250190 - 2 ; case 4
_0225019A:
	ldr r1, [r3, #0]
	ldr r0, _02250270 ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #4
	bhi _022501BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022501B0: ; jump table
	.short _022501BE - _022501B0 - 2 ; case 0
	.short _022501BE - _022501B0 - 2 ; case 1
	.short _022501BE - _022501B0 - 2 ; case 2
	.short _022501BE - _022501B0 - 2 ; case 3
	.short _022501BE - _022501B0 - 2 ; case 4
_022501BA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022501BE:
	ldr r5, _02250274 ; =0x00000445
	mov r0, #0
	strb r0, [r3, r5]
	mov r1, #1
	add r0, r5, #2
	strb r1, [r3, r0]
	add r0, r5, #1
	strb r1, [r3, r0]
	sub r0, r5, #1
	mov r1, #2
	strb r1, [r3, r0]
	ldr r0, _02250278 ; =0x0000085C
	sub r5, #0xf
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #5
	add r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_022501F0:
	ldr r0, _02250278 ; =0x0000085C
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _0225027C ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250212:
	ldr r5, _02250280 ; =0x0000043D
	mov r0, #0
	strb r0, [r3, r5]
	ldr r0, _02250278 ; =0x0000085C
	sub r5, r5, #7
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #9
	add r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250234:
	ldr r0, _02250278 ; =0x0000085C
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _0225027C ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250256:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250268:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225026C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250270: .word 0x00000121
_02250274: .word 0x00000445
_02250278: .word 0x0000085C
_0225027C: .word 0x00000127
_02250280: .word 0x0000043D
	thumb_func_end ov17_02250178

	thumb_func_start ov17_02250284
ov17_02250284: ; 0x02250284
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #4
	bhi _02250390
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225029C: ; jump table
	.short _022502A6 - _0225029C - 2 ; case 0
	.short _02250318 - _0225029C - 2 ; case 1
	.short _0225033A - _0225029C - 2 ; case 2
	.short _0225035C - _0225029C - 2 ; case 3
	.short _0225037E - _0225029C - 2 ; case 4
_022502A6:
	ldr r1, [r4, #0]
	ldr r0, _02250398 ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #6
	bhi _022502CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022502BC: ; jump table
	.short _022502CA - _022502BC - 2 ; case 0
	.short _022502CE - _022502BC - 2 ; case 1
	.short _022502CE - _022502BC - 2 ; case 2
	.short _022502CA - _022502BC - 2 ; case 3
	.short _022502CA - _022502BC - 2 ; case 4
	.short _022502CE - _022502BC - 2 ; case 5
	.short _022502CE - _022502BC - 2 ; case 6
_022502CA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022502CE:
	ldr r1, _0225039C ; =0x00000445
	mov r0, #0
	strb r0, [r4, r1]
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x79
	ldrb r2, [r4, r0]
	sub r0, r1, #7
	sub r1, #0x79
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl sub_020958FC
	ldr r3, _022503A0 ; =0x00000442
	add r0, r0, #1
	strb r0, [r4, r3]
	add r0, r3, #2
	mov r1, #3
	strb r1, [r4, r0]
	ldr r0, _022503A4 ; =0x0000085C
	sub r3, #0xc
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #5
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_02250318:
	ldr r0, _022503A4 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _022503A8 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225033A:
	ldr r3, _022503AC ; =0x0000043D
	mov r0, #1
	strb r0, [r4, r3]
	ldr r0, _022503A4 ; =0x0000085C
	sub r3, r3, #7
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #9
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225035C:
	ldr r0, _022503A4 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _022503A8 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225037E:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0x5a
	ble _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_02250390:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250394:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250398: .word 0x00000121
_0225039C: .word 0x00000445
_022503A0: .word 0x00000442
_022503A4: .word 0x0000085C
_022503A8: .word 0x00000127
_022503AC: .word 0x0000043D
	thumb_func_end ov17_02250284

	thumb_func_start ov17_022503B0
ov17_022503B0: ; 0x022503B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #4
	bls _022503BE
	b _022504C2
_022503BE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022503CA: ; jump table
	.short _022503D4 - _022503CA - 2 ; case 0
	.short _0225044A - _022503CA - 2 ; case 1
	.short _0225046C - _022503CA - 2 ; case 2
	.short _0225048E - _022503CA - 2 ; case 3
	.short _022504B0 - _022503CA - 2 ; case 4
_022503D4:
	ldr r1, [r4, #0]
	ldr r0, _022504CC ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #8
	bhi _022503FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022503EA: ; jump table
	.short _02250400 - _022503EA - 2 ; case 0
	.short _022503FC - _022503EA - 2 ; case 1
	.short _02250400 - _022503EA - 2 ; case 2
	.short _022503FC - _022503EA - 2 ; case 3
	.short _022503FC - _022503EA - 2 ; case 4
	.short _022503FC - _022503EA - 2 ; case 5
	.short _022503FC - _022503EA - 2 ; case 6
	.short _02250400 - _022503EA - 2 ; case 7
	.short _02250400 - _022503EA - 2 ; case 8
_022503FC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250400:
	ldr r1, _022504D0 ; =0x00000445
	mov r0, #0
	strb r0, [r4, r1]
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x79
	ldrb r2, [r4, r0]
	sub r0, r1, #7
	sub r1, #0x79
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl sub_020958FC
	ldr r3, _022504D4 ; =0x00000442
	add r0, r0, #1
	strb r0, [r4, r3]
	add r0, r3, #2
	mov r1, #4
	strb r1, [r4, r0]
	ldr r0, _022504D8 ; =0x0000085C
	sub r3, #0xc
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #5
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225044A:
	ldr r0, _022504D8 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _022504DC ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225046C:
	ldr r3, _022504E0 ; =0x0000043D
	mov r0, #2
	strb r0, [r4, r3]
	ldr r0, _022504D8 ; =0x0000085C
	sub r3, r3, #7
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #9
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225048E:
	ldr r0, _022504D8 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _022504DC ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_022504B0:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0xf
	ble _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_022504C2:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022504C6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022504CC: .word 0x00000121
_022504D0: .word 0x00000445
_022504D4: .word 0x00000442
_022504D8: .word 0x0000085C
_022504DC: .word 0x00000127
_022504E0: .word 0x0000043D
	thumb_func_end ov17_022503B0

	thumb_func_start ov17_022504E4
ov17_022504E4: ; 0x022504E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022504F6
	cmp r0, #1
	beq _02250512
	b _02250534
_022504F6:
	ldr r0, _0225053C ; =0x0000085C
	ldr r3, _02250540 ; =0x00000436
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #7
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250538
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250538
_02250512:
	ldr r0, _0225053C ; =0x0000085C
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _02250544 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250538
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250538
_02250534:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250538:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225053C: .word 0x0000085C
_02250540: .word 0x00000436
_02250544: .word 0x00000127
	thumb_func_end ov17_022504E4

	thumb_func_start ov17_02250548
ov17_02250548: ; 0x02250548
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #3
	bhi _02250610
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250560: ; jump table
	.short _02250568 - _02250560 - 2 ; case 0
	.short _022505B0 - _02250560 - 2 ; case 1
	.short _022505D2 - _02250560 - 2 ; case 2
	.short _022505EE - _02250560 - 2 ; case 3
_02250568:
	ldr r1, _02250618 ; =0x00000445
	mov r0, #0
	strb r0, [r4, r1]
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xd
	ldrb r2, [r4, r0]
	sub r0, r1, #7
	sub r1, #0xd
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl sub_020958FC
	ldr r3, _0225061C ; =0x00000442
	add r0, r0, #1
	strb r0, [r4, r3]
	add r0, r3, #2
	mov r2, #5
	strb r2, [r4, r0]
	ldr r0, _02250620 ; =0x0000085C
	sub r3, #0xc
	add r0, r4, r0
	add r1, r4, #0
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505B0:
	ldr r0, _02250620 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _02250624 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505D2:
	ldr r0, _02250620 ; =0x0000085C
	ldr r3, _02250628 ; =0x00000436
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #8
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505EE:
	ldr r0, _02250620 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _02250624 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250614
_02250610:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250614:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250618: .word 0x00000445
_0225061C: .word 0x00000442
_02250620: .word 0x0000085C
_02250624: .word 0x00000127
_02250628: .word 0x00000436
	thumb_func_end ov17_02250548

	thumb_func_start ov17_0225062C
ov17_0225062C: ; 0x0225062C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225063E
	cmp r0, #1
	beq _02250676
	b _02250698
_0225063E:
	ldr r5, _022506A0 ; =0x00000445
	mov r0, #0
	strb r0, [r3, r5]
	add r1, r5, #2
	strb r0, [r3, r1]
	add r1, r5, #1
	strb r0, [r3, r1]
	add r1, r5, #0
	sub r1, #0x79
	ldrb r2, [r3, r1]
	sub r1, r5, #7
	strb r2, [r3, r1]
	sub r1, r5, #1
	strb r0, [r3, r1]
	ldr r0, _022506A4 ; =0x0000085C
	sub r5, #0xf
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #5
	add r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225069C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225069C
_02250676:
	ldr r0, _022506A4 ; =0x0000085C
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _022506A8 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225069C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225069C
_02250698:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225069C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022506A0: .word 0x00000445
_022506A4: .word 0x0000085C
_022506A8: .word 0x00000127
	thumb_func_end ov17_0225062C

	thumb_func_start ov17_022506AC
ov17_022506AC: ; 0x022506AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022506C2
	cmp r0, #1
	beq _022506DC
	cmp r0, #2
	beq _022506FE
	b _02250718
_022506C2:
	ldr r0, _0225073C ; =0x0000085C
	add r1, r2, #0
	add r0, r2, r0
	mov r2, #0xa
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250736
_022506DC:
	ldr r0, _0225073C ; =0x0000085C
	ldr r3, [r2, #0]
	ldr r5, _02250740 ; =0x00000127
	add r0, r2, r0
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250736
_022506FE:
	ldr r0, _0225073C ; =0x0000085C
	add r1, r2, #0
	add r0, r2, r0
	mov r2, #4
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250736
_02250718:
	ldr r0, _0225073C ; =0x0000085C
	ldr r3, [r2, #0]
	ldr r4, _02250740 ; =0x00000127
	add r0, r2, r0
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250736
	mov r0, #3
	pop {r3, r4, r5, pc}
_02250736:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225073C: .word 0x0000085C
_02250740: .word 0x00000127
	thumb_func_end ov17_022506AC

	.rodata


	.global Unk_ov17_02254AA4
Unk_ov17_02254AA4: ; 0x02254AA4
	.incbin "incbin/overlay17_rodata.bin", 0x1D18, 0x1D28 - 0x1D18

	.global Unk_ov17_02254AB4
Unk_ov17_02254AB4: ; 0x02254AB4
	.incbin "incbin/overlay17_rodata.bin", 0x1D28, 0x1D38 - 0x1D28

	.global Unk_ov17_02254AC4
Unk_ov17_02254AC4: ; 0x02254AC4
	.incbin "incbin/overlay17_rodata.bin", 0x1D38, 0x1D4C - 0x1D38

	.global Unk_ov17_02254AD8
Unk_ov17_02254AD8: ; 0x02254AD8
	.incbin "incbin/overlay17_rodata.bin", 0x1D4C, 0x1D64 - 0x1D4C

	.global Unk_ov17_02254AF0
Unk_ov17_02254AF0: ; 0x02254AF0
	.incbin "incbin/overlay17_rodata.bin", 0x1D64, 0x1D80 - 0x1D64

	.global Unk_ov17_02254B0C
Unk_ov17_02254B0C: ; 0x02254B0C
	.incbin "incbin/overlay17_rodata.bin", 0x1D80, 0x1DA0 - 0x1D80

	.global Unk_ov17_02254B2C
Unk_ov17_02254B2C: ; 0x02254B2C
	.incbin "incbin/overlay17_rodata.bin", 0x1DA0, 0x1DC8 - 0x1DA0

	.global Unk_ov17_02254B54
Unk_ov17_02254B54: ; 0x02254B54
	.incbin "incbin/overlay17_rodata.bin", 0x1DC8, 0x1DF4 - 0x1DC8

	.global Unk_ov17_02254B80
Unk_ov17_02254B80: ; 0x02254B80
	.incbin "incbin/overlay17_rodata.bin", 0x1DF4, 0x54

