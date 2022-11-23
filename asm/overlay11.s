	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov11_0221F800
ov11_0221F800: ; 0x0221F800
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0221F810
	lsl r1, r0, #2
	ldr r0, _0221F814 ; =0x0221FBD0
	ldr r0, [r0, r1]
	bx lr
_0221F810:
	ldr r0, _0221F818 ; =0x0221F96C
	bx lr
	; .align 2, 0
_0221F814: .word 0x0221FBD0
_0221F818: .word 0x0221F96C
	thumb_func_end ov11_0221F800

	thumb_func_start ov11_0221F81C
ov11_0221F81C: ; 0x0221F81C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r3, #0
	bl ov11_0221F800
	ldr r3, [sp, #0x10]
	add r1, r0, #0
	mov r0, #0x20
	lsl r3, r3, #0x14
	str r0, [sp]
	add r0, r5, #0
	add r2, r4, #0
	lsr r3, r3, #0x10
	bl sub_02002FBC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov11_0221F81C

	thumb_func_start ov11_0221F840
ov11_0221F840: ; 0x0221F840
	push {r4, lr}
	sub sp, #8
	mov r1, #0x12
	lsl r1, r1, #0xa
	add r4, r0, #0
	bl sub_02018144
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #0x12
	ldr r0, _0221F880 ; =ov11_0221F914
	ldr r1, _0221F884 ; =ov11_0221F930
	lsl r3, r3, #0xa
	str r4, [sp, #4]
	bl sub_02014014
	add r4, r0, #0
	bl sub_02014784
	add r2, r0, #0
	beq _0221F878
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
_0221F878:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0221F880: .word ov11_0221F914
_0221F884: .word ov11_0221F930
	thumb_func_end ov11_0221F840

	thumb_func_start ov11_0221F888
ov11_0221F888: ; 0x0221F888
	push {r4, lr}
	sub sp, #8
	mov r1, #0x42
	lsl r1, r1, #8
	add r4, r0, #0
	bl sub_02018144
	add r2, r0, #0
	bne _0221F8A0
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0221F8A0:
	mov r0, #1
	str r0, [sp]
	mov r3, #0x42
	ldr r0, _0221F8D0 ; =ov11_0221F914
	ldr r1, _0221F8D4 ; =ov11_0221F930
	lsl r3, r3, #8
	str r4, [sp, #4]
	bl sub_02014014
	add r4, r0, #0
	bl sub_02014784
	add r2, r0, #0
	beq _0221F8C8
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
_0221F8C8:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0221F8D0: .word ov11_0221F914
_0221F8D4: .word ov11_0221F930
	thumb_func_end ov11_0221F888

	thumb_func_start ov11_0221F8D8
ov11_0221F8D8: ; 0x0221F8D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02014730
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201411C
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov11_0221F8D8

	thumb_func_start ov11_0221F8F0
ov11_0221F8F0: ; 0x0221F8F0
	push {r3, lr}
	bl sub_020241B4
	bl sub_02014680
	cmp r0, #0
	beq _0221F912
	bl sub_0201469C
	cmp r0, #0
	ble _0221F90E
	bl sub_020241B4
	bl sub_020A73C0
_0221F90E:
	bl sub_020146C0
_0221F912:
	pop {r3, pc}
	thumb_func_end ov11_0221F8F0

	thumb_func_start ov11_0221F914
ov11_0221F914: ; 0x0221F914
	push {r4, lr}
	ldr r3, _0221F92C ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145B4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0221F92C: .word 0x02100DEC
	thumb_func_end ov11_0221F914

	thumb_func_start ov11_0221F930
ov11_0221F930: ; 0x0221F930
	push {r4, lr}
	ldr r3, _0221F948 ; =0x02100DF4
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0221F948: .word 0x02100DF4
	thumb_func_end ov11_0221F930
	; 0x0221F94C

	.incbin "data/overlay11.bin"
