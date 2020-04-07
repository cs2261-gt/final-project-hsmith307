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
	.global	initSpaceship
	.arch armv4t
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
	ldr	r3, .L3
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	bx	lr
.L4:
	.align	2
.L3:
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
	mov	r4, #20
	mov	lr, #90
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L7
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
.L8:
	.align	2
.L7:
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
	mov	r4, #20
	mov	lr, #90
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L11
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
.L12:
	.align	2
.L11:
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
	ldr	r3, .L15
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
.L16:
	.align	2
.L15:
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
	ldr	r3, .L21
	add	r1, r3, ip
.L18:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L18
	ldr	lr, [sp], #4
	bx	lr
.L22:
	.align	2
.L21:
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
	ldr	r1, .L25
	str	r6, [r1]
	ldr	r1, .L25+4
	str	r2, [r1]
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, .L25+8
	str	r5, [r1]
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, .L25+12
	str	r4, [r1]
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, .L25+16
	str	lr, [r1]
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, .L25+20
	pop	{r4, r5, r6, lr}
	str	r2, [r1, #4]
	str	r0, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	ip, [r1]
	bx	lr
.L26:
	.align	2
.L25:
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
	@ link register save eliminated.
	b	initLives
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
	ldr	r1, .L32
	ldr	r3, .L32+4
	ldr	ip, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, ip
	add	r1, r1, #20
	add	ip, r3, #280
.L29:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L29
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	str	lr, [sp, #-4]!
	mov	r1, #0
	mov	lr, #220
	mov	r2, #32
	mov	ip, #100
	mov	r0, #1
	ldr	r3, .L36
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	treasureP1
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
	ldr	r3, .L39
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r3, .L42
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L45
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r3, .L48
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, .L56+4
	cmp	r2, r1
	stmib	r3, {r0, ip}
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	lr, [r3]
	str	ip, [r3, #12]
	beq	.L55
	cmp	r2, #0
	bne	.L53
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L56+8
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
.L53:
	mov	r3, #200
	mov	r7, #90
	mov	ip, #20
	mov	r1, #32
	mov	lr, #1
	mov	r6, #100
	mov	r4, #120
	mov	r5, #180
	ldr	r0, .L56+12
	ldr	r2, .L56+16
	str	r3, [r0]
	stm	r2, {r3, r7}
	ldr	r3, .L56+20
	str	ip, [r0, #4]
	str	ip, [r3]
	ldr	ip, .L56+24
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
	ldr	r4, .L56+28
	mov	r0, #3
	ldr	r2, .L56+32
	ldr	r1, .L56+36
	str	lr, [ip, #16]
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L56+40
	ldr	r1, .L56+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r0, .L56+48
	ldr	r1, .L56+52
	ldr	r2, .L56+56
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L55:
	mov	r1, #0
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L56+60
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
	b	.L53
.L57:
	.align	2
.L56:
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
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	mov	ip, #60
	mov	lr, #80
	mov	r0, #1
	mov	r2, #32
	ldr	r3, .L68+4
	add	r1, r3, ip
.L59:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L59
	ldr	r2, .L68+8
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	r4, #1
	ldr	r6, .L68+12
	ldr	r1, [r6, #12]
	ldr	lr, [r6]
	ldr	ip, [r6, #4]
	add	lr, lr, r1
	add	ip, ip, #20
	add	r1, r2, #280
.L60:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L60
	mov	lr, #203
	mov	ip, #120
	mov	r3, #1
	ldr	r0, .L68+16
	str	lr, [r0]
	str	r4, [r0, #8]
	str	ip, [r0, #4]
.L61:
	str	r3, [r2, #12]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L61
	mov	r1, #0
	mov	ip, #64
	mov	r7, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r2, .L68+20
	ldr	r0, [r2]
	ldr	r2, .L68+24
	str	r1, [r2, #16]
	ldr	r2, .L68+28
	str	r1, [r2, #16]
	ldr	r2, .L68+32
	str	r1, [r2, #16]
	ldr	r2, .L68+36
	str	r1, [r2, #16]
	ldr	r2, .L68+40
	str	r1, [r2, #16]
	ldr	r2, .L68+44
	str	r1, [r2]
	ldr	r2, .L68+48
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
	beq	.L58
	cmp	r0, #0
	ldreq	r2, .L68+52
	streq	r3, [r2, #16]
.L58:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	hideSprites
	.word	blocks
	.word	bullets
	.word	leela
	.word	treasureP1
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L75
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r1, #1
	mov	ip, #64
	mov	r6, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r3, .L75+4
	ldr	r0, [r3]
	ldr	r3, .L75+8
	str	r2, [r3, #16]
	ldr	r3, .L75+12
	str	r2, [r3, #16]
	ldr	r3, .L75+16
	str	r2, [r3, #16]
	ldr	r3, .L75+20
	str	r2, [r3, #16]
	ldr	r3, .L75+24
	str	r2, [r3, #16]
	ldr	r3, .L75+28
	str	r2, [r3, #32]
	ldr	r2, .L75+32
	cmp	r0, r1
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #28]
	str	lr, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r2]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	beq	.L74
	cmp	r0, #0
	ldreq	r3, .L75+36
	pop	{r4, r5, r6, lr}
	streq	r1, [r3, #16]
	bx	lr
.L74:
	ldr	r3, .L75+40
	pop	{r4, r5, r6, lr}
	str	r0, [r3, #16]
	bx	lr
.L76:
	.align	2
.L75:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	curLocation
	.word	fry
	.word	leela
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L82
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r1, #1
	mov	lr, #64
	mov	ip, #2
	mov	r6, #170
	mov	r5, #90
	mov	r4, #4
	ldr	r3, .L82+4
	ldr	r0, [r3]
	ldr	r3, .L82+8
	str	r2, [r3, #16]
	ldr	r3, .L82+12
	str	r2, [r3, #16]
	ldr	r3, .L82+16
	str	r2, [r3, #16]
	ldr	r3, .L82+20
	str	r2, [r3, #16]
	ldr	r3, .L82+24
	str	r2, [r3, #16]
	ldr	r3, .L82+28
	str	r2, [r3, #32]
	ldr	r2, .L82+32
	cmp	r0, r1
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	lr, [r3, #12]
	str	lr, [r3, #8]
	str	ip, [r3, #28]
	str	ip, [r2]
	beq	.L81
	cmp	r0, #0
	ldreq	r3, .L82+36
	pop	{r4, r5, r6, lr}
	streq	r1, [r3, #16]
	bx	lr
.L81:
	ldr	r3, .L82+40
	pop	{r4, r5, r6, lr}
	str	r0, [r3, #16]
	bx	lr
.L83:
	.align	2
.L82:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	curLocation
	.word	fry
	.word	leela
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r1, #1
	mov	ip, #64
	mov	r7, #170
	mov	r6, #90
	mov	r5, #2
	mov	r4, #4
	mov	lr, #3
	ldr	r3, .L89+4
	ldr	r0, [r3]
	ldr	r3, .L89+8
	str	r2, [r3, #16]
	ldr	r3, .L89+12
	str	r2, [r3, #16]
	ldr	r3, .L89+16
	str	r2, [r3, #16]
	ldr	r3, .L89+20
	str	r2, [r3, #16]
	ldr	r3, .L89+24
	str	r2, [r3, #16]
	ldr	r3, .L89+28
	str	r2, [r3, #32]
	ldr	r2, .L89+32
	cmp	r0, r1
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #28]
	str	r4, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	str	lr, [r2]
	beq	.L88
	cmp	r0, #0
	ldreq	r3, .L89+36
	pop	{r4, r5, r6, r7, r8, lr}
	streq	r1, [r3, #16]
	bx	lr
.L88:
	ldr	r3, .L89+40
	pop	{r4, r5, r6, r7, r8, lr}
	str	r0, [r3, #16]
	bx	lr
.L90:
	.align	2
.L89:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	curLocation
	.word	fry
	.word	leela
	.size	initPlanet4, .-initPlanet4
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
	ldr	r3, .L100
	ldr	r2, .L100+4
	ldr	r1, .L100+8
	ldm	r2, {r0, ip}
	ldr	lr, [r2, #12]
	ldr	r5, [r3]
	ldr	r2, [r3, #12]
	ldr	r4, [r3, #4]
	ldr	r3, .L100+12
	ldr	r1, [r1]
	add	lr, lr, r0
	add	ip, ip, #10
	add	r5, r5, r2
	add	r4, r4, #20
	add	r0, r3, #280
.L94:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L96
	cmp	r1, #1
	streq	r5, [r3]
	streq	r4, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L96
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r6, [r3, #24]
.L96:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L94
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	.align	2
.L100:
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
	ldr	r4, .L111
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L111+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L103
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L109
.L103:
	ldr	r3, .L111+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L107
	ldr	r3, .L111+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L110
.L107:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L109:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L103
.L110:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L112:
	.align	2
.L111:
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
	ldr	r4, .L121
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L121+4
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	add	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L114
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L114:
	ldr	r3, .L121+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L118
	ldr	r3, .L121+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L120
.L118:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L120:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L122:
	.align	2
.L121:
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
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #20]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L125
	ldr	r1, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r1
	sub	r1, r3, #1
	cmp	r1, #237
	bls	.L129
.L125:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L129:
	ldr	r1, [r0, #8]
	add	r2, r1, r2
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
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
	ldr	r4, .L162
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	ldr	r6, .L162+4
	sub	r3, r3, r2
	sub	sp, sp, #20
	ldr	r2, .L162+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L156
.L131:
	cmp	r5, #0
	beq	.L157
.L130:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L157:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L162+12
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldm	r6, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r7, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r7, .L162+16
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L130
	mov	r2, r5
	ldr	r1, .L162+20
	ldr	r3, .L162+24
	str	r5, [r4, #20]
	str	r5, [r6, #16]
	str	r5, [r1, #16]
	str	r5, [r1, #36]
	str	r5, [r1, #56]
	add	r1, r3, #280
.L142:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L142
	ldr	r3, .L162+28
	ldr	r1, .L162+32
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r0, .L162+36
	add	r3, r3, #1
	cmp	r1, #0
	str	r3, [r0]
	bne	.L143
	ldr	r3, .L162+40
	str	r1, [r3, #16]
	b	.L130
.L156:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r5, .L162+44
	ldr	lr, [r4, #4]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldm	r5, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r7, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r7, .L162+16
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L158
	mov	r1, #0
	ldr	r0, .L162+20
	ldr	r3, .L162+24
	mov	r2, r1
	str	r1, [r4, #20]
	str	r1, [r5, #16]
	str	r1, [r0, #16]
	str	r1, [r0, #36]
	str	r1, [r0, #56]
	add	r1, r3, #280
.L133:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L133
	ldr	r3, .L162+28
	ldr	r1, .L162+32
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r0, .L162+36
	add	r3, r3, #1
	cmp	r1, #0
	str	r3, [r0]
	bne	.L134
	ldr	r3, .L162+40
	ldr	r5, [r6]
	str	r1, [r3, #16]
	b	.L131
.L158:
	ldr	r5, [r6]
	b	.L131
.L143:
	cmp	r1, #1
	ldreq	r3, .L162+48
	streq	r2, [r3, #16]
	beq	.L130
.L159:
	cmp	r1, #2
	ldreq	r3, .L162+52
	streq	r2, [r3, #16]
	beq	.L130
	cmp	r1, #3
	ldreq	r3, .L162+56
	streq	r2, [r3, #16]
	b	.L130
.L134:
	cmp	r1, #1
	ldreq	r3, .L162+48
	ldreq	r5, [r6]
	streq	r2, [r3, #16]
	beq	.L131
.L160:
	cmp	r1, #2
	ldreq	r3, .L162+52
	ldreq	r5, [r6]
	streq	r2, [r3, #16]
	beq	.L131
.L161:
	cmp	r1, #3
	ldreq	r3, .L162+56
	ldr	r5, [r6]
	streq	r2, [r3, #16]
	b	.L131
.L163:
	.align	2
.L162:
	.word	treasureP1
	.word	characterChoice
	.word	hideSprites
	.word	fry
	.word	collision
	.word	blocks
	.word	bullets
	.word	prevTreasureNum
	.word	curLocation
	.word	treasureNum
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
	ldr	r3, .L225
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, lr}
	bne	.L165
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L225+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L165:
	ldr	r2, .L225+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	bne	.L166
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, .L225+4
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #4]
	lsl	r3, r3, #3
	strh	r1, [r0, #90]	@ movhi
	strh	ip, [r0, #88]	@ movhi
	strh	r3, [r0, #92]	@ movhi
.L166:
	ldr	r3, .L225+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	bne	.L167
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L225+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #50]	@ movhi
	strh	ip, [r0, #48]	@ movhi
	strh	r2, [r0, #52]	@ movhi
.L167:
	ldr	r1, .L225+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	beq	.L168
	mov	r0, #152
	ldr	r2, [r1]
	ldr	r3, .L225+4
	ldr	r1, [r1, #4]
	orr	r2, r2, #16384
	strh	r2, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
.L168:
	ldr	r3, .L225+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L169
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L225+4
	orr	r2, r2, #16384
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #68]	@ movhi
.L169:
	ldr	r3, .L225+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L170
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L225+4
	orr	r2, r2, #16384
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	strh	r1, [r3, #76]	@ movhi
.L170:
	ldr	r3, .L225+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L171
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L225+4
	orr	r2, r2, #16384
	strh	r2, [r3, #130]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	strh	r1, [r3, #132]	@ movhi
.L171:
	ldr	r3, .L225+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L172
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L225+4
	orr	r2, r2, #16384
	strh	r2, [r3, #138]	@ movhi
	strh	r0, [r3, #136]	@ movhi
	strh	r1, [r3, #140]	@ movhi
.L172:
	mov	r4, #148
	ldr	r3, .L225+36
	ldr	r1, .L225+4
	ldr	lr, .L225+40
	add	r0, r3, #60
.L174:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #20
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	cmp	r3, r0
	bne	.L174
	mov	lr, #154
	ldr	r3, .L225+44
	ldr	r1, .L225+4
	add	r0, r3, #280
.L176:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #28
	strhne	lr, [r1, #116]	@ movhi
	strhne	ip, [r1, #112]	@ movhi
	strhne	r2, [r1, #114]	@ movhi
	cmp	r3, r0
	bne	.L176
	ldr	r2, .L225+48
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L177
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #144
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L225+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L177:
	ldr	r2, .L225+52
	ldr	r3, [r2, #20]
	cmp	r3, #0
	beq	.L178
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #156
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L225+4
	strh	r3, [r2, #106]	@ movhi
	strh	r0, [r2, #104]	@ movhi
	strh	r1, [r2, #108]	@ movhi
.L178:
	ldr	r2, .L225+56
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L179
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #16
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L225+4
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L179:
	ldr	r2, .L225+60
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #20
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L225+4
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L180:
	ldr	r2, .L225+64
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L181
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #24
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L225+4
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L181:
	ldr	r2, .L225+68
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L182
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #28
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L225+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L182:
	ldr	r3, .L225+72
	mov	lr, pc
	bx	r3
	ldr	r4, .L225+76
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L225+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L225+80
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L225+84
	ldrh	r3, [r3]
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L226:
	.align	2
.L225:
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
	.word	treasureP1
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
	ldr	r2, .L233
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L233+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L233+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L233+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L233+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L233+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L233+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L233+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L233+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L234:
	.align	2
.L233:
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
	ldr	r3, .L239
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r0, .L239+4
	ldr	r3, .L239+8
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	r0, .L239+12
	ldr	lr, .L239+16
	ldr	ip, .L239+20
	ldr	r3, .L239+24
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [ip, #20]
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L236:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L236
	pop	{r4, lr}
	b	drawGame
.L240:
	.align	2
.L239:
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
	ldr	r5, .L313
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r4, .L313+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L313+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L242
.L244:
	ldr	r0, [r4]
.L243:
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
	beq	.L245
.L247:
	ldr	r0, [r4]
.L246:
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
	beq	.L248
.L250:
	ldr	r0, [r4]
.L249:
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
	beq	.L251
.L253:
	ldr	r0, [r4]
.L252:
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
	beq	.L254
.L256:
	ldr	r0, [r4]
.L255:
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
	beq	.L311
.L257:
	ldr	r5, .L313+12
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
	beq	.L258
.L260:
	ldr	r0, [r4]
.L259:
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
	beq	.L261
.L263:
	ldr	r0, [r4]
.L262:
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
	beq	.L264
.L266:
	ldr	r0, [r4]
.L265:
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
	beq	.L267
.L269:
	ldr	r0, [r4]
.L268:
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
	beq	.L270
.L272:
	ldr	r0, [r4]
.L271:
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
	beq	.L312
.L241:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L242:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L244
	ldr	ip, .L313+16
	ldr	r1, .L313+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L244
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L313+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L243
.L312:
	ldr	r3, .L313+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L241
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L241
	ldr	r3, .L313+20
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r2, .L313+28
	streq	r3, [r2]
	b	.L241
.L270:
	ldr	r3, .L313+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L272
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L272
	ldr	r2, .L313+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L272
	mov	r2, #190
	mov	r1, #0
	mov	ip, #5
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L313+32
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L271
.L267:
	ldr	r3, .L313+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L269
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L269
	ldr	r2, .L313+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L269
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L313+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L268
.L264:
	ldr	r3, .L313+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L266
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L266
	ldr	r2, .L313+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L266
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L313+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L265
.L261:
	ldr	r3, .L313+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L263
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L263
	ldr	r2, .L313+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L263
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L313+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L262
.L258:
	ldr	r2, .L313+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L260
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L260
	ldr	r1, .L313+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L260
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L313+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L259
.L311:
	ldr	r3, .L313+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L257
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L257
	ldr	r3, .L313+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r3, .L313+28
	streq	r0, [r3]
	b	.L257
.L254:
	ldr	r3, .L313+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L256
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L256
	ldr	r2, .L313+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L256
	mov	r1, #190
	mov	ip, #5
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L313+32
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L255
.L251:
	ldr	r3, .L313+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L253
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L253
	ldr	r2, .L313+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L253
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L313+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L252
.L248:
	ldr	r3, .L313+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L250
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L250
	ldr	r2, .L313+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L250
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L313+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L249
.L245:
	ldr	r3, .L313+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L247
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L247
	ldr	r2, .L313+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L247
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L313+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L246
.L314:
	.align	2
.L313:
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
	ldr	r2, .L332
	ldrh	r3, [r2]
	push	{r4, r5, r6, lr}
	ldr	r0, .L332+4
	ldr	r4, .L332+8
	add	r3, r3, #1
	ldr	r1, .L332+12
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L332+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L316
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L316:
	ldr	r5, .L332+20
	bl	updateLeela
	ldr	r3, [r5, #24]
	ldr	r2, .L332+24
	cmp	r3, r2
	bgt	.L331
.L318:
	add	r3, r3, #1
	str	r3, [r5, #24]
	mov	r5, #0
	mov	r6, r5
	bl	updateLives
	ldr	r3, .L332+28
	ldr	r0, [r4]
	ldr	lr, [r4, #16]
	add	ip, r3, #280
.L320:
	ldr	r2, [r3]
	ldr	r1, [r3, #20]
	add	r2, r2, r1
	cmp	r0, r2
	bne	.L319
	cmp	lr, #0
	movne	r5, #1
	movne	lr, #0
	strne	r6, [r3, #24]
.L319:
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L320
	ldr	r3, [r4, #12]
	cmp	r5, #0
	strne	lr, [r4, #16]
	adds	r0, r0, r3
	streq	r0, [r4, #16]
	pop	{r4, r5, r6, lr}
	b	drawGame
.L331:
	mov	r3, #1
	str	r3, [r5, #20]
	bl	updateTreasure
	ldr	r3, [r5, #24]
	b	.L318
.L333:
	.align	2
.L332:
	.word	hOff
	.word	vOff
	.word	alien
	.word	hideSprites
	.word	238609294
	.word	treasureP1
	.word	270
	.word	bullets
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
	ldr	r2, .L338
	ldrh	r3, [r2]
	ldr	r0, .L338+4
	push	{r4, lr}
	add	r3, r3, #1
	ldr	r1, .L338+8
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	ldr	r1, .L338+12
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L338+16
	rsb	r3, r3, r3, lsl #15
	ldr	r0, [r1]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r1, #20]
	add	r3, r3, ip
	sub	r2, r0, lr
	cmp	ip, r3, ror #1
	str	r2, [r1]
	bcc	.L335
	add	r2, r1, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r1, #36]
	strge	r3, [r1, #36]
.L335:
	bl	updateLeela
	bl	updateLives
	pop	{r4, lr}
	b	drawGame
.L339:
	.align	2
.L338:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	alien
	.word	238609294
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
	ldr	r2, .L345
	ldrh	r3, [r2]
	push	{r4, lr}
	ldr	r0, .L345+4
	ldr	r4, .L345+8
	add	r3, r3, #1
	ldr	r1, .L345+12
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L345+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L341
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L341:
	bl	updateLeela
	bl	updateLives
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	pop	{r4, lr}
	b	drawGame
.L346:
	.align	2
.L345:
	.word	hOff
	.word	vOff
	.word	alien
	.word	hideSprites
	.word	238609294
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
	ldr	r2, .L354
	ldrh	r3, [r2]
	ldr	r0, .L354+4
	push	{r4, lr}
	add	r3, r3, #1
	ldr	r1, .L354+8
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r1, .L354+12
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L354+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	bcc	.L348
	add	r2, r1, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r1, #36]
	strge	r3, [r1, #36]
.L348:
	ldr	r4, .L354+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L354+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L350
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L350:
	bl	updateLeela
	bl	updateLives
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	pop	{r4, lr}
	b	drawGame
.L355:
	.align	2
.L354:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	fry
	.word	238609294
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
