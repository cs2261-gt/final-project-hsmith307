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
	.type	updateTreasure.part.0, %function
updateTreasure.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L20
	ldr	r3, .L20+4
	sub	sp, sp, #20
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L18
.L2:
	cmp	r5, #0
	beq	.L19
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L19:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r6, .L20+8
	ldr	lr, [r4, #4]
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #52]
	ldr	r0, [r6]
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L20+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L13
	mov	r2, #1
	mov	r1, r5
	ldr	r0, .L20+16
	ldr	r3, .L20+20
	str	r2, [r4, #28]
	str	r5, [r4, #20]
	add	r2, r3, #1392
	str	r5, [r6, #16]
	str	r5, [r0, #16]
	str	r5, [r0, #56]
	add	r2, r2, #8
.L12:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L12
.L13:
	ldr	r3, [r4, #68]
	cmp	r3, #1
	bne	.L1
	ldr	r3, [r4, #108]
	cmp	r3, #1
	bne	.L1
	ldr	r3, [r4, #148]
	cmp	r3, #1
	bne	.L1
	ldr	r3, [r4, #188]
	cmp	r3, #1
	ldreq	r2, .L20+24
	streq	r3, [r2]
	b	.L1
.L18:
	add	r7, r4, #12
	ldm	r7, {r7, ip}
	ldr	r5, .L20+28
	ldr	lr, [r4, #4]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #52]
	ldr	r0, [r5]
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L20+12
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L6
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L20+16
	ldr	r3, .L20+20
	str	r0, [r4, #20]
	add	r2, r3, #1392
	str	r0, [r5, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L5:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L5
.L6:
	ldr	r3, [r4, #68]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L2
	ldr	r3, [r4, #108]
	cmp	r3, #1
	bne	.L2
	ldr	r3, [r4, #148]
	cmp	r3, #1
	bne	.L2
	ldr	r3, [r4, #188]
	cmp	r3, #1
	ldreq	r2, .L20+24
	streq	r3, [r2]
	b	.L2
.L21:
	.align	2
.L20:
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
	ldr	r3, .L24
	str	lr, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
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
	mov	r1, #1
	mov	r4, #3
	mov	lr, #23040
	mov	r0, #64
	mov	ip, #4
	ldr	r3, .L28
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #68]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
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
	mov	r1, #1
	mov	r4, #3
	mov	lr, #23040
	mov	r0, #64
	mov	ip, #4
	ldr	r3, .L32
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r1, [r3, #68]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	mov	r1, #1
	mov	r2, #0
	mov	r5, #240
	mov	r4, #90
	mov	lr, #2
	mov	r0, #64
	mov	ip, #4
	ldr	r3, .L36
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #28]
	str	ip, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #16]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	pop	{r4, r5, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r3, .L40
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
.L41:
	.align	2
.L40:
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
	mov	r3, #0
	mov	r2, #16
	mov	r0, #5
	push	{r4, r5, lr}
	mov	r5, #26
	mov	r4, #47
	mov	lr, #68
	mov	ip, #89
	ldr	r1, .L44
	str	r3, [r1]
	ldr	r1, .L44+4
	stmib	r1, {r0, r2}
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	str	r0, [r1]
	str	r2, [r1, #12]
	ldr	r1, .L44+8
	str	r0, [r1, #4]
	str	r3, [r1, #16]
	str	r2, [r1, #8]
	str	r2, [r1, #12]
	str	r3, [r1, #20]
	str	r5, [r1]
	ldr	r1, .L44+12
	str	r0, [r1, #4]
	str	r3, [r1, #16]
	str	r2, [r1, #8]
	str	r2, [r1, #12]
	str	r3, [r1, #20]
	str	r4, [r1]
	ldr	r1, .L44+16
	str	r0, [r1, #4]
	str	r3, [r1, #16]
	str	r2, [r1, #8]
	str	r2, [r1, #12]
	str	r3, [r1, #20]
	str	lr, [r1]
	ldr	r1, .L44+20
	str	r0, [r1, #4]
	str	r3, [r1, #16]
	str	r2, [r1, #8]
	str	r2, [r1, #12]
	str	r3, [r1, #20]
	str	ip, [r1]
	pop	{r4, r5, lr}
	bx	lr
.L45:
	.align	2
.L44:
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
	push	{r4, lr}
	mov	ip, #0
	mov	r4, #67
	mov	lr, #113
	mov	r0, #1
	ldr	r3, .L50
	add	r1, r3, #1392
	add	r1, r1, r2
.L47:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3, #24]
	str	r0, [r3, #12]
	stm	r3, {r4, lr}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L47
	pop	{r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
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
	ldr	lr, .L56
	mov	r7, r2
	mov	r3, lr
	mov	r6, #200
	mov	r5, #100
	mov	r1, #0
	mov	ip, #32
	mov	r4, #500
.L53:
	add	r0, r2, r2, lsl #2
	add	r2, r2, #1
	add	r0, lr, r0, lsl #3
	cmp	r2, #5
	str	r6, [r3, #40]
	str	r5, [r3, #44]
	str	r1, [r3, #60]
	str	ip, [r3, #56]
	str	ip, [r3, #52]
	str	r1, [r0, #24]
	add	r3, r3, #40
	str	r7, [r3, #8]
	str	r1, [r3, #28]
	str	r4, [r3, #32]
	str	r1, [r3, #36]
	bne	.L53
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L60
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
.L61:
	.align	2
.L60:
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
	str	lr, [sp, #-4]!
	mov	r2, #32
	mov	lr, #20
	mov	ip, #70
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L64
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	helmet
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
	ldr	r2, .L68
	ldr	r3, [r2, #12]
	add	r1, r3, #3
	cmp	r3, #0
	movlt	r3, r1
	push	{r4, lr}
	mov	r0, #8
	mov	lr, #1
	mov	ip, #0
	ldr	r1, [r2]
	ldmib	r2, {r2, r4}
	add	r4, r2, r4
	add	r2, r1, r3, asr #2
	ldr	r3, .L68+4
	stm	r3, {r2, r4}
	str	lr, [r3, #24]
	str	ip, [r3, #16]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	enemy
	.word	cannonball
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
	ldr	r3, .L71
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L72:
	.align	2
.L71:
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
	ldr	r3, .L74
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L75:
	.align	2
.L74:
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
	ldr	r3, .L77
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L78:
	.align	2
.L77:
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
	ldr	r3, .L80
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L81:
	.align	2
.L80:
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
	mov	r3, #67108864
	mov	r4, #4352
	mov	r1, #1
	mov	r2, #32
	mov	lr, #0
	mov	ip, #104
	mov	r0, #64
	ldr	r5, .L117
	strh	r4, [r3]	@ movhi
	ldr	r3, [r5]
	ldr	r4, .L117+4
	cmp	r3, r1
	str	r1, [r4, #20]
	str	r1, [r4, #24]
	str	lr, [r4, #16]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
	beq	.L115
.L84:
	cmp	r3, #0
	beq	.L116
.L85:
	mov	r5, #0
	mov	r3, #1
	ldr	lr, .L117+8
	ldr	r1, [lr, #76]
	cmp	r1, r5
	movne	r1, r5
	moveq	r1, r3
	ldr	r2, [lr, #116]
	mov	ip, #200
	cmp	r2, r5
	movne	r9, r5
	moveq	r9, r3
	mov	r0, #20
	mov	r2, #32
	mov	r8, #100
	mov	r6, #180
	mov	r7, #120
	str	r3, [r4, #16]
	ldr	r4, .L117+12
	str	r1, [r4, #16]
	ldr	r1, .L117+16
	str	ip, [r4]
	str	ip, [r1]
	ldr	ip, .L117+20
	str	r9, [r1, #16]
	str	r0, [r4, #4]
	ldr	r9, [lr, #156]
	str	r0, [ip]
	ldr	r0, .L117+24
	str	r5, [ip, #16]
	str	r5, [r0, #16]
	str	r8, [ip, #4]
	str	r2, [r4, #12]
	str	r6, [r0]
	str	r7, [r0, #4]
	ldr	r6, .L117+28
	ldr	r7, .L117+32
	str	r2, [r4, #8]
	ldr	r8, .L117+36
	ldr	r4, .L117+40
	cmp	r9, r5
	ldr	r5, .L117+44
	streq	r3, [ip, #16]
	str	r3, [r5, #16]
	str	r3, [r4, #16]
	str	r3, [r6, #16]
	str	r3, [r7, #16]
	str	r3, [r8, #16]
	ldr	r3, [lr, #196]
	cmp	r3, #0
	moveq	r3, #1
	mov	r10, #90
	str	r2, [r1, #12]
	str	r2, [r1, #8]
	str	r2, [ip, #12]
	str	r2, [ip, #8]
	str	r2, [r0, #12]
	str	r2, [r0, #8]
	streq	r3, [r0, #16]
	str	r10, [r1, #4]
	ldr	r3, [r8, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r8, #16]
	ldr	r3, [r4, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r7, #16]
	ldr	r3, [r6, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r6, #16]
	ldr	r3, [r5, #20]
	cmp	r3, #0
	movne	r3, #0
	mov	ip, #0
	strne	r3, [r5, #16]
	ldr	r3, .L117+48
	mov	r0, ip
	mov	r1, r3
	ldr	r4, .L117+52
	ldr	r5, .L117+56
	str	ip, [r4, #16]
	str	ip, [lr, #20]
	str	ip, [lr, #60]
	str	ip, [lr, #100]
	str	ip, [lr, #140]
	str	ip, [lr, #180]
	ldr	r4, .L117+60
	ldr	lr, .L117+64
	add	r2, r3, #1392
	str	ip, [r5, #16]
	str	ip, [r4, #16]
	str	ip, [lr, #16]
	str	ip, [lr, #56]
	add	r2, r2, #8
.L95:
	str	r0, [r1, #24]
	add	r1, r1, #28
	cmp	r2, r1
	bne	.L95
	mov	fp, #208
	mov	r10, #10
	ldr	r6, .L117+68
	mov	r7, #1
	mov	r8, #32
	str	fp, [r6]
	str	r10, [r6, #4]
	mov	fp, #42
	mov	r10, #216
	mov	r9, #8
	str	r0, [r6, #16]
	str	r7, [r6, #20]
	str	r7, [r6, #28]
	str	r0, [r6, #32]
	str	r8, [r6, #12]
	str	r8, [r6, #8]
	ldr	r6, .L117+72
	stm	r6, {r10, fp}
	ldr	r10, .L117+76
	mov	r5, r7
	str	r7, [r6, #24]
	str	r0, [r6, #16]
	str	r7, [r10, #20]
	str	r0, [r10, #16]
	mov	r7, #70
	mov	r0, #20
	mov	r1, r9
	mov	lr, #67
	mov	ip, #113
	mov	r4, #0
	stm	r10, {r0, r7}
	str	r9, [r6, #12]
	str	r8, [r10, #12]
	str	r8, [r10, #8]
	str	r9, [r6, #8]
.L96:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r4, [r3, #24]
	str	r5, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L96
	ldr	r5, .L117+80
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L117+84
	ldr	r1, .L117+88
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L117+92
	ldr	r1, .L117+96
	mov	lr, pc
	bx	r5
	ldr	r3, .L117+100
	ldr	r0, .L117+104
	ldr	r1, .L117+108
	ldr	r2, .L117+112
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L116:
	bl	initFry
	b	.L85
.L115:
	bl	initLeela
	ldr	r3, [r5]
	b	.L84
.L118:
	.align	2
.L117:
	.word	characterChoice
	.word	spaceship
	.word	treasure
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	life2
	.word	life3
	.word	life5
	.word	life4
	.word	life1
	.word	bullets
	.word	fry
	.word	leela
	.word	alien
	.word	coins
	.word	enemy
	.word	cannonball
	.word	helmet
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L149
	mov	lr, pc
	bx	r3
	bl	initCoins
	mov	r2, #0
	mov	r3, #1
	ldr	r0, .L149+4
	ldr	r1, .L149+8
	ldr	lr, [r0, #20]
	ldr	ip, [r1, #20]
	cmp	lr, r2
	moveq	r8, r3
	movne	r8, r2
	cmp	ip, r2
	moveq	ip, r3
	movne	ip, r2
	str	r8, [r0, #16]
	ldr	r0, .L149+12
	str	ip, [r1, #16]
	ldr	ip, .L149+16
	ldr	r1, [r0, #20]
	str	r2, [ip, #32]
	cmp	r1, r2
	str	r2, [ip, #44]
	ldr	r1, .L149+20
	ldr	r2, .L149+24
	str	r3, [r1, #16]
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	str	r3, [ip, #20]
	str	r3, [ip, #24]
	str	r3, [ip, #36]
	movne	r3, #0
	strne	r3, [r0, #16]
	ldr	r3, [r1, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r1, #16]
	ldr	r3, [r2, #20]
	cmp	r3, #0
	movne	r3, #0
	mov	lr, #64
	mov	r1, #203
	strne	r3, [r2, #16]
	mov	r7, #240
	mov	r3, #1
	mov	r6, #90
	mov	r5, #2
	mov	r4, #4
	mov	r0, #120
	ldr	r2, .L149+28
	str	lr, [ip, #12]
	str	lr, [ip, #8]
	ldr	lr, [r2]
	ldr	r2, .L149+32
	str	r1, [r2, #40]
	ldr	r1, .L149+36
	cmp	lr, #0
	str	r7, [ip]
	str	r6, [ip, #4]
	str	r5, [ip, #28]
	str	r4, [ip, #40]
	str	r0, [r2, #44]
	str	r3, [r2, #48]
	str	r3, [r1, #16]
	str	r3, [r1, #28]
	bne	.L125
	ldr	r3, .L149+40
	str	lr, [r3, #56]
.L126:
	ldr	r3, .L149+44
	mov	r0, #1
	mov	r2, r3
	add	r1, r3, #1392
	add	r1, r1, #8
.L127:
	str	r0, [r2, #12]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L127
	mov	r5, #0
	ldr	r4, .L149+48
	ldr	r2, .L149+52
	cmp	lr, #1
	str	r5, [r4]
	str	r0, [r2, #16]
	beq	.L148
	cmp	lr, #0
	ldreq	r2, .L149+40
	streq	r0, [r2, #16]
.L129:
	mov	lr, #1
	mov	r0, #0
	str	lr, [ip, #16]
	ldr	ip, .L149+56
	mov	r2, lr
	str	r0, [ip, #16]
	ldr	lr, .L149+60
	ldr	ip, .L149+64
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L149+68
	ldr	ip, .L149+72
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L130:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L130
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L125:
	cmp	lr, #1
	moveq	r2, #0
	ldreq	r3, .L149+76
	streq	r2, [r3, #56]
	b	.L126
.L148:
	ldr	r2, .L149+76
	str	lr, [r2, #16]
	b	.L129
.L150:
	.align	2
.L149:
	.word	hideSprites
	.word	life5
	.word	life4
	.word	life3
	.word	alien
	.word	life2
	.word	life1
	.word	characterChoice
	.word	treasure
	.word	enemy
	.word	fry
	.word	bullets
	.word	curLocation
	.word	cannonball
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
	ldr	r3, .L182
	mov	lr, pc
	bx	r3
	mov	r5, #1
	mov	r6, #0
	mov	r3, #64
	mov	ip, #240
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	ldr	r4, .L182+4
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r5, [r4, #20]
	str	r5, [r4, #24]
	str	r5, [r4, #36]
	str	r6, [r4, #16]
	str	r6, [r4, #32]
	str	r6, [r4, #44]
	bl	initCoins
	ldr	r3, .L182+8
	mov	r0, r5
	mov	r2, r3
	ldr	lr, .L182+12
	ldr	r7, .L182+16
	ldr	r8, .L182+20
	ldr	r1, .L182+24
	str	r5, [r4, #16]
	str	r6, [lr, #16]
	str	r6, [r7, #16]
	str	r6, [r8, #16]
	ldr	r9, .L182+28
	ldr	ip, .L182+32
	ldr	lr, .L182+36
	ldr	r4, .L182+40
	ldr	r7, .L182+44
	ldr	r8, .L182+48
	str	r6, [r1, #16]
	str	r6, [r9, #16]
	add	r1, r3, #1392
	str	r5, [ip, #16]
	str	r5, [lr, #16]
	str	r5, [r4, #16]
	str	r5, [r7, #16]
	str	r5, [r8, #16]
	add	r1, r1, #8
.L152:
	str	r0, [r2, #24]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L152
	ldr	r2, [r8, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r8, #16]
	ldr	r2, [r7, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r7, #16]
	ldr	r2, [r4, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r4, #16]
	ldr	r2, [lr, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [lr, #16]
	ldr	r2, [ip, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [ip, #16]
	ldr	r2, .L182+52
	ldr	r0, [r2]
	cmp	r0, #0
	bne	.L158
	ldr	r2, .L182+56
	str	r0, [r2, #56]
.L159:
	mov	r2, #1
.L160:
	str	r2, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L160
	ldr	r1, .L182+60
	ldr	r3, [r1, #84]
	ldr	lr, .L182+64
	ldr	ip, .L182+68
	add	r3, r3, #25
	cmp	r0, #1
	str	r3, [r1, #84]
	str	r2, [lr, #16]
	str	r2, [ip]
	beq	.L181
	cmp	r0, #0
	ldreq	r3, .L182+56
	streq	r2, [r3, #16]
.L162:
	mov	r2, #1
	ldr	r3, .L182+72
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L158:
	cmp	r0, #1
	moveq	ip, #0
	ldreq	r2, .L182+76
	streq	ip, [r2, #56]
	b	.L159
.L181:
	ldr	r3, .L182+76
	str	r0, [r3, #16]
	b	.L162
.L183:
	.align	2
.L182:
	.word	hideSprites
	.word	alien
	.word	bullets
	.word	spaceship
	.word	p2
	.word	p3
	.word	p4
	.word	p1
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	life5
	.word	characterChoice
	.word	fry
	.word	treasure
	.word	cannonball
	.word	curLocation
	.word	enemy
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #0
	ldr	r3, .L214
	ldr	r4, .L214+4
	mov	lr, pc
	bx	r3
	mov	r0, #8
	mov	r7, r8
	mov	r1, r4
	mov	lr, #67
	mov	ip, #113
	mov	r6, #1
	ldr	r2, .L214+8
	ldr	fp, .L214+12
	ldr	r10, .L214+16
	ldr	r9, .L214+20
	ldr	r3, .L214+24
	add	r5, r4, #1392
	str	r8, [r2, #16]
	str	r8, [r3, #16]
	str	r8, [fp, #16]
	str	r8, [r10, #16]
	str	r8, [r9, #16]
	add	r5, r5, r0
.L185:
	str	lr, [r1]
	str	ip, [r1, #4]
	str	r0, [r1, #16]
	str	r0, [r1, #20]
	str	r7, [r1, #24]
	str	r6, [r1, #12]
	add	r1, r1, #28
	cmp	r5, r1
	bne	.L185
	mov	r1, #64
	mov	lr, #240
	mov	ip, #90
	mov	r0, #2
	mov	r3, #4
	ldr	r8, .L214+28
	str	lr, [r8]
	str	ip, [r8, #4]
	str	r0, [r8, #28]
	str	r3, [r8, #40]
	str	r1, [r8, #12]
	str	r1, [r8, #8]
	str	r6, [r8, #20]
	str	r6, [r8, #24]
	str	r7, [r8, #16]
	str	r6, [r8, #36]
	str	r7, [r8, #32]
	str	r7, [r8, #44]
	bl	initCoins
	mov	r1, #1
	ldr	r2, .L214+8
	ldr	r3, .L214+24
	str	r7, [r2, #16]
	str	r7, [r3, #16]
	ldr	r0, .L214+32
	ldr	ip, .L214+36
	ldr	r2, .L214+40
	ldr	r3, .L214+44
	ldr	lr, .L214+48
	str	r6, [r8, #16]
	str	r7, [fp, #16]
	str	r7, [r10, #16]
	str	r7, [r9, #16]
	str	r6, [r0, #16]
	str	r6, [ip, #16]
	str	r6, [r2, #16]
	str	r6, [r3, #16]
	str	r6, [lr, #16]
.L186:
	str	r1, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L186
	ldr	r1, [lr, #20]
	cmp	r1, #0
	movne	r1, #0
	strne	r1, [lr, #16]
	ldr	r1, [r3, #20]
	cmp	r1, #0
	movne	r1, #0
	strne	r1, [r3, #16]
	ldr	r3, [r2, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r2, #16]
	ldr	r3, [ip, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [ip, #16]
	ldr	r3, [r0, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r0, #16]
	mov	r0, #1
	ldr	r3, .L214+52
	ldr	r1, .L214+56
	ldr	r2, [r3]
	ldr	ip, .L214+60
	ldr	r3, [r1, #124]
	cmp	r2, #0
	str	r0, [ip, #16]
	add	r3, r3, #25
	bne	.L192
	mov	lr, #2
	ldr	ip, .L214+64
	str	r3, [r1, #124]
	ldr	r3, .L214+68
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r0, [r3, #16]
.L193:
	mov	r2, #1
	ldr	r3, .L214+72
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L192:
	cmp	r2, #1
	bne	.L194
	mov	lr, #0
	mov	ip, #2
	ldr	r0, .L214+76
	str	r3, [r1, #124]
	ldr	r3, .L214+64
	str	lr, [r0, #56]
	str	r2, [r0, #16]
	str	ip, [r3]
	b	.L193
.L194:
	mov	r0, #2
	ldr	r2, .L214+64
	str	r3, [r1, #124]
	str	r0, [r2]
	b	.L193
.L215:
	.align	2
.L214:
	.word	hideSprites
	.word	bullets
	.word	spaceship
	.word	p2
	.word	p3
	.word	p4
	.word	p1
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	life5
	.word	characterChoice
	.word	treasure
	.word	cannonball
	.word	curLocation
	.word	fry
	.word	enemy
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
	mov	r5, #0
	ldr	r3, .L244
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r3, #64
	mov	r1, #2
	mov	r2, #4
	mov	ip, #240
	mov	r0, #90
	ldr	r4, .L244+4
	ldr	lr, .L244+8
	str	r5, [r4, #16]
	ldr	r4, .L244+12
	str	r5, [lr, #16]
	str	r5, [r4, #16]
	ldr	lr, .L244+16
	ldr	r4, .L244+20
	ldr	r7, .L244+24
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r5, [lr, #16]
	str	r5, [r7, #16]
	str	r5, [r4, #16]
	str	r5, [r4, #32]
	str	r5, [r4, #44]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r6, [r4, #20]
	str	r6, [r4, #24]
	str	r6, [r4, #36]
	bl	initCoins
	mov	r2, r6
	ldr	r3, .L244+28
	str	r5, [r7, #16]
	add	r1, r3, #1392
	str	r6, [r4, #16]
	add	r1, r1, #8
.L217:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L217
	ldr	lr, .L244+32
	ldr	r5, [lr, #20]
	ldr	r3, .L244+36
	ldr	r1, .L244+40
	ldr	r0, .L244+44
	ldr	ip, .L244+48
	ldr	r4, .L244+52
	cmp	r5, #0
	str	r2, [r3, #16]
	str	r2, [r1, #16]
	str	r2, [lr, #16]
	str	r2, [r0, #16]
	str	r2, [ip, #16]
	str	r2, [r4, #16]
	movne	r2, #0
	strne	r2, [lr, #16]
	ldr	r2, [ip, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [ip, #16]
	ldr	r2, [r0, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r0, #16]
	ldr	r2, [r1, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r1, #16]
	ldr	r2, [r3, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r3, #16]
	ldr	r3, .L244+56
	ldr	r1, .L244+60
	ldr	r2, [r3]
	ldr	r3, [r1, #164]
	cmp	r2, #0
	add	r3, r3, #25
	bne	.L223
	mov	lr, #3
	mov	r0, #1
	ldr	ip, .L244+64
	str	r3, [r1, #164]
	ldr	r3, .L244+68
	str	lr, [ip]
	str	r0, [r3, #16]
	str	r2, [r3, #56]
.L224:
	mov	r2, #1
	ldr	r3, .L244+72
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L223:
	cmp	r2, #1
	bne	.L225
	mov	lr, #0
	mov	ip, #3
	ldr	r0, .L244+76
	str	r3, [r1, #164]
	ldr	r3, .L244+64
	str	lr, [r0, #56]
	str	r2, [r0, #16]
	str	ip, [r3]
	b	.L224
.L225:
	mov	r0, #3
	ldr	r2, .L244+64
	str	r3, [r1, #164]
	str	r0, [r2]
	b	.L224
.L245:
	.align	2
.L244:
	.word	hideSprites
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	spaceship
	.word	bullets
	.word	life5
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	cannonball
	.word	characterChoice
	.word	treasure
	.word	curLocation
	.word	fry
	.word	enemy
	.word	leela
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
	ldr	r3, .L250
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L250+4
	ldr	lr, .L250+8
	str	r0, [ip, #16]
	ldr	ip, .L250+12
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L250+16
	ldr	ip, .L250+20
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L250+24
	ldr	ip, .L250+28
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L250+32
	ldr	ip, .L250+36
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L250+40
	ldr	ip, .L250+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L250+48
	ldr	ip, .L250+52
	ldr	r4, .L250+56
	ldr	lr, .L250+60
	add	r1, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r1, r1, #8
.L247:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L247
	ldr	r1, .L250+64
	ldr	r3, .L250+68
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	pop	{r4, lr}
	bx	lr
.L251:
	.align	2
.L250:
	.word	hideSprites
	.word	leela
	.word	alien
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	spaceship
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	bullets
	.word	coins
	.word	fry
	.word	life5
	.word	enemy
	.word	cannonball
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L268
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L268+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L253
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L253:
	ldr	r4, .L268+8
	cmp	r0, #0
	add	r6, r4, #1392
	streq	r0, [r5, #16]
	ldr	r7, .L268+12
	ldr	r8, .L268+16
	ldr	r10, .L268+20
	ldr	r9, .L268+24
	add	r6, r6, #8
	b	.L261
.L257:
	add	r4, r4, #28
	cmp	r4, r6
	beq	.L260
.L267:
	ldr	r0, [r5]
.L261:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	ip, [r4, #16]
	add	r0, r0, #40
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L257
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L257
	mov	r3, #0
	ldr	r2, [r8]
	cmp	r2, r3
	str	r3, [r5, #16]
	str	r3, [r4, #24]
	bne	.L259
	ldr	r3, [r9, #68]
	add	r4, r4, #28
	cmp	r3, #0
	streq	r0, [r9, #68]
	cmp	r4, r6
	bne	.L267
.L260:
	ldr	r2, [r5, #44]
	ldr	r3, .L268+28
	add	r2, r2, #1
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #6
	ldr	r1, [r5, #16]
	sub	r3, r2, r3, lsl #1
	orrs	r3, r3, r1
	str	r2, [r5, #44]
	bne	.L252
	mov	r4, #240
	mov	lr, #90
	mov	r2, #1
	mov	r1, #64
	mov	ip, #2
	mov	r0, #4
	stm	r5, {r4, lr}
	str	r3, [r5, #32]
	str	r3, [r5, #44]
	str	r2, [r5, #20]
	str	r2, [r5, #24]
	str	r2, [r5, #36]
	str	r2, [r5, #16]
	str	r1, [r5, #12]
	str	r1, [r5, #8]
	str	ip, [r5, #28]
	str	r0, [r5, #40]
.L252:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L259:
	cmp	r2, #1
	bne	.L257
	ldr	r3, [r10, #68]
	cmp	r3, #0
	streq	r2, [r10, #68]
	b	.L257
.L269:
	.align	2
.L268:
	.word	alien
	.word	238609294
	.word	bullets
	.word	collision
	.word	characterChoice
	.word	leela
	.word	fry
	.word	2114445439
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
	ldr	r3, .L284
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	beq	.L271
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	beq	.L283
.L273:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L284+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r2, #16]
	stm	r2, {r0, r1}
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L271:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	bne	.L273
	mov	r2, #1
.L283:
	str	r2, [r3, #28]
	b	.L273
.L285:
	.align	2
.L284:
	.word	enemy
	.word	cannonball
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
	ldr	r3, .L288
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L288+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L289:
	.align	2
.L288:
	.word	enemy
	.word	cannonball
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
	ldr	r1, .L299
	ldr	r2, .L299+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L299+8
	ldr	r8, .L299+12
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
.L293:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L295
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L295
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L295:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L293
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L300:
	.align	2
.L299:
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L332
	ldrh	r3, [r5]
	ldr	r4, .L332+4
	tst	r3, #64
	ldr	r3, [r4, #24]
	beq	.L302
	ldr	r2, .L332+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L325
.L302:
	ldmib	r4, {r0, r1}
	sub	r2, r1, #1
	add	r3, r3, #50
	add	r2, r2, r0
	add	r2, r2, r3
	rsb	r1, r1, #159
	cmp	r1, r2, asr #8
	str	r3, [r4, #24]
	movle	r3, #0
	addgt	r3, r3, r0
	strgt	r3, [r4, #4]
	strle	r3, [r4, #24]
	strle	r3, [r4, #48]
	ldr	r3, .L332+12
	ldrh	r3, [r3, #48]
	tst	r3, #4
	bne	.L305
	mov	r2, #5
	mov	r1, #1
	ldr	r3, .L332+16
	str	r1, [r4, #64]
	str	r2, [r3]
.L306:
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #56]
	asr	r3, r3, #8
	cmp	r1, r2
	str	r3, [r4, #52]
	ble	.L308
	mov	r2, #0
	ldr	r1, [r4]
	ldr	r6, .L332+20
	add	r1, r1, #1
	ldr	r0, .L332+24
	str	r1, [r4]
	ldr	r1, .L332+28
	ldr	r3, [r6]
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	ldr	r0, .L332+32
	ldr	r1, .L332+36
	cmp	r3, r2
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	beq	.L326
	cmp	r3, #1
	beq	.L327
.L310:
	cmp	r3, #2
	beq	.L328
.L311:
	cmp	r3, #3
	beq	.L329
.L308:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L332+40
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L313
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L330
.L313:
	ldrh	r3, [r5]
	tst	r3, #16
	beq	.L317
	ldr	r3, .L332+8
	ldrh	r2, [r3]
	ands	r5, r2, #16
	beq	.L331
.L317:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L325:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L302
	ldr	r2, [r4, #68]
	cmp	r2, #0
	movne	r2, #1
	subne	r3, r3, #1488
	strne	r2, [r4, #48]
	subne	r3, r3, #12
	b	.L302
.L305:
	mov	r3, #10
	mov	r0, #0
	ldr	r1, .L332+16
	mov	r2, r3
	str	r0, [r4, #64]
	str	r3, [r1]
	b	.L306
.L330:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L313
.L326:
	mov	r2, #1
	ldr	r3, .L332+44
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L310
.L327:
	ldr	r2, .L332+44
	str	r3, [r2, #100]
	add	r0, r2, #80
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #2
	bne	.L311
.L328:
	mov	r2, #1
	ldr	r3, .L332+44
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #3
	bne	.L308
.L329:
	mov	r2, #1
	ldr	r3, .L332+44
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L308
.L331:
	bl	shootBullets
	mov	r2, r5
	ldr	r3, .L332+48
	ldr	r1, .L332+52
	ldr	r0, .L332+56
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L333:
	.align	2
.L332:
	.word	oldButtons
	.word	fry
	.word	buttons
	.word	67109120
	.word	coinsNeeded
	.word	curLocation
	.word	alien
	.word	enemy
	.word	cannonball
	.word	helmet
	.word	238609294
	.word	treasure
	.word	playSoundB
	.word	16416
	.word	shot
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L364
	ldrh	r3, [r5]
	ldr	r4, .L364+4
	tst	r3, #64
	ldr	r2, [r4, #24]
	beq	.L335
	ldr	r3, .L364+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L358
.L335:
	ldr	r3, .L364+12
	ldrh	r3, [r3, #48]
	tst	r3, #4
	moveq	r1, #1
	movne	r1, #0
	moveq	r3, #5
	movne	r3, #10
	ldr	r0, .L364+16
	str	r1, [r4, #64]
	ldmib	r4, {r1, ip}
	str	r3, [r0]
	sub	r3, ip, #1
	add	r2, r2, #50
	add	r3, r3, r1
	add	r3, r3, r2
	rsb	ip, ip, #159
	cmp	ip, r3, asr #8
	movle	r3, #0
	addgt	r1, r1, r2
	str	r2, [r4, #24]
	ldr	r2, [r4, #32]
	strle	r3, [r4, #24]
	strle	r3, [r4, #48]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r2, .L364+20
	add	r3, r3, r2
	strgt	r1, [r4, #4]
	cmp	r2, r3, ror #1
	ldr	r2, [r4]
	ldr	r3, [r4, #20]
	asr	r1, r1, #8
	add	r3, r2, r3
	str	r1, [r4, #52]
	str	r3, [r4]
	bcc	.L340
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L340:
	ldr	r2, [r0]
	ldr	r1, [r4, #56]
	cmp	r1, r2
	ble	.L343
	mov	r1, #0
	add	r3, r3, #1
	ldr	r6, .L364+24
	ldr	r0, .L364+28
	str	r3, [r4]
	ldr	r3, .L364+32
	ldr	r2, [r6]
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	ldr	r0, .L364+36
	ldr	r3, .L364+40
	cmp	r2, r1
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	beq	.L359
	cmp	r2, #1
	beq	.L360
.L345:
	cmp	r2, #2
	beq	.L361
.L346:
	cmp	r2, #3
	beq	.L362
.L343:
	ldrh	r3, [r5]
	tst	r3, #16
	beq	.L350
	ldr	r3, .L364+8
	ldrh	r2, [r3]
	ands	r6, r2, #16
	beq	.L363
.L350:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L358:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L335
	ldr	r3, [r4, #68]
	cmp	r3, #0
	movne	r3, #1
	subne	r2, r2, #1488
	strne	r3, [r4, #48]
	subne	r2, r2, #12
	b	.L335
.L359:
	mov	r2, #1
	ldr	r3, .L364+44
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #1
	bne	.L345
.L360:
	ldr	r3, .L364+44
	str	r2, [r3, #100]
	add	r0, r3, #80
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #2
	bne	.L346
.L361:
	mov	r2, #1
	ldr	r3, .L364+44
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #3
	bne	.L343
.L362:
	mov	r2, #1
	ldr	r3, .L364+44
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L343
.L363:
	mov	r5, #1
	bl	shootBullets
	mov	r2, r6
	ldr	r3, .L364+48
	ldr	r1, .L364+52
	ldr	r0, .L364+56
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, r5
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L365:
	.align	2
.L364:
	.word	oldButtons
	.word	leela
	.word	buttons
	.word	67109120
	.word	coinsNeeded
	.word	238609294
	.word	curLocation
	.word	alien
	.word	enemy
	.word	cannonball
	.word	helmet
	.word	treasure
	.word	playSoundB
	.word	16416
	.word	shot
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
	ldr	r2, .L376
	ldr	r3, .L376+4
	ldr	r2, [r2, #60]
	ldr	r3, [r3, #60]
	orrs	r3, r2, r3
	bxeq	lr
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L368
	ldr	r2, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r2
	sub	r2, r3, #1
	cmp	r2, #237
	bls	.L375
.L368:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L375:
	str	r3, [r0]
	bx	lr
.L377:
	.align	2
.L376:
	.word	leela
	.word	fry
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
	ldr	r0, .L390
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L379
	ldr	r1, [r4, #28]
	cmp	r1, #9
	movgt	r1, #4
	addle	r1, r1, #1
	str	r1, [r4, #28]
.L379:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L390+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L388
.L382:
	cmp	r3, #0
	beq	.L389
.L378:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L389:
	ldr	r5, .L390+8
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
	ldr	r6, .L390+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L378
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
.L388:
	ldr	r6, .L390+16
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
	ldr	r7, .L390+12
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
	b	.L382
.L391:
	.align	2
.L390:
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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L451
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L443
	cmp	r2, #0
	moveq	r2, #512
	ldreq	r5, .L451+4
	ldrne	r5, .L451+4
	strheq	r2, [r5]	@ movhi
.L396:
	ldr	r2, .L451+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L444
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [r5, #88]	@ movhi
.L398:
	ldr	r3, .L451+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L445
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [r5, #48]	@ movhi
.L400:
	ldr	r1, .L451+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	moveq	r3, #512
	strheq	r3, [r5, #56]	@ movhi
	beq	.L402
	ldr	r3, [r1, #20]
	cmp	r3, #0
	beq	.L446
.L402:
	ldr	r3, .L451+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #64]	@ movhi
	beq	.L404
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L447
.L404:
	ldr	r3, .L451+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #72]	@ movhi
	beq	.L406
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L448
.L406:
	ldr	r3, .L451+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #128]	@ movhi
	beq	.L408
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L449
.L408:
	ldr	r3, .L451+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #136]	@ movhi
	beq	.L410
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L450
.L410:
	ldr	r3, .L451+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r5, #240]	@ movhi
	beq	.L412
	ldr	r0, [r3, #28]
	ldr	r2, [r3, #24]
	ldr	r1, [r3]
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #4]
	lsl	r2, r2, #1
	orr	r1, r1, #16384
	strh	r2, [r5, #244]	@ movhi
	strh	r1, [r5, #242]	@ movhi
	strh	r0, [r5, #240]	@ movhi
.L412:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L413
	mov	r3, #512
	strh	r3, [r5, #248]	@ movhi
.L415:
	mov	r4, #512
	mov	lr, #150
	ldr	r3, .L451+40
	ldr	r2, .L451+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L414:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #28
	strhne	lr, [r2, #4]	@ movhi
	strhne	ip, [r2]	@ movhi
	strhne	r1, [r2, #2]	@ movhi
	strheq	r4, [r2]	@ movhi
	cmp	r0, r3
	add	r2, r2, #8
	bne	.L414
	ldr	r3, .L451+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #8]	@ movhi
	beq	.L436
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #10]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r1, [r5, #12]	@ movhi
.L436:
	ldr	r3, .L451+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L419
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #156
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L451+56
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L435:
	ldr	r3, .L451+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L420
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L451+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L434:
	ldr	r3, .L451+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L421
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #284
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L451+72
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L433:
	mov	r6, #512
	mov	r4, #152
	ldr	r3, .L451+76
	ldr	r2, .L451+4
	ldr	lr, .L451+80
	add	r0, r3, #200
.L424:
	ldr	r1, [r3, #20]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #40
	orrne	r1, r1, lr
	strhne	r4, [r2, #148]	@ movhi
	strhne	r1, [r2, #146]	@ movhi
	strhne	ip, [r2, #144]	@ movhi
	strheq	r6, [r2, #144]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L424
	ldr	r3, .L451+84
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #16]	@ movhi
	beq	.L432
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	strh	r1, [r5, #20]	@ movhi
.L432:
	ldr	r3, .L451+88
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #24]	@ movhi
	beq	.L431
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #26]	@ movhi
	strh	r3, [r5, #24]	@ movhi
	strh	r1, [r5, #28]	@ movhi
.L431:
	ldr	r3, .L451+92
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #32]	@ movhi
	beq	.L430
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #34]	@ movhi
	strh	r3, [r5, #32]	@ movhi
	strh	r1, [r5, #36]	@ movhi
.L430:
	ldr	r3, .L451+96
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #40]	@ movhi
	beq	.L429
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #42]	@ movhi
	strh	r3, [r5, #40]	@ movhi
	strh	r1, [r5, #44]	@ movhi
.L429:
	ldr	r3, .L451+100
	mov	lr, pc
	bx	r3
	ldr	r4, .L451+104
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L451+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L451+108
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L451+112
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L421:
	mov	r2, #512
	ldr	r3, .L451+72
	strh	r2, [r3]	@ movhi
	b	.L433
.L420:
	mov	r2, #512
	ldr	r3, .L451+64
	strh	r2, [r3]	@ movhi
	b	.L434
.L419:
	mov	r2, #512
	ldr	r3, .L451+56
	strh	r2, [r3]	@ movhi
	b	.L435
.L413:
	ldr	r0, [r3, #68]
	ldr	r2, [r3, #64]
	ldr	r1, [r3, #40]
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #44]
	lsl	r3, r2, #1
	orr	r2, r1, #16384
	strh	r3, [r5, #252]	@ movhi
	strh	r2, [r5, #250]	@ movhi
	strh	r0, [r5, #248]	@ movhi
	b	.L415
.L450:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #138]	@ movhi
	strh	r0, [r5, #136]	@ movhi
	strh	r1, [r5, #140]	@ movhi
	b	.L410
.L449:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #130]	@ movhi
	strh	r0, [r5, #128]	@ movhi
	strh	r1, [r5, #132]	@ movhi
	b	.L408
.L448:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #74]	@ movhi
	strh	r0, [r5, #72]	@ movhi
	strh	r1, [r5, #76]	@ movhi
	b	.L406
.L447:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #66]	@ movhi
	strh	r0, [r5, #64]	@ movhi
	strh	r1, [r5, #68]	@ movhi
	b	.L404
.L446:
	mov	r2, #148
	ldr	r3, [r1]
	ldr	r1, [r1, #4]
	orr	r3, r3, #16384
	strh	r3, [r5, #58]	@ movhi
	strh	r1, [r5, #56]	@ movhi
	strh	r2, [r5, #60]	@ movhi
	b	.L402
.L445:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r5, #50]	@ movhi
	strh	r2, [r5, #52]	@ movhi
	strh	r0, [r5, #48]	@ movhi
	b	.L400
.L444:
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r2, #36]
	ldr	r3, [r2, #28]
	add	r3, r3, r0, lsl #5
	ldr	r0, [r2, #52]
	lsl	r3, r3, #3
	strh	r1, [r5, #90]	@ movhi
	strh	r3, [r5, #92]	@ movhi
	strh	r0, [r5, #88]	@ movhi
	b	.L398
.L443:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r5, .L451+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [r5, #2]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	b	.L396
.L452:
	.align	2
.L451:
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
	.word	cannonball
	.word	shadowOAM+288
	.word	helmet
	.word	shadowOAM+296
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r2, #10
	ldr	r5, .L459
	ldr	lr, .L459+4
	ldr	ip, .L459+8
	ldr	r0, .L459+12
	ldr	r1, .L459+16
	ldr	r6, .L459+20
	ldr	r3, .L459+24
	str	r4, [r5, #16]
	ldr	r5, .L459+28
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	ldr	lr, .L459+32
	ldr	ip, .L459+36
	str	r4, [r0, #16]
	str	r4, [r6, #16]
	ldr	r0, .L459+40
	ldr	r8, .L459+44
	ldr	r7, .L459+48
	str	r4, [r1, #16]
	str	r4, [r3, #16]
	ldr	r1, .L459+52
	ldr	r3, .L459+56
	ldr	r6, .L459+60
	str	r4, [r5, #20]
	str	r4, [r5, #60]
	str	r4, [r5, #100]
	str	r4, [r5, #140]
	str	r4, [r5, #180]
	str	r2, [r3]
	str	r4, [r8, #16]
	str	r4, [r7, #16]
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r1]
	str	r4, [r6, #16]
	bl	initLives
	mov	r2, #1
	mov	r3, r5
	mov	r8, r2
	mov	r7, #200
	mov	lr, #100
	mov	r0, #32
	mov	ip, #500
.L454:
	add	r1, r2, r2, lsl #2
	add	r2, r2, #1
	add	r1, r5, r1, lsl #3
	cmp	r2, #5
	str	r7, [r3, #40]
	str	lr, [r3, #44]
	str	r4, [r3, #60]
	str	r0, [r3, #56]
	str	r0, [r3, #52]
	str	r4, [r1, #24]
	add	r3, r3, #40
	str	r8, [r3, #8]
	str	r4, [r3, #28]
	str	ip, [r3, #32]
	str	r4, [r3, #36]
	bne	.L454
	mov	r2, #8
	mov	ip, #67
	mov	r0, #113
	mov	r4, #0
	mov	r5, #1
	ldr	r3, .L459+64
	add	r1, r3, #1392
	add	r1, r1, r2
.L455:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	r5, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L455
	ldr	r3, .L459+68
	mov	lr, pc
	bx	r3
	mov	r3, #64
	mov	ip, #240
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	str	r5, [r6, #20]
	str	r5, [r6, #24]
	str	r4, [r6, #16]
	str	r5, [r6, #36]
	str	r4, [r6, #32]
	str	r4, [r6, #44]
	str	ip, [r6]
	str	r0, [r6, #4]
	str	r3, [r6, #12]
	str	r3, [r6, #8]
	str	r1, [r6, #28]
	str	r2, [r6, #40]
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawGame
.L460:
	.align	2
.L459:
	.word	p4
	.word	leela
	.word	fry
	.word	p1
	.word	p2
	.word	p3
	.word	spaceship
	.word	treasure
	.word	life3
	.word	life4
	.word	life5
	.word	life1
	.word	life2
	.word	lifeCounter
	.word	coinsNeeded
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
	ldr	r2, .L474
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L474+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r3, .L474+8
	ldr	r1, [r3]
	ldreq	r2, [r3, #20]
	addeq	r1, r1, r2
	ldr	r2, .L474+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #32
	ldreq	r2, [r3, #20]
	subeq	r1, r1, r2
	ldr	r2, .L474+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #64
	ldreq	r0, [r3, #24]
	ldr	r2, [r3, #4]
	subeq	r2, r2, r0
	ldr	r0, .L474+4
	ldrh	r0, [r0, #48]
	streq	r2, [r3, #4]
	tst	r0, #128
	ldreq	r0, [r3, #24]
	addeq	r2, r2, r0
	streq	r2, [r3, #4]
	cmp	r1, #0
	moveq	r0, #1
	moveq	r1, r0
	streq	r0, [r3]
	ldr	r0, [r3, #12]
	add	r0, r1, r0
	cmp	r0, #239
	subeq	r1, r1, #1
	streq	r1, [r3]
	cmp	r2, #0
	moveq	r1, #1
	moveq	r2, r1
	streq	r1, [r3, #4]
	ldr	r1, [r3, #8]
	add	r1, r2, r1
	cmp	r1, #159
	subeq	r2, r2, #1
	streq	r2, [r3, #4]
	ldr	r3, .L474+12
	ldr	r2, [r3, #76]
	cmp	r2, #1
	beq	.L473
.L461:
	pop	{r4, lr}
	bx	lr
.L473:
	ldr	r2, [r3, #116]
	cmp	r2, #1
	bne	.L461
	ldr	r2, [r3, #156]
	cmp	r2, #1
	bne	.L461
	ldr	r3, [r3, #196]
	cmp	r3, #1
	ldreq	r2, .L474+16
	streq	r3, [r2]
	b	.L461
.L475:
	.align	2
.L474:
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
	ldr	r3, .L480
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L480+4
	ldr	lr, .L480+8
	ldr	r3, .L480+12
	str	r0, [lr, #16]
	ldr	r4, .L480+16
	ldr	lr, .L480+20
	str	r0, [ip, #16]
	ldr	ip, .L480+24
	add	r1, r3, #1392
	str	r0, [r4, #16]
	str	r0, [ip, #20]
	str	r0, [ip, #60]
	str	r0, [ip, #100]
	str	r0, [ip, #140]
	str	r0, [ip, #180]
	str	r0, [lr, #16]
	str	r0, [lr, #56]
	add	r1, r1, #8
.L477:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L477
	ldr	r0, .L480+28
	ldr	r1, .L480+32
	ldr	r3, .L480+36
	pop	{r4, lr}
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	b	drawGame
.L481:
	.align	2
.L480:
	.word	hideSprites
	.word	leela
	.word	alien
	.word	bullets
	.word	fry
	.word	coins
	.word	treasure
	.word	enemy
	.word	helmet
	.word	cannonball
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
	ldr	r3, .L486
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L486+4
	ldr	ip, .L486+8
	str	r0, [lr, #16]
	ldr	lr, .L486+12
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L486+16
	ldr	lr, .L486+20
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L486+24
	ldr	lr, .L486+28
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L486+32
	ldr	lr, .L486+36
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L486+40
	ldr	lr, .L486+44
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L486+48
	ldr	lr, .L486+52
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L486+56
	ldr	lr, .L486+60
	ldr	r3, .L486+64
	str	r0, [lr, #16]
	ldr	r4, .L486+68
	ldr	lr, .L486+72
	str	r0, [ip, #16]
	ldr	ip, .L486+76
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [ip, #20]
	str	r0, [ip, #60]
	str	r0, [ip, #100]
	str	r0, [ip, #140]
	str	r0, [ip, #180]
	str	r0, [lr, #16]
	str	r0, [lr, #56]
	add	r2, r2, #8
.L483:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L483
	pop	{r4, lr}
	b	drawGame
.L487:
	.align	2
.L486:
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
	.word	enemy
	.word	helmet
	.word	cannonball
	.word	bullets
	.word	fry
	.word	coins
	.word	treasure
	.size	initWin, .-initWin
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L509
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #16
	beq	.L488
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #8]
	add	r3, r3, r1
	add	r1, r3, r2
	cmp	r1, #159
	str	r3, [r4, #4]
	beq	.L506
.L491:
	str	r2, [sp, #12]
	str	r3, [sp, #4]
	ldr	r5, .L509+4
	ldr	lr, [r4, #12]
	ldr	ip, [r4]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldm	r5, {r0, r1}
	ldr	r6, .L509+8
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L507
.L492:
	add	r7, r4, #8
	ldm	r7, {r7, ip}
	ldr	r5, .L509+12
	ldr	lr, [r4, #4]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #52]
	ldr	r0, [r5]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r7, [sp, #12]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L493
.L496:
	ldr	r3, .L509+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L508
	cmp	r3, #0
	ldreq	r2, .L509+20
	streq	r3, [r2, #68]
.L488:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L506:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L509+24
	str	r1, [r4, #16]
	str	r2, [r3, #32]
	bl	drawGame
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	b	.L491
.L507:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L492
	ldr	r3, [r4, #16]
	cmp	r3, #0
	movne	r2, #0
	ldrne	r3, .L509+24
	strne	r2, [r4, #16]
	strne	r0, [r3, #32]
	b	.L492
.L493:
	ldr	r0, .L509+20
	ldr	r8, [r4, #8]
	ldr	r7, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r1, [r0, #52]
	ldr	r0, [r0]
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L496
	b	.L488
.L508:
	mov	r3, #0
	str	r3, [r5, #68]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L510:
	.align	2
.L509:
	.word	cannonball
	.word	helmet
	.word	collision
	.word	leela
	.word	characterChoice
	.word	fry
	.word	enemy
	.size	updateCannonball, .-updateCannonball
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
	ldr	r5, .L571
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L571+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L571+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L512
.L514:
	ldr	r0, [r4]
.L513:
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
	beq	.L515
.L517:
	ldr	r0, [r4]
.L516:
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
	mov	r3, r0
	beq	.L518
.L520:
	ldr	r0, [r4]
.L519:
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
	mov	r3, r0
	beq	.L521
.L523:
	ldr	r0, [r4]
.L522:
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
	beq	.L569
.L524:
	ldr	r5, .L571+12
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
	beq	.L525
.L527:
	ldr	r0, [r4]
.L526:
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
	beq	.L528
.L530:
	ldr	r0, [r4]
.L529:
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
	beq	.L531
.L533:
	ldr	r0, [r4]
.L532:
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
	beq	.L534
.L536:
	ldr	r0, [r4]
.L535:
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
	beq	.L570
.L511:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L512:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L514
	ldr	ip, .L571+16
	ldr	r1, .L571+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L514
	mov	r3, r0
	mov	lr, #190
	ldr	r1, .L571+24
	mov	r0, lr
	str	r3, [ip]
	str	lr, [r4]
	str	r2, [r1, #16]
	str	r3, [r1, #20]
	b	.L513
.L570:
	ldr	r3, .L571+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L511
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L511
	ldr	r3, .L571+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L511
	mov	r0, #0
	ldr	r2, .L571+28
	ldr	r1, .L571+32
	str	r0, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r1]
	b	.L511
.L534:
	ldr	r3, .L571+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L536
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L536
	ldr	r2, .L571+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L536
	mov	r1, #190
	mov	ip, #0
	mov	lr, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L571+36
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L535
.L531:
	ldr	r3, .L571+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L533
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L533
	ldr	r2, .L571+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L533
	mov	r1, #190
	mov	ip, #0
	mov	lr, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L571+40
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L532
.L528:
	ldr	r3, .L571+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L530
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L530
	ldr	r2, .L571+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L530
	mov	r1, #190
	mov	ip, #0
	mov	lr, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L571+44
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L529
.L525:
	ldr	r2, .L571+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L527
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L527
	ldr	r1, .L571+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L527
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L571+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	b	.L526
.L569:
	ldr	r3, .L571+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L524
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L524
	ldr	r3, .L571+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L571+28
	ldreq	r1, .L571+32
	streq	r3, [r2, #16]
	streq	r0, [r2, #20]
	streq	r0, [r1]
	b	.L524
.L521:
	ldr	r2, .L571+16
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L523
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L523
	ldr	r1, .L571+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L523
	mov	ip, #190
	mov	lr, #4
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L571+36
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L522
.L518:
	ldr	r2, .L571+16
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L520
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L520
	ldr	r1, .L571+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L520
	mov	ip, #190
	mov	lr, #3
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L571+40
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L519
.L515:
	ldr	r2, .L571+16
	ldr	r3, [r2]
	cmp	r3, #1
	bne	.L517
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L517
	ldr	r1, .L571+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L517
	mov	ip, #190
	mov	lr, #2
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L571+44
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L516
.L572:
	.align	2
.L571:
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
	ldr	r2, .L577
	ldrh	r3, [r2]
	ldr	r0, .L577+4
	push	{r4, lr}
	ldr	r1, .L577+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L577+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L574:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L574
	bl	updateEnemy
	bl	updateLives
	bl	updateCannonball
	ldr	r3, .L577+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L577+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L577+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L577+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L578:
	.align	2
.L577:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	67109120
	.word	helmet
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
	ldr	r2, .L583
	ldrh	r3, [r2]
	ldr	r0, .L583+4
	push	{r4, lr}
	ldr	r1, .L583+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L583+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L580:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L580
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L583+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L583+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L583+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L583+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L584:
	.align	2
.L583:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	67109120
	.word	helmet
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
	ldr	r2, .L589
	ldrh	r3, [r2]
	ldr	r0, .L589+4
	push	{r4, lr}
	ldr	r1, .L589+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L589+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L586:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L586
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L589+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L589+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L589+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L589+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L590:
	.align	2
.L589:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	67109120
	.word	helmet
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
	@ link register save eliminated.
	b	updatePlanet3
	.size	updatePlanet4, .-updatePlanet4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	characterChoice,4,4
	.comm	prevTreasureNum,4,4
	.comm	treasureNum,4,4
	.comm	isWon,4,4
	.comm	isLost,4,4
	.comm	prevState,4,4
	.comm	coinsNeeded,4,4
	.comm	life4Counter,4,4
	.comm	life3Counter,4,4
	.comm	life2Counter,4,4
	.comm	life1Counter,4,4
	.comm	lifeCounter,4,4
	.global	ground
	.comm	curLocation,4,4
	.comm	cannonball,28,4
	.comm	enemy,36,4
	.comm	helmet,28,4
	.comm	treasure,200,4
	.comm	treasureP1,40,4
	.comm	bullet,28,4
	.comm	bullets,1400,4
	.comm	coins,80,4
	.comm	life5,24,4
	.comm	life4,24,4
	.comm	life3,24,4
	.comm	life2,24,4
	.comm	life1,24,4
	.comm	p4,28,4
	.comm	p3,28,4
	.comm	p2,28,4
	.comm	p1,28,4
	.comm	alien,48,4
	.comm	spaceship,28,4
	.comm	leela,72,4
	.comm	fry,72,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.type	ground, %object
	.size	ground, 4
ground:
	.word	154
	.ident	"GCC: (devkitARM release 53) 9.1.0"
