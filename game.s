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
	ldr	r3, .L80
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	mov	r0, #80
	mov	r1, #1
	mov	r2, #32
	ldr	r3, .L80+4
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
	ldr	r3, .L80+8
	mov	r4, #203
	mov	lr, #120
	mov	r0, #1
	mov	r2, r3
	ldr	ip, .L80+12
	str	r4, [ip, #32]
	str	lr, [ip, #36]
	str	r1, [ip, #40]
	add	r1, r3, #280
.L71:
	str	r0, [r2, #12]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L71
	mov	lr, #0
	ldr	r2, .L80+16
	ldr	r2, [r2]
	ldr	ip, .L80+20
	cmp	r2, #1
	str	lr, [ip]
	beq	.L79
	cmp	r2, #0
	ldreq	r2, .L80+24
	streq	r0, [r2, #16]
.L73:
	mov	ip, #1
	mov	r0, #0
	ldr	lr, .L80+28
	mov	r2, ip
	str	ip, [lr, #16]
	ldr	ip, .L80+32
	ldr	lr, .L80+36
	str	r0, [ip, #16]
	ldr	ip, .L80+40
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L80+44
	ldr	ip, .L80+48
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L74:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L74
	pop	{r4, lr}
	bx	lr
.L79:
	ldr	r0, .L80+52
	str	r2, [r0, #16]
	b	.L73
.L81:
	.align	2
.L80:
	.word	hideSprites
	.word	blocks
	.word	bullets
	.word	treasure
	.word	characterChoice
	.word	curLocation
	.word	fry
	.word	alien
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	leela
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
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	ldr	r2, .L90+4
	mov	r0, #8
	mov	r3, r2
	mov	ip, #0
	mov	lr, #1
	ldr	r6, .L90+8
	ldr	r1, [r6, #12]
	ldr	r5, [r6]
	ldr	r4, [r6, #4]
	add	r5, r5, r1
	add	r4, r4, #20
	add	r1, r2, #280
.L83:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #24]
	str	lr, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L83
	mov	r4, #64
	mov	r9, #170
	mov	r8, #90
	mov	r7, #2
	mov	r5, #4
	mov	r3, #1
	ldr	r0, .L90+12
	str	lr, [r0, #16]
	str	lr, [r0, #20]
	str	lr, [r0, #24]
	str	lr, [r0, #36]
	str	r4, [r0, #12]
	ldr	lr, .L90+16
	str	r4, [r0, #8]
	str	r9, [r0]
	str	ip, [r0, #32]
	str	r8, [r0, #4]
	str	r7, [r0, #28]
	str	r5, [r0, #40]
	ldr	r0, .L90+20
	str	ip, [lr, #16]
	str	ip, [r0, #16]
	ldr	r4, .L90+24
	ldr	lr, .L90+28
	ldr	r0, .L90+32
	str	ip, [r4, #16]
	str	ip, [lr, #16]
	str	ip, [r0, #16]
.L84:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L84
	ldr	r2, .L90+36
	ldr	r2, [r2]
	ldr	r1, .L90+40
	cmp	r2, #1
	str	r3, [r1]
	streq	r2, [r6, #16]
	beq	.L82
	cmp	r2, #0
	ldreq	r2, .L90+44
	streq	r3, [r2, #16]
.L82:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	r3, .L100
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L100+4
	mov	r0, #8
	mov	r3, r2
	mov	r4, #1
	ldr	ip, .L100+8
	str	r1, [ip, #16]
	ldr	ip, .L100+12
	str	r1, [ip, #16]
	ldr	ip, .L100+16
	str	r1, [ip, #16]
	ldr	ip, .L100+20
	ldr	r6, .L100+24
	str	r1, [ip, #16]
	ldr	ip, .L100+28
	ldr	lr, [r6]
	str	r1, [ip, #16]
	ldr	r7, [r6, #12]
	ldr	ip, [r6, #4]
	mov	r5, r1
	add	lr, lr, r7
	add	ip, ip, #20
	add	r1, r2, #280
.L93:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L93
	mov	r3, #1
	ldr	r0, .L100+32
	str	r4, [r0, #16]
.L94:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L94
	mov	r0, #2
	ldr	r2, .L100+36
	ldr	r2, [r2]
	ldr	r1, .L100+40
	cmp	r2, #1
	str	r0, [r1]
	streq	r2, [r6, #16]
	beq	.L92
	cmp	r2, #0
	ldreq	r2, .L100+44
	streq	r3, [r2, #16]
.L92:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L101:
	.align	2
.L100:
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
	ldr	r3, .L110
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L110+4
	mov	r0, #8
	mov	r3, r2
	mov	r4, #1
	ldr	ip, .L110+8
	str	r1, [ip, #16]
	ldr	ip, .L110+12
	str	r1, [ip, #16]
	ldr	ip, .L110+16
	str	r1, [ip, #16]
	ldr	ip, .L110+20
	ldr	r6, .L110+24
	str	r1, [ip, #16]
	ldr	ip, .L110+28
	ldr	lr, [r6]
	str	r1, [ip, #16]
	ldr	r7, [r6, #12]
	ldr	ip, [r6, #4]
	mov	r5, r1
	add	lr, lr, r7
	add	ip, ip, #20
	add	r1, r2, #280
.L103:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L103
	mov	r3, #1
	ldr	r0, .L110+32
	str	r4, [r0, #16]
.L104:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L104
	mov	r0, #3
	ldr	r2, .L110+36
	ldr	r2, [r2]
	ldr	r1, .L110+40
	cmp	r2, #1
	str	r0, [r1]
	streq	r2, [r6, #16]
	beq	.L102
	cmp	r2, #0
	ldreq	r2, .L110+44
	streq	r3, [r2, #16]
.L102:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L111:
	.align	2
.L110:
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
	ldr	r3, .L116
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r0, .L116+4
	ldr	r3, .L116+8
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	lr, .L116+12
	ldr	ip, .L116+16
	ldr	r0, .L116+20
	ldr	r3, .L116+24
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	r0, .L116+28
	ldr	lr, .L116+32
	ldr	ip, .L116+36
	ldr	r3, .L116+40
	mov	r1, r2
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r0, #40]
	str	r2, [r0, #64]
	add	r2, r3, #280
.L113:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L113
	pop	{r4, lr}
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r1, .L122
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L122+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L119
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L119:
	cmp	r3, #0
	streq	r3, [r1, #16]
	bx	lr
.L123:
	.align	2
.L122:
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
	ldr	r3, .L133
	ldr	r2, .L133+4
	ldr	r1, .L133+8
	ldm	r2, {r0, ip}
	ldr	lr, [r2, #12]
	ldr	r5, [r3]
	ldr	r2, [r3, #12]
	ldr	r4, [r3, #52]
	ldr	r3, .L133+12
	ldr	r1, [r1]
	add	lr, lr, r0
	add	ip, ip, #20
	add	r5, r5, r2
	add	r4, r4, #20
	add	r0, r3, #280
.L127:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L129
	cmp	r1, #1
	streq	r5, [r3]
	streq	r4, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L129
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r6, [r3, #24]
.L129:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L127
	pop	{r4, r5, r6, lr}
	bx	lr
.L134:
	.align	2
.L133:
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
	ldr	r4, .L152
	ldr	r2, .L152+4
	ldr	r3, [r4, #4]
	ldr	lr, [r4, #24]
	ldr	r2, [r2]
	add	r1, r3, lr
	cmp	r2, r1, asr #8
	movge	r2, #0
	asrge	r1, r3, #8
	ldr	r3, .L152+8
	ldrh	r0, [r3]
	movge	lr, r2
	strge	r2, [r4, #48]
	asrlt	r1, r1, #8
	tst	r0, #64
	beq	.L138
	ldr	r3, .L152+12
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L149
.L138:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L152+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	add	r2, lr, #50
	add	r1, r1, #90
	cmp	ip, r3, ror #1
	str	r2, [r4, #24]
	str	r1, [r4, #4]
	bcc	.L139
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L150
.L139:
	tst	r0, #16
	beq	.L143
	ldr	r3, .L152+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L151
.L143:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L149:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	lr, lr, #1488
	streq	r3, [r4, #48]
	subeq	lr, lr, #12
	b	.L138
.L150:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L139
.L151:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L153:
	.align	2
.L152:
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
	ldr	r3, .L169
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L169+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L155
	ldr	r2, .L169+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L167
.L155:
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
	ldr	ip, .L169+12
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
	bcc	.L158
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L158:
	tst	r0, #16
	beq	.L162
	ldr	r3, .L169+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L168
.L162:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L167:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L155
.L168:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L170:
	.align	2
.L169:
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
	ldr	r1, .L177
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
	beq	.L176
.L173:
	pop	{r4, lr}
	bx	lr
.L176:
	ldr	lr, [r1]
	cmp	r3, lr
	bge	.L173
	ldr	r0, [r0, #12]
	add	r3, r3, r0
	cmp	lr, r3
	sublt	r2, r2, ip
	strlt	r2, [r1, #52]
	pop	{r4, lr}
	bx	lr
.L178:
	.align	2
.L177:
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
	ldr	r6, .L197
	sub	r3, r3, r2
	str	r3, [r0]
	sub	sp, sp, #16
	ldr	r3, .L197+4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L195
.L180:
	cmp	r5, #0
	beq	.L196
.L179:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L196:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L197+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldm	r6, {r0, r1}
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L197+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L191
	mov	r0, #1
	mov	r1, r5
	ldr	r2, .L197+16
	ldr	r3, .L197+20
	str	r5, [r6, #16]
	str	r5, [r4, #20]
	str	r0, [r4, #28]
	str	r5, [r2, #16]
	str	r5, [r2, #40]
	str	r5, [r2, #64]
	add	r2, r3, #280
.L190:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L190
.L191:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L179
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L179
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L179
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L197+24
	streq	r3, [r2]
	b	.L179
.L195:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L197+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r0, [r7]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L197+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L183
	ldr	r2, [r4, #28]
	cmp	r2, #0
	bne	.L183
	ldr	r0, .L197+16
	ldr	r3, .L197+20
	str	r2, [r4, #20]
	str	r5, [r4, #28]
	mov	r1, r2
	str	r2, [r7, #16]
	str	r2, [r0, #16]
	str	r2, [r0, #40]
	str	r2, [r0, #64]
	add	r2, r3, #280
.L184:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L184
.L183:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L180
	ldr	r3, [r4, #92]
	cmp	r3, #1
	bne	.L180
	ldr	r3, [r4, #124]
	cmp	r3, #1
	bne	.L180
	ldr	r3, [r4, #156]
	cmp	r3, #1
	ldreq	r2, .L197+24
	streq	r3, [r2]
	b	.L180
.L198:
	.align	2
.L197:
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
	ldr	r3, .L248
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L245
	cmp	r2, #0
	moveq	r2, #512
	ldreq	r1, .L248+4
	ldrne	r1, .L248+4
	strheq	r2, [r1]	@ movhi
.L201:
	ldr	r2, .L248+8
	ldr	r0, [r3, #32]
	ldr	ip, [r2, #16]
	add	r0, r0, #1
	cmp	ip, #1
	str	r0, [r3, #32]
	beq	.L246
	cmp	ip, #0
	moveq	r3, #512
	strheq	r3, [r1, #88]	@ movhi
.L203:
	ldr	r3, .L248+12
	ldr	r0, [r2, #32]
	ldr	ip, [r3, #16]
	add	r0, r0, #1
	cmp	ip, #1
	str	r0, [r2, #32]
	beq	.L247
	cmp	ip, #0
	moveq	r2, #512
	strheq	r2, [r1, #48]	@ movhi
.L205:
	ldr	r0, .L248+16
	ldr	r2, [r3, #32]
	ldr	lr, [r0, #16]
	ldr	ip, .L248+20
	add	r2, r2, #1
	cmp	lr, #0
	str	r2, [r3, #32]
	ldr	r3, [ip, #16]
	beq	.L206
	mov	lr, #152
	ldr	r2, [r0]
	ldr	r0, [r0, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [r1, #58]	@ movhi
	strh	r0, [r1, #56]	@ movhi
	strh	lr, [r1, #60]	@ movhi
	bne	.L207
.L208:
	ldr	r3, .L248+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r1, #72]	@ movhi
	beq	.L233
	mov	r0, #152
	ldm	r3, {r2, ip}
	orr	r3, r2, #16384
	strh	r3, [r1, #74]	@ movhi
	strh	ip, [r1, #72]	@ movhi
	strh	r0, [r1, #76]	@ movhi
.L233:
	ldr	r3, .L248+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r1, #128]	@ movhi
	beq	.L232
	mov	r0, #152
	ldm	r3, {r2, ip}
	orr	r3, r2, #16384
	strh	r3, [r1, #130]	@ movhi
	strh	ip, [r1, #128]	@ movhi
	strh	r0, [r1, #132]	@ movhi
.L232:
	ldr	r3, .L248+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r1, #136]	@ movhi
	beq	.L231
	mov	r0, #152
	ldm	r3, {r2, ip}
	orr	r3, r2, #16384
	strh	r3, [r1, #138]	@ movhi
	strh	ip, [r1, #136]	@ movhi
	strh	r0, [r1, #140]	@ movhi
.L231:
	mov	r5, #512
	mov	r4, #148
	ldr	r3, .L248+36
	ldr	lr, .L248+40
	add	r0, r3, #72
.L214:
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
	bne	.L214
	mov	r5, #512
	mov	r4, #154
	ldr	r3, .L248+44
	ldr	r2, .L248+48
	add	ip, r3, #280
.L217:
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
	bne	.L217
	ldr	r2, .L248+52
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #8]	@ movhi
	beq	.L230
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #144
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #10]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r0, [r1, #12]	@ movhi
.L230:
	mov	r6, #512
	mov	r5, #156
	ldr	r3, .L248+4
	ldr	r2, .L248+56
	ldr	r4, .L248+40
	add	ip, r3, #40
.L221:
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
	bne	.L221
	ldr	r2, .L248+60
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #16]	@ movhi
	beq	.L229
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #16
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	strh	r0, [r1, #20]	@ movhi
.L229:
	ldr	r2, .L248+64
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #24]	@ movhi
	beq	.L228
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #20
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #26]	@ movhi
	strh	r2, [r1, #24]	@ movhi
	strh	r0, [r1, #28]	@ movhi
.L228:
	ldr	r2, .L248+68
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #32]	@ movhi
	beq	.L227
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #24
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #34]	@ movhi
	strh	r2, [r1, #32]	@ movhi
	strh	r0, [r1, #36]	@ movhi
.L227:
	ldr	r2, .L248+72
	ldr	r3, [r2, #16]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r1, #40]	@ movhi
	beq	.L226
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r0, #28
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	strh	r3, [r1, #42]	@ movhi
	strh	r2, [r1, #40]	@ movhi
	strh	r0, [r1, #44]	@ movhi
.L226:
	ldr	r3, .L248+76
	mov	lr, pc
	bx	r3
	ldr	r4, .L248+80
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L248+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L248+84
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L248+88
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L206:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [r1, #56]	@ movhi
	beq	.L234
	mov	r2, #152
	ldr	r3, [ip]
	orr	r3, r3, #16384
	strh	r3, [r1, #66]	@ movhi
	strh	r2, [r1, #68]	@ movhi
.L234:
	mov	r3, #512
	strh	r3, [r1, #64]	@ movhi
	b	.L208
.L207:
	ldr	r3, [ip]
	ldr	r2, [ip, #4]
	orr	r3, r3, #16384
	strh	lr, [r1, #68]	@ movhi
	strh	r3, [r1, #66]	@ movhi
	strh	r2, [r1, #64]	@ movhi
	b	.L208
.L247:
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
	b	.L205
.L246:
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
	b	.L203
.L245:
	ldr	r0, [r3]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r1, .L248+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r0, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	b	.L201
.L249:
	.align	2
.L248:
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
	ldr	r9, .L256+40
	ldr	r8, .L256+44
	ldr	r6, .L256+48
	ldr	r4, .L256+52
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
	ldr	ip, [r6, #12]
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	ldr	r3, .L256+56
	add	r0, r0, ip
	add	r1, r1, #20
	add	ip, r3, #280
.L252:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r7, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
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
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r1, [r4, #28]
	str	r2, [r4, #40]
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
	ldr	r2, .L266
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L266+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L266+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L266+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L266+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L266+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L266+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L266+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L266+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L266+12
	ldr	r2, [r3, #60]
	cmp	r2, #1
	beq	.L265
.L258:
	pop	{r4, lr}
	bx	lr
.L265:
	ldr	r2, [r3, #92]
	cmp	r2, #1
	bne	.L258
	ldr	r2, [r3, #124]
	cmp	r2, #1
	bne	.L258
	ldr	r3, [r3, #156]
	cmp	r3, #1
	ldreq	r2, .L266+16
	streq	r3, [r2]
	b	.L258
.L267:
	.align	2
.L266:
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
	ldr	r3, .L272
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	ip, .L272+4
	ldr	r3, .L272+8
	ldr	r0, .L272+12
	str	r2, [ip, #16]
	str	r2, [r3, #16]
	ldr	ip, .L272+16
	ldr	lr, .L272+20
	ldr	r3, .L272+24
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
.L269:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L269
	pop	{r4, lr}
	b	drawGame
.L273:
	.align	2
.L272:
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
	ldr	r3, .L278
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	lr, .L278+4
	ldr	r0, .L278+8
	ldr	ip, .L278+12
	ldr	r3, .L278+16
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	lr, .L278+20
	ldr	r0, .L278+24
	ldr	ip, .L278+28
	ldr	r3, .L278+32
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	lr, .L278+36
	ldr	r0, .L278+40
	ldr	ip, .L278+44
	ldr	r3, .L278+48
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r0, #16]
	ldr	ip, .L278+52
	ldr	r0, .L278+56
	str	r2, [r3, #16]
	ldr	lr, .L278+60
	ldr	r3, .L278+64
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
.L275:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L275
	pop	{r4, lr}
	b	drawGame
.L279:
	.align	2
.L278:
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
	ldr	r5, .L340
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r4, .L340+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L340+8
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
	beq	.L338
.L293:
	ldr	r5, .L340+12
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
	beq	.L339
.L280:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L281:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L283
	ldr	ip, .L340+16
	ldr	r1, .L340+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L283
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L340+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L282
.L339:
	ldr	r3, .L340+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L280
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L280
	ldr	r3, .L340+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L340+28
	ldreq	r2, .L340+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L280
.L303:
	ldr	r3, .L340+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L305
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L305
	ldr	r2, .L340+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L305
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L340+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L304
.L300:
	ldr	r3, .L340+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L302
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L302
	ldr	r2, .L340+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L302
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L340+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L301
.L297:
	ldr	r3, .L340+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L299
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L299
	ldr	r2, .L340+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L299
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L340+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L298
.L294:
	ldr	r2, .L340+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L296
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L296
	ldr	r1, .L340+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L296
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L340+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L295
.L338:
	ldr	r3, .L340+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L293
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L293
	ldr	r3, .L340+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L340+28
	ldreq	r2, .L340+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L293
.L290:
	ldr	r3, .L340+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L292
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L292
	ldr	r2, .L340+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L292
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L340+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L291
.L287:
	ldr	r3, .L340+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L289
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L289
	ldr	r2, .L340+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L289
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L340+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L288
.L284:
	ldr	r3, .L340+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L286
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L286
	ldr	r2, .L340+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L286
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L340+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L285
.L341:
	.align	2
.L340:
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
	ldr	r2, .L355
	ldrh	r3, [r2]
	ldr	r0, .L355+4
	ldr	r4, .L355+8
	add	r3, r3, #1
	ldr	r1, .L355+12
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
.L344:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L343:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L344
	ldr	r5, .L355+16
	ldr	r3, [r5, #56]
	cmp	r3, #200
	bgt	.L354
.L345:
	ldr	r3, [r5, #56]
	add	r3, r3, #1
	str	r3, [r5, #56]
	bl	updateLives
	ldr	r0, .L355+20
	bl	updateBlocks
	ldr	r0, .L355+24
	bl	updateBlocks
	ldr	r0, .L355+28
	bl	updateBlocks
	mov	r8, #0
	ldr	r5, .L355+32
	ldr	r7, .L355+36
.L347:
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
	bne	.L347
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L354:
	mov	r3, #1
	add	r0, r5, #32
	str	r3, [r5, #52]
	bl	updateTreasure
	b	.L345
.L356:
	.align	2
.L355:
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
	ldr	r2, .L370
	ldrh	r3, [r2]
	ldr	r0, .L370+4
	ldr	r4, .L370+8
	add	r3, r3, #1
	ldr	r1, .L370+12
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
.L359:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L358:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L359
	ldr	r5, .L370+16
	bl	updateLives
	ldr	r3, [r5, #88]
	cmp	r3, #200
	bgt	.L369
.L360:
	mov	r8, #0
	ldr	r3, [r5, #88]
	add	r3, r3, #1
	str	r3, [r5, #88]
	ldr	r7, .L370+20
	ldr	r5, .L370+24
.L362:
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
	bne	.L362
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L369:
	mov	r3, #1
	add	r0, r5, #64
	str	r3, [r5, #84]
	bl	updateTreasure
	b	.L360
.L371:
	.align	2
.L370:
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
	ldr	r2, .L385
	ldrh	r3, [r2]
	ldr	r0, .L385+4
	ldr	r4, .L385+8
	add	r3, r3, #1
	ldr	r1, .L385+12
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
.L374:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L373:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L374
	ldr	r5, .L385+16
	bl	updateLives
	ldr	r3, [r5, #120]
	cmp	r3, #200
	bgt	.L384
.L375:
	mov	r8, #0
	ldr	r3, [r5, #120]
	add	r3, r3, #1
	str	r3, [r5, #120]
	ldr	r7, .L385+20
	ldr	r5, .L385+24
.L377:
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
	bne	.L377
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L384:
	mov	r3, #1
	add	r0, r5, #96
	str	r3, [r5, #116]
	bl	updateTreasure
	b	.L375
.L386:
	.align	2
.L385:
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
	ldr	r2, .L400
	ldrh	r3, [r2]
	ldr	r0, .L400+4
	ldr	r4, .L400+8
	add	r3, r3, #1
	ldr	r1, .L400+12
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
.L389:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	movne	r0, r5
	blne	updateBullets.part.0
.L388:
	add	r5, r5, #28
	cmp	r5, r6
	bne	.L389
	ldr	r5, .L400+16
	bl	updateLives
	ldr	r3, [r5, #152]
	cmp	r3, #200
	bgt	.L399
.L390:
	mov	r8, #0
	ldr	r3, [r5, #152]
	add	r3, r3, #1
	str	r3, [r5, #152]
	ldr	r7, .L400+20
	ldr	r5, .L400+24
.L392:
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
	bne	.L392
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L399:
	mov	r3, #1
	add	r0, r5, #128
	str	r3, [r5, #148]
	bl	updateTreasure
	b	.L390
.L401:
	.align	2
.L400:
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
