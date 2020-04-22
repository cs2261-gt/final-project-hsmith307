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
.L85:
	mov	lr, #0
	mov	r4, #1
	ldr	r3, .L99+16
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
	ldr	r0, .L99+20
	ldr	r4, .L99+24
	str	r6, [r0]
	str	r6, [r4]
	ldr	r6, .L99+28
	str	r9, [r4, #16]
	ldr	r9, [r3, #156]
	str	r5, [r0, #4]
	str	r5, [r6]
	ldr	r5, .L99+32
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
	str	lr, [r5, #16]
	moveq	r2, #1
	mov	lr, #120
	mov	r7, #180
	str	lr, [r5, #4]
	streq	r2, [r5, #16]
	str	r7, [r5]
	mov	r10, #90
	mov	r5, #0
	mov	r8, #100
	ldr	r2, .L99+36
	str	r10, [r4, #4]
	mov	lr, r5
	mov	r4, r2
	str	r8, [r6, #4]
	str	r5, [r1, #16]
	ldr	r6, .L99+40
	ldr	r1, .L99+44
	str	fp, [r0, #16]
	str	r5, [ip, #16]
	str	r5, [r3, #20]
	str	r5, [r3, #60]
	str	r5, [r3, #100]
	add	r0, r2, #1392
	str	r5, [r3, #140]
	str	r5, [r3, #180]
	str	r5, [r6, #16]
	str	r5, [r1, #16]
	str	r5, [r1, #56]
	add	r0, r0, #8
.L90:
	str	lr, [r4, #24]
	add	r4, r4, #28
	cmp	r4, r0
	bne	.L90
	mov	fp, #208
	mov	r10, #10
	ldr	r6, .L99+48
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
	ldr	r6, .L99+52
	stm	r6, {r10, fp}
	ldr	r10, .L99+56
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
.L91:
	str	ip, [r2]
	str	r1, [r2, #4]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r4, [r2, #24]
	str	r5, [r2, #12]
	add	r2, r2, #28
	cmp	r2, r0
	bne	.L91
	ldr	r5, .L99+60
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L99+64
	ldr	r1, .L99+68
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
	b	.L85
.L98:
	ldr	ip, .L99+12
	ldr	r1, .L99+8
	b	.L85
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
	ldr	r3, .L112
	mov	lr, pc
	bx	r3
	bl	initCoins
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
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r6, #1
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
	mov	r8, #0
	ldr	r3, .L137
	ldr	r4, .L137+4
	mov	lr, pc
	bx	r3
	mov	r0, #8
	mov	r6, r8
	mov	r1, r4
	mov	lr, #67
	mov	ip, #113
	mov	r7, #1
	ldr	r2, .L137+8
	ldr	fp, .L137+12
	ldr	r10, .L137+16
	ldr	r9, .L137+20
	ldr	r3, .L137+24
	add	r5, r4, #1392
	str	r8, [r2, #16]
	str	r8, [r3, #16]
	str	r8, [fp, #16]
	str	r8, [r10, #16]
	str	r8, [r9, #16]
	add	r5, r5, r0
.L128:
	str	lr, [r1]
	str	ip, [r1, #4]
	str	r0, [r1, #16]
	str	r0, [r1, #20]
	str	r6, [r1, #24]
	str	r7, [r1, #12]
	add	r1, r1, #28
	cmp	r5, r1
	bne	.L128
	mov	r1, #64
	mov	r3, #4
	mov	lr, #240
	mov	ip, #90
	mov	r0, #2
	ldr	r8, .L137+28
	str	r3, [r8, #40]
	str	r1, [r8, #12]
	str	r1, [r8, #8]
	str	lr, [r8]
	str	r7, [r8, #20]
	str	r7, [r8, #24]
	str	r6, [r8, #16]
	str	r7, [r8, #36]
	str	r6, [r8, #32]
	str	r6, [r8, #44]
	str	ip, [r8, #4]
	str	r0, [r8, #28]
	bl	initCoins
	mov	r1, #1
	ldr	r2, .L137+8
	ldr	r3, .L137+24
	str	r7, [r8, #16]
	str	r6, [r2, #16]
	str	r6, [r3, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r9, #16]
.L129:
	str	r1, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L129
	ldr	r3, .L137+32
	ldr	r0, .L137+36
	ldr	r2, [r3]
	ldr	ip, .L137+40
	ldr	r3, [r0, #124]
	cmp	r2, #0
	str	r1, [ip, #16]
	add	r3, r3, #25
	bne	.L130
	mov	lr, #2
	ldr	ip, .L137+44
	str	r3, [r0, #124]
	ldr	r3, .L137+48
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r1, [r3, #16]
.L131:
	mov	r2, #1
	ldr	r3, .L137+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L130:
	cmp	r2, #1
	bne	.L132
	mov	lr, #0
	mov	ip, #2
	ldr	r1, .L137+56
	str	r3, [r0, #124]
	ldr	r3, .L137+44
	str	lr, [r1, #56]
	str	r2, [r1, #16]
	str	ip, [r3]
	b	.L131
.L132:
	mov	r1, #2
	ldr	r2, .L137+44
	str	r3, [r0, #124]
	str	r1, [r2]
	b	.L131
.L138:
	.align	2
.L137:
	.word	hideSprites
	.word	bullets
	.word	spaceship
	.word	p2
	.word	p3
	.word	p4
	.word	p1
	.word	alien
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
	ldr	r3, .L147
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r6, #1
	mov	r3, #64
	mov	r1, #2
	mov	r2, #4
	mov	ip, #240
	mov	r0, #90
	ldr	r4, .L147+4
	ldr	fp, .L147+8
	ldr	r10, .L147+12
	ldr	r9, .L147+16
	ldr	r8, .L147+20
	ldr	r7, .L147+24
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	str	r5, [fp, #16]
	str	r5, [r10, #16]
	str	r5, [r9, #16]
	str	r5, [r8, #16]
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
	mov	r1, r6
	ldr	r3, .L147+28
	str	r5, [fp, #16]
	add	r2, r3, #1392
	str	r5, [r10, #16]
	str	r5, [r9, #16]
	str	r5, [r8, #16]
	str	r5, [r7, #16]
	str	r6, [r4, #16]
	add	r2, r2, #8
.L140:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L140
	ldr	r3, .L147+32
	ldr	r0, .L147+36
	ldr	r2, [r3]
	ldr	ip, .L147+40
	ldr	r3, [r0, #164]
	cmp	r2, #0
	str	r1, [ip, #16]
	add	r3, r3, #25
	bne	.L141
	mov	lr, #3
	ldr	ip, .L147+44
	str	r3, [r0, #164]
	ldr	r3, .L147+48
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r1, [r3, #16]
.L142:
	mov	r2, #1
	ldr	r3, .L147+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L141:
	cmp	r2, #1
	bne	.L143
	mov	lr, #0
	mov	ip, #3
	ldr	r1, .L147+56
	str	r3, [r0, #164]
	ldr	r3, .L147+44
	str	lr, [r1, #56]
	str	r2, [r1, #16]
	str	ip, [r3]
	b	.L142
.L143:
	mov	r1, #3
	ldr	r2, .L147+44
	str	r3, [r0, #164]
	str	r1, [r2]
	b	.L142
.L148:
	.align	2
.L147:
	.word	hideSprites
	.word	alien
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
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
	ldr	r3, .L153
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L153+4
	ldr	ip, .L153+8
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L153+12
	ldr	ip, .L153+16
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L153+20
	ldr	ip, .L153+24
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L153+28
	ldr	ip, .L153+32
	ldr	r4, .L153+36
	ldr	lr, .L153+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L150:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L150
	pop	{r4, lr}
	bx	lr
.L154:
	.align	2
.L153:
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
	ldr	r5, .L168
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L168+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L156
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L156:
	ldr	r4, .L168+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L168+12
	add	r6, r6, #8
	b	.L161
.L167:
	ldr	r0, [r5]
.L161:
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
	bne	.L159
	ldr	r3, [r4, #24]
	cmp	r3, #0
	strne	r8, [r5, #16]
	strne	r8, [r4, #24]
.L159:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L167
	ldr	r2, [r5, #44]
	ldr	r3, .L168+16
	add	r2, r2, #1
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #6
	ldr	r1, [r5, #16]
	sub	r3, r2, r3, lsl #1
	orrs	r3, r3, r1
	str	r2, [r5, #44]
	bne	.L155
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
.L155:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L169:
	.align	2
.L168:
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
	ldr	r3, .L184
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	beq	.L171
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	beq	.L183
.L173:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L184+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r2, #16]
	stm	r2, {r0, r1}
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L171:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	bne	.L173
	mov	r2, #1
.L183:
	str	r2, [r3, #28]
	b	.L173
.L185:
	.align	2
.L184:
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
	ldr	r3, .L188
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L188+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L189:
	.align	2
.L188:
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
	ldr	r1, .L199
	ldr	r2, .L199+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L199+8
	ldr	r8, .L199+12
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
.L193:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L195
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L195
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L195:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L193
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L200:
	.align	2
.L199:
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
	ldr	r5, .L226
	ldrh	r0, [r5]
	ldr	r4, .L226+4
	tst	r0, #64
	ldr	r2, [r4, #24]
	beq	.L202
	ldr	r3, .L226+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L220
.L202:
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
	ble	.L205
	mov	r2, #0
	ldr	r1, [r4]
	ldr	r6, .L226+12
	add	r1, r1, #1
	ldr	r0, .L226+16
	str	r1, [r4]
	ldr	r1, .L226+20
	ldr	r3, [r6]
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	ldr	r0, .L226+24
	ldr	r1, .L226+28
	cmp	r3, r2
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	beq	.L221
	cmp	r3, #1
	beq	.L222
.L207:
	cmp	r3, #2
	beq	.L223
.L208:
	cmp	r3, #3
	beq	.L209
.L219:
	ldrh	r0, [r5]
.L205:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L226+32
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L210
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L224
.L210:
	tst	r0, #16
	beq	.L214
	ldr	r3, .L226+8
	ldrh	r2, [r3]
	ands	r5, r2, #16
	beq	.L225
.L214:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L220:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	r2, r2, #1488
	streq	r3, [r4, #48]
	subeq	r2, r2, #12
	b	.L202
.L224:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L210
.L225:
	bl	shootBullets
	mov	r2, r5
	ldr	r3, .L226+36
	ldr	r1, .L226+40
	ldr	r0, .L226+44
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L221:
	mov	r2, #1
	ldr	r3, .L226+48
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L207
.L222:
	ldr	r2, .L226+48
	str	r3, [r2, #100]
	add	r0, r2, #80
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #2
	bne	.L208
.L223:
	mov	r2, #1
	ldr	r3, .L226+48
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #3
	bne	.L219
.L209:
	mov	r2, #1
	ldr	r3, .L226+48
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L219
.L227:
	.align	2
.L226:
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
	ldr	r5, .L252
	ldrh	r0, [r5]
	ldr	r4, .L252+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L229
	ldr	r2, .L252+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L247
.L229:
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
	ldr	r2, .L252+12
	add	r3, r3, r2
	strgt	r1, [r4, #4]
	cmp	r2, r3, ror #1
	ldr	r2, [r4]
	ldr	r3, [r4, #20]
	asr	r1, r1, #8
	add	r3, r2, r3
	str	r1, [r4, #52]
	str	r3, [r4]
	bcc	.L232
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L232:
	ldr	r2, [r4, #56]
	cmp	r2, #10
	ble	.L234
	mov	r1, #0
	add	r3, r3, #1
	ldr	r6, .L252+16
	ldr	r0, .L252+20
	str	r3, [r4]
	ldr	r3, .L252+24
	ldr	r2, [r6]
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	ldr	r0, .L252+28
	ldr	r3, .L252+32
	cmp	r2, r1
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	beq	.L248
	cmp	r2, #1
	beq	.L249
.L236:
	cmp	r2, #2
	beq	.L250
.L237:
	cmp	r2, #3
	beq	.L238
.L246:
	ldrh	r0, [r5]
.L234:
	tst	r0, #16
	beq	.L241
	ldr	r3, .L252+8
	ldrh	r2, [r3]
	ands	r6, r2, #16
	beq	.L251
.L241:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L247:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L229
.L248:
	mov	r2, #1
	ldr	r3, .L252+36
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #1
	bne	.L236
.L249:
	ldr	r3, .L252+36
	str	r2, [r3, #100]
	add	r0, r3, #80
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #2
	bne	.L237
.L250:
	mov	r2, #1
	ldr	r3, .L252+36
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #3
	bne	.L246
.L238:
	mov	r2, #1
	ldr	r3, .L252+36
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L246
.L251:
	mov	r5, #1
	bl	shootBullets
	mov	r2, r6
	ldr	r3, .L252+40
	ldr	r1, .L252+44
	ldr	r0, .L252+48
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, r5
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L253:
	.align	2
.L252:
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
	ldr	r2, .L264
	ldr	r3, .L264+4
	ldr	r2, [r2, #60]
	ldr	r3, [r3, #60]
	orrs	r3, r2, r3
	bxeq	lr
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L256
	ldr	r2, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r2
	sub	r2, r3, #1
	cmp	r2, #237
	bls	.L263
.L256:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L263:
	str	r3, [r0]
	bx	lr
.L265:
	.align	2
.L264:
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
	ldr	r0, .L278
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L267
	ldr	r1, [r4, #28]
	cmp	r1, #9
	movgt	r1, #4
	addle	r1, r1, #1
	str	r1, [r4, #28]
.L267:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L278+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L276
.L270:
	cmp	r3, #0
	beq	.L277
.L266:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L277:
	ldr	r5, .L278+8
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
	ldr	r6, .L278+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L266
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
.L276:
	ldr	r6, .L278+16
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
	ldr	r7, .L278+12
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
	b	.L270
.L279:
	.align	2
.L278:
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
	ldr	r3, .L337
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L334
	cmp	r2, #0
	moveq	r2, #512
	ldreq	lr, .L337+4
	ldrne	lr, .L337+4
	strheq	r2, [lr]	@ movhi
.L284:
	ldr	r2, .L337+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L335
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [lr, #88]	@ movhi
.L286:
	ldr	r3, .L337+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L336
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [lr, #48]	@ movhi
.L288:
	ldr	r1, .L337+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L337+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L289
	mov	ip, #148
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L290
.L291:
	ldr	r3, .L337+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #72]	@ movhi
	beq	.L323
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #74]	@ movhi
	strh	r0, [lr, #72]	@ movhi
	strh	r1, [lr, #76]	@ movhi
.L323:
	ldr	r3, .L337+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #128]	@ movhi
	beq	.L322
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #130]	@ movhi
	strh	r0, [lr, #128]	@ movhi
	strh	r1, [lr, #132]	@ movhi
.L322:
	ldr	r3, .L337+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #136]	@ movhi
	beq	.L321
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #138]	@ movhi
	strh	r0, [lr, #136]	@ movhi
	strh	r1, [lr, #140]	@ movhi
.L321:
	ldr	r3, .L337+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [lr, #240]	@ movhi
	beq	.L296
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
.L296:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L297
	mov	r3, #512
	strh	r3, [lr, #248]	@ movhi
.L299:
	mov	r5, #512
	mov	r4, #150
	ldr	r3, .L337+40
	ldr	r2, .L337+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L298:
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
	bne	.L298
	ldr	r3, .L337+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #8]	@ movhi
	beq	.L320
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #10]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r1, [lr, #12]	@ movhi
.L320:
	ldr	r3, .L337+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L303
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #156
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L337+56
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L319:
	ldr	r3, .L337+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L304
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L337+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L318:
	ldr	r3, .L337+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L305
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #284
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L337+72
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L317:
	mov	r6, #512
	mov	r5, #152
	ldr	r3, .L337+76
	ldr	r2, .L337+4
	ldr	r4, .L337+80
	add	r0, r3, #200
.L308:
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
	bne	.L308
	ldr	r3, .L337+84
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L316
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L316:
	ldr	r3, .L337+88
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L315
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L315:
	ldr	r3, .L337+92
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L314
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L314:
	ldr	r3, .L337+96
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L313
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L313:
	ldr	r3, .L337+100
	mov	lr, pc
	bx	r3
	ldr	r4, .L337+104
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L337+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L337+108
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L337+112
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L305:
	mov	r2, #512
	ldr	r3, .L337+72
	strh	r2, [r3]	@ movhi
	b	.L317
.L304:
	mov	r2, #512
	ldr	r3, .L337+64
	strh	r2, [r3]	@ movhi
	b	.L318
.L303:
	mov	r2, #512
	ldr	r3, .L337+56
	strh	r2, [r3]	@ movhi
	b	.L319
.L297:
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
	b	.L299
.L289:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [lr, #56]	@ movhi
	beq	.L324
	mov	r2, #148
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #68]	@ movhi
.L324:
	mov	r3, #512
	strh	r3, [lr, #64]	@ movhi
	b	.L291
.L290:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L291
.L336:
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
	b	.L288
.L335:
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
	b	.L286
.L334:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	lr, .L337+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	b	.L284
.L338:
	.align	2
.L337:
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
	ldr	r7, .L345
	ldr	r2, .L345+4
	ldr	r3, .L345+8
	ldr	r6, .L345+12
	str	r5, [r7, #16]
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L345+16
	ldr	ip, .L345+20
	ldr	r0, .L345+24
	ldr	r1, .L345+28
	ldr	r7, .L345+32
	ldr	r3, .L345+36
	ldr	r2, .L345+40
	ldr	r9, .L345+44
	ldr	r8, .L345+48
	ldr	r4, .L345+52
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
	ldr	r7, .L345+36
	str	lr, [r7, #16]
	ldr	r7, .L345+40
	str	lr, [r9, #16]
	str	lr, [r8, #16]
	str	lr, [r7, #16]
.L340:
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
	bne	.L340
	mov	r2, #8
	mov	ip, #67
	mov	r0, #113
	mov	r5, #0
	mov	r6, #1
	ldr	r3, .L345+56
	add	r1, r3, #1392
	add	r1, r1, r2
.L341:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r5, [r3, #24]
	str	r6, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L341
	ldr	r3, .L345+60
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
.L346:
	.align	2
.L345:
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
	ldr	r2, .L360
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L360+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r3, .L360+8
	ldr	r1, [r3]
	ldreq	r2, [r3, #20]
	addeq	r1, r1, r2
	ldr	r2, .L360+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #32
	ldreq	r2, [r3, #20]
	subeq	r1, r1, r2
	ldr	r2, .L360+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #64
	ldreq	r0, [r3, #24]
	ldr	r2, [r3, #4]
	subeq	r2, r2, r0
	ldr	r0, .L360+4
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
	ldr	r3, .L360+12
	ldr	r2, [r3, #76]
	cmp	r2, #1
	beq	.L359
.L347:
	pop	{r4, lr}
	bx	lr
.L359:
	ldr	r2, [r3, #116]
	cmp	r2, #1
	bne	.L347
	ldr	r2, [r3, #156]
	cmp	r2, #1
	bne	.L347
	ldr	r3, [r3, #196]
	cmp	r3, #1
	ldreq	r2, .L360+16
	streq	r3, [r2]
	b	.L347
.L361:
	.align	2
.L360:
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
	ldr	r3, .L366
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L366+4
	ldr	lr, .L366+8
	ldr	r3, .L366+12
	str	r0, [lr, #16]
	ldr	r4, .L366+16
	ldr	lr, .L366+20
	str	r0, [ip, #16]
	ldr	ip, .L366+24
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
.L363:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L363
	ldr	r0, .L366+28
	ldr	r1, .L366+32
	ldr	r3, .L366+36
	pop	{r4, lr}
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	b	drawGame
.L367:
	.align	2
.L366:
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
	ldr	r3, .L372
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L372+4
	ldr	ip, .L372+8
	str	r0, [lr, #16]
	ldr	lr, .L372+12
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L372+16
	ldr	lr, .L372+20
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L372+24
	ldr	lr, .L372+28
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L372+32
	ldr	lr, .L372+36
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L372+40
	ldr	lr, .L372+44
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L372+48
	ldr	lr, .L372+52
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L372+56
	ldr	lr, .L372+60
	ldr	r3, .L372+64
	str	r0, [lr, #16]
	ldr	r4, .L372+68
	ldr	lr, .L372+72
	str	r0, [ip, #16]
	ldr	ip, .L372+76
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
.L369:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L369
	pop	{r4, lr}
	b	drawGame
.L373:
	.align	2
.L372:
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
	ldr	r4, .L388
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #16
	beq	.L374
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #8]
	add	r3, r3, r1
	add	r1, r3, r2
	cmp	r1, #159
	str	r3, [r4, #4]
	beq	.L386
.L377:
	ldr	r5, .L388+4
	ldr	lr, [r4, #12]
	ldr	ip, [r4]
	str	r2, [sp, #12]
	str	r3, [sp, #4]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	str	lr, [sp, #8]
	str	ip, [sp]
	ldr	r6, .L388+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L387
.L374:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L387:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L374
	ldr	r3, [r4, #16]
	cmp	r3, #0
	movne	r2, #0
	ldrne	r3, .L388+12
	strne	r2, [r4, #16]
	strne	r0, [r3, #32]
	b	.L374
.L386:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L388+12
	str	r1, [r4, #16]
	str	r2, [r3, #32]
	bl	drawGame
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	b	.L377
.L389:
	.align	2
.L388:
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
	ldr	r4, .L517
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #52]
	ldr	r3, [r4]
	ldr	r5, .L517+4
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldm	r5, {r0, r1}
	ldr	r7, .L517+8
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	ldr	r6, .L517+12
	bne	.L391
.L394:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	bne	.L392
.L395:
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
	beq	.L499
.L396:
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
	beq	.L500
.L397:
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
	beq	.L501
.L398:
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
	beq	.L502
.L399:
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
	beq	.L503
.L400:
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
	beq	.L504
.L401:
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
	beq	.L505
.L402:
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
	beq	.L506
.L403:
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
	beq	.L507
.L404:
	ldr	r4, .L517+16
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
	beq	.L508
.L405:
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
	beq	.L509
.L406:
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
	beq	.L510
.L407:
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
	beq	.L511
.L408:
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
	beq	.L512
.L409:
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
	beq	.L513
.L410:
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
	beq	.L514
.L411:
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
	beq	.L515
.L412:
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
	beq	.L516
.L390:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L391:
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
	bne	.L395
	b	.L394
.L516:
	ldr	r3, .L517+20
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L390
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L390
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L517+28
	ldreq	r2, .L517+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L390
.L515:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L412
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L412
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L412
	ldr	r2, .L517+20
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L412
	mov	ip, #4
	mov	r1, #0
	ldr	r0, .L517+36
	str	ip, [r2]
	ldr	r2, .L517+40
	str	r1, [r6, #16]
	str	r1, [r0, #16]
	str	r3, [r2, #32]
	b	.L412
.L514:
	ldr	r3, .L517+20
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L411
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L411
	ldr	r2, .L517+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L411
	mov	r0, #0
	mov	ip, #4
	mov	r2, #190
	ldr	r1, .L517+36
	str	ip, [r3]
	str	r0, [r1, #16]
	str	r2, [r5]
	b	.L411
.L513:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L410
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L410
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L410
	ldr	r2, .L517+20
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L410
	mov	r1, #0
	mov	r0, #3
	ldr	ip, .L517+44
	str	r1, [r6, #16]
	str	r1, [ip, #16]
	ldr	r1, .L517+40
	str	r0, [r2]
	str	r3, [r1, #32]
	b	.L410
.L512:
	ldr	r3, .L517+20
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L409
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L409
	ldr	r2, .L517+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L409
	mov	r0, #0
	mov	ip, #3
	mov	r2, #190
	ldr	r1, .L517+44
	str	ip, [r3]
	str	r0, [r1, #16]
	str	r2, [r5]
	b	.L409
.L511:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L408
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L408
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L408
	ldr	r2, .L517+20
	ldr	r3, [r2]
	cmp	r3, #1
	bne	.L408
	mov	r1, #0
	mov	r0, #2
	ldr	ip, .L517+48
	str	r1, [r6, #16]
	str	r1, [ip, #16]
	ldr	r1, .L517+40
	str	r0, [r2]
	str	r3, [r1, #32]
	b	.L408
.L510:
	ldr	r3, .L517+20
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L407
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L407
	ldr	r2, .L517+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L407
	mov	r0, #0
	mov	ip, #2
	mov	r2, #190
	ldr	r1, .L517+48
	str	ip, [r3]
	str	r0, [r1, #16]
	str	r2, [r5]
	b	.L407
.L509:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L406
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L406
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L406
	ldr	r1, .L517+20
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L406
	ldr	r0, .L517+52
	str	r3, [r1]
	ldr	r1, .L517+40
	str	r2, [r6, #16]
	str	r2, [r0, #16]
	str	r3, [r1, #32]
	b	.L406
.L508:
	ldr	r2, .L517+20
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L405
	ldr	r1, [r5, #16]
	cmp	r1, #0
	beq	.L405
	ldr	r1, .L517+24
	ldr	r1, [r1]
	cmp	r1, #1
	moveq	r0, #190
	streq	r1, [r2]
	ldreq	r2, .L517+52
	streq	r0, [r5]
	streq	r3, [r2, #16]
	b	.L405
.L507:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L404
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L404
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L404
	ldr	r2, .L517+20
	ldr	r2, [r2]
	cmp	r2, #4
	ldreq	r1, .L517+28
	ldreq	r2, .L517+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L404
.L506:
	ldr	r3, .L517+20
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L403
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L403
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L517+28
	ldreq	r2, .L517+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L403
.L505:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L402
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L402
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L402
	ldr	r2, .L517+20
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L402
	mov	ip, #4
	ldr	r1, .L517+36
	str	ip, [r2]
	ldr	r2, .L517+40
	str	r3, [r6, #16]
	str	r3, [r1, #16]
	str	r0, [r2, #32]
	b	.L402
.L504:
	ldr	r3, .L517+20
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L401
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L401
	ldr	r2, .L517+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L401
	mov	r0, #4
	mov	r1, #190
	str	r0, [r3]
	ldr	r3, .L517+36
	str	r1, [r5]
	str	r2, [r3, #16]
	b	.L401
.L503:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L400
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L400
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L400
	ldr	r2, .L517+20
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L400
	mov	ip, #3
	ldr	r1, .L517+44
	str	ip, [r2]
	ldr	r2, .L517+40
	str	r3, [r6, #16]
	str	r3, [r1, #16]
	str	r0, [r2, #32]
	b	.L400
.L502:
	ldr	r3, .L517+20
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L399
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L399
	ldr	r2, .L517+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L399
	mov	r0, #3
	mov	r1, #190
	str	r0, [r3]
	ldr	r3, .L517+44
	str	r1, [r5]
	str	r2, [r3, #16]
	b	.L399
.L501:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L398
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L398
	ldr	r3, .L517+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L398
	ldr	r1, .L517+20
	ldr	r2, [r1]
	cmp	r2, #1
	bne	.L398
	mov	ip, #2
	ldr	r0, .L517+48
	str	ip, [r1]
	ldr	r1, .L517+40
	str	r3, [r6, #16]
	str	r3, [r0, #16]
	str	r2, [r1, #32]
	b	.L398
.L500:
	ldr	r3, .L517+20
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L397
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L397
	ldr	r2, .L517+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L397
	mov	r0, #2
	mov	r1, #190
	str	r0, [r3]
	ldr	r3, .L517+48
	str	r1, [r5]
	str	r2, [r3, #16]
	b	.L397
.L499:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L396
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L396
	ldr	r3, .L517+24
	ldr	r1, .L517+20
	ldr	r3, [r3]
	ldr	r2, [r1]
	orrs	r3, r3, r2
	bne	.L396
	ldr	ip, .L517+52
	ldr	r2, .L517+40
	str	r0, [r1]
	str	r3, [r6, #16]
	str	r3, [ip, #16]
	str	r0, [r2, #32]
	b	.L396
.L392:
	ldr	r1, .L517+20
	ldr	r2, .L517+24
	ldr	r3, [r1]
	ldr	r2, [r2]
	orrs	r3, r3, r2
	bne	.L395
	mov	r2, #1
	mov	r0, #190
	str	r2, [r1]
	ldr	r2, .L517+52
	str	r0, [r5]
	str	r3, [r2, #16]
	b	.L395
.L518:
	.align	2
.L517:
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
	ldr	r2, .L523
	ldrh	r3, [r2]
	ldr	r0, .L523+4
	push	{r4, lr}
	ldr	r1, .L523+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L523+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L520:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L520
	bl	updateEnemy
	bl	updateLives
	bl	updateCannonball
	ldr	r3, .L523+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L523+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L523+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L523+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L524:
	.align	2
.L523:
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
	ldr	r2, .L529
	ldrh	r3, [r2]
	ldr	r0, .L529+4
	push	{r4, lr}
	ldr	r1, .L529+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L529+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L526:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L526
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L529+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L529+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L529+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L529+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L530:
	.align	2
.L529:
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
	ldr	r2, .L535
	ldrh	r3, [r2]
	ldr	r0, .L535+4
	push	{r4, lr}
	ldr	r1, .L535+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L535+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L532:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L532
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L535+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L535+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L535+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L535+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L536:
	.align	2
.L535:
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
