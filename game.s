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
	str	lr, [sp, #-4]!
	mov	r1, #1
	mov	r2, #32
	mov	lr, #130
	mov	ip, #280
	ldr	r3, .L24
	ldr	r0, [r3]
	ldr	r3, .L24+4
	sub	r0, r0, #16
	str	r0, [r3, #4]
	str	r0, [r3, #28]
	str	r0, [r3, #52]
	ldr	r0, .L24+8
	str	lr, [r3]
	str	ip, [r3, #24]
	str	r0, [r3, #48]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #60]
	str	r2, [r3, #56]
	ldr	lr, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.word	blocks
	.word	430
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
	ldr	r0, .L28
	str	r2, [r0]
	ldr	r0, .L28+4
	stmib	r0, {r1, r3}
	str	r2, [r0, #16]
	str	r1, [r0]
	str	r3, [r0, #12]
	ldr	r0, .L28+8
	str	r5, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L28+12
	str	r4, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L28+16
	str	lr, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L28+20
	pop	{r4, r5, lr}
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0]
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r1, .L34
	ldr	r3, .L34+4
	ldr	ip, [r1]
	ldr	r5, [r1, #12]
	ldr	r0, [r1, #52]
	add	r1, r3, #1392
	add	ip, ip, r5
	add	r0, r0, #20
	add	r1, r1, r2
.L31:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L31
	pop	{r4, r5, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	lr, .L40
	mov	r6, r2
	mov	r3, lr
	mov	r5, #220
	mov	r4, #100
	mov	r1, #0
	mov	r0, #32
.L37:
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
	bne	.L37
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L43
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L44:
	.align	2
.L43:
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
	ldr	r3, .L46
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L47:
	.align	2
.L46:
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
	ldr	r3, .L49
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r3, .L52
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r3, .L65
	ldr	r3, [r3]
	ldr	ip, .L65+4
	cmp	r3, r1
	stmib	ip, {r0, r2}
	str	r1, [ip, #20]
	str	r1, [ip, #24]
	str	lr, [ip]
	str	r2, [ip, #12]
	beq	.L63
	cmp	r3, #0
	bne	.L64
	mov	r5, #3
	mov	r4, #23040
	mov	lr, #4
	ldr	r2, .L65+8
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
	ldr	r5, .L65+12
.L57:
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
	ldr	ip, .L65+16
	str	r1, [r5, #16]
	str	r1, [ip, #20]
	ldr	r5, .L65+20
	str	r1, [ip, #52]
	str	r1, [ip, #84]
	str	r1, [ip, #116]
	str	r1, [ip, #148]
	ldr	ip, .L65+24
	str	r1, [r5, #16]
	str	r1, [ip, #16]
	ldr	r5, .L65+28
	str	r1, [ip, #40]
	str	r1, [ip, #64]
	ldr	ip, .L65+32
	str	r7, [r5]
	stm	ip, {r7, fp}
	ldr	r7, .L65+36
	str	r1, [r2, #16]
	mov	r4, r1
	ldr	r3, .L65+40
	ldr	r1, .L65+44
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
.L58:
	str	r4, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L58
	ldr	r5, .L65+48
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L65+52
	ldr	r1, .L65+56
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L65+60
	ldr	r1, .L65+64
	mov	lr, pc
	bx	r5
	ldr	r3, .L65+68
	ldr	r0, .L65+72
	ldr	r1, .L65+76
	ldr	r2, .L65+80
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L63:
	mov	r2, #0
	mov	r4, #3
	mov	lr, #23040
	mov	r1, #4
	ldr	r5, .L65+12
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
	ldr	r2, .L65+8
	b	.L57
.L64:
	ldr	r5, .L65+12
	ldr	r2, .L65+8
	b	.L57
.L66:
	.align	2
.L65:
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
	mov	r7, #1
	mov	r8, #32
	mov	r4, #130
	mov	r9, #280
	ldr	r3, .L77
	mov	lr, pc
	bx	r3
	ldr	r2, .L77+4
	mov	r0, #8
	mov	r3, r2
	mov	ip, r7
	mov	r5, #0
	ldr	r1, .L77+8
	ldr	r1, [r1]
	ldr	lr, .L77+12
	sub	r1, r1, #16
	ldr	r6, .L77+16
	str	r1, [lr, #4]
	str	r1, [lr, #28]
	str	r1, [lr, #52]
	ldr	r1, .L77+20
	str	r4, [lr]
	str	r9, [lr, #24]
	str	r1, [lr, #48]
	ldr	r4, [r6]
	ldr	r9, [r6, #12]
	str	r7, [lr, #16]
	str	r7, [lr, #20]
	str	r7, [lr, #40]
	str	r7, [lr, #44]
	str	r7, [lr, #64]
	str	r7, [lr, #68]
	str	r8, [lr, #12]
	str	r8, [lr, #8]
	str	r8, [lr, #36]
	str	r8, [lr, #32]
	str	r8, [lr, #60]
	str	r8, [lr, #56]
	ldr	lr, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r4, r4, r9
	add	lr, lr, #20
.L68:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r4, lr}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L68
	mov	r3, #64
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #4
	mov	r7, #203
	mov	r4, #120
	mov	r0, #1
	ldr	lr, .L77+24
	str	r3, [lr, #12]
	str	r3, [lr, #8]
	ldr	r3, .L77+28
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
	ldr	r3, .L77+4
.L69:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L69
	mov	r4, #0
	ldr	r3, .L77+32
	ldr	r3, [r3]
	ldr	ip, .L77+36
	cmp	r3, #1
	str	r4, [ip]
	streq	r3, [r6, #16]
	beq	.L71
	cmp	r3, #0
	ldreq	r3, .L77+40
	streq	r0, [r3, #16]
.L71:
	mov	ip, #1
	mov	r0, #0
	str	ip, [lr, #16]
	mov	r3, ip
	ldr	ip, .L77+44
	ldr	lr, .L77+48
	str	r0, [ip, #16]
	ldr	ip, .L77+52
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L77+56
	ldr	ip, .L77+60
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L72:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L72
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	hideSprites
	.word	bullets
	.word	.LANCHOR0
	.word	blocks
	.word	leela
	.word	430
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	mov	lr, #8
	mov	ip, r3
	mov	r0, #0
	mov	r1, #1
	ldr	r6, .L89+8
	ldr	r5, [r6]
	ldr	r7, [r6, #12]
	ldr	r4, [r6, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r5, r5, r7
	add	r4, r4, #20
.L80:
	str	r5, [ip]
	str	r4, [ip, #4]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	r0, [ip, #24]
	str	r1, [ip, #12]
	add	ip, ip, #28
	cmp	ip, r2
	bne	.L80
	mov	r4, #32
	ldr	lr, .L89+12
	mov	fp, #130
	ldr	r5, [lr]
	mov	r10, #280
	ldr	lr, .L89+16
	str	r4, [lr, #12]
	str	r4, [lr, #8]
	str	r4, [lr, #36]
	str	r4, [lr, #32]
	str	r4, [lr, #60]
	str	r4, [lr, #56]
	mov	r4, #2
	sub	r5, r5, #16
	str	r5, [lr, #4]
	str	r5, [lr, #28]
	str	r5, [lr, #52]
	ldr	r5, .L89+20
	str	r1, [lr, #20]
	str	r1, [lr, #40]
	str	r1, [lr, #16]
	str	r1, [lr, #44]
	str	r1, [lr, #64]
	str	r1, [lr, #68]
	str	fp, [lr]
	str	r10, [lr, #24]
	str	r5, [lr, #48]
	ldr	lr, .L89+24
	str	r4, [lr, #28]
	mov	r4, #4
	mov	r7, #64
	mov	r9, #170
	mov	r8, #90
	mov	ip, #1
	str	r4, [lr, #40]
	ldr	r4, .L89+28
	str	r0, [r4, #16]
	ldr	r4, .L89+32
	str	r0, [r4, #16]
	ldr	r4, .L89+36
	str	r0, [r4, #16]
	ldr	r4, .L89+40
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	r9, [lr]
	str	r0, [lr, #32]
	str	r8, [lr, #4]
	str	r7, [lr, #12]
	str	r7, [lr, #8]
	str	r0, [r4, #16]
	ldr	r4, .L89+44
	str	r1, [lr, #16]
	str	r0, [r4, #16]
	ldr	r1, .L89+4
.L81:
	str	ip, [r1, #24]
	add	r1, r1, #28
	cmp	r1, r2
	bne	.L81
	mov	r1, #1
.L82:
	str	r1, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L82
	ldr	r2, .L89+48
	ldr	r0, .L89+52
	ldr	r3, [r2, #68]
	ldr	r0, [r0]
	ldr	ip, .L89+56
	add	r3, r3, #25
	cmp	r0, #1
	str	r3, [r2, #68]
	str	r1, [ip]
	streq	r0, [r6, #16]
	beq	.L79
	cmp	r0, #0
	ldreq	r3, .L89+60
	streq	r1, [r3, #16]
.L79:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	hideSprites
	.word	bullets
	.word	leela
	.word	.LANCHOR0
	.word	blocks
	.word	430
	.word	alien
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	treasure
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+4
	mov	lr, #8
	mov	ip, r3
	mov	r1, #1
	ldr	r8, .L99+8
	str	r4, [r8, #16]
	ldr	r8, .L99+12
	str	r4, [r8, #16]
	ldr	r8, .L99+16
	str	r4, [r8, #16]
	ldr	r8, .L99+20
	ldr	r6, .L99+24
	str	r4, [r8, #16]
	ldr	r8, .L99+28
	mov	r0, r4
	ldr	r5, [r6]
	ldr	r7, [r6, #12]
	str	r4, [r8, #16]
	ldr	r4, [r6, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r5, r5, r7
	add	r4, r4, #20
.L92:
	str	r5, [ip]
	str	r4, [ip, #4]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	r0, [ip, #24]
	str	r1, [ip, #12]
	add	ip, ip, #28
	cmp	ip, r2
	bne	.L92
	mov	r4, #32
	mov	fp, #130
	mov	r10, #280
	ldr	lr, .L99+32
	ldr	r5, [lr]
	ldr	lr, .L99+36
	sub	r5, r5, #16
	str	r5, [lr, #4]
	str	r5, [lr, #28]
	str	r5, [lr, #52]
	ldr	r5, .L99+40
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r1, [lr, #40]
	str	r1, [lr, #44]
	str	r1, [lr, #64]
	str	r1, [lr, #68]
	str	fp, [lr]
	str	r10, [lr, #24]
	str	r4, [lr, #12]
	str	r4, [lr, #8]
	str	r4, [lr, #36]
	str	r4, [lr, #32]
	str	r5, [lr, #48]
	str	r4, [lr, #60]
	str	r4, [lr, #56]
	ldr	lr, .L99+44
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	r1, [lr, #16]
	mov	r1, #2
	mov	r7, #64
	mov	r9, #170
	mov	r8, #90
	str	r1, [lr, #28]
	mov	r1, #4
	mov	ip, #1
	str	r9, [lr]
	str	r0, [lr, #32]
	str	r8, [lr, #4]
	str	r1, [lr, #40]
	str	r7, [lr, #12]
	str	r7, [lr, #8]
.L93:
	str	ip, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L93
	mov	r0, #2
	ldr	r2, .L99+48
	ldr	r1, .L99+52
	ldr	r3, [r2, #100]
	ldr	r1, [r1]
	add	r3, r3, #25
	str	r3, [r2, #100]
	ldr	r3, .L99+56
	cmp	r1, #1
	str	r0, [r3]
	streq	r1, [r6, #16]
	beq	.L91
	cmp	r1, #0
	ldreq	r3, .L99+60
	streq	ip, [r3, #16]
.L91:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	hideSprites
	.word	bullets
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	leela
	.word	p4
	.word	.LANCHOR0
	.word	blocks
	.word	430
	.word	alien
	.word	treasure
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
	mov	r4, #0
	ldr	r3, .L109
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+4
	mov	lr, #8
	mov	ip, r3
	mov	r1, #1
	ldr	r8, .L109+8
	str	r4, [r8, #16]
	ldr	r8, .L109+12
	str	r4, [r8, #16]
	ldr	r8, .L109+16
	str	r4, [r8, #16]
	ldr	r8, .L109+20
	ldr	r6, .L109+24
	str	r4, [r8, #16]
	ldr	r8, .L109+28
	mov	r0, r4
	ldr	r5, [r6]
	ldr	r7, [r6, #12]
	str	r4, [r8, #16]
	ldr	r4, [r6, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r5, r5, r7
	add	r4, r4, #20
.L102:
	str	r5, [ip]
	str	r4, [ip, #4]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	r0, [ip, #24]
	str	r1, [ip, #12]
	add	ip, ip, #28
	cmp	ip, r2
	bne	.L102
	mov	r4, #32
	mov	fp, #130
	mov	r10, #280
	ldr	lr, .L109+32
	ldr	r5, [lr]
	ldr	lr, .L109+36
	sub	r5, r5, #16
	str	r5, [lr, #4]
	str	r5, [lr, #28]
	str	r5, [lr, #52]
	ldr	r5, .L109+40
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r1, [lr, #40]
	str	r1, [lr, #44]
	str	r1, [lr, #64]
	str	r1, [lr, #68]
	str	fp, [lr]
	str	r10, [lr, #24]
	str	r4, [lr, #12]
	str	r4, [lr, #8]
	str	r4, [lr, #36]
	str	r4, [lr, #32]
	str	r5, [lr, #48]
	str	r4, [lr, #60]
	str	r4, [lr, #56]
	ldr	lr, .L109+44
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	r1, [lr, #16]
	mov	r1, #2
	mov	r7, #64
	mov	r9, #170
	mov	r8, #90
	str	r1, [lr, #28]
	mov	r1, #4
	mov	ip, #1
	str	r9, [lr]
	str	r0, [lr, #32]
	str	r8, [lr, #4]
	str	r1, [lr, #40]
	str	r7, [lr, #12]
	str	r7, [lr, #8]
.L103:
	str	ip, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L103
	mov	r0, #3
	ldr	r2, .L109+48
	ldr	r1, .L109+52
	ldr	r3, [r2, #132]
	ldr	r1, [r1]
	add	r3, r3, #25
	str	r3, [r2, #132]
	ldr	r3, .L109+56
	cmp	r1, #1
	str	r0, [r3]
	streq	r1, [r6, #16]
	beq	.L101
	cmp	r1, #0
	ldreq	r3, .L109+60
	streq	ip, [r3, #16]
.L101:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	hideSprites
	.word	bullets
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	leela
	.word	p4
	.word	.LANCHOR0
	.word	blocks
	.word	430
	.word	alien
	.word	treasure
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
	ldr	r3, .L115
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L115+4
	ldr	ip, .L115+8
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L115+12
	ldr	ip, .L115+16
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L115+20
	ldr	ip, .L115+24
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L115+28
	ldr	ip, .L115+32
	ldr	r4, .L115+36
	ldr	lr, .L115+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #40]
	str	r0, [ip, #64]
	add	r2, r2, #8
.L112:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L112
	pop	{r4, lr}
	bx	lr
.L116:
	.align	2
.L115:
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
	ldr	r1, .L121
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L121+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L118
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L118:
	cmp	r3, #0
	streq	r3, [r1, #16]
	bx	lr
.L122:
	.align	2
.L121:
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
	ldr	r1, .L132
	ldr	r2, .L132+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L132+8
	ldr	r8, .L132+12
	ldr	ip, [r1, #52]
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
.L126:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L128
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L128
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L128:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L126
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L133:
	.align	2
.L132:
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
	ldr	r3, .L150
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L150+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L135
	ldr	r2, .L150+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L147
.L135:
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
	ldr	ip, .L150+12
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	strgt	r1, [r4, #4]
	asr	r1, r1, #8
	cmp	ip, r3, ror #1
	str	r1, [r4, #52]
	bcc	.L138
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L148
.L138:
	tst	r0, #16
	beq	.L142
	ldr	r3, .L150+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L149
.L142:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L147:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L135
.L148:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L138
.L149:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L151:
	.align	2
.L150:
	.word	oldButtons
	.word	fry
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
	ldr	r3, .L167
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L167+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L153
	ldr	r2, .L167+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L165
.L153:
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
	ldr	ip, .L167+12
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
	bcc	.L156
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L156:
	tst	r0, #16
	beq	.L160
	ldr	r3, .L167+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L166
.L160:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L165:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L153
.L166:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L168:
	.align	2
.L167:
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
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	lr, [r0, #20]
	ldr	r3, [r0]
	ldr	ip, [r0, #8]
	ldr	r1, [r0, #12]
	ldr	r2, [r0, #4]
	sub	sp, sp, #20
	sub	r3, r3, lr
	str	r3, [r4]
	ldr	r0, .L174
	str	r3, [sp]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r5, .L174+4
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r1, [r0, #52]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	rsble	r3, r3, #240
	strle	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L175:
	.align	2
.L174:
	.word	leela
	.word	collision
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
	ldr	r6, .L194
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #16
	ldr	r3, .L194+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L192
.L177:
	cmp	r5, #0
	beq	.L193
.L176:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L193:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L194+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #52]
	ldr	r0, [r6]
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L194+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L188
	mov	r2, #1
	mov	r1, r5
	ldr	r0, .L194+16
	ldr	r3, .L194+20
	str	r2, [r4, #28]
	str	r5, [r4, #20]
	add	r2, r3, #1392
	str	r5, [r6, #16]
	str	r5, [r0, #16]
	str	r5, [r0, #40]
	str	r5, [r0, #64]
	add	r2, r2, #8
.L187:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L187
.L188:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L176
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L176
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L176
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L194+24
	streq	r3, [r2]
	b	.L176
.L192:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L194+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r0, [r7]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L194+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L180
	ldr	r0, [r4, #28]
	cmp	r0, #0
	bne	.L180
	mov	r1, r0
	ldr	ip, .L194+16
	ldr	r3, .L194+20
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	add	r2, r3, #1392
	str	r0, [r7, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #40]
	str	r0, [ip, #64]
	add	r2, r2, #8
.L181:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L181
.L180:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L177
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L177
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L177
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L194+24
	streq	r3, [r2]
	b	.L177
.L195:
	.align	2
.L194:
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
	ldr	r3, .L245
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L242
	cmp	r2, #0
	moveq	r2, #512
	ldreq	r6, .L245+4
	ldrne	r6, .L245+4
	strheq	r2, [r6]	@ movhi
.L198:
	ldr	r2, .L245+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L243
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [r6, #88]	@ movhi
.L200:
	ldr	r3, .L245+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L244
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [r6, #48]	@ movhi
.L202:
	ldr	r1, .L245+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L245+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L203
	mov	ip, #152
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [r6, #58]	@ movhi
	strh	r1, [r6, #56]	@ movhi
	strh	ip, [r6, #60]	@ movhi
	bne	.L204
.L205:
	ldr	r3, .L245+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #72]	@ movhi
	beq	.L230
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r6, #74]	@ movhi
	strh	r0, [r6, #72]	@ movhi
	strh	r1, [r6, #76]	@ movhi
.L230:
	ldr	r3, .L245+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #128]	@ movhi
	beq	.L229
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r6, #130]	@ movhi
	strh	r0, [r6, #128]	@ movhi
	strh	r1, [r6, #132]	@ movhi
.L229:
	ldr	r3, .L245+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #136]	@ movhi
	beq	.L228
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r6, #138]	@ movhi
	strh	r0, [r6, #136]	@ movhi
	strh	r1, [r6, #140]	@ movhi
.L228:
	ldr	lr, .L245+4
	mov	r5, #512
	mov	r6, lr
	mov	r3, lr
	mov	r4, #148
	ldr	r2, .L245+36
	add	r0, lr, #24
.L211:
	ldr	r1, [r2, #16]
	cmp	r1, #0
	ldmne	r2, {r1, ip}
	orrne	r1, r1, #16384
	strhne	r4, [r3, #244]	@ movhi
	strhne	r1, [r3, #242]	@ movhi
	strhne	ip, [r3, #240]	@ movhi
	strheq	r5, [r3, #240]	@ movhi
	add	r3, r3, #8
	cmp	r0, r3
	add	r2, r2, #24
	bne	.L211
	mov	r5, #512
	mov	r4, #154
	ldr	r3, .L245+40
	ldr	r2, .L245+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L214:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #28
	strhne	r4, [r2, #4]	@ movhi
	strhne	ip, [r2]	@ movhi
	strhne	r1, [r2, #2]	@ movhi
	strheq	r5, [r2]	@ movhi
	cmp	r0, r3
	add	r2, r2, #8
	bne	.L214
	ldr	r3, .L245+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #8]	@ movhi
	beq	.L227
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #10]	@ movhi
	strh	r3, [r6, #8]	@ movhi
	strh	r1, [r6, #12]	@ movhi
.L227:
	mov	r5, #512
	mov	r4, #156
	ldr	r3, .L245+52
	ldr	r1, .L245+56
	ldr	ip, .L245+60
.L218:
	ldr	r2, [r3, #20]
	cmp	r2, #0
	ldrne	r2, [r3]
	ldrne	r0, [r3, #4]
	orrne	r2, r2, ip
	strhne	r4, [lr, #148]	@ movhi
	strhne	r2, [lr, #146]	@ movhi
	strhne	r0, [lr, #144]	@ movhi
	strheq	r5, [lr, #144]	@ movhi
	add	lr, lr, #8
	cmp	r1, lr
	add	r3, r3, #32
	bne	.L218
	ldr	r3, .L245+64
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #16]	@ movhi
	beq	.L226
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #18]	@ movhi
	strh	r3, [r6, #16]	@ movhi
	strh	r1, [r6, #20]	@ movhi
.L226:
	ldr	r3, .L245+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #24]	@ movhi
	beq	.L225
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #26]	@ movhi
	strh	r3, [r6, #24]	@ movhi
	strh	r1, [r6, #28]	@ movhi
.L225:
	ldr	r3, .L245+72
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #32]	@ movhi
	beq	.L224
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #34]	@ movhi
	strh	r3, [r6, #32]	@ movhi
	strh	r1, [r6, #36]	@ movhi
.L224:
	ldr	r3, .L245+76
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #40]	@ movhi
	beq	.L223
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #42]	@ movhi
	strh	r3, [r6, #40]	@ movhi
	strh	r1, [r6, #44]	@ movhi
.L223:
	ldr	r3, .L245+80
	mov	lr, pc
	bx	r3
	ldr	r4, .L245+84
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L245+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L245+88
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L245+92
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L203:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [r6, #56]	@ movhi
	beq	.L231
	mov	r2, #152
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [r6, #66]	@ movhi
	strh	r2, [r6, #68]	@ movhi
.L231:
	mov	r3, #512
	strh	r3, [r6, #64]	@ movhi
	b	.L205
.L204:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [r6, #68]	@ movhi
	strh	r3, [r6, #66]	@ movhi
	strh	r2, [r6, #64]	@ movhi
	b	.L205
.L244:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r6, #50]	@ movhi
	strh	r2, [r6, #52]	@ movhi
	strh	r0, [r6, #48]	@ movhi
	b	.L202
.L243:
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r2, #36]
	ldr	r3, [r2, #28]
	add	r3, r3, r0, lsl #5
	ldr	r0, [r2, #52]
	lsl	r3, r3, #3
	strh	r1, [r6, #90]	@ movhi
	strh	r3, [r6, #92]	@ movhi
	strh	r0, [r6, #88]	@ movhi
	b	.L200
.L242:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r6, .L245+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [r6, #2]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r2, [r6, #4]	@ movhi
	b	.L198
.L246:
	.align	2
.L245:
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
	.word	bullets
	.word	shadowOAM+432
	.word	spaceship
	.word	treasure
	.word	shadowOAM+40
	.word	-32768
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
	ldr	r2, .L253
	ldr	r3, .L253+4
	ldr	r10, .L253+8
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L253+12
	ldr	ip, .L253+16
	ldr	r0, .L253+20
	ldr	r1, .L253+24
	ldr	r7, .L253+28
	ldr	r3, .L253+32
	ldr	r2, .L253+36
	ldr	r9, .L253+40
	ldr	r8, .L253+44
	ldr	r6, .L253+48
	ldr	r4, .L253+52
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
	ldr	r7, .L253+32
	str	lr, [r7, #16]
	ldr	r7, .L253+36
	str	lr, [r9, #16]
	str	lr, [r8, #16]
	str	lr, [r7, #16]
.L248:
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
	bne	.L248
	mov	r2, #8
	mov	r7, #0
	mov	r5, #1
	ldr	r3, .L253+56
	ldr	r0, [r6]
	ldr	lr, [r6, #12]
	ldr	r1, [r6, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L249:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r7, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L249
	ldr	r3, .L253+60
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
.L254:
	.align	2
.L253:
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
	ldr	r2, .L263
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L263+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L263+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L263+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L263+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L263+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L263+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L263+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L263+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L263+12
	ldr	r2, [r3, #60]
	cmp	r2, #1
	beq	.L262
.L255:
	pop	{r4, lr}
	bx	lr
.L262:
	ldr	r2, [r3, #92]
	cmp	r2, #1
	bne	.L255
	ldr	r2, [r3, #124]
	cmp	r2, #1
	bne	.L255
	ldr	r3, [r3, #156]
	cmp	r3, #1
	ldreq	r2, .L263+16
	streq	r3, [r2]
	b	.L255
.L264:
	.align	2
.L263:
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
	ldr	r3, .L269
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L269+4
	ldr	lr, .L269+8
	ldr	r3, .L269+12
	str	r0, [lr, #16]
	ldr	r4, .L269+16
	ldr	lr, .L269+20
	str	r0, [ip, #16]
	ldr	ip, .L269+24
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
.L266:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L266
	pop	{r4, lr}
	b	drawGame
.L270:
	.align	2
.L269:
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
	ldr	r3, .L275
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L275+4
	ldr	lr, .L275+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L275+12
	ldr	lr, .L275+16
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L275+20
	ldr	lr, .L275+24
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L275+28
	ldr	lr, .L275+32
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L275+36
	ldr	lr, .L275+40
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L275+44
	ldr	lr, .L275+48
	ldr	r3, .L275+52
	str	r0, [lr, #16]
	ldr	r4, .L275+56
	ldr	lr, .L275+60
	str	r0, [ip, #16]
	ldr	ip, .L275+64
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
	ldr	r5, .L337
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L337+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L337+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L278
.L280:
	ldr	r0, [r4]
.L279:
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
	beq	.L281
.L283:
	ldr	r0, [r4]
.L282:
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
	beq	.L284
.L286:
	ldr	r0, [r4]
.L285:
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
	beq	.L287
.L289:
	ldr	r0, [r4]
.L288:
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
	beq	.L335
.L290:
	ldr	r5, .L337+12
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
	beq	.L291
.L293:
	ldr	r0, [r4]
.L292:
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
	beq	.L294
.L296:
	ldr	r0, [r4]
.L295:
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
	beq	.L336
.L277:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L278:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L280
	ldr	ip, .L337+16
	ldr	r1, .L337+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L280
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L337+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L279
.L336:
	ldr	r3, .L337+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L277
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L277
	ldr	r3, .L337+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L337+28
	ldreq	r2, .L337+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L277
.L300:
	ldr	r3, .L337+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L302
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L302
	ldr	r2, .L337+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L302
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L337+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L301
.L297:
	ldr	r3, .L337+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L299
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L299
	ldr	r2, .L337+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L299
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L337+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L298
.L294:
	ldr	r3, .L337+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L296
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L296
	ldr	r2, .L337+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L296
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L337+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L295
.L291:
	ldr	r2, .L337+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L293
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L293
	ldr	r1, .L337+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L293
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L337+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L292
.L335:
	ldr	r3, .L337+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L290
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L290
	ldr	r3, .L337+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L337+28
	ldreq	r2, .L337+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L290
.L287:
	ldr	r3, .L337+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L289
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L289
	ldr	r2, .L337+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L289
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L337+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L288
.L284:
	ldr	r3, .L337+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L286
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L286
	ldr	r2, .L337+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L286
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L337+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L285
.L281:
	ldr	r3, .L337+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L283
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L283
	ldr	r2, .L337+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L283
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L337+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L282
.L338:
	.align	2
.L337:
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
	ldr	r2, .L352
	ldrh	r3, [r2]
	ldr	r0, .L352+4
	ldr	r4, .L352+8
	add	r3, r3, #1
	ldr	r1, .L352+12
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
.L341:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L340:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L341
	ldr	r5, .L352+16
	ldr	r3, [r5, #56]
	cmp	r3, #500
	bgt	.L351
.L342:
	ldr	r3, [r5, #56]
	add	r3, r3, #1
	str	r3, [r5, #56]
	bl	updateLives
	ldr	r0, .L352+20
	bl	updateBlocks
	ldr	r0, .L352+24
	bl	updateBlocks
	ldr	r0, .L352+28
	bl	updateBlocks
	mov	r8, #0
	ldr	r5, .L352+32
	ldr	r7, .L352+36
.L344:
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
	bne	.L344
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L351:
	mov	r3, #1
	add	r0, r5, #32
	str	r3, [r5, #52]
	bl	updateTreasure
	b	.L342
.L353:
	.align	2
.L352:
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
	ldr	r2, .L367
	ldrh	r3, [r2]
	ldr	r0, .L367+4
	ldr	r4, .L367+8
	add	r3, r3, #1
	ldr	r1, .L367+12
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
.L356:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L355:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L356
	ldr	r5, .L367+16
	bl	updateLives
	ldr	r3, [r5, #88]
	cmp	r3, #500
	bgt	.L366
.L357:
	ldr	r3, [r5, #88]
	add	r3, r3, #1
	str	r3, [r5, #88]
	ldr	r0, .L367+20
	bl	updateBlocks
	ldr	r0, .L367+24
	bl	updateBlocks
	ldr	r0, .L367+28
	bl	updateBlocks
	mov	r8, #0
	ldr	r5, .L367+32
	ldr	r7, .L367+36
.L359:
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
	bne	.L359
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L366:
	mov	r3, #1
	add	r0, r5, #64
	str	r3, [r5, #84]
	bl	updateTreasure
	b	.L357
.L368:
	.align	2
.L367:
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
	ldr	r2, .L382
	ldrh	r3, [r2]
	ldr	r0, .L382+4
	ldr	r4, .L382+8
	add	r3, r3, #1
	ldr	r1, .L382+12
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
.L371:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L370:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L371
	ldr	r5, .L382+16
	bl	updateLives
	ldr	r3, [r5, #120]
	cmp	r3, #500
	bgt	.L381
.L372:
	ldr	r3, [r5, #120]
	add	r3, r3, #1
	str	r3, [r5, #120]
	ldr	r0, .L382+20
	bl	updateBlocks
	ldr	r0, .L382+24
	bl	updateBlocks
	ldr	r0, .L382+28
	bl	updateBlocks
	mov	r8, #0
	ldr	r5, .L382+32
	ldr	r7, .L382+36
.L374:
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
	bne	.L374
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L381:
	mov	r3, #1
	add	r0, r5, #96
	str	r3, [r5, #116]
	bl	updateTreasure
	b	.L372
.L383:
	.align	2
.L382:
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
	ldr	r2, .L397
	ldrh	r3, [r2]
	ldr	r0, .L397+4
	ldr	r4, .L397+8
	add	r3, r3, #1
	ldr	r1, .L397+12
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
.L386:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L385:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L386
	ldr	r5, .L397+16
	bl	updateLives
	ldr	r3, [r5, #152]
	cmp	r3, #500
	bgt	.L396
.L387:
	ldr	r3, [r5, #152]
	add	r3, r3, #1
	str	r3, [r5, #152]
	ldr	r0, .L397+20
	bl	updateBlocks
	ldr	r0, .L397+24
	bl	updateBlocks
	ldr	r0, .L397+28
	bl	updateBlocks
	mov	r8, #0
	ldr	r5, .L397+32
	ldr	r7, .L397+36
.L389:
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
	bne	.L389
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L396:
	mov	r3, #1
	add	r0, r5, #128
	str	r3, [r5, #148]
	bl	updateTreasure
	b	.L387
.L398:
	.align	2
.L397:
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
