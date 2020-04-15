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
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L2
	ldr	r2, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r2
	sub	r2, r3, #1
	cmp	r2, #237
	bls	.L5
.L2:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L5:
	str	r3, [r0]
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
	mov	r2, #8
	push	{r4, r5, lr}
	mov	r4, #0
	mov	lr, #1
	ldr	r1, .L36
	ldr	r3, .L36+4
	ldr	ip, [r1]
	ldr	r5, [r1, #12]
	ldr	r0, [r1, #52]
	add	r1, r3, #1392
	add	ip, ip, r5
	add	r0, r0, #20
	add	r1, r1, r2
.L33:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L33
	pop	{r4, r5, lr}
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, #4352
	mov	r3, #67108864
	mov	r1, #1
	mov	r2, #32
	mov	lr, #104
	mov	r0, #64
	strh	ip, [r3]	@ movhi
	ldr	r3, .L67
	ldr	r3, [r3]
	ldr	ip, .L67+4
	cmp	r3, r1
	stmib	ip, {r0, r2}
	str	r1, [ip, #20]
	str	r1, [ip, #24]
	str	lr, [ip]
	str	r2, [ip, #12]
	beq	.L65
	cmp	r3, #0
	bne	.L66
	mov	r5, #3
	mov	r4, #23040
	mov	lr, #4
	ldr	r2, .L67+8
	str	r5, [r2]
	str	r1, [r2, #20]
	str	r1, [r2, #24]
	str	r0, [r2, #12]
	str	r0, [r2, #8]
	str	r3, [r2, #28]
	str	r3, [r2, #36]
	str	r3, [r2, #32]
	str	r3, [r2, #48]
	str	r4, [r2, #4]
	str	lr, [r2, #40]
	ldr	r5, .L67+12
.L59:
	mov	lr, #1
	mov	r1, #0
	mov	r7, #200
	mov	fp, #90
	mov	r6, #20
	mov	r10, #100
	mov	r0, #32
	mov	r9, #180
	mov	r8, #120
	str	lr, [ip, #16]
	ldr	ip, .L67+16
	str	r1, [r5, #16]
	str	r1, [ip, #20]
	ldr	r5, .L67+20
	str	r1, [ip, #52]
	str	r1, [ip, #84]
	str	r1, [ip, #116]
	str	r1, [ip, #148]
	ldr	ip, .L67+24
	str	r1, [r5, #16]
	str	r1, [ip, #16]
	ldr	r5, .L67+28
	str	r1, [ip, #40]
	str	r1, [ip, #64]
	ldr	ip, .L67+32
	str	r7, [r5]
	stm	ip, {r7, fp}
	ldr	r7, .L67+36
	str	r1, [r2, #16]
	mov	r4, r1
	ldr	r3, .L67+40
	ldr	r1, .L67+44
	stm	r7, {r6, r10}
	add	r2, r3, #1392
	str	r6, [r5, #4]
	str	r0, [r5, #12]
	str	r0, [r5, #8]
	str	r0, [ip, #12]
	str	r0, [ip, #8]
	str	r0, [r7, #12]
	str	r0, [r7, #8]
	str	lr, [r5, #16]
	str	lr, [ip, #16]
	str	lr, [r7, #16]
	str	lr, [r1, #16]
	str	r0, [r1, #12]
	str	r0, [r1, #8]
	str	r9, [r1]
	str	r8, [r1, #4]
	add	r2, r2, #8
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
	ldr	r3, .L67+68
	ldr	r0, .L67+72
	ldr	r1, .L67+76
	ldr	r2, .L67+80
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L65:
	mov	r2, #0
	mov	r4, #3
	mov	lr, #23040
	mov	r1, #4
	ldr	r5, .L67+12
	str	r2, [r5, #20]
	str	r2, [r5, #36]
	str	r2, [r5, #32]
	str	r2, [r5, #44]
	str	r2, [r5, #48]
	str	r4, [r5]
	str	r3, [r5, #24]
	str	r0, [r5, #12]
	str	r0, [r5, #8]
	str	r3, [r5, #28]
	str	lr, [r5, #4]
	str	r1, [r5, #40]
	ldr	r2, .L67+8
	b	.L59
.L66:
	ldr	r5, .L67+12
	ldr	r2, .L67+8
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
	.word	p1
	.word	p2
	.word	p3
	.word	bullets
	.word	p4
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.word	prevTreasureNum
	.word	isLost
	.word	isWon
	.word	treasureNum
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L81
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
	mov	ip, #1
	ldr	r6, .L81+12
	ldr	r4, [r6]
	ldr	r7, [r6, #12]
	ldr	lr, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r4, r4, r7
	add	lr, lr, #20
.L71:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r4, lr}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L71
	mov	r3, #64
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #4
	mov	r7, #203
	mov	r4, #120
	mov	r0, #1
	ldr	lr, .L81+16
	str	r3, [lr, #12]
	str	r3, [lr, #8]
	ldr	r3, .L81+20
	str	fp, [lr]
	str	r7, [r3, #32]
	str	ip, [r3, #40]
	str	r4, [r3, #36]
	str	ip, [lr, #20]
	str	ip, [lr, #24]
	str	ip, [lr, #36]
	str	r5, [lr, #32]
	str	r10, [lr, #4]
	str	r9, [lr, #28]
	str	r8, [lr, #40]
	ldr	r3, .L81+8
.L72:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L72
	mov	r4, #0
	ldr	r3, .L81+24
	ldr	r3, [r3]
	ldr	ip, .L81+28
	cmp	r3, #1
	str	r4, [ip]
	streq	r3, [r6, #16]
	beq	.L74
	cmp	r3, #0
	ldreq	r3, .L81+32
	streq	r0, [r3, #16]
.L74:
	mov	ip, #1
	mov	r0, #0
	str	ip, [lr, #16]
	mov	r3, ip
	ldr	ip, .L81+36
	ldr	lr, .L81+40
	str	r0, [ip, #16]
	ldr	ip, .L81+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L81+48
	ldr	ip, .L81+52
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L75:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L75
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	hideSprites
	.word	blocks
	.word	bullets
	.word	leela
	.word	alien
	.word	treasure
	.word	characterChoice
	.word	curLocation
	.word	fry
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
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
	ldr	r5, [r6]
	ldr	r7, [r6, #12]
	ldr	r4, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r5, r5, r7
	add	r4, r4, #20
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L101
	mov	lr, pc
	bx	r3
	mov	lr, #0
	ldr	r2, .L101+4
	mov	r0, #8
	mov	r3, r2
	mov	ip, #1
	ldr	r8, .L101+8
	str	lr, [r8, #16]
	ldr	r8, .L101+12
	str	lr, [r8, #16]
	ldr	r8, .L101+16
	str	lr, [r8, #16]
	ldr	r8, .L101+20
	ldr	r6, .L101+24
	str	lr, [r8, #16]
	ldr	r8, .L101+28
	mov	r5, lr
	ldr	r4, [r6]
	ldr	r7, [r6, #12]
	str	lr, [r8, #16]
	ldr	lr, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r4, r4, r7
	add	lr, lr, #20
.L94:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r4, lr}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L94
	mov	lr, #64
	mov	r9, #170
	mov	r8, #90
	mov	r7, #2
	mov	r4, #4
	mov	r3, #1
	ldr	r0, .L101+32
	str	r9, [r0]
	str	ip, [r0, #20]
	str	ip, [r0, #24]
	str	ip, [r0, #36]
	str	r5, [r0, #32]
	str	ip, [r0, #16]
	str	r8, [r0, #4]
	str	r7, [r0, #28]
	str	r4, [r0, #40]
	str	lr, [r0, #12]
	str	lr, [r0, #8]
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
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L113
	mov	lr, pc
	bx	r3
	mov	r0, #0
	ldr	r3, .L113+4
	mov	r4, #8
	mov	ip, r3
	mov	lr, #1
	ldr	r7, .L113+8
	str	r0, [r7, #16]
	ldr	r7, .L113+12
	str	r0, [r7, #16]
	ldr	r7, .L113+16
	str	r0, [r7, #16]
	ldr	r7, .L113+20
	ldr	r8, .L113+24
	str	r0, [r7, #16]
	ldr	r7, .L113+28
	mov	r5, r0
	ldr	r6, [r8]
	ldr	r1, [r8, #12]
	str	r0, [r7, #16]
	ldr	r0, [r8, #52]
	add	r2, r3, #1392
	add	r2, r2, r4
	add	r1, r6, r1
	add	r0, r0, #20
.L104:
	str	r1, [ip]
	str	r0, [ip, #4]
	str	r4, [ip, #16]
	str	r4, [ip, #20]
	str	r5, [ip, #24]
	str	lr, [ip, #12]
	add	ip, ip, #28
	cmp	ip, r2
	bne	.L104
	ldr	r7, .L113+32
	str	lr, [r7, #20]
	str	lr, [r7, #24]
	str	lr, [r7, #36]
	mov	lr, #2
	mov	r9, #64
	mov	fp, #170
	mov	r10, #90
	str	lr, [r7, #28]
	mov	lr, #4
	mov	ip, #8
	mov	r6, #0
	mov	r4, #1
	str	lr, [r7, #40]
	str	fp, [r7]
	str	r5, [r7, #32]
	str	r10, [r7, #4]
	str	r9, [r7, #12]
	str	r9, [r7, #8]
	ldr	lr, .L113+4
.L105:
	str	r1, [lr]
	str	r0, [lr, #4]
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	str	r6, [lr, #24]
	str	r4, [lr, #12]
	add	lr, lr, #28
	cmp	lr, r2
	bne	.L105
	mov	r1, #1
	str	r4, [r7, #16]
.L106:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L106
	mov	r0, #3
	ldr	r3, .L113+36
	ldr	r3, [r3]
	ldr	r2, .L113+40
	cmp	r3, #1
	str	r0, [r2]
	streq	r3, [r8, #16]
	beq	.L103
	cmp	r3, #0
	ldreq	r3, .L113+44
	streq	r1, [r3, #16]
.L103:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L114:
	.align	2
.L113:
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
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L119+4
	ldr	ip, .L119+8
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L119+12
	ldr	ip, .L119+16
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L119+20
	ldr	ip, .L119+24
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L119+28
	ldr	ip, .L119+32
	ldr	r4, .L119+36
	ldr	lr, .L119+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #40]
	str	r0, [ip, #64]
	add	r2, r2, #8
.L116:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L116
	pop	{r4, lr}
	bx	lr
.L120:
	.align	2
.L119:
	.word	hideSprites
	.word	leela
	.word	alien
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	bullets
	.word	blocks
	.word	fry
	.word	spaceship
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
	ldr	r1, .L125
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L125+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L122
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L122:
	cmp	r3, #0
	streq	r3, [r1, #16]
	bx	lr
.L126:
	.align	2
.L125:
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #1
	ldr	r1, .L136
	ldr	r2, .L136+4
	ldm	r1, {r0, ip}
	ldr	lr, [r1, #12]
	ldr	r3, .L136+8
	ldr	r8, .L136+12
	ldr	r6, [r2]
	ldr	r7, [r2, #12]
	ldr	r5, [r2, #52]
	add	lr, lr, r0
	ldr	r1, [r8]
	add	r0, r3, #1392
	add	ip, ip, #20
	add	r6, r6, r7
	add	r5, r5, #20
	add	r0, r0, #8
.L130:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L132
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L132
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L132:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L130
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L137:
	.align	2
.L136:
	.word	fry
	.word	leela
	.word	bullets
	.word	characterChoice
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
	ldr	r4, .L155
	ldr	r2, .L155+4
	ldr	r3, [r4, #4]
	ldr	lr, [r4, #24]
	ldr	r2, [r2]
	add	r1, r3, lr
	cmp	r2, r1, asr #8
	movge	r2, #0
	asrge	r1, r3, #8
	ldr	r3, .L155+8
	ldrh	r0, [r3]
	movge	lr, r2
	strge	r2, [r4, #48]
	asrlt	r1, r1, #8
	tst	r0, #64
	beq	.L141
	ldr	r3, .L155+12
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L152
.L141:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L155+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	add	r2, lr, #50
	add	r1, r1, #90
	cmp	ip, r3, ror #1
	str	r2, [r4, #24]
	str	r1, [r4, #4]
	bcc	.L142
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L153
.L142:
	tst	r0, #16
	beq	.L146
	ldr	r3, .L155+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L154
.L146:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L152:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	lr, lr, #1488
	streq	r3, [r4, #48]
	subeq	lr, lr, #12
	b	.L141
.L153:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L142
.L154:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L156:
	.align	2
.L155:
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
	ldr	r3, .L172
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L172+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L158
	ldr	r2, .L172+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L170
.L158:
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
	ldr	ip, .L172+12
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
	bcc	.L161
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L161:
	tst	r0, #16
	beq	.L165
	ldr	r3, .L172+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L171
.L165:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L170:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L158
.L171:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L173:
	.align	2
.L172:
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
	ldr	r1, .L180
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
	beq	.L179
.L176:
	pop	{r4, lr}
	bx	lr
.L179:
	ldr	lr, [r1]
	cmp	r3, lr
	bge	.L176
	ldr	r0, [r0, #12]
	add	r3, r3, r0
	cmp	lr, r3
	sublt	r2, r2, ip
	strlt	r2, [r1, #52]
	pop	{r4, lr}
	bx	lr
.L181:
	.align	2
.L180:
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
	ldr	r6, .L200
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #16
	ldr	r3, .L200+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L198
.L183:
	cmp	r5, #0
	beq	.L199
.L182:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L199:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L200+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldm	r6, {r0, r1}
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L200+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L194
	mov	r2, #1
	mov	r1, r5
	ldr	r0, .L200+16
	ldr	r3, .L200+20
	str	r2, [r4, #28]
	str	r5, [r4, #20]
	add	r2, r3, #1392
	str	r5, [r6, #16]
	str	r5, [r0, #16]
	str	r5, [r0, #40]
	str	r5, [r0, #64]
	add	r2, r2, #8
.L193:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L193
.L194:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L182
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L182
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L182
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L200+24
	streq	r3, [r2]
	b	.L182
.L198:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L200+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r0, [r7]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L200+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L186
	ldr	r0, [r4, #28]
	cmp	r0, #0
	bne	.L186
	mov	r1, r0
	ldr	ip, .L200+16
	ldr	r3, .L200+20
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	add	r2, r3, #1392
	str	r0, [r7, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #40]
	str	r0, [ip, #64]
	add	r2, r2, #8
.L187:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L187
.L186:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L183
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L183
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L183
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L200+24
	streq	r3, [r2]
	b	.L183
.L201:
	.align	2
.L200:
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
	ldr	r3, .L251
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L248
	cmp	r2, #0
	moveq	r2, #512
	ldreq	lr, .L251+4
	ldrne	lr, .L251+4
	strheq	r2, [lr]	@ movhi
.L204:
	ldr	r2, .L251+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L249
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [lr, #88]	@ movhi
.L206:
	ldr	r3, .L251+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L250
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [lr, #48]	@ movhi
.L208:
	ldr	r1, .L251+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L251+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L209
	mov	ip, #152
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L210
.L211:
	ldr	r3, .L251+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #72]	@ movhi
	beq	.L236
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #74]	@ movhi
	strh	r0, [lr, #72]	@ movhi
	strh	r1, [lr, #76]	@ movhi
.L236:
	ldr	r3, .L251+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #128]	@ movhi
	beq	.L235
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #130]	@ movhi
	strh	r0, [lr, #128]	@ movhi
	strh	r1, [lr, #132]	@ movhi
.L235:
	ldr	r3, .L251+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #136]	@ movhi
	beq	.L234
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #138]	@ movhi
	strh	r0, [lr, #136]	@ movhi
	strh	r1, [lr, #140]	@ movhi
.L234:
	mov	r5, #512
	mov	r4, #148
	ldr	r3, .L251+36
	ldr	ip, .L251+40
	add	r1, r3, #72
.L217:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldrne	r2, [r3]
	ldrne	r0, [r3, #4]
	orrne	r2, r2, ip
	add	r3, r3, #24
	strhne	r4, [lr, #84]	@ movhi
	strhne	r2, [lr, #82]	@ movhi
	strhne	r0, [lr, #80]	@ movhi
	strheq	r5, [lr, #80]	@ movhi
	cmp	r1, r3
	bne	.L217
	mov	r5, #512
	mov	r4, #154
	ldr	r3, .L251+44
	ldr	r2, .L251+48
	add	r0, r3, #1392
	add	r0, r0, #8
.L220:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #28
	strhne	r4, [r2, #4]	@ movhi
	strhne	ip, [r2]	@ movhi
	strhne	r1, [r2, #2]	@ movhi
	strheq	r5, [r2]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L220
	ldr	r3, .L251+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #8]	@ movhi
	beq	.L233
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #10]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r1, [lr, #12]	@ movhi
.L233:
	mov	r6, #512
	mov	r5, #156
	ldr	r3, .L251+4
	ldr	r2, .L251+56
	ldr	r4, .L251+40
	add	r0, r3, #40
.L224:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	ldmne	r2, {r1, ip}
	orrne	r1, r1, r4
	strhne	r5, [r3, #148]	@ movhi
	strhne	r1, [r3, #146]	@ movhi
	strhne	ip, [r3, #144]	@ movhi
	strheq	r6, [r3, #144]	@ movhi
	add	r3, r3, #8
	cmp	r0, r3
	add	r2, r2, #32
	bne	.L224
	ldr	r3, .L251+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L232
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L232:
	ldr	r3, .L251+64
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L231
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L231:
	ldr	r3, .L251+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L230
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L230:
	ldr	r3, .L251+72
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L229
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L229:
	ldr	r3, .L251+76
	mov	lr, pc
	bx	r3
	ldr	r4, .L251+80
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L251+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L251+84
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L251+88
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L209:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [lr, #56]	@ movhi
	beq	.L237
	mov	r2, #152
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #68]	@ movhi
.L237:
	mov	r3, #512
	strh	r3, [lr, #64]	@ movhi
	b	.L211
.L210:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L211
.L250:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [lr, #50]	@ movhi
	strh	r2, [lr, #52]	@ movhi
	strh	r0, [lr, #48]	@ movhi
	b	.L208
.L249:
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r2, #36]
	ldr	r3, [r2, #28]
	add	r3, r3, r0, lsl #5
	ldr	r0, [r2, #52]
	lsl	r3, r3, #3
	strh	r1, [lr, #90]	@ movhi
	strh	r3, [lr, #92]	@ movhi
	strh	r0, [lr, #88]	@ movhi
	b	.L206
.L248:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	lr, .L251+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	b	.L204
.L252:
	.align	2
.L251:
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	ldr	r2, .L259
	ldr	r3, .L259+4
	ldr	r10, .L259+8
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L259+12
	ldr	ip, .L259+16
	ldr	r0, .L259+20
	ldr	r1, .L259+24
	ldr	r7, .L259+28
	ldr	r3, .L259+32
	ldr	r2, .L259+36
	ldr	r9, .L259+40
	ldr	r8, .L259+44
	ldr	r6, .L259+48
	ldr	r4, .L259+52
	str	r5, [r10, #20]
	str	r5, [r10, #52]
	str	r5, [r10, #84]
	str	r5, [r10, #116]
	str	r5, [r10, #148]
	str	r5, [lr, #16]
	str	r5, [ip, #16]
	str	r5, [r0, #16]
	str	r5, [r1, #16]
	str	r5, [r7, #16]
	str	r5, [r3, #16]
	str	r5, [r2, #16]
	str	r5, [r6, #16]
	str	r5, [r4, #16]
	str	r5, [r9, #16]
	str	r5, [r8, #16]
	bl	initLives
	mov	lr, #1
	mov	r0, r10
	mov	r2, r5
	mov	r3, r10
	mov	r1, lr
	mov	fp, lr
	mov	r10, #220
	mov	r5, #100
	mov	ip, #32
	str	lr, [r7, #16]
	ldr	r7, .L259+32
	str	lr, [r7, #16]
	ldr	r7, .L259+36
	str	lr, [r9, #16]
	str	lr, [r8, #16]
	str	lr, [r7, #16]
.L254:
	add	lr, r0, r1, lsl #5
	add	r1, r1, #1
	cmp	r1, #5
	str	r10, [r3, #32]
	str	r5, [r3, #36]
	str	r2, [r3, #52]
	str	ip, [r3, #48]
	str	ip, [r3, #44]
	str	r2, [lr, #24]
	add	r3, r3, #32
	str	fp, [r3, #8]
	str	r2, [r3, #28]
	bne	.L254
	mov	r2, #8
	mov	r7, #0
	mov	r5, #1
	ldr	r3, .L259+56
	ldr	r0, [r6]
	ldr	lr, [r6, #12]
	ldr	r1, [r6, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L255:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r7, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L255
	ldr	r3, .L259+60
	mov	lr, pc
	bx	r3
	mov	r3, #64
	mov	ip, #170
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	str	r5, [r4, #20]
	str	r5, [r4, #24]
	str	r7, [r4, #16]
	str	r5, [r4, #36]
	str	r7, [r4, #32]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawGame
.L260:
	.align	2
.L259:
	.word	p4
	.word	spaceship
	.word	treasure
	.word	fry
	.word	p1
	.word	p2
	.word	p3
	.word	life3
	.word	life4
	.word	life5
	.word	life1
	.word	life2
	.word	leela
	.word	alien
	.word	bullets
	.word	hideSprites
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
	ldr	r2, .L269
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L269+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L269+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L269+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L269+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L269+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L269+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L269+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L269+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L269+12
	ldr	r2, [r3, #60]
	cmp	r2, #1
	beq	.L268
.L261:
	pop	{r4, lr}
	bx	lr
.L268:
	ldr	r2, [r3, #92]
	cmp	r2, #1
	bne	.L261
	ldr	r2, [r3, #124]
	cmp	r2, #1
	bne	.L261
	ldr	r3, [r3, #156]
	cmp	r3, #1
	ldreq	r2, .L269+16
	streq	r3, [r2]
	b	.L261
.L270:
	.align	2
.L269:
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
	ldr	r3, .L275
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L275+4
	ldr	lr, .L275+8
	ldr	r3, .L275+12
	str	r0, [lr, #16]
	ldr	r4, .L275+16
	ldr	lr, .L275+20
	str	r0, [ip, #16]
	ldr	ip, .L275+24
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [ip, #20]
	str	r0, [ip, #52]
	str	r0, [ip, #84]
	str	r0, [ip, #116]
	str	r0, [ip, #148]
	str	r0, [lr, #16]
	str	r0, [lr, #40]
	str	r0, [lr, #64]
	add	r2, r2, #8
.L272:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L272
	pop	{r4, lr}
	b	drawGame
.L276:
	.align	2
.L275:
	.word	hideSprites
	.word	leela
	.word	alien
	.word	bullets
	.word	fry
	.word	blocks
	.word	treasure
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
	ldr	r3, .L281
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L281+4
	ldr	lr, .L281+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L281+12
	ldr	lr, .L281+16
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L281+20
	ldr	lr, .L281+24
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L281+28
	ldr	lr, .L281+32
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L281+36
	ldr	lr, .L281+40
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L281+44
	ldr	lr, .L281+48
	ldr	r3, .L281+52
	str	r0, [lr, #16]
	ldr	r4, .L281+56
	ldr	lr, .L281+60
	str	r0, [ip, #16]
	ldr	ip, .L281+64
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [ip, #20]
	str	r0, [ip, #52]
	str	r0, [ip, #84]
	str	r0, [ip, #116]
	str	r0, [ip, #148]
	str	r0, [lr, #16]
	str	r0, [lr, #40]
	str	r0, [lr, #64]
	add	r2, r2, #8
.L278:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L278
	pop	{r4, lr}
	b	drawGame
.L282:
	.align	2
.L281:
	.word	hideSprites
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
	.word	life5
	.word	bullets
	.word	fry
	.word	blocks
	.word	treasure
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
	ldr	r5, .L343
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r4, .L343+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L343+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L284
.L286:
	ldr	r0, [r4]
.L285:
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
	beq	.L287
.L289:
	ldr	r0, [r4]
.L288:
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
	beq	.L290
.L292:
	ldr	r0, [r4]
.L291:
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
	beq	.L293
.L295:
	ldr	r0, [r4]
.L294:
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
	beq	.L341
.L296:
	ldr	r5, .L343+12
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
	beq	.L297
.L299:
	ldr	r0, [r4]
.L298:
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
	beq	.L300
.L302:
	ldr	r0, [r4]
.L301:
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
	beq	.L303
.L305:
	ldr	r0, [r4]
.L304:
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
	beq	.L306
.L308:
	ldr	r0, [r4]
.L307:
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
	beq	.L342
.L283:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L284:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L286
	ldr	ip, .L343+16
	ldr	r1, .L343+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L286
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L343+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L285
.L342:
	ldr	r3, .L343+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L283
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L283
	ldr	r3, .L343+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L343+28
	ldreq	r2, .L343+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L283
.L306:
	ldr	r3, .L343+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L308
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L308
	ldr	r2, .L343+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L308
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L343+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L307
.L303:
	ldr	r3, .L343+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L305
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L305
	ldr	r2, .L343+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L305
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L343+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L304
.L300:
	ldr	r3, .L343+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L302
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L302
	ldr	r2, .L343+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L302
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L343+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L301
.L297:
	ldr	r2, .L343+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L299
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L299
	ldr	r1, .L343+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L299
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L343+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L298
.L341:
	ldr	r3, .L343+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L296
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L296
	ldr	r3, .L343+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L343+28
	ldreq	r2, .L343+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L296
.L293:
	ldr	r3, .L343+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L295
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L295
	ldr	r2, .L343+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L295
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L343+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L294
.L290:
	ldr	r3, .L343+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L292
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L292
	ldr	r2, .L343+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L292
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L343+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L291
.L287:
	ldr	r3, .L343+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L289
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L289
	ldr	r2, .L343+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L289
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L343+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L288
.L344:
	.align	2
.L343:
	.word	fry
	.word	alien
	.word	collision
	.word	leela
	.word	lifeCounter
	.word	characterChoice
	.word	life5
	.word	life1
	.word	isLost
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
	add	r6, r4, #1392
	add	r6, r6, #8
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
	ldr	r3, [r5, #56]
	cmp	r3, #200
	bgt	.L357
.L348:
	ldr	r3, [r5, #56]
	add	r3, r3, #1
	str	r3, [r5, #56]
	mov	r8, #0
	bl	updateLives
	ldr	r5, .L358+20
	ldr	r7, .L358+24
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
	add	r0, r5, #32
	str	r3, [r5, #52]
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
	add	r6, r4, #1392
	add	r6, r6, #8
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
	ldr	r3, [r5, #88]
	cmp	r3, #200
	bgt	.L372
.L363:
	mov	r8, #0
	ldr	r3, [r5, #88]
	add	r3, r3, #1
	str	r3, [r5, #88]
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
	add	r0, r5, #64
	str	r3, [r5, #84]
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
	add	r6, r4, #1392
	add	r6, r6, #8
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
	ldr	r3, [r5, #120]
	cmp	r3, #200
	bgt	.L387
.L378:
	mov	r8, #0
	ldr	r3, [r5, #120]
	add	r3, r3, #1
	str	r3, [r5, #120]
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
	add	r0, r5, #96
	str	r3, [r5, #116]
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
	ldr	r2, .L403
	ldrh	r3, [r2]
	ldr	r0, .L403+4
	ldr	r4, .L403+8
	add	r3, r3, #1
	ldr	r1, .L403+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	r5, r4
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	add	r6, r4, #1392
	add	r6, r6, #8
.L392:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L391:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L392
	ldr	r5, .L403+16
	bl	updateLives
	ldr	r3, [r5, #152]
	cmp	r3, #200
	bgt	.L402
.L393:
	mov	r8, #0
	ldr	r3, [r5, #152]
	add	r3, r3, #1
	str	r3, [r5, #152]
	ldr	r7, .L403+20
	ldr	r5, .L403+24
.L395:
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
	bne	.L395
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L402:
	mov	r3, #1
	add	r0, r5, #128
	str	r3, [r5, #148]
	bl	updateTreasure
	b	.L393
.L404:
	.align	2
.L403:
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
	.comm	bullets,1400,4
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
	.comm	fry,56,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ground, %object
	.size	ground, 4
ground:
	.word	154
	.ident	"GCC: (devkitARM release 53) 9.1.0"
