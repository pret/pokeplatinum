	.include "macros/function.inc"
	.include "include/unk_0201D0C8.inc"

	

	.text


	thumb_func_start sub_0201D0C8
sub_0201D0C8: ; 0x0201D0C8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0201D0EC ; =0x0000FFFE
	cmp r1, r0
	beq _0201D0D8
	bl sub_02022974
_0201D0D8:
	ldrh r1, [r4]
	ldr r0, _0201D0EC ; =0x0000FFFE
	cmp r1, r0
	bne _0201D0E8
	ldrh r0, [r4, #4]
	add r1, r4, #6
	lsl r0, r0, #1
	add r4, r1, r0
_0201D0E8:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0201D0EC: .word 0x0000FFFE
	thumb_func_end sub_0201D0C8

	thumb_func_start sub_0201D0F0
sub_0201D0F0: ; 0x0201D0F0
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0201D104 ; =0x0000FFFE
	cmp r1, r0
	beq _0201D100
	bl sub_02022974
_0201D100:
	ldrh r0, [r4, #2]
	pop {r4, pc}
	; .align 2, 0
_0201D104: .word 0x0000FFFE
	thumb_func_end sub_0201D0F0

	thumb_func_start sub_0201D108
sub_0201D108: ; 0x0201D108
	push {r3, lr}
	bl sub_0201D0F0
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r0
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	beq _0201D12C
	mov r0, #6
	lsl r0, r0, #8
	cmp r1, r0
	beq _0201D12C
	mov r0, #5
	lsl r0, r0, #8
	cmp r1, r0
	bne _0201D130
_0201D12C:
	mov r0, #1
	pop {r3, pc}
_0201D130:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0201D108

	thumb_func_start sub_0201D134
sub_0201D134: ; 0x0201D134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5]
	ldr r0, _0201D158 ; =0x0000FFFE
	cmp r1, r0
	beq _0201D146
	bl sub_02022974
_0201D146:
	ldrh r0, [r5, #4]
	cmp r4, r0
	blo _0201D150
	bl sub_02022974
_0201D150:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #6]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201D158: .word 0x0000FFFE
	thumb_func_end sub_0201D134