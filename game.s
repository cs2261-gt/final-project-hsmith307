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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets.part.0, %function
updateBullets.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #20]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L2
	ldr	r1, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r1
	sub	r1, r3, #1
	cmp	r1, #237
	bls	.L5
.L2:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L5:
	ldr	r1, [r0, #8]
	add	r2, r1, r2
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
	.size	updateBullets.part.0, .-updateBullets.part.0
	.align	2
	.global	initSpaceship
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpaceship, %function
initSpaceship:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	mov	r1, #32
	mov	ip, #104
	mov	r0, #64
	ldr	r3, .L7
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	bx	lr
.L8:
	.align	2
.L7:
	.word	spaceship
	.size	initSpaceship, .-initSpaceship
	.align	2
	.global	initFry
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFry, %function
initFry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #3
	mov	lr, #90
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L11
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	fry
	.size	initFry, .-initFry
	.align	2
	.global	initLeela
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLeela, %function
initLeela:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #3
	mov	lr, #90
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L15
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	leela
	.size	initLeela, .-initLeela
	.align	2
	.global	initAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAlien, %function
initAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #1
	mov	r5, #170
	mov	r4, #90
	mov	lr, #2
	mov	r1, #64
	mov	ip, #4
	mov	r0, #0
	ldr	r3, .L19
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #28]
	str	ip, [r3, #40]
	str	r0, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, r5, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	alien
	.size	initAlien, .-initAlien
	.align	2
	.global	initBlocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlocks, %function
initBlocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #60
	str	lr, [sp, #-4]!
	mov	r0, #1
	mov	lr, #80
	mov	r2, #32
	ldr	r3, .L25
	add	r1, r3, ip
.L22:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L22
	ldr	lr, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
	.word	blocks
	.size	initBlocks, .-initBlocks
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #0
	mov	r3, #16
	mov	r2, #5
	mov	r0, #1
	mov	r5, #26
	mov	r4, #47
	mov	lr, #68
	mov	ip, #89
	ldr	r1, .L29
	str	r6, [r1]
	ldr	r1, .L29+4
	str	r2, [r1]
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, .L29+8
	str	r5, [r1]
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, .L29+12
	str	r4, [r1]
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, .L29+16
	str	lr, [r1]
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, .L29+20
	pop	{r4, r5, r6, lr}
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	ip, [r1]
	bx	lr
.L30:
	.align	2
.L29:
	.word	lifeCounter
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	life5
	.size	initLives, .-initLives
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
	push	{r4, r5, r6, lr}
	bl	initLives
	mov	r2, #1
	ldr	lr, .L35
	mov	r6, r2
	mov	r3, lr
	mov	r5, #220
	mov	r4, #100
	mov	ip, #0
	mov	r0, #32
.L32:
	rsb	r1, r2, r2, lsl #3
	add	r2, r2, #1
	add	r1, lr, r1, lsl #2
	cmp	r2, #5
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	str	ip, [r3, #48]
	str	r0, [r3, #44]
	str	r0, [r3, #40]
	str	ip, [r1, #24]
	add	r3, r3, #28
	str	r6, [r3, #8]
	bne	.L32
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	treasure
	.size	initGame, .-initGame
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #8
	mov	r4, #0
	mov	lr, #1
	ldr	r1, .L41
	ldr	r3, .L41+4
	ldr	ip, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, ip
	add	r1, r1, #20
	add	ip, r3, #280
.L38:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L38
	pop	{r4, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	leela
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	initTreasure
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTreasure, %function
initTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	push	{r4, r5, r6, lr}
	ldr	lr, .L47
	mov	r6, r2
	mov	r3, lr
	mov	r5, #220
	mov	r4, #100
	mov	ip, #0
	mov	r0, #32
.L44:
	rsb	r1, r2, r2, lsl #3
	add	r2, r2, #1
	add	r1, lr, r1, lsl #2
	cmp	r2, #5
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	str	ip, [r3, #48]
	str	r0, [r3, #44]
	str	r0, [r3, #40]
	str	ip, [r1, #24]
	add	r3, r3, #28
	str	r6, [r3, #8]
	bne	.L44
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	treasure
	.size	initTreasure, .-initTreasure
	.align	2
	.global	initp1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initp1, %function
initp1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #200
	mov	r0, #20
	mov	r1, #1
	ldr	r3, .L50
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L51:
	.align	2
.L50:
	.word	p1
	.size	initp1, .-initp1
	.align	2
	.global	initp2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initp2, %function
initp2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #200
	mov	r0, #90
	mov	r1, #1
	ldr	r3, .L53
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L54:
	.align	2
.L53:
	.word	p2
	.size	initp2, .-initp2
	.align	2
	.global	initp3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initp3, %function
initp3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #20
	mov	r0, #100
	mov	r1, #1
	ldr	r3, .L56
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L57:
	.align	2
.L56:
	.word	p3
	.size	initp3, .-initp3
	.align	2
	.global	initp4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initp4, %function
initp4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #180
	mov	r0, #120
	mov	r1, #1
	ldr	r3, .L59
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L60:
	.align	2
.L59:
	.word	p4
	.size	initp4, .-initp4
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateGame, .-updateGame
	.align	2
	.global	initSpace
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpace, %function
initSpace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #4352
	mov	r1, #1
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #32
	mov	lr, #104
	mov	r0, #64
	strh	r2, [r3]	@ movhi
	ldr	r3, .L67
	ldr	r2, [r3]
	ldr	r3, .L67+4
	cmp	r2, r1
	stmib	r3, {r0, ip}
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	lr, [r3]
	str	ip, [r3, #12]
	beq	.L66
	cmp	r2, #0
	bne	.L64
	mov	r4, #3
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L67+8
	str	r4, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #16]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	lr, [r3, #4]
	str	ip, [r3, #40]
.L64:
	mov	r3, #200
	mov	r7, #90
	mov	ip, #20
	mov	r1, #32
	mov	lr, #1
	mov	r6, #100
	mov	r4, #120
	mov	r5, #180
	ldr	r0, .L67+12
	ldr	r2, .L67+16
	str	r3, [r0]
	stm	r2, {r3, r7}
	ldr	r3, .L67+20
	str	ip, [r0, #4]
	str	ip, [r3]
	ldr	ip, .L67+24
	str	lr, [r0, #16]
	str	lr, [r2, #16]
	str	lr, [r3, #16]
	str	r6, [r3, #4]
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	str	r1, [r2, #12]
	str	r1, [r2, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r4, [ip, #4]
	mov	r3, #256
	ldr	r4, .L67+28
	mov	r0, #3
	ldr	r2, .L67+32
	ldr	r1, .L67+36
	str	lr, [ip, #16]
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L67+40
	ldr	r1, .L67+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r0, .L67+48
	ldr	r1, .L67+52
	ldr	r2, .L67+56
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L66:
	mov	r1, #0
	mov	r4, #3
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L67+60
	str	r4, [r3]
	str	r2, [r3, #24]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r2, [r3, #28]
	str	lr, [r3, #4]
	str	ip, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	b	.L64
.L68:
	.align	2
.L67:
	.word	characterChoice
	.word	spaceship
	.word	fry
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.word	isLost
	.word	treasureNum
	.word	prevTreasureNum
	.word	leela
	.size	initSpace, .-initSpace
	.align	2
	.global	initPlanet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanet1, %function
initPlanet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L79
	mov	lr, pc
	bx	r3
	mov	ip, #60
	mov	lr, #80
	mov	r0, #1
	mov	r2, #32
	ldr	r3, .L79+4
	add	r1, r3, ip
.L70:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L70
	ldr	r2, .L79+8
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	r4, #1
	ldr	r6, .L79+12
	ldr	r1, [r6, #12]
	ldr	lr, [r6]
	ldr	ip, [r6, #4]
	add	lr, lr, r1
	add	ip, ip, #20
	add	r1, r2, #280
.L71:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L71
	mov	lr, #203
	mov	ip, #120
	mov	r3, #1
	ldr	r0, .L79+16
	str	lr, [r0, #28]
	str	r4, [r0, #36]
	str	ip, [r0, #32]
.L72:
	str	r3, [r2, #12]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L72
	mov	r1, #0
	mov	ip, #64
	mov	r7, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r2, .L79+20
	ldr	r0, [r2]
	ldr	r2, .L79+24
	str	r1, [r2, #16]
	ldr	r2, .L79+28
	str	r1, [r2, #16]
	ldr	r2, .L79+32
	str	r1, [r2, #16]
	ldr	r2, .L79+36
	str	r1, [r2, #16]
	ldr	r2, .L79+40
	str	r1, [r2, #16]
	ldr	r2, .L79+44
	str	r1, [r2]
	ldr	r2, .L79+48
	cmp	r0, #1
	str	r1, [r2, #32]
	str	r3, [r2, #20]
	str	r3, [r2, #24]
	str	r3, [r2, #16]
	str	r3, [r2, #36]
	str	r7, [r2]
	str	r5, [r2, #4]
	str	r4, [r2, #28]
	str	lr, [r2, #40]
	str	ip, [r2, #12]
	str	ip, [r2, #8]
	streq	r0, [r6, #16]
	beq	.L69
	cmp	r0, #0
	ldreq	r2, .L79+52
	streq	r3, [r2, #16]
.L69:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	hideSprites
	.word	blocks
	.word	bullets
	.word	leela
	.word	treasure
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	curLocation
	.word	alien
	.word	fry
	.size	initPlanet1, .-initPlanet1
	.align	2
	.global	initPlanet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanet2, %function
initPlanet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L87
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #8
	mov	r1, #1
	ldr	r6, .L87+4
	ldr	r0, .L87+8
	str	r3, [r6, #16]
	ldr	r6, .L87+12
	ldr	r5, .L87+16
	str	r3, [r0, #16]
	str	r3, [r6, #16]
	ldr	r0, .L87+20
	ldr	r6, .L87+24
	ldr	r4, [r5, #12]
	str	r3, [r0, #16]
	mov	lr, r3
	ldr	ip, [r5]
	ldr	r0, [r5, #4]
	str	r3, [r6, #16]
	ldr	r3, .L87+28
	add	ip, ip, r4
	add	r0, r0, #20
	add	r4, r3, #280
.L82:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r4
	bne	.L82
	mov	ip, #2
	mov	r0, #64
	mov	r7, #170
	mov	r6, #90
	mov	r4, #4
	ldr	r3, .L87+32
	ldr	r2, [r3]
	ldr	r3, .L87+36
	str	ip, [r3, #28]
	ldr	ip, .L87+40
	cmp	r2, #1
	str	r7, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	lr, [r3, #32]
	str	r6, [r3, #4]
	str	r4, [r3, #40]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [ip]
	streq	r2, [r5, #16]
	beq	.L81
	cmp	r2, #0
	ldreq	r3, .L87+44
	streq	r1, [r3, #16]
.L81:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	leela
	.word	p3
	.word	p4
	.word	bullets
	.word	characterChoice
	.word	alien
	.word	curLocation
	.word	fry
	.size	initPlanet2, .-initPlanet2
	.align	2
	.global	initPlanet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanet3, %function
initPlanet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L95
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #8
	mov	r1, #1
	ldr	r6, .L95+4
	ldr	r0, .L95+8
	str	r3, [r6, #16]
	ldr	r6, .L95+12
	ldr	r5, .L95+16
	str	r3, [r0, #16]
	str	r3, [r6, #16]
	ldr	r0, .L95+20
	ldr	r6, .L95+24
	ldr	r4, [r5, #12]
	str	r3, [r0, #16]
	mov	lr, r3
	ldr	ip, [r5]
	ldr	r0, [r5, #4]
	str	r3, [r6, #16]
	ldr	r3, .L95+28
	add	ip, ip, r4
	add	r0, r0, #20
	add	r4, r3, #280
.L90:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r4
	bne	.L90
	mov	ip, #64
	mov	r0, #2
	mov	r7, #170
	mov	r6, #90
	mov	r4, #4
	ldr	r3, .L95+32
	ldr	r2, [r3]
	ldr	r3, .L95+36
	str	lr, [r3, #32]
	ldr	lr, .L95+40
	cmp	r2, #1
	str	r7, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r6, [r3, #4]
	str	r4, [r3, #40]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	str	r0, [r3, #28]
	str	r0, [lr]
	streq	r2, [r5, #16]
	beq	.L89
	cmp	r2, #0
	ldreq	r3, .L95+44
	streq	r1, [r3, #16]
.L89:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L96:
	.align	2
.L95:
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	leela
	.word	p3
	.word	p4
	.word	bullets
	.word	characterChoice
	.word	alien
	.word	curLocation
	.word	fry
	.size	initPlanet3, .-initPlanet3
	.align	2
	.global	initPlanet4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanet4, %function
initPlanet4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L103
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	lr, #1
	mov	r6, #64
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #4
	mov	r2, #8
	ldr	r3, .L103+4
	str	r1, [r3, #16]
	ldr	r3, .L103+8
	str	r1, [r3, #16]
	ldr	r3, .L103+12
	str	r1, [r3, #16]
	ldr	r3, .L103+16
	str	r1, [r3, #16]
	ldr	r3, .L103+20
	ldr	r5, .L103+24
	str	r1, [r3, #16]
	ldr	r3, .L103+28
	mov	r4, r1
	str	r1, [r3, #32]
	str	lr, [r3, #20]
	str	lr, [r3, #24]
	str	lr, [r3, #16]
	str	lr, [r3, #36]
	ldr	r0, [r5]
	ldr	r7, [r5, #12]
	str	fp, [r3]
	str	r10, [r3, #4]
	str	r9, [r3, #28]
	str	r8, [r3, #40]
	ldr	r1, [r5, #4]
	str	r6, [r3, #12]
	str	r6, [r3, #8]
	ldr	r3, .L103+32
	mov	ip, lr
	add	r0, r0, r7
	add	r1, r1, #20
	add	lr, r3, #280
.L98:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, lr
	bne	.L98
	mov	r1, #3
	ldr	r3, .L103+36
	ldr	r3, [r3]
	ldr	r2, .L103+40
	cmp	r3, #1
	str	r1, [r2]
	streq	r3, [r5, #16]
	beq	.L97
	cmp	r3, #0
	ldreq	r3, .L103+44
	streq	ip, [r3, #16]
.L97:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	leela
	.word	alien
	.word	bullets
	.word	characterChoice
	.word	curLocation
	.word	fry
	.size	initPlanet4, .-initPlanet4
	.align	2
	.global	updateAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAlien, %function
updateAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L109
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L109+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L106
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L106:
	ldr	r2, [r1, #12]
	adds	r3, r3, r2
	streq	r3, [r1, #16]
	bx	lr
.L110:
	.align	2
.L109:
	.word	alien
	.word	238609294
	.size	updateAlien, .-updateAlien
	.align	2
	.global	shootBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootBullets, %function
shootBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #1
	ldr	r3, .L120
	ldr	r2, .L120+4
	ldr	r1, .L120+8
	ldm	r2, {r0, ip}
	ldr	lr, [r2, #12]
	ldr	r5, [r3]
	ldr	r2, [r3, #12]
	ldr	r4, [r3, #4]
	ldr	r3, .L120+12
	ldr	r1, [r1]
	add	lr, lr, r0
	add	ip, ip, #20
	add	r5, r5, r2
	add	r4, r4, #20
	add	r0, r3, #280
.L114:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L116
	cmp	r1, #1
	streq	r5, [r3]
	streq	r4, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L116
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r6, [r3, #24]
.L116:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L114
	pop	{r4, r5, r6, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	leela
	.word	fry
	.word	characterChoice
	.word	bullets
	.size	shootBullets, .-shootBullets
	.align	2
	.global	updateFry
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFry, %function
updateFry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L131
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L131+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L123
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L129
.L123:
	ldr	r3, .L131+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L127
	ldr	r3, .L131+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L130
.L127:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L129:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L123
.L130:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L132:
	.align	2
.L131:
	.word	fry
	.word	238609294
	.word	oldButtons
	.word	buttons
	.size	updateFry, .-updateFry
	.align	2
	.global	updateLeela
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLeela, %function
updateLeela:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L141
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L141+4
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	add	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L134
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L134:
	ldr	r3, .L141+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L138
	ldr	r3, .L141+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L140
.L138:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L140:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L142:
	.align	2
.L141:
	.word	leela
	.word	238609294
	.word	oldButtons
	.word	buttons
	.size	updateLeela, .-updateLeela
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateBullets.part.0
	.size	updateBullets, .-updateBullets
	.align	2
	.global	updateTreasure
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTreasure, %function
updateTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, [r0]
	ldr	r2, [r0, #8]
	ldr	r6, .L169
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #20
	ldr	r3, .L169+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L165
.L146:
	cmp	r5, #0
	beq	.L166
.L145:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L166:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L169+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldm	r6, {r0, r1}
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L169+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L145
	mov	r2, r5
	ldr	r1, .L169+16
	ldr	r3, .L169+20
	str	r5, [r6, #16]
	str	r5, [r4, #20]
	str	r5, [r1, #16]
	str	r5, [r1, #36]
	str	r5, [r1, #56]
	add	r1, r3, #280
.L152:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L152
	ldr	r0, .L169+24
	ldr	r3, .L169+28
	ldr	r1, [r0]
	ldr	r3, [r3]
	ldr	ip, .L169+32
	add	lr, r1, #1
	cmp	r3, #0
	str	lr, [r0]
	str	r1, [ip]
	bne	.L153
	ldr	r2, .L169+36
	str	r3, [r2, #16]
	b	.L145
.L165:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r5, .L169+40
	ldr	lr, [r4, #4]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldm	r5, {r0, r1}
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L169+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L167
	mov	r2, #0
	ldr	r0, .L169+16
	ldr	r3, .L169+20
	str	r2, [r4, #20]
	mov	r1, r2
	str	r2, [r5, #16]
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L148:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L148
	ldr	r2, .L169+24
	ldr	r3, [r2]
	ldr	r1, .L169+32
	add	r0, r3, #1
	ldr	r5, [r6]
	str	r0, [r2]
	str	r3, [r1]
	b	.L146
.L167:
	ldr	r5, [r6]
	b	.L146
.L153:
	cmp	r3, #1
	ldreq	r3, .L169+44
	streq	r2, [r3, #16]
	beq	.L145
.L168:
	cmp	r3, #2
	ldreq	r3, .L169+48
	streq	r2, [r3, #16]
	beq	.L145
	cmp	r3, #3
	ldreq	r3, .L169+52
	streq	r2, [r3, #16]
	b	.L145
.L170:
	.align	2
.L169:
	.word	characterChoice
	.word	hideSprites
	.word	fry
	.word	collision
	.word	blocks
	.word	bullets
	.word	treasureNum
	.word	curLocation
	.word	prevTreasureNum
	.word	p1
	.word	leela
	.word	p2
	.word	p3
	.word	p4
	.size	updateTreasure, .-updateTreasure
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L236
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L234
	ldr	r2, .L236+4
.L172:
	ldr	r1, .L236+8
	ldr	r0, [r3, #32]
	ldr	ip, [r1, #16]
	add	r0, r0, #1
	cmp	ip, #1
	str	r0, [r3, #32]
	bne	.L173
	ldr	r0, [r1]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	ip, [r1, #36]
	ldr	r3, [r1, #28]
	add	r3, r3, ip, lsl #5
	ldr	ip, [r1, #4]
	lsl	r3, r3, #3
	strh	r0, [r2, #90]	@ movhi
	strh	r3, [r2, #92]	@ movhi
	strh	ip, [r2, #88]	@ movhi
.L173:
	ldr	r3, .L236+12
	ldr	r0, [r1, #32]
	ldr	ip, [r3, #16]
	add	r0, r0, #1
	cmp	ip, #1
	str	r0, [r1, #32]
	bne	.L174
	ldr	r0, [r3]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	ip, [r3, #36]
	ldr	r1, [r3, #28]
	add	r1, r1, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r1, r1, #3
	strh	r0, [r2, #50]	@ movhi
	strh	r1, [r2, #52]	@ movhi
	strh	ip, [r2, #48]	@ movhi
.L174:
	ldr	r0, .L236+16
	ldr	r1, [r3, #32]
	ldr	ip, [r0, #16]
	add	r1, r1, #1
	cmp	ip, #0
	str	r1, [r3, #32]
	beq	.L175
	mov	r1, #152
	ldr	r3, [r0]
	ldr	r0, [r0, #4]
	orr	r3, r3, #16384
	strh	r3, [r2, #58]	@ movhi
	strh	r0, [r2, #56]	@ movhi
	strh	r1, [r2, #60]	@ movhi
.L175:
	ldr	r3, .L236+20
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L176
	mov	r0, #152
	ldm	r3, {r1, ip}
	orr	r3, r1, #16384
	strh	r3, [r2, #66]	@ movhi
	strh	ip, [r2, #64]	@ movhi
	strh	r0, [r2, #68]	@ movhi
.L176:
	ldr	r3, .L236+24
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L177
	mov	r0, #152
	ldm	r3, {r1, ip}
	orr	r3, r1, #16384
	strh	r3, [r2, #74]	@ movhi
	strh	ip, [r2, #72]	@ movhi
	strh	r0, [r2, #76]	@ movhi
.L177:
	ldr	r3, .L236+28
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L178
	mov	r0, #152
	ldm	r3, {r1, ip}
	orr	r3, r1, #16384
	strh	r3, [r2, #130]	@ movhi
	strh	ip, [r2, #128]	@ movhi
	strh	r0, [r2, #132]	@ movhi
.L178:
	ldr	r3, .L236+32
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L179
	mov	r0, #152
	ldm	r3, {r1, ip}
	orr	r3, r1, #16384
	strh	r3, [r2, #138]	@ movhi
	strh	ip, [r2, #136]	@ movhi
	strh	r0, [r2, #140]	@ movhi
.L179:
	mov	r4, #148
	ldr	r3, .L236+36
	ldr	lr, .L236+40
	add	r0, r3, #60
.L181:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #20
	orrne	r1, r1, lr
	strhne	r4, [r2, #84]	@ movhi
	strhne	r1, [r2, #82]	@ movhi
	strhne	ip, [r2, #80]	@ movhi
	cmp	r3, r0
	bne	.L181
	mov	lr, #154
	ldr	r3, .L236+44
	add	r0, r3, #280
.L183:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #28
	strhne	lr, [r2, #116]	@ movhi
	strhne	ip, [r2, #112]	@ movhi
	strhne	r1, [r2, #114]	@ movhi
	cmp	r3, r0
	bne	.L183
	ldr	r1, .L236+48
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #144
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #10]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
.L184:
	mov	r5, #156
	ldr	r3, .L236+52
	ldr	r1, .L236+4
	ldr	r4, .L236+40
	add	ip, r3, #140
.L186:
	ldr	r0, [r3, #20]
	cmp	r0, #0
	ldmne	r3, {r0, lr}
	add	r3, r3, #28
	orrne	r0, r0, r4
	strhne	r5, [r1, #148]	@ movhi
	strhne	r0, [r1, #146]	@ movhi
	strhne	lr, [r1, #144]	@ movhi
	cmp	ip, r3
	add	r1, r1, #8
	bne	.L186
	ldr	r1, .L236+56
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #16
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #18]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
.L187:
	ldr	r1, .L236+60
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L188
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #20
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #26]	@ movhi
	strh	r1, [r2, #24]	@ movhi
	strh	r0, [r2, #28]	@ movhi
.L188:
	ldr	r1, .L236+64
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #24
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #34]	@ movhi
	strh	r1, [r2, #32]	@ movhi
	strh	r0, [r2, #36]	@ movhi
.L189:
	ldr	r1, .L236+68
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L190
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #28
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #42]	@ movhi
	strh	r1, [r2, #40]	@ movhi
	strh	r0, [r2, #44]	@ movhi
.L190:
	ldr	r3, .L236+72
	mov	lr, pc
	bx	r3
	ldr	r4, .L236+76
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L236+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L236+80
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L236+84
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L234:
	ldr	r0, [r3]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	ip, [r3, #36]
	ldr	r1, [r3, #28]
	ldr	r2, .L236+4
	add	r1, r1, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r1, r1, #3
	strh	r0, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	b	.L172
.L237:
	.align	2
.L236:
	.word	fry
	.word	shadowOAM
	.word	leela
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	life5
	.word	blocks
	.word	-32768
	.word	bullets
	.word	spaceship
	.word	treasure
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	updateSpace
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpace, %function
updateSpace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawGame
	ldr	r2, .L244
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L244+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L244+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L244+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L244+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L244+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L244+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L244+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L244+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L245:
	.align	2
.L244:
	.word	hOff
	.word	67109120
	.word	spaceship
	.size	updateSpace, .-updateSpace
	.align	2
	.global	initLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLose, %function
initLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L250
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r0, .L250+4
	ldr	r3, .L250+8
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	r0, .L250+12
	ldr	lr, .L250+16
	ldr	ip, .L250+20
	ldr	r3, .L250+24
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [ip, #20]
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L247:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L247
	pop	{r4, lr}
	b	drawGame
.L251:
	.align	2
.L250:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	blocks
	.word	alien
	.word	treasureP1
	.word	bullets
	.size	initLose, .-initLose
	.align	2
	.global	updateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLives, %function
updateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L324
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r4, .L324+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L324+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L253
.L255:
	ldr	r0, [r4]
.L254:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L256
.L258:
	ldr	r0, [r4]
.L257:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L259
.L261:
	ldr	r0, [r4]
.L260:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L262
.L264:
	ldr	r0, [r4]
.L263:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L265
.L267:
	ldr	r0, [r4]
.L266:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L322
.L268:
	ldr	r5, .L324+12
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L269
.L271:
	ldr	r0, [r4]
.L270:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L272
.L274:
	ldr	r0, [r4]
.L273:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L275
.L277:
	ldr	r0, [r4]
.L276:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L278
.L280:
	ldr	r0, [r4]
.L279:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L281
.L283:
	ldr	r0, [r4]
.L282:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L323
.L252:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L253:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L255
	ldr	ip, .L324+16
	ldr	r1, .L324+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L255
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L324+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L254
.L323:
	ldr	r3, .L324+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L252
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L252
	ldr	r3, .L324+20
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r2, .L324+28
	streq	r3, [r2]
	b	.L252
.L281:
	ldr	r3, .L324+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L283
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L283
	ldr	r2, .L324+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L283
	mov	r2, #190
	mov	r1, #0
	mov	ip, #5
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L324+32
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L282
.L278:
	ldr	r3, .L324+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L280
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L280
	ldr	r2, .L324+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L280
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L324+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L279
.L275:
	ldr	r3, .L324+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L277
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L277
	ldr	r2, .L324+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L277
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L324+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L276
.L272:
	ldr	r3, .L324+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L274
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L274
	ldr	r2, .L324+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L274
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L324+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L273
.L269:
	ldr	r2, .L324+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L271
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L271
	ldr	r1, .L324+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L271
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L324+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L270
.L322:
	ldr	r3, .L324+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L268
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L268
	ldr	r3, .L324+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r3, .L324+28
	streq	r0, [r3]
	b	.L268
.L265:
	ldr	r3, .L324+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L267
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L267
	ldr	r2, .L324+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L267
	mov	r1, #190
	mov	ip, #5
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L324+32
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L266
.L262:
	ldr	r3, .L324+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L264
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L264
	ldr	r2, .L324+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L264
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L324+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L263
.L259:
	ldr	r3, .L324+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L261
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L261
	ldr	r2, .L324+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L261
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L324+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L260
.L256:
	ldr	r3, .L324+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L258
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L258
	ldr	r2, .L324+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L258
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L324+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L257
.L325:
	.align	2
.L324:
	.word	fry
	.word	alien
	.word	collision
	.word	leela
	.word	lifeCounter
	.word	characterChoice
	.word	life5
	.word	isLost
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.size	updateLives, .-updateLives
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
	mov	ip, #25
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L339
	ldrh	r3, [r2]
	ldr	r0, .L339+4
	ldr	r4, .L339+8
	add	r3, r3, #1
	ldr	r1, .L339+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	r5, r4
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	add	r6, r4, #280
.L328:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L327:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L328
	ldr	r5, .L339+16
	ldr	r3, [r5, #52]
	cmp	r3, #200
	bgt	.L338
.L329:
	ldr	r3, [r5, #52]
	add	r3, r3, #1
	str	r3, [r5, #52]
	mov	r8, #0
	bl	updateLives
	ldr	r5, .L339+20
	ldr	r7, .L339+24
.L331:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	ip, [r4, #16]
	ldr	r0, [r5]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #40
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	streq	r8, [r4, #24]
	add	r4, r4, #28
	streq	r8, [r5, #16]
	cmp	r4, r6
	bne	.L331
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L338:
	mov	r3, #1
	add	r0, r5, #28
	str	r3, [r5, #48]
	bl	updateTreasure
	b	.L329
.L340:
	.align	2
.L339:
	.word	hOff
	.word	vOff
	.word	bullets
	.word	hideSprites
	.word	treasure
	.word	alien
	.word	collision
	.size	updatePlanet1, .-updatePlanet1
	.align	2
	.global	updatePlanet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlanet2, %function
updatePlanet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #25
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L354
	ldrh	r3, [r2]
	ldr	r0, .L354+4
	ldr	r4, .L354+8
	add	r3, r3, #1
	ldr	r1, .L354+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	r5, r4
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	add	r6, r4, #280
.L343:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L342:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L343
	ldr	r5, .L354+16
	bl	updateLives
	ldr	r3, [r5, #80]
	cmp	r3, #200
	bgt	.L353
.L344:
	mov	r8, #0
	ldr	r3, [r5, #80]
	add	r3, r3, #1
	str	r3, [r5, #80]
	ldr	r7, .L354+20
	ldr	r5, .L354+24
.L346:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	ip, [r4, #16]
	ldr	r0, [r5]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #40
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	streq	r8, [r4, #24]
	add	r4, r4, #28
	streq	r8, [r5, #16]
	cmp	r4, r6
	bne	.L346
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L353:
	mov	r3, #1
	add	r0, r5, #56
	str	r3, [r5, #76]
	bl	updateTreasure
	b	.L344
.L355:
	.align	2
.L354:
	.word	hOff
	.word	vOff
	.word	bullets
	.word	hideSprites
	.word	treasure
	.word	collision
	.word	alien
	.size	updatePlanet2, .-updatePlanet2
	.align	2
	.global	updatePlanet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlanet3, %function
updatePlanet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #45
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L369
	ldrh	r3, [r2]
	ldr	r0, .L369+4
	ldr	r4, .L369+8
	add	r3, r3, #1
	ldr	r1, .L369+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	r5, r4
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	add	r6, r4, #280
.L358:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L357:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L358
	ldr	r5, .L369+16
	bl	updateLives
	ldr	r3, [r5, #108]
	cmp	r3, #200
	bgt	.L368
.L359:
	mov	r8, #0
	ldr	r3, [r5, #108]
	add	r3, r3, #1
	str	r3, [r5, #108]
	ldr	r7, .L369+20
	ldr	r5, .L369+24
.L361:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	ip, [r4, #16]
	ldr	r0, [r5]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #40
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	streq	r8, [r4, #24]
	add	r4, r4, #28
	streq	r8, [r5, #16]
	cmp	r4, r6
	bne	.L361
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L368:
	mov	r3, #1
	add	r0, r5, #84
	str	r3, [r5, #104]
	bl	updateTreasure
	b	.L359
.L370:
	.align	2
.L369:
	.word	hOff
	.word	vOff
	.word	bullets
	.word	hideSprites
	.word	treasure
	.word	collision
	.word	alien
	.size	updatePlanet3, .-updatePlanet3
	.align	2
	.global	updatePlanet4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlanet4, %function
updatePlanet4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #45
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L384
	ldrh	r3, [r2]
	ldr	r0, .L384+4
	ldr	r4, .L384+8
	add	r3, r3, #1
	ldr	r1, .L384+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	r5, r4
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	add	r6, r4, #280
.L373:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L372:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L373
	ldr	r5, .L384+16
	bl	updateLives
	ldr	r3, [r5, #136]
	cmp	r3, #200
	bgt	.L383
.L374:
	mov	r8, #0
	ldr	r3, [r5, #136]
	add	r3, r3, #1
	str	r3, [r5, #136]
	ldr	r7, .L384+20
	ldr	r5, .L384+24
.L376:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	ip, [r4, #16]
	ldr	r0, [r5]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #40
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	streq	r8, [r4, #24]
	add	r4, r4, #28
	streq	r8, [r5, #16]
	cmp	r4, r6
	bne	.L376
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L383:
	mov	r3, #1
	add	r0, r5, #112
	str	r3, [r5, #132]
	bl	updateTreasure
	b	.L374
.L385:
	.align	2
.L384:
	.word	hOff
	.word	vOff
	.word	bullets
	.word	hideSprites
	.word	treasure
	.word	collision
	.word	alien
	.size	updatePlanet4, .-updatePlanet4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	characterChoice,4,4
	.comm	prevTreasureNum,4,4
	.comm	treasureNum,4,4
	.comm	isLost,4,4
	.comm	prevState,4,4
	.comm	life4Counter,4,4
	.comm	life3Counter,4,4
	.comm	life2Counter,4,4
	.comm	life1Counter,4,4
	.comm	lifeCounter,4,4
	.comm	curLocation,4,4
	.comm	treasure,140,4
	.comm	treasureP1,28,4
	.comm	bullet,28,4
	.comm	bullets,280,4
	.comm	blocks,60,4
	.comm	life5,20,4
	.comm	life4,20,4
	.comm	life3,20,4
	.comm	life2,20,4
	.comm	life1,20,4
	.comm	p4,28,4
	.comm	p3,28,4
	.comm	p2,28,4
	.comm	p1,28,4
	.comm	alien,44,4
	.comm	spaceship,28,4
	.comm	leela,48,4
	.comm	fry,48,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
