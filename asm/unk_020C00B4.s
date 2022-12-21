	.include "macros/function.inc"
	.include "include/unk_020C00B4.inc"

	

	.text


	arm_func_start sub_020C00B4
sub_020C00B4: ; 0x020C00B4
	stmfd sp!, {r4, lr}
	ldr r3, _020C0104 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	beq _020C00F0
	cmp r3, #0x1c
	bls _020C00F0
	mov r1, r4
	add r2, lr, #0x5000000
	bl sub_020C43C4
	ldmia sp!, {r4, pc}
_020C00F0:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x5000000
	bl sub_020C4B18
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0104: .word 0x02101148
	arm_func_end sub_020C00B4

	arm_func_start sub_020C0108
sub_020C0108: ; 0x020C0108
	stmfd sp!, {r3, lr}
	ldr r3, _020C015C ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C0144
	cmp r3, #0x1c
	bls _020C0144
	add r2, r1, #0x400
	mov r1, lr
	add r2, r2, #0x5000000
	bl sub_020C43C4
	ldmia sp!, {r3, pc}
_020C0144:
	add r1, r1, #0x400
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl sub_020C4B18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C015C: .word 0x02101148
	arm_func_end sub_020C0108

	arm_func_start sub_020C0160
sub_020C0160: ; 0x020C0160
	stmfd sp!, {r3, lr}
	ldr r3, _020C01B4 ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C019C
	cmp r3, #0x1c
	bls _020C019C
	add r2, r1, #0x200
	mov r1, lr
	add r2, r2, #0x5000000
	bl sub_020C43C4
	ldmia sp!, {r3, pc}
_020C019C:
	add r1, r1, #0x200
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl sub_020C4B18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C01B4: .word 0x02101148
	arm_func_end sub_020C0160

	arm_func_start sub_020C01B8
sub_020C01B8: ; 0x020C01B8
	stmfd sp!, {r3, lr}
	ldr r3, _020C020C ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C01F4
	cmp r3, #0x1c
	bls _020C01F4
	add r2, r1, #0x600
	mov r1, lr
	add r2, r2, #0x5000000
	bl sub_020C43C4
	ldmia sp!, {r3, pc}
_020C01F4:
	add r1, r1, #0x600
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl sub_020C4B18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C020C: .word 0x02101148
	arm_func_end sub_020C01B8

	arm_func_start sub_020C0210
sub_020C0210: ; 0x020C0210
	stmfd sp!, {r4, lr}
	ldr r3, _020C0260 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	beq _020C024C
	cmp r3, #0x30
	bls _020C024C
	mov r1, r4
	add r2, lr, #0x7000000
	bl sub_020C4354
	ldmia sp!, {r4, pc}
_020C024C:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x7000000
	bl sub_020C4B68
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0260: .word 0x02101148
	arm_func_end sub_020C0210

	arm_func_start sub_020C0264
sub_020C0264: ; 0x020C0264
	stmfd sp!, {r3, lr}
	ldr r3, _020C02B8 ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C02A0
	cmp r3, #0x30
	bls _020C02A0
	add r2, r1, #0x400
	mov r1, lr
	add r2, r2, #0x7000000
	bl sub_020C4354
	ldmia sp!, {r3, pc}
_020C02A0:
	add r1, r1, #0x400
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x7000000
	bl sub_020C4B68
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C02B8: .word 0x02101148
	arm_func_end sub_020C0264

	arm_func_start sub_020C02BC
sub_020C02BC: ; 0x020C02BC
	stmfd sp!, {r4, lr}
	ldr r3, _020C0310 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	mov ip, #0x6400000
	beq _020C02FC
	cmp r3, #0x30
	bls _020C02FC
	mov r1, r4
	add r2, ip, lr
	bl sub_020C4354
	ldmia sp!, {r4, pc}
_020C02FC:
	mov r0, r4
	mov r2, r3
	add r1, ip, lr
	bl sub_020C4B68
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0310: .word 0x02101148
	arm_func_end sub_020C02BC

	arm_func_start sub_020C0314
sub_020C0314: ; 0x020C0314
	stmfd sp!, {r4, lr}
	ldr r3, _020C0368 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	mov ip, #0x6600000
	beq _020C0354
	cmp r3, #0x30
	bls _020C0354
	mov r1, r4
	add r2, ip, lr
	bl sub_020C4354
	ldmia sp!, {r4, pc}
