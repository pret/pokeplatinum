	.include "macros/function.inc"
	.include "include/unk_0204C6C8.inc"

	

	.text


	thumb_func_start sub_0204C6C8
sub_0204C6C8: ; 0x0204C6C8
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
	mov r1, #0x26
	bl sub_0203F098
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov5_021DD020
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204C6C8

	thumb_func_start sub_0204C718
sub_0204C718: ; 0x0204C718
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DD084
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204C718

	thumb_func_start sub_0204C730
sub_0204C730: ; 0x0204C730
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0203F098
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov5_021DD098
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204C730

	thumb_func_start sub_0204C750
sub_0204C750: ; 0x0204C750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202B5B4
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C750

	thumb_func_start sub_0204C780
sub_0204C780: ; 0x0204C780
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202B5B8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C780

	thumb_func_start sub_0204C7AC
sub_0204C7AC: ; 0x0204C7AC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202B5F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C7AC

	thumb_func_start sub_0204C7D8
sub_0204C7D8: ; 0x0204C7D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_0202B5F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C7D8

	thumb_func_start sub_0204C808
sub_0204C808: ; 0x0204C808
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	ldr r0, [r5, #0xc]
	bl sub_02025E50
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
	bl sub_0202B5B4
	cmp r0, r4
	bhs _0204C84C
	mov r0, #0
	b _0204C84E
_0204C84C:
	mov r0, #1
_0204C84E:
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204C808

	thumb_func_start sub_0204C854
sub_0204C854: ; 0x0204C854
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	add r0, r4, #0
	bl sub_0203D174
	bl sub_02025E38
	ldr r0, [r4, #0xc]
	bl sub_02025E50
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldrh r5, [r0]
	add r0, r6, #0
	bl sub_0202B5B4
	cmp r0, r5
	bhs _0204C8A2
	mov r0, #0
	b _0204C8A4
_0204C8A2:
	mov r0, #1
_0204C8A4:
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204C854

	thumb_func_start sub_0204C8AC
sub_0204C8AC: ; 0x0204C8AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E50
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0202B5D8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204C8AC