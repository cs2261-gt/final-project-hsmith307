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
	mov	r4, #3
	mov	lr, #23040
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L28
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
	str	r2, [r3, #60]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
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
	mov	r4, #3
	mov	lr, #23040
	mov	r0, #1
	mov	r1, #64
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
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
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
	mov	r0, #4352
	mov	r3, #67108864
	mov	r2, #1
	mov	r1, #32
	mov	ip, #104
	mov	lr, #64
	strh	r0, [r3]	@ movhi
	ldr	r3, .L119
	ldr	r3, [r3]
	ldr	r0, .L119+4
	cmp	r3, r2
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	ip, [r0]
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	str	lr, [r0, #4]
	beq	.L117
	cmp	r3, #0
	bne	.L118
	mov	ip, #4
	mov	r5, #3
	mov	r4, #23040
	ldr	r1, .L119+8
	str	ip, [r1, #40]
	str	r5, [r1]
	str	r2, [r1, #20]
	str	r2, [r1, #24]
	str	lr, [r1, #12]
	str	lr, [r1, #8]
	str	r3, [r1, #28]
	str	r3, [r1, #36]
	str	r3, [r1, #32]
	str	r3, [r1, #48]
	str	r3, [r1, #56]
	str	r3, [r1, #60]
	str	r4, [r1, #4]
	ldr	ip, .L119+12
.L85:
	mov	lr, #0
	mov	r4, #1
	ldr	r3, .L119+16
	ldr	r5, [r3, #76]
	ldr	r2, [r3, #116]
	cmp	r5, lr
	movne	fp, lr
	moveq	fp, r4
	mov	r6, #200
	cmp	r2, lr
	movne	r9, lr
	moveq	r9, r4
	mov	r5, #20
	mov	r2, #32
	str	r4, [r0, #16]
	ldr	r0, .L119+20
	ldr	r4, .L119+24
	str	r6, [r0]
	str	r6, [r4]
	ldr	r6, .L119+28
	str	r9, [r4, #16]
	ldr	r9, [r3, #156]
	str	r5, [r0, #4]
	str	r5, [r6]
	ldr	r5, .L119+32
	cmp	r9, lr
	str	r2, [r0, #12]
	str	r2, [r0, #8]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
	str	r2, [r6, #12]
	str	r2, [r6, #8]
	str	r2, [r5, #12]
	str	r2, [r5, #8]
	moveq	r2, #1
	str	lr, [r6, #16]
	streq	r2, [r6, #16]
	ldr	r2, [r3, #196]
	cmp	r2, #0
	moveq	r2, #1
	mov	r8, #100
	mov	r7, #180
	str	lr, [r5, #16]
	mov	r10, #90
	mov	lr, #120
	streq	r2, [r5, #16]
	mov	r2, #1
	str	r8, [r6, #4]
	ldr	r6, .L119+36
	str	r7, [r5]
	ldr	r7, [r6, #20]
	str	fp, [r0, #16]
	str	lr, [r5, #4]
	ldr	r0, .L119+40
	ldr	lr, .L119+44
	ldr	r5, .L119+48
	str	r10, [r4, #4]
	ldr	r4, .L119+52
	cmp	r7, #0
	str	r2, [r6, #16]
	str	r2, [r0, #16]
	str	r2, [lr, #16]
	str	r2, [r4, #16]
	str	r2, [r5, #16]
	movne	r2, #0
	strne	r2, [r6, #16]
	ldr	r2, [r5, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r5, #16]
	ldr	r2, [r4, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r4, #16]
	ldr	r2, [lr, #20]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [lr, #16]
	ldr	r2, [r0, #20]
	cmp	r2, #0
	movne	r2, #0
	mov	r5, #0
	strne	r2, [r0, #16]
	ldr	r2, .L119+56
	mov	lr, r5
	mov	r4, r2
	str	r5, [r1, #16]
	ldr	r6, .L119+60
	ldr	r1, .L119+64
	add	r0, r2, #1392
	str	r5, [ip, #16]
	str	r5, [r3, #20]
	str	r5, [r3, #60]
	str	r5, [r3, #100]
	str	r5, [r3, #140]
	str	r5, [r3, #180]
	str	r5, [r6, #16]
	str	r5, [r1, #16]
	str	r5, [r1, #56]
	add	r0, r0, #8
.L95:
	str	lr, [r4, #24]
	add	r4, r4, #28
	cmp	r4, r0
	bne	.L95
	mov	fp, #208
	mov	r10, #10
	ldr	r6, .L119+68
	mov	r7, #1
	mov	r8, #32
	str	fp, [r6]
	str	r10, [r6, #4]
	mov	fp, #42
	mov	r10, #216
	mov	r9, #8
	str	lr, [r6, #16]
	str	r7, [r6, #20]
	str	r7, [r6, #28]
	str	lr, [r6, #32]
	str	r8, [r6, #12]
	str	r8, [r6, #8]
	ldr	r6, .L119+72
	stm	r6, {r10, fp}
	ldr	r10, .L119+76
	mov	r5, r7
	str	r7, [r6, #24]
	str	lr, [r6, #16]
	str	r7, [r10, #20]
	str	lr, [r10, #16]
	mov	r7, #20
	mov	lr, #70
	mov	r3, r9
	mov	ip, #67
	mov	r1, #113
	mov	r4, #0
	stm	r10, {r7, lr}
	str	r9, [r6, #12]
	str	r8, [r10, #12]
	str	r8, [r10, #8]
	str	r9, [r6, #8]
.L96:
	str	ip, [r2]
	str	r1, [r2, #4]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r4, [r2, #24]
	str	r5, [r2, #12]
	add	r2, r2, #28
	cmp	r2, r0
	bne	.L96
	ldr	r5, .L119+80
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L119+84
	ldr	r1, .L119+88
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L119+92
	ldr	r1, .L119+96
	mov	lr, pc
	bx	r5
	ldr	r3, .L119+100
	ldr	r0, .L119+104
	ldr	r1, .L119+108
	ldr	r2, .L119+112
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L117:
	mov	r1, #0
	mov	r5, #3
	mov	r4, #23040
	mov	r2, #4
	ldr	ip, .L119+12
	str	r1, [ip, #20]
	str	r1, [ip, #36]
	str	r1, [ip, #32]
	str	r1, [ip, #44]
	str	r1, [ip, #48]
	str	r1, [ip, #56]
	str	r1, [ip, #60]
	str	r5, [ip]
	str	r3, [ip, #24]
	str	lr, [ip, #12]
	str	lr, [ip, #8]
	str	r3, [ip, #28]
	str	r4, [ip, #4]
	str	r2, [ip, #40]
	ldr	r1, .L119+8
	b	.L85
.L118:
	ldr	ip, .L119+12
	ldr	r1, .L119+8
	b	.L85
.L120:
	.align	2
.L119:
	.word	characterChoice
	.word	spaceship
	.word	fry
	.word	leela
	.word	treasure
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	life5
	.word	life1
	.word	life2
	.word	life4
	.word	life3
	.word	bullets
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
	ldr	r3, .L151
	mov	lr, pc
	bx	r3
	bl	initCoins
	mov	r2, #0
	mov	r3, #1
	ldr	r0, .L151+4
	ldr	r1, .L151+8
	ldr	lr, [r0, #20]
	ldr	ip, [r1, #20]
	cmp	lr, r2
	moveq	r8, r3
	movne	r8, r2
	cmp	ip, r2
	moveq	ip, r3
	movne	ip, r2
	str	r8, [r0, #16]
	ldr	r0, .L151+12
	str	ip, [r1, #16]
	ldr	ip, .L151+16
	ldr	r1, [r0, #20]
	str	r2, [ip, #32]
	cmp	r1, r2
	str	r2, [ip, #44]
	ldr	r1, .L151+20
	ldr	r2, .L151+24
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
	ldr	r2, .L151+28
	str	lr, [ip, #12]
	str	lr, [ip, #8]
	ldr	lr, [r2]
	ldr	r2, .L151+32
	str	r1, [r2, #40]
	ldr	r1, .L151+36
	cmp	lr, #0
	str	r7, [ip]
	str	r6, [ip, #4]
	str	r5, [ip, #28]
	str	r4, [ip, #40]
	str	r0, [r2, #44]
	str	r3, [r2, #48]
	str	r3, [r1, #16]
	str	r3, [r1, #28]
	bne	.L127
	ldr	r3, .L151+40
	str	lr, [r3, #56]
.L128:
	ldr	r3, .L151+44
	mov	r0, #1
	mov	r2, r3
	add	r1, r3, #1392
	add	r1, r1, #8
.L129:
	str	r0, [r2, #12]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L129
	mov	r5, #0
	ldr	r4, .L151+48
	ldr	r2, .L151+52
	cmp	lr, #1
	str	r5, [r4]
	str	r0, [r2, #16]
	beq	.L150
	cmp	lr, #0
	ldreq	r2, .L151+40
	streq	r0, [r2, #16]
.L131:
	mov	lr, #1
	mov	r0, #0
	str	lr, [ip, #16]
	ldr	ip, .L151+56
	mov	r2, lr
	str	r0, [ip, #16]
	ldr	lr, .L151+60
	ldr	ip, .L151+64
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L151+68
	ldr	ip, .L151+72
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L132:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L132
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L127:
	cmp	lr, #1
	moveq	r2, #0
	ldreq	r3, .L151+76
	streq	r2, [r3, #56]
	b	.L128
.L150:
	ldr	r2, .L151+76
	str	lr, [r2, #16]
	b	.L131
.L152:
	.align	2
.L151:
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
	ldr	r3, .L184
	mov	lr, pc
	bx	r3
	mov	r5, #1
	mov	r6, #0
	mov	r3, #64
	mov	ip, #240
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	ldr	r4, .L184+4
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
	ldr	r3, .L184+8
	mov	r0, r5
	mov	r2, r3
	ldr	lr, .L184+12
	ldr	r7, .L184+16
	ldr	r8, .L184+20
	ldr	r1, .L184+24
	str	r5, [r4, #16]
	str	r6, [lr, #16]
	str	r6, [r7, #16]
	str	r6, [r8, #16]
	ldr	r9, .L184+28
	ldr	ip, .L184+32
	ldr	lr, .L184+36
	ldr	r4, .L184+40
	ldr	r7, .L184+44
	ldr	r8, .L184+48
	str	r6, [r1, #16]
	str	r6, [r9, #16]
	add	r1, r3, #1392
	str	r5, [ip, #16]
	str	r5, [lr, #16]
	str	r5, [r4, #16]
	str	r5, [r7, #16]
	str	r5, [r8, #16]
	add	r1, r1, #8
.L154:
	str	r0, [r2, #24]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L154
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
	ldr	r2, .L184+52
	ldr	r0, [r2]
	cmp	r0, #0
	bne	.L160
	ldr	r2, .L184+56
	str	r0, [r2, #56]
.L161:
	mov	r2, #1
.L162:
	str	r2, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L162
	ldr	r1, .L184+60
	ldr	r3, [r1, #84]
	ldr	lr, .L184+64
	ldr	ip, .L184+68
	add	r3, r3, #25
	cmp	r0, #1
	str	r3, [r1, #84]
	str	r2, [lr, #16]
	str	r2, [ip]
	beq	.L183
	cmp	r0, #0
	ldreq	r3, .L184+56
	streq	r2, [r3, #16]
.L164:
	mov	r2, #1
	ldr	r3, .L184+72
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L160:
	cmp	r0, #1
	moveq	ip, #0
	ldreq	r2, .L184+76
	streq	ip, [r2, #56]
	b	.L161
.L183:
	ldr	r3, .L184+76
	str	r0, [r3, #16]
	b	.L164
.L185:
	.align	2
.L184:
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
	ldr	r3, .L216
	ldr	r4, .L216+4
	mov	lr, pc
	bx	r3
	mov	r0, #8
	mov	r7, r8
	mov	r1, r4
	mov	lr, #67
	mov	ip, #113
	mov	r6, #1
	ldr	r2, .L216+8
	ldr	fp, .L216+12
	ldr	r10, .L216+16
	ldr	r9, .L216+20
	ldr	r3, .L216+24
	add	r5, r4, #1392
	str	r8, [r2, #16]
	str	r8, [r3, #16]
	str	r8, [fp, #16]
	str	r8, [r10, #16]
	str	r8, [r9, #16]
	add	r5, r5, r0
.L187:
	str	lr, [r1]
	str	ip, [r1, #4]
	str	r0, [r1, #16]
	str	r0, [r1, #20]
	str	r7, [r1, #24]
	str	r6, [r1, #12]
	add	r1, r1, #28
	cmp	r5, r1
	bne	.L187
	mov	r1, #64
	mov	lr, #240
	mov	ip, #90
	mov	r0, #2
	mov	r3, #4
	ldr	r8, .L216+28
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
	ldr	r2, .L216+8
	ldr	r3, .L216+24
	str	r7, [r2, #16]
	str	r7, [r3, #16]
	ldr	r0, .L216+32
	ldr	ip, .L216+36
	ldr	r2, .L216+40
	ldr	r3, .L216+44
	ldr	lr, .L216+48
	str	r6, [r8, #16]
	str	r7, [fp, #16]
	str	r7, [r10, #16]
	str	r7, [r9, #16]
	str	r6, [r0, #16]
	str	r6, [ip, #16]
	str	r6, [r2, #16]
	str	r6, [r3, #16]
	str	r6, [lr, #16]
.L188:
	str	r1, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L188
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
	ldr	r3, .L216+52
	ldr	r1, .L216+56
	ldr	r2, [r3]
	ldr	ip, .L216+60
	ldr	r3, [r1, #124]
	cmp	r2, #0
	str	r0, [ip, #16]
	add	r3, r3, #25
	bne	.L194
	mov	lr, #2
	ldr	ip, .L216+64
	str	r3, [r1, #124]
	ldr	r3, .L216+68
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r0, [r3, #16]
.L195:
	mov	r2, #1
	ldr	r3, .L216+72
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L194:
	cmp	r2, #1
	bne	.L196
	mov	lr, #0
	mov	ip, #2
	ldr	r0, .L216+76
	str	r3, [r1, #124]
	ldr	r3, .L216+64
	str	lr, [r0, #56]
	str	r2, [r0, #16]
	str	ip, [r3]
	b	.L195
.L196:
	mov	r0, #2
	ldr	r2, .L216+64
	str	r3, [r1, #124]
	str	r0, [r2]
	b	.L195
.L217:
	.align	2
.L216:
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
	ldr	r3, .L246
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r3, #64
	mov	r1, #2
	mov	r2, #4
	mov	ip, #240
	mov	r0, #90
	ldr	r4, .L246+4
	ldr	lr, .L246+8
	str	r5, [r4, #16]
	ldr	r4, .L246+12
	str	r5, [lr, #16]
	str	r5, [r4, #16]
	ldr	lr, .L246+16
	ldr	r4, .L246+20
	ldr	r7, .L246+24
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
	ldr	r3, .L246+28
	str	r5, [r7, #16]
	add	r1, r3, #1392
	str	r6, [r4, #16]
	add	r1, r1, #8
.L219:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L219
	ldr	lr, .L246+32
	ldr	r5, [lr, #20]
	ldr	r3, .L246+36
	ldr	r1, .L246+40
	ldr	r0, .L246+44
	ldr	ip, .L246+48
	ldr	r4, .L246+52
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
	ldr	r3, .L246+56
	ldr	r1, .L246+60
	ldr	r2, [r3]
	ldr	r3, [r1, #164]
	cmp	r2, #0
	add	r3, r3, #25
	bne	.L225
	mov	lr, #3
	mov	r0, #1
	ldr	ip, .L246+64
	str	r3, [r1, #164]
	ldr	r3, .L246+68
	str	lr, [ip]
	str	r0, [r3, #16]
	str	r2, [r3, #56]
.L226:
	mov	r2, #1
	ldr	r3, .L246+72
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L225:
	cmp	r2, #1
	bne	.L227
	mov	lr, #0
	mov	ip, #3
	ldr	r0, .L246+76
	str	r3, [r1, #164]
	ldr	r3, .L246+64
	str	lr, [r0, #56]
	str	r2, [r0, #16]
	str	ip, [r3]
	b	.L226
.L227:
	mov	r0, #3
	ldr	r2, .L246+64
	str	r3, [r1, #164]
	str	r0, [r2]
	b	.L226
.L247:
	.align	2
.L246:
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
	ldr	r3, .L252
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L252+4
	ldr	lr, .L252+8
	str	r0, [ip, #16]
	ldr	ip, .L252+12
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L252+16
	ldr	ip, .L252+20
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L252+24
	ldr	ip, .L252+28
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L252+32
	ldr	ip, .L252+36
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L252+40
	ldr	ip, .L252+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L252+48
	ldr	ip, .L252+52
	ldr	r4, .L252+56
	ldr	lr, .L252+60
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L249:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L249
	ldr	r3, .L252+64
	pop	{r4, lr}
	str	r1, [r3, #16]
	bx	lr
.L253:
	.align	2
.L252:
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
	ldr	r5, .L267
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L267+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L255
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L255:
	ldr	r4, .L267+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L267+12
	add	r6, r6, #8
	b	.L260
.L266:
	ldr	r0, [r5]
.L260:
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
	bne	.L258
	ldr	r3, [r4, #24]
	cmp	r3, #0
	strne	r8, [r5, #16]
	strne	r8, [r4, #24]
.L258:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L266
	ldr	r2, [r5, #44]
	ldr	r3, .L267+16
	add	r2, r2, #1
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #6
	ldr	r1, [r5, #16]
	sub	r3, r2, r3, lsl #1
	orrs	r3, r3, r1
	str	r2, [r5, #44]
	bne	.L254
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
.L254:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L268:
	.align	2
.L267:
	.word	alien
	.word	238609294
	.word	bullets
	.word	collision
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
	ldr	r3, .L283
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	beq	.L270
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	beq	.L282
.L272:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L283+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r2, #16]
	stm	r2, {r0, r1}
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L270:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	bne	.L272
	mov	r2, #1
.L282:
	str	r2, [r3, #28]
	b	.L272
.L284:
	.align	2
.L283:
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
	ldr	r3, .L287
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L287+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L288:
	.align	2
.L287:
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
	ldr	r1, .L298
	ldr	r2, .L298+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L298+8
	ldr	r8, .L298+12
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
.L292:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L294
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L294
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L294:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L292
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L299:
	.align	2
.L298:
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
	ldr	r5, .L325
	ldrh	r0, [r5]
	ldr	r4, .L325+4
	tst	r0, #64
	ldr	r2, [r4, #24]
	beq	.L301
	ldr	r3, .L325+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L319
.L301:
	ldmib	r4, {r3, ip}
	sub	r1, ip, #1
	add	r2, r2, #50
	add	r1, r1, r3
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
	cmp	r2, #10
	str	r3, [r4, #52]
	ble	.L304
	mov	r2, #0
	ldr	r1, [r4]
	ldr	r6, .L325+12
	add	r1, r1, #1
	ldr	r0, .L325+16
	str	r1, [r4]
	ldr	r1, .L325+20
	ldr	r3, [r6]
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	ldr	r0, .L325+24
	ldr	r1, .L325+28
	cmp	r3, r2
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	beq	.L320
	cmp	r3, #1
	beq	.L321
.L306:
	cmp	r3, #2
	beq	.L322
.L307:
	cmp	r3, #3
	beq	.L308
.L318:
	ldrh	r0, [r5]
.L304:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L325+32
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L309
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L323
.L309:
	tst	r0, #16
	beq	.L313
	ldr	r3, .L325+8
	ldrh	r2, [r3]
	ands	r5, r2, #16
	beq	.L324
.L313:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L319:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	r2, r2, #1488
	streq	r3, [r4, #48]
	subeq	r2, r2, #12
	b	.L301
.L323:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L309
.L324:
	bl	shootBullets
	mov	r2, r5
	ldr	r3, .L325+36
	ldr	r1, .L325+40
	ldr	r0, .L325+44
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L320:
	mov	r2, #1
	ldr	r3, .L325+48
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L306
.L321:
	ldr	r2, .L325+48
	str	r3, [r2, #100]
	add	r0, r2, #80
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #2
	bne	.L307
.L322:
	mov	r2, #1
	ldr	r3, .L325+48
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #3
	bne	.L318
.L308:
	mov	r2, #1
	ldr	r3, .L325+48
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L318
.L326:
	.align	2
.L325:
	.word	oldButtons
	.word	fry
	.word	buttons
	.word	curLocation
	.word	alien
	.word	enemy
	.word	cannonball
	.word	helmet
	.word	238609294
	.word	playSoundB
	.word	16416
	.word	shot
	.word	treasure
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
	ldr	r5, .L351
	ldrh	r0, [r5]
	ldr	r4, .L351+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L328
	ldr	r2, .L351+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L346
.L328:
	ldmib	r4, {r1, ip}
	sub	r2, ip, #1
	add	r3, r3, #50
	add	r2, r2, r1
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
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r2, .L351+12
	add	r3, r3, r2
	strgt	r1, [r4, #4]
	cmp	r2, r3, ror #1
	ldr	r2, [r4]
	ldr	r3, [r4, #20]
	asr	r1, r1, #8
	add	r3, r2, r3
	str	r1, [r4, #52]
	str	r3, [r4]
	bcc	.L331
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L331:
	ldr	r2, [r4, #56]
	cmp	r2, #10
	ble	.L333
	mov	r1, #0
	add	r3, r3, #1
	ldr	r6, .L351+16
	ldr	r0, .L351+20
	str	r3, [r4]
	ldr	r3, .L351+24
	ldr	r2, [r6]
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	ldr	r0, .L351+28
	ldr	r3, .L351+32
	cmp	r2, r1
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	beq	.L347
	cmp	r2, #1
	beq	.L348
.L335:
	cmp	r2, #2
	beq	.L349
.L336:
	cmp	r2, #3
	beq	.L337
.L345:
	ldrh	r0, [r5]
.L333:
	tst	r0, #16
	beq	.L340
	ldr	r3, .L351+8
	ldrh	r2, [r3]
	ands	r6, r2, #16
	beq	.L350
.L340:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L346:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L328
.L347:
	mov	r2, #1
	ldr	r3, .L351+36
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #1
	bne	.L335
.L348:
	ldr	r3, .L351+36
	str	r2, [r3, #100]
	add	r0, r3, #80
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #2
	bne	.L336
.L349:
	mov	r2, #1
	ldr	r3, .L351+36
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #3
	bne	.L345
.L337:
	mov	r2, #1
	ldr	r3, .L351+36
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L345
.L350:
	mov	r5, #1
	bl	shootBullets
	mov	r2, r6
	ldr	r3, .L351+40
	ldr	r1, .L351+44
	ldr	r0, .L351+48
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, r5
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L352:
	.align	2
.L351:
	.word	oldButtons
	.word	leela
	.word	buttons
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
	ldr	r2, .L363
	ldr	r3, .L363+4
	ldr	r2, [r2, #60]
	ldr	r3, [r3, #60]
	orrs	r3, r2, r3
	bxeq	lr
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L355
	ldr	r2, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r2
	sub	r2, r3, #1
	cmp	r2, #237
	bls	.L362
.L355:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L362:
	str	r3, [r0]
	bx	lr
.L364:
	.align	2
.L363:
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
	ldr	r0, .L377
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L366
	ldr	r1, [r4, #28]
	cmp	r1, #9
	movgt	r1, #4
	addle	r1, r1, #1
	str	r1, [r4, #28]
.L366:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L377+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L375
.L369:
	cmp	r3, #0
	beq	.L376
.L365:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L376:
	ldr	r5, .L377+8
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
	ldr	r6, .L377+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L365
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
.L375:
	ldr	r6, .L377+16
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
	ldr	r7, .L377+12
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
	b	.L369
.L378:
	.align	2
.L377:
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
	ldr	r3, .L445
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L439
	cmp	r2, #0
	moveq	r2, #512
	ldreq	r5, .L445+4
	ldrne	r5, .L445+4
	strheq	r2, [r5]	@ movhi
.L383:
	ldr	r2, .L445+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L440
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [r5, #88]	@ movhi
.L385:
	ldr	r3, .L445+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L441
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [r5, #48]	@ movhi
.L387:
	ldr	r1, .L445+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	moveq	r3, #512
	strheq	r3, [r5, #56]	@ movhi
	beq	.L389
	ldr	r3, [r1, #20]
	cmp	r3, #0
	beq	.L442
.L389:
	ldr	r2, .L445+20
	ldr	r1, [r2, #16]
	ldr	r3, .L445+24
	cmp	r1, #0
	ldr	r1, [r3, #16]
	beq	.L390
	ldr	r0, [r3, #20]
	cmp	r0, #0
	bne	.L391
	mov	ip, #148
	ldm	r2, {r0, lr}
	cmp	r1, #0
	orr	r2, r0, #16384
	strh	r2, [r5, #66]	@ movhi
	strh	lr, [r5, #64]	@ movhi
	strh	ip, [r5, #68]	@ movhi
	bne	.L394
.L392:
	mov	r3, #512
	strh	r3, [r5, #72]	@ movhi
.L393:
	ldr	r3, .L445+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #128]	@ movhi
	beq	.L396
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L443
.L396:
	ldr	r3, .L445+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #136]	@ movhi
	beq	.L398
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L444
.L398:
	ldr	r3, .L445+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r5, #240]	@ movhi
	beq	.L400
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
.L400:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L401
	mov	r3, #512
	strh	r3, [r5, #248]	@ movhi
.L403:
	mov	r4, #512
	mov	lr, #150
	ldr	r3, .L445+40
	ldr	r2, .L445+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L402:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #28
	strhne	lr, [r2, #4]	@ movhi
	strhne	ip, [r2]	@ movhi
	strhne	r1, [r2, #2]	@ movhi
	strheq	r4, [r2]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L402
	ldr	r3, .L445+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #8]	@ movhi
	beq	.L424
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #10]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r1, [r5, #12]	@ movhi
.L424:
	ldr	r3, .L445+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L407
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #156
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L445+56
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L423:
	ldr	r3, .L445+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L408
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L445+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L422:
	ldr	r3, .L445+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L409
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #284
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L445+72
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L421:
	mov	r6, #512
	mov	r4, #152
	ldr	r3, .L445+76
	ldr	r2, .L445+4
	ldr	lr, .L445+80
	add	r0, r3, #200
.L412:
	ldr	r1, [r3, #20]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #40
	orrne	r1, r1, lr
	strhne	r4, [r2, #148]	@ movhi
	strhne	r1, [r2, #146]	@ movhi
	strhne	ip, [r2, #144]	@ movhi
	strheq	r6, [r2, #144]	@ movhi
	cmp	r0, r3
	add	r2, r2, #8
	bne	.L412
	ldr	r3, .L445+84
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #16]	@ movhi
	beq	.L420
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	strh	r1, [r5, #20]	@ movhi
.L420:
	ldr	r3, .L445+88
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #24]	@ movhi
	beq	.L419
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #26]	@ movhi
	strh	r3, [r5, #24]	@ movhi
	strh	r1, [r5, #28]	@ movhi
.L419:
	ldr	r3, .L445+92
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #32]	@ movhi
	beq	.L418
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #34]	@ movhi
	strh	r3, [r5, #32]	@ movhi
	strh	r1, [r5, #36]	@ movhi
.L418:
	ldr	r3, .L445+96
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #40]	@ movhi
	beq	.L417
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #42]	@ movhi
	strh	r3, [r5, #40]	@ movhi
	strh	r1, [r5, #44]	@ movhi
.L417:
	ldr	r3, .L445+100
	mov	lr, pc
	bx	r3
	ldr	r4, .L445+104
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L445+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L445+108
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L445+112
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L390:
	mov	r2, #512
	cmp	r1, #0
	strh	r2, [r5, #64]	@ movhi
	beq	.L392
	ldr	r2, [r3, #20]
	cmp	r2, #0
	bne	.L393
.L394:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #74]	@ movhi
	strh	r0, [r5, #72]	@ movhi
	strh	r1, [r5, #76]	@ movhi
	b	.L393
.L409:
	mov	r2, #512
	ldr	r3, .L445+72
	strh	r2, [r3]	@ movhi
	b	.L421
.L408:
	mov	r2, #512
	ldr	r3, .L445+64
	strh	r2, [r3]	@ movhi
	b	.L422
.L407:
	mov	r2, #512
	ldr	r3, .L445+56
	strh	r2, [r3]	@ movhi
	b	.L423
.L401:
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
	b	.L403
.L444:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #138]	@ movhi
	strh	r0, [r5, #136]	@ movhi
	strh	r1, [r5, #140]	@ movhi
	b	.L398
.L443:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #130]	@ movhi
	strh	r0, [r5, #128]	@ movhi
	strh	r1, [r5, #132]	@ movhi
	b	.L396
.L391:
	cmp	r1, #0
	bne	.L393
	b	.L392
.L442:
	mov	r2, #148
	ldr	r3, [r1]
	ldr	r1, [r1, #4]
	orr	r3, r3, #16384
	strh	r3, [r5, #58]	@ movhi
	strh	r1, [r5, #56]	@ movhi
	strh	r2, [r5, #60]	@ movhi
	b	.L389
.L441:
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
	b	.L387
.L440:
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
	b	.L385
.L439:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r5, .L445+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [r5, #2]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	b	.L383
.L446:
	.align	2
.L445:
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	ldr	r7, .L453
	ldr	r2, .L453+4
	ldr	r3, .L453+8
	ldr	r6, .L453+12
	str	r5, [r7, #16]
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L453+16
	ldr	ip, .L453+20
	ldr	r0, .L453+24
	ldr	r1, .L453+28
	ldr	r7, .L453+32
	ldr	r3, .L453+36
	ldr	r2, .L453+40
	ldr	r9, .L453+44
	ldr	r8, .L453+48
	ldr	r4, .L453+52
	str	r5, [r6, #20]
	str	r5, [r6, #60]
	str	r5, [r6, #100]
	str	r5, [r6, #140]
	str	r5, [r6, #180]
	str	r5, [lr, #16]
	str	r5, [ip, #16]
	str	r5, [r0, #16]
	str	r5, [r1, #16]
	str	r5, [r7, #16]
	str	r5, [r3, #16]
	str	r5, [r2, #16]
	str	r5, [r4, #16]
	str	r5, [r9, #16]
	str	r5, [r8, #16]
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
	str	lr, [r7, #16]
	ldr	r7, .L453+36
	str	lr, [r7, #16]
	ldr	r7, .L453+40
	str	lr, [r9, #16]
	str	lr, [r8, #16]
	str	lr, [r7, #16]
.L448:
	add	lr, r1, r1, lsl #2
	add	r1, r1, #1
	add	lr, r0, lr, lsl #3
	cmp	r1, #5
	str	r10, [r3, #40]
	str	r6, [r3, #44]
	str	r2, [r3, #60]
	str	ip, [r3, #56]
	str	ip, [r3, #52]
	str	r2, [lr, #24]
	add	r3, r3, #40
	str	fp, [r3, #8]
	str	r2, [r3, #28]
	str	r5, [r3, #32]
	str	r2, [r3, #36]
	bne	.L448
	mov	r2, #8
	mov	ip, #67
	mov	r0, #113
	mov	r5, #0
	mov	r6, #1
	ldr	r3, .L453+56
	add	r1, r3, #1392
	add	r1, r1, r2
.L449:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r5, [r3, #24]
	str	r6, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L449
	ldr	r3, .L453+60
	mov	lr, pc
	bx	r3
	mov	r3, #64
	mov	ip, #240
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	str	r6, [r4, #20]
	str	r6, [r4, #24]
	str	r5, [r4, #16]
	str	r6, [r4, #36]
	str	r5, [r4, #32]
	str	r5, [r4, #44]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawGame
.L454:
	.align	2
.L453:
	.word	leela
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
	ldr	r2, .L468
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L468+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r3, .L468+8
	ldr	r1, [r3]
	ldreq	r2, [r3, #20]
	addeq	r1, r1, r2
	ldr	r2, .L468+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #32
	ldreq	r2, [r3, #20]
	subeq	r1, r1, r2
	ldr	r2, .L468+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #64
	ldreq	r0, [r3, #24]
	ldr	r2, [r3, #4]
	subeq	r2, r2, r0
	ldr	r0, .L468+4
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
	ldr	r3, .L468+12
	ldr	r2, [r3, #76]
	cmp	r2, #1
	beq	.L467
.L455:
	pop	{r4, lr}
	bx	lr
.L467:
	ldr	r2, [r3, #116]
	cmp	r2, #1
	bne	.L455
	ldr	r2, [r3, #156]
	cmp	r2, #1
	bne	.L455
	ldr	r3, [r3, #196]
	cmp	r3, #1
	ldreq	r2, .L468+16
	streq	r3, [r2]
	b	.L455
.L469:
	.align	2
.L468:
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
	ldr	r3, .L474
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L474+4
	ldr	lr, .L474+8
	ldr	r3, .L474+12
	str	r0, [lr, #16]
	ldr	r4, .L474+16
	ldr	lr, .L474+20
	str	r0, [ip, #16]
	ldr	ip, .L474+24
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
.L471:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L471
	ldr	r0, .L474+28
	ldr	r1, .L474+32
	ldr	r3, .L474+36
	pop	{r4, lr}
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	b	drawGame
.L475:
	.align	2
.L474:
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
	ldr	r3, .L480
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L480+4
	ldr	ip, .L480+8
	str	r0, [lr, #16]
	ldr	lr, .L480+12
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L480+16
	ldr	lr, .L480+20
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L480+24
	ldr	lr, .L480+28
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L480+32
	ldr	lr, .L480+36
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L480+40
	ldr	lr, .L480+44
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L480+48
	ldr	lr, .L480+52
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L480+56
	ldr	lr, .L480+60
	ldr	r3, .L480+64
	str	r0, [lr, #16]
	ldr	r4, .L480+68
	ldr	lr, .L480+72
	str	r0, [ip, #16]
	ldr	ip, .L480+76
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
.L477:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L477
	pop	{r4, lr}
	b	drawGame
.L481:
	.align	2
.L480:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L496
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #16
	beq	.L482
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #8]
	add	r3, r3, r1
	add	r1, r3, r2
	cmp	r1, #159
	str	r3, [r4, #4]
	beq	.L494
.L485:
	ldr	r5, .L496+4
	ldr	lr, [r4, #12]
	ldr	ip, [r4]
	str	r2, [sp, #12]
	str	r3, [sp, #4]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	str	lr, [sp, #8]
	str	ip, [sp]
	ldr	r6, .L496+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L495
.L482:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L495:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L482
	ldr	r3, [r4, #16]
	cmp	r3, #0
	movne	r2, #0
	ldrne	r3, .L496+12
	strne	r2, [r4, #16]
	strne	r0, [r3, #32]
	b	.L482
.L494:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L496+12
	str	r1, [r4, #16]
	str	r2, [r3, #32]
	bl	drawGame
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	b	.L485
.L497:
	.align	2
.L496:
	.word	cannonball
	.word	helmet
	.word	collision
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
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L630
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r6, .L630+4
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	ldr	r7, .L630+8
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	ldr	r4, .L630+12
	bne	.L499
.L502:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L500
.L503:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L611
.L504:
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L612
.L505:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L613
.L506:
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L614
.L507:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L615
.L508:
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L616
.L509:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L617
.L510:
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L618
.L511:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L619
.L512:
	ldr	r5, .L630+16
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L620
.L513:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L621
.L514:
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L622
.L515:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L623
.L516:
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L624
.L517:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L625
.L518:
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L626
.L519:
	ldmib	r4, {r1, r3, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	str	r3, [sp, #12]
	ldr	r3, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L627
.L520:
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #8]
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L628
.L521:
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
	beq	.L629
.L498:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L499:
	add	r0, r4, #8
	ldm	r0, {r0, ip}
	ldr	r2, [r5, #12]
	ldr	r1, [r4, #4]
	str	r0, [sp, #12]
	ldr	r3, [r4]
	ldr	r0, [r5]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L503
	b	.L502
.L629:
	ldr	r3, .L630+20
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L498
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L498
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L498
	mov	r0, #0
	ldr	r2, .L630+28
	ldr	r1, .L630+32
	str	r0, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r1]
	b	.L498
.L628:
	ldr	r3, .L630+20
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L521
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L521
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L521
	mov	r0, #0
	ldr	r2, .L630+28
	ldr	r1, .L630+32
	str	r0, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r1]
	b	.L521
.L627:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L520
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L520
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L520
	ldr	r2, .L630+20
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L520
	mov	r0, #0
	mov	ip, #4
	ldr	r1, .L630+36
	str	r0, [r4, #16]
	str	r0, [r1, #16]
	ldr	r0, .L630+40
	str	r3, [r1, #20]
	str	ip, [r2]
	str	r3, [r0, #32]
	b	.L520
.L626:
	ldr	r3, .L630+20
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L519
	ldr	r2, [r6, #16]
	cmp	r2, #0
	beq	.L519
	ldr	r2, .L630+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L519
	mov	ip, #0
	mov	lr, #4
	mov	r0, #190
	ldr	r1, .L630+36
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	str	r0, [r6]
	b	.L519
.L625:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L518
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L518
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L518
	ldr	r2, .L630+20
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L518
	mov	r0, #0
	mov	ip, #3
	ldr	r1, .L630+44
	str	r0, [r4, #16]
	str	r0, [r1, #16]
	ldr	r0, .L630+40
	str	r3, [r1, #20]
	str	ip, [r2]
	str	r3, [r0, #32]
	b	.L518
.L624:
	ldr	r3, .L630+20
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L517
	ldr	r2, [r6, #16]
	cmp	r2, #0
	beq	.L517
	ldr	r2, .L630+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L517
	mov	ip, #0
	mov	lr, #3
	mov	r0, #190
	ldr	r1, .L630+44
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	str	r0, [r6]
	b	.L517
.L623:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L516
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L516
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L516
	ldr	r2, .L630+20
	ldr	r3, [r2]
	cmp	r3, #1
	bne	.L516
	mov	r0, #0
	mov	ip, #2
	ldr	r1, .L630+48
	str	r0, [r4, #16]
	str	r0, [r1, #16]
	ldr	r0, .L630+40
	str	r3, [r1, #20]
	str	ip, [r2]
	str	r3, [r0, #32]
	b	.L516
.L622:
	ldr	r3, .L630+20
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L515
	ldr	r2, [r6, #16]
	cmp	r2, #0
	beq	.L515
	ldr	r2, .L630+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L515
	mov	ip, #0
	mov	lr, #2
	mov	r0, #190
	ldr	r1, .L630+48
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	str	r0, [r6]
	b	.L515
.L621:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L514
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L514
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L514
	ldr	r1, .L630+20
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L514
	ldr	r0, .L630+52
	str	r3, [r1]
	ldr	r1, .L630+40
	str	r2, [r4, #16]
	str	r2, [r0, #16]
	str	r3, [r0, #20]
	str	r3, [r1, #32]
	b	.L514
.L620:
	ldr	r2, .L630+20
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L513
	ldr	r1, [r6, #16]
	cmp	r1, #0
	beq	.L513
	ldr	r1, .L630+24
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L513
	mov	r0, #190
	str	r1, [r2]
	ldr	r2, .L630+52
	str	r0, [r6]
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	b	.L513
.L619:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L512
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L512
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L512
	ldr	r2, .L630+20
	ldr	r2, [r2]
	cmp	r2, #4
	ldreq	r2, .L630+28
	ldreq	r1, .L630+32
	streq	r3, [r2, #16]
	streq	r0, [r2, #20]
	streq	r0, [r1]
	b	.L512
.L618:
	ldr	r3, .L630+20
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L511
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L511
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L630+28
	ldreq	r1, .L630+32
	streq	r3, [r2, #16]
	streq	r0, [r2, #20]
	streq	r0, [r1]
	b	.L511
.L617:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L510
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L510
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L510
	ldr	r2, .L630+20
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L510
	mov	ip, #4
	ldr	r1, .L630+36
	str	ip, [r2]
	ldr	r2, .L630+40
	str	r3, [r4, #16]
	str	r3, [r1, #16]
	str	r0, [r1, #20]
	str	r0, [r2, #32]
	b	.L510
.L616:
	ldr	r3, .L630+20
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L509
	ldr	r2, [r6, #16]
	cmp	r2, #0
	beq	.L509
	ldr	r2, .L630+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L509
	mov	ip, #4
	mov	r1, #190
	str	ip, [r3]
	ldr	r3, .L630+36
	str	r1, [r6]
	str	r2, [r3, #16]
	str	r0, [r3, #20]
	b	.L509
.L615:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L508
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L508
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L508
	ldr	r2, .L630+20
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L508
	mov	ip, #3
	ldr	r1, .L630+44
	str	ip, [r2]
	ldr	r2, .L630+40
	str	r3, [r4, #16]
	str	r3, [r1, #16]
	str	r0, [r1, #20]
	str	r0, [r2, #32]
	b	.L508
.L614:
	ldr	r3, .L630+20
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L507
	ldr	r2, [r6, #16]
	cmp	r2, #0
	beq	.L507
	ldr	r2, .L630+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L507
	mov	ip, #3
	mov	r1, #190
	str	ip, [r3]
	ldr	r3, .L630+44
	str	r1, [r6]
	str	r2, [r3, #16]
	str	r0, [r3, #20]
	b	.L507
.L613:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L506
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L506
	ldr	r3, .L630+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L506
	ldr	r1, .L630+20
	ldr	r2, [r1]
	cmp	r2, #1
	bne	.L506
	mov	ip, #2
	ldr	r0, .L630+48
	str	ip, [r1]
	ldr	r1, .L630+40
	str	r3, [r4, #16]
	str	r3, [r0, #16]
	str	r2, [r0, #20]
	str	r2, [r1, #32]
	b	.L506
.L612:
	ldr	r2, .L630+20
	ldr	r3, [r2]
	cmp	r3, #1
	bne	.L505
	ldr	r1, [r6, #16]
	cmp	r1, #0
	beq	.L505
	ldr	r1, .L630+24
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L505
	mov	ip, #2
	mov	r0, #190
	str	ip, [r2]
	ldr	r2, .L630+48
	str	r0, [r6]
	str	r1, [r2, #16]
	str	r3, [r2, #20]
	b	.L505
.L611:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L504
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L504
	ldr	r3, .L630+24
	ldr	r1, .L630+20
	ldr	r3, [r3]
	ldr	r2, [r1]
	orrs	r3, r3, r2
	bne	.L504
	ldr	r2, .L630+52
	str	r0, [r1]
	ldr	r1, .L630+40
	str	r3, [r4, #16]
	str	r3, [r2, #16]
	str	r0, [r2, #20]
	str	r0, [r1, #32]
	b	.L504
.L500:
	ldr	r1, .L630+20
	ldr	r2, .L630+24
	ldr	r3, [r1]
	ldr	r2, [r2]
	orrs	r3, r3, r2
	bne	.L503
	mov	r0, #1
	mov	ip, #190
	ldr	r2, .L630+52
	str	r0, [r1]
	str	ip, [r6]
	str	r0, [r2, #20]
	str	r3, [r2, #16]
	b	.L503
.L631:
	.align	2
.L630:
	.word	fry
	.word	alien
	.word	collision
	.word	cannonball
	.word	leela
	.word	lifeCounter
	.word	characterChoice
	.word	life1
	.word	isLost
	.word	life2
	.word	enemy
	.word	life3
	.word	life4
	.word	life5
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
	ldr	r2, .L636
	ldrh	r3, [r2]
	ldr	r0, .L636+4
	push	{r4, lr}
	ldr	r1, .L636+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L636+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L633:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L633
	bl	updateEnemy
	bl	updateLives
	bl	updateCannonball
	ldr	r3, .L636+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L636+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L636+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L636+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L637:
	.align	2
.L636:
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
	ldr	r2, .L642
	ldrh	r3, [r2]
	ldr	r0, .L642+4
	push	{r4, lr}
	ldr	r1, .L642+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L642+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L639:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L639
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L642+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L642+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L642+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L642+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L643:
	.align	2
.L642:
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
	ldr	r2, .L648
	ldrh	r3, [r2]
	ldr	r0, .L648+4
	push	{r4, lr}
	ldr	r1, .L648+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L648+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L645:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L645
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L648+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L648+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L648+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L648+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L649:
	.align	2
.L648:
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
	.comm	leela,64,4
	.comm	fry,64,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.type	ground, %object
	.size	ground, 4
ground:
	.word	154
	.ident	"GCC: (devkitARM release 53) 9.1.0"
