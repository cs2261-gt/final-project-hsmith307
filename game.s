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
	mov	r2, #0
	mov	r3, #16
	mov	r1, #5
	push	{r4, r5, lr}
	mov	r5, #26
	mov	r4, #47
	mov	lr, #68
	mov	ip, #89
	ldr	r0, .L44
	str	r2, [r0]
	ldr	r0, .L44+4
	stmib	r0, {r1, r3}
	str	r2, [r0, #16]
	str	r1, [r0]
	str	r3, [r0, #12]
	ldr	r0, .L44+8
	str	r5, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L44+12
	str	r4, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L44+16
	str	lr, [r0]
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r0, .L44+20
	pop	{r4, r5, lr}
	str	r1, [r0, #4]
	str	r2, [r0, #16]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0]
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	ip, #1
	mov	lr, #0
	ldr	r0, .L52
	ldr	r1, .L52+4
	ldr	r3, .L52+8
	ldr	r10, .L52+12
	ldr	r5, [r0]
	ldr	r9, [r0, #12]
	ldr	r4, [r0, #52]
	ldr	r7, [r1, #12]
	ldr	r8, [r1]
	ldr	r6, [r1, #52]
	add	r0, r3, #1392
	ldr	r1, [r10]
	add	r5, r5, r9
	add	r4, r4, #20
	add	r7, r7, r8
	add	r6, r6, #20
	add	r0, r0, r2
.L49:
	cmp	r1, #1
	streq	r7, [r3]
	streq	r6, [r3, #4]
	beq	.L48
	cmp	r1, #0
	streq	r5, [r3]
	streq	r4, [r3, #4]
.L48:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	lr, [r3, #24]
	str	ip, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L49
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	fry
	.word	leela
	.word	bullets
	.word	characterChoice
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
	ldr	lr, .L58
	mov	r7, r2
	mov	r3, lr
	mov	r6, #200
	mov	r5, #100
	mov	r1, #0
	mov	ip, #32
	mov	r4, #500
.L55:
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
	bne	.L55
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L62
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
.L63:
	.align	2
.L62:
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
	ldr	r3, .L66
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L67:
	.align	2
.L66:
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
	ldr	r2, .L70
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
	ldr	r3, .L70+4
	stm	r3, {r2, r4}
	str	lr, [r3, #24]
	str	ip, [r3, #16]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r3, .L73
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L74:
	.align	2
.L73:
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
	ldr	r3, .L76
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L77:
	.align	2
.L76:
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
	ldr	r3, .L99
	ldr	r3, [r3]
	ldr	r0, .L99+4
	cmp	r3, r2
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	str	ip, [r0]
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	str	lr, [r0, #4]
	beq	.L97
	cmp	r3, #0
	bne	.L98
	mov	ip, #4
	mov	r5, #3
	mov	r4, #23040
	ldr	r1, .L99+8
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
	ldr	ip, .L99+12
.L87:
	mov	lr, #0
	mov	r4, #1
	ldr	r3, .L99+16
	ldr	r5, [r3, #76]
	ldr	r2, [r3, #116]
	cmp	r5, lr
	mov	r6, #200
	movne	fp, lr
	moveq	fp, r4
	cmp	r2, lr
	movne	r9, lr
	moveq	r9, r4
	mov	r5, #20
	mov	r2, #32
	str	r4, [r0, #16]
	ldr	r0, .L99+20
	ldr	r4, .L99+24
	str	r6, [r0]
	str	r6, [r4]
	ldr	r6, .L99+28
	str	r9, [r4, #16]
	str	r5, [r0, #4]
	ldr	r9, [r3, #156]
	str	r5, [r6]
	ldr	r5, .L99+32
	cmp	r9, lr
	str	lr, [r5, #16]
	str	lr, [r6, #16]
	mov	lr, #120
	str	r2, [r0, #12]
	str	r2, [r0, #8]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
	str	r2, [r5, #12]
	str	r2, [r5, #8]
	str	r2, [r6, #12]
	str	r2, [r6, #8]
	moveq	r2, #1
	str	lr, [r5, #4]
	mov	r10, #90
	mov	lr, #0
	streq	r2, [r6, #16]
	ldr	r2, [r3, #196]
	cmp	r2, #0
	moveq	r2, #1
	mov	r7, #180
	mov	r8, #100
	str	r10, [r4, #4]
	mov	r4, lr
	streq	r2, [r5, #16]
	str	r7, [r5]
	str	lr, [r1, #16]
	ldr	r2, .L99+36
	ldr	r1, .L99+40
	ldr	r5, .L99+44
	str	fp, [r0, #16]
	str	r8, [r6, #4]
	str	lr, [ip, #16]
	str	lr, [r3, #20]
	str	lr, [r3, #60]
	str	lr, [r3, #100]
	add	r0, r2, #1392
	str	lr, [r3, #140]
	str	lr, [r3, #180]
	str	lr, [r5, #16]
	str	lr, [r1, #16]
	str	lr, [r1, #56]
	add	r0, r0, #8
.L92:
	str	r4, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r0
	bne	.L92
	mov	r8, #208
	mov	ip, #10
	mov	r1, #42
	mov	r2, #32
	mov	r0, #1
	mov	r6, #20
	mov	r5, #70
	mov	lr, #8
	mov	r7, #216
	ldr	r3, .L99+48
	stm	r3, {r8, ip}
	ldr	ip, .L99+52
	str	r1, [ip, #4]
	ldr	r1, .L99+56
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r4, [r3, #16]
	str	r4, [r3, #32]
	str	r0, [r3, #20]
	str	r0, [r3, #28]
	str	r0, [ip, #24]
	str	r0, [r1, #20]
	str	r4, [r1, #16]
	str	r2, [r1, #12]
	str	r2, [r1, #8]
	str	r6, [r1]
	str	r5, [r1, #4]
	mov	r3, #256
	ldr	r5, .L99+60
	mov	r0, #3
	ldr	r2, .L99+64
	ldr	r1, .L99+68
	str	r4, [ip, #16]
	str	r7, [ip]
	str	lr, [ip, #12]
	str	lr, [ip, #8]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L99+72
	ldr	r1, .L99+76
	mov	lr, pc
	bx	r5
	ldr	r3, .L99+80
	ldr	r0, .L99+84
	ldr	r1, .L99+88
	ldr	r2, .L99+92
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L97:
	mov	r1, #0
	mov	r5, #3
	mov	r4, #23040
	mov	r2, #4
	ldr	ip, .L99+12
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
	ldr	r1, .L99+8
	b	.L87
.L98:
	ldr	ip, .L99+12
	ldr	r1, .L99+8
	b	.L87
.L100:
	.align	2
.L99:
	.word	characterChoice
	.word	spaceship
	.word	fry
	.word	leela
	.word	treasure
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	bullets
	.word	coins
	.word	alien
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
	ldr	r3, .L112
	mov	lr, pc
	bx	r3
	bl	initCoins
	bl	initBullets
	mov	r0, #64
	mov	r2, #4
	mov	r1, #0
	mov	r3, #1
	mov	r8, #240
	mov	r7, #90
	mov	r6, #2
	mov	r5, #203
	mov	r4, #120
	ldr	ip, .L112+4
	ldr	lr, [ip]
	ldr	ip, .L112+8
	str	r2, [ip, #40]
	str	r0, [ip, #12]
	ldr	r2, .L112+12
	str	r0, [ip, #8]
	ldr	r0, .L112+16
	cmp	lr, r1
	str	r8, [ip]
	str	r7, [ip, #4]
	str	r6, [ip, #28]
	str	r3, [ip, #20]
	str	r3, [ip, #24]
	str	r3, [ip, #36]
	str	r1, [ip, #32]
	str	r1, [ip, #44]
	str	r3, [r2, #48]
	str	r5, [r2, #40]
	str	r4, [r2, #44]
	str	r3, [r0, #16]
	str	r3, [r0, #28]
	bne	.L102
	ldr	r3, .L112+20
	str	lr, [r3, #56]
.L103:
	ldr	r3, .L112+24
	mov	r0, #1
	mov	r2, r3
	add	r1, r3, #1392
	add	r1, r1, #8
.L104:
	str	r0, [r2, #12]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L104
	mov	r5, #0
	ldr	r4, .L112+28
	ldr	r2, .L112+32
	cmp	lr, #1
	str	r5, [r4]
	str	r0, [r2, #16]
	beq	.L111
	cmp	lr, #0
	ldreq	r2, .L112+20
	streq	r0, [r2, #16]
.L106:
	mov	lr, #1
	mov	r0, #0
	str	lr, [ip, #16]
	ldr	ip, .L112+36
	mov	r2, lr
	str	r0, [ip, #16]
	ldr	lr, .L112+40
	ldr	ip, .L112+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L112+48
	ldr	ip, .L112+52
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L107:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L107
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L102:
	cmp	lr, #1
	ldreq	r3, .L112+56
	streq	r1, [r3, #56]
	b	.L103
.L111:
	ldr	r2, .L112+56
	str	lr, [r2, #16]
	b	.L106
.L113:
	.align	2
.L112:
	.word	hideSprites
	.word	characterChoice
	.word	alien
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L125
	mov	r5, #0
	mov	lr, pc
	bx	r3
	mov	r6, #1
	bl	initBullets
	mov	r3, #64
	mov	ip, #240
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	ldr	r4, .L125+4
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r6, [r4, #20]
	str	r6, [r4, #24]
	str	r6, [r4, #36]
	str	r5, [r4, #16]
	str	r5, [r4, #32]
	str	r5, [r4, #44]
	bl	initCoins
	ldr	r3, .L125+8
	mov	r0, r6
	mov	r2, r3
	ldr	r1, .L125+12
	ldr	ip, .L125+16
	str	r5, [r1, #16]
	ldr	r1, .L125+20
	str	r5, [ip, #16]
	str	r5, [r1, #16]
	ldr	ip, .L125+24
	ldr	r1, .L125+28
	str	r6, [r4, #16]
	str	r5, [r1, #16]
	str	r5, [ip, #16]
	add	r1, r3, #1392
	add	r1, r1, #8
.L115:
	str	r0, [r2, #24]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L115
	ldr	r2, .L125+32
	ldr	r0, [r2]
	cmp	r0, #0
	bne	.L116
	ldr	r2, .L125+36
	str	r0, [r2, #56]
.L117:
	mov	r2, #1
.L118:
	str	r2, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L118
	ldr	r1, .L125+40
	ldr	r3, [r1, #84]
	ldr	lr, .L125+44
	ldr	ip, .L125+48
	add	r3, r3, #25
	cmp	r0, #1
	str	r3, [r1, #84]
	str	r2, [lr, #16]
	str	r2, [ip]
	beq	.L124
	cmp	r0, #0
	ldreq	r3, .L125+36
	streq	r2, [r3, #16]
.L120:
	mov	r2, #1
	ldr	r3, .L125+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L116:
	cmp	r0, #1
	moveq	ip, #0
	ldreq	r2, .L125+56
	streq	ip, [r2, #56]
	b	.L117
.L124:
	ldr	r3, .L125+56
	str	r0, [r3, #16]
	b	.L120
.L126:
	.align	2
.L125:
	.word	hideSprites
	.word	alien
	.word	bullets
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
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
	mov	r10, #0
	ldr	r9, .L135
	ldr	r8, .L135+4
	ldr	r7, .L135+8
	ldr	r6, .L135+12
	ldr	r5, .L135+16
	ldr	r3, .L135+20
	mov	lr, pc
	bx	r3
	mov	fp, #1
	str	r10, [r9, #16]
	str	r10, [r8, #16]
	str	r10, [r7, #16]
	str	r10, [r6, #16]
	str	r10, [r5, #16]
	bl	initBullets
	mov	r3, #64
	mov	r1, #2
	mov	r2, #4
	mov	ip, #240
	mov	r0, #90
	ldr	r4, .L135+24
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r10, [r4, #16]
	str	r10, [r4, #32]
	str	r10, [r4, #44]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	fp, [r4, #20]
	str	fp, [r4, #24]
	str	fp, [r4, #36]
	bl	initCoins
	mov	r1, fp
	ldr	r3, .L135+28
	str	r10, [r9, #16]
	add	r2, r3, #1392
	str	r10, [r8, #16]
	str	r10, [r7, #16]
	str	r10, [r6, #16]
	str	r10, [r5, #16]
	str	fp, [r4, #16]
	add	r2, r2, #8
.L128:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L128
	ldr	r3, .L135+32
	ldr	r0, .L135+36
	ldr	r2, [r3]
	ldr	ip, .L135+40
	ldr	r3, [r0, #124]
	cmp	r2, #0
	str	r1, [ip, #16]
	add	r3, r3, #25
	bne	.L129
	mov	lr, #2
	ldr	ip, .L135+44
	str	r3, [r0, #124]
	ldr	r3, .L135+48
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r1, [r3, #16]
.L130:
	mov	r2, #1
	ldr	r3, .L135+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L129:
	cmp	r2, #1
	bne	.L131
	mov	lr, #0
	mov	ip, #2
	ldr	r1, .L135+56
	str	r3, [r0, #124]
	ldr	r3, .L135+44
	str	lr, [r1, #56]
	str	r2, [r1, #16]
	str	ip, [r3]
	b	.L130
.L131:
	mov	r1, #2
	ldr	r2, .L135+44
	str	r3, [r0, #124]
	str	r1, [r2]
	b	.L130
.L136:
	.align	2
.L135:
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	hideSprites
	.word	alien
	.word	bullets
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, #0
	ldr	r9, .L145
	ldr	r8, .L145+4
	ldr	r7, .L145+8
	ldr	r6, .L145+12
	ldr	r5, .L145+16
	ldr	r3, .L145+20
	mov	lr, pc
	bx	r3
	mov	fp, #1
	str	r10, [r9, #16]
	str	r10, [r8, #16]
	str	r10, [r7, #16]
	str	r10, [r6, #16]
	str	r10, [r5, #16]
	bl	initBullets
	mov	r3, #64
	mov	r1, #2
	mov	r2, #4
	mov	ip, #240
	mov	r0, #90
	ldr	r4, .L145+24
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r10, [r4, #16]
	str	r10, [r4, #32]
	str	r10, [r4, #44]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	fp, [r4, #20]
	str	fp, [r4, #24]
	str	fp, [r4, #36]
	bl	initCoins
	mov	r1, fp
	ldr	r3, .L145+28
	str	r10, [r9, #16]
	add	r2, r3, #1392
	str	r10, [r8, #16]
	str	r10, [r7, #16]
	str	r10, [r6, #16]
	str	r10, [r5, #16]
	str	fp, [r4, #16]
	add	r2, r2, #8
.L138:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L138
	ldr	r3, .L145+32
	ldr	r0, .L145+36
	ldr	r2, [r3]
	ldr	ip, .L145+40
	ldr	r3, [r0, #164]
	cmp	r2, #0
	str	r1, [ip, #16]
	add	r3, r3, #25
	bne	.L139
	mov	lr, #3
	ldr	ip, .L145+44
	str	r3, [r0, #164]
	ldr	r3, .L145+48
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r1, [r3, #16]
.L140:
	mov	r2, #1
	ldr	r3, .L145+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L139:
	cmp	r2, #1
	bne	.L141
	mov	lr, #0
	mov	ip, #3
	ldr	r1, .L145+56
	str	r3, [r0, #164]
	ldr	r3, .L145+44
	str	lr, [r1, #56]
	str	r2, [r1, #16]
	str	ip, [r3]
	b	.L140
.L141:
	mov	r1, #3
	ldr	r2, .L145+44
	str	r3, [r0, #164]
	str	r1, [r2]
	b	.L140
.L146:
	.align	2
.L145:
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	hideSprites
	.word	alien
	.word	bullets
	.word	characterChoice
	.word	treasure
	.word	cannonball
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
	ldr	r3, .L151
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L151+4
	ldr	ip, .L151+8
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L151+12
	ldr	ip, .L151+16
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L151+20
	ldr	ip, .L151+24
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L151+28
	ldr	ip, .L151+32
	ldr	r4, .L151+36
	ldr	lr, .L151+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L148:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L148
	pop	{r4, lr}
	bx	lr
.L152:
	.align	2
.L151:
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
	ldr	r5, .L166
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L166+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L154
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L154:
	ldr	r4, .L166+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L166+12
	add	r6, r6, #8
	b	.L159
.L165:
	ldr	r0, [r5]
.L159:
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
	bne	.L157
	ldr	r3, [r4, #24]
	cmp	r3, #0
	strne	r8, [r5, #16]
	strne	r8, [r4, #24]
.L157:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L165
	ldr	r2, [r5, #44]
	ldr	r3, .L166+16
	add	r2, r2, #1
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #6
	ldr	r1, [r5, #16]
	sub	r3, r2, r3, lsl #1
	orrs	r3, r3, r1
	str	r2, [r5, #44]
	bne	.L153
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
.L153:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L167:
	.align	2
.L166:
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
	ldr	r3, .L182
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	beq	.L169
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	beq	.L181
.L171:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L182+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r2, #16]
	stm	r2, {r0, r1}
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L169:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	bne	.L171
	mov	r2, #1
.L181:
	str	r2, [r3, #28]
	b	.L171
.L183:
	.align	2
.L182:
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
	ldr	r3, .L186
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L186+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L187:
	.align	2
.L186:
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
	ldr	r1, .L197
	ldr	r2, .L197+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L197+8
	ldr	r8, .L197+12
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
.L191:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L193
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L193
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L193:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L191
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L198:
	.align	2
.L197:
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
	ldr	r3, .L216
	ldrh	r0, [r3]
	push	{r4, r5, r6, lr}
	ldr	r4, .L216+4
	tst	r0, #64
	ldr	r2, [r4, #24]
	beq	.L200
	ldr	r3, .L216+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L213
.L200:
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
	cmp	r2, #5
	str	r3, [r4, #52]
	ble	.L203
	mov	r3, #0
	ldr	r2, [r4]
	add	r2, r2, #1
	ldr	lr, .L216+12
	ldr	ip, .L216+16
	str	r2, [r4]
	ldr	r1, .L216+20
	ldr	r2, .L216+24
	str	r3, [lr, #16]
	str	r3, [ip, #16]
	str	r3, [r1, #16]
	str	r3, [r2, #16]
.L203:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L216+28
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L204
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L214
.L204:
	tst	r0, #16
	beq	.L208
	ldr	r3, .L216+8
	ldrh	r2, [r3]
	ands	r5, r2, #16
	beq	.L215
.L208:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L213:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	r2, r2, #1488
	streq	r3, [r4, #48]
	subeq	r2, r2, #12
	b	.L200
.L214:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L204
.L215:
	bl	shootBullets
	mov	r2, r5
	ldr	r3, .L216+32
	ldr	r1, .L216+36
	ldr	r0, .L216+40
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L217:
	.align	2
.L216:
	.word	oldButtons
	.word	fry
	.word	buttons
	.word	alien
	.word	enemy
	.word	cannonball
	.word	helmet
	.word	238609294
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
	ldr	r3, .L234
	ldrh	r0, [r3]
	push	{r4, r5, r6, lr}
	ldr	r4, .L234+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L219
	ldr	r2, .L234+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L232
.L219:
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
	ldr	ip, .L234+12
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
	bcc	.L222
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L222:
	ldr	r2, [r4, #56]
	cmp	r2, #5
	ble	.L224
	mov	r2, #0
	add	r3, r3, #1
	ldr	lr, .L234+16
	ldr	ip, .L234+20
	str	r3, [r4]
	ldr	r1, .L234+24
	ldr	r3, .L234+28
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r1, #16]
	str	r2, [r3, #16]
.L224:
	tst	r0, #16
	beq	.L227
	ldr	r3, .L234+8
	ldrh	r2, [r3]
	ands	r6, r2, #16
	beq	.L233
.L227:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L232:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L219
.L233:
	mov	r5, #1
	bl	shootBullets
	mov	r2, r6
	ldr	r3, .L234+32
	ldr	r1, .L234+36
	ldr	r0, .L234+40
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, r5
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L235:
	.align	2
.L234:
	.word	oldButtons
	.word	leela
	.word	buttons
	.word	238609294
	.word	alien
	.word	enemy
	.word	cannonball
	.word	helmet
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
	ldr	r2, .L246
	ldr	r3, .L246+4
	ldr	r2, [r2, #60]
	ldr	r3, [r3, #60]
	orrs	r3, r2, r3
	bxeq	lr
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L238
	ldr	r2, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r2
	sub	r2, r3, #1
	cmp	r2, #237
	bls	.L245
.L238:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L245:
	str	r3, [r0]
	bx	lr
.L247:
	.align	2
.L246:
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
	ldr	r0, .L260
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L249
	ldr	r1, [r4, #28]
	cmp	r1, #9
	movgt	r1, #4
	addle	r1, r1, #1
	str	r1, [r4, #28]
.L249:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L260+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L258
.L252:
	cmp	r3, #0
	beq	.L259
.L248:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L259:
	ldr	r5, .L260+8
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
	ldr	r6, .L260+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L248
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
.L258:
	ldr	r6, .L260+16
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
	ldr	r7, .L260+12
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
	b	.L252
.L261:
	.align	2
.L260:
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
.L266:
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
.L268:
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
.L270:
	ldr	r1, .L319+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L319+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L271
	mov	ip, #148
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L272
.L273:
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
	beq	.L278
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
.L278:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L279
	mov	r3, #512
	strh	r3, [lr, #248]	@ movhi
.L281:
	mov	r5, #512
	mov	r4, #150
	ldr	r3, .L319+40
	ldr	r2, .L319+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L280:
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
	bne	.L280
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
	beq	.L285
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
	beq	.L286
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L319+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L300:
	ldr	r3, .L319+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L287
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #284
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L319+72
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L299:
	mov	r6, #512
	mov	r5, #152
	ldr	r3, .L319+76
	ldr	r2, .L319+4
	ldr	r4, .L319+80
	add	r0, r3, #200
.L290:
	ldr	r1, [r3, #20]
	cmp	r1, #0
	ldmne	r3, {r1, ip}
	add	r3, r3, #40
	orrne	r1, r1, r4
	strhne	r5, [r2, #148]	@ movhi
	strhne	r1, [r2, #146]	@ movhi
	strhne	ip, [r2, #144]	@ movhi
	strheq	r6, [r2, #144]	@ movhi
	cmp	r0, r3
	add	r2, r2, #8
	bne	.L290
	ldr	r3, .L319+84
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L298
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L298:
	ldr	r3, .L319+88
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L297
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L297:
	ldr	r3, .L319+92
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L296
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L296:
	ldr	r3, .L319+96
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L295
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L295:
	ldr	r3, .L319+100
	mov	lr, pc
	bx	r3
	ldr	r4, .L319+104
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L319+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L319+108
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L319+112
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L287:
	mov	r2, #512
	ldr	r3, .L319+72
	strh	r2, [r3]	@ movhi
	b	.L299
.L286:
	mov	r2, #512
	ldr	r3, .L319+64
	strh	r2, [r3]	@ movhi
	b	.L300
.L285:
	mov	r2, #512
	ldr	r3, .L319+56
	strh	r2, [r3]	@ movhi
	b	.L301
.L279:
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
	b	.L281
.L271:
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
	b	.L273
.L272:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L273
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
	b	.L270
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
	b	.L268
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
	b	.L266
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
	mov	r4, #0
	ldr	r7, .L325
	ldr	r2, .L325+4
	ldr	r3, .L325+8
	ldr	r6, .L325+12
	ldr	lr, .L325+16
	ldr	ip, .L325+20
	ldr	r0, .L325+24
	ldr	r1, .L325+28
	str	r4, [r7, #16]
	str	r4, [r2, #16]
	ldr	r7, .L325+32
	str	r4, [r3, #16]
	ldr	r2, .L325+36
	ldr	r3, .L325+40
	ldr	r9, .L325+44
	ldr	r8, .L325+48
	ldr	r5, .L325+52
	str	r4, [r6, #20]
	str	r4, [r6, #60]
	str	r4, [r6, #100]
	str	r4, [r6, #140]
	str	r4, [r6, #180]
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r1, #16]
	str	r4, [r7, #16]
	str	r4, [r3, #16]
	str	r4, [r2, #16]
	str	r4, [r5, #16]
	str	r4, [r9, #16]
	str	r4, [r8, #16]
	bl	initLives
	mov	ip, #1
	mov	r1, r6
	mov	r3, r6
	mov	r2, ip
	mov	r6, ip
	mov	fp, #200
	mov	r10, #100
	mov	r0, #32
	mov	lr, #500
	str	ip, [r7, #16]
	ldr	r7, .L325+40
	str	ip, [r7, #16]
	ldr	r7, .L325+36
	str	ip, [r9, #16]
	str	ip, [r8, #16]
	str	ip, [r7, #16]
.L322:
	add	ip, r2, r2, lsl #2
	add	r2, r2, #1
	add	ip, r1, ip, lsl #3
	cmp	r2, #5
	str	fp, [r3, #40]
	str	r10, [r3, #44]
	str	r4, [r3, #60]
	str	r0, [r3, #56]
	str	r0, [r3, #52]
	str	r4, [ip, #24]
	add	r3, r3, #40
	str	r6, [r3, #8]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	r4, [r3, #36]
	bne	.L322
	bl	initBullets
	ldr	r3, .L325+56
	mov	lr, pc
	bx	r3
	mov	r3, #64
	mov	ip, #240
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	str	r6, [r5, #20]
	str	r6, [r5, #24]
	str	r4, [r5, #16]
	str	r6, [r5, #36]
	str	r4, [r5, #32]
	str	r4, [r5, #44]
	str	ip, [r5]
	str	r0, [r5, #4]
	str	r3, [r5, #12]
	str	r3, [r5, #8]
	str	r1, [r5, #28]
	str	r2, [r5, #40]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawGame
.L326:
	.align	2
.L325:
	.word	leela
	.word	p4
	.word	spaceship
	.word	treasure
	.word	fry
	.word	p1
	.word	p2
	.word	p3
	.word	life3
	.word	life5
	.word	life4
	.word	life1
	.word	life2
	.word	alien
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
	ldr	r2, .L335
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L335+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L335+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L335+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L335+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L335+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L335+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L335+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L335+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L335+12
	ldr	r2, [r3, #76]
	cmp	r2, #1
	beq	.L334
.L327:
	pop	{r4, lr}
	bx	lr
.L334:
	ldr	r2, [r3, #116]
	cmp	r2, #1
	bne	.L327
	ldr	r2, [r3, #156]
	cmp	r2, #1
	bne	.L327
	ldr	r3, [r3, #196]
	cmp	r3, #1
	ldreq	r2, .L335+16
	streq	r3, [r2]
	b	.L327
.L336:
	.align	2
.L335:
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
	ldr	r3, .L341
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L341+4
	ldr	lr, .L341+8
	ldr	r3, .L341+12
	str	r0, [lr, #16]
	ldr	r4, .L341+16
	ldr	lr, .L341+20
	str	r0, [ip, #16]
	ldr	ip, .L341+24
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
.L338:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L338
	ldr	r0, .L341+28
	ldr	r1, .L341+32
	ldr	r3, .L341+36
	pop	{r4, lr}
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	b	drawGame
.L342:
	.align	2
.L341:
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
	ldr	r3, .L347
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L347+4
	ldr	ip, .L347+8
	str	r0, [lr, #16]
	ldr	lr, .L347+12
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L347+16
	ldr	lr, .L347+20
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L347+24
	ldr	lr, .L347+28
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L347+32
	ldr	lr, .L347+36
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L347+40
	ldr	lr, .L347+44
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L347+48
	ldr	lr, .L347+52
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L347+56
	ldr	lr, .L347+60
	ldr	r3, .L347+64
	str	r0, [lr, #16]
	ldr	r4, .L347+68
	ldr	lr, .L347+72
	str	r0, [ip, #16]
	ldr	ip, .L347+76
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
.L344:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L344
	pop	{r4, lr}
	b	drawGame
.L348:
	.align	2
.L347:
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
	ldr	r4, .L363
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #16
	beq	.L349
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #8]
	add	r3, r3, r1
	add	r1, r3, r2
	cmp	r1, #159
	str	r3, [r4, #4]
	beq	.L361
.L352:
	ldr	r5, .L363+4
	ldr	lr, [r4, #12]
	ldr	ip, [r4]
	str	r2, [sp, #12]
	str	r3, [sp, #4]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	str	lr, [sp, #8]
	str	ip, [sp]
	ldr	r6, .L363+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L362
.L349:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L362:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L349
	ldr	r3, [r4, #16]
	cmp	r3, #0
	movne	r2, #0
	ldrne	r3, .L363+12
	strne	r2, [r4, #16]
	strne	r0, [r3, #32]
	b	.L349
.L361:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L363+12
	str	r1, [r4, #16]
	str	r2, [r3, #32]
	bl	drawGame
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	b	.L352
.L364:
	.align	2
.L363:
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
	ldr	r4, .L492
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	ldr	r5, .L492+4
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	ldr	r7, .L492+8
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	ldr	r6, .L492+12
	bne	.L366
.L369:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	bne	.L367
.L370:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L474
.L371:
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L475
.L372:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L476
.L373:
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L477
.L374:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L478
.L375:
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L479
.L376:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L480
.L377:
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L481
.L378:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L482
.L379:
	ldr	r4, .L492+16
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L483
.L380:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L484
.L381:
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L485
.L382:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L486
.L383:
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L487
.L384:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L488
.L385:
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L489
.L386:
	ldmib	r6, {r1, r3, ip}
	ldr	r2, [r4, #12]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L490
.L387:
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L491
.L365:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L366:
	add	r0, r6, #8
	ldm	r0, {r0, ip}
	ldr	r2, [r4, #12]
	ldr	r1, [r6, #4]
	str	r0, [sp, #12]
	ldr	r3, [r6]
	ldr	r0, [r4]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	add	r2, r2, r2, lsr #31
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #52]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L370
	b	.L369
.L491:
	ldr	r3, .L492+20
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L365
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L365
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L492+28
	ldreq	r2, .L492+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L365
.L490:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L387
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L387
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L387
	ldr	r2, .L492+20
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L387
	mov	ip, #4
	mov	r1, #0
	ldr	r0, .L492+36
	str	ip, [r2]
	ldr	r2, .L492+40
	str	r1, [r6, #16]
	str	r1, [r0, #16]
	str	r3, [r2, #32]
	b	.L387
.L489:
	ldr	r3, .L492+20
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L386
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L386
	ldr	r2, .L492+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L386
	mov	r0, #0
	mov	ip, #4
	mov	r2, #190
	ldr	r1, .L492+36
	str	ip, [r3]
	str	r0, [r1, #16]
	str	r2, [r5]
	b	.L386
.L488:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L385
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L385
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L385
	ldr	r2, .L492+20
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L385
	mov	r1, #0
	mov	r0, #3
	ldr	ip, .L492+44
	str	r1, [r6, #16]
	str	r1, [ip, #16]
	ldr	r1, .L492+40
	str	r0, [r2]
	str	r3, [r1, #32]
	b	.L385
.L487:
	ldr	r3, .L492+20
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L384
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L384
	ldr	r2, .L492+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L384
	mov	r0, #0
	mov	ip, #3
	mov	r2, #190
	ldr	r1, .L492+44
	str	ip, [r3]
	str	r0, [r1, #16]
	str	r2, [r5]
	b	.L384
.L486:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L383
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L383
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L383
	ldr	r2, .L492+20
	ldr	r3, [r2]
	cmp	r3, #1
	bne	.L383
	mov	r1, #0
	mov	r0, #2
	ldr	ip, .L492+48
	str	r1, [r6, #16]
	str	r1, [ip, #16]
	ldr	r1, .L492+40
	str	r0, [r2]
	str	r3, [r1, #32]
	b	.L383
.L485:
	ldr	r3, .L492+20
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L382
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L382
	ldr	r2, .L492+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L382
	mov	r0, #0
	mov	ip, #2
	mov	r2, #190
	ldr	r1, .L492+48
	str	ip, [r3]
	str	r0, [r1, #16]
	str	r2, [r5]
	b	.L382
.L484:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L381
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L381
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L381
	ldr	r1, .L492+20
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L381
	ldr	r0, .L492+52
	str	r3, [r1]
	ldr	r1, .L492+40
	str	r2, [r6, #16]
	str	r2, [r0, #16]
	str	r3, [r1, #32]
	b	.L381
.L483:
	ldr	r2, .L492+20
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L380
	ldr	r1, [r5, #16]
	cmp	r1, #0
	beq	.L380
	ldr	r1, .L492+24
	ldr	r1, [r1]
	cmp	r1, #1
	moveq	r0, #190
	streq	r1, [r2]
	ldreq	r2, .L492+52
	streq	r0, [r5]
	streq	r3, [r2, #16]
	b	.L380
.L482:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L379
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L379
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L379
	ldr	r2, .L492+20
	ldr	r2, [r2]
	cmp	r2, #4
	ldreq	r1, .L492+28
	ldreq	r2, .L492+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L379
.L481:
	ldr	r3, .L492+20
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L378
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L378
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L492+28
	ldreq	r2, .L492+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L378
.L480:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L377
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L377
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L377
	ldr	r2, .L492+20
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L377
	mov	ip, #4
	ldr	r1, .L492+36
	str	ip, [r2]
	ldr	r2, .L492+40
	str	r3, [r6, #16]
	str	r3, [r1, #16]
	str	r0, [r2, #32]
	b	.L377
.L479:
	ldr	r3, .L492+20
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L376
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L376
	ldr	r2, .L492+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L376
	mov	r0, #4
	mov	r1, #190
	str	r0, [r3]
	ldr	r3, .L492+36
	str	r1, [r5]
	str	r2, [r3, #16]
	b	.L376
.L478:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L375
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L375
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L375
	ldr	r2, .L492+20
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L375
	mov	ip, #3
	ldr	r1, .L492+44
	str	ip, [r2]
	ldr	r2, .L492+40
	str	r3, [r6, #16]
	str	r3, [r1, #16]
	str	r0, [r2, #32]
	b	.L375
.L477:
	ldr	r3, .L492+20
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L374
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L374
	ldr	r2, .L492+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L374
	mov	r0, #3
	mov	r1, #190
	str	r0, [r3]
	ldr	r3, .L492+44
	str	r1, [r5]
	str	r2, [r3, #16]
	b	.L374
.L476:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L373
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L373
	ldr	r3, .L492+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L373
	ldr	r1, .L492+20
	ldr	r2, [r1]
	cmp	r2, #1
	bne	.L373
	mov	ip, #2
	ldr	r0, .L492+48
	str	ip, [r1]
	ldr	r1, .L492+40
	str	r3, [r6, #16]
	str	r3, [r0, #16]
	str	r2, [r1, #32]
	b	.L373
.L475:
	ldr	r3, .L492+20
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L372
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L372
	ldr	r2, .L492+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L372
	mov	r0, #2
	mov	r1, #190
	str	r0, [r3]
	ldr	r3, .L492+48
	str	r1, [r5]
	str	r2, [r3, #16]
	b	.L372
.L474:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L371
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L371
	ldr	r3, .L492+24
	ldr	r1, .L492+20
	ldr	r3, [r3]
	ldr	r2, [r1]
	orrs	r3, r3, r2
	bne	.L371
	ldr	ip, .L492+52
	ldr	r2, .L492+40
	str	r0, [r1]
	str	r3, [r6, #16]
	str	r3, [ip, #16]
	str	r0, [r2, #32]
	b	.L371
.L367:
	ldr	r1, .L492+20
	ldr	r2, .L492+24
	ldr	r3, [r1]
	ldr	r2, [r2]
	orrs	r3, r3, r2
	bne	.L370
	mov	r2, #1
	mov	r0, #190
	str	r2, [r1]
	ldr	r2, .L492+52
	str	r0, [r5]
	str	r3, [r2, #16]
	b	.L370
.L493:
	.align	2
.L492:
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
	ldr	r2, .L503
	ldrh	r3, [r2]
	ldr	r0, .L503+4
	push	{r4, lr}
	ldr	r1, .L503+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L503+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L495:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r4, r1
	bne	.L495
	ldr	r4, .L503+16
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L496
	ldr	r3, .L503+20
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L502
.L498:
	bl	updateEnemy
	bl	updateLives
	bl	updateCannonball
	ldr	r3, .L503+24
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L503+28
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L503+32
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L503+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L502:
	mov	r2, #1
	ldr	r3, .L503+40
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L496:
	cmp	r3, #1
	bne	.L498
	ldr	r2, .L503+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L498
	ldr	r2, .L503+40
	str	r3, [r2, #60]
	add	r0, r2, #40
	bl	updateTreasure.part.0
	b	.L498
.L504:
	.align	2
.L503:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	characterChoice
	.word	fry
	.word	67109120
	.word	helmet
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
	ldr	r2, .L514
	ldrh	r3, [r2]
	ldr	r0, .L514+4
	push	{r4, lr}
	ldr	r1, .L514+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L514+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L506:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r4, r1
	bne	.L506
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L514+16
	ldr	r4, .L514+20
	ldrh	r3, [r3, #48]
	ldr	r2, [r4]
	lsr	r3, r3, #7
	ldr	r1, .L514+24
	eor	r3, r3, #1
	and	r3, r3, #1
	cmp	r2, #0
	str	r3, [r1, #16]
	bne	.L507
	ldr	r3, .L514+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L513
.L509:
	ldr	r0, .L514+32
	bl	updateCoins
	ldr	r0, .L514+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L513:
	mov	r2, #1
	ldr	r3, .L514+40
	str	r2, [r3, #100]
	add	r0, r3, #80
	bl	updateTreasure.part.0
	ldr	r2, [r4]
.L507:
	cmp	r2, #1
	bne	.L509
	ldr	r3, .L514+44
	ldr	r3, [r3, #56]
	cmp	r3, #5
	ble	.L509
	ldr	r3, .L514+40
	str	r2, [r3, #100]
	add	r0, r3, #80
	bl	updateTreasure.part.0
	b	.L509
.L515:
	.align	2
.L514:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	67109120
	.word	characterChoice
	.word	helmet
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
	ldr	r2, .L525
	ldrh	r3, [r2]
	ldr	r0, .L525+4
	push	{r4, lr}
	ldr	r1, .L525+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L525+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L517:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r4, r1
	bne	.L517
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L525+16
	ldr	r4, .L525+20
	ldrh	r3, [r3, #48]
	ldr	r2, [r4]
	lsr	r3, r3, #7
	ldr	r1, .L525+24
	eor	r3, r3, #1
	and	r3, r3, #1
	cmp	r2, #0
	str	r3, [r1, #16]
	bne	.L518
	ldr	r3, .L525+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L524
.L520:
	ldr	r0, .L525+32
	bl	updateCoins
	ldr	r0, .L525+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L524:
	mov	r2, #1
	ldr	r3, .L525+40
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r2, [r4]
.L518:
	cmp	r2, #1
	bne	.L520
	ldr	r3, .L525+44
	ldr	r3, [r3, #56]
	cmp	r3, #5
	ble	.L520
	ldr	r3, .L525+40
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	b	.L520
.L526:
	.align	2
.L525:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	67109120
	.word	characterChoice
	.word	helmet
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
	ldr	r2, .L536
	ldrh	r3, [r2]
	ldr	r0, .L536+4
	push	{r4, lr}
	ldr	r1, .L536+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L536+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L528:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r4, r1
	bne	.L528
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L536+16
	ldr	r4, .L536+20
	ldrh	r3, [r3, #48]
	ldr	r2, [r4]
	lsr	r3, r3, #7
	ldr	r1, .L536+24
	eor	r3, r3, #1
	and	r3, r3, #1
	cmp	r2, #0
	str	r3, [r1, #16]
	bne	.L529
	ldr	r3, .L536+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L535
.L531:
	ldr	r0, .L536+32
	bl	updateCoins
	ldr	r0, .L536+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L535:
	mov	r2, #1
	ldr	r3, .L536+40
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	ldr	r2, [r4]
.L529:
	cmp	r2, #1
	bne	.L531
	ldr	r3, .L536+44
	ldr	r3, [r3, #56]
	cmp	r3, #5
	ble	.L531
	ldr	r3, .L536+40
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L531
.L537:
	.align	2
.L536:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	67109120
	.word	characterChoice
	.word	helmet
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
	.comm	cannonball,28,4
	.comm	enemy,36,4
	.comm	helmet,28,4
	.comm	treasure,200,4
	.comm	treasureP1,40,4
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