_020C0354:
	mov r0, r4
	mov r2, r3
	add r1, ip, lr
	bl sub_020C4B68
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0368: .word 0x02101148
	arm_func_end sub_020C0314

	arm_func_start sub_020C036C
sub_020C036C: ; 0x020C036C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF03C
	ldr r1, _020C03C8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C03B4
	cmp r4, #0x1c
	bls _020C03B4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C03B4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C03C8: .word 0x02101148
	arm_func_end sub_020C036C

	arm_func_start sub_020C03CC
sub_020C03CC: ; 0x020C03CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF070
	ldr r1, _020C0428 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0414
	cmp r4, #0x1c
	bls _020C0414
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0414:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0428: .word 0x02101148
	arm_func_end sub_020C03CC

	arm_func_start sub_020C042C
sub_020C042C: ; 0x020C042C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF090
	ldr r1, _020C0488 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0474
	cmp r4, #0x1c
	bls _020C0474
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0474:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0488: .word 0x02101148
	arm_func_end sub_020C042C

	arm_func_start sub_020C048C
sub_020C048C: ; 0x020C048C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF0C4
	ldr r1, _020C04E8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C04D4
	cmp r4, #0x1c
	bls _020C04D4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C04D4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C04E8: .word 0x02101148
	arm_func_end sub_020C048C

	arm_func_start sub_020C04EC
sub_020C04EC: ; 0x020C04EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF0E4
	ldr r1, _020C0548 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0534
	cmp r4, #0x1c
	bls _020C0534
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0534:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0548: .word 0x02101148
	arm_func_end sub_020C04EC

	arm_func_start sub_020C054C
sub_020C054C: ; 0x020C054C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF168
	ldr r1, _020C05A8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0594
	cmp r4, #0x1c
	bls _020C0594
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0594:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C05A8: .word 0x02101148
	arm_func_end sub_020C054C

	arm_func_start sub_020C05AC
sub_020C05AC: ; 0x020C05AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF1DC
	ldr r1, _020C0608 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C05F4
	cmp r4, #0x1c
	bls _020C05F4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C05F4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0608: .word 0x02101148
	arm_func_end sub_020C05AC

	arm_func_start sub_020C060C
sub_020C060C: ; 0x020C060C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF260
	ldr r1, _020C0668 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0654
	cmp r4, #0x1c
	bls _020C0654
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0654:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0668: .word 0x02101148
	arm_func_end sub_020C060C

	arm_func_start sub_020C066C
sub_020C066C: ; 0x020C066C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF2D4
	ldr r1, _020C06C8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C06B4
	cmp r4, #0x30
	bls _020C06B4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C06B4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C06C8: .word 0x02101148
	arm_func_end sub_020C066C

	arm_func_start sub_020C06CC
sub_020C06CC: ; 0x020C06CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF308
	ldr r1, _020C0728 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0714
	cmp r4, #0x30
	bls _020C0714
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0714:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0728: .word 0x02101148
	arm_func_end sub_020C06CC

	arm_func_start sub_020C072C
sub_020C072C: ; 0x020C072C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF328
	ldr r1, _020C0788 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0774
	cmp r4, #0x30
	bls _020C0774
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0774:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0788: .word 0x02101148
	arm_func_end sub_020C072C

	arm_func_start sub_020C078C
sub_020C078C: ; 0x020C078C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF35C
	ldr r1, _020C07E8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C07D4
	cmp r4, #0x30
	bls _020C07D4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C07D4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C07E8: .word 0x02101148
	arm_func_end sub_020C078C

	arm_func_start sub_020C07EC
sub_020C07EC: ; 0x020C07EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF37C
	ldr r1, _020C0848 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0834
	cmp r4, #0x30
	bls _020C0834
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0834:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0848: .word 0x02101148
	arm_func_end sub_020C07EC

	arm_func_start sub_020C084C
sub_020C084C: ; 0x020C084C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF3CC
	ldr r1, _020C08A8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0894
	cmp r4, #0x30
	bls _020C0894
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0894:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C08A8: .word 0x02101148
	arm_func_end sub_020C084C

	arm_func_start sub_020C08AC
sub_020C08AC: ; 0x020C08AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF40C
	ldr r1, _020C0908 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C08F4
	cmp r4, #0x30
	bls _020C08F4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C08F4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0908: .word 0x02101148
	arm_func_end sub_020C08AC

	arm_func_start sub_020C090C
