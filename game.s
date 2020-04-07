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
	mov	r4, #20
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
	mov	r4, #20
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
	str	lr, [sp, #-4]!
	mov	r1, #0
	mov	lr, #220
	mov	r2, #32
	mov	ip, #100
	mov	r0, #1
	ldr	r3, .L40
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
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
	mov	r1, #1
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
	mov	r1, #1
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
	mov	r1, #1
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
	mov	r3, #67108864
	mov	r2, #4352
	mov	r1, #1
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #32
	mov	lr, #104
	mov	r0, #64
	strh	r2, [r3]	@ movhi
	ldr	r3, .L60
	ldr	r2, [r3]
	ldr	r3, .L60+4
	cmp	r2, r1
	stmib	r3, {r0, ip}
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	lr, [r3]
	str	ip, [r3, #12]
	beq	.L59
	cmp	r2, #0
	bne	.L57
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L60+8
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
.L57:
	mov	r3, #200
	mov	r7, #90
	mov	ip, #20
	mov	r1, #32
	mov	lr, #1
	mov	r6, #100
	mov	r4, #120
	mov	r5, #180
	ldr	r0, .L60+12
	ldr	r2, .L60+16
	str	r3, [r0]
	stm	r2, {r3, r7}
	ldr	r3, .L60+20
	str	ip, [r0, #4]
	str	ip, [r3]
	ldr	ip, .L60+24
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
	ldr	r4, .L60+28
	mov	r0, #3
	ldr	r2, .L60+32
	ldr	r1, .L60+36
	str	lr, [ip, #16]
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L60+40
	ldr	r1, .L60+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r0, .L60+48
	ldr	r1, .L60+52
	ldr	r2, .L60+56
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L59:
	mov	r1, #0
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L60+60
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
	b	.L57
.L61:
	.align	2
.L60:
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
	ldr	r3, .L72
	mov	lr, pc
	bx	r3
	mov	ip, #60
	mov	lr, #80
	mov	r0, #1
	mov	r2, #32
	ldr	r3, .L72+4
	add	r1, r3, ip
.L63:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L63
	ldr	r2, .L72+8
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	r4, #1
	ldr	r6, .L72+12
	ldr	r1, [r6, #12]
	ldr	lr, [r6]
	ldr	ip, [r6, #4]
	add	lr, lr, r1
	add	ip, ip, #20
	add	r1, r2, #280
.L64:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L64
	mov	lr, #203
	mov	ip, #120
	mov	r3, #1
	ldr	r0, .L72+16
	str	lr, [r0]
	str	r4, [r0, #8]
	str	ip, [r0, #4]
.L65:
	str	r3, [r2, #12]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L65
	mov	r1, #0
	mov	ip, #64
	mov	r7, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r2, .L72+20
	ldr	r0, [r2]
	ldr	r2, .L72+24
	str	r1, [r2, #16]
	ldr	r2, .L72+28
	str	r1, [r2, #16]
	ldr	r2, .L72+32
	str	r1, [r2, #16]
	ldr	r2, .L72+36
	str	r1, [r2, #16]
	ldr	r2, .L72+40
	str	r1, [r2, #16]
	ldr	r2, .L72+44
	str	r1, [r2]
	ldr	r2, .L72+48
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
	beq	.L62
	cmp	r0, #0
	ldreq	r2, .L72+52
	streq	r3, [r2, #16]
.L62:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r3, .L79
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r1, #1
	mov	ip, #64
	mov	r6, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r3, .L79+4
	ldr	r0, [r3]
	ldr	r3, .L79+8
	str	r2, [r3, #16]
	ldr	r3, .L79+12
	str	r2, [r3, #16]
	ldr	r3, .L79+16
	str	r2, [r3, #16]
	ldr	r3, .L79+20
	str	r2, [r3, #16]
	ldr	r3, .L79+24
	str	r2, [r3, #16]
	ldr	r3, .L79+28
	str	r2, [r3, #32]
	ldr	r2, .L79+32
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
	beq	.L78
	cmp	r0, #0
	ldreq	r3, .L79+36
	pop	{r4, r5, r6, lr}
	streq	r1, [r3, #16]
	bx	lr
.L78:
	ldr	r3, .L79+40
	pop	{r4, r5, r6, lr}
	str	r0, [r3, #16]
	bx	lr
.L80:
	.align	2
.L79:
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
	ldr	r3, .L86
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r1, #1
	mov	lr, #64
	mov	ip, #2
	mov	r6, #170
	mov	r5, #90
	mov	r4, #4
	ldr	r3, .L86+4
	ldr	r0, [r3]
	ldr	r3, .L86+8
	str	r2, [r3, #16]
	ldr	r3, .L86+12
	str	r2, [r3, #16]
	ldr	r3, .L86+16
	str	r2, [r3, #16]
	ldr	r3, .L86+20
	str	r2, [r3, #16]
	ldr	r3, .L86+24
	str	r2, [r3, #16]
	ldr	r3, .L86+28
	str	r2, [r3, #32]
	ldr	r2, .L86+32
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
	beq	.L85
	cmp	r0, #0
	ldreq	r3, .L86+36
	pop	{r4, r5, r6, lr}
	streq	r1, [r3, #16]
	bx	lr
.L85:
	ldr	r3, .L86+40
	pop	{r4, r5, r6, lr}
	str	r0, [r3, #16]
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r3, .L93
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
	ldr	r3, .L93+4
	ldr	r0, [r3]
	ldr	r3, .L93+8
	str	r2, [r3, #16]
	ldr	r3, .L93+12
	str	r2, [r3, #16]
	ldr	r3, .L93+16
	str	r2, [r3, #16]
	ldr	r3, .L93+20
	str	r2, [r3, #16]
	ldr	r3, .L93+24
	str	r2, [r3, #16]
	ldr	r3, .L93+28
	str	r2, [r3, #32]
	ldr	r2, .L93+32
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
	beq	.L92
	cmp	r0, #0
	ldreq	r3, .L93+36
	pop	{r4, r5, r6, r7, r8, lr}
	streq	r1, [r3, #16]
	bx	lr
.L92:
	ldr	r3, .L93+40
	pop	{r4, r5, r6, r7, r8, lr}
	str	r0, [r3, #16]
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r1, .L99
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L99+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L96
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L96:
	ldr	r2, [r1, #12]
	adds	r3, r3, r2
	streq	r3, [r1, #16]
	bx	lr
.L100:
	.align	2
.L99:
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
	ldr	r3, .L110
	ldr	r2, .L110+4
	ldr	r1, .L110+8
	ldm	r2, {r0, ip}
	ldr	lr, [r2, #12]
	ldr	r5, [r3]
	ldr	r2, [r3, #12]
	ldr	r4, [r3, #4]
	ldr	r3, .L110+12
	ldr	r1, [r1]
	add	lr, lr, r0
	add	ip, ip, #10
	add	r5, r5, r2
	add	r4, r4, #20
	add	r0, r3, #280
.L104:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L106
	cmp	r1, #1
	streq	r5, [r3]
	streq	r4, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L106
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r6, [r3, #24]
.L106:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L104
	pop	{r4, r5, r6, lr}
	bx	lr
.L111:
	.align	2
.L110:
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
	ldr	r4, .L121
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L121+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L113
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L119
.L113:
	ldr	r3, .L121+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L117
	ldr	r3, .L121+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L120
.L117:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L119:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L113
.L120:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L122:
	.align	2
.L121:
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
	ldr	r4, .L131
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L131+4
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	add	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L124
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L124:
	ldr	r3, .L131+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L128
	ldr	r3, .L131+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L130
.L128:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L130:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L132:
	.align	2
.L131:
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
	ldr	r4, .L167
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	ldr	r6, .L167+4
	sub	r3, r3, r2
	sub	sp, sp, #20
	ldr	r2, .L167+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L161
.L136:
	cmp	r5, #0
	beq	.L162
.L135:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L162:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L167+12
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldm	r6, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r7, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r7, .L167+16
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L135
	mov	r2, r5
	ldr	r1, .L167+20
	ldr	r3, .L167+24
	str	r5, [r4, #20]
	str	r5, [r6, #16]
	str	r5, [r1, #16]
	str	r5, [r1, #36]
	str	r5, [r1, #56]
	add	r1, r3, #280
.L147:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L147
	ldr	r3, .L167+28
	ldr	r1, .L167+32
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r0, .L167+36
	add	r3, r3, #1
	cmp	r1, #0
	str	r3, [r0]
	bne	.L148
	ldr	r3, .L167+40
	str	r1, [r3, #16]
	b	.L135
.L161:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r5, .L167+44
	ldr	lr, [r4, #4]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldm	r5, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r7, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r7, .L167+16
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L163
	mov	r1, #0
	ldr	r0, .L167+20
	ldr	r3, .L167+24
	mov	r2, r1
	str	r1, [r4, #20]
	str	r1, [r5, #16]
	str	r1, [r0, #16]
	str	r1, [r0, #36]
	str	r1, [r0, #56]
	add	r1, r3, #280
.L138:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L138
	ldr	r3, .L167+28
	ldr	r1, .L167+32
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r0, .L167+36
	add	r3, r3, #1
	cmp	r1, #0
	str	r3, [r0]
	bne	.L139
	ldr	r3, .L167+40
	ldr	r5, [r6]
	str	r1, [r3, #16]
	b	.L136
.L163:
	ldr	r5, [r6]
	b	.L136
.L148:
	cmp	r1, #1
	ldreq	r3, .L167+48
	streq	r2, [r3, #16]
	beq	.L135
.L164:
	cmp	r1, #2
	ldreq	r3, .L167+52
	streq	r2, [r3, #16]
	beq	.L135
	cmp	r1, #3
	ldreq	r3, .L167+56
	streq	r2, [r3, #16]
	b	.L135
.L139:
	cmp	r1, #1
	ldreq	r3, .L167+48
	ldreq	r5, [r6]
	streq	r2, [r3, #16]
	beq	.L136
.L165:
	cmp	r1, #2
	ldreq	r3, .L167+52
	ldreq	r5, [r6]
	streq	r2, [r3, #16]
	beq	.L136
.L166:
	cmp	r1, #3
	ldreq	r3, .L167+56
	ldr	r5, [r6]
	streq	r2, [r3, #16]
	b	.L136
.L168:
	.align	2
.L167:
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
	ldr	r3, .L230
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, lr}
	bne	.L170
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L230+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L170:
	ldr	r2, .L230+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	bne	.L171
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, .L230+4
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #4]
	lsl	r3, r3, #3
	strh	r1, [r0, #90]	@ movhi
	strh	ip, [r0, #88]	@ movhi
	strh	r3, [r0, #92]	@ movhi
.L171:
	ldr	r3, .L230+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	bne	.L172
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L230+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #50]	@ movhi
	strh	ip, [r0, #48]	@ movhi
	strh	r2, [r0, #52]	@ movhi
.L172:
	ldr	r1, .L230+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	beq	.L173
	mov	r0, #152
	ldr	r2, [r1]
	ldr	r3, .L230+4
	ldr	r1, [r1, #4]
	orr	r2, r2, #16384
	strh	r2, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
.L173:
	ldr	r3, .L230+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L174
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L230+4
	orr	r2, r2, #16384
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #68]	@ movhi
.L174:
	ldr	r3, .L230+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L175
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L230+4
	orr	r2, r2, #16384
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	strh	r1, [r3, #76]	@ movhi
.L175:
	ldr	r3, .L230+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L176
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L230+4
	orr	r2, r2, #16384
	strh	r2, [r3, #130]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	strh	r1, [r3, #132]	@ movhi
.L176:
	ldr	r3, .L230+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L177
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L230+4
	orr	r2, r2, #16384
	strh	r2, [r3, #138]	@ movhi
	strh	r0, [r3, #136]	@ movhi
	strh	r1, [r3, #140]	@ movhi
.L177:
	mov	r4, #148
	ldr	r3, .L230+36
	ldr	r1, .L230+4
	ldr	lr, .L230+40
	add	r0, r3, #60
.L179:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #20
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	cmp	r3, r0
	bne	.L179
	mov	lr, #154
	ldr	r3, .L230+44
	ldr	r1, .L230+4
	add	r0, r3, #280
.L181:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #28
	strhne	lr, [r1, #116]	@ movhi
	strhne	ip, [r1, #112]	@ movhi
	strhne	r2, [r1, #114]	@ movhi
	cmp	r3, r0
	bne	.L181
	ldr	r2, .L230+48
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L182
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #144
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L230+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L182:
	ldr	r2, .L230+52
	ldr	r3, [r2, #20]
	cmp	r3, #0
	beq	.L183
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #156
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L230+4
	strh	r3, [r2, #106]	@ movhi
	strh	r0, [r2, #104]	@ movhi
	strh	r1, [r2, #108]	@ movhi
.L183:
	ldr	r2, .L230+56
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #16
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L230+4
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L184:
	ldr	r2, .L230+60
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L185
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #20
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L230+4
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L185:
	ldr	r2, .L230+64
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L186
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #24
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L230+4
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L186:
	ldr	r2, .L230+68
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #28
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L230+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L187:
	ldr	r3, .L230+72
	mov	lr, pc
	bx	r3
	ldr	r4, .L230+76
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L230+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L230+80
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L230+84
	ldrh	r3, [r3]
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L231:
	.align	2
.L230:
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
	ldr	r2, .L238
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L238+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L238+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L238+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L238+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L238+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L238+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L238+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L238+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L239:
	.align	2
.L238:
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
	ldr	r3, .L244
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r0, .L244+4
	ldr	r3, .L244+8
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	r0, .L244+12
	ldr	lr, .L244+16
	ldr	ip, .L244+20
	ldr	r3, .L244+24
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [ip, #20]
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L241:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L241
	pop	{r4, lr}
	b	drawGame
.L245:
	.align	2
.L244:
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
	ldr	r5, .L318
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r4, .L318+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L318+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L247
.L249:
	ldr	r0, [r4]
.L248:
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
	beq	.L250
.L252:
	ldr	r0, [r4]
.L251:
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
	beq	.L316
.L262:
	ldr	r5, .L318+12
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
	beq	.L317
.L246:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L247:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L249
	ldr	ip, .L318+16
	ldr	r1, .L318+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L249
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L318+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L248
.L317:
	ldr	r3, .L318+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L246
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L246
	ldr	r3, .L318+20
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r2, .L318+28
	streq	r3, [r2]
	b	.L246
.L275:
	ldr	r3, .L318+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L277
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L277
	ldr	r2, .L318+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L277
	mov	r2, #190
	mov	r1, #0
	mov	ip, #5
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L318+32
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L276
.L272:
	ldr	r3, .L318+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L274
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L274
	ldr	r2, .L318+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L274
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L318+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L273
.L269:
	ldr	r3, .L318+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L271
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L271
	ldr	r2, .L318+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L271
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L318+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L270
.L266:
	ldr	r3, .L318+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L268
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L268
	ldr	r2, .L318+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L268
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L318+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L267
.L263:
	ldr	r2, .L318+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L265
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L265
	ldr	r1, .L318+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L265
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L318+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L264
.L316:
	ldr	r3, .L318+16
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L262
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L262
	ldr	r3, .L318+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r3, .L318+28
	streq	r0, [r3]
	b	.L262
.L259:
	ldr	r3, .L318+16
	ldr	r2, [r3]
	cmp	r2, #4
	bne	.L261
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L261
	ldr	r2, .L318+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L261
	mov	r1, #190
	mov	ip, #5
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L318+32
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L260
.L256:
	ldr	r3, .L318+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L258
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L258
	ldr	r2, .L318+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L258
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L318+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L257
.L253:
	ldr	r3, .L318+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L255
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L255
	ldr	r2, .L318+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L255
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L318+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L254
.L250:
	ldr	r3, .L318+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L252
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L252
	ldr	r2, .L318+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L252
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L318+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L251
.L319:
	.align	2
.L318:
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
	ldr	r2, .L340
	ldrh	r3, [r2]
	push	{r4, r5, r6, lr}
	ldr	r0, .L340+4
	ldr	r4, .L340+8
	add	r3, r3, #1
	ldr	r1, .L340+12
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	r5, r4
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	add	r6, r4, #280
.L322:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L321:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L322
	ldr	r5, .L340+16
	ldr	r3, [r5, #24]
	cmp	r3, #2000
	bgt	.L339
.L323:
	ldr	r3, [r5, #24]
	add	r3, r3, #1
	str	r3, [r5, #24]
	bl	updateLives
	mov	ip, #0
	mov	r5, ip
	ldr	lr, .L340+20
	ldr	r1, [lr]
	ldr	r0, [lr, #16]
.L325:
	ldr	r3, [r4]
	ldr	r2, [r4, #20]
	add	r3, r3, r2
	cmp	r1, r3
	bne	.L324
	cmp	r0, #0
	movne	ip, #1
	movne	r0, #0
	strne	r5, [r4, #24]
.L324:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L325
	cmp	ip, #0
	strne	r0, [lr, #16]
	pop	{r4, r5, r6, lr}
	b	drawGame
.L339:
	mov	r3, #1
	str	r3, [r5, #20]
	bl	updateTreasure
	b	.L323
.L341:
	.align	2
.L340:
	.word	hOff
	.word	vOff
	.word	bullets
	.word	hideSprites
	.word	treasureP1
	.word	alien
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
	ldr	r2, .L350
	ldrh	r3, [r2]
	ldr	r0, .L350+4
	push	{r4, lr}
	add	r3, r3, #1
	ldr	r1, .L350+8
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L350+12
	add	r4, r0, #280
.L344:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L343:
	add	r0, r0, #28
	cmp	r0, r4
	bne	.L344
	bl	updateLives
	pop	{r4, lr}
	b	drawGame
.L351:
	.align	2
.L350:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
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
	ldr	r2, .L360
	ldrh	r3, [r2]
	ldr	r0, .L360+4
	push	{r4, lr}
	add	r3, r3, #1
	ldr	r1, .L360+8
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L360+12
	add	r4, r0, #280
.L354:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L353:
	add	r0, r0, #28
	cmp	r0, r4
	bne	.L354
	bl	updateLives
	pop	{r4, lr}
	b	drawGame
.L361:
	.align	2
.L360:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
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
	@ link register save eliminated.
	b	updatePlanet3
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
