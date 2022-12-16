	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov107_02249604
ov107_02249604: ; 0x02249604
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	mov r0, #0x20
	mov r1, #0x64
	str r2, [sp, #0x18]
	bl sub_0201DBEC
	bl ov107_02249A3C
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x64
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x28
	add r1, r5, #4
	mov r2, #0x64
	bl sub_020095C4
	ldr r4, _022498A0 ; =0x0224A204
	str r0, [r5, #0]
	mov r7, #0
	add r6, r5, #0
_02249648:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x64
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _02249648
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xf
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0x27
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0x11
	mov r3, #1
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0x10
	mov r3, #1
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #0x64
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	mov r1, #1
	bl sub_0207CE78
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #2
	bl sub_0207CE78
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0x10
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_0207CF40
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0207CF44
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02006CA8
	add r0, r5, #0
	bl ov107_02249A70
	mov r0, #0x13
	mov r1, #0x64
	bl sub_02006C24
	add r7, r0, #0
	bl sub_02079FD0
	mov r1, #3
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0x13
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_02079FD8
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02079FE4
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r4, #0
	add r6, r5, #0
_0224980A:
	cmp r4, #3
	bne _02249828
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0224981E
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0207A0FC
	b _02249830
_0224981E:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_0207A0FC
	b _02249830
_02249828:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_0207A0FC
_02249830:
	bl sub_02079D80
	add r2, r0, #0
	add r0, r4, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #4
	blt _0224980A
	add r0, r7, #0
	bl sub_02006CA8
	mov r7, #0x4f
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0224986A:
	ldr r0, [r4, r7]
	bl sub_0200A328
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #7
	blt _0224986A
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_0224987E:
	ldr r0, [r5, r6]
	bl sub_0200A5C8
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0224987E
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022498A0: .word 0x0224A204
	thumb_func_end ov107_02249604

	thumb_func_start ov107_022498A4
ov107_022498A4: ; 0x022498A4
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
	add r1, r5, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x94]
	str r0, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _02249912
	mov r0, #1
	str r0, [sp, #0x54]
	b _02249916
_02249912:
	mov r0, #2
	str r0, [sp, #0x54]
_02249916:
	mov r0, #0x64
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	bne _0224992C
	mov r0, #3
	ldr r1, [sp, #0x38]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x38]
_0224992C:
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
	; .align 2, 0
	thumb_func_end ov107_022498A4

	thumb_func_start ov107_02249954
ov107_02249954: ; 0x02249954
	push {r4, r5, r6, lr}
	mov r6, #0x4f
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0224995E:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0200A4E4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _0224995E
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_02249978:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0200A6DC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02249978
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_02249992:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02249992
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02249954

	thumb_func_start ov107_022499BC
ov107_022499BC: ; 0x022499BC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	add r6, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02009DC8
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	add r0, #0xc8
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x10
	bl sub_02009968
	add r0, r4, #0
	bl sub_0200A4C0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_022499BC

	thumb_func_start ov107_022499FC
ov107_022499FC: ; 0x022499FC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r6, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02009DC8
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	add r0, #0xcc
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020099D4
	add r0, r4, #0
	bl sub_0200A6B8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_022499FC

	thumb_func_start ov107_02249A3C
ov107_02249A3C: ; 0x02249A3C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02249A6C ; =0x0224A208
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
	mov r0, #8
	mov r1, #0x64
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02249A6C: .word 0x0224A208
	thumb_func_end ov107_02249A3C

	thumb_func_start ov107_02249A70
ov107_02249A70: ; 0x02249A70
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x14
	mov r1, #0x64
	bl sub_02006C24
	add r4, r0, #0
	bl sub_02081930
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
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
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
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
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
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
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
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
	thumb_func_end ov107_02249A70

	.rodata


	.global Unk_ov107_0224A204
Unk_ov107_0224A204: ; 0x0224A204
	.incbin "incbin/overlay107_rodata.bin", 0x404, 0x408 - 0x404

	.global Unk_ov107_0224A208
Unk_ov107_0224A208: ; 0x0224A208
	.incbin "incbin/overlay107_rodata.bin", 0x408, 0x10

