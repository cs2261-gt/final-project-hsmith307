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
	push	{r4, lr}
	mov	r1, #1
	mov	r2, #32
	mov	r4, #130
	mov	lr, #50
	mov	ip, #280
	mov	r0, #49
	ldr	r3, .L24
	stm	r3, {r4, lr}
	str	ip, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
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
	str	r1, [ip, #20]
	ldr	r5, .L65+20
	str	r1, [ip, #56]
	str	r1, [ip, #92]
	str	r1, [ip, #128]
	str	r1, [ip, #164]
	ldr	ip, .L65+24
	str	r1, [r5, #16]
	str	r1, [ip, #16]
	ldr	r5, .L65+28
	str	r1, [ip, #40]
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
	mov	r5, #1
	mov	r6, #32
	ldr	r3, .L77
	mov	fp, #130
	mov	r10, #50
	mov	r9, #280
	mov	r8, #49
	mov	lr, pc
	bx	r3
	ldr	r2, .L77+4
	mov	r0, #8
	mov	r3, r2
	mov	lr, #0
	ldr	r4, .L77+8
	ldr	r7, .L77+12
	str	r5, [r4, #16]
	str	r5, [r4, #20]
	str	r5, [r4, #40]
	str	r5, [r4, #44]
	str	r6, [r4, #12]
	str	r6, [r4, #8]
	str	r6, [r4, #36]
	str	r6, [r4, #32]
	mov	ip, r5
	str	fp, [r4]
	str	r10, [r4, #4]
	str	r9, [r4, #24]
	str	r8, [r4, #28]
	ldr	r5, [r7]
	ldr	r4, [r7, #52]
	ldr	r6, [r7, #12]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r5, r5, r6
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
	mov	r10, #90
	mov	r9, #2
	mov	r8, #4
	mov	r6, #203
	mov	r5, #120
	mov	r0, #1
	ldr	r4, .L77+16
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	ldr	r3, .L77+20
	str	fp, [r4]
	str	r6, [r3, #36]
	str	ip, [r3, #44]
	str	r5, [r3, #40]
	str	ip, [r4, #20]
	str	ip, [r4, #24]
	str	ip, [r4, #36]
	str	lr, [r4, #32]
	str	r10, [r4, #4]
	str	r9, [r4, #28]
	str	r8, [r4, #40]
	ldr	r3, .L77+4
.L69:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L69
	mov	lr, #0
	ldr	r3, .L77+24
	ldr	r3, [r3]
	ldr	ip, .L77+28
	cmp	r3, #1
	str	lr, [ip]
	streq	r3, [r7, #16]
	beq	.L71
	cmp	r3, #0
	ldreq	r3, .L77+32
	streq	r0, [r3, #16]
.L71:
	mov	ip, #1
	mov	r0, #0
	mov	r3, ip
	str	ip, [r4, #16]
	ldr	ip, .L77+36
	ldr	lr, .L77+40
	str	r0, [ip, #16]
	ldr	ip, .L77+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L77+48
	ldr	ip, .L77+52
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
	.word	blocks
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	mov	lr, #8
	mov	ip, r3
	mov	r0, #0
	mov	r1, #1
	ldr	r5, .L89+8
	ldr	r6, [r5]
	ldr	r7, [r5, #12]
	ldr	r4, [r5, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r6, r6, r7
	add	r4, r4, #20
.L80:
	str	r6, [ip]
	str	r4, [ip, #4]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	r0, [ip, #24]
	str	r1, [ip, #12]
	add	ip, ip, #28
	cmp	ip, r2
	bne	.L80
	mov	r6, #64
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #4
	ldr	lr, .L89+12
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	r6, [lr, #12]
	str	r6, [lr, #8]
	str	fp, [lr]
	str	r0, [lr, #32]
	str	r10, [lr, #4]
	str	r9, [lr, #28]
	str	r8, [lr, #40]
	ldr	lr, .L89+16
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r1, [lr, #40]
	str	r1, [lr, #44]
	mov	r1, #50
	str	r1, [lr, #4]
	mov	r1, #280
	str	r1, [lr, #24]
	mov	r1, #49
	mov	r4, #32
	mov	r7, #130
	mov	ip, #1
	str	r1, [lr, #28]
	ldr	r1, .L89+20
	str	r4, [lr, #12]
	str	r4, [lr, #8]
	str	r4, [lr, #36]
	str	r4, [lr, #32]
	str	r0, [r1, #16]
	str	r7, [lr]
	ldr	r1, .L89+24
	ldr	r6, .L89+28
	ldr	r4, .L89+32
	ldr	lr, .L89+36
	str	r0, [r1, #16]
	str	r0, [r6, #16]
	str	r0, [r4, #16]
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
	ldr	r2, .L89+40
	ldr	r0, .L89+44
	ldr	r3, [r2, #76]
	ldr	r0, [r0]
	ldr	ip, .L89+48
	add	r3, r3, #25
	cmp	r0, #1
	str	r3, [r2, #76]
	str	r1, [ip]
	streq	r0, [r5, #16]
	beq	.L79
	cmp	r0, #0
	ldreq	r3, .L89+52
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
	.word	alien
	.word	blocks
	.word	p1
	.word	p4
	.word	spaceship
	.word	p2
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
	ldr	r8, .L99+8
	str	r4, [r8, #16]
	ldr	r8, .L99+12
	str	r4, [r8, #16]
	ldr	r8, .L99+16
	str	r4, [r8, #16]
	ldr	r8, .L99+20
	ldr	r5, .L99+24
	str	r4, [r8, #16]
	ldr	r8, .L99+28
	mov	r0, r4
	ldr	r6, [r5]
	ldr	r7, [r5, #12]
	str	r4, [r8, #16]
	ldr	r4, [r5, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r6, r6, r7
	add	r4, r4, #20
.L92:
	str	r6, [ip]
	str	r4, [ip, #4]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	r0, [ip, #24]
	str	r1, [ip, #12]
	add	ip, ip, #28
	cmp	r2, ip
	bne	.L92
	ldr	lr, .L99+32
	str	r0, [lr, #32]
	ldr	r0, .L99+36
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	r1, [lr, #16]
	str	r1, [r0, #16]
	str	r1, [r0, #20]
	str	r1, [r0, #40]
	str	r1, [r0, #44]
	mov	r1, #50
	str	r1, [r0, #4]
	mov	r1, #280
	mov	r4, #32
	mov	r6, #64
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #4
	mov	r7, #130
	str	r1, [r0, #24]
	mov	r1, #49
	mov	ip, #1
	str	fp, [lr]
	str	r10, [lr, #4]
	str	r9, [lr, #28]
	str	r8, [lr, #40]
	str	r6, [lr, #12]
	str	r6, [lr, #8]
	str	r7, [r0]
	str	r1, [r0, #28]
	str	r4, [r0, #12]
	str	r4, [r0, #8]
	str	r4, [r0, #36]
	str	r4, [r0, #32]
.L93:
	str	ip, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L93
	mov	r0, #2
	ldr	r2, .L99+40
	ldr	r1, .L99+44
	ldr	r3, [r2, #112]
	ldr	r1, [r1]
	add	r3, r3, #25
	str	r3, [r2, #112]
	ldr	r3, .L99+48
	cmp	r1, #1
	str	r0, [r3]
	streq	r1, [r5, #16]
	beq	.L91
	cmp	r1, #0
	ldreq	r3, .L99+52
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
	.word	alien
	.word	blocks
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
	ldr	r5, .L109+24
	str	r4, [r8, #16]
	ldr	r8, .L109+28
	mov	r0, r4
	ldr	r6, [r5]
	ldr	r7, [r5, #12]
	str	r4, [r8, #16]
	ldr	r4, [r5, #52]
	add	r2, r3, #1392
	add	r2, r2, lr
	add	r6, r6, r7
	add	r4, r4, #20
.L102:
	str	r6, [ip]
	str	r4, [ip, #4]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	r0, [ip, #24]
	str	r1, [ip, #12]
	add	ip, ip, #28
	cmp	r2, ip
	bne	.L102
	ldr	lr, .L109+32
	str	r0, [lr, #32]
	ldr	r0, .L109+36
	str	r1, [lr, #20]
	str	r1, [lr, #24]
	str	r1, [lr, #36]
	str	r1, [lr, #16]
	str	r1, [r0, #16]
	str	r1, [r0, #20]
	str	r1, [r0, #40]
	str	r1, [r0, #44]
	mov	r1, #50
	str	r1, [r0, #4]
	mov	r1, #280
	mov	r4, #32
	mov	r6, #64
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #4
	mov	r7, #130
	str	r1, [r0, #24]
	mov	r1, #49
	mov	ip, #1
	str	fp, [lr]
	str	r10, [lr, #4]
	str	r9, [lr, #28]
	str	r8, [lr, #40]
	str	r6, [lr, #12]
	str	r6, [lr, #8]
	str	r7, [r0]
	str	r1, [r0, #28]
	str	r4, [r0, #12]
	str	r4, [r0, #8]
	str	r4, [r0, #36]
	str	r4, [r0, #32]
.L103:
	str	ip, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L103
	mov	r0, #3
	ldr	r2, .L109+40
	ldr	r1, .L109+44
	ldr	r3, [r2, #148]
	ldr	r1, [r1]
	add	r3, r3, #25
	str	r3, [r2, #148]
	ldr	r3, .L109+48
	cmp	r1, #1
	str	r0, [r3]
	streq	r1, [r5, #16]
	beq	.L101
	cmp	r1, #0
	ldreq	r3, .L109+52
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
	.word	alien
	.word	blocks
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
	.global	updateBlocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlocks, %function
updateBlocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r1, [r0, #20]
	ldr	r2, [r0, #16]
	sub	r3, r3, r1
	cmp	r2, #1
	str	r3, [r0]
	bxne	lr
	ldr	r2, [r0, #12]
	add	r2, r2, #20
	cmp	r3, r2
	moveq	r3, #240
	streq	r3, [r0]
	bx	lr
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
	ldr	r6, .L196
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #16
	ldr	r3, .L196+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L194
.L179:
	cmp	r5, #0
	beq	.L195
.L178:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L195:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L196+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #52]
	ldr	r0, [r6]
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L196+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L190
	mov	r2, #1
	mov	r1, r5
	ldr	r0, .L196+16
	ldr	r3, .L196+20
	str	r2, [r4, #28]
	str	r5, [r4, #20]
	add	r2, r3, #1392
	str	r5, [r6, #16]
	str	r5, [r0, #16]
	str	r5, [r0, #40]
	add	r2, r2, #8
.L189:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L189
.L190:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	bne	.L178
	ldr	r3, [r4, #100]
	cmp	r3, #1
	bne	.L178
	ldr	r3, [r4, #136]
	cmp	r3, #1
	bne	.L178
	ldr	r3, [r4, #172]
	cmp	r3, #1
	ldreq	r2, .L196+24
	streq	r3, [r2]
	b	.L178
.L194:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L196+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r0, [r7]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L196+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L182
	ldr	r0, [r4, #28]
	cmp	r0, #0
	bne	.L182
	mov	r1, r0
	ldr	ip, .L196+16
	ldr	r3, .L196+20
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	add	r2, r3, #1392
	str	r0, [r7, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #40]
	add	r2, r2, #8
.L183:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L183
.L182:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L179
	ldr	r3, [r4, #100]
	cmp	r3, #1
	bne	.L179
	ldr	r3, [r4, #136]
	cmp	r3, #1
	bne	.L179
	ldr	r3, [r4, #172]
	cmp	r3, #1
	ldreq	r2, .L196+24
	streq	r3, [r2]
	b	.L179
.L197:
	.align	2
.L196:
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
	ldr	r3, .L247
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L244
	cmp	r2, #0
	moveq	r2, #512
	ldreq	lr, .L247+4
	ldrne	lr, .L247+4
	strheq	r2, [lr]	@ movhi
.L200:
	ldr	r2, .L247+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L245
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [lr, #88]	@ movhi
.L202:
	ldr	r3, .L247+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L246
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [lr, #48]	@ movhi
.L204:
	ldr	r1, .L247+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L247+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L205
	mov	ip, #152
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L206
.L207:
	ldr	r3, .L247+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #72]	@ movhi
	beq	.L233
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #74]	@ movhi
	strh	r0, [lr, #72]	@ movhi
	strh	r1, [lr, #76]	@ movhi
.L233:
	ldr	r3, .L247+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #128]	@ movhi
	beq	.L232
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #130]	@ movhi
	strh	r0, [lr, #128]	@ movhi
	strh	r1, [lr, #132]	@ movhi
.L232:
	ldr	r3, .L247+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #136]	@ movhi
	beq	.L231
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #138]	@ movhi
	strh	r0, [lr, #136]	@ movhi
	strh	r1, [lr, #140]	@ movhi
.L231:
	ldr	r3, .L247+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	movne	r0, #148
	ldrne	r2, [r3]
	orrne	r2, r2, #16384
	ldrne	r1, [r3, #4]
	strheq	r2, [lr, #240]	@ movhi
	strhne	r2, [lr, #242]	@ movhi
	ldr	r2, [r3, #40]
	strhne	r0, [lr, #244]	@ movhi
	strhne	r1, [lr, #240]	@ movhi
	cmp	r2, #0
	bne	.L213
	mov	r3, #512
	strh	r3, [lr, #248]	@ movhi
.L215:
	mov	r5, #512
	mov	r4, #154
	ldr	r3, .L247+40
	ldr	r2, .L247+44
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
	ldr	r3, .L247+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #8]	@ movhi
	beq	.L230
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #10]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r1, [lr, #12]	@ movhi
.L230:
	mov	r6, #512
	mov	r5, #156
	ldr	r3, .L247+52
	ldr	r2, .L247+4
	ldr	r4, .L247+56
	add	r0, r3, #180
.L221:
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
	bne	.L221
	ldr	r3, .L247+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L229
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L229:
	ldr	r3, .L247+64
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L228
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L228:
	ldr	r3, .L247+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L227
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L227:
	ldr	r3, .L247+72
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L226
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L226:
	ldr	r3, .L247+76
	mov	lr, pc
	bx	r3
	ldr	r4, .L247+80
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L247+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L247+84
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L247+88
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L213:
	mov	r1, #148
	ldr	r2, [r3, #24]
	ldr	r0, [r3, #28]
	orr	r3, r2, #16384
	strh	r3, [lr, #250]	@ movhi
	strh	r0, [lr, #248]	@ movhi
	strh	r1, [lr, #252]	@ movhi
	b	.L215
.L205:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [lr, #56]	@ movhi
	beq	.L234
	mov	r2, #152
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #68]	@ movhi
.L234:
	mov	r3, #512
	strh	r3, [lr, #64]	@ movhi
	b	.L207
.L206:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L207
.L246:
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
	b	.L204
.L245:
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
	b	.L202
.L244:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	lr, .L247+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	b	.L200
.L248:
	.align	2
.L247:
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
	ldr	r1, .L255
	ldr	r2, .L255+4
	ldr	r3, .L255+8
	ldr	r6, .L255+12
	str	r5, [r1, #16]
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L255+16
	ldr	ip, .L255+20
	ldr	r0, .L255+24
	ldr	r8, .L255+28
	ldr	r3, .L255+32
	ldr	r2, .L255+36
	ldr	r1, .L255+40
	ldr	r9, .L255+44
	ldr	r7, .L255+48
	ldr	r4, .L255+52
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
	ldr	r8, .L255+32
	str	lr, [r8, #16]
	ldr	r8, .L255+36
	str	lr, [r8, #16]
	ldr	r8, .L255+40
	str	lr, [r9, #16]
	str	lr, [r8, #16]
.L250:
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
	bne	.L250
	mov	r2, #8
	mov	r6, #0
	mov	r5, #1
	ldr	r3, .L255+56
	ldr	r0, [r7]
	ldr	lr, [r7, #12]
	ldr	r1, [r7, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L251:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L251
	ldr	r3, .L255+60
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
.L256:
	.align	2
.L255:
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
	ldr	r2, [r3, #64]
	cmp	r2, #1
	beq	.L264
.L257:
	pop	{r4, lr}
	bx	lr
.L264:
	ldr	r2, [r3, #100]
	cmp	r2, #1
	bne	.L257
	ldr	r2, [r3, #136]
	cmp	r2, #1
	bne	.L257
	ldr	r3, [r3, #172]
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
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L271+4
	ldr	lr, .L271+8
	ldr	r3, .L271+12
	str	r0, [lr, #16]
	ldr	r4, .L271+16
	ldr	lr, .L271+20
	str	r0, [ip, #16]
	ldr	ip, .L271+24
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [ip, #20]
	str	r0, [ip, #56]
	str	r0, [ip, #92]
	str	r0, [ip, #128]
	str	r0, [ip, #164]
	str	r0, [lr, #16]
	str	r0, [lr, #40]
	add	r2, r2, #8
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
	ldr	r3, .L277
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L277+4
	ldr	lr, .L277+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L277+12
	ldr	lr, .L277+16
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L277+20
	ldr	lr, .L277+24
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L277+28
	ldr	lr, .L277+32
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L277+36
	ldr	lr, .L277+40
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L277+44
	ldr	lr, .L277+48
	ldr	r3, .L277+52
	str	r0, [lr, #16]
	ldr	r4, .L277+56
	ldr	lr, .L277+60
	str	r0, [ip, #16]
	ldr	ip, .L277+64
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [ip, #20]
	str	r0, [ip, #56]
	str	r0, [ip, #92]
	str	r0, [ip, #128]
	str	r0, [ip, #164]
	str	r0, [lr, #16]
	str	r0, [lr, #40]
	add	r2, r2, #8
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
	ldr	r5, .L339
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L339+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L339+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L280
.L282:
	ldr	r0, [r4]
.L281:
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
	beq	.L283
.L285:
	ldr	r0, [r4]
.L284:
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
	beq	.L286
.L288:
	ldr	r0, [r4]
.L287:
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
	beq	.L289
.L291:
	ldr	r0, [r4]
.L290:
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
	beq	.L337
.L292:
	ldr	r5, .L339+12
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
	beq	.L293
.L295:
	ldr	r0, [r4]
.L294:
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
	beq	.L338
.L279:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L280:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L282
	ldr	ip, .L339+16
	ldr	r1, .L339+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L282
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L339+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L281
.L338:
	ldr	r3, .L339+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L279
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L279
	ldr	r3, .L339+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L339+28
	ldreq	r2, .L339+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L279
.L302:
	ldr	r3, .L339+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L304
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L304
	ldr	r2, .L339+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L304
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L339+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L303
.L299:
	ldr	r3, .L339+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L301
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L301
	ldr	r2, .L339+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L301
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L339+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L300
.L296:
	ldr	r3, .L339+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L298
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L298
	ldr	r2, .L339+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L298
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L339+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L297
.L293:
	ldr	r2, .L339+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L295
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L295
	ldr	r1, .L339+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L295
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L339+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L294
.L337:
	ldr	r3, .L339+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L292
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L292
	ldr	r3, .L339+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L339+28
	ldreq	r2, .L339+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L292
.L289:
	ldr	r3, .L339+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L291
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L291
	ldr	r2, .L339+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L291
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L339+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L290
.L286:
	ldr	r3, .L339+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L288
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L288
	ldr	r2, .L339+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L288
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L339+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L287
.L283:
	ldr	r3, .L339+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L285
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L285
	ldr	r2, .L339+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L285
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L339+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L284
.L340:
	.align	2
.L339:
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
	ldr	r2, .L353
	ldrh	r3, [r2]
	ldr	r0, .L353+4
	push	{r4, lr}
	ldr	r1, .L353+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L353+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L343:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L342:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L343
	ldr	r4, .L353+16
	ldr	r2, [r4, #60]
	ldr	r3, [r4, #68]
	cmp	r2, r3
	bgt	.L352
.L344:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	str	r3, [r4, #60]
	bl	updateLives
	ldr	r3, .L353+20
	ldr	r2, [r3]
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	sub	r2, r2, r0
	cmp	r1, #1
	str	r2, [r3]
	bne	.L345
	ldr	r1, [r3, #12]
	add	r1, r1, #20
	cmp	r2, r1
	moveq	r2, #240
	streq	r2, [r3]
.L345:
	ldr	r2, [r3, #24]
	ldr	r0, [r3, #44]
	ldr	r1, [r3, #40]
	sub	r2, r2, r0
	cmp	r1, #1
	str	r2, [r3, #24]
	bne	.L346
	ldr	r1, [r3, #36]
	add	r1, r1, #20
	cmp	r2, r1
	moveq	r2, #240
	streq	r2, [r3, #24]
.L346:
	pop	{r4, lr}
	b	drawGame
.L352:
	mov	r3, #1
	add	r0, r4, #36
	str	r3, [r4, #56]
	bl	updateTreasure
	b	.L344
.L354:
	.align	2
.L353:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	treasure
	.word	blocks
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
	ldr	r2, .L367
	ldrh	r3, [r2]
	ldr	r0, .L367+4
	push	{r4, lr}
	ldr	r1, .L367+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L367+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L357:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L356:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L357
	ldr	r4, .L367+16
	bl	updateLives
	ldr	r2, [r4, #96]
	ldr	r3, [r4, #104]
	cmp	r2, r3
	bgt	.L366
.L358:
	ldr	r3, .L367+20
	add	r0, r3, #16
	ldr	r1, [r4, #96]
	ldr	r2, [r3]
	ldm	r0, {r0, ip}
	add	r1, r1, #1
	sub	r2, r2, ip
	cmp	r0, #1
	str	r2, [r3]
	str	r1, [r4, #96]
	bne	.L359
	ldr	r1, [r3, #12]
	add	r1, r1, #20
	cmp	r2, r1
	moveq	r2, #240
	streq	r2, [r3]
.L359:
	ldr	r2, [r3, #24]
	ldr	r0, [r3, #44]
	ldr	r1, [r3, #40]
	sub	r2, r2, r0
	cmp	r1, #1
	str	r2, [r3, #24]
	bne	.L360
	ldr	r1, [r3, #36]
	add	r1, r1, #20
	cmp	r2, r1
	moveq	r2, #240
	streq	r2, [r3, #24]
.L360:
	pop	{r4, lr}
	b	drawGame
.L366:
	mov	r3, #1
	add	r0, r4, #72
	str	r3, [r4, #92]
	bl	updateTreasure
	b	.L358
.L368:
	.align	2
.L367:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	treasure
	.word	blocks
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
	ldr	r2, .L381
	ldrh	r3, [r2]
	ldr	r0, .L381+4
	push	{r4, lr}
	ldr	r1, .L381+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L381+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L371:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L370:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L371
	ldr	r4, .L381+16
	bl	updateLives
	ldr	r2, [r4, #132]
	ldr	r3, [r4, #140]
	cmp	r2, r3
	bgt	.L380
.L372:
	ldr	r3, .L381+20
	add	r0, r3, #16
	ldr	r1, [r4, #132]
	ldr	r2, [r3]
	ldm	r0, {r0, ip}
	add	r1, r1, #1
	sub	r2, r2, ip
	cmp	r0, #1
	str	r2, [r3]
	str	r1, [r4, #132]
	bne	.L373
	ldr	r1, [r3, #12]
	add	r1, r1, #20
	cmp	r2, r1
	moveq	r2, #240
	streq	r2, [r3]
.L373:
	ldr	r2, [r3, #24]
	ldr	r0, [r3, #44]
	ldr	r1, [r3, #40]
	sub	r2, r2, r0
	cmp	r1, #1
	str	r2, [r3, #24]
	bne	.L374
	ldr	r1, [r3, #36]
	add	r1, r1, #20
	cmp	r2, r1
	moveq	r2, #240
	streq	r2, [r3, #24]
.L374:
	pop	{r4, lr}
	b	drawGame
.L380:
	mov	r3, #1
	add	r0, r4, #108
	str	r3, [r4, #128]
	bl	updateTreasure
	b	.L372
.L382:
	.align	2
.L381:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	treasure
	.word	blocks
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
	ldr	r2, .L395
	ldrh	r3, [r2]
	ldr	r0, .L395+4
	push	{r4, lr}
	ldr	r1, .L395+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L395+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L385:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L384:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L385
	ldr	r4, .L395+16
	bl	updateLives
	ldr	r2, [r4, #168]
	ldr	r3, [r4, #176]
	cmp	r2, r3
	bgt	.L394
.L386:
	ldr	r3, .L395+20
	add	r0, r3, #16
	ldr	r1, [r4, #168]
	ldr	r2, [r3]
	ldm	r0, {r0, ip}
	add	r1, r1, #1
	sub	r2, r2, ip
	cmp	r0, #1
	str	r2, [r3]
	str	r1, [r4, #168]
	bne	.L387
	ldr	r1, [r3, #12]
	add	r1, r1, #20
	cmp	r2, r1
	moveq	r2, #240
	streq	r2, [r3]
.L387:
	ldr	r2, [r3, #24]
	ldr	r0, [r3, #44]
	ldr	r1, [r3, #40]
	sub	r2, r2, r0
	cmp	r1, #1
	str	r2, [r3, #24]
	bne	.L388
	ldr	r1, [r3, #36]
	add	r1, r1, #20
	cmp	r2, r1
	moveq	r2, #240
	streq	r2, [r3, #24]
.L388:
	pop	{r4, lr}
	b	drawGame
.L394:
	mov	r3, #1
	add	r0, r4, #144
	str	r3, [r4, #164]
	bl	updateTreasure
	b	.L386
.L396:
	.align	2
.L395:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	treasure
	.word	blocks
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
	.comm	blocks,48,4
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
