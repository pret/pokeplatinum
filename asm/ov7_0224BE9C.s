	.include "macros/function.inc"
	.include "include/ov7_0224BE9C.inc"

	

	.text


	thumb_func_start ov7_0224BE9C
ov7_0224BE9C: ; 0x0224BE9C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xc1
	lsl r1, r1, #2
	add r5, r0, #0
	add r7, r2, #0
	bl sub_02018144
	mov r2, #0xc1
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	str r5, [r4, #0x18]
	str r7, [r4, #0x14]
	str r6, [r4, #8]
	add r0, r6, #0
	bl sub_0202A750
	bl sub_02029D04
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_0207D990
	str r0, [r4, #0x10]
	mov r2, #0x8f
	ldr r3, [r4, #0x18]
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov7_0224C338
	add r0, r4, #0
	bl ov7_0224C35C
	add r0, r4, #0
	bl ov7_0224C3CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov7_0224BE9C

	thumb_func_start ov7_0224BEFC
ov7_0224BEFC: ; 0x0224BEFC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	add r0, r4, #0
	bl ov7_0224C3B8
	add r0, r4, #0
	bl ov7_0224C3E0
	mov r2, #0xc1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224BEFC

	thumb_func_start ov7_0224BF2C
ov7_0224BF2C: ; 0x0224BF2C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _0224BF3A
	b _0224C32A
_0224BF3A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BF46: ; jump table
	.short _0224BF60 - _0224BF46 - 2 ; case 0
	.short _0224BF9E - _0224BF46 - 2 ; case 1
	.short _0224BFDE - _0224BF46 - 2 ; case 2
	.short _0224C036 - _0224BF46 - 2 ; case 3
	.short _0224C06C - _0224BF46 - 2 ; case 4
	.short _0224C10E - _0224BF46 - 2 ; case 5
	.short _0224C122 - _0224BF46 - 2 ; case 6
	.short _0224C212 - _0224BF46 - 2 ; case 7
	.short _0224C262 - _0224BF46 - 2 ; case 8
	.short _0224C28E - _0224BF46 - 2 ; case 9
	.short _0224C2BA - _0224BF46 - 2 ; case 10
	.short _0224C2CE - _0224BF46 - 2 ; case 11
	.short _0224C2FC - _0224BF46 - 2 ; case 12
_0224BF60:
	mov r3, #0x55
	lsl r3, r3, #2
	add r0, r4, r3
	sub r3, r3, #4
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, r3]
	bl ov7_0224C3EC
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #4]
	b _0224C32A
_0224BF9E:
	ldr r0, [r4, #0xc]
	ldr r1, _0224C2EC ; =0x0224F1B4
	mov r2, #0x16
	bl ov7_0224CC88
	cmp r0, #0
	beq _0224BFD8
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #0xc
	str r0, [r4, #4]
	b _0224C32A
_0224BFD8:
	mov r0, #2
	str r0, [r4, #0]
	b _0224C32A
_0224BFDE:
	mov r2, #0x5a
	lsl r2, r2, #2
	add r0, r4, r2
	sub r2, #0x20
	ldr r1, [r4, #0x14]
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x18]
	bl ov7_0224C620
	ldr r0, [r4, #0x18]
	mov r1, #0x5a
	str r0, [sp]
	ldr r0, [r4, #0x14]
	lsl r1, r1, #2
	str r0, [sp, #4]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r2, _0224C2EC ; =0x0224F1B4
	ldr r3, [r4, #0x10]
	add r0, r4, r0
	add r1, r4, r1
	bl ov7_0224CBD0
	mov r1, #0x52
	mov r0, #0x16
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r4, r1]
	add r1, #0x3c
	str r0, [sp, #4]
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, _0224C2F0 ; =ov7_0224CBE4
	ldr r3, _0224C2EC ; =0x0224F1B4
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	add r0, r4, r1
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl ov7_0224C768
_0224C036:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CA0C
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xa
	str r0, [r4, #0]
	mov r0, #4
	str r0, [r4, #4]
	b _0224C32A
_0224C06C:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C9A4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224C0D2
	sub r1, r1, #1
	cmp r0, r1
	beq _0224C0D2
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CA34
	mov r0, #0x2b
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r4, r1
	sub r1, #0xc
	ldr r1, [r4, r1]
	ldr r2, [r4, #0x18]
	ldr r3, _0224C2EC ; =0x0224F1B4
	bl ov7_0224C4E0
	mov r0, #0xa
	str r0, [r4, #0]
	mov r0, #5
	str r0, [r4, #4]
	ldr r0, _0224C2F4 ; =0x000005DC
	bl sub_02005748
	b _0224C32A
_0224C0D2:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0224C0DC
	b _0224C32A
_0224C0DC:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xb
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #0xc
	str r0, [r4, #4]
	ldr r0, _0224C2F4 ; =0x000005DC
	bl sub_02005748
	b _0224C32A
_0224C10E:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	bl ov7_0224CC44
	mov r0, #6
	str r0, [r4, #0]
	b _0224C32A
_0224C122:
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC78
	cmp r0, #0
	bne _0224C1F8
	mov r2, #0x2b
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r1, _0224C2EC ; =0x0224F1B4
	ldr r3, [r4, #0x18]
	bl ov7_0224CCB8
	cmp r0, #0
	bne _0224C17A
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #9
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	b _0224C32A
_0224C17A:
	mov r2, #0x2b
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r1, _0224C2EC ; =0x0224F1B4
	bl ov7_0224CCE4
	cmp r0, #0
	bne _0224C1C2
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #3
	str r0, [r4, #4]
	b _0224C32A
_0224C1C2:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #7
	str r0, [r4, #4]
	b _0224C32A
_0224C1F8:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0224C202
	b _0224C32A
_0224C202:
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	mov r0, #3
	str r0, [r4, #0]
	b _0224C32A
_0224C212:
	ldr r0, [r4, #0x18]
	mov r3, #0x2b
	str r0, [sp]
	lsl r3, r3, #4
	ldrh r3, [r4, r3]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, _0224C2EC ; =0x0224F1B4
	bl ov7_0224CCF4
	mov r0, #0x2b
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r4, r1
	sub r1, #0xc
	ldr r1, [r4, r1]
	ldr r2, [r4, #0x18]
	ldr r3, _0224C2EC ; =0x0224F1B4
	bl ov7_0224C580
	ldr r0, [r4, #0xc]
	ldr r1, _0224C2EC ; =0x0224F1B4
	mov r2, #0x16
	bl ov7_0224CC88
	cmp r0, #0
	beq _0224C258
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #8
	str r0, [r4, #4]
	b _0224C32A
_0224C258:
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #3
	str r0, [r4, #4]
	b _0224C32A
_0224C262:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #9
	str r0, [r4, #4]
	b _0224C32A
_0224C28E:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #0xc
	str r0, [r4, #4]
	b _0224C32A
_0224C2BA:
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C4B8
	cmp r0, #0
	beq _0224C32A
	ldr r0, [r4, #4]
	str r0, [r4, #0]
	b _0224C32A
_0224C2CE:
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C4B8
	cmp r0, #0
	beq _0224C32A
	ldr r0, _0224C2F8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224C32A
	ldr r0, [r4, #4]
	str r0, [r4, #0]
	b _0224C32A
	; .align 2, 0
_0224C2EC: .word 0x0224F1B4
_0224C2F0: .word ov7_0224CBE4
_0224C2F4: .word 0x000005DC
_0224C2F8: .word 0x021BF67C
_0224C2FC:
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C444
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C698
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C934
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_0224C32A:
	ldr r0, [r4, #0x1c]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224BF2C

	thumb_func_start ov7_0224C338
ov7_0224C338: ; 0x0224C338
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_02025E44
	add r4, r0, #0
	bl sub_02027B50
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02027AC0
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	thumb_func_end ov7_0224C338

	thumb_func_start ov7_0224C35C
ov7_0224C35C: ; 0x0224C35C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #6
	ldr r2, [r4, #0x18]
	mov r0, #0
	lsl r1, r1, #6
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r1, #0x1a
	ldr r2, [r4, #0x18]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E7C
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl sub_02019EBC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C35C

	thumb_func_start ov7_0224C3B8
ov7_0224C3B8: ; 0x0224C3B8
	push {r3, lr}
	ldr r0, [r0, #0x14]
	mov r1, #3
	bl sub_02019EBC
	mov r0, #0
	mov r1, #1
	bl sub_0205D8CC
	pop {r3, pc}
	thumb_func_end ov7_0224C3B8

	thumb_func_start ov7_0224C3CC
ov7_0224C3CC: ; 0x0224C3CC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r2, [r4, #0x18]
	mov r0, #2
	add r1, #0x20
	bl sub_020095C4
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov7_0224C3CC

	thumb_func_start ov7_0224C3E0
ov7_0224C3E0: ; 0x0224C3E0
	ldr r3, _0224C3E8 ; =sub_02021964
	ldr r0, [r0, #0x1c]
	bx r3
	nop
_0224C3E8: .word sub_02021964
	thumb_func_end ov7_0224C3E0

	thumb_func_start ov7_0224C3EC
ov7_0224C3EC: ; 0x0224C3EC
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #1
	beq _0224C43E
	str r3, [r5, #8]
	add r0, r2, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r5, #4]
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r1, [r5, #4]
	add r0, r4, #0
	mov r2, #3
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, [r5, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r0, #1
	str r0, [r5, #0]
_0224C43E:
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C3EC

	thumb_func_start ov7_0224C444
ov7_0224C444: ; 0x0224C444
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224C466
	ldr r0, [r4, #4]
	bl sub_0201ACF4
	ldr r0, [r4, #4]
	bl sub_0201A8FC
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0201A928
	mov r0, #0
	str r0, [r4, #0]
_0224C466:
	pop {r4, pc}
	thumb_func_end ov7_0224C444

	thumb_func_start ov7_0224C468
ov7_0224C468: ; 0x0224C468
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0224C47C
	bl sub_02022974
_0224C47C:
	ldr r0, [r5, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02023868
	str r0, [r5, #0x10]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #8]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _0224C4B4 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x10]
	bl sub_0201D78C
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	bl sub_0201A954
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0224C4B4: .word 0x0001020F
	thumb_func_end ov7_0224C468

	thumb_func_start ov7_0224C4B8
ov7_0224C4B8: ; 0x0224C4B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0224C4DC
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C4D8
	bl sub_020237BC
	mov r0, #0
	str r0, [r4, #0x10]
_0224C4D8:
	mov r0, #1
	pop {r4, pc}
_0224C4DC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov7_0224C4B8

	thumb_func_start ov7_0224C4E0
ov7_0224C4E0: ; 0x0224C4E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r2, #0
	add r4, r1, #0
	add r5, r3, #0
	bl sub_0200B358
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	mov r0, #0xc8
	bl sub_02023790
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #7
	bl sub_0200B1EC
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x14]
	add r7, r5, #0
	mov r0, #0xc
	add r4, r1, #0
	mul r4, r0
	add r7, #8
	ldr r0, [r7, r4]
	cmp r0, #1
	bne _0224C52A
	add r2, r5, r4
	ldr r2, [r2, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, #0x95
	bl sub_0200B70C
	b _0224C538
_0224C52A:
	add r2, r5, r4
	ldr r2, [r2, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, #0x95
	bl sub_0200B77C
_0224C538:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r7, r4]
	add r0, r6, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r2, [r5, r4]
	add r0, r6, #0
	mov r1, #2
	bl sub_0200BFAC
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl sub_0200C388
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ov7_0224C468
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C4E0

	thumb_func_start ov7_0224C580
ov7_0224C580: ; 0x0224C580
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r2, #0
	add r4, r1, #0
	add r5, r3, #0
	bl sub_0200B358
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	mov r0, #0xc8
	bl sub_02023790
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0xc
	bl sub_0200B1EC
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x14]
	add r7, r5, #0
	mov r0, #0xc
	add r4, r1, #0
	mul r4, r0
	add r7, #8
	ldr r0, [r7, r4]
	cmp r0, #1
	bne _0224C5CA
	add r2, r5, r4
	ldr r2, [r2, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, #0x95
	bl sub_0200B70C
	b _0224C5D8
_0224C5CA:
	add r2, r5, r4
	ldr r2, [r2, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, #0x95
	bl sub_0200B77C
_0224C5D8:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r7, r4]
	add r0, r6, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r2, [r5, r4]
	add r0, r6, #0
	mov r1, #2
	bl sub_0200BFAC
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl sub_0200C388
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ov7_0224C468
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C580

	thumb_func_start ov7_0224C620
ov7_0224C620: ; 0x0224C620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [r6, #0]
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x14]
	cmp r0, #1
	beq _0224C692
	add r0, r3, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r6, #4]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	ldr r1, [r6, #4]
	add r0, r4, #0
	mov r2, #3
	mov r3, #1
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	bl sub_0200B358
	str r0, [r6, #8]
	mov r4, #0
	add r5, r6, #0
_0224C668:
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x10
	bl sub_0200B1EC
	str r0, [r5, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0224C668
	ldr r1, [sp, #0x14]
	mov r0, #0x20
	bl sub_02023790
	str r0, [r6, #0xc]
	ldr r0, [r6, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #1
	str r0, [r6, #0]
_0224C692:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C620

	thumb_func_start ov7_0224C698
ov7_0224C698: ; 0x0224C698
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0224C6D8
	mov r4, #0
	add r5, r6, #0
_0224C6A6:
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0224C6A6
	ldr r0, [r6, #0xc]
	bl sub_020237BC
	ldr r0, [r6, #8]
	bl sub_0200B3F0
	ldr r0, [r6, #4]
	bl sub_0201ACF4
	ldr r0, [r6, #4]
	bl sub_0201A8FC
	ldr r0, [r6, #4]
	mov r1, #1
	bl sub_0201A928
	mov r0, #0
	str r0, [r6, #0]
_0224C6D8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C698

	thumb_func_start ov7_0224C6DC
ov7_0224C6DC: ; 0x0224C6DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r6, #0x95
	add r4, r2, #0
	mov r1, #0
	add r2, r6, #0
	add r7, r3, #0
	bl sub_0200B70C
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #8]
	add r2, r4, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #2
	add r2, r7, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r5, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r7, #0
	add r6, r5, #0
	add r4, r7, #0
_0224C724:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r6, #0x10]
	bl sub_0200C388
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224C764 ; =0x0001020F
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0xc]
	bl sub_0201D78C
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x10
	cmp r7, #3
	blt _0224C724
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C764: .word 0x0001020F
	thumb_func_end ov7_0224C6DC

	thumb_func_start ov7_0224C768
ov7_0224C768: ; 0x0224C768
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	ldr r0, [sp, #0x78]
	add r4, r1, #0
	str r0, [sp, #0x78]
	ldr r0, [r5, #0]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	cmp r0, #1
	bne _0224C780
	b _0224C924
_0224C780:
	ldr r0, [sp, #0x78]
	mov r1, #1
	mov r2, #0x12
	str r1, [r5, #0]
	add r0, r0, #1
	lsl r2, r2, #4
	str r0, [r5, r2]
	add r0, r2, #0
	ldr r3, [sp, #0x80]
	add r0, #0x10
	str r3, [r5, r0]
	ldr r0, [sp, #0x84]
	add r2, #0x14
	str r0, [r5, r2]
	ldr r0, [sp, #0x14]
	bl sub_0201A778
	str r0, [r5, #4]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xe8
	str r0, [sp, #0x10]
	ldr r1, [r5, #4]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0x11
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	bl sub_0200B358
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r0, #0x20
	bl sub_02023790
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x7c]
	mov r1, #0x10
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x78]
	mov r7, #0
	cmp r0, #0
	bls _0224C844
	add r6, r5, #0
	add r4, r5, #0
_0224C7F4:
	mov r0, #0x49
	ldr r2, [sp, #0x18]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200BFAC
	mov r0, #0x49
	mov r1, #0x4a
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x1c]
	bl sub_0200C388
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x14]
	bl sub_02023868
	add r1, r6, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r6, r6, #4
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x78]
	add r4, #8
	cmp r7, r0
	blo _0224C7F4
_0224C844:
	ldr r0, [sp, #0x78]
	add r4, r5, #0
	lsl r6, r0, #2
	ldr r0, [sp, #0x7c]
	add r4, #0xc4
	mov r1, #0x13
	bl sub_0200B1EC
	str r0, [r4, r6]
	ldr r0, [sp, #0x78]
	lsl r1, r0, #3
	ldr r0, [r4, r6]
	add r1, r5, r1
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x78]
	str r0, [r1, #0x10]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B3F0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r3, [sp, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _0224C928 ; =0x0224F4F0
	lsl r3, r3, #0x18
	str r0, [r1, #0xc]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsr r3, r3, #0x18
	strh r0, [r1, #0x10]
	add r0, r5, #0
	add r0, #0xc
	str r0, [r1, #0]
	mov r1, #0
	ldr r0, _0224C92C ; =0x0224F4F0
	add r2, r1, #0
	bl sub_0200112C
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r7, #0x4e
	mov r4, #0
	add r6, r5, #0
	lsl r7, r7, #2
_0224C8B8:
	ldr r2, [sp, #0x14]
	mov r0, #1
	add r1, r4, #0
	bl sub_02009714
	str r0, [r6, r7]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _0224C8B8
	ldr r2, [sp, #0x14]
	add r0, sp, #0x40
	add r1, r5, #0
	bl ov7_0224CA54
	ldr r0, [sp, #0x88]
	mov r6, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x40
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	mov r7, #0x56
	str r0, [sp, #0x3c]
	mov r0, #3
	lsl r0, r0, #0x12
	ldr r4, _0224C930 ; =0x0224F1A8
	str r6, [sp, #0x34]
	str r0, [sp, #0x28]
	lsl r7, r7, #2
_0224C8F6:
	ldrb r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	add r0, sp, #0x20
	bl sub_02021B90
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02021D6C
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_02021CC8
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0224C8F6
_0224C924:
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C928: .word 0x0224F4F0
_0224C92C: .word 0x0224F4F0
_0224C930: .word 0x0224F1A8
	thumb_func_end ov7_0224C768

	thumb_func_start ov7_0224C934
ov7_0224C934: ; 0x0224C934
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0224C9A2
	mov r7, #0x56
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0224C946:
	ldr r0, [r5, r7]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0224C946
	add r0, r6, #0
	bl ov7_0224CB40
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r5, #0
	cmp r0, #0
	ble _0224C980
	mov r7, #0x12
	add r4, r6, #0
	lsl r7, r7, #4
_0224C96C:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_020237BC
	ldr r0, [r6, r7]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _0224C96C
_0224C980:
	mov r1, #0
	ldr r0, [r6, #8]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, [r6, #4]
	bl sub_0201ACF4
	ldr r0, [r6, #4]
	bl sub_0201A8FC
	ldr r0, [r6, #4]
	mov r1, #1
	bl sub_0201A928
	mov r0, #1
	str r0, [r6, #0]
_0224C9A2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov7_0224C934

	thumb_func_start ov7_0224C9A4
ov7_0224C9A4: ; 0x0224C9A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_02001288
	mov r1, #0
	add r4, r0, #0
	mvn r1, r1
	cmp r4, r1
	bne _0224C9EA
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl sub_020014D0
	mov r2, #0x4b
	add r0, sp, #0
	lsl r2, r2, #2
	ldrh r1, [r0]
	ldrh r0, [r5, r2]
	cmp r0, r1
	beq _0224CA02
	strh r1, [r5, r2]
	add r0, r2, #4
	ldrh r1, [r5, r2]
	add r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	blx r2
	ldr r0, _0224CA08 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov7_0224CB70
	b _0224CA02
_0224C9EA:
	sub r0, r1, #1
	cmp r4, r0
	beq _0224CA02
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrh r2, [r5, r0]
	sub r0, #0xc
	ldr r0, [r5, r0]
	sub r0, r0, #1
	cmp r2, r0
	bne _0224CA02
	sub r4, r1, #1
_0224CA02:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0224CA08: .word 0x000005DC
	thumb_func_end ov7_0224C9A4

	thumb_func_start ov7_0224CA0C
ov7_0224CA0C: ; 0x0224CA0C
	push {r4, lr}
	mov r2, #0x13
	lsl r2, r2, #4
	add r4, r0, #0
	sub r1, r2, #4
	ldr r0, [r4, r2]
	add r2, r2, #4
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	blx r2
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	bl ov7_0224CB70
	pop {r4, pc}
	thumb_func_end ov7_0224CA0C

	thumb_func_start ov7_0224CA34
ov7_0224CA34: ; 0x0224CA34
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CA34

	thumb_func_start ov7_0224CA54
ov7_0224CA54: ; 0x0224CA54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x3e
	add r1, r4, #0
	bl sub_02006C24
	ldr r1, _0224CB3C ; =0x00001388
	add r6, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsr r0, r1, #4
	str r4, [sp, #8]
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #4
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, _0224CB3C ; =0x00001388
	sub r1, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_02009B04
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, _0224CB3C ; =0x00001388
	sub r1, #0xc
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, _0224CB3C ; =0x00001388
	sub r1, #0xc
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A3DC
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A640
	ldr r1, _0224CB3C ; =0x00001388
	mov r0, #0
	mov r3, #0x4f
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsr r2, r1, #4
	ldr r2, [r5, r2]
	lsl r3, r3, #2
	str r2, [sp, #0x14]
	ldr r2, [r5, r3]
	str r2, [sp, #0x18]
	add r2, r3, #4
	ldr r2, [r5, r2]
	add r3, #8
	str r2, [sp, #0x1c]
	ldr r2, [r5, r3]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r2, r1, #0
	bl sub_020093B4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0224CB3C: .word 0x00001388
	thumb_func_end ov7_0224CA54

	thumb_func_start ov7_0224CB40
ov7_0224CB40: ; 0x0224CB40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r6, #0x4e
	mov r4, #0
	lsl r6, r6, #2
_0224CB5E:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0224CB5E
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CB40

	thumb_func_start ov7_0224CB70
ov7_0224CB70: ; 0x0224CB70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, sp, #0
	mov r2, #0
	bl sub_020014DC
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0224CB96
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0224CBA2
_0224CB96:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_0224CBA2:
	add r0, sp, #0
	ldrh r2, [r0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #7
	cmp r2, r1
	blt _0224CBC0
	add r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
_0224CBC0:
	add r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CB70

	thumb_func_start ov7_0224CBD0
ov7_0224CBD0: ; 0x0224CBD0
	push {r3, r4}
	ldr r4, [sp, #0xc]
	str r4, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	ldr r1, [sp, #8]
	str r3, [r0, #0x10]
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov7_0224CBD0

	thumb_func_start ov7_0224CBE4
ov7_0224CBE4: ; 0x0224CBE4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	cmp r1, #0x16
	bhs _0224CC1C
	add r4, r1, #0
	mov r0, #0xc
	mul r4, r0
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r1, r1, r4
	ldr r1, [r1, #4]
	ldr r2, [r5, #0]
	add r1, #0x95
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207D730
	ldr r1, [r5, #0xc]
	add r3, r0, #0
	add r2, r1, r4
	ldr r1, [r2, #4]
	ldr r0, [r5, #8]
	ldr r2, [r2, #8]
	bl ov7_0224C6DC
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0224CC1C:
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r5, #4]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r5, #4]
	mov r1, #3
	bl sub_02019448
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov7_0224CBE4

	thumb_func_start ov7_0224CC44
ov7_0224CC44: ; 0x0224CC44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	cmp r0, #1
	beq _0224CC66
	add r0, r1, #0
	ldr r1, _0224CC68 ; =0x0224F1AC
	mov r2, #0x1f
	mov r3, #0xb
	str r4, [sp]
	bl sub_02002100
	str r0, [r5, #4]
	str r4, [r5, #8]
	mov r0, #1
	str r0, [r5, #0]
_0224CC66:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224CC68: .word 0x0224F1AC
	thumb_func_end ov7_0224CC44

	thumb_func_start ov7_0224CC6C
ov7_0224CC6C: ; 0x0224CC6C
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224CC76
	mov r1, #0
	str r1, [r0, #0]
_0224CC76:
	bx lr
	thumb_func_end ov7_0224CC6C

	thumb_func_start ov7_0224CC78
ov7_0224CC78: ; 0x0224CC78
	ldr r3, _0224CC84 ; =sub_02002114
	add r1, r0, #0
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	bx r3
	nop
_0224CC84: .word sub_02002114
	thumb_func_end ov7_0224CC78

	thumb_func_start ov7_0224CC88
ov7_0224CC88: ; 0x0224CC88
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r4, _0224CCB4 ; =0x00000000
	beq _0224CCAE
_0224CC94:
	ldr r1, [r5, #0]
	add r0, r7, #0
	mov r2, #1
	bl sub_02029D50
	cmp r0, #1
	bne _0224CCA6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224CCA6:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r6
	blo _0224CC94
_0224CCAE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CCB4: .word 0x00000000
	thumb_func_end ov7_0224CC88

	thumb_func_start ov7_0224CCB8
ov7_0224CCB8: ; 0x0224CCB8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #0xc
	mul r4, r1
	add r1, r5, r4
	ldr r1, [r1, #4]
	add r2, r3, #0
	add r1, #0x95
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207D730
	add r1, r5, r4
	ldr r1, [r1, #8]
	cmp r0, r1
	blo _0224CCDE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224CCDE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CCB8

	thumb_func_start ov7_0224CCE4
ov7_0224CCE4: ; 0x0224CCE4
	mov r3, #0xc
	mul r3, r2
	ldr r1, [r1, r3]
	ldr r3, _0224CCF0 ; =sub_02029D50
	mov r2, #1
	bx r3
	; .align 2, 0
_0224CCF0: .word sub_02029D50
	thumb_func_end ov7_0224CCE4

	thumb_func_start ov7_0224CCF4
ov7_0224CCF4: ; 0x0224CCF4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0xc
	mul r1, r3
	add r3, r2, r1
	ldr r4, [r3, #4]
	ldr r1, [r2, r1]
	ldr r5, [r3, #8]
	add r4, #0x95
	mov r2, #1
	bl sub_02029E2C
	lsl r1, r4, #0x10
	lsl r2, r5, #0x10
	ldr r3, [sp, #0x10]
	add r0, r6, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0207D60C
	cmp r0, #1
	beq _0224CD24
	bl sub_02022974
_0224CD24:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CCF4

	.rodata


	.global Unk_ov7_0224F1A8
Unk_ov7_0224F1A8: ; 0x0224F1A8
	.incbin "incbin/overlay7_rodata.bin", 0x49C, 0x4A0 - 0x49C

	.global Unk_ov7_0224F1AC
Unk_ov7_0224F1AC: ; 0x0224F1AC
	.incbin "incbin/overlay7_rodata.bin", 0x4A0, 0x4A8 - 0x4A0

	.global Unk_ov7_0224F1B4
Unk_ov7_0224F1B4: ; 0x0224F1B4
	.incbin "incbin/overlay7_rodata.bin", 0x4A8, 0x108


	.data


	.global Unk_ov7_0224F4F0
Unk_ov7_0224F4F0: ; 0x0224F4F0
	.incbin "incbin/overlay7_data.bin", 0x30, 0x20

