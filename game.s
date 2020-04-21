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
	.global	initCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCoins, %function
initCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r1, #1
	mov	r2, #32
	mov	r4, #12
	mov	lr, #4
	mov	r8, #130
	mov	r7, #50
	mov	r6, #280
	mov	r5, #49
	mov	ip, #0
	mov	r0, #7
	ldr	r3, .L24
	str	r8, [r3]
	str	r7, [r3, #4]
	str	r6, [r3, #40]
	str	r5, [r3, #44]
	str	r4, [r3, #24]
	str	r4, [r3, #64]
	str	lr, [r3, #28]
	str	lr, [r3, #68]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #56]
	str	r1, [r3, #60]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #52]
	str	r2, [r3, #48]
	str	ip, [r3, #32]
	str	ip, [r3, #72]
	str	r0, [r3, #36]
	str	r0, [r3, #76]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	coins
	.size	initCoins, .-initCoins
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
	push	{r4, r5, r6, r7, lr}
	ldr	lr, .L40
	mov	r7, r2
	mov	r3, lr
	mov	r6, #220
	mov	r5, #100
	mov	r0, #0
	mov	ip, #32
	mov	r4, #500
.L37:
	add	r1, r2, r2, lsl #3
	add	r2, r2, #1
	add	r1, lr, r1, lsl #2
	cmp	r2, #5
	str	r6, [r3, #36]
	str	r5, [r3, #40]
	str	r0, [r3, #56]
	str	ip, [r3, #52]
	str	ip, [r3, #48]
	str	r0, [r1, #24]
	add	r3, r3, #36
	str	r7, [r3, #8]
	str	r0, [r3, #28]
	str	r4, [r3, #32]
	bne	.L37
	pop	{r4, r5, r6, r7, lr}
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
	str	r1, [ip, #56]
	ldr	r5, .L65+20
	str	r1, [ip, #20]
	str	r1, [ip, #92]
	str	r1, [ip, #128]
	str	r1, [ip, #164]
	ldr	ip, .L65+24
	str	r1, [r5, #16]
	str	r1, [ip, #16]
	ldr	r5, .L65+28
	str	r1, [ip, #56]
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
	.word	coins
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
	ldr	r3, .L77
	mov	lr, pc
	bx	r3
	bl	initCoins
	ldr	r2, .L77+4
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	ip, #1
	ldr	r6, .L77+8
	ldr	r4, [r6]
	ldr	r7, [r6, #12]
	ldr	lr, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r4, r4, r7
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
	ldr	lr, .L77+12
	str	r3, [lr, #12]
	str	r3, [lr, #8]
	ldr	r3, .L77+16
	str	fp, [lr]
	str	r7, [r3, #36]
	str	ip, [r3, #44]
	str	r4, [r3, #40]
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
	ldr	r3, .L77+20
	ldr	r3, [r3]
	ldr	ip, .L77+24
	cmp	r3, #1
	str	r4, [ip]
	streq	r3, [r6, #16]
	beq	.L71
	cmp	r3, #0
	ldreq	r3, .L77+28
	streq	r0, [r3, #16]
.L71:
	mov	ip, #1
	mov	r0, #0
	str	ip, [lr, #16]
	mov	r3, ip
	ldr	ip, .L77+32
	ldr	lr, .L77+36
	str	r0, [ip, #16]
	ldr	ip, .L77+40
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L77+44
	ldr	ip, .L77+48
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
	ldr	r3, .L89
	ldr	r4, .L89+4
	mov	lr, pc
	bx	r3
	mov	r2, #8
	mov	r6, #0
	mov	r3, r4
	mov	r7, #1
	ldr	r8, .L89+8
	ldr	r0, [r8]
	ldr	ip, [r8, #12]
	ldr	r1, [r8, #52]
	add	r5, r4, #1392
	add	r5, r5, r2
	add	r0, r0, ip
	add	r1, r1, #20
.L80:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r7, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L80
	mov	r3, #64
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	mov	ip, #170
	ldr	r9, .L89+12
	str	r0, [r9, #4]
	str	r1, [r9, #28]
	str	r2, [r9, #40]
	str	r3, [r9, #12]
	str	r3, [r9, #8]
	str	ip, [r9]
	str	r7, [r9, #20]
	str	r7, [r9, #24]
	str	r6, [r9, #16]
	str	r7, [r9, #36]
	str	r6, [r9, #32]
	bl	initCoins
	mov	r2, #1
	ldr	r1, .L89+16
	ldr	r3, .L89+20
	str	r6, [r1, #16]
	str	r6, [r3, #16]
	ldr	r0, .L89+24
	ldr	r3, .L89+28
	ldr	r1, .L89+32
	str	r6, [r3, #16]
	str	r7, [r9, #16]
	str	r6, [r0, #16]
	str	r6, [r1, #16]
	ldr	r3, .L89+4
.L81:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L81
	mov	r3, #1
.L82:
	str	r3, [r4, #12]
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L82
	ldr	r1, .L89+36
	ldr	r0, .L89+40
	ldr	r2, [r1, #76]
	ldr	r0, [r0]
	ldr	ip, .L89+44
	add	r2, r2, #25
	cmp	r0, #1
	str	r2, [r1, #76]
	str	r3, [ip]
	streq	r0, [r8, #16]
	beq	.L79
	cmp	r0, #0
	ldreq	r2, .L89+48
	streq	r3, [r2, #16]
.L79:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	hideSprites
	.word	bullets
	.word	leela
	.word	alien
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
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L99+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L99+8
	ldr	r9, .L99+12
	str	ip, [r8, #16]
	ldr	r3, .L99+16
	ldr	fp, .L99+20
	ldr	r10, .L99+24
	ldr	r8, .L99+28
	mov	r6, ip
	ldr	r0, [r9]
	ldr	lr, [r9, #12]
	str	ip, [r3, #16]
	str	ip, [fp, #16]
	str	ip, [r10, #16]
	str	ip, [r8, #16]
	ldr	ip, [r9, #52]
	add	r5, r4, #1392
	add	r5, r5, r1
	add	r0, r0, lr
	add	ip, ip, #20
.L92:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r2, r5
	bne	.L92
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L99+32
	str	r2, [r8, #12]
	str	r2, [r8, #8]
	str	lr, [r8]
	str	r7, [r8, #20]
	str	r7, [r8, #24]
	str	r6, [r8, #16]
	str	r7, [r8, #36]
	str	r6, [r8, #32]
	str	ip, [r8, #4]
	str	r0, [r8, #28]
	str	r1, [r8, #40]
	bl	initCoins
	mov	r2, #1
	ldr	r3, .L99+16
	str	r6, [r3, #16]
	ldr	r3, .L99+8
	str	r6, [r3, #16]
	ldr	r3, .L99+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L93:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L93
	mov	ip, #2
	ldr	r1, .L99+36
	ldr	r0, .L99+40
	ldr	r3, [r1, #112]
	ldr	r0, [r0]
	add	r3, r3, #25
	str	r3, [r1, #112]
	ldr	r3, .L99+44
	cmp	r0, #1
	str	ip, [r3]
	streq	r0, [r9, #16]
	beq	.L91
	cmp	r0, #0
	ldreq	r3, .L99+48
	streq	r2, [r3, #16]
.L91:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	hideSprites
	.word	bullets
	.word	p3
	.word	leela
	.word	spaceship
	.word	p1
	.word	p2
	.word	p4
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
	ldr	r3, .L109
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L109+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L109+8
	ldr	r9, .L109+12
	str	ip, [r8, #16]
	ldr	r3, .L109+16
	ldr	fp, .L109+20
	ldr	r10, .L109+24
	ldr	r8, .L109+28
	mov	r6, ip
	ldr	r0, [r9]
	ldr	lr, [r9, #12]
	str	ip, [r3, #16]
	str	ip, [fp, #16]
	str	ip, [r10, #16]
	str	ip, [r8, #16]
	ldr	ip, [r9, #52]
	add	r5, r4, #1392
	add	r5, r5, r1
	add	r0, r0, lr
	add	ip, ip, #20
.L102:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r2, r5
	bne	.L102
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L109+32
	str	r2, [r8, #12]
	str	r2, [r8, #8]
	str	lr, [r8]
	str	r7, [r8, #20]
	str	r7, [r8, #24]
	str	r6, [r8, #16]
	str	r7, [r8, #36]
	str	r6, [r8, #32]
	str	ip, [r8, #4]
	str	r0, [r8, #28]
	str	r1, [r8, #40]
	bl	initCoins
	mov	r2, #1
	ldr	r3, .L109+16
	str	r6, [r3, #16]
	ldr	r3, .L109+8
	str	r6, [r3, #16]
	ldr	r3, .L109+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L103:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L103
	mov	ip, #3
	ldr	r1, .L109+36
	ldr	r0, .L109+40
	ldr	r3, [r1, #148]
	ldr	r0, [r0]
	add	r3, r3, #25
	str	r3, [r1, #148]
	ldr	r3, .L109+44
	cmp	r0, #1
	str	ip, [r3]
	streq	r0, [r9, #16]
	beq	.L101
	cmp	r0, #0
	ldreq	r3, .L109+48
	streq	r2, [r3, #16]
.L101:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	hideSprites
	.word	bullets
	.word	p3
	.word	leela
	.word	spaceship
	.word	p1
	.word	p2
	.word	p4
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
	str	r0, [ip, #56]
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
	.word	coins
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L126
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L126+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L118
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L118:
	ldr	r4, .L126+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L126+12
	add	r6, r6, #8
	b	.L123
.L125:
	ldr	r0, [r5]
.L123:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	ip, [r4, #16]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #4]
	add	r0, r0, #40
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	ldreq	r3, [r5, #12]
	streq	r8, [r4, #24]
	addeq	r3, r3, #240
	add	r4, r4, #28
	streq	r3, [r5]
	cmp	r4, r6
	bne	.L125
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L127:
	.align	2
.L126:
	.word	alien
	.word	238609294
	.word	bullets
	.word	collision
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
	ldr	r1, .L137
	ldr	r2, .L137+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L137+8
	ldr	r8, .L137+12
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
.L131:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L133
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L133
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L133:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L131
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L138:
	.align	2
.L137:
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
	ldr	r3, .L155
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L155+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L140
	ldr	r2, .L155+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L152
.L140:
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
	ldr	ip, .L155+12
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	strgt	r1, [r4, #4]
	asr	r1, r1, #8
	cmp	ip, r3, ror #1
	str	r1, [r4, #52]
	bcc	.L143
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L153
.L143:
	tst	r0, #16
	beq	.L147
	ldr	r3, .L155+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L154
.L147:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L152:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L140
.L153:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L143
.L154:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L156:
	.align	2
.L155:
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
	.global	updateCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCoins, %function
updateCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L181
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r0]
	str	lr, [sp, #-4]!
	add	r3, r2, r3, lsl #3
	ldr	lr, [r0, #20]
	add	r3, r3, ip
	cmp	ip, r3, ror #1
	sub	r3, r1, lr
	str	r3, [r0]
	bcc	.L177
	ldr	r1, [r0, #36]
	ldr	ip, [r0, #28]
	sub	r1, r1, #1
	cmp	ip, r1
	movge	r1, #4
	addlt	ip, ip, #1
	strlt	ip, [r0, #28]
	strge	r1, [r0, #28]
.L177:
	cmp	r3, #0
	ldreq	r3, [r0, #12]
	add	r2, r2, #1
	rsbeq	r3, r3, #240
	str	r2, [r0, #32]
	streq	r3, [r0]
	ldr	lr, [sp], #4
	bx	lr
.L182:
	.align	2
.L181:
	.word	238609294
	.size	updateCoins, .-updateCoins
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
	ldr	r6, .L201
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #16
	ldr	r3, .L201+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L199
.L184:
	cmp	r5, #0
	beq	.L200
.L183:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L200:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L201+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #52]
	ldr	r0, [r6]
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L201+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L195
	mov	r2, #1
	mov	r1, r5
	ldr	r0, .L201+16
	ldr	r3, .L201+20
	str	r2, [r4, #28]
	str	r5, [r4, #20]
	add	r2, r3, #1392
	str	r5, [r6, #16]
	str	r5, [r0, #16]
	str	r5, [r0, #56]
	add	r2, r2, #8
.L194:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L194
.L195:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	bne	.L183
	ldr	r3, [r4, #100]
	cmp	r3, #1
	bne	.L183
	ldr	r3, [r4, #136]
	cmp	r3, #1
	bne	.L183
	ldr	r3, [r4, #172]
	cmp	r3, #1
	ldreq	r2, .L201+24
	streq	r3, [r2]
	b	.L183
.L199:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L201+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r0, [r7]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L201+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L187
	ldr	r0, [r4, #28]
	cmp	r0, #0
	bne	.L187
	mov	r1, r0
	ldr	ip, .L201+16
	ldr	r3, .L201+20
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	add	r2, r3, #1392
	str	r0, [r7, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L188:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L188
.L187:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L184
	ldr	r3, [r4, #100]
	cmp	r3, #1
	bne	.L184
	ldr	r3, [r4, #136]
	cmp	r3, #1
	bne	.L184
	ldr	r3, [r4, #172]
	cmp	r3, #1
	ldreq	r2, .L201+24
	streq	r3, [r2]
	b	.L184
.L202:
	.align	2
.L201:
	.word	characterChoice
	.word	hideSprites
	.word	fry
	.word	collision
	.word	coins
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
	ldr	r3, .L252
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L249
	cmp	r2, #0
	moveq	r2, #512
	ldreq	lr, .L252+4
	ldrne	lr, .L252+4
	strheq	r2, [lr]	@ movhi
.L205:
	ldr	r2, .L252+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L250
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [lr, #88]	@ movhi
.L207:
	ldr	r3, .L252+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L251
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [lr, #48]	@ movhi
.L209:
	ldr	r1, .L252+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L252+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L210
	mov	ip, #148
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L211
.L212:
	ldr	r3, .L252+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #72]	@ movhi
	beq	.L238
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #74]	@ movhi
	strh	r0, [lr, #72]	@ movhi
	strh	r1, [lr, #76]	@ movhi
.L238:
	ldr	r3, .L252+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #128]	@ movhi
	beq	.L237
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #130]	@ movhi
	strh	r0, [lr, #128]	@ movhi
	strh	r1, [lr, #132]	@ movhi
.L237:
	ldr	r3, .L252+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #136]	@ movhi
	beq	.L236
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #138]	@ movhi
	strh	r0, [lr, #136]	@ movhi
	strh	r1, [lr, #140]	@ movhi
.L236:
	ldr	r3, .L252+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [lr, #240]	@ movhi
	beq	.L217
	ldr	r0, [r3, #28]
	ldr	r2, [r3, #24]
	ldr	r1, [r3]
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #4]
	lsl	r2, r2, #1
	orr	r1, r1, #16384
	strh	r2, [lr, #244]	@ movhi
	strh	r1, [lr, #242]	@ movhi
	strh	r0, [lr, #240]	@ movhi
.L217:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L218
	mov	r3, #512
	strh	r3, [lr, #248]	@ movhi
.L220:
	mov	r5, #512
	mov	r4, #150
	ldr	r3, .L252+40
	ldr	r2, .L252+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L219:
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
	bne	.L219
	ldr	r3, .L252+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #8]	@ movhi
	beq	.L235
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #10]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r1, [lr, #12]	@ movhi
.L235:
	mov	r6, #512
	mov	r5, #152
	ldr	r3, .L252+52
	ldr	r2, .L252+4
	ldr	r4, .L252+56
	add	r0, r3, #180
.L226:
	ldr	r1, [r3, #20]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #36
	orrne	r1, r1, r4
	strhne	r5, [r2, #148]	@ movhi
	strhne	r1, [r2, #146]	@ movhi
	strhne	ip, [r2, #144]	@ movhi
	strheq	r6, [r2, #144]	@ movhi
	cmp	r0, r3
	add	r2, r2, #8
	bne	.L226
	ldr	r3, .L252+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L234
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L234:
	ldr	r3, .L252+64
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L233
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L233:
	ldr	r3, .L252+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L232
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L232:
	ldr	r3, .L252+72
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L231
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L231:
	ldr	r3, .L252+76
	mov	lr, pc
	bx	r3
	ldr	r4, .L252+80
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L252+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L252+84
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L252+88
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L218:
	ldr	r0, [r3, #68]
	ldr	r2, [r3, #64]
	ldr	r1, [r3, #40]
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #44]
	lsl	r3, r2, #1
	orr	r2, r1, #16384
	strh	r3, [lr, #252]	@ movhi
	strh	r2, [lr, #250]	@ movhi
	strh	r0, [lr, #248]	@ movhi
	b	.L220
.L210:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [lr, #56]	@ movhi
	beq	.L239
	mov	r2, #148
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #68]	@ movhi
.L239:
	mov	r3, #512
	strh	r3, [lr, #64]	@ movhi
	b	.L212
.L211:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L212
.L251:
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
	b	.L209
.L250:
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
	b	.L207
.L249:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	lr, .L252+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	b	.L205
.L253:
	.align	2
.L252:
	.word	fry
	.word	shadowOAM
	.word	leela
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	life5
	.word	coins
	.word	bullets
	.word	shadowOAM+432
	.word	spaceship
	.word	treasure
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
	ldr	r1, .L260
	ldr	r2, .L260+4
	ldr	r3, .L260+8
	ldr	r6, .L260+12
	str	r5, [r1, #16]
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L260+16
	ldr	ip, .L260+20
	ldr	r0, .L260+24
	ldr	r8, .L260+28
	ldr	r3, .L260+32
	ldr	r2, .L260+36
	ldr	r1, .L260+40
	ldr	r9, .L260+44
	ldr	r7, .L260+48
	ldr	r4, .L260+52
	str	r5, [r6, #20]
	str	r5, [r6, #56]
	str	r5, [r6, #92]
	str	r5, [r6, #128]
	str	r5, [r6, #164]
	str	r5, [lr, #16]
	str	r5, [ip, #16]
	str	r5, [r0, #16]
	str	r5, [r8, #16]
	str	r5, [r3, #16]
	str	r5, [r2, #16]
	str	r5, [r1, #16]
	str	r5, [r7, #16]
	str	r5, [r4, #16]
	str	r5, [r9, #16]
	bl	initLives
	mov	lr, #1
	mov	r0, r6
	mov	r2, r5
	mov	r3, r6
	mov	r1, lr
	mov	fp, lr
	mov	r10, #220
	mov	r6, #100
	mov	ip, #32
	mov	r5, #500
	str	lr, [r8, #16]
	ldr	r8, .L260+32
	str	lr, [r8, #16]
	ldr	r8, .L260+36
	str	lr, [r8, #16]
	ldr	r8, .L260+40
	str	lr, [r9, #16]
	str	lr, [r8, #16]
.L255:
	add	lr, r1, r1, lsl #3
	add	r1, r1, #1
	add	lr, r0, lr, lsl #2
	cmp	r1, #5
	str	r10, [r3, #36]
	str	r6, [r3, #40]
	str	r2, [r3, #56]
	str	ip, [r3, #52]
	str	ip, [r3, #48]
	str	r2, [lr, #24]
	add	r3, r3, #36
	str	fp, [r3, #8]
	str	r2, [r3, #28]
	str	r5, [r3, #32]
	bne	.L255
	mov	r2, #8
	mov	r6, #0
	mov	r5, #1
	ldr	r3, .L260+56
	ldr	r0, [r7]
	ldr	lr, [r7, #12]
	ldr	r1, [r7, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L256:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L256
	ldr	r3, .L260+60
	mov	lr, pc
	bx	r3
	mov	r3, #64
	mov	ip, #170
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	str	r5, [r4, #20]
	str	r5, [r4, #24]
	str	r6, [r4, #16]
	str	r5, [r4, #36]
	str	r6, [r4, #32]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawGame
.L261:
	.align	2
.L260:
	.word	p3
	.word	p4
	.word	spaceship
	.word	treasure
	.word	fry
	.word	p1
	.word	p2
	.word	life2
	.word	life3
	.word	life4
	.word	life5
	.word	life1
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
	ldr	r2, .L270
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L270+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L270+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L270+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L270+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L270+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L270+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L270+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L270+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L270+12
	ldr	r2, [r3, #64]
	cmp	r2, #1
	beq	.L269
.L262:
	pop	{r4, lr}
	bx	lr
.L269:
	ldr	r2, [r3, #100]
	cmp	r2, #1
	bne	.L262
	ldr	r2, [r3, #136]
	cmp	r2, #1
	bne	.L262
	ldr	r3, [r3, #172]
	cmp	r3, #1
	ldreq	r2, .L270+16
	streq	r3, [r2]
	b	.L262
.L271:
	.align	2
.L270:
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
	ldr	r3, .L276
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L276+4
	ldr	lr, .L276+8
	ldr	r3, .L276+12
	str	r0, [lr, #16]
	ldr	r4, .L276+16
	ldr	lr, .L276+20
	str	r0, [ip, #16]
	ldr	ip, .L276+24
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [ip, #20]
	str	r0, [ip, #56]
	str	r0, [ip, #92]
	str	r0, [ip, #128]
	str	r0, [ip, #164]
	str	r0, [lr, #16]
	str	r0, [lr, #56]
	add	r2, r2, #8
.L273:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L273
	pop	{r4, lr}
	b	drawGame
.L277:
	.align	2
.L276:
	.word	hideSprites
	.word	leela
	.word	alien
	.word	bullets
	.word	fry
	.word	coins
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
	ldr	r3, .L282
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L282+4
	ldr	lr, .L282+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L282+12
	ldr	lr, .L282+16
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L282+20
	ldr	lr, .L282+24
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L282+28
	ldr	lr, .L282+32
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L282+36
	ldr	lr, .L282+40
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L282+44
	ldr	lr, .L282+48
	ldr	r3, .L282+52
	str	r0, [lr, #16]
	ldr	r4, .L282+56
	ldr	lr, .L282+60
	str	r0, [ip, #16]
	ldr	ip, .L282+64
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [ip, #20]
	str	r0, [ip, #56]
	str	r0, [ip, #92]
	str	r0, [ip, #128]
	str	r0, [ip, #164]
	str	r0, [lr, #16]
	str	r0, [lr, #56]
	add	r2, r2, #8
.L279:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L279
	pop	{r4, lr}
	b	drawGame
.L283:
	.align	2
.L282:
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
	.word	coins
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
	ldr	r5, .L344
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L344+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L344+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L285
.L287:
	ldr	r0, [r4]
.L286:
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
	beq	.L288
.L290:
	ldr	r0, [r4]
.L289:
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
	beq	.L342
.L297:
	ldr	r5, .L344+12
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
	beq	.L298
.L300:
	ldr	r0, [r4]
.L299:
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
	beq	.L301
.L303:
	ldr	r0, [r4]
.L302:
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
	beq	.L304
.L306:
	ldr	r0, [r4]
.L305:
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
	beq	.L307
.L309:
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
	bx	r6
	cmp	r0, #1
	beq	.L343
.L284:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L285:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L287
	ldr	ip, .L344+16
	ldr	r1, .L344+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L287
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L344+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L286
.L343:
	ldr	r3, .L344+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L284
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L284
	ldr	r3, .L344+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L344+28
	ldreq	r2, .L344+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L284
.L307:
	ldr	r3, .L344+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L309
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L309
	ldr	r2, .L344+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L309
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L344+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L308
.L304:
	ldr	r3, .L344+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L306
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L306
	ldr	r2, .L344+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L306
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L344+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L305
.L301:
	ldr	r3, .L344+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L303
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L303
	ldr	r2, .L344+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L303
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L344+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L302
.L298:
	ldr	r2, .L344+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L300
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L300
	ldr	r1, .L344+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L300
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L344+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L299
.L342:
	ldr	r3, .L344+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L297
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L297
	ldr	r3, .L344+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L344+28
	ldreq	r2, .L344+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L297
.L294:
	ldr	r3, .L344+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L296
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L296
	ldr	r2, .L344+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L296
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L344+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L295
.L291:
	ldr	r3, .L344+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L293
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L293
	ldr	r2, .L344+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L293
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L344+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L292
.L288:
	ldr	r3, .L344+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L290
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L290
	ldr	r2, .L344+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L290
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L344+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L289
.L345:
	.align	2
.L344:
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
	ldr	r2, .L356
	ldrh	r3, [r2]
	ldr	r0, .L356+4
	push	{r4, lr}
	ldr	r1, .L356+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L356+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L348:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L347:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L348
	ldr	r4, .L356+16
	ldr	r2, [r4, #60]
	ldr	r3, [r4, #68]
	cmp	r2, r3
	bgt	.L355
.L349:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	str	r3, [r4, #60]
	bl	updateLives
	ldr	r0, .L356+20
	bl	updateCoins
	ldr	r0, .L356+24
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L355:
	mov	r3, #1
	add	r0, r4, #36
	str	r3, [r4, #56]
	bl	updateTreasure
	b	.L349
.L357:
	.align	2
.L356:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	treasure
	.word	coins
	.word	coins+40
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
	ldr	r2, .L368
	ldrh	r3, [r2]
	ldr	r0, .L368+4
	push	{r4, lr}
	ldr	r1, .L368+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L368+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L360:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L359:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L360
	ldr	r4, .L368+16
	bl	updateLives
	ldr	r2, [r4, #96]
	ldr	r3, [r4, #104]
	cmp	r2, r3
	bgt	.L367
.L361:
	ldr	r3, [r4, #96]
	ldr	r0, .L368+20
	add	r3, r3, #1
	str	r3, [r4, #96]
	bl	updateCoins
	ldr	r0, .L368+24
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L367:
	mov	r3, #1
	add	r0, r4, #72
	str	r3, [r4, #92]
	bl	updateTreasure
	b	.L361
.L369:
	.align	2
.L368:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	treasure
	.word	coins
	.word	coins+40
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
	ldr	r2, .L380
	ldrh	r3, [r2]
	ldr	r0, .L380+4
	push	{r4, lr}
	ldr	r1, .L380+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L380+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L372:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L371:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L372
	ldr	r4, .L380+16
	bl	updateLives
	ldr	r2, [r4, #132]
	ldr	r3, [r4, #140]
	cmp	r2, r3
	bgt	.L379
.L373:
	ldr	r3, [r4, #132]
	ldr	r0, .L380+20
	add	r3, r3, #1
	str	r3, [r4, #132]
	bl	updateCoins
	ldr	r0, .L380+24
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L379:
	mov	r3, #1
	add	r0, r4, #108
	str	r3, [r4, #128]
	bl	updateTreasure
	b	.L373
.L381:
	.align	2
.L380:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	treasure
	.word	coins
	.word	coins+40
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
	ldr	r2, .L392
	ldrh	r3, [r2]
	ldr	r0, .L392+4
	push	{r4, lr}
	ldr	r1, .L392+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L392+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L384:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L383:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L384
	ldr	r4, .L392+16
	bl	updateLives
	ldr	r2, [r4, #168]
	ldr	r3, [r4, #176]
	cmp	r2, r3
	bgt	.L391
.L385:
	ldr	r3, [r4, #168]
	ldr	r0, .L392+20
	add	r3, r3, #1
	str	r3, [r4, #168]
	bl	updateCoins
	ldr	r0, .L392+24
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L391:
	mov	r3, #1
	add	r0, r4, #144
	str	r3, [r4, #164]
	bl	updateTreasure
	b	.L385
.L393:
	.align	2
.L392:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	treasure
	.word	coins
	.word	coins+40
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
	.comm	treasure,180,4
	.comm	treasureP1,36,4
	.comm	bullet,28,4
	.comm	bullets,1400,4
	.comm	coins,80,4
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
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.type	ground, %object
	.size	ground, 4
ground:
	.word	154
	.ident	"GCC: (devkitARM release 53) 9.1.0"
