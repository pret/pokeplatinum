	.include "macros/function.inc"
	.include "include/unk_0203061C.inc"

	

	.text


	thumb_func_start sub_0203061C
sub_0203061C: ; 0x0203061C
	ldr r0, _02030620 ; =0x00001628
	bx lr
	; .align 2, 0
_02030620: .word 0x00001628
	thumb_func_end sub_0203061C

	thumb_func_start sub_02030624
sub_02030624: ; 0x02030624
	push {r4, lr}
	ldr r2, _0203066C ; =0x00001628
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, _02030670 ; =0x00000954
	add r0, r4, r0
	bl sub_0202D06C
	ldr r0, _02030674 ; =0x00000ABC
	add r0, r4, r0
	bl sub_0202D080
	ldr r0, _02030678 ; =0x00000ADC
	add r0, r4, r0
	bl sub_0202D0AC
	ldr r0, _0203067C ; =0x00001618
	add r0, r4, r0
	bl sub_020300A4
	ldr r0, _02030680 ; =0x0000161C
	add r0, r4, r0
	bl sub_02030260
	ldr r0, _02030684 ; =0x00001620
	add r0, r4, r0
	bl sub_02030410
	ldr r0, _02030688 ; =0x00001624
	add r0, r4, r0
	bl sub_020305AC
	pop {r4, pc}
	nop
_0203066C: .word 0x00001628
_02030670: .word 0x00000954
_02030674: .word 0x00000ABC
_02030678: .word 0x00000ADC
_0203067C: .word 0x00001618
_02030680: .word 0x0000161C
_02030684: .word 0x00001620
_02030688: .word 0x00001624
	thumb_func_end sub_02030624

	thumb_func_start sub_0203068C
sub_0203068C: ; 0x0203068C
	ldr r3, _02030694 ; =sub_020245BC
	mov r1, #0x17
	bx r3
	nop
_02030694: .word sub_020245BC
	thumb_func_end sub_0203068C

	thumb_func_start sub_02030698
sub_02030698: ; 0x02030698
	push {r3, lr}
	cmp r1, #0x70
	bge _020306C2
	cmp r1, #0x64
	blt _020306BC
	cmp r2, #0x10
	blt _020306AA
	add r1, r1, #1
	sub r2, #0x10
_020306AA:
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_020306BC:
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	pop {r3, pc}
_020306C2:
	mov r3, #0
	mvn r3, r3
	cmp r2, r3
	bne _020306D2
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_020306D2:
	lsl r2, r2, #6
	sub r1, #0x70
	add r2, r0, r2
	lsl r0, r1, #1
	add r0, r2, r0
	add r0, #0xe0
	ldrh r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030698

	thumb_func_start sub_020306E4
sub_020306E4: ; 0x020306E4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0203075C ; =0x0000270F
	add r7, r3, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r7, r0
	bls _020306F6
	add r7, r0, #0
_020306F6:
	cmp r5, #0x70
	bge _02030742
	cmp r5, #0x64
	blt _02030734
	cmp r4, #0xff
	bne _02030706
	bl GF_AssertFail
_02030706:
	cmp r4, #0x10
	blt _0203070E
	add r5, r5, #1
	sub r4, #0x10
_0203070E:
	cmp r7, #0
	bne _02030726
	mov r2, #1
	add r3, r2, #0
	lsl r1, r5, #1
	ldrh r0, [r6, r1]
	lsl r3, r4
	ldr r2, _02030760 ; =0x0000FFFF
	eor r2, r3
	and r0, r2
	strh r0, [r6, r1]
	b _02030758
_02030726:
	lsl r2, r5, #1
	mov r0, #1
	ldrh r1, [r6, r2]
	lsl r0, r4
	orr r0, r1
	strh r0, [r6, r2]
	b _02030758
_02030734:
	cmp r4, #0xff
	beq _0203073C
	bl GF_AssertFail
_0203073C:
	lsl r0, r5, #1
	strh r7, [r6, r0]
	b _02030758
_02030742:
	cmp r4, #0xff
	bne _0203074A
	bl GF_AssertFail
_0203074A:
	lsl r0, r4, #6
	sub r5, #0x70
	add r1, r6, r0
	lsl r0, r5, #1
	add r0, r1, r0
	add r0, #0xe0
	strh r7, [r0]
_02030758:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203075C: .word 0x0000270F
_02030760: .word 0x0000FFFF
	thumb_func_end sub_020306E4

	thumb_func_start sub_02030764
sub_02030764: ; 0x02030764
	push {r4, lr}
	mov r2, #2
	add r4, r0, #0
	add r0, #0xe0
	mov r1, #0
	lsl r2, r2, #0xa
	bl MI_CpuFill8
	mov r1, #0x64
	add r4, #0xc8
	mov r0, #0
_0203077A:
	add r1, r1, #1
	strh r0, [r4]
	add r4, r4, #2
	cmp r1, #0x6f
	ble _0203077A
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030764

	thumb_func_start sub_02030788
sub_02030788: ; 0x02030788
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	cmp r5, #0xff
	bne _02030796
	bl GF_AssertFail
_02030796:
	cmp r5, #0x1f
	bge _020307DC
	add r0, r6, #0
	str r0, [sp]
	add r0, #0xe0
	lsl r1, r5, #6
	str r0, [sp]
	add r7, r0, r1
_020307A6:
	add r0, r5, #1
	lsl r1, r0, #6
	ldr r0, [sp]
	mov r2, #0x40
	add r0, r0, r1
	add r1, r7, #0
	bl MI_CpuCopy8
	mov r4, #0x64
_020307B8:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #1
	bl sub_02030698
	add r3, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020306E4
	add r4, r4, #2
	cmp r4, #0x6f
	blt _020307B8
	add r5, r5, #1
	add r7, #0x40
	cmp r5, #0x1f
	blt _020307A6
_020307DC:
	mov r0, #0x1f
	add r6, #0xe0
	lsl r0, r0, #6
	add r0, r6, r0
	mov r1, #0
	mov r2, #0x40
	bl MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02030788

	thumb_func_start sub_020307F0
sub_020307F0: ; 0x020307F0
	ldr r3, _02030800 ; =MI_CpuFill8
	add r0, #0xe0
	lsl r1, r1, #6
	add r0, r0, r1
	mov r1, #0
	mov r2, #0x40
	bx r3
	nop
_02030800: .word MI_CpuFill8
	thumb_func_end sub_020307F0

	thumb_func_start sub_02030804
sub_02030804: ; 0x02030804
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02030698
	add r0, r0, r4
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020306E4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02030804

	thumb_func_start sub_02030824
sub_02030824: ; 0x02030824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02030698
	sub r3, r0, r4
	bpl _02030838
	mov r3, #0
_02030838:
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_020306E4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02030824

	thumb_func_start sub_02030848
sub_02030848: ; 0x02030848
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02030698
	cmp r0, r4
	bhs _02030868
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_020306E4
	pop {r3, r4, r5, r6, r7, pc}
_02030868:
	ldr r3, _0203087C ; =0x0000270F
	cmp r0, r3
	bls _02030878
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020306E4
_02030878:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203087C: .word 0x0000270F
	thumb_func_end sub_02030848