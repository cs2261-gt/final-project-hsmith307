	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initFry
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFry, %function
initFry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #10
	mov	ip, #80
	mov	r0, #1
	mov	r1, #4
	ldr	r3, .L4
	stm	r3, {ip, lr}
	str	r0, [r3, #24]
	str	r1, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	fry
	.size	initFry, .-initFry
	.align	2
	.global	initSpaceShip
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpaceShip, %function
initSpaceShip:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #1
	mov	ip, #10
	mov	r0, #48
	ldr	r3, .L7
	stm	r3, {r0, ip}
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #32]
	bx	lr
.L8:
	.align	2
.L7:
	.word	spaceship
	.size	initSpaceShip, .-initSpaceShip
	.align	2
	.global	initPlanets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanets, %function
initPlanets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #32
	mov	r1, #0
	mov	r8, #90
	mov	r7, #60
	mov	r6, #140
	mov	r5, #100
	mov	r4, #120
	mov	lr, #20
	mov	ip, #198
	mov	r0, #45
	ldr	r2, .L11
	stm	r2, {r7, r8}
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r1, [r2, #32]
	ldr	r2, .L11+4
	stm	r2, {r5, r6}
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r1, [r2, #32]
	ldr	r2, .L11+8
	str	r4, [r2, #4]
	str	lr, [r2]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r1, [r2, #32]
	ldr	r2, .L11+12
	pop	{r4, r5, r6, r7, r8, lr}
	stm	r2, {r0, ip}
	str	r1, [r2, #32]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	bx	lr
.L12:
	.align	2
.L11:
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.size	initPlanets, .-initPlanets
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #4
	push	{r4, lr}
	mov	r1, #1
	mov	r4, #0
	mov	lr, #80
	mov	r0, #10
	mov	ip, #48
	ldr	r3, .L15
	str	r2, [r3, #52]
	ldr	r2, .L15+4
	str	lr, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r0, [r2, #4]
	str	ip, [r2]
	str	r1, [r2, #24]
	str	r1, [r2, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r2, #36]
	str	r4, [r2, #44]
	str	r4, [r2, #32]
	bl	initPlanets
	ldr	ip, .L15+8
	mov	r3, #256
	str	r4, [ip]
	mov	r0, #3
	ldr	r4, .L15+12
	ldr	r2, .L15+16
	ldr	r1, .L15+20
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L15+24
	ldr	r1, .L15+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	fry
	.word	spaceship
	.word	curLocation
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.size	initGame, .-initGame
	.global	__aeabi_idivmod
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L82
	sub	sp, sp, #28
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+4
	ldr	fp, [r3]
	cmp	fp, #0
	bne	.L18
	mov	r3, #1
	ldr	r4, .L82+8
	ldr	r6, .L82+12
	ldr	r7, .L82+16
	ldr	r8, .L82+20
	ldr	r9, .L82+24
	ldr	r5, .L82+28
	str	r3, [r4, #32]
	str	r3, [r6, #32]
	str	r3, [r7, #32]
	str	r3, [r8, #32]
	str	r3, [r9, #32]
	str	fp, [r5, #32]
.L19:
	ldr	r3, [r5, #48]
	mov	r1, #18
	mov	r0, r3
	str	r3, [sp, #20]
	ldr	r2, .L82+32
	mov	lr, pc
	bx	r2
	cmp	r1, #0
	ldr	r3, [sp, #20]
	bne	.L23
	ldr	r2, [r5, #32]
	cmp	r2, #1
	beq	.L22
.L23:
	ldr	r10, .L82+36
	ldrh	r2, [r10]
	add	r2, r2, #1
	strh	r2, [r10]	@ movhi
	ldr	r2, .L82+40
	sub	r0, fp, #1
	ldrh	r1, [r2, #48]
	rsbs	fp, r0, #0
	adc	fp, fp, r0
	tst	r1, #32
	bne	.L28
	ldr	r1, [r4, #32]
	cmp	r1, #1
	ldrh	r2, [r2, #48]
	beq	.L78
.L48:
	ldr	r2, .L82+40
	ldrh	r1, [r2, #48]
	tst	r1, #128
	bne	.L77
	ldr	r1, [r4, #32]
	cmp	r1, #0
	bne	.L32
	ldrh	r2, [r2, #48]
	ldr	fp, .L82+44
.L36:
	ldr	r2, [r5, #36]
	cmp	r2, #4
	beq	.L37
.L39:
	add	r3, r3, #1
	str	r3, [r5, #48]
.L38:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	ldm	r4, {r2, r3}
	ldr	ip, .L82+48
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #20]
	ldr	r3, [r6, #16]
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #1
	beq	.L79
.L40:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	ldm	r4, {r2, r3}
	ldr	ip, .L82+48
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #1
	beq	.L80
.L41:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r5, #4]
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	mov	r1, #512
	ldr	r2, .L82+52
	strh	r3, [r2, #2]	@ movhi
	ldr	r3, [r5]
	strh	r1, [r2, #4]	@ movhi
	strh	r3, [r2]	@ movhi
.L42:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L43
	ldr	r2, [r4, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	ldr	ip, [r5, #44]
	ldr	r3, [r5, #36]
	ldr	r0, [r4]
	ldr	r1, .L82+52
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #3
	strh	r2, [r1, #10]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	strh	r3, [r1, #12]	@ movhi
.L43:
	ldr	r3, [r6, #32]
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r6, #4]
	mvn	r3, r3, lsl #17
	mov	r1, #528
	mvn	r3, r3, lsr #17
	ldr	r0, [r6]
	ldr	r2, .L82+52
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L44:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	mvn	r3, r3, lsl #17
	mov	r1, #532
	mvn	r3, r3, lsr #17
	ldr	r0, [r7]
	ldr	r2, .L82+52
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L45:
	ldr	r3, [r8, #32]
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r8, #4]
	mvn	r3, r3, lsl #17
	mov	r1, #536
	mvn	r3, r3, lsr #17
	ldr	r0, [r8]
	ldr	r2, .L82+52
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L46:
	ldr	r3, [r9, #32]
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r9, #4]
	mvn	r3, r3, lsl #17
	mov	r1, #540
	mvn	r3, r3, lsr #17
	ldr	r0, [r9]
	ldr	r2, .L82+52
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L47:
	ldr	r3, .L82+56
	mov	lr, pc
	bx	r3
	ldr	r4, .L82+60
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L82+52
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldrh	r2, [fp]
	strh	r2, [r3, #18]	@ movhi
	ldrh	r2, [r10]
	lsr	r1, r2, #2
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	ldrh	r2, [fp]
	strh	r2, [r3, #22]	@ movhi
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L78:
	lsl	r2, r2, #27
	ldr	r1, [r4, #4]
	orrs	r2, fp, r2, lsr #31
	ldr	r2, [r4, #24]
	sub	r2, r1, r2
	str	r2, [r4, #4]
	bne	.L48
.L31:
	ldr	r2, .L82+40
	ldrh	r2, [r2, #48]
	tst	r2, #128
	str	r1, [r4, #4]
	beq	.L32
.L77:
	ldr	fp, .L82+44
.L33:
	ldr	r2, .L82+40
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L36
	ldr	r2, [r4, #32]
	cmp	r2, #1
	bne	.L36
	ldr	r2, [r4]
	ldr	r0, [r4, #28]
	sub	r2, r2, r0
	ldrh	r1, [fp]
	str	r2, [r4]
	ldr	r2, [r5, #36]
	sub	r1, r1, #1
	cmp	r2, #4
	strh	r1, [fp]	@ movhi
	bne	.L39
.L37:
	ldr	r2, [r5, #40]
	cmp	r2, #4
	str	r2, [r5, #36]
	beq	.L38
	b	.L39
.L28:
	ldrh	r2, [r2, #48]
	lsl	r2, r2, #27
	orrs	r2, fp, r2, lsr #31
	bne	.L48
	ldr	r2, [r4, #32]
	cmp	r2, #1
	bne	.L48
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #4]
	add	r1, r1, r2
	b	.L31
.L18:
	cmp	fp, #1
	beq	.L72
	ldr	r5, .L82+28
	ldr	r4, .L82+8
	ldr	r6, .L82+12
	ldr	r7, .L82+16
	ldr	r8, .L82+20
	ldr	r9, .L82+24
.L20:
	cmp	fp, #2
	bne	.L21
	mov	r1, #0
	mov	r0, #1
	ldr	r3, [r5, #48]
	rsb	r2, r3, r3, lsl #3
	add	r2, r2, r2, lsl #6
	add	r2, r3, r2, lsl #3
	ldr	ip, .L82+64
	rsb	r2, r2, r2, lsl #15
	add	r2, r3, r2, lsl #3
	add	r2, r2, ip
	cmp	ip, r2, ror #1
	str	r0, [r5, #32]
	str	r1, [r4, #32]
	str	r1, [r6, #32]
	str	r1, [r7, #32]
	str	r1, [r8, #32]
	str	r1, [r9, #32]
	bcc	.L23
.L22:
	ldr	r2, [r5, #52]
	ldr	r1, [r5, #44]
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r5, #44]
	strge	r2, [r5, #44]
	b	.L23
.L21:
	cmp	fp, #3
	bne	.L81
.L25:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r4, #32]
	str	r3, [r6, #32]
	str	r3, [r7, #32]
	str	r3, [r8, #32]
	str	r3, [r9, #32]
	ldr	r3, [r5, #48]
	str	r2, [r5, #32]
	rsb	r2, r3, r3, lsl #3
	add	r2, r2, r2, lsl #6
	add	r2, r3, r2, lsl #3
	ldr	r1, .L82+64
	rsb	r2, r2, r2, lsl #15
	add	r2, r3, r2, lsl #3
	add	r2, r2, r1
	cmp	r1, r2, ror #1
	bcc	.L23
	b	.L22
.L81:
	cmp	fp, #4
	beq	.L25
	b	.L19
.L32:
	ldr	fp, .L82+44
	ldr	r2, [r4]
	ldrh	r1, [fp]
	ldr	r0, [r4, #28]
	add	r1, r1, #1
	add	r2, r2, r0
	strh	r1, [fp]	@ movhi
	str	r2, [r4]
	b	.L33
.L72:
	mov	r3, #0
	ldr	r4, .L82+8
	ldr	r6, .L82+12
	ldr	r7, .L82+16
	ldr	r8, .L82+20
	ldr	r9, .L82+24
	ldr	r5, .L82+28
	str	r3, [r4, #32]
	str	r3, [r6, #32]
	str	r3, [r7, #32]
	str	r3, [r8, #32]
	str	r3, [r9, #32]
	ldr	r3, .L82+68
	str	fp, [r5, #32]
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+4
	ldr	fp, [r3]
	b	.L20
.L80:
	mov	r3, #0
	ldr	r2, .L82+72
	str	r0, [r5, #32]
	str	r3, [r4, #32]
	str	r3, [r6, #32]
	str	r3, [r7, #32]
	str	r3, [r8, #32]
	str	r3, [r9, #32]
	mov	lr, pc
	bx	r2
	b	.L41
.L79:
	ldr	r2, .L82+4
	ldr	r3, .L82+68
	str	r0, [r2]
	mov	lr, pc
	bx	r3
	b	.L40
.L83:
	.align	2
.L82:
	.word	hideSprites
	.word	curLocation
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	fry
	.word	__aeabi_idivmod
	.word	hOff
	.word	67109120
	.word	vOff
	.word	collision
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	238609294
	.word	planet1
	.word	planet2
	.size	updateGame, .-updateGame
	.align	2
	.global	updatePlanet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlanet1, %function
updatePlanet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updatePlanet1, .-updatePlanet1
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	curLocation,4,4
	.comm	p4,48,4
	.comm	p3,48,4
	.comm	p2,48,4
	.comm	p1,48,4
	.comm	planets,192,4
	.comm	spaceship,52,4
	.comm	bender,48,4
	.comm	fry,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
