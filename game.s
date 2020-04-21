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
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTreasure.part.0, %function
updateTreasure.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L24
	ldr	r3, .L24+4
	sub	sp, sp, #16
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L22
.L7:
	cmp	r5, #0
	beq	.L23
.L6:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L23:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L24+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #52]
	ldr	r0, [r6]
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L24+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L18
	mov	r2, #1
	mov	r1, r5
	ldr	r0, .L24+16
	ldr	r3, .L24+20
	str	r2, [r4, #28]
	str	r5, [r4, #20]
	add	r2, r3, #1392
	str	r5, [r6, #16]
	str	r5, [r0, #16]
	str	r5, [r0, #56]
	add	r2, r2, #8
.L17:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L17
.L18:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	bne	.L6
	ldr	r3, [r4, #100]
	cmp	r3, #1
	bne	.L6
	ldr	r3, [r4, #136]
	cmp	r3, #1
	bne	.L6
	ldr	r3, [r4, #172]
	cmp	r3, #1
	ldreq	r2, .L24+24
	streq	r3, [r2]
	b	.L6
.L22:
	add	r8, r4, #12
	ldm	r8, {r8, ip}
	ldr	r7, .L24+28
	ldr	lr, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r0, [r7]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r8, .L24+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L10
	ldr	r0, [r4, #28]
	cmp	r0, #0
	bne	.L10
	mov	r1, r0
	ldr	ip, .L24+16
	ldr	r3, .L24+20
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	add	r2, r3, #1392
	str	r0, [r7, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L11:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L11
.L10:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L7
	ldr	r3, [r4, #100]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [r4, #136]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [r4, #172]
	cmp	r3, #1
	ldreq	r2, .L24+24
	streq	r3, [r2]
	b	.L7
.L25:
	.align	2
.L24:
	.word	characterChoice
	.word	hideSprites
	.word	fry
	.word	collision
	.word	coins
	.word	bullets
	.word	isWon
	.word	leela
	.size	updateTreasure.part.0, .-updateTreasure.part.0
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
	ldr	r3, .L28
	str	lr, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L32
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	ldr	r3, .L36
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
.L37:
	.align	2
.L36:
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
	ldr	r3, .L40
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
.L41:
	.align	2
.L40:
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
	ldr	r3, .L44
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
.L45:
	.align	2
.L44:
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
	ldr	r0, .L48
	str	r2, [r0]
	ldr	r0, .L48+4
	stmib	r0, {r1, r3}
	str	r2, [r0, #16]
	str	r1, [r0]
	str	r3, [r0, #12]
	ldr	r0, .L48+8
	str	r5, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L48+12
	str	r4, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L48+16
	str	lr, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L48+20
	pop	{r4, r5, lr}
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0]
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r1, .L54
	ldr	r3, .L54+4
	ldr	ip, [r1]
	ldr	r5, [r1, #12]
	ldr	r0, [r1, #52]
	add	r1, r3, #1392
	add	ip, ip, r5
	add	r0, r0, #20
	add	r1, r1, r2
.L51:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L51
	pop	{r4, r5, lr}
	bx	lr
.L55:
	.align	2
.L54:
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
	ldr	lr, .L60
	mov	r7, r2
	mov	r3, lr
	mov	r6, #200
	mov	r5, #100
	mov	r0, #0
	mov	ip, #32
	mov	r4, #500
.L57:
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
	bne	.L57
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	treasure
	.size	initTreasure, .-initTreasure
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r0, #32
	mov	lr, #208
	mov	r1, #1
	mov	r2, #0
	mov	ip, #10
	ldr	r3, .L64
	str	lr, [r3]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	ip, [r3, #4]
	str	r1, [r3, #20]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	enemy
	.size	initEnemy, .-initEnemy
	.align	2
	.global	initHelmet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHelmet, %function
initHelmet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L72
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r2, .L72+4
	beq	.L71
	cmp	r3, #0
	ldrne	r3, .L72+8
	bne	.L68
	ldr	r2, .L72+12
.L71:
	ldr	r1, [r2]
	ldr	r3, .L72+8
	ldmib	r2, {r0, r2}
	sub	r2, r0, r2
	stm	r3, {r1, r2}
.L68:
	mov	r2, #32
	mov	r0, #0
	mov	r1, #1
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L73:
	.align	2
.L72:
	.word	characterChoice
	.word	leela
	.word	helmet
	.word	fry
	.size	initHelmet, .-initHelmet
	.align	2
	.global	initCannonball
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCannonball, %function
initCannonball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L76
	ldr	r3, [r2, #12]
	add	r1, r3, #3
	cmp	r3, #0
	movlt	r3, r1
	mov	ip, #1
	mov	r0, #0
	ldr	r1, [r2]
	str	lr, [sp, #-4]!
	ldmib	r2, {r2, lr}
	add	lr, r2, lr
	ldr	r2, .L76+4
	add	r3, r1, r3, asr #2
	stm	r2, {r3, lr}
	str	ip, [r2, #24]
	str	r0, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L77:
	.align	2
.L76:
	.word	enemy
	.word	cannonall
	.size	initCannonball, .-initCannonball
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
	ldr	r3, .L79
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L80:
	.align	2
.L79:
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
	ldr	r3, .L82
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L83:
	.align	2
.L82:
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
	ldr	r3, .L85
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L86:
	.align	2
.L85:
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
	ldr	r3, .L88
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	r3, .L101
	ldr	r3, [r3]
	ldr	ip, .L101+4
	cmp	r3, r1
	stmib	ip, {r0, r2}
	str	r1, [ip, #20]
	str	r1, [ip, #24]
	str	lr, [ip]
	str	r2, [ip, #12]
	beq	.L99
	cmp	r3, #0
	bne	.L100
	mov	r5, #3
	mov	r4, #23040
	mov	lr, #4
	ldr	r2, .L101+8
	str	r5, [r2]
	str	r1, [r2, #20]
	str	r1, [r2, #24]
	str	r0, [r2, #12]
	str	r0, [r2, #8]
	str	r3, [r2, #28]
	str	r3, [r2, #36]
	str	r3, [r2, #32]
	str	r3, [r2, #48]
	str	r3, [r2, #56]
	str	r4, [r2, #4]
	str	lr, [r2, #40]
	ldr	r5, .L101+12
.L93:
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
	ldr	ip, .L101+16
	str	r1, [r5, #16]
	str	r1, [ip, #56]
	ldr	r5, .L101+20
	str	r1, [ip, #20]
	str	r1, [ip, #92]
	str	r1, [ip, #128]
	str	r1, [ip, #164]
	ldr	ip, .L101+24
	str	r1, [r5, #16]
	str	r1, [ip, #16]
	ldr	r5, .L101+28
	str	r1, [ip, #56]
	ldr	ip, .L101+32
	str	r7, [r5]
	stm	ip, {r7, fp}
	ldr	r7, .L101+36
	str	r1, [r2, #16]
	mov	r4, r1
	ldr	r3, .L101+40
	ldr	r1, .L101+44
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
.L94:
	str	r4, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L94
	mov	r2, #32
	mov	lr, #10
	mov	r1, #1
	mov	ip, #216
	mov	r0, #42
	mov	r5, #208
	ldr	r3, .L101+48
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	r2, .L101+52
	str	lr, [r3, #4]
	str	ip, [r2]
	str	r4, [r3, #16]
	str	r4, [r3, #32]
	str	r5, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #28]
	str	r1, [r2, #24]
	str	r4, [r2, #16]
	str	r0, [r2, #4]
	ldr	r5, .L101+56
	bl	initHelmet
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L101+60
	ldr	r1, .L101+64
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L101+68
	ldr	r1, .L101+72
	mov	lr, pc
	bx	r5
	ldr	r3, .L101+76
	ldr	r0, .L101+80
	ldr	r1, .L101+84
	ldr	r2, .L101+88
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L99:
	mov	r2, #0
	mov	r4, #3
	mov	lr, #23040
	mov	r1, #4
	ldr	r5, .L101+12
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
	ldr	r2, .L101+8
	b	.L93
.L100:
	ldr	r5, .L101+12
	ldr	r2, .L101+8
	b	.L93
.L102:
	.align	2
.L101:
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
	.word	enemy
	.word	cannonall
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
	ldr	r3, .L115
	mov	lr, pc
	bx	r3
	bl	initCoins
	ldr	r2, .L115+4
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	ip, #1
	ldr	r6, .L115+8
	ldr	r4, [r6]
	ldr	r7, [r6, #12]
	ldr	lr, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r4, r4, r7
	add	lr, lr, #20
.L104:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r4, lr}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L104
	mov	r0, #64
	mov	r3, #4
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #203
	mov	r7, #120
	ldr	lr, .L115+12
	ldr	r4, [lr]
	ldr	lr, .L115+16
	str	r3, [lr, #40]
	str	r0, [lr, #12]
	ldr	r3, .L115+20
	str	r0, [lr, #8]
	ldr	r0, .L115+24
	cmp	r4, #0
	str	fp, [lr]
	str	ip, [lr, #20]
	str	ip, [lr, #24]
	str	ip, [lr, #36]
	str	r5, [lr, #32]
	str	r10, [lr, #4]
	str	r9, [lr, #28]
	str	r8, [r3, #36]
	str	ip, [r3, #44]
	str	r7, [r3, #40]
	str	ip, [r0, #16]
	str	ip, [r0, #28]
	bne	.L105
	ldr	r3, .L115+28
	str	r4, [r3, #56]
.L106:
	mov	r0, #1
	ldr	r3, .L115+4
.L107:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L107
	mov	ip, #0
	ldr	r3, .L115+32
	cmp	r4, #1
	str	ip, [r3]
	streq	r4, [r6, #16]
	beq	.L109
	cmp	r4, #0
	ldreq	r3, .L115+28
	streq	r0, [r3, #16]
.L109:
	mov	ip, #1
	mov	r0, #0
	str	ip, [lr, #16]
	mov	r3, ip
	ldr	ip, .L115+36
	ldr	lr, .L115+40
	str	r0, [ip, #16]
	ldr	ip, .L115+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L115+48
	ldr	ip, .L115+52
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L110:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L110
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L105:
	cmp	r4, #1
	streq	r5, [r6, #56]
	b	.L106
.L116:
	.align	2
.L115:
	.word	hideSprites
	.word	bullets
	.word	leela
	.word	characterChoice
	.word	alien
	.word	treasure
	.word	enemy
	.word	fry
	.word	curLocation
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
	ldr	r3, .L129
	ldr	r4, .L129+4
	mov	lr, pc
	bx	r3
	mov	r2, #8
	mov	r6, #0
	mov	r3, r4
	mov	r7, #1
	ldr	r8, .L129+8
	ldr	r0, [r8]
	ldr	ip, [r8, #12]
	ldr	r1, [r8, #52]
	add	r5, r4, #1392
	add	r5, r5, r2
	add	r0, r0, ip
	add	r1, r1, #20
.L118:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r7, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L118
	mov	r3, #64
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	mov	ip, #170
	ldr	r9, .L129+12
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
	ldr	r1, .L129+16
	ldr	r3, .L129+20
	str	r6, [r1, #16]
	str	r6, [r3, #16]
	ldr	r0, .L129+24
	ldr	r3, .L129+28
	ldr	r1, .L129+32
	str	r6, [r3, #16]
	str	r7, [r9, #16]
	str	r6, [r0, #16]
	str	r6, [r1, #16]
	ldr	r3, .L129+4
.L119:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L119
	ldr	r3, .L129+36
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L120
	ldr	r3, .L129+40
	str	r2, [r3, #56]
.L121:
	mov	r3, #1
.L122:
	str	r3, [r4, #12]
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L122
	ldr	r0, .L129+44
	ldr	r1, [r0, #76]
	ldr	ip, .L129+48
	cmp	r2, #1
	add	r1, r1, #25
	str	r1, [r0, #76]
	str	r3, [ip]
	streq	r2, [r8, #16]
	beq	.L124
	cmp	r2, #0
	ldreq	r2, .L129+40
	streq	r3, [r2, #16]
.L124:
	mov	r2, #1
	ldr	r3, .L129+52
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L120:
	cmp	r2, #1
	moveq	r3, #0
	streq	r3, [r8, #56]
	b	.L121
.L130:
	.align	2
.L129:
	.word	hideSprites
	.word	bullets
	.word	leela
	.word	alien
	.word	spaceship
	.word	p1
	.word	p2
	.word	p4
	.word	p3
	.word	characterChoice
	.word	fry
	.word	treasure
	.word	curLocation
	.word	enemy
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
	ldr	r3, .L141
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L141+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L141+8
	ldr	r9, .L141+12
	str	ip, [r8, #16]
	ldr	r3, .L141+16
	ldr	fp, .L141+20
	ldr	r10, .L141+24
	ldr	r8, .L141+28
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
.L132:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r5, r2
	bne	.L132
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L141+32
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
	ldr	r3, .L141+16
	str	r6, [r3, #16]
	ldr	r3, .L141+8
	str	r6, [r3, #16]
	ldr	r3, .L141+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L133:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L133
	ldr	r3, .L141+36
	ldr	r0, .L141+40
	ldr	r1, [r3]
	ldr	r3, [r0, #112]
	cmp	r1, #0
	add	r3, r3, #25
	bne	.L134
	mov	lr, #2
	ldr	ip, .L141+44
	str	r3, [r0, #112]
	ldr	r3, .L141+48
	str	lr, [ip]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
.L135:
	mov	r2, #1
	ldr	r3, .L141+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L134:
	cmp	r1, #1
	bne	.L136
	mov	ip, #0
	mov	r2, #2
	str	r3, [r0, #112]
	ldr	r3, .L141+44
	str	r1, [r9, #16]
	str	ip, [r9, #56]
	str	r2, [r3]
	b	.L135
.L136:
	mov	r1, #2
	ldr	r2, .L141+44
	str	r3, [r0, #112]
	str	r1, [r2]
	b	.L135
.L142:
	.align	2
.L141:
	.word	hideSprites
	.word	bullets
	.word	p3
	.word	leela
	.word	spaceship
	.word	p1
	.word	p2
	.word	p4
	.word	alien
	.word	characterChoice
	.word	treasure
	.word	curLocation
	.word	fry
	.word	enemy
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
	ldr	r3, .L153
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L153+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L153+8
	ldr	r9, .L153+12
	str	ip, [r8, #16]
	ldr	r3, .L153+16
	ldr	fp, .L153+20
	ldr	r10, .L153+24
	ldr	r8, .L153+28
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
.L144:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r5, r2
	bne	.L144
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L153+32
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
	ldr	r3, .L153+16
	str	r6, [r3, #16]
	ldr	r3, .L153+8
	str	r6, [r3, #16]
	ldr	r3, .L153+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L145:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L145
	ldr	r3, .L153+36
	ldr	r0, .L153+40
	ldr	r1, [r3]
	ldr	r3, [r0, #148]
	cmp	r1, #0
	add	r3, r3, #25
	bne	.L146
	mov	lr, #3
	ldr	ip, .L153+44
	str	r3, [r0, #148]
	ldr	r3, .L153+48
	str	lr, [ip]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
.L147:
	mov	r2, #1
	ldr	r3, .L153+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L146:
	cmp	r1, #1
	bne	.L148
	mov	ip, #0
	mov	r2, #3
	str	r3, [r0, #148]
	ldr	r3, .L153+44
	str	r1, [r9, #16]
	str	ip, [r9, #56]
	str	r2, [r3]
	b	.L147
.L148:
	mov	r1, #3
	ldr	r2, .L153+44
	str	r3, [r0, #148]
	str	r1, [r2]
	b	.L147
.L154:
	.align	2
.L153:
	.word	hideSprites
	.word	bullets
	.word	p3
	.word	leela
	.word	spaceship
	.word	p1
	.word	p2
	.word	p4
	.word	alien
	.word	characterChoice
	.word	treasure
	.word	curLocation
	.word	fry
	.word	enemy
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
	ldr	r3, .L159
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L159+4
	ldr	ip, .L159+8
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L159+12
	ldr	ip, .L159+16
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L159+20
	ldr	ip, .L159+24
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L159+28
	ldr	ip, .L159+32
	ldr	r4, .L159+36
	ldr	lr, .L159+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L156:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L156
	pop	{r4, lr}
	bx	lr
.L160:
	.align	2
.L159:
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
	ldr	r5, .L170
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L170+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L162
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L162:
	ldr	r4, .L170+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L170+12
	add	r6, r6, #8
	b	.L167
.L169:
	ldr	r0, [r5]
.L167:
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
	bne	.L169
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L171:
	.align	2
.L170:
	.word	alien
	.word	238609294
	.word	bullets
	.word	collision
	.size	updateAlien, .-updateAlien
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L186
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	beq	.L173
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	beq	.L185
.L175:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L186+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r2, #16]
	stm	r2, {r0, r1}
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L173:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	bne	.L175
	mov	r2, #1
.L185:
	str	r2, [r3, #28]
	b	.L175
.L187:
	.align	2
.L186:
	.word	enemy
	.word	cannonall
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	shootCannonball
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootCannonball, %function
shootCannonball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #1
	mov	lr, #0
	ldr	r3, .L190
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L190+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L191:
	.align	2
.L190:
	.word	enemy
	.word	cannonall
	.size	shootCannonball, .-shootCannonball
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
	ldr	r1, .L201
	ldr	r2, .L201+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L201+8
	ldr	r8, .L201+12
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
.L195:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L197
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L197
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L197:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L195
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L202:
	.align	2
.L201:
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
	ldr	r3, .L220
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L220+4
	tst	r0, #64
	ldr	r2, [r4, #24]
	beq	.L204
	ldr	r3, .L220+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L217
.L204:
	ldmib	r4, {r3, ip}
	add	r1, r3, ip
	add	r2, r2, #50
	sub	r1, r1, #1
	add	r1, r1, r2
	rsb	ip, ip, #159
	cmp	ip, r1, asr #8
	str	r2, [r4, #24]
	movle	r2, #0
	addgt	r3, r3, r2
	strle	r2, [r4, #24]
	strle	r2, [r4, #48]
	ldr	r2, [r4, #56]
	strgt	r3, [r4, #4]
	asr	r3, r3, #8
	cmp	r2, #5
	str	r3, [r4, #52]
	ble	.L207
	mov	r1, #0
	ldr	r3, [r4]
	ldr	r2, .L220+12
	add	r3, r3, #1
	str	r3, [r4]
	str	r1, [r2, #16]
.L207:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L220+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L208
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L218
.L208:
	tst	r0, #16
	beq	.L212
	ldr	r3, .L220+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L219
.L212:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L217:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	r2, r2, #1488
	streq	r3, [r4, #48]
	subeq	r2, r2, #12
	b	.L204
.L218:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L208
.L219:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L221:
	.align	2
.L220:
	.word	oldButtons
	.word	fry
	.word	buttons
	.word	alien
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
	ldr	r3, .L238
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L238+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L223
	ldr	r2, .L238+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L236
.L223:
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
	ldr	ip, .L238+12
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
	bcc	.L226
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L226:
	ldr	r2, [r4, #56]
	cmp	r2, #5
	movgt	r1, #0
	ldrgt	r2, .L238+16
	addgt	r3, r3, #1
	strgt	r3, [r4]
	strgt	r1, [r2, #16]
	tst	r0, #16
	beq	.L231
	ldr	r3, .L238+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L237
.L231:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L236:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L223
.L237:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L239:
	.align	2
.L238:
	.word	oldButtons
	.word	leela
	.word	buttons
	.word	238609294
	.word	alien
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
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r2, [r0, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L254
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L243
	ldr	r1, [r4, #28]
	cmp	r1, #9
	movgt	r1, #4
	addle	r1, r1, #1
	str	r1, [r4, #28]
.L243:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L254+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L252
.L246:
	cmp	r3, #0
	beq	.L253
.L242:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L253:
	ldr	r5, .L254+8
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	ldr	lr, [r4, #8]
	sub	ip, r2, #30
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	add	r0, ip, r0
	ldr	ip, [r4, #12]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r6, .L254+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L242
	ldr	r2, [r5, #56]
	ldr	r3, [r4, #12]
	add	r2, r2, #1
	rsb	r3, r3, #240
	str	r2, [r5, #56]
	str	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L252:
	ldr	r6, .L254+16
	add	ip, r6, #8
	ldm	ip, {ip, lr}
	cmp	lr, #0
	add	r2, lr, #3
	movge	r2, lr
	cmp	ip, #0
	add	r3, ip, #3
	movge	r3, ip
	ldr	r0, [r6]
	add	lr, lr, lr, lsr #31
	ldr	r1, [r6, #52]
	add	r0, r0, lr, asr #1
	ldr	lr, [r4, #8]
	add	ip, ip, ip, lsr #31
	add	r1, r1, ip, asr #1
	ldr	ip, [r4, #12]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	asr	r2, r2, #2
	asr	r3, r3, #2
	stm	sp, {ip, lr}
	ldr	r7, .L254+12
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	ldreq	r1, [r6, #56]
	ldreq	r2, [r4, #12]
	addeq	r1, r1, #1
	rsbeq	r2, r2, #240
	ldreq	r3, [r5]
	streq	r1, [r6, #56]
	ldrne	r3, [r5]
	streq	r2, [r4]
	b	.L246
.L255:
	.align	2
.L254:
	.word	238609294
	.word	characterChoice
	.word	fry
	.word	collision
	.word	leela
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
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	cmp	r3, #0
	bxeq	lr
	b	updateTreasure.part.0
	.size	updateTreasure, .-updateTreasure
	.align	2
	.global	updateCannonball
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCannonball, %function
updateCannonball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L264
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldreq	r1, .L264+4
	streq	r3, [r2, #16]
	streq	r0, [r1, #32]
	bx	lr
.L265:
	.align	2
.L264:
	.word	cannonall
	.word	enemy
	.size	updateCannonball, .-updateCannonball
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
	ldr	r3, .L319
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L316
	cmp	r2, #0
	moveq	r2, #512
	ldreq	lr, .L319+4
	ldrne	lr, .L319+4
	strheq	r2, [lr]	@ movhi
.L268:
	ldr	r2, .L319+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L317
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [lr, #88]	@ movhi
.L270:
	ldr	r3, .L319+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L318
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [lr, #48]	@ movhi
.L272:
	ldr	r1, .L319+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L319+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L273
	mov	ip, #148
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L274
.L275:
	ldr	r3, .L319+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #72]	@ movhi
	beq	.L305
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #74]	@ movhi
	strh	r0, [lr, #72]	@ movhi
	strh	r1, [lr, #76]	@ movhi
.L305:
	ldr	r3, .L319+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #128]	@ movhi
	beq	.L304
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #130]	@ movhi
	strh	r0, [lr, #128]	@ movhi
	strh	r1, [lr, #132]	@ movhi
.L304:
	ldr	r3, .L319+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #136]	@ movhi
	beq	.L303
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #138]	@ movhi
	strh	r0, [lr, #136]	@ movhi
	strh	r1, [lr, #140]	@ movhi
.L303:
	ldr	r3, .L319+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [lr, #240]	@ movhi
	beq	.L280
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
.L280:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L281
	mov	r3, #512
	strh	r3, [lr, #248]	@ movhi
.L283:
	mov	r5, #512
	mov	r4, #150
	ldr	r3, .L319+40
	ldr	r2, .L319+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L282:
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
	bne	.L282
	ldr	r3, .L319+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #8]	@ movhi
	beq	.L302
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #10]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r1, [lr, #12]	@ movhi
.L302:
	ldr	r3, .L319+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L287
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #156
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L319+56
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L301:
	ldr	r3, .L319+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L288
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L319+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L300:
	mov	r6, #512
	mov	r5, #152
	ldr	r3, .L319+68
	ldr	r2, .L319+4
	ldr	r4, .L319+72
	add	r0, r3, #180
.L291:
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
	bne	.L291
	ldr	r3, .L319+76
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L299
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L299:
	ldr	r3, .L319+80
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L298
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L298:
	ldr	r3, .L319+84
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L297
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L297:
	ldr	r3, .L319+88
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L296
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L296:
	ldr	r3, .L319+92
	mov	lr, pc
	bx	r3
	ldr	r4, .L319+96
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L319+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L319+100
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L319+104
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L288:
	mov	r2, #512
	ldr	r3, .L319+64
	strh	r2, [r3]	@ movhi
	b	.L300
.L287:
	mov	r2, #512
	ldr	r3, .L319+56
	strh	r2, [r3]	@ movhi
	b	.L301
.L281:
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
	b	.L283
.L273:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [lr, #56]	@ movhi
	beq	.L306
	mov	r2, #148
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #68]	@ movhi
.L306:
	mov	r3, #512
	strh	r3, [lr, #64]	@ movhi
	b	.L275
.L274:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L275
.L318:
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
	b	.L272
.L317:
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
	b	.L270
.L316:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	lr, .L319+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	b	.L268
.L320:
	.align	2
.L319:
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
	.word	enemy
	.word	shadowOAM+280
	.word	cannonall
	.word	shadowOAM+288
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
	ldr	r1, .L327
	ldr	r2, .L327+4
	ldr	r3, .L327+8
	ldr	r6, .L327+12
	str	r5, [r1, #16]
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L327+16
	ldr	ip, .L327+20
	ldr	r0, .L327+24
	ldr	r8, .L327+28
	ldr	r3, .L327+32
	ldr	r2, .L327+36
	ldr	r1, .L327+40
	ldr	r9, .L327+44
	ldr	r7, .L327+48
	ldr	r4, .L327+52
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
	mov	r10, #200
	mov	r6, #100
	mov	ip, #32
	mov	r5, #500
	str	lr, [r8, #16]
	ldr	r8, .L327+32
	str	lr, [r8, #16]
	ldr	r8, .L327+36
	str	lr, [r8, #16]
	ldr	r8, .L327+40
	str	lr, [r9, #16]
	str	lr, [r8, #16]
.L322:
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
	bne	.L322
	mov	r2, #8
	mov	r6, #0
	mov	r5, #1
	ldr	r3, .L327+56
	ldr	r0, [r7]
	ldr	lr, [r7, #12]
	ldr	r1, [r7, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L323:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L323
	ldr	r3, .L327+60
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
.L328:
	.align	2
.L327:
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
	ldr	r2, .L337
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L337+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L337+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L337+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L337+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L337+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L337+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L337+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L337+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L337+12
	ldr	r2, [r3, #64]
	cmp	r2, #1
	beq	.L336
.L329:
	pop	{r4, lr}
	bx	lr
.L336:
	ldr	r2, [r3, #100]
	cmp	r2, #1
	bne	.L329
	ldr	r2, [r3, #136]
	cmp	r2, #1
	bne	.L329
	ldr	r3, [r3, #172]
	cmp	r3, #1
	ldreq	r2, .L337+16
	streq	r3, [r2]
	b	.L329
.L338:
	.align	2
.L337:
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
	ldr	r3, .L343
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L343+4
	ldr	lr, .L343+8
	ldr	r3, .L343+12
	str	r0, [lr, #16]
	ldr	r4, .L343+16
	ldr	lr, .L343+20
	str	r0, [ip, #16]
	ldr	ip, .L343+24
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
.L340:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L340
	pop	{r4, lr}
	b	drawGame
.L344:
	.align	2
.L343:
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
	ldr	r3, .L349
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L349+4
	ldr	lr, .L349+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L349+12
	ldr	lr, .L349+16
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L349+20
	ldr	lr, .L349+24
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L349+28
	ldr	lr, .L349+32
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L349+36
	ldr	lr, .L349+40
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L349+44
	ldr	lr, .L349+48
	ldr	r3, .L349+52
	str	r0, [lr, #16]
	ldr	r4, .L349+56
	ldr	lr, .L349+60
	str	r0, [ip, #16]
	ldr	ip, .L349+64
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
.L346:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L346
	pop	{r4, lr}
	b	drawGame
.L350:
	.align	2
.L349:
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
	ldr	r5, .L411
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L411+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L411+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L352
.L354:
	ldr	r0, [r4]
.L353:
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
	beq	.L355
.L357:
	ldr	r0, [r4]
.L356:
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
	beq	.L358
.L360:
	ldr	r0, [r4]
.L359:
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
	beq	.L361
.L363:
	ldr	r0, [r4]
.L362:
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
	beq	.L409
.L364:
	ldr	r5, .L411+12
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
	beq	.L365
.L367:
	ldr	r0, [r4]
.L366:
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
	beq	.L368
.L370:
	ldr	r0, [r4]
.L369:
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
	beq	.L371
.L373:
	ldr	r0, [r4]
.L372:
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
	beq	.L374
.L376:
	ldr	r0, [r4]
.L375:
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
	beq	.L410
.L351:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L352:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L354
	ldr	ip, .L411+16
	ldr	r1, .L411+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L354
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L411+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L353
.L410:
	ldr	r3, .L411+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L351
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L351
	ldr	r3, .L411+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L411+28
	ldreq	r2, .L411+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L351
.L374:
	ldr	r3, .L411+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L376
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L376
	ldr	r2, .L411+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L376
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L411+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L375
.L371:
	ldr	r3, .L411+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L373
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L373
	ldr	r2, .L411+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L373
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L411+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L372
.L368:
	ldr	r3, .L411+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L370
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L370
	ldr	r2, .L411+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L370
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L411+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L369
.L365:
	ldr	r2, .L411+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L367
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L367
	ldr	r1, .L411+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L367
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L411+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L366
.L409:
	ldr	r3, .L411+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L364
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L364
	ldr	r3, .L411+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L411+28
	ldreq	r2, .L411+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L364
.L361:
	ldr	r3, .L411+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L363
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L363
	ldr	r2, .L411+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L363
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L411+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L362
.L358:
	ldr	r3, .L411+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L360
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L360
	ldr	r2, .L411+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L360
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L411+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L359
.L355:
	ldr	r3, .L411+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L357
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L357
	ldr	r2, .L411+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L357
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L411+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L356
.L412:
	.align	2
.L411:
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
	ldr	r2, .L429
	ldrh	r3, [r2]
	ldr	r0, .L429+4
	push	{r4, lr}
	ldr	r1, .L429+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L429+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L415:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L414:
	add	r0, r0, #28
	cmp	r1, r0
	bne	.L415
	ldr	r4, .L429+16
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L416
	ldr	r3, .L429+20
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L428
.L418:
	bl	updateEnemy
	bl	updateLives
	ldr	r2, .L429+24
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldreq	r1, .L429+28
	streq	r0, [r1, #32]
	ldr	r0, .L429+32
	streq	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L429+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L428:
	mov	r2, #1
	ldr	r3, .L429+40
	str	r2, [r3, #56]
	add	r0, r3, #36
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L416:
	cmp	r3, #1
	bne	.L418
	ldr	r2, .L429+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L418
	ldr	r2, .L429+40
	str	r3, [r2, #56]
	add	r0, r2, #36
	bl	updateTreasure.part.0
	b	.L418
.L430:
	.align	2
.L429:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	characterChoice
	.word	fry
	.word	cannonall
	.word	enemy
	.word	coins
	.word	coins+40
	.word	treasure
	.word	leela
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
	ldr	r2, .L447
	ldrh	r3, [r2]
	ldr	r0, .L447+4
	push	{r4, lr}
	ldr	r1, .L447+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L447+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L433:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L432:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L433
	bl	updateLives
	bl	updateEnemy
	ldr	r2, .L447+16
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldr	r4, .L447+20
	ldreq	r1, .L447+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r0, [r1, #32]
	cmp	r3, #0
	bne	.L437
	ldr	r3, .L447+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L446
.L439:
	ldr	r0, .L447+32
	bl	updateCoins
	ldr	r0, .L447+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L446:
	mov	r2, #1
	ldr	r3, .L447+40
	str	r2, [r3, #92]
	add	r0, r3, #72
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L437:
	cmp	r3, #1
	bne	.L439
	ldr	r2, .L447+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L439
	ldr	r2, .L447+40
	str	r3, [r2, #92]
	add	r0, r2, #72
	bl	updateTreasure.part.0
	b	.L439
.L448:
	.align	2
.L447:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	cannonall
	.word	characterChoice
	.word	enemy
	.word	fry
	.word	coins
	.word	coins+40
	.word	treasure
	.word	leela
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
	ldr	r2, .L465
	ldrh	r3, [r2]
	ldr	r0, .L465+4
	push	{r4, lr}
	ldr	r1, .L465+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L465+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L451:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L450:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L451
	bl	updateLives
	bl	updateEnemy
	ldr	r2, .L465+16
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldr	r4, .L465+20
	ldreq	r1, .L465+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r0, [r1, #32]
	cmp	r3, #0
	bne	.L455
	ldr	r3, .L465+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L464
.L457:
	ldr	r0, .L465+32
	bl	updateCoins
	ldr	r0, .L465+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L464:
	mov	r2, #1
	ldr	r3, .L465+40
	str	r2, [r3, #128]
	add	r0, r3, #108
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L455:
	cmp	r3, #1
	bne	.L457
	ldr	r2, .L465+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L457
	ldr	r2, .L465+40
	str	r3, [r2, #128]
	add	r0, r2, #108
	bl	updateTreasure.part.0
	b	.L457
.L466:
	.align	2
.L465:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	cannonall
	.word	characterChoice
	.word	enemy
	.word	fry
	.word	coins
	.word	coins+40
	.word	treasure
	.word	leela
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
	ldr	r2, .L483
	ldrh	r3, [r2]
	ldr	r0, .L483+4
	push	{r4, lr}
	ldr	r1, .L483+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L483+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L469:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L468:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L469
	bl	updateLives
	bl	updateEnemy
	ldr	r2, .L483+16
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldr	r4, .L483+20
	ldreq	r1, .L483+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r0, [r1, #32]
	cmp	r3, #0
	bne	.L473
	ldr	r3, .L483+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L482
.L475:
	ldr	r0, .L483+32
	bl	updateCoins
	ldr	r0, .L483+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L482:
	mov	r2, #1
	ldr	r3, .L483+40
	str	r2, [r3, #164]
	add	r0, r3, #144
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L473:
	cmp	r3, #1
	bne	.L475
	ldr	r2, .L483+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L475
	ldr	r2, .L483+40
	str	r3, [r2, #164]
	add	r0, r2, #144
	bl	updateTreasure.part.0
	b	.L475
.L484:
	.align	2
.L483:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	cannonall
	.word	characterChoice
	.word	enemy
	.word	fry
	.word	coins
	.word	coins+40
	.word	treasure
	.word	leela
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
	.comm	cannonall,28,4
	.comm	enemy,36,4
	.comm	helmet,28,4
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
	.comm	leela,60,4
	.comm	fry,60,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.type	ground, %object
	.size	ground, 4
ground:
	.word	154
	.ident	"GCC: (devkitARM release 53) 9.1.0"
