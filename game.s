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
	mov	r0, #0
	mov	r1, #64
	mov	r5, #170
	mov	r4, #90
	mov	lr, #2
	mov	ip, #4
	ldr	r3, .L20
	str	r5, [r3]
	str	r5, [r3, #44]
	str	r4, [r3, #4]
	str	r4, [r3, #48]
	str	lr, [r3, #28]
	str	lr, [r3, #72]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #80]
	str	r0, [r3, #16]
	str	r0, [r3, #32]
	str	r0, [r3, #60]
	str	r0, [r3, #76]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [r3, #56]
	str	r1, [r3, #52]
	str	ip, [r3, #40]
	str	ip, [r3, #84]
	pop	{r4, r5, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	aliens
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
	ldr	r3, .L24
	ldr	r0, [r3]
	ldr	r3, .L24+4
	sub	r0, r0, #16
	ldr	ip, .L24+8
	str	r0, [r3, #4]
	str	r0, [r3, #28]
	str	r0, [r3, #52]
	ldr	r0, .L24+12
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
	.word	270
	.word	410
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
	mov	r1, #0
	mov	lr, #1
	mov	r7, #200
	mov	fp, #90
	mov	r6, #20
	mov	r10, #100
	mov	r0, #32
	mov	r9, #180
	mov	r8, #120
	str	r1, [r5, #16]
	str	lr, [ip, #16]
	ldr	r5, .L65+16
	ldr	ip, .L65+20
	str	r1, [r5, #20]
	str	r1, [ip, #16]
	str	r1, [r5, #52]
	str	r1, [r5, #84]
	str	r1, [r5, #116]
	str	r1, [r5, #148]
	str	r1, [ip, #40]
	ldr	r5, .L65+24
	str	r1, [ip, #64]
	ldr	ip, .L65+28
	str	r7, [r5]
	stm	ip, {r7, fp}
	ldr	r7, .L65+32
	str	r1, [r2, #16]
	mov	r4, r1
	ldr	r3, .L65+36
	ldr	r1, .L65+40
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
	ldr	ip, .L65+44
	ldr	r5, .L65+48
	str	r4, [ip, #16]
	str	r4, [ip, #60]
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
	.word	blocks
	.word	p1
	.word	p2
	.word	p3
	.word	bullets
	.word	p4
	.word	aliens
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
	mov	r5, #130
	ldr	r3, .L77
	mov	lr, pc
	bx	r3
	ldr	r2, .L77+4
	mov	r0, #8
	mov	r3, r2
	mov	ip, r7
	mov	lr, #0
	ldr	r1, .L77+8
	ldr	r1, [r1]
	ldr	r4, .L77+12
	sub	r1, r1, #16
	ldr	r6, .L77+16
	ldr	r9, .L77+20
	str	r1, [r4, #4]
	str	r1, [r4, #28]
	str	r1, [r4, #52]
	ldr	r1, .L77+24
	str	r5, [r4]
	str	r9, [r4, #24]
	str	r1, [r4, #48]
	ldr	r5, [r6]
	ldr	r9, [r6, #12]
	str	r7, [r4, #16]
	str	r7, [r4, #20]
	str	r7, [r4, #40]
	str	r7, [r4, #44]
	str	r7, [r4, #64]
	str	r7, [r4, #68]
	str	r8, [r4, #12]
	str	r8, [r4, #8]
	str	r8, [r4, #36]
	str	r8, [r4, #32]
	str	r8, [r4, #60]
	str	r8, [r4, #56]
	ldr	r4, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r5, r5, r9
	add	r4, r4, #20
.L68:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3, #24]
	str	ip, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L68
	mov	r3, #64
	mov	fp, #170
	mov	r8, #90
	mov	r7, #2
	mov	r5, #4
	mov	r10, #203
	mov	r9, #120
	mov	r0, #1
	ldr	r4, .L77+28
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r3, [r4, #56]
	str	r3, [r4, #52]
	ldr	r3, .L77+32
	str	fp, [r4]
	str	r10, [r3, #32]
	str	ip, [r3, #40]
	str	r9, [r3, #36]
	str	ip, [r4, #20]
	str	ip, [r4, #24]
	str	ip, [r4, #36]
	str	lr, [r4, #32]
	str	fp, [r4, #44]
	str	ip, [r4, #64]
	str	ip, [r4, #68]
	str	ip, [r4, #80]
	str	lr, [r4, #76]
	str	r8, [r4, #4]
	str	r8, [r4, #48]
	str	r7, [r4, #28]
	str	r7, [r4, #72]
	str	r5, [r4, #40]
	str	r5, [r4, #84]
	ldr	r3, .L77+4
.L69:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L69
	mov	lr, #0
	ldr	r3, .L77+36
	ldr	r3, [r3]
	ldr	ip, .L77+40
	cmp	r3, #1
	str	lr, [ip]
	streq	r3, [r6, #16]
	beq	.L71
	cmp	r3, #0
	ldreq	r3, .L77+44
	streq	r0, [r3, #16]
.L71:
	mov	ip, #1
	mov	r0, #0
	ldr	lr, .L77+48
	mov	r3, ip
	str	ip, [r4, #16]
	str	ip, [r4, #60]
	ldr	ip, .L77+52
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r5, .L77+56
	ldr	lr, .L77+60
	ldr	ip, .L77+64
	str	r0, [r5, #16]
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
	.word	270
	.word	410
	.word	aliens
	.word	treasure
	.word	characterChoice
	.word	curLocation
	.word	fry
	.word	p1
	.word	p2
	.word	spaceship
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
	ldr	r8, .L89+8
	ldr	r5, [r8]
	ldr	r6, [r8, #12]
	ldr	r4, [r8, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r5, r5, r6
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
	mov	lr, #130
	mov	r7, #64
	ldr	r4, .L89+12
	ldr	r6, [r4]
	ldr	r4, .L89+16
	str	lr, [r4]
	add	lr, lr, #140
	str	lr, [r4, #24]
	ldr	lr, .L89+20
	mov	r5, #32
	mov	r9, #2
	str	r7, [lr, #12]
	str	r7, [lr, #8]
	str	r7, [lr, #56]
	str	r7, [lr, #52]
	mov	fp, #170
	mov	r7, #4
	mov	r10, #90
	mov	ip, #1
	sub	r6, r6, #16
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	r1, [lr, #64]
	str	r1, [lr, #68]
	str	r1, [lr, #80]
	str	r9, [lr, #28]
	str	r9, [lr, #72]
	str	r7, [lr, #40]
	str	r7, [lr, #84]
	str	r6, [r4, #4]
	str	r6, [r4, #28]
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	str	r1, [r4, #40]
	str	r5, [r4, #12]
	str	r5, [r4, #8]
	str	r5, [r4, #36]
	str	r5, [r4, #32]
	str	fp, [lr]
	str	r0, [lr, #32]
	str	fp, [lr, #44]
	str	r0, [lr, #76]
	str	r10, [lr, #4]
	str	r10, [lr, #48]
	ldr	r7, .L89+24
	str	r1, [r4, #44]
	str	r1, [lr, #16]
	str	r1, [lr, #60]
	str	r6, [r4, #52]
	str	r1, [r4, #64]
	str	r5, [r4, #60]
	str	r5, [r4, #56]
	ldr	r6, .L89+28
	str	r1, [r4, #68]
	ldr	r5, .L89+32
	ldr	r1, .L89+36
	ldr	lr, .L89+40
	add	r9, r9, #408
	str	r0, [r1, #16]
	str	r9, [r4, #48]
	str	r0, [r7, #16]
	str	r0, [r6, #16]
	str	r0, [r5, #16]
	str	r0, [lr, #16]
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
	ldr	r2, .L89+44
	ldr	r0, .L89+48
	ldr	r3, [r2, #68]
	ldr	r0, [r0]
	ldr	ip, .L89+52
	add	r3, r3, #25
	cmp	r0, #1
	str	r3, [r2, #68]
	str	r1, [ip]
	streq	r0, [r8, #16]
	beq	.L79
	cmp	r0, #0
	ldreq	r3, .L89+56
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
	.word	aliens
	.word	spaceship
	.word	p1
	.word	p2
	.word	p4
	.word	p3
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
	ldr	r7, .L99+8
	str	r4, [r7, #16]
	ldr	r7, .L99+12
	str	r4, [r7, #16]
	ldr	r7, .L99+16
	str	r4, [r7, #16]
	ldr	r7, .L99+20
	ldr	r8, .L99+24
	str	r4, [r7, #16]
	ldr	r7, .L99+28
	mov	r0, r4
	ldr	r5, [r8]
	ldr	r6, [r8, #12]
	str	r4, [r7, #16]
	ldr	r4, [r8, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r5, r5, r6
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
	mov	lr, #130
	mov	r7, #64
	ldr	r4, .L99+32
	ldr	r6, [r4]
	ldr	r4, .L99+36
	str	lr, [r4]
	add	lr, lr, #140
	str	lr, [r4, #24]
	ldr	lr, .L99+40
	mov	r5, #32
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	str	r7, [lr, #12]
	str	r7, [lr, #8]
	str	r7, [lr, #56]
	str	r7, [lr, #52]
	mov	r7, #4
	mov	ip, #1
	str	r0, [lr, #32]
	str	r0, [lr, #76]
	ldr	r0, .L99+44
	sub	r6, r6, #16
	str	r6, [r4, #4]
	str	r6, [r4, #28]
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	str	r1, [r4, #40]
	str	r5, [r4, #12]
	str	r5, [r4, #8]
	str	r5, [r4, #36]
	str	r5, [r4, #32]
	str	fp, [lr]
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	fp, [lr, #44]
	str	r1, [lr, #64]
	str	r1, [lr, #68]
	str	r1, [lr, #80]
	str	r10, [lr, #4]
	str	r10, [lr, #48]
	str	r9, [lr, #28]
	str	r9, [lr, #72]
	str	r7, [lr, #40]
	str	r7, [lr, #84]
	str	r1, [r4, #44]
	str	r6, [r4, #52]
	str	r1, [r4, #64]
	str	r5, [r4, #60]
	str	r5, [r4, #56]
	str	r1, [r4, #68]
	str	r1, [lr, #16]
	str	r1, [lr, #60]
	str	r0, [r4, #48]
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
	streq	r1, [r8, #16]
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
	.word	aliens
	.word	410
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
	ldr	r7, .L109+8
	str	r4, [r7, #16]
	ldr	r7, .L109+12
	str	r4, [r7, #16]
	ldr	r7, .L109+16
	str	r4, [r7, #16]
	ldr	r7, .L109+20
	ldr	r8, .L109+24
	str	r4, [r7, #16]
	ldr	r7, .L109+28
	mov	r0, r4
	ldr	r5, [r8]
	ldr	r6, [r8, #12]
	str	r4, [r7, #16]
	ldr	r4, [r8, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r5, r5, r6
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
	mov	lr, #130
	mov	r7, #64
	ldr	r4, .L109+32
	ldr	r6, [r4]
	ldr	r4, .L109+36
	str	lr, [r4]
	add	lr, lr, #140
	str	lr, [r4, #24]
	ldr	lr, .L109+40
	mov	r5, #32
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	str	r7, [lr, #12]
	str	r7, [lr, #8]
	str	r7, [lr, #56]
	str	r7, [lr, #52]
	mov	r7, #4
	mov	ip, #1
	str	r0, [lr, #32]
	str	r0, [lr, #76]
	ldr	r0, .L109+44
	sub	r6, r6, #16
	str	r6, [r4, #4]
	str	r6, [r4, #28]
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	str	r1, [r4, #40]
	str	r5, [r4, #12]
	str	r5, [r4, #8]
	str	r5, [r4, #36]
	str	r5, [r4, #32]
	str	fp, [lr]
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	fp, [lr, #44]
	str	r1, [lr, #64]
	str	r1, [lr, #68]
	str	r1, [lr, #80]
	str	r10, [lr, #4]
	str	r10, [lr, #48]
	str	r9, [lr, #28]
	str	r9, [lr, #72]
	str	r7, [lr, #40]
	str	r7, [lr, #84]
	str	r1, [r4, #44]
	str	r6, [r4, #52]
	str	r1, [r4, #64]
	str	r5, [r4, #60]
	str	r5, [r4, #56]
	str	r1, [r4, #68]
	str	r1, [lr, #16]
	str	r1, [lr, #60]
	str	r0, [r4, #48]
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
	add	r3, r3, #5
	str	r3, [r2, #132]
	ldr	r3, .L109+56
	cmp	r1, #1
	str	r0, [r3]
	streq	r1, [r8, #16]
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
	.word	aliens
	.word	410
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
	ldr	lr, .L115+28
	ldr	ip, .L115+32
	ldr	r3, .L115+36
	ldr	r4, .L115+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [lr, #60]
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
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	spaceship
	.word	aliens
	.word	blocks
	.word	bullets
	.word	fry
	.size	initPause, .-initPause
	.align	2
	.global	updateAliens
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAliens, %function
updateAliens:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L122
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r0, #20]
	ldr	r2, [r0]
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r0]
	bxcc	lr
	add	r2, r0, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r0, #36]
	strge	r3, [r0, #36]
	bx	lr
.L123:
	.align	2
.L122:
	.word	238609294
	.size	updateAliens, .-updateAliens
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
	ldr	r1, .L133
	ldr	r2, .L133+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L133+8
	ldr	r8, .L133+12
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
.L127:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L129
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L129
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L129:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L127
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L134:
	.align	2
.L133:
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
	ldr	r3, .L151
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L151+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L136
	ldr	r2, .L151+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L148
.L136:
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
	ldr	ip, .L151+12
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	strgt	r1, [r4, #4]
	asr	r1, r1, #8
	cmp	ip, r3, ror #1
	str	r1, [r4, #52]
	bcc	.L139
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L149
.L139:
	tst	r0, #16
	beq	.L143
	ldr	r3, .L151+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L150
.L143:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L148:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L136
.L149:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L139
.L150:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L152:
	.align	2
.L151:
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
	ldr	r3, .L168
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L168+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L154
	ldr	r2, .L168+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L166
.L154:
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
	ldr	ip, .L168+12
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
	bcc	.L157
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L157:
	tst	r0, #16
	beq	.L161
	ldr	r3, .L168+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L167
.L161:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L166:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L154
.L167:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L169:
	.align	2
.L168:
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
	ldr	r0, .L175
	str	r3, [sp]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r5, .L175+4
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r1, [r0, #52]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	ldrle	r3, [r4, #12]
	addle	r3, r3, #240
	strle	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L176:
	.align	2
.L175:
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
	ldr	r6, .L195
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #16
	ldr	r3, .L195+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L193
.L178:
	cmp	r5, #0
	beq	.L194
.L177:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L194:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L195+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #52]
	ldr	r0, [r6]
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L195+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L189
	mov	r2, #1
	mov	r1, r5
	ldr	r0, .L195+16
	ldr	r3, .L195+20
	str	r2, [r4, #28]
	str	r5, [r4, #20]
	add	r2, r3, #1392
	str	r5, [r6, #16]
	str	r5, [r0, #16]
	str	r5, [r0, #40]
	str	r5, [r0, #64]
	add	r2, r2, #8
.L188:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L188
.L189:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L177
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L177
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L177
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L195+24
	streq	r3, [r2]
	b	.L177
.L193:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L195+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r0, [r7]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L195+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L181
	ldr	r0, [r4, #28]
	cmp	r0, #0
	bne	.L181
	mov	r1, r0
	ldr	ip, .L195+16
	ldr	r3, .L195+20
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	add	r2, r3, #1392
	str	r0, [r7, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #40]
	str	r0, [ip, #64]
	add	r2, r2, #8
.L182:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L182
.L181:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L178
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L178
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L178
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L195+24
	streq	r3, [r2]
	b	.L178
.L196:
	.align	2
.L195:
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
	ldr	r2, .L248
	ldr	r3, [r2, #16]
	cmp	r3, #1
	push	{r4, r5, r6, lr}
	beq	.L245
	cmp	r3, #0
	moveq	r3, #512
	ldreq	r6, .L248+4
	ldrne	r6, .L248+4
	strheq	r3, [r6]	@ movhi
.L199:
	ldr	r3, .L248+8
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L246
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [r6, #88]	@ movhi
.L201:
	ldr	r2, [r3, #32]
	add	r2, r2, #1
	str	r2, [r3, #32]
	ldr	r3, .L248+12
	ldr	r2, [r3, #16]
	cmp	r2, #1
	mov	r1, #0
	mov	ip, #512
	ldr	lr, .L248+16
	beq	.L247
.L202:
	cmp	r2, #0
	strheq	ip, [r6, #48]	@ movhi
.L203:
	ldr	r2, [r3, #32]
	cmp	r1, #1
	add	r2, r2, #1
	str	r2, [r3, #32]
	add	r3, r3, #44
	bne	.L234
	ldr	r3, .L248+20
	ldr	r1, [r3, #16]
	ldr	r2, .L248+24
	cmp	r1, #0
	ldr	r1, [r2, #16]
	beq	.L205
	mov	ip, #152
	ldm	r3, {r0, lr}
	cmp	r1, #0
	orr	r3, r0, #16384
	strh	r3, [r6, #58]	@ movhi
	strh	lr, [r6, #56]	@ movhi
	strh	ip, [r6, #60]	@ movhi
	bne	.L206
.L207:
	ldr	r3, .L248+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #72]	@ movhi
	beq	.L232
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r6, #74]	@ movhi
	strh	r0, [r6, #72]	@ movhi
	strh	r1, [r6, #76]	@ movhi
.L232:
	ldr	r3, .L248+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #128]	@ movhi
	beq	.L231
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r6, #130]	@ movhi
	strh	r0, [r6, #128]	@ movhi
	strh	r1, [r6, #132]	@ movhi
.L231:
	ldr	r3, .L248+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #136]	@ movhi
	beq	.L230
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r6, #138]	@ movhi
	strh	r0, [r6, #136]	@ movhi
	strh	r1, [r6, #140]	@ movhi
.L230:
	ldr	lr, .L248+4
	mov	r5, #512
	mov	r6, lr
	mov	r3, lr
	mov	r4, #148
	ldr	r2, .L248+40
	add	r0, lr, #24
.L213:
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
	bne	.L213
	mov	r5, #512
	mov	r4, #154
	ldr	r3, .L248+44
	ldr	r2, .L248+48
	add	r0, r3, #1392
	add	r0, r0, #8
.L216:
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
	bne	.L216
	ldr	r3, .L248+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #8]	@ movhi
	beq	.L229
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #10]	@ movhi
	strh	r3, [r6, #8]	@ movhi
	strh	r1, [r6, #12]	@ movhi
.L229:
	mov	r5, #512
	mov	r4, #156
	ldr	r3, .L248+56
	ldr	r1, .L248+60
	ldr	ip, .L248+64
.L220:
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
	bne	.L220
	ldr	r3, .L248+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #16]	@ movhi
	beq	.L228
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #18]	@ movhi
	strh	r3, [r6, #16]	@ movhi
	strh	r1, [r6, #20]	@ movhi
.L228:
	ldr	r3, .L248+72
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #24]	@ movhi
	beq	.L227
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #26]	@ movhi
	strh	r3, [r6, #24]	@ movhi
	strh	r1, [r6, #28]	@ movhi
.L227:
	ldr	r3, .L248+76
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #32]	@ movhi
	beq	.L226
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #34]	@ movhi
	strh	r3, [r6, #32]	@ movhi
	strh	r1, [r6, #36]	@ movhi
.L226:
	ldr	r3, .L248+80
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r6, #40]	@ movhi
	beq	.L225
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r6, #42]	@ movhi
	strh	r3, [r6, #40]	@ movhi
	strh	r1, [r6, #44]	@ movhi
.L225:
	ldr	r3, .L248+84
	mov	lr, pc
	bx	r3
	ldr	r4, .L248+88
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L248+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L248+92
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L248+96
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L234:
	ldr	r2, [r3, #16]
	cmp	r2, #1
	mov	r1, #1
	bne	.L202
.L247:
	ldr	r4, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, [r3]
	add	r2, r2, r4, lsl #5
	ldr	r4, [r3, #4]
	lsl	r2, r2, #3
	orr	r0, r0, lr
	strh	r2, [r6, #52]	@ movhi
	strh	r0, [r6, #50]	@ movhi
	strh	r4, [r6, #48]	@ movhi
	b	.L203
.L205:
	mov	r3, #512
	cmp	r1, #0
	strh	r3, [r6, #56]	@ movhi
	beq	.L233
	mov	r1, #152
	ldr	r3, [r2]
	orr	r3, r3, #16384
	strh	r3, [r6, #66]	@ movhi
	strh	r1, [r6, #68]	@ movhi
.L233:
	mov	r3, #512
	strh	r3, [r6, #64]	@ movhi
	b	.L207
.L206:
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	orr	r3, r3, #16384
	strh	ip, [r6, #68]	@ movhi
	strh	r3, [r6, #66]	@ movhi
	strh	r2, [r6, #64]	@ movhi
	b	.L207
.L246:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [r6, #90]	@ movhi
	strh	r2, [r6, #92]	@ movhi
	strh	r0, [r6, #88]	@ movhi
	b	.L201
.L245:
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r6, .L248+4
	add	r3, r3, r0, lsl #5
	ldr	r0, [r2, #52]
	lsl	r3, r3, #3
	strh	r1, [r6, #2]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	b	.L199
.L249:
	.align	2
.L248:
	.word	fry
	.word	shadowOAM
	.word	leela
	.word	aliens
	.word	-16384
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
	ldr	r2, .L256
	ldr	r3, .L256+4
	ldr	r10, .L256+8
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L256+12
	ldr	ip, .L256+16
	ldr	r0, .L256+20
	ldr	r1, .L256+24
	ldr	r7, .L256+28
	ldr	r3, .L256+32
	ldr	r2, .L256+36
	ldr	r4, .L256+40
	ldr	r9, .L256+44
	ldr	r8, .L256+48
	ldr	r6, .L256+52
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
	str	r5, [r4, #60]
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
	ldr	r7, .L256+32
	str	lr, [r7, #16]
	ldr	r7, .L256+36
	str	lr, [r9, #16]
	str	lr, [r8, #16]
	str	lr, [r7, #16]
.L251:
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
	bne	.L251
	mov	r2, #8
	mov	r7, #0
	mov	r5, #1
	ldr	r3, .L256+56
	ldr	r0, [r6]
	ldr	lr, [r6, #12]
	ldr	r1, [r6, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L252:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r7, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	ip, r3
	bne	.L252
	ldr	r3, .L256+60
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
	str	r5, [r4, #64]
	str	r5, [r4, #68]
	str	r7, [r4, #60]
	str	r5, [r4, #80]
	str	r7, [r4, #76]
	str	ip, [r4]
	str	ip, [r4, #44]
	str	r0, [r4, #4]
	str	r0, [r4, #48]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r3, [r4, #56]
	str	r3, [r4, #52]
	str	r1, [r4, #28]
	str	r1, [r4, #72]
	str	r2, [r4, #40]
	str	r2, [r4, #84]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawGame
.L257:
	.align	2
.L256:
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
	.word	aliens
	.word	life1
	.word	life2
	.word	leela
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
	ldr	r3, .L271
	ldrh	r2, [r3]
	add	r2, r2, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L271+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r3, .L271+8
	ldr	r0, [r3]
	ldreq	r1, [r3, #20]
	addeq	r0, r0, r1
	ldr	r1, .L271+4
	ldrh	r1, [r1, #48]
	streq	r0, [r3]
	tst	r1, #32
	ldreq	r1, [r3, #20]
	subeq	r0, r0, r1
	ldr	r1, .L271+4
	ldrh	r1, [r1, #48]
	streq	r0, [r3]
	tst	r1, #64
	ldreq	ip, [r3, #24]
	ldr	r1, [r3, #4]
	subeq	r1, r1, ip
	ldr	ip, .L271+4
	ldrh	ip, [ip, #48]
	streq	r1, [r3, #4]
	tst	ip, #128
	ldreq	ip, [r3, #24]
	addeq	r1, r1, ip
	streq	r1, [r3, #4]
	cmp	r0, #0
	ldreq	r0, [r3, #20]
	streq	r0, [r3]
	cmp	r0, #239
	ldreq	r0, [r3, #20]
	rsbeq	r0, r0, #239
	streq	r0, [r3]
	ldr	r0, [r3, #12]
	sub	r0, r1, r0
	cmn	r0, r2
	ldreq	r2, [r3, #24]
	addeq	r1, r1, r2
	ldr	r2, .L271+12
	ldrh	r2, [r2]
	ldr	r0, [r3, #8]
	sub	r2, r1, r2
	add	r2, r2, r0
	streq	r1, [r3, #4]
	cmp	r2, #159
	ldreq	r2, [r3, #24]
	subeq	r1, r1, r2
	streq	r1, [r3, #4]
	ldr	r3, .L271+16
	ldr	r2, [r3, #60]
	cmp	r2, #1
	beq	.L270
.L258:
	pop	{r4, lr}
	bx	lr
.L270:
	ldr	r2, [r3, #92]
	cmp	r2, #1
	bne	.L258
	ldr	r2, [r3, #124]
	cmp	r2, #1
	bne	.L258
	ldr	r3, [r3, #156]
	cmp	r3, #1
	ldreq	r2, .L271+20
	streq	r3, [r2]
	b	.L258
.L272:
	.align	2
.L271:
	.word	hOff
	.word	67109120
	.word	spaceship
	.word	vOff
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
	ldr	r3, .L277
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L277+4
	ldr	lr, .L277+8
	ldr	r3, .L277+12
	ldr	r4, .L277+16
	str	r0, [ip, #16]
	ldr	ip, .L277+20
	add	r1, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [lr, #60]
	str	r0, [ip, #20]
	str	r0, [ip, #52]
	str	r0, [ip, #84]
	str	r0, [ip, #116]
	str	r0, [ip, #148]
	add	r1, r1, #8
.L274:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L274
	ldr	r3, .L277+24
	pop	{r4, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #40]
	str	r2, [r3, #64]
	b	drawGame
.L278:
	.align	2
.L277:
	.word	hideSprites
	.word	leela
	.word	aliens
	.word	bullets
	.word	fry
	.word	treasure
	.word	blocks
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
	ldr	r3, .L283
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L283+4
	ldr	lr, .L283+8
	str	r0, [ip, #16]
	ldr	ip, .L283+12
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L283+16
	ldr	ip, .L283+20
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L283+24
	ldr	ip, .L283+28
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L283+32
	ldr	ip, .L283+36
	str	r0, [lr, #16]
	ldr	r4, .L283+40
	ldr	lr, .L283+44
	str	r0, [ip, #16]
	ldr	ip, .L283+48
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	ldr	r4, .L283+52
	ldr	lr, .L283+56
	ldr	r3, .L283+60
	str	r0, [ip, #16]
	ldr	ip, .L283+64
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [r4, #60]
	str	r0, [ip, #20]
	str	r0, [ip, #52]
	str	r0, [ip, #84]
	str	r0, [ip, #116]
	str	r0, [ip, #148]
	str	r0, [lr, #16]
	str	r0, [lr, #40]
	str	r0, [lr, #64]
	add	r2, r2, #8
.L280:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L280
	pop	{r4, lr}
	b	drawGame
.L284:
	.align	2
.L283:
	.word	hideSprites
	.word	leela
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	life1
	.word	life2
	.word	life3
	.word	fry
	.word	life4
	.word	life5
	.word	aliens
	.word	blocks
	.word	bullets
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #0
	ldr	r4, .L347
	ldr	r6, .L347+4
	ldr	r7, .L347+8
	ldr	r5, .L347+12
	ldr	r8, .L347+16
	ldr	r10, .L347+20
	ldr	fp, .L347+24
	sub	sp, sp, #20
.L328:
	add	r0, r6, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r6, #52]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L286
.L337:
	ldr	r0, [r4]
.L287:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #52]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L291
.L338:
	ldr	r0, [r4]
.L292:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #52]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L296
.L339:
	ldr	r0, [r4]
.L297:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #52]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L301
.L340:
	ldr	r0, [r4]
.L302:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #52]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L345
.L306:
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
	bx	r7
	cmp	r0, #1
	beq	.L307
.L341:
	ldr	r0, [r4]
.L308:
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
	bx	r7
	cmp	r0, #1
	beq	.L312
.L342:
	ldr	r0, [r4]
.L313:
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
	bx	r7
	cmp	r0, #1
	beq	.L317
.L343:
	ldr	r0, [r4]
.L318:
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
	bx	r7
	cmp	r0, #1
	beq	.L322
.L344:
	ldr	r0, [r4]
.L323:
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
	bx	r7
	cmp	r0, #1
	beq	.L346
.L327:
	cmp	r9, #1
	add	r4, r4, #44
	bne	.L329
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L329:
	mov	r9, #1
	b	.L328
.L346:
	ldr	r3, [r8]
	cmp	r3, #4
	bne	.L327
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L327
	ldr	r3, [r10]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L347+28
	ldreq	r2, .L347+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L327
.L322:
	ldr	r3, [r8]
	cmp	r3, #3
	bne	.L344
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L344
	ldr	r3, [r10]
	cmp	r3, #1
	bne	.L344
	mov	r3, #190
	mov	r1, #0
	mov	r2, #4
	mov	r0, r3
	str	r3, [r4]
	ldr	r3, .L347+36
	str	r2, [r8]
	str	r1, [r3, #16]
	b	.L323
.L317:
	ldr	r3, [r8]
	cmp	r3, #2
	bne	.L343
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L343
	ldr	r3, [r10]
	cmp	r3, #1
	bne	.L343
	mov	r3, #190
	mov	r1, #0
	mov	r2, #3
	mov	r0, r3
	str	r3, [r4]
	ldr	r3, .L347+40
	str	r2, [r8]
	str	r1, [r3, #16]
	b	.L318
.L312:
	ldr	r3, [r8]
	cmp	r3, #1
	bne	.L342
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L342
	ldr	r3, [r10]
	cmp	r3, #1
	bne	.L342
	mov	r3, #190
	mov	r1, #0
	mov	r2, #2
	mov	r0, r3
	str	r3, [r4]
	ldr	r3, .L347+44
	str	r2, [r8]
	str	r1, [r3, #16]
	b	.L313
.L307:
	ldr	r3, [r8]
	cmp	r3, #0
	bne	.L341
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L341
	ldr	r2, [r10]
	cmp	r2, #1
	bne	.L341
	mov	r1, #190
	str	r3, [fp, #16]
	mov	r0, r1
	str	r2, [r8]
	str	r1, [r4]
	b	.L308
.L345:
	ldr	r3, [r8]
	cmp	r3, #4
	bne	.L306
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L306
	ldr	r3, [r10]
	cmp	r3, #0
	ldreq	r1, .L347+28
	ldreq	r2, .L347+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L306
.L301:
	ldr	r3, [r8]
	cmp	r3, #3
	bne	.L340
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L340
	ldr	r3, [r10]
	cmp	r3, #0
	bne	.L340
	mov	r2, #190
	mov	r1, #4
	ldr	ip, .L347+36
	mov	r0, r2
	str	r3, [ip, #16]
	str	r2, [r4]
	str	r1, [r8]
	b	.L302
.L296:
	ldr	r3, [r8]
	cmp	r3, #2
	bne	.L339
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L339
	ldr	r3, [r10]
	cmp	r3, #0
	bne	.L339
	mov	r2, #190
	mov	r1, #3
	ldr	ip, .L347+40
	mov	r0, r2
	str	r3, [ip, #16]
	str	r2, [r4]
	str	r1, [r8]
	b	.L297
.L291:
	ldr	r3, [r8]
	cmp	r3, #1
	bne	.L338
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L338
	ldr	r3, [r10]
	cmp	r3, #0
	bne	.L338
	mov	r2, #190
	mov	r1, #2
	ldr	ip, .L347+44
	mov	r0, r2
	str	r3, [ip, #16]
	str	r2, [r4]
	str	r1, [r8]
	b	.L292
.L286:
	ldr	r2, [r8]
	cmp	r2, #0
	bne	.L337
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L337
	ldr	r2, [r10]
	cmp	r2, #0
	bne	.L337
	mov	r1, #190
	str	r2, [fp, #16]
	mov	r0, r1
	str	r3, [r8]
	str	r1, [r4]
	b	.L287
.L348:
	.align	2
.L347:
	.word	aliens
	.word	fry
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, .L365
	ldrh	r3, [r2]
	ldr	r0, .L365+4
	add	r3, r3, #1
	ldr	r1, .L365+8
	sub	sp, sp, #20
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r5, .L365+12
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateLeela
	ldr	r0, .L365+16
	bl	updateAliens
	ldr	r0, .L365+20
	mov	r4, r5
	bl	updateAliens
	add	r7, r5, #1392
	add	r7, r7, #8
.L351:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updateBullets.part.0
.L350:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L351
	ldr	r4, .L365+24
	ldr	r3, [r4, #56]
	cmp	r3, #500
	bgt	.L363
.L352:
	ldr	r3, [r4, #56]
	add	r3, r3, #1
	str	r3, [r4, #56]
	bl	updateLives
	ldr	r0, .L365+28
	bl	updateBlocks
	ldr	r0, .L365+32
	bl	updateBlocks
	ldr	r0, .L365+36
	bl	updateBlocks
	mov	r9, #0
	ldr	r8, .L365+40
	b	.L353
.L364:
	add	r5, r5, #28
	cmp	r5, r7
	beq	.L356
.L353:
	mov	r6, #0
	ldr	r4, .L365+16
.L355:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #16]
	ldr	r0, [r4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #40
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #1
	ldreq	r3, [r4, #12]
	addeq	r3, r3, #240
	streq	r3, [r4]
	streq	r9, [r5, #24]
	cmp	r6, #1
	add	r4, r4, #44
	beq	.L364
	mov	r6, #1
	b	.L355
.L356:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawGame
.L363:
	mov	r3, #1
	add	r0, r4, #32
	str	r3, [r4, #52]
	bl	updateTreasure
	b	.L352
.L366:
	.align	2
.L365:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	aliens
	.word	aliens+44
	.word	treasure
	.word	blocks
	.word	blocks+24
	.word	blocks+48
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, .L383
	ldrh	r3, [r2]
	ldr	r0, .L383+4
	add	r3, r3, #1
	ldr	r1, .L383+8
	sub	sp, sp, #20
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r5, .L383+12
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateLeela
	ldr	r0, .L383+16
	bl	updateAliens
	ldr	r0, .L383+20
	mov	r4, r5
	bl	updateAliens
	add	r7, r5, #1392
	add	r7, r7, #8
.L369:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updateBullets.part.0
.L368:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L369
	ldr	r4, .L383+24
	bl	updateLives
	ldr	r3, [r4, #88]
	cmp	r3, #500
	bgt	.L381
.L370:
	ldr	r3, [r4, #88]
	add	r3, r3, #1
	str	r3, [r4, #88]
	ldr	r0, .L383+28
	bl	updateBlocks
	ldr	r0, .L383+32
	bl	updateBlocks
	ldr	r0, .L383+36
	bl	updateBlocks
	mov	r9, #0
	ldr	r8, .L383+40
	b	.L371
.L382:
	add	r5, r5, #28
	cmp	r5, r7
	beq	.L374
.L371:
	mov	r6, #0
	ldr	r4, .L383+16
.L373:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #16]
	ldr	r0, [r4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #40
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #1
	ldreq	r3, [r4, #12]
	addeq	r3, r3, #240
	streq	r3, [r4]
	streq	r9, [r5, #24]
	cmp	r6, #1
	add	r4, r4, #44
	beq	.L382
	mov	r6, #1
	b	.L373
.L374:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawGame
.L381:
	mov	r3, #1
	add	r0, r4, #64
	str	r3, [r4, #84]
	bl	updateTreasure
	b	.L370
.L384:
	.align	2
.L383:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	aliens
	.word	aliens+44
	.word	treasure
	.word	blocks
	.word	blocks+24
	.word	blocks+48
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, .L401
	ldrh	r3, [r2]
	ldr	r0, .L401+4
	add	r3, r3, #1
	ldr	r1, .L401+8
	sub	sp, sp, #20
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r5, .L401+12
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateLeela
	ldr	r0, .L401+16
	bl	updateAliens
	ldr	r0, .L401+20
	mov	r4, r5
	bl	updateAliens
	add	r7, r5, #1392
	add	r7, r7, #8
.L387:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updateBullets.part.0
.L386:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L387
	ldr	r4, .L401+24
	bl	updateLives
	ldr	r3, [r4, #120]
	cmp	r3, #500
	bgt	.L399
.L388:
	ldr	r3, [r4, #120]
	add	r3, r3, #1
	str	r3, [r4, #120]
	ldr	r0, .L401+28
	bl	updateBlocks
	ldr	r0, .L401+32
	bl	updateBlocks
	ldr	r0, .L401+36
	bl	updateBlocks
	mov	r9, #0
	ldr	r8, .L401+40
	b	.L389
.L400:
	add	r5, r5, #28
	cmp	r5, r7
	beq	.L392
.L389:
	mov	r6, #0
	ldr	r4, .L401+16
.L391:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #16]
	ldr	r0, [r4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #40
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #1
	ldreq	r3, [r4, #12]
	addeq	r3, r3, #240
	streq	r3, [r4]
	streq	r9, [r5, #24]
	cmp	r6, #1
	add	r4, r4, #44
	beq	.L400
	mov	r6, #1
	b	.L391
.L392:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawGame
.L399:
	mov	r3, #1
	add	r0, r4, #96
	str	r3, [r4, #116]
	bl	updateTreasure
	b	.L388
.L402:
	.align	2
.L401:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	aliens
	.word	aliens+44
	.word	treasure
	.word	blocks
	.word	blocks+24
	.word	blocks+48
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, .L419
	ldrh	r3, [r2]
	ldr	r0, .L419+4
	add	r3, r3, #1
	ldr	r1, .L419+8
	sub	sp, sp, #20
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r5, .L419+12
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateLeela
	ldr	r0, .L419+16
	bl	updateAliens
	ldr	r0, .L419+20
	mov	r4, r5
	bl	updateAliens
	add	r7, r5, #1392
	add	r7, r7, #8
.L405:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updateBullets.part.0
.L404:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L405
	ldr	r4, .L419+24
	bl	updateLives
	ldr	r3, [r4, #152]
	cmp	r3, #500
	bgt	.L417
.L406:
	ldr	r3, [r4, #152]
	add	r3, r3, #1
	str	r3, [r4, #152]
	ldr	r0, .L419+28
	bl	updateBlocks
	ldr	r0, .L419+32
	bl	updateBlocks
	ldr	r0, .L419+36
	bl	updateBlocks
	mov	r9, #0
	ldr	r8, .L419+40
	b	.L407
.L418:
	add	r5, r5, #28
	cmp	r5, r7
	beq	.L410
.L407:
	mov	r6, #0
	ldr	r4, .L419+16
.L409:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #16]
	ldr	r0, [r4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #40
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #1
	ldreq	r3, [r4, #12]
	addeq	r3, r3, #240
	streq	r3, [r4]
	streq	r9, [r5, #24]
	cmp	r6, #1
	add	r4, r4, #44
	beq	.L418
	mov	r6, #1
	b	.L409
.L410:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawGame
.L417:
	mov	r3, #1
	add	r0, r4, #128
	str	r3, [r4, #148]
	bl	updateTreasure
	b	.L406
.L420:
	.align	2
.L419:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	aliens
	.word	aliens+44
	.word	treasure
	.word	blocks
	.word	blocks+24
	.word	blocks+48
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
	.comm	aliens,88,4
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
