	.include "macros/function.inc"
	.include "overlay025/ov25_02255DBC.inc"

	

	.text


	thumb_func_start ov25_02255DBC
ov25_02255DBC: ; 0x02255DBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0x1e
	blo _02255DCE
	bl GF_AssertFail
_02255DCE:
	cmp r4, #0x21
	blo _02255DD6
	bl GF_AssertFail
_02255DD6:
	cmp r5, #0x1e
	blo _02255DDC
	mov r5, #0
_02255DDC:
	cmp r4, #0x21
	blo _02255DE2
	mov r4, #0
_02255DE2:
	ldr r0, _02255DF4 ; =0x022560B0
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	lsl r1, r4, #1
	str r0, [r6, #0]
	ldr r0, _02255DF8 ; =0x022560EC
	ldrh r0, [r0, r1]
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02255DF4: .word 0x022560B0
_02255DF8: .word 0x022560EC
	thumb_func_end ov25_02255DBC

	thumb_func_start ov25_02255DFC
ov25_02255DFC: ; 0x02255DFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #4
	blo _02255E0C
	bl GF_AssertFail
_02255E0C:
	ldr r0, _02255E1C ; =0x02256090
	lsl r1, r5, #3
	ldr r0, [r0, r1]
	str r0, [r4, #0]
	ldr r0, _02255E20 ; =0x02256094
	ldr r0, [r0, r1]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02255E1C: .word 0x02256090
_02255E20: .word 0x02256094
	thumb_func_end ov25_02255DFC

	thumb_func_start ov25_02255E24
ov25_02255E24: ; 0x02255E24
	push {r4, r5}
	ldr r5, _02255E54 ; =0x0225612E
	mov r4, #0
_02255E2A:
	ldrh r3, [r5]
	cmp r0, r3
	bne _02255E44
	ldr r0, _02255E58 ; =0x02256130
	lsl r3, r4, #2
	ldrb r0, [r0, r3]
	str r0, [r1, #0]
	ldr r0, _02255E5C ; =0x02256131
	ldrb r0, [r0, r3]
	str r0, [r2, #0]
	mov r0, #1
	pop {r4, r5}
	bx lr
_02255E44:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1d
	blo _02255E2A
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_02255E54: .word 0x0225612E
_02255E58: .word 0x02256130
_02255E5C: .word 0x02256131
	thumb_func_end ov25_02255E24

	.rodata


	.global Unk_ov25_02256090
Unk_ov25_02256090: ; 0x02256090
	.incbin "incbin/overlay25_rodata.bin", 0x230, 0x250 - 0x230

	.global Unk_ov25_022560B0
Unk_ov25_022560B0: ; 0x022560B0
	.incbin "incbin/overlay25_rodata.bin", 0x250, 0x28C - 0x250

	.global Unk_ov25_022560EC
Unk_ov25_022560EC: ; 0x022560EC
	.incbin "incbin/overlay25_rodata.bin", 0x28C, 0x2CE - 0x28C

	.global Unk_ov25_0225612E
Unk_ov25_0225612E: ; 0x0225612E
	.incbin "incbin/overlay25_rodata.bin", 0x2CE, 0x74

