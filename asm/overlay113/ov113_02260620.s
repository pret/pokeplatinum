	.include "macros/function.inc"
	.include "overlay113/ov113_02260620.inc"

	

	.text


	thumb_func_start ov113_02260620
ov113_02260620: ; 0x02260620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x14]
	add r4, r2, #0
	str r3, [sp, #0x18]
	bl ov66_02232B8C
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02260706
	ldr r0, [sp, #0x40]
	bl ov66_02232B78
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x24]
	cmp r0, r1
	beq _02260706
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	bl ov66_0222E374
	add r7, r0, #0
	beq _02260706
	cmp r5, #8
	blo _02260664
	bl GF_AssertFail
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02260664:
	mov r0, #0x76
	bl sub_02025E6C
	add r6, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0x76
	bl ov66_0222E640
	add r0, r6, #0
	mov r1, #0x76
	bl sub_02025F04
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02025F30
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	bl sub_0200B48C
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	mov r0, #0x40
	mov r1, #0x76
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	bl sub_0200C388
	lsl r5, r5, #4
	add r0, r4, r5
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	bl ov66_0222E924
	cmp r0, #1
	bne _022606D2
	ldr r0, _0226070C ; =0x00070800
	b _022606D4
_022606D2:
	ldr r0, _02260710 ; =0x00010200
_022606D4:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, r5
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, r5
	bl sub_0201A954
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020181C4
_02260706:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226070C: .word 0x00070800
_02260710: .word 0x00010200
	thumb_func_end ov113_02260620

	thumb_func_start ov113_02260714
ov113_02260714: ; 0x02260714
	push {r3, lr}
	cmp r1, #8
	blo _02260720
	bl GF_AssertFail
	pop {r3, pc}
_02260720:
	lsl r1, r1, #4
	add r0, r0, r1
	bl sub_0201ACF4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov113_02260714

	thumb_func_start ov113_0226072C
ov113_0226072C: ; 0x0226072C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #9
	bl _u32_div_f
	lsl r2, r1, #2
	ldr r0, _02260744 ; =0x02260D6C
	lsl r1, r4, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02260744: .word 0x02260D6C
	thumb_func_end ov113_0226072C

	thumb_func_start ov113_02260748
ov113_02260748: ; 0x02260748
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02260784 ; =0x02260D4C
	add r6, r1, #0
	mov r4, #0xff
	bl sub_02022664
	cmp r0, #6
	bge _02260776
	cmp r6, r0
	beq _02260780
	mov r1, #0xc
	mul r1, r0
	add r1, r5, r1
	ldrh r2, [r1, #2]
	cmp r2, #0
	beq _02260780
	add r1, r4, #0
	add r1, #0xee
	cmp r2, r1
	bhi _02260780
	add r4, r0, #0
	b _02260780
_02260776:
	bne _0226077C
	mov r4, #0xfe
	b _02260780
_0226077C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02260780:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02260784: .word 0x02260D4C
	thumb_func_end ov113_02260748

	thumb_func_start ov113_02260788
ov113_02260788: ; 0x02260788
	ldr r3, _022607AC ; =0x000001E7
	cmp r0, r3
	bne _02260796
	cmp r1, #0
	ble _02260796
	mov r0, #0
	bx lr
_02260796:
	ldr r1, _022607B0 ; =0x000001ED
	cmp r0, r1
	bne _022607A4
	cmp r2, #0
	bne _022607A4
	mov r0, #0
	bx lr
_022607A4:
	lsl r1, r0, #2
	ldr r0, _022607B4 ; =0x02260D90
	ldrb r0, [r0, r1]
	bx lr
	; .align 2, 0
_022607AC: .word 0x000001E7
_022607B0: .word 0x000001ED
_022607B4: .word 0x02260D90
	thumb_func_end ov113_02260788

	thumb_func_start ov113_022607B8
ov113_022607B8: ; 0x022607B8
	ldr r2, _022607D0 ; =0x000001E7
	cmp r0, r2
	bne _022607C6
	cmp r1, #0
	ble _022607C6
	mov r0, #2
	bx lr
_022607C6:
	lsl r1, r0, #2
	ldr r0, _022607D4 ; =0x02260D91
	ldrb r0, [r0, r1]
	bx lr
	nop
_022607D0: .word 0x000001E7
_022607D4: .word 0x02260D91
	thumb_func_end ov113_022607B8

	.rodata


	.global Unk_ov113_02260D4C
Unk_ov113_02260D4C: ; 0x02260D4C
	.incbin "incbin/overlay113_rodata.bin", 0x4A0, 0x4C0 - 0x4A0

	.global Unk_ov113_02260D6C
Unk_ov113_02260D6C: ; 0x02260D6C
	.incbin "incbin/overlay113_rodata.bin", 0x4C0, 0x4E4 - 0x4C0

	.global Unk_ov113_02260D90
Unk_ov113_02260D90: ; 0x02260D90
	.incbin "incbin/overlay113_rodata.bin", 0x4E4, 0x7B8

