	.include "macros/function.inc"
	.include "include/unk_02092494.inc"

	

	.text


	thumb_func_start sub_02092494
sub_02092494: ; 0x02092494
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x3c
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _0209280C ; =0x000001C7
	str r7, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	str r0, [r4, #4]
	ldr r2, [r4, #0]
	mov r0, #9
	mov r1, #0x20
	bl sub_0200B368
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0]
	bl sub_02092E8C
	cmp r0, #0x14
	bls _020924EC
	b _02092828
_020924EC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020924F8: ; jump table
	.short _02092522 - _020924F8 - 2 ; case 0
	.short _0209254E - _020924F8 - 2 ; case 1
	.short _0209257A - _020924F8 - 2 ; case 2
	.short _020925A6 - _020924F8 - 2 ; case 3
	.short _020925D2 - _020924F8 - 2 ; case 4
	.short _020925FE - _020924F8 - 2 ; case 5
	.short _0209262A - _020924F8 - 2 ; case 6
	.short _02092656 - _020924F8 - 2 ; case 7
	.short _02092682 - _020924F8 - 2 ; case 8
	.short _020926AE - _020924F8 - 2 ; case 9
	.short _020926D0 - _020924F8 - 2 ; case 10
	.short _020926F2 - _020924F8 - 2 ; case 11
	.short _02092714 - _020924F8 - 2 ; case 12
	.short _02092736 - _020924F8 - 2 ; case 13
	.short _02092758 - _020924F8 - 2 ; case 14
	.short _0209277A - _020924F8 - 2 ; case 15
	.short _020927A6 - _020924F8 - 2 ; case 16
	.short _020927C0 - _020924F8 - 2 ; case 17
	.short _020927D8 - _020924F8 - 2 ; case 18
	.short _020927F2 - _020924F8 - 2 ; case 19
	.short _02092810 - _020924F8 - 2 ; case 20
_02092522:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x31
	bl sub_020928A0
	mov r0, #6
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #7
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_0209254E:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x32
	bl sub_020928A0
	mov r0, #6
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #7
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_0209257A:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x33
	bl sub_020928A0
	mov r0, #6
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #7
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020925A6:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x34
	bl sub_020928A0
	mov r0, #8
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020925D2:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x35
	bl sub_020928A0
	mov r0, #8
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020925FE:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x36
	bl sub_020928A0
	mov r0, #8
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_0209262A:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x37
	bl sub_020928A0
	mov r0, #8
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_02092656:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x38
	bl sub_020928A0
	mov r0, #7
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #8
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_02092682:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x39
	bl sub_020928A0
	mov r0, #7
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #8
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020926AE:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3a
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_020926D0:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3b
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_020926F2:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3c
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_02092714:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3d
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_02092736:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3e
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_02092758:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3f
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_0209277A:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x40
	bl sub_020929C0
	mov r0, #6
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #7
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020927A6:
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x65
	mov r2, #0
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
	b _02092828
_020927C0:
	mov r2, #1
	add r0, r4, #0
	mov r1, #0x66
	str r2, [r4, #0x1c]
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
	b _02092828
_020927D8:
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x67
	mov r2, #0
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
	b _02092828
_020927F2:
	mov r2, #1
	add r0, r4, #0
	mov r1, #0x67
	str r2, [r4, #0x1c]
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
	b _02092828
	nop
_0209280C: .word 0x000001C7
_02092810:
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x68
	mov r2, #0
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
_02092828:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02092494

	thumb_func_start sub_0209282C
sub_0209282C: ; 0x0209282C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0209283A
	bl sub_020181C4
_0209283A:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02092844
	bl sub_020181C4
_02092844:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0209284E
	bl sub_020181C4
_0209284E:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02092858
	bl sub_020181C4
_02092858:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _02092862
	bl sub_020181C4
_02092862:
	ldr r0, [r4, #8]
	bl sub_0200B3F0
	ldr r0, [r4, #4]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209282C

	thumb_func_start sub_02092878
sub_02092878: ; 0x02092878
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02075BCC
	add r4, r0, #0
	cmp r4, #0x18
	bgt _0209289E
	ldr r1, [r5, #0]
	mov r0, #0x48
	bl sub_02023790
	str r0, [r5, #0x18]
	add r4, #0x18
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x18]
	add r1, r4, #0
	bl sub_0200B1B8
_0209289E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02092878

	thumb_func_start sub_020928A0
sub_020928A0: ; 0x020928A0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #9
	ldr r1, [r5, #0]
	lsl r0, r0, #6
	bl sub_02023790
	add r4, r0, #0
	mov r0, #9
	ldr r1, [r5, #0]
	lsl r0, r0, #6
	bl sub_02023790
	str r0, [r5, #0x20]
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0xc]
	mov r1, #0x95
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x96
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0200C2E0
	ldr r0, [r5, #0xc]
	mov r1, #0x97
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldr r0, [r5, #8]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x9c
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldr r0, [r5, #8]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #4
	bl sub_0200BECC
	ldr r0, [r5, #0xc]
	mov r1, #0x92
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x93
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #6
	bl sub_0200C2E0
	ldr r0, [r5, #0xc]
	mov r1, #0x94
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #7
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #8
	bl sub_0200BECC
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020928A0

	thumb_func_start sub_020929C0
sub_020929C0: ; 0x020929C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	mov r0, #0x12
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	bl sub_02023790
	add r5, r0, #0
	mov r0, #0x12
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	bl sub_02023790
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200B1B8
	ldr r0, [r4, #0xc]
	mov r1, #0x95
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0200B60C
	ldr r0, [r4, #0xc]
	mov r1, #0x96
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200C2E0
	ldr r0, [r4, #0xc]
	mov r1, #0x97
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldr r0, [r4, #8]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r4, #0xc]
	mov r1, #0x9c
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldr r0, [r4, #8]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r4, #0xc]
	mov r1, #0x7a
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xf
	bhi _02092A90
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02092A70: ; jump table
	.short _02092A90 - _02092A70 - 2 ; case 0
	.short _02092ACC - _02092A70 - 2 ; case 1
	.short _02092ACC - _02092A70 - 2 ; case 2
	.short _02092ACC - _02092A70 - 2 ; case 3
	.short _02092AA4 - _02092A70 - 2 ; case 4
	.short _02092AA4 - _02092A70 - 2 ; case 5
	.short _02092A90 - _02092A70 - 2 ; case 6
	.short _02092AB8 - _02092A70 - 2 ; case 7
	.short _02092AB8 - _02092A70 - 2 ; case 8
	.short _02092A90 - _02092A70 - 2 ; case 9
	.short _02092AF4 - _02092A70 - 2 ; case 10
	.short _02092AF4 - _02092A70 - 2 ; case 11
	.short _02092AF4 - _02092A70 - 2 ; case 12
	.short _02092A90 - _02092A70 - 2 ; case 13
	.short _02092A90 - _02092A70 - 2 ; case 14
	.short _02092AE0 - _02092A70 - 2 ; case 15
_02092A90:
	mov r0, #1
	mov r1, #7
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092AA4:
	mov r0, #1
	mov r1, #3
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092AB8:
	mov r0, #1
	mov r1, #4
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092ACC:
	mov r0, #1
	mov r1, #5
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092AE0:
	mov r0, #1
	mov r1, #8
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092AF4:
	mov r0, #1
	mov r1, #7
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
_02092B06:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x20]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020929C0

	thumb_func_start sub_02092B1C
sub_02092B1C: ; 0x02092B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x5a
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r6, r2, #0
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x5a
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	bl sub_02023790
	str r0, [r5, #0x20]
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0200B1B8
	cmp r6, #0
	ldr r0, [r5, #0xc]
	bne _02092BB0
	mov r1, #0x92
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x93
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #6
	bl sub_0200C2E0
	ldr r0, [r5, #0xc]
	mov r1, #0x94
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #7
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #8
	bl sub_0200BECC
	b _02092C10
_02092BB0:
	mov r1, #0x95
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x96
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #6
	bl sub_0200C2E0
	ldr r0, [r5, #0xc]
	mov r1, #0x97
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #7
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #8
	bl sub_0200BECC
_02092C10:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02092B1C

	thumb_func_start sub_02092C24
sub_02092C24: ; 0x02092C24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #0x48
	bl sub_02023790
	str r0, [r4, #0x28]
	ldr r0, [r4, #0xc]
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r1, #0
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_02074470
	mov r1, #6
	bl _u32_div_f
	cmp r1, #5
	bhi _02092CA8
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02092C9C: ; jump table
	.short _02092CA8 - _02092C9C - 2 ; case 0
	.short _02092CE0 - _02092C9C - 2 ; case 1
	.short _02092D16 - _02092C9C - 2 ; case 2
	.short _02092D4C - _02092C9C - 2 ; case 3
	.short _02092D82 - _02092C9C - 2 ; case 4
	.short _02092DB8 - _02092C9C - 2 ; case 5
_02092CA8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r0, #0
	mov r5, #0
	cmp r2, r1
	bge _02092CB8
	mov r5, #1
	add r0, r1, #0
_02092CB8:
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _02092CC2
	mov r5, #2
	add r0, r1, #0
_02092CC2:
	ldr r1, [sp]
	cmp r0, r1
	bge _02092CCC
	mov r5, #3
	add r0, r1, #0
_02092CCC:
	cmp r0, r7
	bge _02092CD4
	mov r5, #4
	add r0, r7, #0
_02092CD4:
	cmp r0, r6
	blt _02092CDA
	b _02092DEC
_02092CDA:
	mov r5, #5
	add r0, r6, #0
	b _02092DEC
_02092CE0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r0, #0
	mov r5, #1
	cmp r2, r1
	bge _02092CF0
	mov r5, #2
	add r0, r1, #0
_02092CF0:
	ldr r1, [sp]
	cmp r0, r1
	bge _02092CFA
	mov r5, #3
	add r0, r1, #0
_02092CFA:
	cmp r0, r7
	bge _02092D02
	mov r5, #4
	add r0, r7, #0
_02092D02:
	cmp r0, r6
	bge _02092D0A
	mov r5, #5
	add r0, r6, #0
_02092D0A:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _02092DEC
	mov r5, #0
	add r0, r1, #0
	b _02092DEC
_02092D16:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r0, #0
	mov r5, #2
	cmp r2, r1
	bge _02092D26
	mov r5, #3
	add r0, r1, #0
_02092D26:
	cmp r0, r7
	bge _02092D2E
	mov r5, #4
	add r0, r7, #0
_02092D2E:
	cmp r0, r6
	bge _02092D36
	mov r5, #5
	add r0, r6, #0
_02092D36:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _02092D40
	mov r5, #0
	add r0, r1, #0
_02092D40:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _02092DEC
	mov r5, #1
	add r0, r1, #0
	b _02092DEC
_02092D4C:
	ldr r0, [sp]
	mov r5, #3
	add r1, r0, #0
	cmp r1, r7
	bge _02092D5A
	mov r5, #4
	add r0, r7, #0
_02092D5A:
	cmp r0, r6
	bge _02092D62
	mov r5, #5
	add r0, r6, #0
_02092D62:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _02092D6C
	mov r5, #0
	add r0, r1, #0
_02092D6C:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _02092D76
	mov r5, #1
	add r0, r1, #0
_02092D76:
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _02092DEC
	mov r5, #2
	add r0, r1, #0
	b _02092DEC
_02092D82:
	mov r5, #4
	add r0, r7, #0
	cmp r7, r6
	bge _02092D8E
	mov r5, #5
	add r0, r6, #0
_02092D8E:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _02092D98
	mov r5, #0
	add r0, r1, #0
_02092D98:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _02092DA2
	mov r5, #1
	add r0, r1, #0
_02092DA2:
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _02092DAC
	mov r5, #2
	add r0, r1, #0
_02092DAC:
	ldr r1, [sp]
	cmp r0, r1
	bge _02092DEC
	mov r5, #3
	add r0, r1, #0
	b _02092DEC
_02092DB8:
	ldr r1, [sp, #0xc]
	mov r5, #5
	add r0, r6, #0
	cmp r6, r1
	bge _02092DC6
	mov r5, #0
	add r0, r1, #0
_02092DC6:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _02092DD0
	mov r5, #1
	add r0, r1, #0
_02092DD0:
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _02092DDA
	mov r5, #2
	add r0, r1, #0
_02092DDA:
	ldr r1, [sp]
	cmp r0, r1
	bge _02092DE4
	mov r5, #3
	add r0, r1, #0
_02092DE4:
	cmp r0, r7
	bge _02092DEC
	mov r5, #4
	add r0, r7, #0
_02092DEC:
	mov r1, #5
	bl _s32_div_f
	mov r2, #0xa
	add r6, r5, #0
	mul r6, r2
	ldr r3, _02092E0C ; =0x020F5578
	lsl r2, r1, #1
	add r1, r3, r6
	ldrh r1, [r2, r1]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x28]
	bl sub_0200B1B8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02092E0C: .word 0x020F5578
	thumb_func_end sub_02092C24

	thumb_func_start sub_02092E10
sub_02092E10: ; 0x02092E10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x48
	bl sub_02023790
	mov r6, #0
	str r0, [r5, #0x30]
	add r4, r6, #0
_02092E22:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0207762C
	cmp r0, #1
	bne _02092E30
	add r6, r4, #1
_02092E30:
	add r4, r4, #1
	cmp r4, #5
	blt _02092E22
	ldr r1, _02092E48 ; =0x020F556C
	lsl r2, r6, #1
	ldrh r1, [r1, r2]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x30]
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
	nop
_02092E48: .word 0x020F556C
	thumb_func_end sub_02092E10

	thumb_func_start sub_02092E4C
sub_02092E4C: ; 0x02092E4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	mov r0, #0x12
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	bl sub_02023790
	str r0, [r5, #0x38]
	cmp r4, #5
	bgt _02092E70
	mov r1, #0x69
	b _02092E82
_02092E70:
	cmp r4, #0xa
	bgt _02092E78
	mov r1, #0x6a
	b _02092E82
_02092E78:
	cmp r4, #0x28
	bgt _02092E80
	mov r1, #0x6b
	b _02092E82
_02092E80:
	mov r1, #0x6c
_02092E82:
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x38]
	bl sub_0200B1B8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02092E4C

	thumb_func_start sub_02092E8C
sub_02092E8C: ; 0x02092E8C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x4c
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02092EA0
	b _02092FFE
_02092EA0:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02092F0C
	add r0, r5, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #0
	mov r1, #0x37
	bl sub_02017070
	cmp r6, r0
	bne _02092ECA
	mov r0, #0xf
	pop {r4, r5, r6, pc}
_02092ECA:
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02092EE4
	cmp r4, #1
	bne _02092EE0
	mov r0, #7
	pop {r4, r5, r6, pc}
_02092EE0:
	mov r0, #8
	pop {r4, r5, r6, pc}
_02092EE4:
	add r0, r5, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_02017070
	cmp r5, r0
	bne _02092F00
	mov r0, #2
	pop {r4, r5, r6, pc}
_02092F00:
	cmp r4, #1
	bne _02092F08
	mov r0, #0
	pop {r4, r5, r6, pc}
_02092F08:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02092F0C:
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02092F6E
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	mov r1, #2
	bl sub_02017070
	cmp r6, r0
	bne _02092F3E
	cmp r4, #1
	bne _02092F3A
	mov r0, #0xd
	pop {r4, r5, r6, pc}
_02092F3A:
	mov r0, #0xe
	pop {r4, r5, r6, pc}
_02092F3E:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	mov r0, #2
	mov r1, #1
	bl sub_02017070
	cmp r5, r0
	bne _02092F62
	cmp r4, #1
	bne _02092F5E
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_02092F5E:
	mov r0, #0xc
	pop {r4, r5, r6, pc}
_02092F62:
	cmp r4, #1
	bne _02092F6A
	mov r0, #9
	pop {r4, r5, r6, pc}
_02092F6A:
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_02092F6E:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_02017070
	cmp r6, r0
	beq _02092FE6
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_02017070
	cmp r6, r0
	beq _02092FE6
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	mov r1, #9
	bl sub_02017070
	cmp r6, r0
	beq _02092FE6
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	mov r1, #0xa
	bl sub_02017070
	cmp r6, r0
	beq _02092FE6
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	mov r0, #1
	mov r1, #0xb
	bl sub_02017070
	cmp r5, r0
	bne _02092FF2
_02092FE6:
	cmp r4, #1
	bne _02092FEE
	mov r0, #5
	pop {r4, r5, r6, pc}
_02092FEE:
	mov r0, #6
	pop {r4, r5, r6, pc}
_02092FF2:
	cmp r4, #1
	bne _02092FFA
	mov r0, #3
	pop {r4, r5, r6, pc}
_02092FFA:
	mov r0, #4
	pop {r4, r5, r6, pc}
_02092FFE:
	cmp r4, #1
	bne _02093034
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02093030
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	mov r0, #2
	mov r1, #1
	bl sub_02017070
	cmp r4, r0
	bne _0209302C
	mov r0, #0x14
	pop {r4, r5, r6, pc}
_0209302C:
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_02093030:
	mov r0, #0x10
	pop {r4, r5, r6, pc}
_02093034:
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02093046
	mov r0, #0x13
	pop {r4, r5, r6, pc}
_02093046:
	mov r0, #0x11
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02092E8C

	thumb_func_start sub_0209304C
sub_0209304C: ; 0x0209304C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl sub_0209305C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0209304C

	thumb_func_start sub_0209305C
sub_0209305C: ; 0x0209305C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	add r5, r3, #0
	ldr r6, [sp, #0x18]
	cmp r2, #6
	bls _0209306C
	b _020932A0
_0209306C:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02093078: ; jump table
	.short _02093086 - _02093078 - 2 ; case 0
	.short _020930E2 - _02093078 - 2 ; case 1
	.short _0209312C - _02093078 - 2 ; case 2
	.short _0209314C - _02093078 - 2 ; case 3
	.short _02093168 - _02093078 - 2 ; case 4
	.short _020931F0 - _02093078 - 2 ; case 5
	.short _02093210 - _02093078 - 2 ; case 6
_02093086:
	mov r0, #1
	mov r1, #0
	bl sub_02017070
	cmp r5, r0
	ble _0209309C
	mov r0, #2
	add r1, r0, #0
	bl sub_02017070
	add r5, r0, #0
_0209309C:
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _020930C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	b _020930D6
_020930C4:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_020932F0
	add r0, r4, #0
	mov r1, #1
	bl sub_02093368
_020930D6:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020932A4
	pop {r3, r4, r5, r6, r7, pc}
_020930E2:
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02093110
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	mov r0, #1
	add r1, r0, #0
	bl sub_02017070
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	pop {r3, r4, r5, r6, r7, pc}
_02093110:
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	mov r0, #1
	add r1, r0, #0
	bl sub_02017070
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020932F0
	pop {r3, r4, r5, r6, r7, pc}
_0209312C:
	mov r1, #0
	bl sub_02093368
	mov r0, #0
	mov r1, #0x37
	bl sub_02017070
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	pop {r3, r4, r5, r6, r7, pc}
_0209314C:
	add r1, r5, #0
	mov r2, #0
	bl sub_020932F0
	add r0, r4, #0
	mov r1, #1
	bl sub_02093368
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020932A4
	pop {r3, r4, r5, r6, r7, pc}
_02093168:
	add r2, r6, #0
	bl sub_0207884C
	cmp r0, #1
	bne _020931AE
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _0209319A
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	b _020931E8
_0209319A:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_020932F0
	add r0, r4, #0
	mov r1, #1
	bl sub_02093368
	b _020931E8
_020931AE:
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _020931D6
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	b _020931E8
_020931D6:
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
_020931E8:
	add r0, r4, #0
	bl sub_020933E8
	pop {r3, r4, r5, r6, r7, pc}
_020931F0:
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _020932A0
	mov r0, #1
	mov r1, #2
	bl sub_02017070
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020932F0
	pop {r3, r4, r5, r6, r7, pc}
_02093210:
	mov r0, #1
	mov r1, #0
	bl sub_02017070
	cmp r5, r0
	ble _02093226
	mov r0, #2
	add r1, r0, #0
	bl sub_02017070
	add r5, r0, #0
_02093226:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0207884C
	cmp r0, #0
	bne _0209328C
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x98
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x95
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x92
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x96
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x93
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x97
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x94
	add r2, sp, #0
	bl sub_02074C60
_0209328C:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020932A4
_020932A0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209305C

	thumb_func_start sub_020932A4
sub_020932A4: ; 0x020932A4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_02025F20
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02025F30
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02025F04
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #7
	add r2, sp, #4
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x9d
	add r2, sp, #0
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x91
	add r2, r4, #0
	bl sub_02074C60
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020932A4

	thumb_func_start sub_020932F0
sub_020932F0: ; 0x020932F0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, sp, #0
	add r4, r2, #0
	bl sub_020138A4
	cmp r4, #0
	add r2, sp, #0x24
	bne _02093336
	add r0, r5, #0
	mov r1, #0x98
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x92
	add r2, sp, #0
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x93
	add r2, sp, #4
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x94
	add r2, sp, #8
	bl sub_02074C60
	add sp, #0x10
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
_02093336:
	add r0, r5, #0
	mov r1, #0x99
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x95
	add r2, sp, #0
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x96
	add r2, sp, #4
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x97
	add r2, sp, #8
	bl sub_02074C60
	add sp, #0x10
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end sub_020932F0

	thumb_func_start sub_02093368
sub_02093368: ; 0x02093368
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	cmp r1, #0
	add r2, sp, #0
	bne _020933A0
	mov r1, #0x98
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x92
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x93
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x94
	add r2, sp, #0
	bl sub_02074C60
	add sp, #4
	pop {r3, r4, pc}
_020933A0:
	mov r1, #0x99
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x95
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x96
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x97
	add r2, sp, #0
	bl sub_02074C60
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02093368

	thumb_func_start sub_020933C8
sub_020933C8: ; 0x020933C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x9c
	add r2, sp, #0
	bl sub_02074C60
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020933C8

	thumb_func_start sub_020933E8
sub_020933E8: ; 0x020933E8
	push {r3, lr}
	mov r1, #1
	str r1, [sp]
	mov r1, #0x6e
	add r2, sp, #0
	bl sub_02074C60
	pop {r3, pc}
	thumb_func_end sub_020933E8

	.rodata


	.global Unk_020F556C
Unk_020F556C: ; 0x020F556C
	.incbin "incbin/arm9_rodata.bin", 0x1092C, 0x10938 - 0x1092C

	.global Unk_020F5578
Unk_020F5578: ; 0x020F5578
	.incbin "incbin/arm9_rodata.bin", 0x10938, 0x3C

