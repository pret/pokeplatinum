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

	.rodata


	.global Unk_ov11_0221F94C
Unk_ov11_0221F94C: ; 0x0221F94C
	.incbin "incbin/overlay11_rodata.bin", 0x0, 0x20 - 0x0

	.global Unk_ov11_0221F96C
Unk_ov11_0221F96C: ; 0x0221F96C
	.incbin "incbin/overlay11_rodata.bin", 0x20, 0x40 - 0x20

	.global Unk_ov11_0221F98C
Unk_ov11_0221F98C: ; 0x0221F98C
	.incbin "incbin/overlay11_rodata.bin", 0x40, 0x60 - 0x40

	.global Unk_ov11_0221F9AC
Unk_ov11_0221F9AC: ; 0x0221F9AC
	.incbin "incbin/overlay11_rodata.bin", 0x60, 0x80 - 0x60

	.global Unk_ov11_0221F9CC
Unk_ov11_0221F9CC: ; 0x0221F9CC
	.incbin "incbin/overlay11_rodata.bin", 0x80, 0xA0 - 0x80

	.global Unk_ov11_0221F9EC
Unk_ov11_0221F9EC: ; 0x0221F9EC
	.incbin "incbin/overlay11_rodata.bin", 0xA0, 0xC0 - 0xA0

	.global Unk_ov11_0221FA0C
Unk_ov11_0221FA0C: ; 0x0221FA0C
	.incbin "incbin/overlay11_rodata.bin", 0xC0, 0xE0 - 0xC0

	.global Unk_ov11_0221FA2C
Unk_ov11_0221FA2C: ; 0x0221FA2C
	.incbin "incbin/overlay11_rodata.bin", 0xE0, 0x100 - 0xE0

	.global Unk_ov11_0221FA4C
Unk_ov11_0221FA4C: ; 0x0221FA4C
	.incbin "incbin/overlay11_rodata.bin", 0x100, 0x120 - 0x100

	.global Unk_ov11_0221FA6C
Unk_ov11_0221FA6C: ; 0x0221FA6C
	.incbin "incbin/overlay11_rodata.bin", 0x120, 0x140 - 0x120

	.global Unk_ov11_0221FA8C
Unk_ov11_0221FA8C: ; 0x0221FA8C
	.incbin "incbin/overlay11_rodata.bin", 0x140, 0x160 - 0x140

	.global Unk_ov11_0221FAAC
Unk_ov11_0221FAAC: ; 0x0221FAAC
	.incbin "incbin/overlay11_rodata.bin", 0x160, 0x180 - 0x160

	.global Unk_ov11_0221FACC
Unk_ov11_0221FACC: ; 0x0221FACC
	.incbin "incbin/overlay11_rodata.bin", 0x180, 0x1A0 - 0x180

	.global Unk_ov11_0221FAEC
Unk_ov11_0221FAEC: ; 0x0221FAEC
	.incbin "incbin/overlay11_rodata.bin", 0x1A0, 0x1C0 - 0x1A0

	.global Unk_ov11_0221FB0C
Unk_ov11_0221FB0C: ; 0x0221FB0C
	.incbin "incbin/overlay11_rodata.bin", 0x1C0, 0x1E0 - 0x1C0

	.global Unk_ov11_0221FB2C
Unk_ov11_0221FB2C: ; 0x0221FB2C
	.incbin "incbin/overlay11_rodata.bin", 0x1E0, 0x200 - 0x1E0

	.global Unk_ov11_0221FB4C
Unk_ov11_0221FB4C: ; 0x0221FB4C
	.incbin "incbin/overlay11_rodata.bin", 0x200, 0x220 - 0x200

	.global Unk_ov11_0221FB6C
Unk_ov11_0221FB6C: ; 0x0221FB6C
	.incbin "incbin/overlay11_rodata.bin", 0x220, 0x240 - 0x220

	.global Unk_ov11_0221FB8C
Unk_ov11_0221FB8C: ; 0x0221FB8C
	.incbin "incbin/overlay11_rodata.bin", 0x240, 0x260 - 0x240

	.global Unk_ov11_0221FBAC
Unk_ov11_0221FBAC: ; 0x0221FBAC
	.incbin "incbin/overlay11_rodata.bin", 0x260, 0x284 - 0x260

	.global Unk_ov11_0221FBD0
Unk_ov11_0221FBD0: ; 0x0221FBD0
	.incbin "incbin/overlay11_rodata.bin", 0x284, 0x48

