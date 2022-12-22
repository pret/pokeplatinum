	.include "macros/function.inc"
	.include "include/ov100_021D2F0C.inc"

	

	.text


	thumb_func_start ov100_021D2F0C
ov100_021D2F0C: ; 0x021D2F0C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6f
	add r4, r1, #0
	str r0, [sp, #0xc]
	mov r0, #0xc
	mov r1, #0xa
	add r2, r5, #0
	mov r3, #4
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	mov r0, #0xc
	mov r1, #0xb
	add r2, r5, #0
	mov r3, #4
	bl sub_02006E60
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x6f
	bl sub_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D2F0C

	thumb_func_start ov100_021D2F64
ov100_021D2F64: ; 0x021D2F64
	push {r4, lr}
	sub sp, #8
	ldr r2, _021D3064 ; =0x00001D28
	add r4, r0, #0
	ldr r2, [r4, r2]
	mov r0, #0x25
	lsl r0, r0, #6
	ldr r2, [r2, #0]
	add r0, r4, r0
	mov r1, #0x54
	bl ov100_021D4AC8
	ldr r0, _021D3064 ; =0x00001D28
	mov r1, #0x25
	ldr r3, [r4, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r4, r1
	mov r2, #0x52
	bl ov100_021D4B4C
	ldr r0, _021D3064 ; =0x00001D28
	mov r1, #0x25
	ldr r3, [r4, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r4, r1
	mov r2, #0x53
	bl ov100_021D4B4C
	mov r0, #0x25
	lsl r0, r0, #6
	ldr r1, _021D3068 ; =0xFFFD0000
	ldr r2, _021D306C ; =0xFFFFB000
	ldr r3, _021D3070 ; =0xFFFBA000
	add r0, r4, r0
	bl sub_02017350
	mov r1, #0xaa
	mov r0, #0
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r3, _021D3064 ; =0x00001D28
	mov r0, #0x25
	ldr r3, [r4, r3]
	lsl r0, r0, #6
	add r1, #0x28
	ldr r3, [r3, #0]
	add r0, r4, r0
	add r1, r4, r1
	mov r2, #0x54
	bl ov100_021D4B10
	ldr r0, _021D3064 ; =0x00001D28
	ldr r2, _021D3074 ; =0x00000AC8
	ldr r1, [r4, r0]
	add r2, r4, r2
	ldr r0, [r1, #0]
	add r1, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #0x25
	lsl r1, r1, #6
	mov r0, #0
	add r1, r4, r1
	mov r3, #0x52
	bl ov100_021D4BA0
	ldr r0, _021D3064 ; =0x00001D28
	ldr r2, _021D3074 ; =0x00000AC8
	ldr r1, [r4, r0]
	add r2, r4, r2
	ldr r0, [r1, #0]
	add r1, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #0x25
	lsl r1, r1, #6
	mov r0, #1
	add r1, r4, r1
	mov r3, #0x53
	bl ov100_021D4BA0
	ldr r0, _021D3074 ; =0x00000AC8
	mov r1, #3
	ldr r2, _021D306C ; =0xFFFFB000
	ldr r3, _021D3070 ; =0xFFFBA000
	add r0, r4, r0
	lsl r1, r1, #0x10
	bl sub_02017350
	ldr r1, _021D3078 ; =0x00000C28
	mov r0, #0
	str r0, [r4, r1]
	mov r0, #0xa9
	ldr r2, _021D307C ; =0x0000019A
	lsl r0, r0, #4
	str r2, [r4, r0]
	sub r1, #0x10
	str r2, [r4, r1]
	ldr r1, [r4, r0]
	mov r0, #0x25
	lsl r0, r0, #6
	mov r2, #1
	add r0, r4, r0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	ldr r0, _021D3080 ; =0x00000C18
	mov r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3074 ; =0x00000AC8
	lsl r2, r2, #0xc
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201736C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D3064: .word 0x00001D28
_021D3068: .word 0xFFFD0000
_021D306C: .word 0xFFFFB000
_021D3070: .word 0xFFFBA000
_021D3074: .word 0x00000AC8
_021D3078: .word 0x00000C28
_021D307C: .word 0x0000019A
_021D3080: .word 0x00000C18
	thumb_func_end ov100_021D2F64

	thumb_func_start ov100_021D3084
ov100_021D3084: ; 0x021D3084
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021D33B8 ; =0x00001D28
	add r5, r0, #0
	ldr r2, [r5, r2]
	mov r1, #0x2e
	ldr r2, [r2, #0]
	add r0, #0x10
	bl ov100_021D4AC8
	ldr r2, _021D33B8 ; =0x00001D28
	mov r0, #0x32
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x18
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	mov r1, #0x32
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x16
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	mov r1, #0x32
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x17
	bl ov100_021D4B4C
	ldr r2, _021D33B8 ; =0x00001D28
	ldr r0, _021D33BC ; =0x000010E8
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x4f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33BC ; =0x000010E8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x4d
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33BC ; =0x000010E8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x4e
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33BC ; =0x000010E8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #2
	mov r2, #0x50
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33BC ; =0x000010E8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #3
	mov r2, #0x51
	bl ov100_021D4B4C
	ldr r0, _021D33BC ; =0x000010E8
	ldr r1, _021D33C0 ; =0xFFFD0000
	ldr r2, _021D33C4 ; =0xFFFF6000
	ldr r3, _021D33C8 ; =0xFFFBA000
	add r0, r5, r0
	bl sub_02017350
	ldr r1, _021D33CC ; =0x00001248
	mov r2, #0
	add r0, r1, #0
	str r2, [r5, r1]
	add r0, #0x10
	str r2, [r5, r0]
	ldr r2, _021D33B8 ; =0x00001D28
	add r1, #0x28
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0x4f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33D0 ; =0x00001270
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x4d
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33D0 ; =0x00001270
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x4e
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33D0 ; =0x00001270
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #2
	mov r2, #0x50
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33D0 ; =0x00001270
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #3
	mov r2, #0x51
	bl ov100_021D4B4C
	ldr r0, _021D33D0 ; =0x00001270
	mov r1, #3
	ldr r2, _021D33C4 ; =0xFFFF6000
	ldr r3, _021D33C8 ; =0xFFFBA000
	add r0, r5, r0
	lsl r1, r1, #0x10
	bl sub_02017350
	mov r7, #0x62
	ldr r0, _021D33D4 ; =0x000013D0
	mov r6, #0
	str r6, [r5, r0]
	add r0, #0x10
	str r6, [r5, r0]
	ldr r0, _021D33D8 ; =0x00001708
	lsl r7, r7, #2
	add r4, r5, r0
_021D31F8:
	ldr r2, _021D33B8 ; =0x00001D28
	add r0, r4, #0
	ldr r2, [r5, r2]
	mov r1, #0x41
	ldr r2, [r2, #0]
	bl ov100_021D4AC8
	ldr r1, _021D33DC ; =0x00001333
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #4
	blt _021D31F8
	ldr r2, _021D33B8 ; =0x00001D28
	mov r0, #0x63
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x42
	bl ov100_021D4AC8
	mov r0, #0x63
	ldr r1, _021D33E0 ; =0xFFFCE000
	lsl r0, r0, #4
	add r0, r5, r0
	mov r2, #0
	add r3, r1, #0
	bl sub_02017350
	ldr r0, _021D33B8 ; =0x00001D28
	mov r1, #0x63
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x43
	bl ov100_021D4B4C
	mov r1, #0x79
	lsl r1, r1, #4
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x70
	sub r1, #0xc
	str r0, [r5, r1]
	mov r0, #0x63
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D33D8 ; =0x00001708
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r2, _021D33B8 ; =0x00001D28
	ldr r0, _021D33E4 ; =0x000007B8
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x44
	bl ov100_021D4AC8
	ldr r0, _021D33E4 ; =0x000007B8
	mov r1, #0x32
	ldr r3, _021D33E0 ; =0xFFFCE000
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02017350
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33E4 ; =0x000007B8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x45
	bl ov100_021D4B4C
	ldr r1, _021D33E8 ; =0x00000918
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	lsl r0, r2, #0xb
	sub r1, #0xc
	str r0, [r5, r1]
	ldr r0, _021D33E4 ; =0x000007B8
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D33EC ; =0x00001890
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D33F0 ; =0x00001D2C
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	bl sub_02025F30
	cmp r0, #1
	ldr r0, _021D33F4 ; =0x000013F8
	ldr r2, _021D33B8 ; =0x00001D28
	beq _021D3316
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x3d
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33F4 ; =0x000013F8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x3e
	bl ov100_021D4B4C
	b _021D333A
_021D3316:
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x3f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33F4 ; =0x000013F8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x40
	bl ov100_021D4B4C
_021D333A:
	ldr r0, _021D33F4 ; =0x000013F8
	mov r1, #1
	mov r3, #0x23
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_02017350
	mov r0, #1
	ldr r1, _021D33F8 ; =0x0000155C
	lsl r2, r0, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #2
	sub r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D33B8 ; =0x00001D28
	add r1, #0x24
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0xd
	bl ov100_021D4AC8
	mov r0, #0x56
	lsl r0, r0, #6
	mov r1, #1
	mov r3, #0xf
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_02017350
	ldr r0, _021D33B8 ; =0x00001D28
	mov r1, #0x56
	ldr r3, [r5, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0xe
	bl ov100_021D4B4C
	mov r0, #1
	ldr r1, _021D33FC ; =0x000016E4
	lsl r2, r0, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r5, r0]
	mov r0, #2
	sub r1, #0xc
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D33B8: .word 0x00001D28
_021D33BC: .word 0x000010E8
_021D33C0: .word 0xFFFD0000
_021D33C4: .word 0xFFFF6000
_021D33C8: .word 0xFFFBA000
_021D33CC: .word 0x00001248
_021D33D0: .word 0x00001270
_021D33D4: .word 0x000013D0
_021D33D8: .word 0x00001708
_021D33DC: .word 0x00001333
_021D33E0: .word 0xFFFCE000
_021D33E4: .word 0x000007B8
_021D33E8: .word 0x00000918
_021D33EC: .word 0x00001890
_021D33F0: .word 0x00001D2C
_021D33F4: .word 0x000013F8
_021D33F8: .word 0x0000155C
_021D33FC: .word 0x000016E4
	thumb_func_end ov100_021D3084

	thumb_func_start ov100_021D3400
ov100_021D3400: ; 0x021D3400
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D34AC ; =0x00001D28
	add r5, r0, #0
	ldr r1, [r5, r1]
	add r0, #0x10
	add r1, #0x1c
	mov r2, #0
	bl ov100_021D4AA4
	ldr r0, _021D34B0 ; =0x00001708
	mov r7, #0x62
	mov r6, #0
	add r4, r5, r0
	lsl r7, r7, #2
_021D341C:
	ldr r1, _021D34AC ; =0x00001D28
	add r0, r4, #0
	ldr r1, [r5, r1]
	mov r2, #0
	add r1, #0x1c
	bl ov100_021D4AA4
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #4
	blt _021D341C
	ldr r1, _021D34AC ; =0x00001D28
	mov r0, #0x32
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	mov r0, #0x63
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	ldr r0, _021D34B4 ; =0x000007B8
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	mov r0, #0x25
	ldr r1, [r5, r1]
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	ldr r0, _021D34B8 ; =0x00000AC8
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	ldr r0, _021D34BC ; =0x000013F8
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	mov r0, #0x56
	ldr r1, [r5, r1]
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D34AC: .word 0x00001D28
_021D34B0: .word 0x00001708
_021D34B4: .word 0x000007B8
_021D34B8: .word 0x00000AC8
_021D34BC: .word 0x000013F8
	thumb_func_end ov100_021D3400

	thumb_func_start ov100_021D34C0
ov100_021D34C0: ; 0x021D34C0
	push {r4, lr}
	ldr r1, _021D34F0 ; =0x00001D28
	add r4, r0, #0
	ldr r0, _021D34F4 ; =0x000010E8
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #4
	bl ov100_021D4AA4
	ldr r1, _021D34F0 ; =0x00001D28
	ldr r0, _021D34F8 ; =0x00001270
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #4
	bl ov100_021D4AA4
	ldr r0, _021D34FC ; =0x0000125C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _021D3500 ; =0x000013E4
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D34F0: .word 0x00001D28
_021D34F4: .word 0x000010E8
_021D34F8: .word 0x00001270
_021D34FC: .word 0x0000125C
_021D3500: .word 0x000013E4
	thumb_func_end ov100_021D34C0

	thumb_func_start ov100_021D3504
ov100_021D3504: ; 0x021D3504
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D354C ; =0x021D52A8
	add r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r1, _021D3550 ; =0x0013C805
	ldr r3, _021D3554 ; =0x00000C01
	str r4, [sp, #8]
	bl sub_020206D0
	add r0, r4, #0
	bl sub_020203D4
	mov r0, #0xa
	mov r1, #0x3f
	lsl r0, r0, #0xc
	lsl r1, r1, #0x10
	add r2, r4, #0
	bl sub_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D354C: .word 0x021D52A8
_021D3550: .word 0x0013C805
_021D3554: .word 0x00000C01
	thumb_func_end ov100_021D3504

	thumb_func_start ov100_021D3558
ov100_021D3558: ; 0x021D3558
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r0, _021D35F8 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	ldr r0, _021D35F8 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4844
	add r0, r4, #0
	add r0, #0x10
	bl ov100_021D49B4
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x63
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D35FC ; =0x000007B8
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3600 ; =0x000010E8
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3604 ; =0x00001270
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x25
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3608 ; =0x00000AC8
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D360C ; =0x000013F8
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x56
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3610 ; =0x00001708
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3614 ; =0x00001890
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3618 ; =0x00001A18
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D361C ; =0x00001BA0
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	pop {r4, pc}
	nop
_021D35F8: .word 0x00001D28
_021D35FC: .word 0x000007B8
_021D3600: .word 0x000010E8
_021D3604: .word 0x00001270
_021D3608: .word 0x00000AC8
_021D360C: .word 0x000013F8
_021D3610: .word 0x00001708
_021D3614: .word 0x00001890
_021D3618: .word 0x00001A18
_021D361C: .word 0x00001BA0
	thumb_func_end ov100_021D3558

	thumb_func_start ov100_021D3620
ov100_021D3620: ; 0x021D3620
	push {r3, r4, r5, lr}
	ldr r1, _021D36B0 ; =0x00001D60
	add r5, r0, #0
	mov r0, #0x6f
	bl sub_02018144
	ldr r2, _021D36B0 ; =0x00001D60
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r1, r5, #0
	ldr r0, _021D36B4 ; =0x00001D28
	add r1, #0xc
	str r1, [r4, r0]
	add r5, #0xd0
	ldr r1, [r5, #0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov100_021D3084
	ldr r0, _021D36B4 ; =0x00001D28
	ldr r1, [r4, r0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl ov100_021D2F0C
	mov r0, #8
	str r0, [sp]
	ldr r0, _021D36B8 ; =0x04000050
	mov r1, #4
	mov r2, #0x32
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D36BC ; =0x04001050
	mov r1, #3
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	ldr r2, _021D36C0 ; =0x04000060
	ldr r0, _021D36C4 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021D36C8 ; =0x021D52B0
	bl G3X_SetEdgeColorTable
	ldr r0, _021D36B4 ; =0x00001D28
	mov r2, #0x22
	ldr r1, [r4, r0]
	lsl r2, r2, #0xc
	str r2, [r1, #0x4c]
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	add r1, #0x44
	bl ov100_021D3504
	mov r1, #0
	mov r0, #0x3f
	add r2, r1, #0
	bl sub_02004550
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D36B0: .word 0x00001D60
_021D36B4: .word 0x00001D28
_021D36B8: .word 0x04000050
_021D36BC: .word 0x04001050
_021D36C0: .word 0x04000060
_021D36C4: .word 0xFFFFCFFF
_021D36C8: .word 0x021D52B0
	thumb_func_end ov100_021D3620

	thumb_func_start ov100_021D36CC
ov100_021D36CC: ; 0x021D36CC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D36DC
	cmp r1, #1
	beq _021D377E
	b _021D379C
_021D36DC:
	ldr r0, [r4, #0x10]
	mov r1, #2
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	cmp r0, #0
	ldr r0, [r4, #0]
	beq _021D3728
	cmp r0, #4
	beq _021D36F2
	cmp r0, #6
	bne _021D36FC
_021D36F2:
	mov r1, #2
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x18]
	b _021D3760
_021D36FC:
	cmp r0, #5
	bne _021D3708
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xd
	str r1, [r0, #0x18]
	b _021D3760
_021D3708:
	cmp r0, #0xff
	bne _021D3716
	mov r1, #6
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x18]
	b _021D3760
_021D3716:
	cmp r0, #7
	bne _021D3760
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x18]
	ldr r0, [r4, #0x10]
	mov r1, #4
	str r1, [r0, #8]
	b _021D3760
_021D3728:
	cmp r0, #4
	beq _021D3730
	cmp r0, #6
	bne _021D3738
_021D3730:
	ldr r1, _021D37A4 ; =0xFFFFE000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3738:
	cmp r0, #5
	bne _021D3744
	ldr r1, _021D37A8 ; =0xFFFFC000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3744:
	cmp r0, #0xff
	bne _021D3750
	ldr r1, _021D37AC ; =0xFFFFA000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3750:
	cmp r0, #7
	bne _021D3760
	ldr r1, _021D37A4 ; =0xFFFFE000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	ldr r0, [r4, #0x10]
	mov r1, #4
	str r1, [r0, #8]
_021D3760:
	ldr r1, [r4, #8]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x20]
	ldr r0, [r4, #0x10]
	bl ov100_021D4890
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D377E:
	ldr r0, [r4, #0x10]
	bl ov100_021D4920
	cmp r0, #0
	beq _021D37A0
	ldr r0, [r4, #0]
	cmp r0, #8
	ldr r0, [r4, #4]
	bne _021D3796
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_021D3796:
	sub r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_021D379C:
	bl sub_0200DA58
_021D37A0:
	pop {r4, pc}
	nop
_021D37A4: .word 0xFFFFE000
_021D37A8: .word 0xFFFFC000
_021D37AC: .word 0xFFFFA000
	thumb_func_end ov100_021D36CC

	thumb_func_start ov100_021D37B0
ov100_021D37B0: ; 0x021D37B0
	push {r4, lr}
	ldr r2, _021D37EC ; =0x00001D28
	add r1, r0, #0
	ldr r3, [r1, r2]
	mov r0, #0
	str r0, [r3, #0x64]
	ldr r3, [r1, r2]
	str r0, [r3, #0x68]
	ldr r3, [r1, r2]
	str r0, [r3, #0x6c]
	ldr r4, [r1, r2]
	add r3, r4, #0
	add r3, #0x44
	str r3, [r4, #0x5c]
	ldr r4, [r1, r2]
	add r3, r4, #0
	add r3, #0x58
	add r4, #0xbc
	str r3, [r4, #0]
	ldr r3, [r1, r2]
	add r3, #0xac
	str r0, [r3, #0]
	ldr r1, [r1, r2]
	mov r2, #1
	ldr r0, _021D37F0 ; =ov100_021D36CC
	add r1, #0xac
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_021D37EC: .word 0x00001D28
_021D37F0: .word ov100_021D36CC
	thumb_func_end ov100_021D37B0

	thumb_func_start ov100_021D37F4
ov100_021D37F4: ; 0x021D37F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r6, _021D3984 ; =0x021D52C0
	add r3, sp, #8
	add r2, r0, #0
	add r5, r1, #0
	ldmia r6!, {r0, r1}
	add r4, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D381E
	cmp r0, #1
	beq _021D38C4
	b _021D3978
_021D381E:
	ldr r0, [r5, #4]
	mov r1, #0
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	bl _f_fgt
	ldr r0, _021D3988 ; =0x45800000
	bls _021D3840
	ldr r1, [r4, r6]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D384E
_021D3840:
	ldr r1, [r4, r6]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D384E:
	bl _f_ftoi
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x10]
	add r3, r2, #0
	bl sub_0201736C
	ldr r0, [r5, #4]
	add r6, sp, #8
	lsl r4, r0, #2
	ldr r0, [r6, r4]
	mov r1, #0
	bl _f_fgt
	ldr r0, _021D3988 ; =0x45800000
	bls _021D3884
	ldr r1, [r6, r4]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D3892
_021D3884:
	ldr r1, [r6, r4]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D3892:
	bl _f_ftoi
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x14]
	add r3, r2, #0
	bl sub_0201736C
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	bl sub_02017348
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_02017348
	ldr r0, [r5, #0]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, pc}
_021D38C4:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #7
	blo _021D38F0
	mov r0, #0x6f
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [r5, #8]
	mov r2, #0xc
	lsl r1, r1, #0x10
	ldrsh r2, [r5, r2]
	lsr r1, r1, #0x10
	mov r3, #0x50
	bl sub_020059D0
	ldr r0, [r5, #0]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, pc}
_021D38F0:
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	mov r1, #0
	bl _f_fgt
	ldr r0, _021D3988 ; =0x45800000
	bls _021D3910
	ldr r1, [r4, r6]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D391E
_021D3910:
	ldr r1, [r4, r6]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D391E:
	bl _f_ftoi
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x10]
	add r3, r2, #0
	bl sub_0201736C
	ldr r0, [r5, #4]
	add r6, sp, #8
	lsl r4, r0, #2
	ldr r0, [r6, r4]
	mov r1, #0
	bl _f_fgt
	ldr r0, _021D3988 ; =0x45800000
	bls _021D3954
	ldr r1, [r6, r4]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D3962
_021D3954:
	ldr r1, [r6, r4]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D3962:
	bl _f_ftoi
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x14]
	add r3, r2, #0
	bl sub_0201736C
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_021D3978:
	add r0, r2, #0
	bl sub_0200DA58
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021D3984: .word 0x021D52C0
_021D3988: .word 0x45800000
	thumb_func_end ov100_021D37F4

	thumb_func_start ov100_021D398C
ov100_021D398C: ; 0x021D398C
	push {r4, r5, r6, lr}
	ldr r3, _021D39D8 ; =0x00001D30
	add r6, r1, #0
	add r4, r0, r3
	mov r3, #0x18
	mul r6, r3
	mov r3, #0
	add r5, r4, r6
	str r3, [r4, r6]
	str r3, [r5, #4]
	str r2, [r5, #8]
	mov r2, #0x62
	mov r4, #0x63
	lsl r2, r2, #2
	lsl r4, r4, #4
	mul r2, r1
	add r4, r0, r4
	add r4, r4, r2
	str r4, [r5, #0x10]
	ldr r4, _021D39DC ; =0x00001708
	add r0, r0, r4
	add r0, r0, r2
	str r0, [r5, #0x14]
	cmp r1, #0
	bne _021D39C4
	sub r3, #0x50
	strh r3, [r5, #0xc]
	b _021D39C8
_021D39C4:
	mov r0, #0x50
	strh r0, [r5, #0xc]
_021D39C8:
	mov r2, #1
	ldr r0, _021D39E0 ; =ov100_021D37F4
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_021D39D8: .word 0x00001D30
_021D39DC: .word 0x00001708
_021D39E0: .word ov100_021D37F4
	thumb_func_end ov100_021D398C

	thumb_func_start ov100_021D39E4
ov100_021D39E4: ; 0x021D39E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0x11
	bls _021D39F2
	b _021D3EEC
_021D39F2:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D39FE: ; jump table
	.short _021D3A22 - _021D39FE - 2 ; case 0
	.short _021D3A30 - _021D39FE - 2 ; case 1
	.short _021D3A70 - _021D39FE - 2 ; case 2
	.short _021D3A98 - _021D39FE - 2 ; case 3
	.short _021D3AC6 - _021D39FE - 2 ; case 4
	.short _021D3B14 - _021D39FE - 2 ; case 5
	.short _021D3B3C - _021D39FE - 2 ; case 6
	.short _021D3C28 - _021D39FE - 2 ; case 7
	.short _021D3C58 - _021D39FE - 2 ; case 8
	.short _021D3C70 - _021D39FE - 2 ; case 9
	.short _021D3CCC - _021D39FE - 2 ; case 10
	.short _021D3D20 - _021D39FE - 2 ; case 11
	.short _021D3D8E - _021D39FE - 2 ; case 12
	.short _021D3DD2 - _021D39FE - 2 ; case 13
	.short _021D3E2A - _021D39FE - 2 ; case 14
	.short _021D3E5A - _021D39FE - 2 ; case 15
	.short _021D3ECA - _021D39FE - 2 ; case 16
	.short _021D3EE2 - _021D39FE - 2 ; case 17
_021D3A22:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D3B1E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D3A30:
	ldr r1, _021D3D40 ; =0x00001D28
	mov r0, #0
	ldr r2, [r4, r1]
	mov r3, #0x3c
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, _021D3D44 ; =0xFFFD2000
	ldr r0, [r4, r1]
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	add r0, r2, #0
	add r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	add r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D3A70:
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	add r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	beq _021D3B1E
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	ldr r1, _021D3D40 ; =0x00001D28
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xe
	bl ov100_021D46C8
	b _021D3EEC
_021D3A98:
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D3B1E
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D3D40 ; =0x00001D28
	mov r2, #0x10
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D3AC6:
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D3B1E
	ldr r5, _021D3D48 ; =0x021D52DC
	add r3, sp, #0x18
	mov r2, #5
_021D3ADE:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D3ADE
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, sp, #0x18
	bl ov100_021D4EBC
	ldr r1, _021D3D40 ; =0x00001D28
	ldr r1, [r4, r1]
	str r0, [r1, #0x54]
	add r0, r4, #0
	bl ov100_021D37B0
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D3D4C ; =0x00001248
	mov r1, #1
	str r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D3B14:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	bge _021D3B20
_021D3B1E:
	b _021D3EEC
_021D3B20:
	ldr r0, _021D3D40 ; =0x00001D28
	mov r1, #4
	ldr r0, [r4, r0]
	add r0, #0xac
	str r1, [r0, #0]
	ldr r0, _021D3D50 ; =0x000013D0
	mov r1, #1
	str r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3B3C:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x50
	bne _021D3B50
	mov r1, #0x45
	ldr r0, _021D3D54 ; =0x000006D2
	mvn r1, r1
	bl sub_02005728
_021D3B50:
	ldr r0, [r4, #4]
	cmp r0, #0x87
	bne _021D3B5E
	ldr r0, _021D3D54 ; =0x000006D2
	mov r1, #0x46
	bl sub_02005728
_021D3B5E:
	ldr r2, [r4, #4]
	ldr r1, _021D3D58 ; =0x00000136
	cmp r2, r1
	beq _021D3B74
	add r0, r1, #0
	add r0, #0x41
	cmp r2, r0
	beq _021D3B74
	add r1, #0x7a
	cmp r2, r1
	bne _021D3B7A
_021D3B74:
	ldr r0, _021D3D5C ; =0x000006D4
	bl sub_02005748
_021D3B7A:
	mov r1, #0x47
	ldr r2, [r4, #4]
	lsl r1, r1, #2
	cmp r2, r1
	beq _021D3B92
	add r0, r1, #0
	add r0, #0x36
	cmp r2, r0
	beq _021D3B92
	add r1, #0x7a
	cmp r2, r1
	bne _021D3B98
_021D3B92:
	ldr r0, _021D3D60 ; =0x000006D5
	bl sub_02005748
_021D3B98:
	ldr r0, [r4, #4]
	cmp r0, #0xa5
	bne _021D3BA8
	mov r1, #0x45
	ldr r0, _021D3D64 ; =0x000006D3
	mvn r1, r1
	bl sub_02005728
_021D3BA8:
	ldr r0, [r4, #4]
	cmp r0, #0xdc
	bne _021D3BB6
	ldr r0, _021D3D64 ; =0x000006D3
	mov r1, #0x46
	bl sub_02005728
_021D3BB6:
	ldr r1, [r4, #4]
	ldr r0, _021D3D68 ; =0x000001D6
	cmp r1, r0
	bne _021D3BC8
	mov r1, #0x45
	ldr r0, _021D3D6C ; =0x000006D6
	mvn r1, r1
	bl sub_02005728
_021D3BC8:
	mov r0, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	cmp r1, r0
	bne _021D3BDA
	ldr r0, _021D3D6C ; =0x000006D6
	mov r1, #0x46
	bl sub_02005728
_021D3BDA:
	ldr r0, [r4, #4]
	cmp r0, #0x78
	bne _021D3BEA
	ldr r0, _021D3D40 ; =0x00001D28
	mov r1, #5
	ldr r0, [r4, r0]
	add r0, #0xac
	str r1, [r0, #0]
_021D3BEA:
	ldr r0, [r4, #4]
	cmp r0, #0xd2
	bne _021D3BFA
	ldr r0, _021D3D40 ; =0x00001D28
	mov r1, #0xff
	ldr r0, [r4, r0]
	add r0, #0xac
	str r1, [r0, #0]
_021D3BFA:
	ldr r0, _021D3D4C ; =0x00001248
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D3C62
	ldr r0, _021D3D40 ; =0x00001D28
	mov r1, #6
	ldr r0, [r4, r0]
	ldr r2, _021D3D70 ; =0x000001E3
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	bl ov100_021D398C
	mov r1, #0x45
	ldr r0, _021D3D74 ; =0x000006D7
	mvn r1, r1
	bl sub_02005728
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3C28:
	ldr r1, _021D3D50 ; =0x000013D0
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021D3C62
	ldr r1, _021D3D40 ; =0x00001D28
	mov r2, #7
	ldr r1, [r4, r1]
	add r1, #0xac
	str r2, [r1, #0]
	mov r2, #0x79
	mov r1, #1
	lsl r2, r2, #2
	bl ov100_021D398C
	ldr r0, _021D3D74 ; =0x000006D7
	mov r1, #0x46
	bl sub_02005728
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D3EEC
_021D3C58:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	bge _021D3C64
_021D3C62:
	b _021D3EEC
_021D3C64:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3C70:
	ldr r3, _021D3D40 ; =0x00001D28
	mov r1, #8
	ldr r0, [r4, r3]
	add r0, #0xac
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	ldr r1, [r4, r3]
	cmp r0, #0
	bne _021D3CA4
	mov r2, #0x53
	ldrsb r0, [r1, r2]
	cmp r0, #8
	bge _021D3C9E
	add r0, r0, #1
	add r1, #0x53
	strb r0, [r1]
	ldr r3, [r4, r3]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r3, r2]
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	b _021D3EEC
_021D3C9E:
	mov r0, #1
	str r0, [r4, #8]
	b _021D3EEC
_021D3CA4:
	mov r2, #0x53
	ldrsb r0, [r1, r2]
	cmp r0, #0
	ble _021D3CC0
	sub r0, r0, #2
	add r1, #0x53
	strb r0, [r1]
	ldr r3, [r4, r3]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r3, r2]
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	b _021D3EEC
_021D3CC0:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	b _021D3EEC
_021D3CCC:
	ldr r0, [r4, #8]
	ldr r2, _021D3D40 ; =0x00001D28
	cmp r0, #0
	bne _021D3CF8
	ldr r1, [r4, r2]
	mov r3, #0x53
	ldrsb r0, [r1, r3]
	cmp r0, #0xc
	bge _021D3CF2
	add r0, r0, #1
	add r1, #0x53
	strb r0, [r1]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r2, r3]
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	b _021D3EEC
_021D3CF2:
	mov r0, #1
	str r0, [r4, #8]
	b _021D3EEC
_021D3CF8:
	ldr r5, [r4, r2]
	mov r3, #0x53
	ldrsb r0, [r5, r3]
	cmp r0, #0
	ble _021D3D16
	sub r0, r0, #2
	add r5, #0x53
	strb r0, [r5]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r2, r3]
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	b _021D3EEC
_021D3D16:
	add r0, r1, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	b _021D3EEC
_021D3D20:
	ldr r2, _021D3D40 ; =0x00001D28
	mov r3, #0x53
	ldr r5, [r4, r2]
	ldrsb r1, [r5, r3]
	cmp r1, #0x10
	bge _021D3D7C
	add r0, r1, #2
	add r5, #0x53
	strb r0, [r5]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r2, r3]
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	b _021D3EEC
	; .align 2, 0
_021D3D40: .word 0x00001D28
_021D3D44: .word 0xFFFD2000
_021D3D48: .word 0x021D52DC
_021D3D4C: .word 0x00001248
_021D3D50: .word 0x000013D0
_021D3D54: .word 0x000006D2
_021D3D58: .word 0x00000136
_021D3D5C: .word 0x000006D4
_021D3D60: .word 0x000006D5
_021D3D64: .word 0x000006D3
_021D3D68: .word 0x000001D6
_021D3D6C: .word 0x000006D6
_021D3D70: .word 0x000001E3
_021D3D74: .word 0x000006D7
_021D3D78: .word 0x04000050
_021D3D7C:
	bl ov100_021D34C0
	add r0, r4, #0
	bl ov100_021D2F64
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3D8E:
	ldr r2, _021D3F98 ; =0x00001D28
	mov r3, #0x53
	ldr r1, [r4, r2]
	ldrsb r0, [r1, r3]
	cmp r0, #0
	beq _021D3DAE
	sub r0, r0, #1
	add r1, #0x53
	strb r0, [r1]
	ldr r2, [r4, r2]
	ldr r0, _021D3F9C ; =0x04000050
	ldrsb r2, [r2, r3]
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	b _021D3EEC
_021D3DAE:
	mov r1, #0xaa
	lsl r1, r1, #4
	mov r2, #1
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #0xc
	str r2, [r4, r1]
	ldr r1, _021D3FA0 ; =0x00000C28
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #0xc
	str r2, [r4, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3DD2:
	mov r1, #0xa9
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	ldr r2, _021D3FA4 ; =0x00000CCD
	cmp r0, r2
	bge _021D3E14
	add r0, #0x52
	str r0, [r4, r1]
	add r0, r2, #0
	sub r0, #0xb5
	ldr r0, [r4, r0]
	sub r2, #0xb5
	add r0, #0x52
	str r0, [r4, r2]
	ldr r1, [r4, r1]
	mov r0, #0x25
	lsl r0, r0, #6
	mov r2, #1
	add r0, r4, r0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	ldr r0, _021D3FA8 ; =0x00000C18
	mov r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3FAC ; =0x00000AC8
	lsl r2, r2, #0xc
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201736C
	b _021D3EEC
_021D3E14:
	ldr r1, _021D3F98 ; =0x00001D28
	mov r2, #0x12
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3E2A:
	ldr r0, _021D3F98 ; =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D3EEC
	ldr r0, _021D3F98 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D3F98 ; =0x00001D28
	mov r2, #0x13
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3E5A:
	ldr r0, _021D3F98 ; =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D3EEC
	mov r1, #0xa9
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	ldr r0, _021D3FB0 ; =0x0000019A
	cmp r2, r0
	ble _021D3EAA
	ldr r0, _021D3FA8 ; =0x00000C18
	sub r2, #0x52
	str r2, [r4, r1]
	ldr r2, [r4, r0]
	sub r2, #0x52
	str r2, [r4, r0]
	ldr r1, [r4, r1]
	mov r0, #0x25
	lsl r0, r0, #6
	mov r2, #1
	add r0, r4, r0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	ldr r0, _021D3FA8 ; =0x00000C18
	mov r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3FAC ; =0x00000AC8
	lsl r2, r2, #0xc
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201736C
	b _021D3EEC
_021D3EAA:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3ECA:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D3EEC
	ldr r0, _021D3F98 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3EE2:
	mov r0, #0
	str r0, [r4, #0]
	add sp, #0x44
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021D3EEC:
	ldr r0, _021D3FB4 ; =0x00000684
	ldr r7, _021D3FB8 ; =0x000018E4
	add r3, r4, r0
	ldr r0, _021D3FBC ; =0x0000175C
	ldr r6, _021D3FC0 ; =0x00001A6C
	str r0, [sp, #0x14]
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D3FC4 ; =0x0000080C
	add r2, r4, r7
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D3FC8 ; =0x0000144C
	add r2, r4, r6
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	str r2, [sp, #0xc]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D3FCC ; =0x00001BF4
	str r0, [r2, #0]
	ldr r0, _021D3FD0 ; =0x000015D4
	add r5, r4, r0
	add r0, r4, r3
	str r0, [sp, #0x10]
	mov ip, r0
	ldr r2, [sp, #0x10]
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r5, #0]
	add r0, r2, #0
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	mov r1, #2
	add r0, #8
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	str r2, [sp, #0x10]
	sub r2, r0, r1
	ldr r0, [sp, #0x14]
	add r0, #8
	str r0, [sp, #0x14]
	str r2, [r4, r0]
	add r0, r7, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r7, #8
	sub r0, r0, r1
	str r0, [r4, r7]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r6, #8
	sub r0, r0, r1
	str r0, [r4, r6]
	add r0, r3, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r3, #8
	sub r0, r0, r1
	str r0, [r4, r3]
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #0]
	lsr r0, r1, #1
	sub r2, r2, r0
	ldr r0, [sp, #0xc]
	str r2, [r0, #0]
	mov r0, ip
	ldr r2, [r0, #0]
	lsr r0, r1, #1
	sub r1, r2, r0
	mov r0, ip
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov100_021D3558
	mov r0, #1
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021D3F98: .word 0x00001D28
_021D3F9C: .word 0x04000050
_021D3FA0: .word 0x00000C28
_021D3FA4: .word 0x00000CCD
_021D3FA8: .word 0x00000C18
_021D3FAC: .word 0x00000AC8
_021D3FB0: .word 0x0000019A
_021D3FB4: .word 0x00000684
_021D3FB8: .word 0x000018E4
_021D3FBC: .word 0x0000175C
_021D3FC0: .word 0x00001A6C
_021D3FC4: .word 0x0000080C
_021D3FC8: .word 0x0000144C
_021D3FCC: .word 0x00001BF4
_021D3FD0: .word 0x000015D4
	thumb_func_end ov100_021D39E4

	thumb_func_start ov100_021D3FD4
ov100_021D3FD4: ; 0x021D3FD4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _021D3FFA
	bl ov100_021D3400
	ldr r0, _021D4008 ; =0x00001D28
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0
	add r0, #0x54
	add r3, r1, #0
	bl ov100_021D4F0C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4002
_021D3FFA:
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_021D4002:
	mov r0, #1
	pop {r4, pc}
	nop
_021D4008: .word 0x00001D28
	thumb_func_end ov100_021D3FD4

	.rodata


	.global Unk_ov100_021D52A8
Unk_ov100_021D52A8: ; 0x021D52A8
	.incbin "incbin/overlay100_rodata.bin", 0x1D4, 0x1DC - 0x1D4

	.global Unk_ov100_021D52B0
Unk_ov100_021D52B0: ; 0x021D52B0
	.incbin "incbin/overlay100_rodata.bin", 0x1DC, 0x1EC - 0x1DC

	.global Unk_ov100_021D52C0
Unk_ov100_021D52C0: ; 0x021D52C0
	.incbin "incbin/overlay100_rodata.bin", 0x1EC, 0x208 - 0x1EC

	.global Unk_ov100_021D52DC
Unk_ov100_021D52DC: ; 0x021D52DC
	.incbin "incbin/overlay100_rodata.bin", 0x208, 0x234 - 0x208

	.global Unk_ov100_021D5308
Unk_ov100_021D5308: ; 0x021D5308
	.incbin "incbin/overlay100_rodata.bin", 0x234, 0x2C

