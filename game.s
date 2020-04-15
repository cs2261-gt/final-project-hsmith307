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
	str	lr, [sp, #-4]!
	mov	r1, #1
	mov	lr, #0
	mov	r2, #32
	mov	ip, #104
	mov	r0, #64
	ldr	r3, .L8
	str	lr, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
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
	mov	lr, #23040
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L12
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
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
	mov	lr, #23040
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L16
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
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
	mov	r0, #0
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L20
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #28]
	str	ip, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r0, [r3, #16]
	str	r0, [r3, #32]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, r5, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	@ link register save eliminated.
	mov	r0, #80
	mov	r1, #1
	mov	r2, #32
	ldr	r3, .L26
	add	ip, r3, #72
.L23:
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #20]
	add	r3, r3, #24
	cmp	r3, ip
	bne	.L23
	bx	lr
.L27:
	.align	2
.L26:
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
	mov	r2, #0
	mov	r3, #16
	mov	r1, #5
	push	{r4, r5, lr}
	mov	r5, #26
	mov	r4, #47
	mov	lr, #68
	mov	ip, #89
	ldr	r0, .L30
	str	r2, [r0]
	ldr	r0, .L30+4
	stmib	r0, {r1, r3}
	str	r2, [r0, #16]
	str	r1, [r0]
	str	r3, [r0, #12]
	ldr	r0, .L30+8
	str	r5, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L30+12
	str	r4, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L30+16
	str	lr, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L30+20
	pop	{r4, r5, lr}
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0]
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r1, .L36
	ldr	r3, .L36+4
	ldr	ip, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, ip
	add	r1, r1, #20
	add	ip, r3, #280
.L33:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L33
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	lr, .L42
	mov	r6, r2
	mov	r3, lr
	mov	r5, #220
	mov	r4, #100
	mov	r1, #0
	mov	r0, #32
.L39:
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
	bne	.L39
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	mov	r1, #0
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
	mov	r1, #0
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
	mov	r1, #0
	ldr	r3, .L51
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L52:
	.align	2
.L51:
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
	mov	r1, #0
	ldr	r3, .L54
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L55:
	.align	2
.L54:
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
	mov	r1, #4352
	mov	r2, #1
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r0, #32
	mov	lr, #104
	mov	ip, #64
	strh	r1, [r3]	@ movhi
	ldr	r3, .L67
	ldr	r3, [r3]
	ldr	r1, .L67+4
	cmp	r3, r2
	str	r2, [r1, #20]
	str	r2, [r1, #24]
	str	lr, [r1]
	str	r0, [r1, #12]
	str	r0, [r1, #8]
	str	ip, [r1, #4]
	beq	.L65
	cmp	r3, #0
	bne	.L66
	mov	lr, #4
	mov	r5, #3
	mov	r4, #23040
	ldr	r0, .L67+8
	str	lr, [r0, #40]
	str	r5, [r0]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	ip, [r0, #12]
	str	ip, [r0, #8]
	str	r3, [r0, #28]
	str	r3, [r0, #36]
	str	r3, [r0, #32]
	str	r3, [r0, #48]
	str	r4, [r0, #4]
	ldr	lr, .L67+12
.L59:
	mov	ip, #1
	mov	r3, #0
	mov	r2, #32
	mov	r8, #200
	mov	r5, #20
	mov	r10, #90
	mov	r9, #100
	mov	r7, #180
	mov	r6, #120
	str	ip, [r1, #16]
	ldr	r1, .L67+16
	str	r3, [r0, #16]
	str	r3, [r1, #20]
	ldr	r0, .L67+20
	str	r3, [r1, #52]
	str	r3, [r1, #84]
	str	r3, [r1, #116]
	str	r3, [r1, #148]
	ldr	r1, .L67+24
	str	r3, [lr, #16]
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	ldr	r0, .L67+28
	str	r3, [r1, #40]
	str	r3, [r1, #64]
	mov	r4, r3
	ldr	r3, .L67+32
	ldr	lr, .L67+36
	ldr	r1, .L67+40
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	stm	r3, {r8, r10}
	str	ip, [r3, #16]
	stm	r0, {r5, r9}
	ldr	r3, .L67+44
	str	r8, [lr]
	str	r5, [lr, #4]
	str	ip, [lr, #16]
	str	ip, [r0, #16]
	str	ip, [r1, #16]
	str	r7, [r1]
	str	r6, [r1, #4]
	str	r2, [lr, #12]
	str	r2, [lr, #8]
	str	r2, [r0, #12]
	str	r2, [r0, #8]
	str	r2, [r1, #12]
	str	r2, [r1, #8]
	add	r2, r3, #280
.L60:
	str	r4, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L60
	ldr	r5, .L67+48
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L67+52
	ldr	r1, .L67+56
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L67+60
	ldr	r1, .L67+64
	mov	lr, pc
	bx	r5
	ldr	r0, .L67+68
	ldr	r1, .L67+72
	ldr	r2, .L67+76
	ldr	r3, .L67+80
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L65:
	mov	r0, #0
	mov	r5, #3
	mov	r4, #23040
	mov	r2, #4
	ldr	lr, .L67+12
	str	r0, [lr, #20]
	str	r0, [lr, #36]
	str	r0, [lr, #32]
	str	r0, [lr, #44]
	str	r0, [lr, #48]
	str	r5, [lr]
	str	r3, [lr, #24]
	str	ip, [lr, #12]
	str	ip, [lr, #8]
	str	r3, [lr, #28]
	str	r4, [lr, #4]
	str	r2, [lr, #40]
	ldr	r0, .L67+8
	b	.L59
.L66:
	ldr	lr, .L67+12
	ldr	r0, .L67+8
	b	.L59
.L68:
	.align	2
.L67:
	.word	characterChoice
	.word	spaceship
	.word	fry
	.word	leela
	.word	treasure
	.word	alien
	.word	blocks
	.word	p3
	.word	p2
	.word	p1
	.word	p4
	.word	bullets
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.word	isLost
	.word	isWon
	.word	treasureNum
	.word	prevTreasureNum
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
	ldr	r3, .L81
	push	{r4, r5, r6, lr}
	mov	lr, pc
	bx	r3
	mov	r0, #80
	mov	r1, #1
	mov	r2, #32
	ldr	r3, .L81+4
	add	ip, r3, #72
.L70:
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #20]
	add	r3, r3, #24
	cmp	r3, ip
	bne	.L70
	ldr	r2, .L81+8
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	r4, #1
	ldr	r6, .L81+12
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
	mov	r0, #1
	ldr	r3, .L81+16
	str	lr, [r3, #32]
	str	r4, [r3, #40]
	str	ip, [r3, #36]
	ldr	r3, .L81+8
.L72:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L72
	mov	ip, #0
	mov	r3, #1
	ldr	lr, .L81+20
	str	ip, [lr, #16]
	ldr	lr, .L81+24
	str	ip, [lr, #16]
	ldr	lr, .L81+28
	str	ip, [lr, #16]
	ldr	lr, .L81+32
	str	ip, [lr, #16]
	ldr	lr, .L81+36
	str	ip, [lr, #16]
	ldr	ip, .L81+40
	str	r0, [ip, #16]
.L73:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L73
	mov	r0, #0
	ldr	r2, .L81+44
	ldr	r2, [r2]
	ldr	r1, .L81+48
	cmp	r2, #1
	str	r0, [r1]
	streq	r2, [r6, #16]
	beq	.L69
	cmp	r2, #0
	ldreq	r2, .L81+52
	streq	r3, [r2, #16]
.L69:
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	hideSprites
	.word	blocks
	.word	bullets
	.word	leela
	.word	treasure
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	characterChoice
	.word	curLocation
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r2, .L91+4
	mov	r0, #8
	mov	r3, r2
	mov	ip, #0
	mov	lr, #1
	ldr	r6, .L91+8
	ldr	r1, [r6, #12]
	ldr	r5, [r6]
	ldr	r4, [r6, #4]
	add	r5, r5, r1
	add	r4, r4, #20
	add	r1, r2, #280
.L84:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #24]
	str	lr, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L84
	mov	r4, #64
	mov	r9, #170
	mov	r8, #90
	mov	r7, #2
	mov	r5, #4
	mov	r3, #1
	ldr	r0, .L91+12
	str	lr, [r0, #16]
	str	lr, [r0, #20]
	str	lr, [r0, #24]
	str	lr, [r0, #36]
	str	r4, [r0, #12]
	ldr	lr, .L91+16
	str	r4, [r0, #8]
	str	r9, [r0]
	str	ip, [r0, #32]
	str	r8, [r0, #4]
	str	r7, [r0, #28]
	str	r5, [r0, #40]
	ldr	r0, .L91+20
	str	ip, [lr, #16]
	str	ip, [r0, #16]
	ldr	r4, .L91+24
	ldr	lr, .L91+28
	ldr	r0, .L91+32
	str	ip, [r4, #16]
	str	ip, [lr, #16]
	str	ip, [r0, #16]
.L85:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L85
	ldr	r2, .L91+36
	ldr	r2, [r2]
	ldr	r1, .L91+40
	cmp	r2, #1
	str	r3, [r1]
	streq	r2, [r6, #16]
	beq	.L83
	cmp	r2, #0
	ldreq	r2, .L91+44
	streq	r3, [r2, #16]
.L83:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	hideSprites
	.word	bullets
	.word	leela
	.word	alien
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	characterChoice
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
	ldr	r3, .L101
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L101+4
	mov	r0, #8
	mov	r3, r2
	mov	r4, #1
	ldr	ip, .L101+8
	str	r1, [ip, #16]
	ldr	ip, .L101+12
	str	r1, [ip, #16]
	ldr	ip, .L101+16
	str	r1, [ip, #16]
	ldr	ip, .L101+20
	ldr	r6, .L101+24
	str	r1, [ip, #16]
	ldr	ip, .L101+28
	ldr	lr, [r6]
	str	r1, [ip, #16]
	ldr	r7, [r6, #12]
	ldr	ip, [r6, #4]
	mov	r5, r1
	add	lr, lr, r7
	add	ip, ip, #20
	add	r1, r2, #280
.L94:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L94
	mov	r3, #1
	ldr	r0, .L101+32
	str	r4, [r0, #16]
.L95:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L95
	mov	r0, #2
	ldr	r2, .L101+36
	ldr	r2, [r2]
	ldr	r1, .L101+40
	cmp	r2, #1
	str	r0, [r1]
	streq	r2, [r6, #16]
	beq	.L93
	cmp	r2, #0
	ldreq	r2, .L101+44
	streq	r3, [r2, #16]
.L93:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	hideSprites
	.word	bullets
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	leela
	.word	p4
	.word	alien
	.word	characterChoice
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L111
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L111+4
	mov	r0, #8
	mov	r3, r2
	mov	r4, #1
	ldr	ip, .L111+8
	str	r1, [ip, #16]
	ldr	ip, .L111+12
	str	r1, [ip, #16]
	ldr	ip, .L111+16
	str	r1, [ip, #16]
	ldr	ip, .L111+20
	ldr	r6, .L111+24
	str	r1, [ip, #16]
	ldr	ip, .L111+28
	ldr	lr, [r6]
	str	r1, [ip, #16]
	ldr	r7, [r6, #12]
	ldr	ip, [r6, #4]
	mov	r5, r1
	add	lr, lr, r7
	add	ip, ip, #20
	add	r1, r2, #280
.L104:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L104
	mov	r3, #1
	ldr	r0, .L111+32
	str	r4, [r0, #16]
.L105:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L105
	mov	r0, #3
	ldr	r2, .L111+36
	ldr	r2, [r2]
	ldr	r1, .L111+40
	cmp	r2, #1
	str	r0, [r1]
	streq	r2, [r6, #16]
	beq	.L103
	cmp	r2, #0
	ldreq	r2, .L111+44
	streq	r3, [r2, #16]
.L103:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L112:
	.align	2
.L111:
	.word	hideSprites
	.word	bullets
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	leela
	.word	p4
	.word	alien
	.word	characterChoice
	.word	curLocation
	.word	fry
	.size	initPlanet4, .-initPlanet4
	.align	2
	.global	initPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPause, %function
initPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L117
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r0, .L117+4
	ldr	r3, .L117+8
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	lr, .L117+12
	ldr	ip, .L117+16
	ldr	r0, .L117+20
	ldr	r3, .L117+24
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	r0, .L117+28
	ldr	lr, .L117+32
	ldr	ip, .L117+36
	ldr	r3, .L117+40
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r0, #40]
	str	r2, [r0, #64]
	add	r2, r3, #280
.L114:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L114
	pop	{r4, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	alien
	.word	p1
	.word	p2
	.word	p3
	.word	blocks
	.word	p4
	.word	spaceship
	.word	bullets
	.size	initPause, .-initPause
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
	ldr	r1, .L123
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L123+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L120
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L120:
	ldr	r2, [r1, #12]
	adds	r3, r3, r2
	streq	r3, [r1, #16]
	bx	lr
.L124:
	.align	2
.L123:
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
	ldr	r3, .L134
	ldr	r2, .L134+4
	ldr	r1, .L134+8
	ldm	r2, {r0, ip}
	ldr	lr, [r2, #12]
	ldr	r5, [r3]
	ldr	r2, [r3, #12]
	ldr	r4, [r3, #52]
	ldr	r3, .L134+12
	ldr	r1, [r1]
	add	lr, lr, r0
	add	ip, ip, #20
	add	r5, r5, r2
	add	r4, r4, #20
	add	r0, r3, #280
.L128:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L130
	cmp	r1, #1
	streq	r5, [r3]
	streq	r4, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L130
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r6, [r3, #24]
.L130:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L128
	pop	{r4, r5, r6, lr}
	bx	lr
.L135:
	.align	2
.L134:
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
	ldr	r4, .L153
	ldr	r2, .L153+4
	ldr	r3, [r4, #4]
	ldr	lr, [r4, #24]
	ldr	r2, [r2]
	add	r1, r3, lr
	cmp	r2, r1, asr #8
	movge	r2, #0
	asrge	r1, r3, #8
	ldr	r3, .L153+8
	ldrh	r0, [r3]
	movge	lr, r2
	strge	r2, [r4, #48]
	asrlt	r1, r1, #8
	tst	r0, #64
	beq	.L139
	ldr	r3, .L153+12
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L150
.L139:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L153+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	add	r2, lr, #50
	add	r1, r1, #90
	cmp	ip, r3, ror #1
	str	r2, [r4, #24]
	str	r1, [r4, #4]
	bcc	.L140
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L151
.L140:
	tst	r0, #16
	beq	.L144
	ldr	r3, .L153+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L152
.L144:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L150:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	lr, lr, #1488
	streq	r3, [r4, #48]
	subeq	lr, lr, #12
	b	.L139
.L151:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L140
.L152:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L154:
	.align	2
.L153:
	.word	fry
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	238609294
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
	ldr	r3, .L170
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L170+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L156
	ldr	r2, .L170+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L168
.L156:
	ldmib	r4, {r1, ip}
	add	r2, r1, ip
	add	r3, r3, #50
	sub	r2, r2, #1
	add	r2, r2, r3
	rsb	ip, ip, #159
	cmp	ip, r2, asr #8
	str	r3, [r4, #24]
	movle	r3, #0
	ldr	r2, [r4, #32]
	addgt	r1, r1, r3
	strle	r3, [r4, #24]
	strle	r3, [r4, #48]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L170+12
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	strgt	r1, [r4, #4]
	ldr	r2, [r4]
	cmp	ip, r3, ror #1
	ldr	r3, [r4, #20]
	asr	r1, r1, #8
	add	r3, r2, r3
	str	r1, [r4, #52]
	str	r3, [r4]
	bcc	.L159
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L159:
	tst	r0, #16
	beq	.L163
	ldr	r3, .L170+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L169
.L163:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L168:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L156
.L169:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L171:
	.align	2
.L170:
	.word	oldButtons
	.word	leela
	.word	buttons
	.word	238609294
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
	.global	updateBlocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlocks, %function
updateBlocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L178
	ldr	ip, [r1, #8]
	ldr	r2, [r1, #52]
	push	{r4, lr}
	ldr	r3, [r0]
	ldr	r4, [r0, #20]
	ldr	lr, [r0, #4]
	add	r2, ip, r2
	sub	r3, r3, r4
	cmp	r2, lr
	str	r3, [r0]
	beq	.L177
.L174:
	pop	{r4, lr}
	bx	lr
.L177:
	ldr	lr, [r1]
	cmp	r3, lr
	bge	.L174
	ldr	r0, [r0, #12]
	add	r3, r3, r0
	cmp	lr, r3
	sublt	r2, r2, ip
	strlt	r2, [r1, #52]
	pop	{r4, lr}
	bx	lr
.L179:
	.align	2
.L178:
	.word	leela
	.size	updateBlocks, .-updateBlocks
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
	ldr	r6, .L198
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #16
	ldr	r3, .L198+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L196
.L181:
	cmp	r5, #0
	beq	.L197
.L180:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L197:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L198+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldm	r6, {r0, r1}
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L198+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L192
	mov	r0, #1
	mov	r1, r5
	ldr	r2, .L198+16
	ldr	r3, .L198+20
	str	r5, [r6, #16]
	str	r5, [r4, #20]
	str	r0, [r4, #28]
	str	r5, [r2, #16]
	str	r5, [r2, #40]
	str	r5, [r2, #64]
	add	r2, r3, #280
.L191:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L191
.L192:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L180
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L180
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L180
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L198+24
	streq	r3, [r2]
	b	.L180
.L196:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L198+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r0, [r7]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L198+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L184
	ldr	r2, [r4, #28]
	cmp	r2, #0
	bne	.L184
	ldr	r0, .L198+16
	ldr	r3, .L198+20
	str	r2, [r4, #20]
	str	r5, [r4, #28]
	mov	r1, r2
	str	r2, [r7, #16]
	str	r2, [r0, #16]
	str	r2, [r0, #40]
	str	r2, [r0, #64]
	add	r2, r3, #280
.L185:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L185
.L184:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L181
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L181
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L181
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L198+24
	streq	r3, [r2]
	b	.L181
.L199:
	.align	2
.L198:
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
	ldr	r3, .L249
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L246
	cmp	r2, #0
	moveq	r2, #512
	ldreq	r1, .L249+4
	ldrne	r1, .L249+4
	strheq	r2, [r1]	@ movhi
.L202:
	ldr	r2, .L249+8
	ldr	r0, [r3, #32]
	ldr	ip, [r2, #16]
	add	r0, r0, #1
	cmp	ip, #1
	str	r0, [r3, #32]
	beq	.L247
	cmp	ip, #0
	moveq	r3, #512
	strheq	r3, [r1, #88]	@ movhi
.L204:
	ldr	r3, .L249+12
	ldr	r0, [r2, #32]
	ldr	ip, [r3, #16]
	add	r0, r0, #1
	cmp	ip, #1
	str	r0, [r2, #32]
	beq	.L248
	cmp	ip, #0
	moveq	r2, #512
	strheq	r2, [r1, #48]	@ movhi
.L206:
	ldr	r0, .L249+16
	ldr	r2, [r3, #32]
	ldr	lr, [r0, #16]
	ldr	ip, .L249+20
	add	r2, r2, #1
	cmp	lr, #0
	str	r2, [r3, #32]
	ldr	r3, [ip, #16]
	beq	.L207
	mov	lr, #152
	ldr	r2, [r0]
	ldr	r0, [r0, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [r1, #58]	@ movhi
	strh	r0, [r1, #56]	@ movhi
	strh	lr, [r1, #60]	@ movhi
	bne	.L208
.L209:
	ldr	r3, .L249+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r1, #72]	@ movhi
	beq	.L234
	mov	r0, #152
	ldm	r3, {r2, ip}
	orr	r3, r2, #16384
	strh	r3, [r1, #74]	@ movhi
	strh	ip, [r1, #72]	@ movhi
	strh	r0, [r1, #76]	@ movhi
.L234:
	ldr	r3, .L249+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r1, #128]	@ movhi
	beq	.L233
	mov	r0, #152
	ldm	r3, {r2, ip}
	orr	r3, r2, #16384
	strh	r3, [r1, #130]	@ movhi
	strh	ip, [r1, #128]	@ movhi
	strh	r0, [r1, #132]	@ movhi
.L233:
	ldr	r3, .L249+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r1, #136]	@ movhi
	beq	.L232
	mov	r0, #152
	ldm	r3, {r2, ip}
	orr	r3, r2, #16384
	strh	r3, [r1, #138]	@ movhi
	strh	ip, [r1, #136]	@ movhi
	strh	r0, [r1, #140]	@ movhi
.L232:
	mov	r5, #512
	mov	r4, #148
	ldr	r3, .L249+36
	ldr	lr, .L249+40
	add	r0, r3, #72
.L215:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #24
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	strheq	r5, [r1, #80]	@ movhi
	cmp	r0, r3
	bne	.L215
	mov	r5, #512
	mov	r4, #154
	ldr	r3, .L249+44
	ldr	r2, .L249+48
	add	ip, r3, #280
.L218:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldmne	r3, {r0, lr}
	add	r3, r3, #28
	strhne	r4, [r2, #4]	@ movhi
	strhne	lr, [r2]	@ movhi
	strhne	r0, [r2, #2]	@ movhi
	strheq	r5, [r2]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L218
	ldr	r2, .L249+52
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #8]	@ movhi
	beq	.L231
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #144
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #10]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r0, [r1, #12]	@ movhi
.L231:
	mov	r6, #512
	mov	r5, #156
	ldr	r3, .L249+4
	ldr	r2, .L249+56
	ldr	r4, .L249+40
	add	ip, r3, #40
.L222:
	ldr	r0, [r2, #20]
	cmp	r0, #0
	ldmne	r2, {r0, lr}
	orrne	r0, r0, r4
	strhne	r5, [r3, #148]	@ movhi
	strhne	r0, [r3, #146]	@ movhi
	strhne	lr, [r3, #144]	@ movhi
	strheq	r6, [r3, #144]	@ movhi
	add	r3, r3, #8
	cmp	ip, r3
	add	r2, r2, #32
	bne	.L222
	ldr	r2, .L249+60
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #16]	@ movhi
	beq	.L230
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #16
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	strh	r0, [r1, #20]	@ movhi
.L230:
	ldr	r2, .L249+64
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #24]	@ movhi
	beq	.L229
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #20
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #26]	@ movhi
	strh	r2, [r1, #24]	@ movhi
	strh	r0, [r1, #28]	@ movhi
.L229:
	ldr	r2, .L249+68
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #32]	@ movhi
	beq	.L228
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #24
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #34]	@ movhi
	strh	r2, [r1, #32]	@ movhi
	strh	r0, [r1, #36]	@ movhi
.L228:
	ldr	r2, .L249+72
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #40]	@ movhi
	beq	.L227
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #28
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #42]	@ movhi
	strh	r2, [r1, #40]	@ movhi
	strh	r0, [r1, #44]	@ movhi
.L227:
	ldr	r3, .L249+76
	mov	lr, pc
	bx	r3
	ldr	r4, .L249+80
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L249+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L249+84
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L249+88
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L207:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [r1, #56]	@ movhi
	beq	.L235
	mov	r2, #152
	ldr	r3, [ip]
	orr	r3, r3, #16384
	strh	r3, [r1, #66]	@ movhi
	strh	r2, [r1, #68]	@ movhi
.L235:
	mov	r3, #512
	strh	r3, [r1, #64]	@ movhi
	b	.L209
.L208:
	ldr	r3, [ip]
	ldr	r2, [ip, #4]
	orr	r3, r3, #16384
	strh	lr, [r1, #68]	@ movhi
	strh	r3, [r1, #66]	@ movhi
	strh	r2, [r1, #64]	@ movhi
	b	.L209
.L248:
	ldr	r0, [r3]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r0, [r1, #50]	@ movhi
	strh	r2, [r1, #52]	@ movhi
	strh	ip, [r1, #48]	@ movhi
	b	.L206
.L247:
	ldr	r0, [r2]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #52]
	lsl	r3, r3, #3
	strh	r0, [r1, #90]	@ movhi
	strh	r3, [r1, #92]	@ movhi
	strh	ip, [r1, #88]	@ movhi
	b	.L204
.L246:
	ldr	r0, [r3]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r1, .L249+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r0, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	b	.L202
.L250:
	.align	2
.L249:
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
	.word	shadowOAM+432
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
	push	{r4, r5, r6, r7, r8, lr}
	bl	initLives
	mov	r0, #1
	ldr	ip, .L255
	mov	r2, r0
	mov	r5, r0
	mov	r3, ip
	mov	r6, #220
	mov	lr, #100
	mov	r4, #0
	mov	r1, #32
	ldr	r7, .L255+4
	str	r0, [r7, #16]
	ldr	r7, .L255+8
	str	r0, [r7, #16]
	ldr	r7, .L255+12
	str	r0, [r7, #16]
	ldr	r7, .L255+16
	str	r0, [r7, #16]
	ldr	r7, .L255+20
	str	r0, [r7, #16]
.L252:
	add	r0, ip, r2, lsl #5
	add	r2, r2, #1
	cmp	r2, #5
	str	r6, [r3, #32]
	str	lr, [r3, #36]
	str	r4, [r3, #52]
	str	r1, [r3, #48]
	str	r1, [r3, #44]
	str	r4, [r0, #24]
	add	r3, r3, #32
	str	r5, [r3, #8]
	str	r4, [r3, #28]
	bne	.L252
	ldr	r3, .L255+24
	mov	lr, pc
	bx	r3
	mov	lr, #170
	mov	r2, #64
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r3, .L255+28
	str	lr, [r3]
	str	r5, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #16]
	str	r5, [r3, #36]
	str	r4, [r3, #32]
	pop	{r4, r5, r6, r7, r8, lr}
	str	ip, [r3, #4]
	str	r0, [r3, #28]
	str	r1, [r3, #40]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	b	drawGame
.L256:
	.align	2
.L255:
	.word	treasure
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	life5
	.word	hideSprites
	.word	alien
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
	ldr	r2, .L265
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L265+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L265+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L265+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L265+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L265+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L265+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L265+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L265+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L265+12
	ldr	r2, [r3, #60]
	cmp	r2, #1
	beq	.L264
.L257:
	pop	{r4, lr}
	bx	lr
.L264:
	ldr	r2, [r3, #92]
	cmp	r2, #1
	bne	.L257
	ldr	r2, [r3, #124]
	cmp	r2, #1
	bne	.L257
	ldr	r3, [r3, #156]
	cmp	r3, #1
	ldreq	r2, .L265+16
	streq	r3, [r2]
	b	.L257
.L266:
	.align	2
.L265:
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
	ldr	r3, .L271
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	ip, .L271+4
	ldr	r3, .L271+8
	ldr	r0, .L271+12
	str	r2, [ip, #16]
	str	r2, [r3, #16]
	ldr	ip, .L271+16
	ldr	lr, .L271+20
	ldr	r3, .L271+24
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [r0, #20]
	str	r2, [r0, #52]
	str	r2, [r0, #84]
	str	r2, [r0, #116]
	str	r2, [r0, #148]
	str	r2, [ip, #16]
	str	r2, [ip, #40]
	str	r2, [ip, #64]
	add	r2, r3, #280
.L268:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L268
	pop	{r4, lr}
	b	drawGame
.L272:
	.align	2
.L271:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	treasure
	.word	blocks
	.word	alien
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
	ldr	r3, .L277
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	lr, .L277+4
	ldr	r0, .L277+8
	ldr	ip, .L277+12
	ldr	r3, .L277+16
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	lr, .L277+20
	ldr	r0, .L277+24
	ldr	ip, .L277+28
	ldr	r3, .L277+32
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	lr, .L277+36
	ldr	r0, .L277+40
	ldr	ip, .L277+44
	ldr	r3, .L277+48
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	ldr	ip, .L277+52
	ldr	r0, .L277+56
	str	r2, [r3, #16]
	ldr	lr, .L277+60
	ldr	r3, .L277+64
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [r0, #20]
	str	r2, [r0, #52]
	str	r2, [r0, #84]
	str	r2, [r0, #116]
	str	r2, [r0, #148]
	str	r2, [ip, #16]
	str	r2, [ip, #40]
	str	r2, [ip, #64]
	add	r2, r3, #280
.L274:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L274
	pop	{r4, lr}
	b	drawGame
.L278:
	.align	2
.L277:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	alien
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	blocks
	.word	treasure
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
	ldr	r5, .L351
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r4, .L351+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L351+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L280
.L282:
	ldr	r0, [r4]
.L281:
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
	beq	.L283
.L285:
	ldr	r0, [r4]
.L284:
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
	beq	.L286
.L288:
	ldr	r0, [r4]
.L287:
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
	beq	.L289
.L291:
	ldr	r0, [r4]
.L290:
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
	beq	.L292
.L294:
	ldr	r0, [r4]
.L293:
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
	beq	.L349
.L295:
	ldr	r5, .L351+12
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
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
	beq	.L296
.L298:
	ldr	r0, [r4]
.L297:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #52]
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
	beq	.L299
.L301:
	ldr	r0, [r4]
.L300:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #52]
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
	beq	.L302
.L304:
	ldr	r0, [r4]
.L303:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #52]
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
	beq	.L305
.L307:
	ldr	r0, [r4]
.L306:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #52]
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
	beq	.L308
.L310:
	ldr	r0, [r4]
.L309:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #52]
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
	beq	.L350
.L279:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L280:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L282
	ldr	ip, .L351+16
	ldr	r1, .L351+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L282
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L351+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L281
.L350:
	ldr	r3, .L351+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L279
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L279
	ldr	r3, .L351+20
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r2, .L351+28
	streq	r3, [r2]
	b	.L279
.L308:
	ldr	r3, .L351+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L310
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L310
	ldr	r2, .L351+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L310
	mov	r2, #190
	mov	r1, #0
	mov	ip, #5
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L351+32
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L309
.L305:
	ldr	r3, .L351+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L307
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L307
	ldr	r2, .L351+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L307
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L351+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L306
.L302:
	ldr	r3, .L351+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L304
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L304
	ldr	r2, .L351+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L304
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L351+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L303
.L299:
	ldr	r3, .L351+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L301
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L301
	ldr	r2, .L351+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L301
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L351+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L300
.L296:
	ldr	r2, .L351+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L298
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L298
	ldr	r1, .L351+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L298
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L351+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L297
.L349:
	ldr	r3, .L351+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L295
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L295
	ldr	r3, .L351+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r3, .L351+28
	streq	r0, [r3]
	b	.L295
.L292:
	ldr	r3, .L351+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L294
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L294
	ldr	r2, .L351+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L294
	mov	r1, #190
	mov	ip, #5
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L351+32
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L293
.L289:
	ldr	r3, .L351+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L291
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L291
	ldr	r2, .L351+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L291
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L351+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L290
.L286:
	ldr	r3, .L351+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L288
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L288
	ldr	r2, .L351+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L288
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L351+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L287
.L283:
	ldr	r3, .L351+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L285
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L285
	ldr	r2, .L351+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L285
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L351+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L284
.L352:
	.align	2
.L351:
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
	ldr	r2, .L366
	ldrh	r3, [r2]
	ldr	r0, .L366+4
	ldr	r4, .L366+8
	add	r3, r3, #1
	ldr	r1, .L366+12
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
.L355:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L354:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L355
	ldr	r5, .L366+16
	ldr	r3, [r5, #56]
	cmp	r3, #200
	bgt	.L365
.L356:
	ldr	r3, [r5, #56]
	add	r3, r3, #1
	str	r3, [r5, #56]
	bl	updateLives
	ldr	r0, .L366+20
	bl	updateBlocks
	ldr	r0, .L366+24
	bl	updateBlocks
	ldr	r0, .L366+28
	bl	updateBlocks
	mov	r8, #0
	ldr	r5, .L366+32
	ldr	r7, .L366+36
.L358:
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
	bne	.L358
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L365:
	mov	r3, #1
	add	r0, r5, #32
	str	r3, [r5, #52]
	bl	updateTreasure
	b	.L356
.L367:
	.align	2
.L366:
	.word	hOff
	.word	vOff
	.word	bullets
	.word	hideSprites
	.word	treasure
	.word	blocks
	.word	blocks+24
	.word	blocks+48
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
	ldr	r2, .L381
	ldrh	r3, [r2]
	ldr	r0, .L381+4
	ldr	r4, .L381+8
	add	r3, r3, #1
	ldr	r1, .L381+12
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
.L370:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L369:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L370
	ldr	r5, .L381+16
	bl	updateLives
	ldr	r3, [r5, #88]
	cmp	r3, #200
	bgt	.L380
.L371:
	mov	r8, #0
	ldr	r3, [r5, #88]
	add	r3, r3, #1
	str	r3, [r5, #88]
	ldr	r7, .L381+20
	ldr	r5, .L381+24
.L373:
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
	bne	.L373
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L380:
	mov	r3, #1
	add	r0, r5, #64
	str	r3, [r5, #84]
	bl	updateTreasure
	b	.L371
.L382:
	.align	2
.L381:
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
	ldr	r2, .L396
	ldrh	r3, [r2]
	ldr	r0, .L396+4
	ldr	r4, .L396+8
	add	r3, r3, #1
	ldr	r1, .L396+12
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
.L385:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L384:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L385
	ldr	r5, .L396+16
	bl	updateLives
	ldr	r3, [r5, #120]
	cmp	r3, #200
	bgt	.L395
.L386:
	mov	r8, #0
	ldr	r3, [r5, #120]
	add	r3, r3, #1
	str	r3, [r5, #120]
	ldr	r7, .L396+20
	ldr	r5, .L396+24
.L388:
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
	bne	.L388
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L395:
	mov	r3, #1
	add	r0, r5, #96
	str	r3, [r5, #116]
	bl	updateTreasure
	b	.L386
.L397:
	.align	2
.L396:
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
	ldr	r2, .L411
	ldrh	r3, [r2]
	ldr	r0, .L411+4
	ldr	r4, .L411+8
	add	r3, r3, #1
	ldr	r1, .L411+12
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
.L400:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L399:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L400
	ldr	r5, .L411+16
	bl	updateLives
	ldr	r3, [r5, #152]
	cmp	r3, #200
	bgt	.L410
.L401:
	mov	r8, #0
	ldr	r3, [r5, #152]
	add	r3, r3, #1
	str	r3, [r5, #152]
	ldr	r7, .L411+20
	ldr	r5, .L411+24
.L403:
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
	bne	.L403
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L410:
	mov	r3, #1
	add	r0, r5, #128
	str	r3, [r5, #148]
	bl	updateTreasure
	b	.L401
.L412:
	.align	2
.L411:
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
	.global	ground
	.comm	curLocation,4,4
	.comm	treasure,160,4
	.comm	treasureP1,32,4
	.comm	bullet,28,4
	.comm	bullets,280,4
	.comm	blocks,72,4
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
	.comm	leela,56,4
	.comm	fry,52,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ground, %object
	.size	ground, 4
ground:
	.word	154
	.ident	"GCC: (devkitARM release 53) 9.1.0"
