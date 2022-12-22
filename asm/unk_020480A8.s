	.include "macros/function.inc"
	.include "include/unk_020480A8.inc"

	

	.text


	thumb_func_start sub_020480A8
sub_020480A8: ; 0x020480A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B2A4
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020480A8

	thumb_func_start sub_020480D8
sub_020480D8: ; 0x020480D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, #0x80
	ldr r7, [r0, #0]
	ldr r0, [r7, #0xc]
	bl sub_02024420
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, _02048250 ; =0x00000000
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	beq _0204819A
_02048150:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02048190
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	bl sub_02048268
	cmp r0, #0
	beq _02048190
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _02048190
	str r0, [sp, #0x1c]
	str r5, [sp, #0x18]
_02048190:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blo _02048150
_0204819A:
	mov r6, #0
	str r6, [sp, #0x14]
	str r6, [sp, #0x10]
	add r7, r6, #0
_020481A2:
	mov r5, #0
_020481A4:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r5, #0
	bl sub_02079C9C
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	cmp r0, #0
	beq _020481F4
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _020481F4
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	bl sub_02048268
	cmp r0, #0
	beq _020481F4
	cmp r6, r0
	bge _020481F4
	add r6, r0, #0
	add r0, r5, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
_020481F4:
	add r5, r5, #1
	cmp r5, #0x1e
	blo _020481A4
	ldr r0, [sp, #0x10]
	add r7, #0x1e
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x12
	blo _020481A2
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02048220
	cmp r6, #0
	bne _02048220
	ldr r0, [sp, #0xc]
	mov r1, #0
	strh r1, [r0]
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldr r0, [sp, #4]
	strh r1, [r0]
	b _0204824A
_02048220:
	ldr r0, [sp, #0x1c]
	cmp r0, r6
	blo _0204823A
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldr r0, [sp, #4]
	mov r1, #0
	strh r1, [r0]
	b _0204824A
_0204823A:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	ldr r0, [sp, #8]
	mov r1, #1
	strh r6, [r0]
	ldr r0, [sp, #4]
	strh r1, [r0]
_0204824A:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02048250: .word 0x00000000
	thumb_func_end sub_020480D8

	thumb_func_start sub_02048254
sub_02048254: ; 0x02048254
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B2C8
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02048254

	thumb_func_start sub_02048268
sub_02048268: ; 0x02048268
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	add r7, r6, #0
_02048274:
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp]
	cmp r0, r1
	bne _020482C0
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #5
	blo _02048274
_020482C0:
	ldr r1, _020482D0 ; =0x021C07F0
	ldr r0, [sp, #8]
	strh r0, [r1, #2]
	ldr r0, [sp, #4]
	strh r0, [r1]
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020482D0: .word 0x021C07F0
	thumb_func_end sub_02048268

	.bss


	.global Unk_021C07F0
Unk_021C07F0: ; 0x021C07F0
	.space 0x2

	.global Unk_021C07F2
Unk_021C07F2: ; 0x021C07F2
	.space 0x2

