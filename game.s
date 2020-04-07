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
	ldr	r1, .L35
	ldr	r3, .L35+4
	ldr	ip, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, ip
	add	r1, r1, #20
	add	ip, r3, #280
.L32:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L32
	pop	{r4, lr}
	bx	lr
.L36:
	.align	2
.L35:
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
	ldr	lr, .L41
	mov	r6, r2
	mov	r3, lr
	mov	r5, #220
	mov	r4, #100
	mov	r1, #0
	mov	r0, #32
.L38:
	add	ip, lr, r2, lsl #5
	add	r2, r2, #1
	cmp	r2, #5
	str	r5, [r3, #32]
	str	r4, [r3, #36]
	str	r1, [r3, #52]
	str	r0, [r3, #48]
	str	r0, [r3, #44]
	str	r1, [ip, #24]
	add	r3, r3, #32
	str	r6, [r3, #8]
	str	r1, [r3, #28]
	bne	.L38
	pop	{r4, r5, r6, lr}
	bx	lr
.L42:
	.align	2
.L41:
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
	ldr	r3, .L44
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L47
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L48:
	.align	2
.L47:
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
	ldr	r3, .L61
	ldr	r2, [r3]
	ldr	r3, .L61+4
	cmp	r2, r1
	stmib	r3, {r0, ip}
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	lr, [r3]
	str	ip, [r3, #12]
	beq	.L60
	cmp	r2, #0
	bne	.L58
	mov	r4, #3
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L61+8
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
.L58:
	mov	r3, #200
	mov	r7, #90
	mov	ip, #20
	mov	r1, #32
	mov	lr, #1
	mov	r6, #100
	mov	r4, #120
	mov	r5, #180
	ldr	r0, .L61+12
	ldr	r2, .L61+16
	str	r3, [r0]
	stm	r2, {r3, r7}
	ldr	r3, .L61+20
	str	ip, [r0, #4]
	str	ip, [r3]
	ldr	ip, .L61+24
	str	lr, [r0, #16]
	str	lr, [r2, #16]
	str	lr, [r3, #16]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r4, [ip, #4]
	str	r6, [r3, #4]
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	str	r1, [r2, #12]
	str	r1, [r2, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	ldr	r4, .L61+28
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L61+32
	ldr	r1, .L61+36
	str	lr, [ip, #16]
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L61+40
	ldr	r1, .L61+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	ip, .L61+48
	ldr	r0, .L61+52
	ldr	r1, .L61+56
	ldr	r2, .L61+60
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L60:
	mov	r1, #0
	mov	r4, #3
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L61+64
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
	b	.L58
.L62:
	.align	2
.L61:
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
	.word	isWon
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
	ldr	r3, .L73
	mov	lr, pc
	bx	r3
	mov	ip, #60
	mov	lr, #80
	mov	r0, #1
	mov	r2, #32
	ldr	r3, .L73+4
	add	r1, r3, ip
.L64:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L64
	ldr	r2, .L73+8
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	r4, #1
	ldr	r6, .L73+12
	ldr	r1, [r6, #12]
	ldr	lr, [r6]
	ldr	ip, [r6, #4]
	add	lr, lr, r1
	add	ip, ip, #20
	add	r1, r2, #280
.L65:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L65
	mov	lr, #203
	mov	ip, #120
	mov	r3, #1
	ldr	r0, .L73+16
	str	lr, [r0, #32]
	str	r4, [r0, #40]
	str	ip, [r0, #36]
.L66:
	str	r3, [r2, #12]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L66
	mov	r1, #0
	mov	ip, #64
	mov	r7, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r2, .L73+20
	ldr	r0, [r2]
	ldr	r2, .L73+24
	str	r1, [r2, #16]
	ldr	r2, .L73+28
	str	r1, [r2, #16]
	ldr	r2, .L73+32
	str	r1, [r2, #16]
	ldr	r2, .L73+36
	str	r1, [r2, #16]
	ldr	r2, .L73+40
	str	r1, [r2, #16]
	ldr	r2, .L73+44
	str	r1, [r2]
	ldr	r2, .L73+48
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
	beq	.L63
	cmp	r0, #0
	ldreq	r2, .L73+52
	streq	r3, [r2, #16]
.L63:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L74:
	.align	2
.L73:
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
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #8
	mov	r1, #1
	ldr	r6, .L81+4
	ldr	r0, .L81+8
	str	r3, [r6, #16]
	ldr	r6, .L81+12
	ldr	r5, .L81+16
	str	r3, [r0, #16]
	str	r3, [r6, #16]
	ldr	r0, .L81+20
	ldr	r6, .L81+24
	ldr	r4, [r5, #12]
	str	r3, [r0, #16]
	mov	lr, r3
	ldr	ip, [r5]
	ldr	r0, [r5, #4]
	str	r3, [r6, #16]
	ldr	r3, .L81+28
	add	ip, ip, r4
	add	r0, r0, #20
	add	r4, r3, #280
.L76:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r4
	bne	.L76
	mov	ip, #2
	mov	r0, #64
	mov	r7, #170
	mov	r6, #90
	mov	r4, #4
	ldr	r3, .L81+32
	ldr	r2, [r3]
	ldr	r3, .L81+36
	str	ip, [r3, #28]
	ldr	ip, .L81+40
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
	beq	.L75
	cmp	r2, #0
	ldreq	r3, .L81+44
	streq	r1, [r3, #16]
.L75:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L82:
	.align	2
.L81:
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
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #8
	mov	r1, #1
	ldr	r6, .L89+4
	ldr	r0, .L89+8
	str	r3, [r6, #16]
	ldr	r6, .L89+12
	ldr	r5, .L89+16
	str	r3, [r0, #16]
	str	r3, [r6, #16]
	ldr	r0, .L89+20
	ldr	r6, .L89+24
	ldr	r4, [r5, #12]
	str	r3, [r0, #16]
	mov	lr, r3
	ldr	ip, [r5]
	ldr	r0, [r5, #4]
	str	r3, [r6, #16]
	ldr	r3, .L89+28
	add	ip, ip, r4
	add	r0, r0, #20
	add	r4, r3, #280
.L84:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r4
	bne	.L84
	mov	ip, #64
	mov	r0, #2
	mov	r7, #170
	mov	r6, #90
	mov	r4, #4
	ldr	r3, .L89+32
	ldr	r2, [r3]
	ldr	r3, .L89+36
	str	lr, [r3, #32]
	ldr	lr, .L89+40
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
	beq	.L83
	cmp	r2, #0
	ldreq	r3, .L89+44
	streq	r1, [r3, #16]
.L83:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L90:
	.align	2
.L89:
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
	ldr	r3, .L97
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
	ldr	r3, .L97+4
	str	r1, [r3, #16]
	ldr	r3, .L97+8
	str	r1, [r3, #16]
	ldr	r3, .L97+12
	str	r1, [r3, #16]
	ldr	r3, .L97+16
	str	r1, [r3, #16]
	ldr	r3, .L97+20
	ldr	r5, .L97+24
	str	r1, [r3, #16]
	ldr	r3, .L97+28
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
	ldr	r3, .L97+32
	mov	ip, lr
	add	r0, r0, r7
	add	r1, r1, #20
	add	lr, r3, #280
.L92:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, lr
	bne	.L92
	mov	r1, #3
	ldr	r3, .L97+36
	ldr	r3, [r3]
	ldr	r2, .L97+40
	cmp	r3, #1
	str	r1, [r2]
	streq	r3, [r5, #16]
	beq	.L91
	cmp	r3, #0
	ldreq	r3, .L97+44
	streq	ip, [r3, #16]
.L91:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r1, .L103
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L103+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L100
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L100:
	ldr	r2, [r1, #12]
	adds	r3, r3, r2
	streq	r3, [r1, #16]
	bx	lr
.L104:
	.align	2
.L103:
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
	ldr	r3, .L114
	ldr	r2, .L114+4
	ldr	r1, .L114+8
	ldm	r2, {r0, ip}
	ldr	lr, [r2, #12]
	ldr	r5, [r3]
	ldr	r2, [r3, #12]
	ldr	r4, [r3, #4]
	ldr	r3, .L114+12
	ldr	r1, [r1]
	add	lr, lr, r0
	add	ip, ip, #20
	add	r5, r5, r2
	add	r4, r4, #20
	add	r0, r3, #280
.L108:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L110
	cmp	r1, #1
	streq	r5, [r3]
	streq	r4, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L110
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r6, [r3, #24]
.L110:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L108
	pop	{r4, r5, r6, lr}
	bx	lr
.L115:
	.align	2
.L114:
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
	ldr	r4, .L125
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L125+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L117
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L123
.L117:
	ldr	r3, .L125+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L121
	ldr	r3, .L125+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L124
.L121:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L123:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L117
.L124:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	r4, .L135
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L135+4
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	add	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L128
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L128:
	ldr	r3, .L135+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L132
	ldr	r3, .L135+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L134
.L132:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L134:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L136:
	.align	2
.L135:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, [r0]
	ldr	r2, [r0, #8]
	ldr	r6, .L157
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #16
	ldr	r3, .L157+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L155
.L140:
	cmp	r5, #0
	beq	.L156
.L139:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L156:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L157+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldm	r6, {r0, r1}
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L157+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L151
	mov	r0, #1
	mov	r1, r5
	ldr	r2, .L157+16
	ldr	r3, .L157+20
	str	r5, [r6, #16]
	str	r5, [r4, #20]
	str	r0, [r4, #28]
	str	r5, [r2, #16]
	str	r5, [r2, #36]
	str	r5, [r2, #56]
	add	r2, r3, #280
.L150:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L150
.L151:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L139
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L139
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L139
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L157+24
	streq	r3, [r2]
	b	.L139
.L155:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L157+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldm	r7, {r0, r1}
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L157+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L143
	ldr	r2, [r4, #28]
	cmp	r2, #0
	bne	.L143
	ldr	r0, .L157+16
	ldr	r3, .L157+20
	str	r2, [r4, #20]
	str	r5, [r4, #28]
	mov	r1, r2
	str	r2, [r7, #16]
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L144:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L144
.L143:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L140
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L140
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L140
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L157+24
	streq	r3, [r2]
	b	.L140
.L158:
	.align	2
.L157:
	.word	characterChoice
	.word	hideSprites
	.word	fry
	.word	collision
	.word	blocks
	.word	bullets
	.word	isWon
	.word	leela
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
	ldr	r3, .L224
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L222
	ldr	r2, .L224+4
.L160:
	ldr	r1, .L224+8
	ldr	r0, [r3, #32]
	ldr	ip, [r1, #16]
	add	r0, r0, #1
	cmp	ip, #1
	str	r0, [r3, #32]
	bne	.L161
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
.L161:
	ldr	r3, .L224+12
	ldr	r0, [r1, #32]
	ldr	ip, [r3, #16]
	add	r0, r0, #1
	cmp	ip, #1
	str	r0, [r1, #32]
	bne	.L162
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
.L162:
	ldr	r0, .L224+16
	ldr	r1, [r3, #32]
	ldr	ip, [r0, #16]
	add	r1, r1, #1
	cmp	ip, #0
	str	r1, [r3, #32]
	beq	.L163
	mov	r1, #152
	ldr	r3, [r0]
	ldr	r0, [r0, #4]
	orr	r3, r3, #16384
	strh	r3, [r2, #58]	@ movhi
	strh	r0, [r2, #56]	@ movhi
	strh	r1, [r2, #60]	@ movhi
.L163:
	ldr	r3, .L224+20
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L164
	mov	r0, #152
	ldm	r3, {r1, ip}
	orr	r3, r1, #16384
	strh	r3, [r2, #66]	@ movhi
	strh	ip, [r2, #64]	@ movhi
	strh	r0, [r2, #68]	@ movhi
.L164:
	ldr	r3, .L224+24
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L165
	mov	r0, #152
	ldm	r3, {r1, ip}
	orr	r3, r1, #16384
	strh	r3, [r2, #74]	@ movhi
	strh	ip, [r2, #72]	@ movhi
	strh	r0, [r2, #76]	@ movhi
.L165:
	ldr	r3, .L224+28
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L166
	mov	r0, #152
	ldm	r3, {r1, ip}
	orr	r3, r1, #16384
	strh	r3, [r2, #130]	@ movhi
	strh	ip, [r2, #128]	@ movhi
	strh	r0, [r2, #132]	@ movhi
.L166:
	ldr	r3, .L224+32
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L167
	mov	r0, #152
	ldm	r3, {r1, ip}
	orr	r3, r1, #16384
	strh	r3, [r2, #138]	@ movhi
	strh	ip, [r2, #136]	@ movhi
	strh	r0, [r2, #140]	@ movhi
.L167:
	mov	r4, #148
	ldr	r3, .L224+36
	ldr	lr, .L224+40
	add	r0, r3, #60
.L169:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #20
	orrne	r1, r1, lr
	strhne	r4, [r2, #84]	@ movhi
	strhne	r1, [r2, #82]	@ movhi
	strhne	ip, [r2, #80]	@ movhi
	cmp	r3, r0
	bne	.L169
	mov	lr, #154
	ldr	r3, .L224+44
	add	r0, r3, #280
.L171:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #28
	strhne	lr, [r2, #116]	@ movhi
	strhne	ip, [r2, #112]	@ movhi
	strhne	r1, [r2, #114]	@ movhi
	cmp	r3, r0
	bne	.L171
	ldr	r1, .L224+48
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L172
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #144
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #10]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
.L172:
	mov	r5, #156
	ldr	r3, .L224+4
	ldr	r1, .L224+52
	ldr	r4, .L224+40
	add	ip, r3, #40
.L174:
	ldr	r0, [r1, #20]
	cmp	r0, #0
	ldmne	r1, {r0, lr}
	orrne	r0, r0, r4
	strhne	r5, [r3, #148]	@ movhi
	strhne	r0, [r3, #146]	@ movhi
	strhne	lr, [r3, #144]	@ movhi
	add	r3, r3, #8
	cmp	ip, r3
	add	r1, r1, #32
	bne	.L174
	ldr	r1, .L224+56
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L175
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #16
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #18]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
.L175:
	ldr	r1, .L224+60
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L176
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #20
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #26]	@ movhi
	strh	r1, [r2, #24]	@ movhi
	strh	r0, [r2, #28]	@ movhi
.L176:
	ldr	r1, .L224+64
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L177
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #24
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #34]	@ movhi
	strh	r1, [r2, #32]	@ movhi
	strh	r0, [r2, #36]	@ movhi
.L177:
	ldr	r1, .L224+68
	ldr	r3, [r1, #16]
	cmp	r3, #0
	beq	.L178
	ldr	r3, [r1]
	mvn	r3, r3, lsl #17
	mov	r0, #28
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	strh	r3, [r2, #42]	@ movhi
	strh	r1, [r2, #40]	@ movhi
	strh	r0, [r2, #44]	@ movhi
.L178:
	ldr	r3, .L224+72
	mov	lr, pc
	bx	r3
	ldr	r4, .L224+76
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L224+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L224+80
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L224+84
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L222:
	ldr	r0, [r3]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	ip, [r3, #36]
	ldr	r1, [r3, #28]
	ldr	r2, .L224+4
	add	r1, r1, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r1, r1, #3
	strh	r0, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	b	.L160
.L225:
	.align	2
.L224:
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
	ldr	ip, .L232
	mov	r6, r2
	mov	r3, ip
	mov	r5, #220
	mov	lr, #100
	mov	r4, #0
	mov	r1, #32
.L227:
	add	r0, ip, r2, lsl #5
	add	r2, r2, #1
	cmp	r2, #5
	str	r5, [r3, #32]
	str	lr, [r3, #36]
	str	r4, [r3, #52]
	str	r1, [r3, #48]
	str	r1, [r3, #44]
	str	r4, [r0, #24]
	add	r3, r3, #32
	str	r6, [r3, #8]
	str	r4, [r3, #28]
	bne	.L227
	ldr	r3, .L232+4
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L232+8
	ldr	r2, .L232+12
	ldr	r3, .L232+16
	ldr	ip, .L232+20
	str	r4, [r0, #16]
	ldr	r0, .L232+24
	str	r4, [r2, #16]
	str	r4, [r3, #16]
	ldr	r2, .L232+28
	ldr	r3, .L232+32
	str	r4, [ip, #16]
	str	r4, [r0, #20]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L228:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L228
	pop	{r4, r5, r6, lr}
	b	drawGame
.L233:
	.align	2
.L232:
	.word	treasure
	.word	hideSprites
	.word	fry
	.word	leela
	.word	alien
	.word	spaceship
	.word	treasureP1
	.word	blocks
	.word	bullets
	.size	initGame, .-initGame
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
	ldr	r2, .L242
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L242+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L242+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L242+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L242+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L242+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L242+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L242+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L242+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L242+12
	ldr	r2, [r3, #60]
	cmp	r2, #1
	beq	.L241
.L234:
	pop	{r4, lr}
	bx	lr
.L241:
	ldr	r2, [r3, #92]
	cmp	r2, #1
	bne	.L234
	ldr	r2, [r3, #124]
	cmp	r2, #1
	bne	.L234
	ldr	r3, [r3, #156]
	cmp	r3, #1
	ldreq	r2, .L242+16
	streq	r3, [r2]
	b	.L234
.L243:
	.align	2
.L242:
	.word	hOff
	.word	67109120
	.word	spaceship
	.word	treasure
	.word	isWon
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
	ldr	r3, .L248
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r0, .L248+4
	ldr	r3, .L248+8
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	r0, .L248+12
	ldr	lr, .L248+16
	ldr	ip, .L248+20
	ldr	r3, .L248+24
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [ip, #20]
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L245:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L245
	pop	{r4, lr}
	b	drawGame
.L249:
	.align	2
.L248:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	blocks
	.word	alien
	.word	treasureP1
	.word	bullets
	.size	initLose, .-initLose
	.align	2
	.global	initWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWin, %function
initWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L254
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	lr, .L254+4
	ldr	ip, .L254+8
	ldr	r0, .L254+12
	ldr	r3, .L254+16
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [lr, #16]
	str	r2, [r3, #16]
	ldr	lr, .L254+20
	ldr	ip, .L254+24
	ldr	r0, .L254+28
	ldr	r3, .L254+32
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	str	r2, [lr, #20]
	ldr	ip, .L254+36
	ldr	lr, .L254+40
	ldr	r0, .L254+44
	ldr	r3, .L254+48
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	r0, .L254+52
	ldr	lr, .L254+56
	ldr	ip, .L254+60
	ldr	r3, .L254+64
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L251:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L251
	pop	{r4, lr}
	b	drawGame
.L255:
	.align	2
.L254:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	alien
	.word	spaceship
	.word	treasureP1
	.word	p1
	.word	p2
	.word	p3
	.word	life1
	.word	p4
	.word	life2
	.word	life3
	.word	blocks
	.word	life4
	.word	life5
	.word	bullets
	.size	initWin, .-initWin
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
	ldr	r5, .L328
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r4, .L328+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L328+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L257
.L259:
	ldr	r0, [r4]
.L258:
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
	beq	.L260
.L262:
	ldr	r0, [r4]
.L261:
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
	beq	.L263
.L265:
	ldr	r0, [r4]
.L264:
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
	beq	.L266
.L268:
	ldr	r0, [r4]
.L267:
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
	beq	.L326
.L272:
	ldr	r5, .L328+12
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
	beq	.L273
.L275:
	ldr	r0, [r4]
.L274:
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
	beq	.L276
.L278:
	ldr	r0, [r4]
.L277:
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
	beq	.L279
.L281:
	ldr	r0, [r4]
.L280:
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
	beq	.L282
.L284:
	ldr	r0, [r4]
.L283:
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
	beq	.L285
.L287:
	ldr	r0, [r4]
.L286:
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
	beq	.L327
.L256:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L257:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L259
	ldr	ip, .L328+16
	ldr	r1, .L328+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L259
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L328+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L258
.L327:
	ldr	r3, .L328+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L256
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L256
	ldr	r3, .L328+20
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r2, .L328+28
	streq	r3, [r2]
	b	.L256
.L285:
	ldr	r3, .L328+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L287
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L287
	ldr	r2, .L328+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L287
	mov	r2, #190
	mov	r1, #0
	mov	ip, #5
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L328+32
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L286
.L282:
	ldr	r3, .L328+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L284
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L284
	ldr	r2, .L328+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L284
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L328+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L283
.L279:
	ldr	r3, .L328+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L281
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L281
	ldr	r2, .L328+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L281
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L328+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L280
.L276:
	ldr	r3, .L328+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L278
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L278
	ldr	r2, .L328+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L278
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L328+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L277
.L273:
	ldr	r2, .L328+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L275
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L275
	ldr	r1, .L328+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L275
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L328+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L274
.L326:
	ldr	r3, .L328+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L272
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L272
	ldr	r3, .L328+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r3, .L328+28
	streq	r0, [r3]
	b	.L272
.L269:
	ldr	r3, .L328+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L271
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L271
	ldr	r2, .L328+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L271
	mov	r1, #190
	mov	ip, #5
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L328+32
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L270
.L266:
	ldr	r3, .L328+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L268
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L268
	ldr	r2, .L328+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L268
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L328+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L267
.L263:
	ldr	r3, .L328+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L265
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L265
	ldr	r2, .L328+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L265
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L328+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L264
.L260:
	ldr	r3, .L328+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L262
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L262
	ldr	r2, .L328+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L262
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L328+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L261
.L329:
	.align	2
.L328:
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
	ldr	r2, .L343
	ldrh	r3, [r2]
	ldr	r0, .L343+4
	ldr	r4, .L343+8
	add	r3, r3, #1
	ldr	r1, .L343+12
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
.L332:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L331:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L332
	ldr	r5, .L343+16
	ldr	r3, [r5, #56]
	cmp	r3, #200
	bgt	.L342
.L333:
	ldr	r3, [r5, #56]
	add	r3, r3, #1
	str	r3, [r5, #56]
	mov	r8, #0
	bl	updateLives
	ldr	r5, .L343+20
	ldr	r7, .L343+24
.L335:
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
	bne	.L335
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L342:
	mov	r3, #1
	add	r0, r5, #32
	str	r3, [r5, #52]
	bl	updateTreasure
	b	.L333
.L344:
	.align	2
.L343:
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
	ldr	r2, .L358
	ldrh	r3, [r2]
	ldr	r0, .L358+4
	ldr	r4, .L358+8
	add	r3, r3, #1
	ldr	r1, .L358+12
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
.L347:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L346:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L347
	ldr	r5, .L358+16
	bl	updateLives
	ldr	r3, [r5, #88]
	cmp	r3, #200
	bgt	.L357
.L348:
	mov	r8, #0
	ldr	r3, [r5, #88]
	add	r3, r3, #1
	str	r3, [r5, #88]
	ldr	r7, .L358+20
	ldr	r5, .L358+24
.L350:
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
	bne	.L350
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L357:
	mov	r3, #1
	add	r0, r5, #64
	str	r3, [r5, #84]
	bl	updateTreasure
	b	.L348
.L359:
	.align	2
.L358:
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
	ldr	r2, .L373
	ldrh	r3, [r2]
	ldr	r0, .L373+4
	ldr	r4, .L373+8
	add	r3, r3, #1
	ldr	r1, .L373+12
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
.L362:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L361:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L362
	ldr	r5, .L373+16
	bl	updateLives
	ldr	r3, [r5, #120]
	cmp	r3, #200
	bgt	.L372
.L363:
	mov	r8, #0
	ldr	r3, [r5, #120]
	add	r3, r3, #1
	str	r3, [r5, #120]
	ldr	r7, .L373+20
	ldr	r5, .L373+24
.L365:
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
	bne	.L365
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L372:
	mov	r3, #1
	add	r0, r5, #96
	str	r3, [r5, #116]
	bl	updateTreasure
	b	.L363
.L374:
	.align	2
.L373:
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
	ldr	r2, .L388
	ldrh	r3, [r2]
	ldr	r0, .L388+4
	ldr	r4, .L388+8
	add	r3, r3, #1
	ldr	r1, .L388+12
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
.L377:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L376:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L377
	ldr	r5, .L388+16
	bl	updateLives
	ldr	r3, [r5, #152]
	cmp	r3, #200
	bgt	.L387
.L378:
	mov	r8, #0
	ldr	r3, [r5, #152]
	add	r3, r3, #1
	str	r3, [r5, #152]
	ldr	r7, .L388+20
	ldr	r5, .L388+24
.L380:
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
	bne	.L380
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L387:
	mov	r3, #1
	add	r0, r5, #128
	str	r3, [r5, #148]
	bl	updateTreasure
	b	.L378
.L389:
	.align	2
.L388:
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
	.comm	isWon,4,4
	.comm	isLost,4,4
	.comm	prevState,4,4
	.comm	life4Counter,4,4
	.comm	life3Counter,4,4
	.comm	life2Counter,4,4
	.comm	life1Counter,4,4
	.comm	lifeCounter,4,4
	.comm	curLocation,4,4
	.comm	treasure,160,4
	.comm	treasureP1,32,4
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
