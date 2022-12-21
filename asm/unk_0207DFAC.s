	.include "macros/function.inc"
	.include "include/unk_0207DFAC.inc"

	

	.text


	thumb_func_start sub_0207DFAC
sub_0207DFAC: ; 0x0207DFAC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020388E8
	mov r1, #0x24
	ldrb r2, [r0, #0x1b]
	mul r1, r4
	add r0, r0, r1
	add r0, #0x3f
	ldrb r0, [r0]
	cmp r2, #0xc
	bne _0207DFCC
	cmp r0, #5
	bne _0207DFCC
	mov r0, #1
	pop {r4, pc}
_0207DFCC:
	cmp r2, #0xd
	bne _0207DFD8
	cmp r0, #6
	bne _0207DFD8
	mov r0, #1
	pop {r4, pc}
_0207DFD8:
	cmp r2, #0xe
	bne _0207DFE4
	cmp r0, #7
	bne _0207DFE4
	mov r0, #1
	pop {r4, pc}
_0207DFE4:
	cmp r2, #9
	bne _0207DFF0
	cmp r0, #2
	bne _0207DFF0
	mov r0, #1
	pop {r4, pc}
_0207DFF0:
	cmp r2, #0xa
	bne _0207DFFC
	cmp r0, #3
	bne _0207DFFC
	mov r0, #1
	pop {r4, pc}
_0207DFFC:
	cmp r2, #0xb
	bne _0207E008
	cmp r0, #4
	bne _0207E008
	mov r0, #1
	pop {r4, pc}
_0207E008:
	cmp r2, #0xf
	bne _0207E014
	cmp r0, #8
	bne _0207E014
	mov r0, #1
	pop {r4, pc}
_0207E014:
	cmp r2, #0x13
	bne _0207E020
	cmp r0, #0x12
	bne _0207E020
	mov r0, #1
	pop {r4, pc}
_0207E020:
	cmp r2, #0x15
	bne _0207E02C
	cmp r0, #0x14
	bne _0207E02C
	mov r0, #1
	pop {r4, pc}
_0207E02C:
	cmp r2, #0x17
	bne _0207E038
	cmp r0, #0x16
	bne _0207E038
	mov r0, #1
	pop {r4, pc}
_0207E038:
	cmp r2, #0x19
	bne _0207E044
	cmp r0, #0x18
	bne _0207E044
	mov r0, #1
	pop {r4, pc}
_0207E044:
	cmp r2, #0x1b
	bne _0207E050
	cmp r0, #0x1a
	bne _0207E050
	mov r0, #1
	pop {r4, pc}
_0207E050:
	cmp r2, #0x10
	bne _0207E05C
	cmp r0, #1
	bne _0207E05C
	mov r0, #1
	pop {r4, pc}
_0207E05C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0207DFAC