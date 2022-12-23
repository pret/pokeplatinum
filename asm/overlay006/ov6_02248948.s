	.include "macros/function.inc"
	.include "overlay006/ov6_02248948.inc"

	

	.text


	thumb_func_start ov6_02248948
ov6_02248948: ; 0x02248948
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224895A
	cmp r0, #1
	beq _02248972
	pop {r3, r4, r5, pc}
_0224895A:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _02248994 ; =0x0224984C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _02248990
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02248972:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _02248998 ; =0x02249834
	ldr r1, [r1, r2]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #1
	strh r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02248990:
	pop {r3, r4, r5, pc}
	nop
_02248994: .word 0x0224984C
_02248998: .word 0x02249834
	thumb_func_end ov6_02248948

	thumb_func_start ov6_0224899C
ov6_0224899C: ; 0x0224899C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x10
	add r4, r2, #0
	bl sub_02018144
	add r6, r0, #0
	add r2, r6, #0
	mov r1, #0x10
	mov r0, #0
_022489B4:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022489B4
	ldr r1, _022489DC ; =0x02249840
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r7, #0
	blx r1
	str r0, [r6, #0]
	str r5, [r6, #4]
	ldr r0, _022489E0 ; =ov6_02248948
	str r4, [r6, #0xc]
	mov r2, #0
	add r1, r6, #0
	strh r2, [r5]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022489DC: .word 0x02249840
_022489E0: .word ov6_02248948
	thumb_func_end ov6_0224899C

	.rodata


	.global Unk_ov6_02249834
Unk_ov6_02249834: ; 0x02249834
	.incbin "incbin/overlay6_rodata.bin", 0xA20, 0xA2C - 0xA20

	.global Unk_ov6_02249840
Unk_ov6_02249840: ; 0x02249840
	.incbin "incbin/overlay6_rodata.bin", 0xA2C, 0xA38 - 0xA2C

	.global Unk_ov6_0224984C
Unk_ov6_0224984C: ; 0x0224984C
	.incbin "incbin/overlay6_rodata.bin", 0xA38, 0xC

