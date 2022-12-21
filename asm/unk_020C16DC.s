	.include "macros/function.inc"
	.include "include/unk_020C16DC.inc"

	

	.text


	arm_func_start sub_020C16DC
sub_020C16DC: ; 0x020C16DC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020C1798 ; =0x021CCC58
	ldr r0, [r3, #0]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, _020C179C ; =0x027FFFF0
	mov r4, #1
	mov r2, #0
	mov r0, #0x7e
	str r4, [r3, #0]
	str r2, [r1, #0]
	bl sub_020C17F4
	ldr r5, _020C179C ; =0x027FFFF0
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _020C1734
	mov r4, #0x400
_020C1720:
	mov r0, r4
	bl sub_02000522
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _020C1720
_020C1734:
	ldr ip, _020C17A0 ; =0x027FFFB0
	mvn r0, #0
	str r0, [ip]
	mov r3, r0, lsl #0x10
	add r1, ip, #0x10
	mov r0, #0
	mov r2, #0x28
	str r3, [ip, #4]
	bl sub_020C4B4C
	ldr ip, _020C17A4 ; =0x04000204
	ldr r1, _020C179C ; =0x027FFFF0
	ldrh r3, [ip]
	mov r0, #0x7e
	mov r2, #0
	orr r3, r3, #0x800
	strh r3, [ip]
	ldrh r3, [ip]
	orr r3, r3, #0x80
	strh r3, [ip]
	bl sub_020C1878
	ldr r1, _020C179C ; =0x027FFFF0
	mov r0, #0x7f
	mov r2, #0
	bl sub_020C17F4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C1798: .word 0x021CCC58
_020C179C: .word 0x027FFFF0
_020C17A0: .word 0x027FFFB0
_020C17A4: .word 0x04000204
	arm_func_end sub_020C16DC

	arm_func_start sub_020C17A8
sub_020C17A8: ; 0x020C17A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl sub_020C1888
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0x400
_020C17CC:
	mov r0, r4
	bl sub_02000522
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_020C1888
	cmp r0, #0
	bgt _020C17CC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C17A8

	arm_func_start sub_020C17F4
sub_020C17F4: ; 0x020C17F4
	ldr ip, _020C1800 ; =sub_020C17A8
	mov r3, #0
	bx ip
	; .align 2, 0
_020C1800: .word sub_020C17A8
	arm_func_end sub_020C17F4

	arm_func_start sub_020C1804
sub_020C1804: ; 0x020C1804
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	ldrh r1, [r7, #4]
	mov r6, r2
	mov r5, r3
	cmp r0, r1
	mvnne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _020C1834
	bl sub_020C3DC4
	b _020C1838
_020C1834:
	bl sub_020C3D98
_020C1838:
	mov r4, r0
	mov r0, #0
	strh r0, [r7, #4]
	cmp r6, #0
	beq _020C1850
	blx r6
_020C1850:
	mov r0, #0
	str r0, [r7, #0]
	cmp r5, #0
	mov r0, r4
	beq _020C186C
	bl sub_020C3DD8
	b _020C1870
_020C186C:
	bl sub_020C3DAC
_020C1870:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C1804

	arm_func_start sub_020C1878
sub_020C1878: ; 0x020C1878
	ldr ip, _020C1884 ; =sub_020C1804
	mov r3, #0
	bx ip
	; .align 2, 0
_020C1884: .word sub_020C1804
	arm_func_end sub_020C1878

	arm_func_start sub_020C1888
sub_020C1888: ; 0x020C1888
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r6, r3
	mov sb, r0
	mov r8, r1
	mov r7, r2
	beq _020C18A8
	bl sub_020C3DC4
	b _020C18AC
_020C18A8:
	bl sub_020C3D98
_020C18AC:
	mov r5, r0
	mov r0, sb
	mov r1, r8
	bl sub_020C4F40
	movs r4, r0
	bne _020C18D4
	cmp r7, #0
	beq _020C18D0
	blx r7
_020C18D0:
	strh sb, [r8, #4]
_020C18D4:
	cmp r6, #0
	mov r0, r5
	beq _020C18E8
	bl sub_020C3DD8
	b _020C18EC
_020C18E8:
	bl sub_020C3DAC
_020C18EC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020C1888

	arm_func_start sub_020C18F4
sub_020C18F4: ; 0x020C18F4
	ldr ip, _020C1908 ; =sub_020C17A8
	ldr r1, _020C190C ; =0x027FFFE8
	ldr r2, _020C1910 ; =sub_020C1960
	mov r3, #1
	bx ip
	; .align 2, 0
_020C1908: .word sub_020C17A8
_020C190C: .word 0x027FFFE8
_020C1910: .word sub_020C1960
	arm_func_end sub_020C18F4

	arm_func_start sub_020C1914
sub_020C1914: ; 0x020C1914
	ldr ip, _020C1928 ; =sub_020C1804
	ldr r1, _020C192C ; =0x027FFFE8
	ldr r2, _020C1930 ; =sub_020C1978
	mov r3, #1
	bx ip
	; .align 2, 0
_020C1928: .word sub_020C1804
_020C192C: .word 0x027FFFE8
_020C1930: .word sub_020C1978
	arm_func_end sub_020C1914

	arm_func_start sub_020C1934
sub_020C1934: ; 0x020C1934
	ldr r1, _020C193C ; =sub_020C1914
	bx r1
	; .align 2, 0
_020C193C: .word sub_020C1914
	arm_func_end sub_020C1934

	arm_func_start sub_020C1940
sub_020C1940: ; 0x020C1940
	ldr ip, _020C1954 ; =sub_020C1888
	ldr r1, _020C1958 ; =0x027FFFE8
	ldr r2, _020C195C ; =sub_020C1960
	mov r3, #1
	bx ip
	; .align 2, 0
_020C1954: .word sub_020C1888
_020C1958: .word 0x027FFFE8
_020C195C: .word sub_020C1960
	arm_func_end sub_020C1940

	arm_func_start sub_020C1960
sub_020C1960: ; 0x020C1960
	ldr r1, _020C1974 ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C1974: .word 0x04000204
	arm_func_end sub_020C1960

	arm_func_start sub_020C1978
sub_020C1978: ; 0x020C1978
	ldr r1, _020C198C ; =0x04000204
	ldrh r0, [r1]
	orr r0, r0, #0x80
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C198C: .word 0x04000204
	arm_func_end sub_020C1978

	arm_func_start sub_020C1990
sub_020C1990: ; 0x020C1990
	ldr ip, _020C19A0 ; =sub_020C17F4
	ldr r1, _020C19A4 ; =0x027FFFE0
	ldr r2, _020C19A8 ; =sub_020C19C8
	bx ip
	; .align 2, 0
_020C19A0: .word sub_020C17F4
_020C19A4: .word 0x027FFFE0
_020C19A8: .word sub_020C19C8
	arm_func_end sub_020C1990

	arm_func_start sub_020C19AC
sub_020C19AC: ; 0x020C19AC
	ldr ip, _020C19BC ; =sub_020C1878
	ldr r1, _020C19C0 ; =0x027FFFE0
	ldr r2, _020C19C4 ; =sub_020C19E0
	bx ip
	; .align 2, 0
_020C19BC: .word sub_020C1878
_020C19C0: .word 0x027FFFE0
_020C19C4: .word sub_020C19E0
	arm_func_end sub_020C19AC

	arm_func_start sub_020C19C8
sub_020C19C8: ; 0x020C19C8
	ldr r1, _020C19DC ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x800
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C19DC: .word 0x04000204
	arm_func_end sub_020C19C8

	arm_func_start sub_020C19E0
sub_020C19E0: ; 0x020C19E0
	ldr r1, _020C19F4 ; =0x04000204
	ldrh r0, [r1]
	orr r0, r0, #0x800
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C19F4: .word 0x04000204
	arm_func_end sub_020C19E0

	arm_func_start sub_020C19F8
sub_020C19F8: ; 0x020C19F8
	ldrh r0, [r0, #4]
	bx lr
	arm_func_end sub_020C19F8

	arm_func_start sub_020C1A00
sub_020C1A00: ; 0x020C1A00
	ldr r3, _020C1A60 ; =0x027FFFB0
	ldr r1, [r3, #0]
	clz r2, r1
	cmp r2, #0x20
	bne _020C1A18
	b _020C1A1C
_020C1A18:
	mov r0, #0x40
_020C1A1C:
	bne _020C1A44
	add r3, r3, #4
	ldr r1, [r3, #0]
	clz r2, r1
	cmp r2, #0x20
	ldr r0, _020C1A64 ; =0xFFFFFFFD
	beq _020C1A3C
	b _020C1A40
_020C1A3C:
	bx lr
_020C1A40:
	mov r0, #0x60
_020C1A44:
	add r0, r0, r2
	mov r1, #-0x80000000
	mov r1, r1, lsr r2
	ldr r2, [r3, #0]
	bic r2, r2, r1
	str r2, [r3, #0]
	bx lr
	; .align 2, 0
_020C1A60: .word 0x027FFFB0
_020C1A64: .word 0xFFFFFFFD
	arm_func_end sub_020C1A00

	arm_func_start sub_020C1A68
sub_020C1A68: ; 0x020C1A68
	ldr r3, _020C1AAC ; =0x027FFFB0
	cmp r0, #0x60
	bpl _020C1A78
	b _020C1A7C
_020C1A78:
	add r3, r3, #4
_020C1A7C:
	bpl _020C1A84
	b _020C1A88
_020C1A84:
	sub r0, r0, #0x60
_020C1A88:
	bmi _020C1A90
	b _020C1A94
_020C1A90:
	sub r0, r0, #0x40
_020C1A94:
	mov r1, #-0x80000000
	mov r1, r1, lsr r0
	ldr r2, [r3, #0]
	orr r2, r2, r1
	str r2, [r3, #0]
	bx lr
	; .align 2, 0
_020C1AAC: .word 0x027FFFB0
	arm_func_end sub_020C1A68

	.bss


	.global Unk_021CCC58
Unk_021CCC58: ; 0x021CCC58
	.space 0x4

