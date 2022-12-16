	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_02246034
ov6_02246034: ; 0x02246034
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r1, #8]
	str r1, [sp]
	mov r1, #0
	bl sub_0207A0FC
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl ov6_02246148
	str r0, [sp, #8]
	cmp r0, #0
	beq _022460E6
	add r0, r7, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _022460A8
	cmp r4, #0
	bne _022460A8
	add r0, sp, #8
	bl sub_0202D914
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	mov r2, #2
	bl sub_0206B688
	b _022460D8
_022460A8:
	cmp r0, #4
	bne _022460C4
	add r0, sp, #8
	bl sub_0202D914
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_0206B688
	b _022460D8
_022460C4:
	ldr r0, [sp, #8]
	mov r1, #5
	add r2, r4, #0
	bl sub_0202D980
	ldr r0, [sp, #8]
	mov r1, #7
	add r2, r7, #0
	bl sub_0202D980
_022460D8:
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	bl ov6_02246110
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022460E6:
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _022460FE
	bl sub_02022974
_022460FE:
	cmp r4, #0x1e
	bhs _0224610C
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	bl ov6_02246110
_0224610C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02246034

	thumb_func_start ov6_02246110
ov6_02246110: ; 0x02246110
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02246118:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0224613C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8C4
	bl sub_0206C3C8
	cmp r6, r0
	bne _0224613C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206C33C
_0224613C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02246118
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02246110

	thumb_func_start ov6_02246148
ov6_02246148: ; 0x02246148
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02246150:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _02246174
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D924
	mov r1, #4
	add r7, r0, #0
	bl sub_0202D93C
	cmp r6, r0
	bne _02246174
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246174:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02246150
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02246148