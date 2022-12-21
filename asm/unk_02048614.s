	.include "macros/function.inc"
	.include "include/unk_02048614.inc"

	

	.text


	thumb_func_start sub_02048614
sub_02048614: ; 0x02048614
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	bne _02048674
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0203F098
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0203F098
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_0203F098
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x1d
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_0203F098
	b _020486B4
_02048674:
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_0203F098
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x20
	bl sub_0203F098
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x21
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0203F098
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0203F098
_020486B4:
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x10]
	ldr r0, [r0, #0]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [r6, #0]
	ldr r2, [r4, #0x3c]
	ldr r3, [r3, #0]
	add r0, r4, #0
	bl sub_02067FB8
	str r0, [r7, #0]
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02048614

	thumb_func_start sub_020486E0
sub_020486E0: ; 0x020486E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	cmp r6, #0
	bne _0204871E
	add r5, #0x80
	ldr r0, [r5, #0]
	mov r1, #0x1e
	bl sub_0203F098
	b _02048728
_0204871E:
	add r5, #0x80
	ldr r0, [r5, #0]
	mov r1, #0x25
	bl sub_0203F098
_02048728:
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02048736
	mov r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02048736:
	bl sub_02067FD4
	cmp r0, #1
	bne _0204874C
	ldr r0, [r5, #0]
	bl sub_02067FE8
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	strh r0, [r4]
_0204874C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020486E0

	thumb_func_start sub_02048750
sub_02048750: ; 0x02048750
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x1c
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldrh r1, [r5]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048750

	thumb_func_start sub_02048778
sub_02048778: ; 0x02048778
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x1b
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x22
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
	bl sub_0203F118
	cmp r7, #0
	bne _020487C2
	ldrh r1, [r4]
	b _020487C4
_020487C2:
	ldrh r1, [r6]
_020487C4:
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02048778

	thumb_func_start sub_020487CC
sub_020487CC: ; 0x020487CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_0203F254
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020487CC

	thumb_func_start sub_020487FC
sub_020487FC: ; 0x020487FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #8
	add r0, r4, #0
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x17
	bl sub_0203F098
	add r7, r0, #0
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
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r6, #0
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02048862
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206B034
	add r6, r0, #0
_02048862:
	mov r0, #0xb
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x74]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r3, r6, #0
	bl sub_020515CC
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020487FC

	thumb_func_start sub_0204887C
sub_0204887C: ; 0x0204887C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
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
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x74]
	add r1, r7, #0
	add r3, r6, #0
	bl sub_020515CC
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204887C

	thumb_func_start sub_020488E0
sub_020488E0: ; 0x020488E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0203F098
	add r4, r0, #0
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
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_0203F254
	bl sub_0203F28C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _02048942
	mov r0, #0
	mov r1, #2
	add r2, r0, #0
	b _0204895C
_02048942:
	ldrh r0, [r4]
	bl sub_0203F278
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _02048956
	mov r0, #3
	mov r1, #5
	mov r2, #6
	b _0204895C
_02048956:
	mov r0, #7
	mov r1, #9
	mov r2, #0xa
_0204895C:
	strh r0, [r7]
	strh r1, [r6]
	strh r2, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020488E0

	thumb_func_start sub_02048968
sub_02048968: ; 0x02048968
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0203F098
	add r4, r0, #0
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
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_0203F254
	bl sub_0203F28C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _020489CA
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	b _020489E4
_020489CA:
	ldrh r0, [r4]
	bl sub_0203F278
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _020489DE
	mov r0, #0x12
	mov r1, #0
	mov r2, #6
	b _020489E4
_020489DE:
	mov r0, #0x13
	mov r1, #0
	mov r2, #0xa
_020489E4:
	strh r0, [r7]
	strh r1, [r6]
	strh r2, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02048968

	thumb_func_start sub_020489F0
sub_020489F0: ; 0x020489F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_0203F254
	bl sub_0203F28C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020489F0

	thumb_func_start sub_02048A24
sub_02048A24: ; 0x02048A24
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	bl sub_0205560C
	bl sub_02004950
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048A24

	thumb_func_start sub_02048A44
sub_02048A44: ; 0x02048A44
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_02052C5C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02048A44

	thumb_func_start sub_02048A50
sub_02048A50: ; 0x02048A50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
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
	bl sub_02052868
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02048A50

	thumb_func_start sub_02048A80
sub_02048A80: ; 0x02048A80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
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
	bl sub_02052878
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02048A80

	thumb_func_start sub_02048AB0
sub_02048AB0: ; 0x02048AB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
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
	bl sub_02052888
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02048AB0

	thumb_func_start sub_02048AE0
sub_02048AE0: ; 0x02048AE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_02054AB0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02048AE0

	thumb_func_start sub_02048B0C
sub_02048B0C: ; 0x02048B0C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	mov r1, #0xb
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [r4, #0x74]
	mov r1, #1
	add r3, r2, #0
	bl sub_020515CC
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02048B0C

	thumb_func_start sub_02048B34
sub_02048B34: ; 0x02048B34
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02062C00
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_02062910
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0203F2BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048B34

	thumb_func_start sub_02048B60
sub_02048B60: ; 0x02048B60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0203E850
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_02062C00
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02062910
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0203F2A0
	cmp r0, #1
	bne _02048BA4
	ldr r1, [r6, #8]
	add r0, r6, #0
	add r1, r1, r4
	bl sub_0203E818
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02048BA4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02048B60

	thumb_func_start sub_02048BA8
sub_02048BA8: ; 0x02048BA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldr r1, [r5, #0]
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048BA8