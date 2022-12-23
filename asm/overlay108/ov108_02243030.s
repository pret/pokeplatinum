	.include "macros/function.inc"
	.include "overlay108/ov108_02243030.inc"

	

	.text


	thumb_func_start ov108_02243030
ov108_02243030: ; 0x02243030
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp, #0x14]
	mov r0, #0x20
	mov r1, #0x67
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl sub_0201DBEC
	bl ov108_022431FC
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x67
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x22
	add r1, r5, #4
	mov r2, #0x67
	bl sub_020095C4
	ldr r4, _022430EC ; =0x02243760
	str r0, [r5, #0]
	mov r7, #0
	add r6, r5, #0
_02243076:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x67
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _02243076
	add r0, r5, #0
	bl ov108_02243490
	add r0, r5, #0
	bl ov108_02243230
	add r0, r5, #0
	bl ov108_022432B4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	bl ov108_02243360
	mov r7, #0x4f
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_022430B6:
	ldr r0, [r4, r7]
	bl sub_0200A328
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #0xb
	blt _022430B6
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_022430CA:
	ldr r0, [r5, r6]
	bl sub_0200A5C8
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _022430CA
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022430EC: .word 0x02243760
	thumb_func_end ov108_02243030

	thumb_func_start ov108_022430F0
ov108_022430F0: ; 0x022430F0
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r5, #0
	ldr r0, [sp, #0x98]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r4, r6]
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r4, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r4, r0]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r4, #0]
	mov r1, #1
	lsl r1, r1, #0xc
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	add r0, r5, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	add r1, sp, #0x2c
	strh r0, [r1, #0x20]
	ldr r1, [sp, #0x94]
	str r1, [sp, #0x50]
	mov r1, #0x67
	str r1, [sp, #0x58]
	add r1, sp, #0x80
	ldrb r1, [r1, #0x1c]
	cmp r1, #0
	bne _02243162
	mov r0, #1
	str r0, [sp, #0x54]
	b _0224316E
_02243162:
	mov r1, #2
	str r1, [sp, #0x54]
	mov r1, #3
	lsl r1, r1, #0x12
	add r0, r0, r1
	str r0, [sp, #0x38]
_0224316E:
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #1
	add r4, r0, #0
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r1, [sp, #0x90]
	add r0, r4, #0
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	thumb_func_end ov108_022430F0

	thumb_func_start ov108_02243194
ov108_02243194: ; 0x02243194
	push {r4, r5, r6, lr}
	mov r6, #0x4f
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0224319E:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0200A4E4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _0224319E
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_022431B8:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0200A6DC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _022431B8
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_022431D2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _022431D2
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov108_02243194

	thumb_func_start ov108_022431FC
ov108_022431FC: ; 0x022431FC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0224322C ; =0x02243764
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #0xe
	mov r1, #0x67
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0224322C: .word 0x02243764
	thumb_func_end ov108_022431FC

	thumb_func_start ov108_02243230
ov108_02243230: ; 0x02243230
	push {r4, lr}
	sub sp, #0x10
	mov r3, #1
	str r3, [sp]
	add r4, r0, #0
	str r3, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x12
	bl sub_0200985C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	add r0, #0xc9
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x28
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x14
	bl sub_02009918
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xd1
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x13
	bl sub_02009918
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov108_02243230

	thumb_func_start ov108_022432B4
ov108_022432B4: ; 0x022432B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x14
	mov r1, #0x67
	bl sub_02006C24
	add r4, r0, #0
	bl sub_02081930
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02081934
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	add r0, #0xc9
	ldr r0, [r5, r0]
	mov r1, #0x14
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_02081938
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0208193C
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xd1
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_022432B4

	thumb_func_start ov108_02243360
ov108_02243360: ; 0x02243360
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x13
	mov r1, #0x67
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_02006C24
	str r0, [sp, #0x18]
	bl sub_02079FD0
	mov r1, #3
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	add r0, #0xc9
	ldr r0, [r6, r0]
	mov r1, #0x13
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r6, r1]
	bl sub_02079FD8
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r6, r1]
	bl sub_02079FE4
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xd1
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r4, #0
	add r5, r6, #0
_022433E6:
	cmp r4, #3
	bne _0224341C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02243406
	add r0, r7, #0
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x1c]
	b _02243430
_02243406:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x1c]
	b _02243430
_0224341C:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x1c]
_02243430:
	ldr r0, [sp, #0x20]
	bl sub_02079D80
	add r2, r0, #0
	add r0, r4, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x1c]
	bl sub_02079D80
	add r2, r0, #0
	add r0, r4, #7
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blo _022433E6
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov108_02243360

	thumb_func_start ov108_02243490
ov108_02243490: ; 0x02243490
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x15
	mov r3, #1
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	add r0, #0xc9
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x29
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x17
	mov r3, #1
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xd1
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x16
	mov r3, #1
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov108_02243490

	.rodata


	.global Unk_ov108_02243760
Unk_ov108_02243760: ; 0x02243760
	.incbin "incbin/overlay108_rodata.bin", 0xE4, 0xE8 - 0xE4

	.global Unk_ov108_02243764
Unk_ov108_02243764: ; 0x02243764
	.incbin "incbin/overlay108_rodata.bin", 0xE8, 0x10

