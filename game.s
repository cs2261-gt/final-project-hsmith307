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
	mov	r6, #220
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
	@ link register save eliminated.
	ldr	r2, .L75
	ldr	r3, [r2, #12]
	add	r1, r3, #3
	cmp	r3, #0
	movlt	r3, r1
	mov	r0, #1
	ldr	r1, [r2]
	ldmib	r2, {r2, ip}
	add	ip, r2, ip
	ldr	r2, .L75+4
	add	r3, r1, r3, asr #2
	stm	r2, {r3, ip}
	str	r0, [r2, #24]
	bx	lr
.L76:
	.align	2
.L75:
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
	ldr	r3, .L78
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L79:
	.align	2
.L78:
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
	ldr	r3, .L81
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L82:
	.align	2
.L81:
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
	ldr	r3, .L84
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r3, .L87
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r3, .L100
	ldr	r3, [r3]
	ldr	ip, .L100+4
	cmp	r3, r1
	stmib	ip, {r0, r2}
	str	r1, [ip, #20]
	str	r1, [ip, #24]
	str	lr, [ip]
	str	r2, [ip, #12]
	beq	.L98
	cmp	r3, #0
	bne	.L99
	mov	r5, #3
	mov	r4, #23040
	mov	lr, #4
	ldr	r2, .L100+8
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
	ldr	r5, .L100+12
.L92:
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
	ldr	ip, .L100+16
	str	r1, [r5, #16]
	str	r1, [ip, #56]
	ldr	r5, .L100+20
	str	r1, [ip, #20]
	str	r1, [ip, #92]
	str	r1, [ip, #128]
	str	r1, [ip, #164]
	ldr	ip, .L100+24
	str	r1, [r5, #16]
	str	r1, [ip, #16]
	ldr	r5, .L100+28
	str	r1, [ip, #56]
	ldr	ip, .L100+32
	str	r7, [r5]
	stm	ip, {r7, fp}
	ldr	r7, .L100+36
	str	r1, [r2, #16]
	mov	r4, r1
	ldr	r3, .L100+40
	ldr	r1, .L100+44
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
.L93:
	str	r4, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L93
	mov	r2, #32
	mov	r1, #208
	mov	r0, #10
	mov	lr, #1
	ldr	ip, .L100+48
	ldr	r5, .L100+52
	str	r2, [ip, #12]
	str	r2, [ip, #8]
	str	r1, [ip]
	str	r0, [ip, #4]
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L100+56
	ldr	r1, .L100+60
	str	r4, [ip, #16]
	str	r4, [ip, #32]
	str	lr, [ip, #20]
	str	lr, [ip, #28]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L100+64
	ldr	r1, .L100+68
	mov	lr, pc
	bx	r5
	ldr	r3, .L100+72
	ldr	r0, .L100+76
	ldr	r1, .L100+80
	ldr	r2, .L100+84
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L98:
	mov	r2, #0
	mov	r4, #3
	mov	lr, #23040
	mov	r1, #4
	ldr	r5, .L100+12
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
	ldr	r2, .L100+8
	b	.L92
.L99:
	ldr	r5, .L100+12
	ldr	r2, .L100+8
	b	.L92
.L101:
	.align	2
.L100:
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
	ldr	r3, .L114
	mov	lr, pc
	bx	r3
	bl	initCoins
	ldr	r2, .L114+4
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	ip, #1
	ldr	r6, .L114+8
	ldr	r4, [r6]
	ldr	r7, [r6, #12]
	ldr	lr, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r4, r4, r7
	add	lr, lr, #20
.L103:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r4, lr}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L103
	mov	r0, #64
	mov	r3, #4
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #203
	mov	r7, #120
	ldr	lr, .L114+12
	ldr	r4, [lr]
	ldr	lr, .L114+16
	str	r3, [lr, #40]
	str	r0, [lr, #12]
	ldr	r3, .L114+20
	str	r0, [lr, #8]
	ldr	r0, .L114+24
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
	bne	.L104
	ldr	r3, .L114+28
	str	r4, [r3, #56]
.L105:
	mov	r0, #1
	ldr	r3, .L114+4
.L106:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L106
	mov	ip, #0
	ldr	r3, .L114+32
	cmp	r4, #1
	str	ip, [r3]
	streq	r4, [r6, #16]
	beq	.L108
	cmp	r4, #0
	ldreq	r3, .L114+28
	streq	r0, [r3, #16]
.L108:
	mov	ip, #1
	mov	r0, #0
	str	ip, [lr, #16]
	mov	r3, ip
	ldr	ip, .L114+36
	ldr	lr, .L114+40
	str	r0, [ip, #16]
	ldr	ip, .L114+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L114+48
	ldr	ip, .L114+52
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L109:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L109
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L104:
	cmp	r4, #1
	streq	r5, [r6, #56]
	b	.L105
.L115:
	.align	2
.L114:
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
	ldr	r3, .L128
	ldr	r4, .L128+4
	mov	lr, pc
	bx	r3
	mov	r2, #8
	mov	r6, #0
	mov	r3, r4
	mov	r7, #1
	ldr	r8, .L128+8
	ldr	r0, [r8]
	ldr	ip, [r8, #12]
	ldr	r1, [r8, #52]
	add	r5, r4, #1392
	add	r5, r5, r2
	add	r0, r0, ip
	add	r1, r1, #20
.L117:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r7, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L117
	mov	r3, #64
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	mov	ip, #170
	ldr	r9, .L128+12
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
	ldr	r1, .L128+16
	ldr	r3, .L128+20
	str	r6, [r1, #16]
	str	r6, [r3, #16]
	ldr	r0, .L128+24
	ldr	r3, .L128+28
	ldr	r1, .L128+32
	str	r6, [r3, #16]
	str	r7, [r9, #16]
	str	r6, [r0, #16]
	str	r6, [r1, #16]
	ldr	r3, .L128+4
.L118:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L118
	ldr	r3, .L128+36
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L119
	ldr	r3, .L128+40
	str	r2, [r3, #56]
.L120:
	mov	r3, #1
.L121:
	str	r3, [r4, #12]
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L121
	ldr	r0, .L128+44
	ldr	r1, [r0, #76]
	ldr	ip, .L128+48
	cmp	r2, #1
	add	r1, r1, #25
	str	r1, [r0, #76]
	str	r3, [ip]
	streq	r2, [r8, #16]
	beq	.L123
	cmp	r2, #0
	ldreq	r2, .L128+40
	streq	r3, [r2, #16]
.L123:
	mov	r2, #1
	ldr	r3, .L128+52
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L119:
	cmp	r2, #1
	moveq	r3, #0
	streq	r3, [r8, #56]
	b	.L120
.L129:
	.align	2
.L128:
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
	ldr	r3, .L140
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L140+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L140+8
	ldr	r9, .L140+12
	str	ip, [r8, #16]
	ldr	r3, .L140+16
	ldr	fp, .L140+20
	ldr	r10, .L140+24
	ldr	r8, .L140+28
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
.L131:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r5, r2
	bne	.L131
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L140+32
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
	ldr	r3, .L140+16
	str	r6, [r3, #16]
	ldr	r3, .L140+8
	str	r6, [r3, #16]
	ldr	r3, .L140+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L132:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L132
	ldr	r3, .L140+36
	ldr	r0, .L140+40
	ldr	r1, [r3]
	ldr	r3, [r0, #112]
	cmp	r1, #0
	add	r3, r3, #25
	bne	.L133
	mov	lr, #2
	ldr	ip, .L140+44
	str	r3, [r0, #112]
	ldr	r3, .L140+48
	str	lr, [ip]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
.L134:
	mov	r2, #1
	ldr	r3, .L140+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L133:
	cmp	r1, #1
	bne	.L135
	mov	ip, #0
	mov	r2, #2
	str	r3, [r0, #112]
	ldr	r3, .L140+44
	str	r1, [r9, #16]
	str	ip, [r9, #56]
	str	r2, [r3]
	b	.L134
.L135:
	mov	r1, #2
	ldr	r2, .L140+44
	str	r3, [r0, #112]
	str	r1, [r2]
	b	.L134
.L141:
	.align	2
.L140:
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
	ldr	r3, .L152
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L152+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L152+8
	ldr	r9, .L152+12
	str	ip, [r8, #16]
	ldr	r3, .L152+16
	ldr	fp, .L152+20
	ldr	r10, .L152+24
	ldr	r8, .L152+28
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
.L143:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r5, r2
	bne	.L143
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L152+32
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
	ldr	r3, .L152+16
	str	r6, [r3, #16]
	ldr	r3, .L152+8
	str	r6, [r3, #16]
	ldr	r3, .L152+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L144:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L144
	ldr	r3, .L152+36
	ldr	r0, .L152+40
	ldr	r1, [r3]
	ldr	r3, [r0, #148]
	cmp	r1, #0
	add	r3, r3, #25
	bne	.L145
	mov	lr, #3
	ldr	ip, .L152+44
	str	r3, [r0, #148]
	ldr	r3, .L152+48
	str	lr, [ip]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
.L146:
	mov	r2, #1
	ldr	r3, .L152+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L145:
	cmp	r1, #1
	bne	.L147
	mov	ip, #0
	mov	r2, #3
	str	r3, [r0, #148]
	ldr	r3, .L152+44
	str	r1, [r9, #16]
	str	ip, [r9, #56]
	str	r2, [r3]
	b	.L146
.L147:
	mov	r1, #3
	ldr	r2, .L152+44
	str	r3, [r0, #148]
	str	r1, [r2]
	b	.L146
.L153:
	.align	2
.L152:
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
	ldr	r3, .L158
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L158+4
	ldr	ip, .L158+8
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L158+12
	ldr	ip, .L158+16
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L158+20
	ldr	ip, .L158+24
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L158+28
	ldr	ip, .L158+32
	ldr	r4, .L158+36
	ldr	lr, .L158+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L155:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L155
	pop	{r4, lr}
	bx	lr
.L159:
	.align	2
.L158:
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
	ldr	r5, .L169
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L169+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L161
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L161:
	ldr	r4, .L169+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L169+12
	add	r6, r6, #8
	b	.L166
.L168:
	ldr	r0, [r5]
.L166:
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
	bne	.L168
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L170:
	.align	2
.L169:
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
	ldr	r3, .L185
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	beq	.L172
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	beq	.L184
.L174:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L185+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r2, #16]
	stm	r2, {r0, r1}
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L172:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	bne	.L174
	mov	r2, #1
.L184:
	str	r2, [r3, #28]
	b	.L174
.L186:
	.align	2
.L185:
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
	ldr	r3, .L189
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L189+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L190:
	.align	2
.L189:
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
	ldr	r1, .L200
	ldr	r2, .L200+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L200+8
	ldr	r8, .L200+12
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
.L194:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L196
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L196
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L196:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L194
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L201:
	.align	2
.L200:
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
	ldr	r3, .L219
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L219+4
	tst	r0, #64
	ldr	r2, [r4, #24]
	beq	.L203
	ldr	r3, .L219+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L216
.L203:
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
	ble	.L206
	mov	r1, #0
	ldr	r3, [r4]
	ldr	r2, .L219+12
	add	r3, r3, #1
	str	r3, [r4]
	str	r1, [r2, #16]
.L206:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L219+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L207
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L217
.L207:
	tst	r0, #16
	beq	.L211
	ldr	r3, .L219+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L218
.L211:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L216:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	r2, r2, #1488
	streq	r3, [r4, #48]
	subeq	r2, r2, #12
	b	.L203
.L217:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L207
.L218:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L220:
	.align	2
.L219:
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
	ldr	r3, .L237
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L237+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L222
	ldr	r2, .L237+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L235
.L222:
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
	ldr	ip, .L237+12
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
	bcc	.L225
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L225:
	ldr	r2, [r4, #56]
	cmp	r2, #5
	movgt	r1, #0
	ldrgt	r2, .L237+16
	addgt	r3, r3, #1
	strgt	r3, [r4]
	strgt	r1, [r2, #16]
	tst	r0, #16
	beq	.L230
	ldr	r3, .L237+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L236
.L230:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L235:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L222
.L236:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L238:
	.align	2
.L237:
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
	ldr	r0, .L253
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L242
	ldr	r1, [r4, #36]
	ldr	r0, [r4, #28]
	sub	r1, r1, #1
	cmp	r0, r1
	movge	r1, #4
	addlt	r0, r0, #1
	strlt	r0, [r4, #28]
	strge	r1, [r4, #28]
.L242:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L253+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L251
.L245:
	cmp	r3, #0
	beq	.L252
.L241:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L252:
	ldr	r5, .L253+8
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
	ldr	r6, .L253+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L241
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
.L251:
	ldr	r6, .L253+16
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
	ldr	r7, .L253+12
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
	b	.L245
.L254:
	.align	2
.L253:
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
	ldr	r0, .L260
	ldr	r3, [r0, #32]
	ldr	r2, .L260+4
	cmp	r3, #0
	ldreq	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addeq	r3, r3, r1
	ldr	r1, [r2, #8]
	streq	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r1, #1
	streq	r3, [r2, #16]
	streq	r1, [r0, #32]
	bx	lr
.L261:
	.align	2
.L260:
	.word	enemy
	.word	cannonall
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
	ldr	r3, .L315
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L312
	cmp	r2, #0
	moveq	r2, #512
	ldreq	lr, .L315+4
	ldrne	lr, .L315+4
	strheq	r2, [lr]	@ movhi
.L264:
	ldr	r2, .L315+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L313
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [lr, #88]	@ movhi
.L266:
	ldr	r3, .L315+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L314
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [lr, #48]	@ movhi
.L268:
	ldr	r1, .L315+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L315+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L269
	mov	ip, #148
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L270
.L271:
	ldr	r3, .L315+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #72]	@ movhi
	beq	.L301
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #74]	@ movhi
	strh	r0, [lr, #72]	@ movhi
	strh	r1, [lr, #76]	@ movhi
.L301:
	ldr	r3, .L315+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #128]	@ movhi
	beq	.L300
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #130]	@ movhi
	strh	r0, [lr, #128]	@ movhi
	strh	r1, [lr, #132]	@ movhi
.L300:
	ldr	r3, .L315+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #136]	@ movhi
	beq	.L299
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #138]	@ movhi
	strh	r0, [lr, #136]	@ movhi
	strh	r1, [lr, #140]	@ movhi
.L299:
	ldr	r3, .L315+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [lr, #240]	@ movhi
	beq	.L276
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
.L276:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L277
	mov	r3, #512
	strh	r3, [lr, #248]	@ movhi
.L279:
	mov	r5, #512
	mov	r4, #150
	ldr	r3, .L315+40
	ldr	r2, .L315+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L278:
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
	bne	.L278
	ldr	r3, .L315+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #8]	@ movhi
	beq	.L298
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #10]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r1, [lr, #12]	@ movhi
.L298:
	ldr	r3, .L315+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L283
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #156
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L315+56
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L297:
	ldr	r3, .L315+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L284
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L315+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L296:
	mov	r6, #512
	mov	r5, #152
	ldr	r3, .L315+68
	ldr	r2, .L315+4
	ldr	r4, .L315+72
	add	r0, r3, #180
.L287:
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
	bne	.L287
	ldr	r3, .L315+76
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L295
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L295:
	ldr	r3, .L315+80
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L294
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L294:
	ldr	r3, .L315+84
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L293
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L293:
	ldr	r3, .L315+88
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L292
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L292:
	ldr	r3, .L315+92
	mov	lr, pc
	bx	r3
	ldr	r4, .L315+96
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L315+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L315+100
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L315+104
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L284:
	mov	r2, #512
	ldr	r3, .L315+64
	strh	r2, [r3]	@ movhi
	b	.L296
.L283:
	mov	r2, #512
	ldr	r3, .L315+56
	strh	r2, [r3]	@ movhi
	b	.L297
.L277:
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
	b	.L279
.L269:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [lr, #56]	@ movhi
	beq	.L302
	mov	r2, #148
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #68]	@ movhi
.L302:
	mov	r3, #512
	strh	r3, [lr, #64]	@ movhi
	b	.L271
.L270:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L271
.L314:
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
	b	.L268
.L313:
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
	b	.L266
.L312:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	lr, .L315+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	b	.L264
.L316:
	.align	2
.L315:
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
	ldr	r1, .L323
	ldr	r2, .L323+4
	ldr	r3, .L323+8
	ldr	r6, .L323+12
	str	r5, [r1, #16]
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L323+16
	ldr	ip, .L323+20
	ldr	r0, .L323+24
	ldr	r8, .L323+28
	ldr	r3, .L323+32
	ldr	r2, .L323+36
	ldr	r1, .L323+40
	ldr	r9, .L323+44
	ldr	r7, .L323+48
	ldr	r4, .L323+52
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
	ldr	r8, .L323+32
	str	lr, [r8, #16]
	ldr	r8, .L323+36
	str	lr, [r8, #16]
	ldr	r8, .L323+40
	str	lr, [r9, #16]
	str	lr, [r8, #16]
.L318:
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
	bne	.L318
	mov	r2, #8
	mov	r6, #0
	mov	r5, #1
	ldr	r3, .L323+56
	ldr	r0, [r7]
	ldr	lr, [r7, #12]
	ldr	r1, [r7, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L319:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L319
	ldr	r3, .L323+60
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
.L324:
	.align	2
.L323:
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
	ldr	r2, .L333
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L333+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L333+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L333+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L333+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L333+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L333+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L333+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L333+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L333+12
	ldr	r2, [r3, #64]
	cmp	r2, #1
	beq	.L332
.L325:
	pop	{r4, lr}
	bx	lr
.L332:
	ldr	r2, [r3, #100]
	cmp	r2, #1
	bne	.L325
	ldr	r2, [r3, #136]
	cmp	r2, #1
	bne	.L325
	ldr	r3, [r3, #172]
	cmp	r3, #1
	ldreq	r2, .L333+16
	streq	r3, [r2]
	b	.L325
.L334:
	.align	2
.L333:
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
	ldr	r3, .L339
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L339+4
	ldr	lr, .L339+8
	ldr	r3, .L339+12
	str	r0, [lr, #16]
	ldr	r4, .L339+16
	ldr	lr, .L339+20
	str	r0, [ip, #16]
	ldr	ip, .L339+24
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
.L336:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L336
	pop	{r4, lr}
	b	drawGame
.L340:
	.align	2
.L339:
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
	ldr	r3, .L345
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L345+4
	ldr	lr, .L345+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L345+12
	ldr	lr, .L345+16
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L345+20
	ldr	lr, .L345+24
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L345+28
	ldr	lr, .L345+32
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L345+36
	ldr	lr, .L345+40
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L345+44
	ldr	lr, .L345+48
	ldr	r3, .L345+52
	str	r0, [lr, #16]
	ldr	r4, .L345+56
	ldr	lr, .L345+60
	str	r0, [ip, #16]
	ldr	ip, .L345+64
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
.L342:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L342
	pop	{r4, lr}
	b	drawGame
.L346:
	.align	2
.L345:
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
	ldr	r5, .L407
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L407+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L407+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L348
.L350:
	ldr	r0, [r4]
.L349:
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
	beq	.L351
.L353:
	ldr	r0, [r4]
.L352:
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
	beq	.L354
.L356:
	ldr	r0, [r4]
.L355:
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
	beq	.L357
.L359:
	ldr	r0, [r4]
.L358:
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
	beq	.L405
.L360:
	ldr	r5, .L407+12
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
	beq	.L364
.L366:
	ldr	r0, [r4]
.L365:
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
	beq	.L367
.L369:
	ldr	r0, [r4]
.L368:
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
	beq	.L370
.L372:
	ldr	r0, [r4]
.L371:
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
	beq	.L406
.L347:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L348:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L350
	ldr	ip, .L407+16
	ldr	r1, .L407+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L350
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L407+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L349
.L406:
	ldr	r3, .L407+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L347
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L347
	ldr	r3, .L407+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L407+28
	ldreq	r2, .L407+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L347
.L370:
	ldr	r3, .L407+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L372
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L372
	ldr	r2, .L407+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L372
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L407+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L371
.L367:
	ldr	r3, .L407+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L369
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L369
	ldr	r2, .L407+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L369
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L407+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L368
.L364:
	ldr	r3, .L407+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L366
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L366
	ldr	r2, .L407+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L366
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L407+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L365
.L361:
	ldr	r2, .L407+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L363
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L363
	ldr	r1, .L407+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L363
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L407+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L362
.L405:
	ldr	r3, .L407+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L360
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L360
	ldr	r3, .L407+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L407+28
	ldreq	r2, .L407+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L360
.L357:
	ldr	r3, .L407+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L359
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L359
	ldr	r2, .L407+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L359
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L407+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L358
.L354:
	ldr	r3, .L407+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L356
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L356
	ldr	r2, .L407+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L356
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L407+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L355
.L351:
	ldr	r3, .L407+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L353
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L353
	ldr	r2, .L407+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L353
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L407+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L352
.L408:
	.align	2
.L407:
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
	ldr	r2, .L425
	ldrh	r3, [r2]
	ldr	r0, .L425+4
	push	{r4, lr}
	ldr	r1, .L425+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L425+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L411:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L410:
	add	r0, r0, #28
	cmp	r1, r0
	bne	.L411
	ldr	r4, .L425+16
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L412
	ldr	r3, .L425+20
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L424
.L414:
	bl	updateEnemy
	bl	updateLives
	ldr	r0, .L425+24
	ldr	r3, [r0, #32]
	ldr	r2, .L425+28
	cmp	r3, #0
	ldreq	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addeq	r3, r3, r1
	ldr	r1, [r2, #8]
	streq	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r1, #1
	streq	r1, [r0, #32]
	ldr	r0, .L425+32
	streq	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L425+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L424:
	mov	r2, #1
	ldr	r3, .L425+40
	str	r2, [r3, #56]
	add	r0, r3, #36
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L412:
	cmp	r3, #1
	bne	.L414
	ldr	r2, .L425+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L414
	ldr	r2, .L425+40
	str	r3, [r2, #56]
	add	r0, r2, #36
	bl	updateTreasure.part.0
	b	.L414
.L426:
	.align	2
.L425:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	characterChoice
	.word	fry
	.word	enemy
	.word	cannonall
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
	ldr	r2, .L443
	ldrh	r3, [r2]
	ldr	r0, .L443+4
	push	{r4, lr}
	ldr	r1, .L443+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L443+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L429:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L428:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L429
	bl	updateLives
	bl	updateEnemy
	ldr	r0, .L443+16
	ldr	r3, [r0, #32]
	ldr	r2, .L443+20
	cmp	r3, #0
	ldreq	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addeq	r3, r3, r1
	ldr	r1, [r2, #8]
	streq	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r1, #1
	ldr	r4, .L443+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r1, [r0, #32]
	cmp	r3, #0
	bne	.L433
	ldr	r3, .L443+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L442
.L435:
	ldr	r0, .L443+32
	bl	updateCoins
	ldr	r0, .L443+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L442:
	mov	r2, #1
	ldr	r3, .L443+40
	str	r2, [r3, #92]
	add	r0, r3, #72
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L433:
	cmp	r3, #1
	bne	.L435
	ldr	r2, .L443+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L435
	ldr	r2, .L443+40
	str	r3, [r2, #92]
	add	r0, r2, #72
	bl	updateTreasure.part.0
	b	.L435
.L444:
	.align	2
.L443:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	enemy
	.word	cannonall
	.word	characterChoice
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
	ldr	r2, .L461
	ldrh	r3, [r2]
	ldr	r0, .L461+4
	push	{r4, lr}
	ldr	r1, .L461+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L461+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L447:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L446:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L447
	bl	updateLives
	bl	updateEnemy
	ldr	r0, .L461+16
	ldr	r3, [r0, #32]
	ldr	r2, .L461+20
	cmp	r3, #0
	ldreq	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addeq	r3, r3, r1
	ldr	r1, [r2, #8]
	streq	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r1, #1
	ldr	r4, .L461+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r1, [r0, #32]
	cmp	r3, #0
	bne	.L451
	ldr	r3, .L461+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L460
.L453:
	ldr	r0, .L461+32
	bl	updateCoins
	ldr	r0, .L461+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L460:
	mov	r2, #1
	ldr	r3, .L461+40
	str	r2, [r3, #128]
	add	r0, r3, #108
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L451:
	cmp	r3, #1
	bne	.L453
	ldr	r2, .L461+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L453
	ldr	r2, .L461+40
	str	r3, [r2, #128]
	add	r0, r2, #108
	bl	updateTreasure.part.0
	b	.L453
.L462:
	.align	2
.L461:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	enemy
	.word	cannonall
	.word	characterChoice
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
	ldr	r2, .L479
	ldrh	r3, [r2]
	ldr	r0, .L479+4
	push	{r4, lr}
	ldr	r1, .L479+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L479+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L465:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L464:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L465
	bl	updateLives
	bl	updateEnemy
	ldr	r0, .L479+16
	ldr	r3, [r0, #32]
	ldr	r2, .L479+20
	cmp	r3, #0
	ldreq	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addeq	r3, r3, r1
	ldr	r1, [r2, #8]
	streq	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r1, #1
	ldr	r4, .L479+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r1, [r0, #32]
	cmp	r3, #0
	bne	.L469
	ldr	r3, .L479+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L478
.L471:
	ldr	r0, .L479+32
	bl	updateCoins
	ldr	r0, .L479+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L478:
	mov	r2, #1
	ldr	r3, .L479+40
	str	r2, [r3, #164]
	add	r0, r3, #144
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L469:
	cmp	r3, #1
	bne	.L471
	ldr	r2, .L479+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L471
	ldr	r2, .L479+40
	str	r3, [r2, #164]
	add	r0, r2, #144
	bl	updateTreasure.part.0
	b	.L471
.L480:
	.align	2
.L479:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	enemy
	.word	cannonall
	.word	characterChoice
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
