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
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #20
	mov	r4, #70
	mov	lr, #1
	mov	r1, #32
	mov	ip, #7
	mov	r0, #2
	ldr	r3, .L64
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #20]
	str	ip, [r3, #28]
	str	r0, [r3, #32]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, r5, lr}
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
	.global	initGoo
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGoo, %function
initGoo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #64
	mov	ip, #3
	mov	r0, #90
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
	.word	goo
	.size	initGoo, .-initGoo
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
	ldr	r3, .L83
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L84:
	.align	2
.L83:
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
	ldr	r5, .L120
	strh	r4, [r3]	@ movhi
	ldr	r3, [r5]
	ldr	r4, .L120+4
	cmp	r3, r1
	str	r1, [r4, #20]
	str	r1, [r4, #24]
	str	lr, [r4, #16]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
	beq	.L118
.L87:
	cmp	r3, #0
	beq	.L119
.L88:
	mov	r5, #0
	mov	r3, #1
	ldr	lr, .L120+8
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
	ldr	r4, .L120+12
	str	r1, [r4, #16]
	ldr	r1, .L120+16
	str	ip, [r4]
	str	ip, [r1]
	ldr	ip, .L120+20
	str	r9, [r1, #16]
	str	r0, [r4, #4]
	ldr	r9, [lr, #156]
	str	r0, [ip]
	ldr	r0, .L120+24
	str	r5, [ip, #16]
	str	r5, [r0, #16]
	str	r8, [ip, #4]
	str	r2, [r4, #12]
	str	r6, [r0]
	str	r7, [r0, #4]
	ldr	r6, .L120+28
	ldr	r7, .L120+32
	str	r2, [r4, #8]
	ldr	r8, .L120+36
	ldr	r4, .L120+40
	cmp	r9, r5
	ldr	r5, .L120+44
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
	ldr	r3, .L120+48
	mov	r0, ip
	mov	r1, r3
	ldr	r4, .L120+52
	ldr	r5, .L120+56
	str	ip, [r4, #16]
	str	ip, [lr, #20]
	str	ip, [lr, #60]
	str	ip, [lr, #100]
	str	ip, [lr, #140]
	str	ip, [lr, #180]
	ldr	r4, .L120+60
	ldr	lr, .L120+64
	add	r2, r3, #1392
	str	ip, [r5, #16]
	str	ip, [r4, #16]
	str	ip, [lr, #16]
	str	ip, [lr, #56]
	add	r2, r2, #8
.L98:
	str	r0, [r1, #24]
	add	r1, r1, #28
	cmp	r2, r1
	bne	.L98
	mov	fp, #208
	mov	r10, #10
	ldr	r6, .L120+68
	mov	r7, #1
	mov	r8, #32
	str	fp, [r6]
	str	r10, [r6, #4]
	mov	fp, #42
	mov	r10, #216
	str	r0, [r6, #16]
	str	r7, [r6, #20]
	str	r7, [r6, #28]
	str	r0, [r6, #32]
	str	r8, [r6, #12]
	str	r8, [r6, #8]
	ldr	r6, .L120+72
	stm	r6, {r10, fp}
	ldr	r10, .L120+76
	mov	r5, r7
	str	r7, [r6, #24]
	str	r0, [r6, #16]
	str	r7, [r10, #20]
	str	r0, [r10, #16]
	mov	r7, #70
	str	r0, [r10, #36]
	str	r0, [r10, #40]
	mov	r0, #20
	stm	r10, {r0, r7}
	mov	r0, #7
	mov	r9, #8
	str	r0, [r10, #28]
	mov	r0, #2
	mov	r1, r9
	mov	lr, #67
	mov	ip, #113
	mov	r4, #0
	str	r9, [r6, #12]
	str	r8, [r10, #12]
	str	r8, [r10, #8]
	str	r0, [r10, #32]
	str	r9, [r6, #8]
.L99:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r4, [r3, #24]
	str	r5, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L99
	ldr	r5, .L120+80
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L120+84
	ldr	r1, .L120+88
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L120+92
	ldr	r1, .L120+96
	mov	lr, pc
	bx	r5
	ldr	r3, .L120+100
	ldr	r0, .L120+104
	ldr	r1, .L120+108
	ldr	r2, .L120+112
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L119:
	bl	initFry
	b	.L88
.L118:
	bl	initLeela
	ldr	r3, [r5]
	b	.L87
.L121:
	.align	2
.L120:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L152
	mov	lr, pc
	bx	r3
	bl	initCoins
	mov	r1, #0
	mov	r3, #1
	ldr	ip, .L152+4
	ldr	r2, .L152+8
	ldr	lr, [ip, #20]
	ldr	r0, [r2, #20]
	cmp	lr, r1
	moveq	r9, r3
	movne	r9, r1
	cmp	r0, r1
	moveq	r4, r3
	movne	r4, r1
	mov	lr, #90
	mov	r5, #3
	str	r4, [r2, #16]
	ldr	r4, .L152+12
	ldr	r2, [r4, #20]
	str	r9, [ip, #16]
	cmp	r2, r1
	ldr	ip, .L152+16
	ldr	r2, .L152+20
	str	r1, [ip, #32]
	stm	r2, {r5, lr}
	str	r1, [r2, #16]
	str	r1, [ip, #44]
	str	lr, [ip, #4]
	ldr	r1, .L152+24
	ldr	lr, .L152+28
	str	r3, [r1, #16]
	str	r3, [lr, #16]
	str	r3, [r4, #16]
	str	r3, [ip, #20]
	str	r3, [ip, #24]
	str	r3, [ip, #36]
	movne	r3, #0
	strne	r3, [r4, #16]
	ldr	r3, [lr, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [lr, #16]
	ldr	r3, [r1, #20]
	cmp	r3, #0
	movne	r3, #0
	mov	r0, #64
	strne	r3, [r1, #16]
	mov	r1, #203
	mov	r3, #1
	str	r0, [r2, #12]
	str	r0, [r2, #8]
	str	r0, [ip, #12]
	str	r0, [ip, #8]
	mov	r8, #240
	mov	r7, #2
	mov	r6, #4
	mov	r0, #120
	ldr	r2, .L152+32
	ldr	lr, [r2]
	ldr	r2, .L152+36
	str	r1, [r2, #40]
	ldr	r1, .L152+40
	cmp	lr, #0
	str	r8, [ip]
	str	r7, [ip, #28]
	str	r6, [ip, #40]
	str	r0, [r2, #44]
	str	r3, [r2, #48]
	str	r3, [r1, #16]
	str	r3, [r1, #28]
	bne	.L128
	ldr	r3, .L152+44
	str	lr, [r3, #56]
.L129:
	ldr	r3, .L152+48
	mov	r0, #1
	mov	r2, r3
	add	r1, r3, #1392
	add	r1, r1, #8
.L130:
	str	r0, [r2, #12]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L130
	mov	r5, #0
	ldr	r4, .L152+52
	ldr	r2, .L152+56
	cmp	lr, #1
	str	r5, [r4]
	str	r0, [r2, #16]
	beq	.L151
	cmp	lr, #0
	ldreq	r2, .L152+44
	streq	r0, [r2, #16]
.L132:
	mov	lr, #1
	mov	r0, #0
	str	lr, [ip, #16]
	ldr	ip, .L152+60
	mov	r2, lr
	str	r0, [ip, #16]
	ldr	lr, .L152+64
	ldr	ip, .L152+68
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L152+72
	ldr	ip, .L152+76
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L133:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L133
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L128:
	cmp	lr, #1
	moveq	r2, #0
	ldreq	r3, .L152+80
	streq	r2, [r3, #56]
	b	.L129
.L151:
	ldr	r2, .L152+80
	str	lr, [r2, #16]
	b	.L132
.L153:
	.align	2
.L152:
	.word	hideSprites
	.word	life5
	.word	life4
	.word	life3
	.word	alien
	.word	goo
	.word	life1
	.word	life2
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
	ldr	r3, .L185
	mov	lr, pc
	bx	r3
	mov	r5, #1
	mov	r6, #0
	mov	r7, #64
	mov	r8, #90
	mov	r1, #240
	mov	r2, #2
	mov	r3, #4
	ldr	r4, .L185+4
	str	r1, [r4]
	str	r2, [r4, #28]
	str	r3, [r4, #40]
	str	r8, [r4, #4]
	str	r7, [r4, #12]
	str	r7, [r4, #8]
	str	r5, [r4, #20]
	str	r5, [r4, #24]
	str	r5, [r4, #36]
	str	r6, [r4, #16]
	str	r6, [r4, #32]
	str	r6, [r4, #44]
	bl	initCoins
	mov	ip, #3
	ldr	r3, .L185+8
	mov	r0, r5
	mov	r2, r3
	ldr	r1, .L185+12
	str	r5, [r4, #16]
	ldr	lr, .L185+16
	ldr	r4, .L185+20
	str	r8, [r1, #4]
	ldr	r8, .L185+24
	str	r6, [r1, #16]
	str	r7, [r1, #12]
	str	r7, [r1, #8]
	str	ip, [r1]
	str	r6, [lr, #16]
	ldr	r1, .L185+28
	str	r6, [r4, #16]
	str	r6, [r8, #16]
	ldr	r9, .L185+32
	ldr	ip, .L185+36
	ldr	lr, .L185+40
	ldr	r4, .L185+44
	ldr	r7, .L185+48
	ldr	r8, .L185+52
	str	r6, [r1, #16]
	str	r6, [r9, #16]
	add	r1, r3, #1392
	str	r5, [ip, #16]
	str	r5, [lr, #16]
	str	r5, [r4, #16]
	str	r5, [r7, #16]
	str	r5, [r8, #16]
	add	r1, r1, #8
.L155:
	str	r0, [r2, #24]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L155
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
	ldr	r2, .L185+56
	ldr	r0, [r2]
	cmp	r0, #0
	bne	.L161
	ldr	r2, .L185+60
	str	r0, [r2, #56]
.L162:
	mov	r2, #1
.L163:
	str	r2, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L163
	ldr	r1, .L185+64
	ldr	r3, [r1, #84]
	ldr	lr, .L185+68
	ldr	ip, .L185+72
	add	r3, r3, #25
	cmp	r0, #1
	str	r3, [r1, #84]
	str	r2, [lr, #16]
	str	r2, [ip]
	beq	.L184
	cmp	r0, #0
	ldreq	r3, .L185+60
	streq	r2, [r3, #16]
.L165:
	mov	r2, #1
	ldr	r3, .L185+76
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L161:
	cmp	r0, #1
	moveq	ip, #0
	ldreq	r2, .L185+80
	streq	ip, [r2, #56]
	b	.L162
.L184:
	ldr	r3, .L185+80
	str	r0, [r3, #16]
	b	.L165
.L186:
	.align	2
.L185:
	.word	hideSprites
	.word	alien
	.word	bullets
	.word	goo
	.word	spaceship
	.word	p1
	.word	p3
	.word	p4
	.word	p2
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
	mov	r10, #0
	ldr	r3, .L217
	ldr	r4, .L217+4
	mov	lr, pc
	bx	r3
	mov	lr, #8
	mov	r7, r10
	mov	ip, r4
	mov	r9, #67
	mov	r8, #113
	mov	r6, #1
	ldr	r0, .L217+8
	ldr	r1, .L217+12
	ldr	r2, .L217+16
	ldr	fp, .L217+20
	ldr	r3, .L217+24
	add	r5, r4, #1392
	str	r10, [r0, #16]
	str	r10, [r1, #16]
	str	r10, [r2, #16]
	str	r10, [r3, #16]
	str	r10, [fp, #16]
	add	r5, r5, lr
.L188:
	str	r9, [ip]
	str	r8, [ip, #4]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	r7, [ip, #24]
	str	r6, [ip, #12]
	add	ip, ip, #28
	cmp	r5, ip
	bne	.L188
	mov	r9, #64
	mov	lr, #240
	mov	ip, #2
	mov	r3, #4
	mov	r10, #90
	ldr	r8, .L217+28
	str	lr, [r8]
	str	ip, [r8, #28]
	str	r3, [r8, #40]
	str	r10, [r8, #4]
	str	r6, [r8, #20]
	str	r6, [r8, #24]
	str	r7, [r8, #16]
	str	r6, [r8, #36]
	str	r7, [r8, #32]
	str	r7, [r8, #44]
	str	r9, [r8, #12]
	str	r9, [r8, #8]
	bl	initCoins
	mov	lr, #3
	mov	ip, #1
	ldr	r0, .L217+8
	ldr	r1, .L217+12
	str	r7, [r0, #16]
	ldr	r2, .L217+16
	ldr	r0, .L217+32
	ldr	r3, .L217+24
	str	r6, [r8, #16]
	str	r7, [r1, #16]
	str	r7, [r2, #16]
	str	r7, [r3, #16]
	ldr	r1, .L217+36
	ldr	r2, .L217+40
	ldr	r3, .L217+44
	ldr	r8, .L217+48
	str	r10, [r0, #4]
	ldr	r10, .L217+52
	str	r7, [fp, #16]
	str	r7, [r0, #16]
	str	r9, [r0, #12]
	str	r9, [r0, #8]
	str	lr, [r0]
	str	r6, [r1, #16]
	str	r6, [r2, #16]
	str	r6, [r3, #16]
	str	r6, [r8, #16]
	str	r6, [r10, #16]
.L189:
	str	ip, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L189
	ldr	r0, [r10, #20]
	cmp	r0, #0
	movne	r0, #0
	strne	r0, [r10, #16]
	ldr	r0, [r8, #20]
	cmp	r0, #0
	movne	r0, #0
	strne	r0, [r8, #16]
	ldr	r0, [r3, #20]
	cmp	r0, #0
	movne	r0, #0
	strne	r0, [r3, #16]
	ldr	r3, [r2, #20]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r2, #16]
	ldr	r3, [r1, #20]
	cmp	r3, #0
	movne	r3, #0
	mov	r0, #1
	strne	r3, [r1, #16]
	ldr	r3, .L217+56
	ldr	r1, .L217+60
	ldr	r2, [r3]
	ldr	ip, .L217+64
	ldr	r3, [r1, #124]
	cmp	r2, #0
	str	r0, [ip, #16]
	add	r3, r3, #25
	bne	.L195
	mov	lr, #2
	ldr	ip, .L217+68
	str	r3, [r1, #124]
	ldr	r3, .L217+72
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r0, [r3, #16]
.L196:
	mov	r2, #1
	ldr	r3, .L217+76
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L195:
	cmp	r2, #1
	bne	.L197
	mov	lr, #0
	mov	ip, #2
	ldr	r0, .L217+80
	str	r3, [r1, #124]
	ldr	r3, .L217+68
	str	lr, [r0, #56]
	str	r2, [r0, #16]
	str	ip, [r3]
	b	.L196
.L197:
	mov	r0, #2
	ldr	r2, .L217+68
	str	r3, [r1, #124]
	str	r0, [r2]
	b	.L196
.L218:
	.align	2
.L217:
	.word	hideSprites
	.word	bullets
	.word	spaceship
	.word	p1
	.word	p2
	.word	p4
	.word	p3
	.word	alien
	.word	goo
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	ldr	r3, .L247
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r7, #64
	mov	r1, #240
	mov	r2, #2
	mov	r3, #4
	mov	r8, #90
	ldr	ip, .L247+4
	ldr	r0, .L247+8
	ldr	r4, .L247+12
	str	r5, [ip, #16]
	str	r5, [r0, #16]
	ldr	ip, .L247+16
	ldr	r0, .L247+20
	ldr	r9, .L247+24
	str	r5, [r0, #16]
	str	r1, [r4]
	str	r2, [r4, #28]
	str	r3, [r4, #40]
	str	r5, [ip, #16]
	str	r5, [r9, #16]
	str	r5, [r4, #16]
	str	r5, [r4, #32]
	str	r5, [r4, #44]
	str	r8, [r4, #4]
	str	r6, [r4, #20]
	str	r6, [r4, #24]
	str	r6, [r4, #36]
	str	r7, [r4, #12]
	str	r7, [r4, #8]
	bl	initCoins
	mov	r0, #3
	mov	r2, r6
	ldr	r1, .L247+28
	ldr	r3, .L247+32
	str	r8, [r1, #4]
	str	r5, [r1, #16]
	str	r7, [r1, #12]
	str	r7, [r1, #8]
	str	r0, [r1]
	str	r5, [r9, #16]
	add	r1, r3, #1392
	str	r6, [r4, #16]
	add	r1, r1, #8
.L220:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L220
	ldr	lr, .L247+36
	ldr	r5, [lr, #20]
	ldr	r3, .L247+40
	ldr	r1, .L247+44
	ldr	r0, .L247+48
	ldr	ip, .L247+52
	ldr	r4, .L247+56
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
	ldr	r3, .L247+60
	ldr	r1, .L247+64
	ldr	r2, [r3]
	ldr	r3, [r1, #164]
	cmp	r2, #0
	add	r3, r3, #25
	bne	.L226
	mov	lr, #3
	mov	r0, #1
	ldr	ip, .L247+68
	str	r3, [r1, #164]
	ldr	r3, .L247+72
	str	lr, [ip]
	str	r0, [r3, #16]
	str	r2, [r3, #56]
.L227:
	mov	r2, #1
	ldr	r3, .L247+76
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L226:
	cmp	r2, #1
	bne	.L228
	mov	lr, #0
	mov	ip, #3
	ldr	r0, .L247+80
	str	r3, [r1, #164]
	ldr	r3, .L247+68
	str	lr, [r0, #56]
	str	r2, [r0, #16]
	str	ip, [r3]
	b	.L227
.L228:
	mov	r0, #3
	ldr	r2, .L247+68
	str	r3, [r1, #164]
	str	r0, [r2]
	b	.L227
.L248:
	.align	2
.L247:
	.word	hideSprites
	.word	p1
	.word	p2
	.word	alien
	.word	p3
	.word	p4
	.word	spaceship
	.word	goo
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
	ldr	r3, .L253
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L253+4
	ldr	lr, .L253+8
	str	r0, [ip, #16]
	ldr	ip, .L253+12
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L253+16
	ldr	ip, .L253+20
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L253+24
	ldr	ip, .L253+28
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L253+32
	ldr	ip, .L253+36
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L253+40
	ldr	ip, .L253+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L253+48
	ldr	ip, .L253+52
	ldr	r4, .L253+56
	ldr	lr, .L253+60
	add	r1, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r1, r1, #8
.L250:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L250
	ldr	r1, .L253+64
	ldr	r3, .L253+68
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	pop	{r4, lr}
	bx	lr
.L254:
	.align	2
.L253:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L271
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L271+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #20
	bcc	.L256
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L256:
	ldr	r4, .L271+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L271+12
	ldr	r9, .L271+16
	ldr	fp, .L271+20
	ldr	r10, .L271+24
	add	r6, r6, #8
	b	.L264
.L260:
	add	r4, r4, #28
	cmp	r4, r6
	beq	.L263
.L270:
	ldr	r0, [r5]
.L264:
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
	bne	.L260
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L260
	ldr	r3, [r9]
	cmp	r3, #0
	str	r8, [r5, #16]
	str	r8, [r4, #24]
	bne	.L262
	ldr	r3, [r10, #68]
	cmp	r3, #0
	bne	.L260
	ldr	r2, .L271+28
	add	r4, r4, #28
	cmp	r4, r6
	str	r0, [r10, #68]
	str	r3, [r2, #16]
	bne	.L270
.L263:
	ldr	r2, [r5, #44]
	ldr	r3, .L271+32
	add	r2, r2, #1
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #6
	ldr	r1, [r5, #16]
	sub	r3, r2, r3, lsl #1
	orrs	r3, r3, r1
	str	r2, [r5, #44]
	bne	.L255
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
.L255:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L262:
	cmp	r3, #1
	bne	.L260
	ldr	r2, [fp, #68]
	cmp	r2, #0
	streq	r3, [fp, #68]
	ldreq	r3, .L271+28
	streq	r2, [r3, #16]
	b	.L260
.L272:
	.align	2
.L271:
	.word	alien
	.word	238609294
	.word	bullets
	.word	collision
	.word	characterChoice
	.word	leela
	.word	fry
	.word	goo
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
	ldr	r3, .L289
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	ldr	ip, [r3, #32]
	beq	.L274
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	bne	.L276
	str	r2, [r3, #28]
	bx	lr
.L274:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	moveq	r2, #1
	streq	r2, [r3, #28]
.L276:
	cmp	ip, #0
	bxeq	lr
	ldr	r2, [r3]
	cmp	r2, #30
	cmpne	r2, #10
	moveq	r1, #1
	movne	r1, #0
	cmp	r2, #60
	orreq	r1, r1, #1
	cmp	r2, #90
	orreq	r1, r1, #1
	cmp	r1, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldmib	r3, {r0, r1}
	add	r0, r0, r1
	ldr	r1, .L289+4
	add	r2, r2, #8
	sub	r0, r0, #10
	str	lr, [r1, #16]
	str	r2, [r1]
	str	r0, [r1, #4]
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L290:
	.align	2
.L289:
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
	ldr	r3, .L293
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L293+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L294:
	.align	2
.L293:
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
	ldr	r1, .L304
	ldr	r2, .L304+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L304+8
	ldr	r8, .L304+12
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
.L298:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L300
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L300
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L300:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L298
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L305:
	.align	2
.L304:
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
	ldr	r5, .L337
	ldrh	r3, [r5]
	ldr	r4, .L337+4
	tst	r3, #64
	ldr	r3, [r4, #24]
	beq	.L307
	ldr	r2, .L337+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L330
.L307:
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
	ldr	r3, .L337+12
	ldrh	r3, [r3, #48]
	tst	r3, #4
	bne	.L310
	mov	r2, #5
	mov	r1, #1
	ldr	r3, .L337+16
	str	r1, [r4, #64]
	str	r2, [r3]
.L311:
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #56]
	asr	r3, r3, #8
	cmp	r1, r2
	str	r3, [r4, #52]
	ble	.L313
	mov	r2, #0
	ldr	r1, [r4]
	ldr	r6, .L337+20
	add	r1, r1, #1
	ldr	r0, .L337+24
	str	r1, [r4]
	ldr	r1, .L337+28
	ldr	r3, [r6]
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	ldr	r0, .L337+32
	ldr	r1, .L337+36
	cmp	r3, r2
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	beq	.L331
	cmp	r3, #1
	beq	.L332
.L315:
	cmp	r3, #2
	beq	.L333
.L316:
	cmp	r3, #3
	beq	.L334
.L313:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L337+40
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L318
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L335
.L318:
	ldrh	r3, [r5]
	tst	r3, #16
	beq	.L322
	ldr	r3, .L337+8
	ldrh	r2, [r3]
	ands	r5, r2, #16
	beq	.L336
.L322:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L330:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L307
	ldr	r2, [r4, #68]
	cmp	r2, #0
	movne	r2, #1
	subne	r3, r3, #1488
	strne	r2, [r4, #48]
	subne	r3, r3, #12
	b	.L307
.L310:
	mov	r3, #10
	mov	r0, #0
	ldr	r1, .L337+16
	mov	r2, r3
	str	r0, [r4, #64]
	str	r3, [r1]
	b	.L311
.L335:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L318
.L331:
	mov	r2, #1
	ldr	r3, .L337+44
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L315
.L332:
	ldr	r2, .L337+44
	str	r3, [r2, #100]
	add	r0, r2, #80
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #2
	bne	.L316
.L333:
	mov	r2, #1
	ldr	r3, .L337+44
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #3
	bne	.L313
.L334:
	mov	r2, #1
	ldr	r3, .L337+44
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L313
.L336:
	bl	shootBullets
	mov	r2, r5
	ldr	r3, .L337+48
	ldr	r1, .L337+52
	ldr	r0, .L337+56
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L338:
	.align	2
.L337:
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
	ldr	r5, .L369
	ldrh	r3, [r5]
	ldr	r4, .L369+4
	tst	r3, #64
	ldr	r2, [r4, #24]
	beq	.L340
	ldr	r3, .L369+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L363
.L340:
	ldr	r3, .L369+12
	ldrh	r3, [r3, #48]
	tst	r3, #4
	moveq	r1, #1
	movne	r1, #0
	moveq	r3, #5
	movne	r3, #10
	ldr	r0, .L369+16
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
	ldr	r2, .L369+20
	add	r3, r3, r2
	strgt	r1, [r4, #4]
	cmp	r2, r3, ror #1
	ldr	r2, [r4]
	ldr	r3, [r4, #20]
	asr	r1, r1, #8
	add	r3, r2, r3
	str	r1, [r4, #52]
	str	r3, [r4]
	bcc	.L345
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L345:
	ldr	r2, [r0]
	ldr	r1, [r4, #56]
	cmp	r1, r2
	ble	.L348
	mov	r1, #0
	add	r3, r3, #1
	ldr	r6, .L369+24
	ldr	r0, .L369+28
	str	r3, [r4]
	ldr	r3, .L369+32
	ldr	r2, [r6]
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	ldr	r0, .L369+36
	ldr	r3, .L369+40
	cmp	r2, r1
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	beq	.L364
	cmp	r2, #1
	beq	.L365
.L350:
	cmp	r2, #2
	beq	.L366
.L351:
	cmp	r2, #3
	beq	.L367
.L348:
	ldrh	r3, [r5]
	tst	r3, #16
	beq	.L355
	ldr	r3, .L369+8
	ldrh	r2, [r3]
	ands	r6, r2, #16
	beq	.L368
.L355:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L363:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L340
	ldr	r3, [r4, #68]
	cmp	r3, #0
	movne	r3, #1
	subne	r2, r2, #1488
	strne	r3, [r4, #48]
	subne	r2, r2, #12
	b	.L340
.L364:
	mov	r2, #1
	ldr	r3, .L369+44
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #1
	bne	.L350
.L365:
	ldr	r3, .L369+44
	str	r2, [r3, #100]
	add	r0, r3, #80
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #2
	bne	.L351
.L366:
	mov	r2, #1
	ldr	r3, .L369+44
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #3
	bne	.L348
.L367:
	mov	r2, #1
	ldr	r3, .L369+44
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L348
.L368:
	mov	r5, #1
	bl	shootBullets
	mov	r2, r6
	ldr	r3, .L369+48
	ldr	r1, .L369+52
	ldr	r0, .L369+56
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, r5
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L370:
	.align	2
.L369:
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
	ldr	r2, .L381
	ldr	r3, .L381+4
	ldr	r2, [r2, #60]
	ldr	r3, [r3, #60]
	orrs	r3, r2, r3
	bxeq	lr
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L373
	ldr	r2, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r2
	sub	r2, r3, #1
	cmp	r2, #237
	bls	.L380
.L373:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L380:
	str	r3, [r0]
	bx	lr
.L382:
	.align	2
.L381:
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
	ldr	r0, .L395
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L384
	ldr	r1, [r4, #28]
	cmp	r1, #9
	movgt	r1, #4
	addle	r1, r1, #1
	str	r1, [r4, #28]
.L384:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L395+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L393
.L387:
	cmp	r3, #0
	beq	.L394
.L383:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L394:
	ldr	r5, .L395+8
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
	ldr	r6, .L395+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L383
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
.L393:
	ldr	r6, .L395+16
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
	ldr	r7, .L395+12
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
	b	.L387
.L396:
	.align	2
.L395:
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
	.global	updateHelmet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHelmet, %function
updateHelmet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L407
	ldr	r2, [r3, #40]
	add	r2, r2, #1
	sub	r0, r2, #70
	rsbs	r1, r0, #0
	adc	r1, r1, r0
	ldr	r0, [r3, #16]
	cmp	r0, #0
	moveq	r1, #0
	cmp	r1, #0
	str	r2, [r3, #40]
	movne	r2, #0
	strne	r2, [r3, #16]
	ldr	r2, [r3, #32]
	cmp	r2, #3
	bxne	lr
	ldr	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #100
	str	r2, [r3, #36]
	moveq	r1, #2
	moveq	r2, #0
	streq	r1, [r3, #32]
	streq	r2, [r3, #36]
	bx	lr
.L408:
	.align	2
.L407:
	.word	helmet
	.size	updateHelmet, .-updateHelmet
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
	ldr	r3, .L468
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L460
	cmp	r2, #0
	moveq	r2, #512
	ldreq	r5, .L468+4
	ldrne	r5, .L468+4
	strheq	r2, [r5]	@ movhi
.L411:
	ldr	r2, .L468+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L461
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [r5, #88]	@ movhi
.L413:
	ldr	r3, .L468+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L462
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [r5, #48]	@ movhi
.L415:
	ldr	r1, .L468+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	moveq	r3, #512
	strheq	r3, [r5, #56]	@ movhi
	beq	.L417
	ldr	r3, [r1, #20]
	cmp	r3, #0
	beq	.L463
.L417:
	ldr	r3, .L468+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #64]	@ movhi
	beq	.L419
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L464
.L419:
	ldr	r3, .L468+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #72]	@ movhi
	beq	.L421
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L465
.L421:
	ldr	r3, .L468+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #128]	@ movhi
	beq	.L423
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L466
.L423:
	ldr	r3, .L468+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #136]	@ movhi
	beq	.L425
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L467
.L425:
	ldr	r3, .L468+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r5, #240]	@ movhi
	beq	.L427
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
.L427:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L428
	mov	r3, #512
	strh	r3, [r5, #248]	@ movhi
.L430:
	mov	r4, #512
	mov	lr, #150
	ldr	r3, .L468+40
	ldr	r2, .L468+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L429:
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
	bne	.L429
	ldr	r3, .L468+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #8]	@ movhi
	beq	.L453
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #10]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r1, [r5, #12]	@ movhi
.L453:
	ldr	r3, .L468+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L434
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #156
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L468+56
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L452:
	ldr	r3, .L468+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L435
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L468+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L451:
	ldr	r3, .L468+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L436
	ldr	r1, [r3]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	add	r2, r3, #28
	ldm	r2, {r2, lr}
	ldr	ip, [r3, #4]
	ldr	r0, .L468+72
	add	r3, r2, lr, lsl #5
	lsl	r3, r3, #2
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
.L450:
	ldr	r3, .L468+76
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L437
	ldr	r2, [r3]
	mvn	r2, r2, lsl #18
	mov	r1, #792
	mvn	r2, r2, lsr #18
	ldr	r0, [r3, #4]
	ldr	r3, .L468+80
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L449:
	mov	r6, #512
	mov	r4, #152
	ldr	r3, .L468+84
	ldr	r2, .L468+4
	ldr	lr, .L468+88
	add	r0, r3, #200
.L440:
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
	bne	.L440
	ldr	r3, .L468+92
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #16]	@ movhi
	beq	.L448
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	strh	r1, [r5, #20]	@ movhi
.L448:
	ldr	r3, .L468+96
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #24]	@ movhi
	beq	.L447
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #26]	@ movhi
	strh	r3, [r5, #24]	@ movhi
	strh	r1, [r5, #28]	@ movhi
.L447:
	ldr	r3, .L468+100
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #32]	@ movhi
	beq	.L446
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #34]	@ movhi
	strh	r3, [r5, #32]	@ movhi
	strh	r1, [r5, #36]	@ movhi
.L446:
	ldr	r3, .L468+104
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #40]	@ movhi
	beq	.L445
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #42]	@ movhi
	strh	r3, [r5, #40]	@ movhi
	strh	r1, [r5, #44]	@ movhi
.L445:
	ldr	r3, .L468+108
	mov	lr, pc
	bx	r3
	ldr	r4, .L468+112
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L468+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L468+116
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L468+120
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L437:
	mov	r2, #512
	ldr	r3, .L468+80
	strh	r2, [r3]	@ movhi
	b	.L449
.L436:
	mov	r2, #512
	ldr	r3, .L468+72
	strh	r2, [r3]	@ movhi
	b	.L450
.L435:
	mov	r2, #512
	ldr	r3, .L468+64
	strh	r2, [r3]	@ movhi
	b	.L451
.L434:
	mov	r2, #512
	ldr	r3, .L468+56
	strh	r2, [r3]	@ movhi
	b	.L452
.L428:
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
	b	.L430
.L467:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #138]	@ movhi
	strh	r0, [r5, #136]	@ movhi
	strh	r1, [r5, #140]	@ movhi
	b	.L425
.L466:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #130]	@ movhi
	strh	r0, [r5, #128]	@ movhi
	strh	r1, [r5, #132]	@ movhi
	b	.L423
.L465:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #74]	@ movhi
	strh	r0, [r5, #72]	@ movhi
	strh	r1, [r5, #76]	@ movhi
	b	.L421
.L464:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #66]	@ movhi
	strh	r0, [r5, #64]	@ movhi
	strh	r1, [r5, #68]	@ movhi
	b	.L419
.L463:
	mov	r2, #148
	ldr	r3, [r1]
	ldr	r1, [r1, #4]
	orr	r3, r3, #16384
	strh	r3, [r5, #58]	@ movhi
	strh	r1, [r5, #56]	@ movhi
	strh	r2, [r5, #60]	@ movhi
	b	.L417
.L462:
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
	b	.L415
.L461:
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
	b	.L413
.L460:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r5, .L468+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [r5, #2]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	b	.L411
.L469:
	.align	2
.L468:
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
	.word	goo
	.word	shadowOAM+304
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
	ldr	r5, .L476
	ldr	lr, .L476+4
	ldr	ip, .L476+8
	ldr	r0, .L476+12
	ldr	r1, .L476+16
	ldr	r6, .L476+20
	ldr	r3, .L476+24
	str	r4, [r5, #16]
	ldr	r5, .L476+28
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	ldr	lr, .L476+32
	ldr	ip, .L476+36
	str	r4, [r0, #16]
	str	r4, [r6, #16]
	ldr	r0, .L476+40
	ldr	r8, .L476+44
	ldr	r7, .L476+48
	str	r4, [r1, #16]
	str	r4, [r3, #16]
	ldr	r1, .L476+52
	ldr	r3, .L476+56
	ldr	r6, .L476+60
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
.L471:
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
	bne	.L471
	mov	r2, #8
	mov	ip, #67
	mov	r0, #113
	mov	r4, #0
	mov	r5, #1
	ldr	r3, .L476+64
	add	r1, r3, #1392
	add	r1, r1, r2
.L472:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	r5, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L472
	ldr	r3, .L476+68
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
.L477:
	.align	2
.L476:
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
	ldr	r2, .L491
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L491+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r3, .L491+8
	ldr	r1, [r3]
	ldreq	r2, [r3, #20]
	addeq	r1, r1, r2
	ldr	r2, .L491+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #32
	ldreq	r2, [r3, #20]
	subeq	r1, r1, r2
	ldr	r2, .L491+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #64
	ldreq	r0, [r3, #24]
	ldr	r2, [r3, #4]
	subeq	r2, r2, r0
	ldr	r0, .L491+4
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
	ldr	r3, .L491+12
	ldr	r2, [r3, #76]
	cmp	r2, #1
	beq	.L490
.L478:
	pop	{r4, lr}
	bx	lr
.L490:
	ldr	r2, [r3, #116]
	cmp	r2, #1
	bne	.L478
	ldr	r2, [r3, #156]
	cmp	r2, #1
	bne	.L478
	ldr	r3, [r3, #196]
	cmp	r3, #1
	ldreq	r2, .L491+16
	streq	r3, [r2]
	b	.L478
.L492:
	.align	2
.L491:
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
	ldr	r3, .L497
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L497+4
	ldr	lr, .L497+8
	ldr	r3, .L497+12
	str	r0, [lr, #16]
	ldr	r4, .L497+16
	ldr	lr, .L497+20
	str	r0, [ip, #16]
	ldr	ip, .L497+24
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
.L494:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L494
	ldr	r0, .L497+28
	ldr	r1, .L497+32
	ldr	r3, .L497+36
	pop	{r4, lr}
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	b	drawGame
.L498:
	.align	2
.L497:
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
	ldr	r3, .L503
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L503+4
	ldr	ip, .L503+8
	str	r0, [lr, #16]
	ldr	lr, .L503+12
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L503+16
	ldr	lr, .L503+20
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L503+24
	ldr	lr, .L503+28
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L503+32
	ldr	lr, .L503+36
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L503+40
	ldr	lr, .L503+44
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L503+48
	ldr	lr, .L503+52
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L503+56
	ldr	lr, .L503+60
	ldr	r3, .L503+64
	str	r0, [lr, #16]
	ldr	r4, .L503+68
	ldr	lr, .L503+72
	str	r0, [ip, #16]
	ldr	ip, .L503+76
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
.L500:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L500
	pop	{r4, lr}
	b	drawGame
.L504:
	.align	2
.L503:
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
	ldr	r4, .L527
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #16
	beq	.L505
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #8]
	add	r3, r3, r1
	add	r1, r3, r2
	cmp	r1, #159
	str	r3, [r4, #4]
	beq	.L524
.L508:
	str	r2, [sp, #12]
	str	r3, [sp, #4]
	ldr	r5, .L527+4
	ldr	lr, [r4, #12]
	ldr	ip, [r4]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldm	r5, {r0, r1}
	ldr	r6, .L527+8
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L525
.L509:
	ldr	r5, .L527+12
	add	r7, r4, #8
	ldm	r7, {r7, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	add	r2, r2, r2, lsr #31
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L510
.L513:
	ldr	r3, .L527+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L526
	cmp	r3, #0
	ldreq	r2, .L527+20
	streq	r3, [r2, #68]
.L515:
	mov	r2, #1
	ldr	r3, .L527+24
	str	r2, [r3, #16]
.L505:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L525:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L509
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L509
	mov	r3, #0
	mov	r2, #3
	str	r3, [r4, #16]
	ldr	r3, .L527+28
	str	r2, [r5, #32]
	str	r0, [r3, #32]
	b	.L509
.L510:
	ldr	r1, .L527+20
	ldr	r2, [r1, #12]
	ldr	r0, [r1]
	ldr	r8, [r4, #8]
	ldr	r7, [r4, #12]
	ldm	r4, {ip, lr}
	add	r2, r2, r2, lsr #31
	ldr	r3, [r1, #8]
	asr	r2, r2, #1
	ldr	r1, [r1, #52]
	add	r0, r0, #20
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L513
	b	.L505
.L524:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L527+28
	str	r1, [r4, #16]
	str	r2, [r3, #32]
	bl	drawGame
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	b	.L508
.L526:
	mov	r3, #0
	str	r3, [r5, #68]
	b	.L515
.L528:
	.align	2
.L527:
	.word	cannonball
	.word	helmet
	.word	collision
	.word	leela
	.word	characterChoice
	.word	fry
	.word	goo
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
	ldr	r5, .L589
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L589+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L589+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L530
.L532:
	ldr	r0, [r4]
.L531:
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
	beq	.L533
.L535:
	ldr	r0, [r4]
.L534:
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
	beq	.L536
.L538:
	ldr	r0, [r4]
.L537:
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
	beq	.L539
.L541:
	ldr	r0, [r4]
.L540:
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
	beq	.L587
.L542:
	ldr	r5, .L589+12
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
	beq	.L543
.L545:
	ldr	r0, [r4]
.L544:
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
	beq	.L546
.L548:
	ldr	r0, [r4]
.L547:
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
	beq	.L549
.L551:
	ldr	r0, [r4]
.L550:
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
	beq	.L552
.L554:
	ldr	r0, [r4]
.L553:
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
	beq	.L588
.L529:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L530:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L532
	ldr	ip, .L589+16
	ldr	r1, .L589+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L532
	mov	r3, r0
	mov	lr, #190
	ldr	r1, .L589+24
	mov	r0, lr
	str	r3, [ip]
	str	lr, [r4]
	str	r2, [r1, #16]
	str	r3, [r1, #20]
	b	.L531
.L588:
	ldr	r3, .L589+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L529
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L529
	ldr	r3, .L589+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L529
	mov	r0, #0
	ldr	r2, .L589+28
	ldr	r1, .L589+32
	str	r0, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r1]
	b	.L529
.L552:
	ldr	r3, .L589+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L554
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L554
	ldr	r2, .L589+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L554
	mov	r1, #190
	mov	ip, #0
	mov	lr, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L589+36
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L553
.L549:
	ldr	r3, .L589+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L551
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L551
	ldr	r2, .L589+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L551
	mov	r1, #190
	mov	ip, #0
	mov	lr, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L589+40
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L550
.L546:
	ldr	r3, .L589+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L548
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L548
	ldr	r2, .L589+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L548
	mov	r1, #190
	mov	ip, #0
	mov	lr, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L589+44
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L547
.L543:
	ldr	r2, .L589+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L545
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L545
	ldr	r1, .L589+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L545
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L589+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	b	.L544
.L587:
	ldr	r3, .L589+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L542
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L542
	ldr	r3, .L589+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L589+28
	ldreq	r1, .L589+32
	streq	r3, [r2, #16]
	streq	r0, [r2, #20]
	streq	r0, [r1]
	b	.L542
.L539:
	ldr	r2, .L589+16
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L541
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L541
	ldr	r1, .L589+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L541
	mov	ip, #190
	mov	lr, #4
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L589+36
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L540
.L536:
	ldr	r2, .L589+16
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L538
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L538
	ldr	r1, .L589+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L538
	mov	ip, #190
	mov	lr, #3
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L589+40
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L537
.L533:
	ldr	r2, .L589+16
	ldr	r3, [r2]
	cmp	r3, #1
	bne	.L535
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L535
	ldr	r1, .L589+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L535
	mov	ip, #190
	mov	lr, #2
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L589+44
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L534
.L590:
	.align	2
.L589:
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
	ldr	r2, .L595
	ldrh	r3, [r2]
	ldr	r0, .L595+4
	push	{r4, lr}
	ldr	r1, .L595+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L595+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L592:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L592
	bl	updateEnemy
	bl	updateLives
	bl	updateCannonball
	bl	updateHelmet
	ldr	r3, .L595+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L595+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L595+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L595+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L596:
	.align	2
.L595:
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
	ldr	r2, .L601
	ldrh	r3, [r2]
	ldr	r0, .L601+4
	push	{r4, lr}
	ldr	r1, .L601+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L601+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L598:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L598
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	bl	updateHelmet
	ldr	r3, .L601+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L601+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L601+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L601+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L602:
	.align	2
.L601:
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
	ldr	r2, .L607
	ldrh	r3, [r2]
	ldr	r0, .L607+4
	push	{r4, lr}
	ldr	r1, .L607+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	bl	updateHelmet
	ldr	r1, .L607+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L604:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L604
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	ldr	r3, .L607+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L607+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L607+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L607+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L608:
	.align	2
.L607:
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
	mov	ip, #45
	ldr	r2, .L613
	ldrh	r3, [r2]
	ldr	r0, .L613+4
	push	{r4, lr}
	ldr	r1, .L613+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L613+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L610:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L610
	bl	updateLives
	bl	updateEnemy
	bl	updateCannonball
	bl	updateHelmet
	ldr	r3, .L613+16
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L613+20
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L613+24
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L613+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L614:
	.align	2
.L613:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	67109120
	.word	helmet
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
	.comm	coinsNeeded,4,4
	.comm	life4Counter,4,4
	.comm	life3Counter,4,4
	.comm	life2Counter,4,4
	.comm	life1Counter,4,4
	.comm	lifeCounter,4,4
	.global	ground
	.comm	curLocation,4,4
	.comm	goo,20,4
	.comm	cannonball,28,4
	.comm	enemy,36,4
	.comm	helmet,44,4
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
