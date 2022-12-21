	.include "macros/function.inc"
	.include "include/unk_02046C7C.inc"

	

	.text


	thumb_func_start sub_02046C7C
sub_02046C7C: ; 0x02046C7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl sub_02094754
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046C7C

	thumb_func_start sub_02046CAC
sub_02046CAC: ; 0x02046CAC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [r4, #0x64]
	ldr r1, _02046CDC ; =sub_02046CE0
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02046CDC: .word sub_02046CE0
	thumb_func_end sub_02046CAC

	thumb_func_start sub_02046CE0
sub_02046CE0: ; 0x02046CE0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r1, [r4, #0x64]
	ldr r0, [r0, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0209476C
	pop {r4, pc}
	thumb_func_end sub_02046CE0

	thumb_func_start sub_02046CFC
sub_02046CFC: ; 0x02046CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #4
	bl sub_02025F04
	add r7, r0, #0
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	strb r1, [r0]
	ldr r1, [sp, #4]
	strb r1, [r0, #1]
	ldr r1, [sp, #0xc]
	strb r1, [r0, #2]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A954
	add r1, sp, #0x14
	strb r0, [r1, #3]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027474
	add r1, sp, #0x14
	strb r0, [r1, #4]
	strb r6, [r1, #5]
	ldr r0, [sp, #0x10]
	str r7, [sp, #0x20]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	str r4, [sp, #0x24]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r5, #0x80
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x30]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	str r0, [sp, #0x34]
	add r0, sp, #0x14
	bl sub_02093800
	ldr r1, [sp]
	str r0, [r1, #0]
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02046CFC

	thumb_func_start sub_02046E14
sub_02046E14: ; 0x02046E14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r5, #0x80
	ldr r3, [r5, #0]
	add r2, r0, #0
	ldr r1, [r3, #0xc]
	add r3, #0x9c
	ldr r0, [r4, #0]
	ldr r3, [r3, #0]
	bl sub_02094C44
	ldr r0, [r4, #0]
	bl sub_02093AD4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046E14

	thumb_func_start sub_02046E60
sub_02046E60: ; 0x02046E60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r6, #0]
	add r1, r7, #0
	bl sub_02094630
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02046E60

	thumb_func_start sub_02046EB4
sub_02046EB4: ; 0x02046EB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r6, #0]
	add r1, r7, #0
	bl sub_02094648
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02046EB4

	thumb_func_start sub_02046F08
sub_02046F08: ; 0x02046F08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r6, #0]
	add r1, r7, #0
	bl sub_02094680
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02046F08

	thumb_func_start sub_02046F5C
sub_02046F5C: ; 0x02046F5C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02046F5C

	thumb_func_start sub_02046FB8
sub_02046FB8: ; 0x02046FB8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_020943B0
	ldr r1, _02046FD8 ; =sub_02046FDC
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02046FD8: .word sub_02046FDC
	thumb_func_end sub_02046FB8

	thumb_func_start sub_02046FDC
sub_02046FDC: ; 0x02046FDC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_020944CC
	pop {r3, pc}
	thumb_func_end sub_02046FDC

	thumb_func_start sub_02046FF0
sub_02046FF0: ; 0x02046FF0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	ldr r1, [r1, #0]
	bl sub_020933F8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02046FF0

	thumb_func_start sub_0204700C
sub_0204700C: ; 0x0204700C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	bl sub_020946A4
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204700C

	thumb_func_start sub_02047048
sub_02047048: ; 0x02047048
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	bl sub_020946CC
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047048

	thumb_func_start sub_02047084
sub_02047084: ; 0x02047084
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	bl sub_020946F0
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047084

	thumb_func_start sub_020470C0
sub_020470C0: ; 0x020470C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094750
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020470C0

	thumb_func_start sub_020470F0
sub_020470F0: ; 0x020470F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	bl sub_02094720
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020470F0

	thumb_func_start sub_0204712C
sub_0204712C: ; 0x0204712C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094790
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204712C

	thumb_func_start sub_0204715C
sub_0204715C: ; 0x0204715C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_020947A4
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204715C

	thumb_func_start sub_0204718C
sub_0204718C: ; 0x0204718C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_020947C8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204718C

	thumb_func_start sub_020471BC
sub_020471BC: ; 0x020471BC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_020947D8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020471BC

	thumb_func_start sub_02047200
sub_02047200: ; 0x02047200
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_020947F0
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047200

	thumb_func_start sub_02047244
sub_02047244: ; 0x02047244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094804
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02047244

	thumb_func_start sub_02047274
sub_02047274: ; 0x02047274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02094828
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047274

	thumb_func_start sub_020472E8
sub_020472E8: ; 0x020472E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094868
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020472E8

	thumb_func_start sub_02047318
sub_02047318: ; 0x02047318
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r6, #0]
	mov r3, #0xb
	bl sub_02094898
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047318

	thumb_func_start sub_02047358
sub_02047358: ; 0x02047358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094904
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02047358

	thumb_func_start sub_02047388
sub_02047388: ; 0x02047388
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02094850
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02047388

	thumb_func_start sub_020473A0
sub_020473A0: ; 0x020473A0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02094860
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020473A0

	thumb_func_start sub_020473B8
sub_020473B8: ; 0x020473B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02094A58
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020473B8

	thumb_func_start sub_020473E4
sub_020473E4: ; 0x020473E4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r1, _02047400 ; =sub_02047404
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02047400: .word sub_02047404
	thumb_func_end sub_020473E4

	thumb_func_start sub_02047404
sub_02047404: ; 0x02047404
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02094B1C
	cmp r0, #1
	bne _0204741E
	mov r0, #1
	pop {r3, pc}
_0204741E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02047404

	thumb_func_start sub_02047424
sub_02047424: ; 0x02047424
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02047424

	thumb_func_start sub_02047438
sub_02047438: ; 0x02047438
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02047438

	thumb_func_start sub_0204744C
sub_0204744C: ; 0x0204744C
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_02094BB4
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _0204749C
	ldr r0, [sp, #0x10]
	cmp r0, #1
	beq _0204749C
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _0204749C
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _020474A2
_0204749C:
	mov r0, #1
	strh r0, [r5]
	b _020474A6
_020474A2:
	mov r0, #0
	strh r0, [r5]
_020474A6:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_0204744C

	thumb_func_start sub_020474AC
sub_020474AC: ; 0x020474AC
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl ov6_02247A0C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020474AC