	.include "macros/function.inc"
	.include "include/unk_02048BD0.inc"

	

	.text


	thumb_func_start sub_02048BD0
sub_02048BD0: ; 0x02048BD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202B4A0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r7, [r0, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	cmp r0, #6
	bls _02048C04
	b _02048DD0
_02048C04:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02048C10: ; jump table
	.short _02048C1E - _02048C10 - 2 ; case 0
	.short _02048C54 - _02048C10 - 2 ; case 1
	.short _02048C8A - _02048C10 - 2 ; case 2
	.short _02048CC0 - _02048C10 - 2 ; case 3
	.short _02048CF6 - _02048C10 - 2 ; case 4
	.short _02048D2C - _02048C10 - 2 ; case 5
	.short _02048D66 - _02048C10 - 2 ; case 6
_02048C1E:
	add r0, r4, #0
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
	add r1, r6, #0
	bl sub_0202B4AC
	strh r0, [r4]
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02048C54:
	add r0, r4, #0
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
	add r1, r6, #0
	bl sub_0202B4C4
	strh r0, [r4]
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02048C8A:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200C054
	b _02048DD0
_02048CC0:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200C054
	b _02048DD0
_02048CF6:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0202B42C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r2, #0
	str r2, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x74]
	mov r1, #5
	mov r3, #7
	bl sub_0203DFE8
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02048D2C:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0202B4AC
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_0202B384
	cmp r6, #0
	beq _02048D60
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0206D430
_02048D60:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02048D66:
	mov r0, #0x40
	mov r1, #0x20
	bl sub_02023790
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r1, r6, #0
	add r7, r0, #0
	bl sub_02025EF4
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	add r3, r6, #0
	bl sub_0202B444
	add r0, r7, #0
	bl sub_02025F30
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0202B470
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl sub_0202B494
	bl sub_0201D35C
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0202B40C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl sub_0202B384
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0206D424
_02048DD0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02048BD0