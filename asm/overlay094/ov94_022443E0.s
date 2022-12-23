	.include "macros/function.inc"
	.include "overlay094/ov94_022443E0.inc"

	

	.text


	thumb_func_start ov94_022443E0
ov94_022443E0: ; 0x022443E0
	push {r4, lr}
	mov r3, #0x45
	add r4, r0, #0
	lsl r3, r3, #2
	ldr r1, [r4, #0]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xcd
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #1
	add r0, #0xcf
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xce
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0xd4
	strh r1, [r0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0208C324
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x34]
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x24]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202D79C
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	add r0, r4, #0
	ldr r1, _02244488 ; =0x02246360
	add r0, #0xbc
	bl sub_0208D720
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x1c]
	add r0, #0xbc
	bl sub_0208E9C0
	add r1, r4, #0
	ldr r0, _0224448C ; =0x020F410C
	add r1, #0xbc
	mov r2, #0x3e
	bl sub_020067E8
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	mov r0, #0x42
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	nop
_02244488: .word 0x02246360
_0224448C: .word 0x020F410C
	thumb_func_end ov94_022443E0

	thumb_func_start ov94_02244490
ov94_02244490: ; 0x02244490
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r4, #3
	bl sub_02006844
	cmp r0, #0
	beq _022444B8
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02006814
	ldr r2, [r5, #0x24]
	add r0, r5, #0
	mov r1, #5
	bl ov94_0223C4C0
	mov r4, #4
_022444B8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov94_02244490

	thumb_func_start ov94_022444BC
ov94_022444BC: ; 0x022444BC
	push {r3, lr}
	bl ov94_0223C4C8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov94_022444BC

	.rodata


	.global Unk_ov94_02246360
Unk_ov94_02246360: ; 0x02246360
	.incbin "incbin/overlay94_rodata.bin", 0x968, 0x9