sub_020C090C: ; 0x020C090C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF464
	ldr r1, _020C0968 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0954
	cmp r4, #0x30
	bls _020C0954
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0954:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0968: .word 0x02101148
	arm_func_end sub_020C090C

	arm_func_start sub_020C096C
sub_020C096C: ; 0x020C096C
	stmfd sp!, {r3, lr}
	bl sub_020BECC4
	ldr r1, _020C09FC ; =0x021CCBBC
	cmp r0, #0x20
	str r0, [r1, #0x14]
	bgt _020C09A0
	cmp r0, #0x20
	bge _020C09E4
	cmp r0, #0
	ldmleia sp!, {r3, pc}
	cmp r0, #0x10
	beq _020C09BC
	ldmia sp!, {r3, pc}
_020C09A0:
	cmp r0, #0x40
	bgt _020C09B0
	beq _020C09D0
	ldmia sp!, {r3, pc}
_020C09B0:
	cmp r0, #0x60
	beq _020C09E4
	ldmia sp!, {r3, pc}
_020C09BC:
	ldr r2, _020C0A00 ; =0x06880000
	mov r0, #0
	str r2, [r1, #0x10]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
_020C09D0:
	ldr r2, _020C0A04 ; =0x06894000
	mov r0, #0x4000
	str r2, [r1, #0x10]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
_020C09E4:
	ldr r2, _020C0A08 ; =0x06890000
	ldr r0, _020C09FC ; =0x021CCBBC
	mov r1, #0
	str r2, [r0, #0x10]
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C09FC: .word 0x021CCBBC
_020C0A00: .word 0x06880000
_020C0A04: .word 0x06894000
_020C0A08: .word 0x06890000
	arm_func_end sub_020C096C

	arm_func_start sub_020C0A0C
sub_020C0A0C: ; 0x020C0A0C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr ip, _020C0A74 ; =0x021CCBBC
	ldr r3, _020C0A78 ; =0x02101148
	ldr lr, [ip, #0x10]
	ldr r4, [ip, #0xc]
	add r5, lr, r1
	ldr lr, [r3]
	mvn ip, #0
	mov r1, r0
	mov r3, r2
	cmp lr, ip
	sub r4, r5, r4
	beq _020C0A64
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r2, r4
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_020C0A64:
	mov r1, r4
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C0A74: .word 0x021CCBBC
_020C0A78: .word 0x02101148
	arm_func_end sub_020C0A0C

	arm_func_start sub_020C0A7C
sub_020C0A7C: ; 0x020C0A7C
	stmfd sp!, {r3, lr}
	ldr r0, _020C0ABC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0A98
	bl sub_020C458C
_020C0A98:
	ldr r0, _020C0AC0 ; =0x021CCBBC
	ldr r0, [r0, #0x14]
	bl sub_020BE3E4
	ldr r0, _020C0AC0 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0ABC: .word 0x02101148
_020C0AC0: .word 0x021CCBBC
	arm_func_end sub_020C0A7C

	arm_func_start sub_020C0AC4
sub_020C0AC4: ; 0x020C0AC4
	stmfd sp!, {r3, lr}
	bl sub_020BECE8
	ldr r1, _020C0B00 ; =0x021CCBBC
	cmp r0, #0
	str r0, [r1, #8]
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x20
	beq _020C0AF4
	cmp r0, #0x40
	ldreq r0, _020C0B04 ; =0x06894000
	streq r0, [r1, #4]
	ldmia sp!, {r3, pc}
_020C0AF4:
	ldr r0, _020C0B08 ; =0x06890000
	str r0, [r1, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0B00: .word 0x021CCBBC
_020C0B04: .word 0x06894000
_020C0B08: .word 0x06890000
	arm_func_end sub_020C0AC4

	arm_func_start sub_020C0B0C
sub_020C0B0C: ; 0x020C0B0C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r3, _020C0B70 ; =0x02101148
	ldr lr, _020C0B74 ; =0x021CCBBC
	ldr r4, [r3, #0]
	mvn ip, #0
	mov r6, r0
	mov r5, r1
	mov r3, r2
	cmp r4, ip
	ldr lr, [lr, #4]
	beq _020C0B60
	mov ip, #0
	str ip, [sp]
	mov r0, r4
	mov r1, r6
	add r2, lr, r5
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_020C0B60:
	add r1, lr, r5
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0B70: .word 0x02101148
_020C0B74: .word 0x021CCBBC
	arm_func_end sub_020C0B0C

	arm_func_start sub_020C0B78
sub_020C0B78: ; 0x020C0B78
	stmfd sp!, {r3, lr}
	ldr r0, _020C0BB4 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0B94
	bl sub_020C458C
_020C0B94:
	ldr r0, _020C0BB8 ; =0x021CCBBC
	ldr r0, [r0, #8]
	bl sub_020BE4E4
	ldr r0, _020C0BB8 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0BB4: .word 0x02101148
_020C0BB8: .word 0x021CCBBC
	arm_func_end sub_020C0B78

	arm_func_start sub_020C0BBC
sub_020C0BBC: ; 0x020C0BBC
	stmfd sp!, {r3, lr}
	bl sub_020BED70
	ldr r1, _020C0BD0 ; =0x021CCBBC
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0BD0: .word 0x021CCBBC
	arm_func_end sub_020C0BBC

	arm_func_start sub_020C0BD4
sub_020C0BD4: ; 0x020C0BD4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020C0C34 ; =0x02101148
	mvn ip, #0
	ldr lr, [r3]
	mov r4, r0
	mov r3, r2
	cmp lr, ip
	beq _020C0C20
	add r2, r1, #0x98000
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r4
	add r2, r2, #0x6800000
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020C0C20:
	add r1, r1, #0x98000
	add r1, r1, #0x6800000
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0C34: .word 0x02101148
	arm_func_end sub_020C0BD4

	arm_func_start sub_020C0C38
sub_020C0C38: ; 0x020C0C38
	stmfd sp!, {r3, lr}
	ldr r0, _020C0C70 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0C54
	bl sub_020C458C
_020C0C54:
	ldr r0, _020C0C74 ; =0x021CCBBC
	ldr r0, [r0, #0]
	bl sub_020BEB68
	ldr r0, _020C0C74 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0C70: .word 0x02101148
_020C0C74: .word 0x021CCBBC
	arm_func_end sub_020C0C38

	arm_func_start sub_020C0C78
sub_020C0C78: ; 0x020C0C78
	stmfd sp!, {r3, lr}
	bl sub_020BED98
	ldr r1, _020C0C8C ; =0x021CCBBC
	str r0, [r1, #0x18]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0C8C: .word 0x021CCBBC
	arm_func_end sub_020C0C78

	arm_func_start sub_020C0C90
sub_020C0C90: ; 0x020C0C90
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020C0CF0 ; =0x02101148
	mvn ip, #0
	ldr lr, [r3]
	mov r4, r0
	mov r3, r2
	cmp lr, ip
	beq _020C0CDC
	add r2, r1, #0x8a0000
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r4
	add r2, r2, #0x6000000
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020C0CDC:
	add r1, r1, #0x8a0000
	add r1, r1, #0x6000000
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0CF0: .word 0x02101148
	arm_func_end sub_020C0C90

	arm_func_start sub_020C0CF4
sub_020C0CF4: ; 0x020C0CF4
	stmfd sp!, {r3, lr}
	ldr r0, _020C0D2C ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0D10
	bl sub_020C458C
_020C0D10:
	ldr r0, _020C0D30 ; =0x021CCBBC
	ldr r0, [r0, #0x18]
	bl sub_020BEBE8
	ldr r0, _020C0D30 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0x18]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0D2C: .word 0x02101148
_020C0D30: .word 0x021CCBBC
	arm_func_end sub_020C0CF4

	.bss


	.global Unk_021CCBBC
Unk_021CCBBC: ; 0x021CCBBC
	.space 0x4

	.global Unk_021CCBC0
Unk_021CCBC0: ; 0x021CCBC0
	.space 0x4

	.global Unk_021CCBC4
Unk_021CCBC4: ; 0x021CCBC4
	.space 0x4

	.global Unk_021CCBC8
Unk_021CCBC8: ; 0x021CCBC8
	.space 0x4

	.global Unk_021CCBCC
Unk_021CCBCC: ; 0x021CCBCC
	.space 0x4

	.global Unk_021CCBD0
Unk_021CCBD0: ; 0x021CCBD0
	.space 0x4

	.global Unk_021CCBD4
Unk_021CCBD4: ; 0x021CCBD4
	.space 0x4

