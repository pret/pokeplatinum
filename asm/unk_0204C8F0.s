	.include "macros/function.inc"
	.include "include/unk_0204C8F0.inc"

	

	.text


	thumb_func_start sub_0204C8F0
sub_0204C8F0: ; 0x0204C8F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E850
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02025F94
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C8F0

	thumb_func_start sub_0204C914
sub_0204C914: ; 0x0204C914
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E850
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02025FB8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C914

	thumb_func_start sub_0204C938
sub_0204C938: ; 0x0204C938
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02025FB8
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C938

	thumb_func_start sub_0204C968
sub_0204C968: ; 0x0204C968
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E850
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025F74
	cmp r0, r4
	bhs _0204C9A4
	mov r0, #0
	b _0204C9A6
_0204C9A4:
	mov r0, #1
_0204C9A6:
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204C968

	thumb_func_start sub_0204C9AC
sub_0204C9AC: ; 0x0204C9AC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025F74
	cmp r0, r4
	bhs _0204C9F2
	mov r0, #0
	b _0204C9F4
_0204C9F2:
	mov r0, #1
_0204C9F4:
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204C9AC

	thumb_func_start sub_0204C9FC
sub_0204C9FC: ; 0x0204C9FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x27
	bl sub_0203F098
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov5_021DCEB0
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204C9FC

	thumb_func_start sub_0204CA4C
sub_0204CA4C: ; 0x0204CA4C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x27
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DCF58
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204CA4C

	thumb_func_start sub_0204CA64
sub_0204CA64: ; 0x0204CA64
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x27
	bl sub_0203F098
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov5_021DCF6C
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204CA64