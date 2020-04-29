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
	mov	lr, #25088
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
	mov	lr, #24832
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
	mov	r4, #97
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
	mov	lr, #116
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
	mov	r0, #97
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
	.global	initCheatmode
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCheatmode, %function
initCheatmode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #206
	mov	r0, #0
	mov	r1, #3
	ldr	r3, .L74
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	ip, [r3]
	str	r0, [r3, #16]
	str	r1, [r3, #4]
	bx	lr
.L75:
	.align	2
.L74:
	.word	cheatmode
	.size	initCheatmode, .-initCheatmode
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
	ldr	r3, .L86
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r5, .L123
	strh	r4, [r3]	@ movhi
	ldr	r3, [r5]
	ldr	r4, .L123+4
	cmp	r3, r1
	str	r1, [r4, #20]
	str	r1, [r4, #24]
	str	lr, [r4, #16]
	str	ip, [r4]
	str	r0, [r4, #4]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
	beq	.L121
.L90:
	cmp	r3, #0
	beq	.L122
.L91:
	mov	r5, #0
	mov	r3, #1
	ldr	lr, .L123+8
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
	ldr	r4, .L123+12
	str	r1, [r4, #16]
	ldr	r1, .L123+16
	str	ip, [r4]
	str	ip, [r1]
	ldr	ip, .L123+20
	str	r9, [r1, #16]
	str	r0, [r4, #4]
	ldr	r9, [lr, #156]
	str	r0, [ip]
	ldr	r0, .L123+24
	str	r5, [ip, #16]
	str	r5, [r0, #16]
	str	r8, [ip, #4]
	str	r2, [r4, #12]
	ldr	r8, .L123+28
	str	r6, [r0]
	str	r7, [r0, #4]
	ldr	r6, .L123+32
	ldr	r7, .L123+36
	str	r2, [r4, #8]
	cmp	r9, r5
	ldr	r4, .L123+40
	ldr	r5, .L123+44
	streq	r3, [ip, #16]
	str	r3, [r5, #16]
	str	r3, [r6, #16]
	str	r3, [r7, #16]
	str	r3, [r4, #16]
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
	ldr	r3, .L123+48
	mov	r0, ip
	mov	r1, r3
	ldr	r7, .L123+52
	ldr	r6, .L123+56
	str	ip, [r7, #16]
	ldr	r5, .L123+60
	ldr	r4, .L123+64
	str	ip, [lr, #20]
	str	ip, [lr, #60]
	str	ip, [lr, #100]
	str	ip, [lr, #140]
	str	ip, [lr, #180]
	ldr	r7, .L123+68
	ldr	lr, .L123+72
	ldr	r8, .L123+76
	add	r2, r3, #1392
	str	ip, [r6, #16]
	str	ip, [r5, #16]
	str	ip, [r4, #16]
	str	ip, [r7, #16]
	str	ip, [r8, #16]
	str	ip, [lr, #16]
	str	ip, [lr, #56]
	add	r2, r2, #8
.L101:
	str	r0, [r1, #24]
	add	r1, r1, #28
	cmp	r2, r1
	bne	.L101
	mov	r9, #1
	ldr	r6, .L123+80
	mov	r5, r9
	str	r0, [r7, #32]
	str	r9, [r7, #20]
	str	r9, [r7, #28]
	str	r9, [r8, #24]
	str	r9, [r6, #20]
	str	r0, [r6, #16]
	mov	r9, #70
	str	r0, [r6, #36]
	str	r0, [r6, #40]
	mov	r0, #20
	stm	r6, {r0, r9}
	mov	r0, #7
	mov	r10, #32
	str	r0, [r6, #28]
	mov	r0, #2
	mov	fp, #8
	str	r0, [r6, #32]
	str	r10, [r6, #12]
	mov	r0, #208
	str	r10, [r7, #12]
	str	r10, [r7, #8]
	str	r10, [r6, #8]
	mov	r10, #10
	mov	r1, fp
	stm	r7, {r0, r10}
	str	fp, [r8, #12]
	mov	r0, #216
	str	fp, [r8, #8]
	mov	fp, #42
	mov	lr, #67
	mov	ip, #116
	mov	r4, #0
	stm	r8, {r0, fp}
.L102:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r4, [r3, #24]
	str	r5, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L102
	ldr	r5, .L123+84
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L123+88
	ldr	r1, .L123+92
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L123+96
	ldr	r1, .L123+100
	mov	lr, pc
	bx	r5
	ldr	r3, .L123+104
	ldr	r0, .L123+108
	ldr	r1, .L123+112
	ldr	r2, .L123+116
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L122:
	bl	initFry
	b	.L91
.L121:
	bl	initLeela
	ldr	r3, [r5]
	b	.L90
.L124:
	.align	2
.L123:
	.word	characterChoice
	.word	spaceship
	.word	treasure
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	life5
	.word	life2
	.word	life3
	.word	life4
	.word	life1
	.word	bullets
	.word	goo
	.word	fry
	.word	leela
	.word	alien
	.word	enemy
	.word	coins
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
	ldr	r3, .L155
	mov	lr, pc
	bx	r3
	bl	initCoins
	mov	r1, #0
	mov	r3, #1
	ldr	ip, .L155+4
	ldr	r2, .L155+8
	ldr	lr, [ip, #20]
	ldr	r0, [r2, #20]
	cmp	lr, r1
	moveq	r9, r3
	movne	r9, r1
	cmp	r0, r1
	moveq	r4, r3
	movne	r4, r1
	mov	lr, #97
	mov	r5, #3
	str	r4, [r2, #16]
	ldr	r4, .L155+12
	ldr	r2, [r4, #20]
	str	r9, [ip, #16]
	cmp	r2, r1
	ldr	ip, .L155+16
	ldr	r2, .L155+20
	str	r1, [ip, #32]
	stm	r2, {r5, lr}
	str	r1, [r2, #16]
	str	r1, [ip, #44]
	str	lr, [ip, #4]
	ldr	r1, .L155+24
	ldr	lr, .L155+28
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
	ldr	r2, .L155+32
	ldr	lr, [r2]
	ldr	r2, .L155+36
	str	r1, [r2, #40]
	ldr	r1, .L155+40
	cmp	lr, #0
	str	r8, [ip]
	str	r7, [ip, #28]
	str	r6, [ip, #40]
	str	r0, [r2, #44]
	str	r3, [r2, #48]
	str	r3, [r1, #16]
	str	r3, [r1, #28]
	bne	.L131
	ldr	r3, .L155+44
	str	lr, [r3, #56]
.L132:
	ldr	r3, .L155+48
	mov	r0, #1
	mov	r2, r3
	add	r1, r3, #1392
	add	r1, r1, #8
.L133:
	str	r0, [r2, #12]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L133
	mov	r5, #0
	ldr	r4, .L155+52
	ldr	r2, .L155+56
	cmp	lr, #1
	str	r5, [r4]
	str	r0, [r2, #16]
	beq	.L154
	cmp	lr, #0
	ldreq	r2, .L155+44
	streq	r0, [r2, #16]
.L135:
	mov	lr, #1
	mov	r0, #0
	str	lr, [ip, #16]
	ldr	ip, .L155+60
	mov	r2, lr
	str	r0, [ip, #16]
	ldr	lr, .L155+64
	ldr	ip, .L155+68
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L155+72
	ldr	ip, .L155+76
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L136:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L136
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L131:
	cmp	lr, #1
	moveq	r2, #0
	ldreq	r3, .L155+80
	streq	r2, [r3, #56]
	b	.L132
.L154:
	ldr	r2, .L155+80
	str	lr, [r2, #16]
	b	.L135
.L156:
	.align	2
.L155:
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
	ldr	r3, .L188
	mov	lr, pc
	bx	r3
	mov	r5, #1
	mov	r6, #0
	mov	r7, #64
	mov	r8, #97
	mov	r1, #240
	mov	r2, #2
	mov	r3, #4
	ldr	r4, .L188+4
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
	ldr	r3, .L188+8
	mov	r0, r5
	mov	r2, r3
	ldr	r1, .L188+12
	str	r5, [r4, #16]
	ldr	lr, .L188+16
	ldr	r4, .L188+20
	str	r8, [r1, #4]
	ldr	r8, .L188+24
	str	r6, [r1, #16]
	str	r7, [r1, #12]
	str	r7, [r1, #8]
	str	ip, [r1]
	str	r6, [lr, #16]
	ldr	r1, .L188+28
	str	r6, [r4, #16]
	str	r6, [r8, #16]
	ldr	r9, .L188+32
	ldr	ip, .L188+36
	ldr	lr, .L188+40
	ldr	r4, .L188+44
	ldr	r7, .L188+48
	ldr	r8, .L188+52
	str	r6, [r1, #16]
	str	r6, [r9, #16]
	add	r1, r3, #1392
	str	r5, [ip, #16]
	str	r5, [lr, #16]
	str	r5, [r4, #16]
	str	r5, [r7, #16]
	str	r5, [r8, #16]
	add	r1, r1, #8
.L158:
	str	r0, [r2, #24]
	add	r2, r2, #28
	cmp	r1, r2
	bne	.L158
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
	ldr	r2, .L188+56
	ldr	r0, [r2]
	cmp	r0, #0
	bne	.L164
	ldr	r2, .L188+60
	str	r0, [r2, #56]
.L165:
	mov	r2, #1
.L166:
	str	r2, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L166
	ldr	r1, .L188+64
	ldr	r3, [r1, #84]
	ldr	lr, .L188+68
	ldr	ip, .L188+72
	add	r3, r3, #25
	cmp	r0, #1
	str	r3, [r1, #84]
	str	r2, [lr, #16]
	str	r2, [ip]
	beq	.L187
	cmp	r0, #0
	ldreq	r3, .L188+60
	streq	r2, [r3, #16]
.L168:
	mov	r2, #1
	ldr	r3, .L188+76
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L164:
	cmp	r0, #1
	moveq	ip, #0
	ldreq	r2, .L188+80
	streq	ip, [r2, #56]
	b	.L165
.L187:
	ldr	r3, .L188+80
	str	r0, [r3, #16]
	b	.L168
.L189:
	.align	2
.L188:
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
	ldr	r3, .L220
	ldr	r4, .L220+4
	mov	lr, pc
	bx	r3
	mov	lr, #8
	mov	r7, r10
	mov	ip, r4
	mov	r9, #67
	mov	r8, #116
	mov	r6, #1
	ldr	r0, .L220+8
	ldr	r1, .L220+12
	ldr	r2, .L220+16
	ldr	fp, .L220+20
	ldr	r3, .L220+24
	add	r5, r4, #1392
	str	r10, [r0, #16]
	str	r10, [r1, #16]
	str	r10, [r2, #16]
	str	r10, [r3, #16]
	str	r10, [fp, #16]
	add	r5, r5, lr
.L191:
	str	r9, [ip]
	str	r8, [ip, #4]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	r7, [ip, #24]
	str	r6, [ip, #12]
	add	ip, ip, #28
	cmp	r5, ip
	bne	.L191
	mov	r9, #64
	mov	lr, #240
	mov	ip, #2
	mov	r3, #4
	mov	r10, #97
	ldr	r8, .L220+28
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
	ldr	r0, .L220+8
	ldr	r1, .L220+12
	str	r7, [r0, #16]
	ldr	r2, .L220+16
	ldr	r0, .L220+32
	ldr	r3, .L220+24
	str	r6, [r8, #16]
	str	r7, [r1, #16]
	str	r7, [r2, #16]
	str	r7, [r3, #16]
	ldr	r1, .L220+36
	ldr	r2, .L220+40
	ldr	r3, .L220+44
	ldr	r8, .L220+48
	str	r10, [r0, #4]
	ldr	r10, .L220+52
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
.L192:
	str	ip, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L192
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
	ldr	r3, .L220+56
	ldr	r1, .L220+60
	ldr	r2, [r3]
	ldr	ip, .L220+64
	ldr	r3, [r1, #124]
	cmp	r2, #0
	str	r0, [ip, #16]
	add	r3, r3, #25
	bne	.L198
	mov	lr, #2
	ldr	ip, .L220+68
	str	r3, [r1, #124]
	ldr	r3, .L220+72
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r0, [r3, #16]
.L199:
	mov	r2, #1
	ldr	r3, .L220+76
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L198:
	cmp	r2, #1
	bne	.L200
	mov	lr, #0
	mov	ip, #2
	ldr	r0, .L220+80
	str	r3, [r1, #124]
	ldr	r3, .L220+68
	str	lr, [r0, #56]
	str	r2, [r0, #16]
	str	ip, [r3]
	b	.L199
.L200:
	mov	r0, #2
	ldr	r2, .L220+68
	str	r3, [r1, #124]
	str	r0, [r2]
	b	.L199
.L221:
	.align	2
.L220:
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
	ldr	r3, .L250
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r7, #64
	mov	r1, #240
	mov	r2, #2
	mov	r3, #4
	mov	r8, #97
	ldr	ip, .L250+4
	ldr	r0, .L250+8
	ldr	r4, .L250+12
	str	r5, [ip, #16]
	str	r5, [r0, #16]
	ldr	ip, .L250+16
	ldr	r0, .L250+20
	ldr	r9, .L250+24
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
	ldr	r1, .L250+28
	ldr	r3, .L250+32
	str	r8, [r1, #4]
	str	r5, [r1, #16]
	str	r7, [r1, #12]
	str	r7, [r1, #8]
	str	r0, [r1]
	str	r5, [r9, #16]
	add	r1, r3, #1392
	str	r6, [r4, #16]
	add	r1, r1, #8
.L223:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L223
	ldr	lr, .L250+36
	ldr	r5, [lr, #20]
	ldr	r3, .L250+40
	ldr	r1, .L250+44
	ldr	r0, .L250+48
	ldr	ip, .L250+52
	ldr	r4, .L250+56
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
	ldr	r3, .L250+60
	ldr	r1, .L250+64
	ldr	r2, [r3]
	ldr	r3, [r1, #164]
	cmp	r2, #0
	add	r3, r3, #25
	bne	.L229
	mov	lr, #3
	mov	r0, #1
	ldr	ip, .L250+68
	str	r3, [r1, #164]
	ldr	r3, .L250+72
	str	lr, [ip]
	str	r0, [r3, #16]
	str	r2, [r3, #56]
.L230:
	mov	r2, #1
	ldr	r3, .L250+76
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L229:
	cmp	r2, #1
	bne	.L231
	mov	lr, #0
	mov	ip, #3
	ldr	r0, .L250+80
	str	r3, [r1, #164]
	ldr	r3, .L250+68
	str	lr, [r0, #56]
	str	r2, [r0, #16]
	str	ip, [r3]
	b	.L230
.L231:
	mov	r0, #3
	ldr	r2, .L250+68
	str	r3, [r1, #164]
	str	r0, [r2]
	b	.L230
.L251:
	.align	2
.L250:
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
	ldr	r3, .L256
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L256+4
	ldr	lr, .L256+8
	str	r0, [ip, #16]
	ldr	ip, .L256+12
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L256+16
	ldr	ip, .L256+20
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L256+24
	ldr	ip, .L256+28
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L256+32
	ldr	ip, .L256+36
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L256+40
	ldr	ip, .L256+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L256+48
	ldr	ip, .L256+52
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L256+56
	ldr	ip, .L256+60
	ldr	r4, .L256+64
	ldr	lr, .L256+68
	add	r1, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r1, r1, #8
.L253:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L253
	ldr	r1, .L256+72
	ldr	r3, .L256+76
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	pop	{r4, lr}
	bx	lr
.L257:
	.align	2
.L256:
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
	.word	life5
	.word	goo
	.word	bullets
	.word	coins
	.word	fry
	.word	cheatmode
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
	ldr	r5, .L274
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L274+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #20
	bcc	.L259
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L259:
	ldr	r4, .L274+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L274+12
	ldr	r9, .L274+16
	ldr	fp, .L274+20
	ldr	r10, .L274+24
	add	r6, r6, #8
	b	.L267
.L263:
	add	r4, r4, #28
	cmp	r4, r6
	beq	.L266
.L273:
	ldr	r0, [r5]
.L267:
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
	bne	.L263
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L263
	ldr	r3, [r9]
	cmp	r3, #0
	str	r8, [r5, #16]
	str	r8, [r4, #24]
	bne	.L265
	ldr	r3, [r10, #68]
	cmp	r3, #0
	bne	.L263
	ldr	r2, .L274+28
	add	r4, r4, #28
	cmp	r4, r6
	str	r0, [r10, #68]
	str	r3, [r2, #16]
	bne	.L273
.L266:
	ldr	r2, [r5, #44]
	ldr	r3, .L274+32
	add	r2, r2, #1
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #6
	ldr	r1, [r5, #16]
	sub	r3, r2, r3, lsl #1
	orrs	r3, r3, r1
	str	r2, [r5, #44]
	bne	.L258
	mov	r4, #240
	mov	lr, #97
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
.L258:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L265:
	cmp	r3, #1
	bne	.L263
	ldr	r2, [fp, #68]
	cmp	r2, #0
	streq	r3, [fp, #68]
	ldreq	r3, .L274+28
	streq	r2, [r3, #16]
	b	.L263
.L275:
	.align	2
.L274:
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
	ldr	r3, .L292
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	ldr	ip, [r3, #32]
	beq	.L277
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	bne	.L279
	str	r2, [r3, #28]
	bx	lr
.L277:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	moveq	r2, #1
	streq	r2, [r3, #28]
.L279:
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
	ldr	r1, .L292+4
	add	r2, r2, #8
	sub	r0, r0, #10
	str	lr, [r1, #16]
	str	r2, [r1]
	str	r0, [r1, #4]
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L293:
	.align	2
.L292:
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
	ldr	r3, .L296
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L296+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L297:
	.align	2
.L296:
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
	ldr	r1, .L307
	ldr	r2, .L307+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L307+8
	ldr	r8, .L307+12
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
.L301:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L303
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L303
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L303:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L301
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L308:
	.align	2
.L307:
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
	ldr	r5, .L342
	ldrh	r1, [r5]
	ldr	r4, .L342+4
	tst	r1, #64
	ldr	r0, [r4, #24]
	beq	.L310
	ldr	r3, .L342+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L335
.L310:
	ldmib	r4, {r3, ip}
	sub	r2, ip, #1
	add	r0, r0, #50
	add	r2, r2, r3
	add	r2, r2, r0
	rsb	ip, ip, #159
	cmp	ip, r2, asr #8
	movle	r2, #0
	addgt	r3, r3, r0
	str	r0, [r4, #24]
	strgt	r3, [r4, #4]
	strle	r2, [r4, #24]
	strle	r2, [r4, #48]
	tst	r1, #4
	beq	.L315
	ldr	r2, .L342+8
	ldrh	r2, [r2]
	ands	r0, r2, #4
	beq	.L336
.L315:
	ldr	r2, .L342+12
	ldr	r2, [r2]
.L314:
	ldr	r0, [r4, #56]
	asr	r3, r3, #8
	cmp	r0, r2
	str	r3, [r4, #52]
	ble	.L317
	mov	r2, #0
	ldr	r1, [r4]
	ldr	r6, .L342+16
	add	r1, r1, #1
	ldr	r0, .L342+20
	str	r1, [r4]
	ldr	r1, .L342+24
	ldr	r3, [r6]
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	ldr	r0, .L342+28
	ldr	r1, .L342+32
	cmp	r3, r2
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	beq	.L337
	cmp	r3, #1
	beq	.L338
.L319:
	cmp	r3, #2
	beq	.L339
.L320:
	cmp	r3, #3
	beq	.L321
.L334:
	ldrh	r1, [r5]
.L317:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L342+36
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	bcc	.L322
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L340
.L322:
	tst	r1, #16
	beq	.L326
	ldr	r3, .L342+8
	ldrh	r2, [r3]
	ands	r5, r2, #16
	beq	.L341
.L326:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L336:
	ldr	r2, [r4, #64]
	cmp	r2, #0
	bne	.L316
	mov	r0, #1
	mov	r2, #5
	ldr	ip, .L342+40
	str	r0, [r4, #64]
	str	r0, [ip, #16]
	ldr	r0, .L342+12
	str	r2, [r0]
	b	.L314
.L335:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L310
	ldr	r3, [r4, #68]
	cmp	r3, #0
	movne	r3, #1
	subne	r0, r0, #1488
	strne	r3, [r4, #48]
	subne	r0, r0, #12
	b	.L310
.L340:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L322
.L341:
	bl	shootBullets
	mov	r2, r5
	ldr	r3, .L342+44
	ldr	r1, .L342+48
	ldr	r0, .L342+52
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L337:
	mov	r2, #1
	ldr	r3, .L342+56
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L319
.L338:
	ldr	r2, .L342+56
	str	r3, [r2, #100]
	add	r0, r2, #80
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #2
	bne	.L320
.L339:
	mov	r2, #1
	ldr	r3, .L342+56
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r3, [r6]
	cmp	r3, #3
	bne	.L334
.L321:
	mov	r2, #1
	ldr	r3, .L342+56
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L334
.L316:
	mov	ip, #10
	ldr	lr, .L342+12
	mov	r2, ip
	str	ip, [lr]
	ldr	ip, .L342+40
	str	r0, [r4, #64]
	str	r0, [ip, #16]
	b	.L314
.L343:
	.align	2
.L342:
	.word	oldButtons
	.word	fry
	.word	buttons
	.word	coinsNeeded
	.word	curLocation
	.word	alien
	.word	enemy
	.word	cannonball
	.word	helmet
	.word	238609294
	.word	cheatmode
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
	ldr	r5, .L380
	ldrh	r3, [r5]
	ldr	r4, .L380+4
	tst	r3, #64
	ldr	r2, [r4, #24]
	beq	.L345
	ldr	r1, .L380+8
	ldrh	r1, [r1]
	tst	r1, #64
	beq	.L374
.L345:
	add	r2, r2, #50
	tst	r3, #4
	str	r2, [r4, #24]
	beq	.L373
	ldr	r3, .L380+8
	ldrh	r3, [r3]
	ands	r3, r3, #4
	beq	.L371
.L373:
	ldr	r0, .L380+12
.L346:
	ldmib	r4, {r1, ip}
	sub	r3, ip, #1
	add	r3, r3, r1
	add	r3, r3, r2
	rsb	ip, ip, #159
	cmp	ip, r3, asr #8
	movle	r3, #0
	addgt	r1, r1, r2
	ldr	r2, [r4, #32]
	strle	r3, [r4, #24]
	strle	r3, [r4, #48]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r2, .L380+16
	add	r3, r3, r2
	strgt	r1, [r4, #4]
	cmp	r2, r3, ror #1
	ldr	r2, [r4]
	ldr	r3, [r4, #20]
	asr	r1, r1, #8
	add	r3, r2, r3
	str	r1, [r4, #52]
	str	r3, [r4]
	bcc	.L350
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L350:
	ldr	r2, [r0]
	ldr	r1, [r4, #56]
	cmp	r1, r2
	ble	.L353
	mov	r1, #0
	add	r3, r3, #1
	ldr	r6, .L380+20
	ldr	r0, .L380+24
	str	r3, [r4]
	ldr	r3, .L380+28
	ldr	r2, [r6]
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	ldr	r0, .L380+32
	ldr	r3, .L380+36
	cmp	r2, r1
	str	r1, [r0, #16]
	str	r1, [r3, #16]
	beq	.L375
	cmp	r2, #1
	beq	.L376
.L355:
	cmp	r2, #2
	beq	.L377
.L356:
	cmp	r2, #3
	beq	.L378
.L353:
	ldrh	r3, [r5]
	tst	r3, #16
	beq	.L360
	ldr	r3, .L380+8
	ldrh	r2, [r3]
	ands	r6, r2, #16
	beq	.L379
.L360:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L371:
	ldr	r1, [r4, #64]
	cmp	r1, #0
	bne	.L347
	mov	r3, #1
	mov	r1, #5
	ldr	r0, .L380+40
	str	r3, [r0, #16]
	ldr	r0, .L380+12
	str	r3, [r4, #64]
	str	r1, [r0]
	b	.L346
.L374:
	ldr	r1, [r4, #48]
	cmp	r1, #0
	bne	.L345
	ldr	r1, [r4, #68]
	cmp	r1, #0
	movne	r1, #1
	subne	r2, r2, #1488
	strne	r1, [r4, #48]
	subne	r2, r2, #12
	b	.L345
.L375:
	mov	r2, #1
	ldr	r3, .L380+44
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #1
	bne	.L355
.L376:
	ldr	r3, .L380+44
	str	r2, [r3, #100]
	add	r0, r3, #80
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #2
	bne	.L356
.L377:
	mov	r2, #1
	ldr	r3, .L380+44
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r2, [r6]
	cmp	r2, #3
	bne	.L353
.L378:
	mov	r2, #1
	ldr	r3, .L380+44
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	b	.L353
.L379:
	mov	r5, #1
	bl	shootBullets
	mov	r2, r6
	ldr	r3, .L380+48
	ldr	r1, .L380+52
	ldr	r0, .L380+56
	str	r5, [r4, #60]
	mov	lr, pc
	bx	r3
	mov	r3, r5
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L347:
	mov	ip, #10
	ldr	r0, .L380+12
	ldr	r1, .L380+40
	str	r3, [r4, #64]
	str	ip, [r0]
	str	r3, [r1, #16]
	b	.L346
.L381:
	.align	2
.L380:
	.word	oldButtons
	.word	leela
	.word	buttons
	.word	coinsNeeded
	.word	238609294
	.word	curLocation
	.word	alien
	.word	enemy
	.word	cannonball
	.word	helmet
	.word	cheatmode
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
	ldr	r2, .L392
	ldr	r3, .L392+4
	ldr	r2, [r2, #60]
	ldr	r3, [r3, #60]
	orrs	r3, r2, r3
	bxeq	lr
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L384
	ldr	r2, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r2
	sub	r2, r3, #1
	cmp	r2, #237
	bls	.L391
.L384:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L391:
	str	r3, [r0]
	bx	lr
.L393:
	.align	2
.L392:
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
	ldr	r0, .L406
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L395
	ldr	r1, [r4, #28]
	cmp	r1, #9
	movgt	r1, #4
	addle	r1, r1, #1
	str	r1, [r4, #28]
.L395:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L406+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L404
.L398:
	cmp	r3, #0
	beq	.L405
.L394:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L405:
	ldr	r5, .L406+8
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
	ldr	r6, .L406+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L394
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
.L404:
	ldr	r6, .L406+16
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
	ldr	r7, .L406+12
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
	b	.L398
.L407:
	.align	2
.L406:
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
	ldr	r3, .L414
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
.L415:
	.align	2
.L414:
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
	ldr	r3, .L477
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L469
	cmp	r2, #0
	moveq	r2, #512
	ldreq	r5, .L477+4
	ldrne	r5, .L477+4
	strheq	r2, [r5]	@ movhi
.L418:
	ldr	r2, .L477+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L470
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [r5, #88]	@ movhi
.L420:
	ldr	r3, .L477+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L471
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [r5, #48]	@ movhi
.L422:
	ldr	r1, .L477+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	moveq	r3, #512
	strheq	r3, [r5, #56]	@ movhi
	beq	.L424
	ldr	r3, [r1, #20]
	cmp	r3, #0
	beq	.L472
.L424:
	ldr	r3, .L477+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #64]	@ movhi
	beq	.L426
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L473
.L426:
	ldr	r3, .L477+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #72]	@ movhi
	beq	.L428
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L474
.L428:
	ldr	r3, .L477+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #128]	@ movhi
	beq	.L430
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L475
.L430:
	ldr	r3, .L477+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #136]	@ movhi
	beq	.L432
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L476
.L432:
	ldr	r3, .L477+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r5, #240]	@ movhi
	beq	.L434
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
.L434:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L435
	mov	r3, #512
	strh	r3, [r5, #248]	@ movhi
.L437:
	mov	r4, #512
	mov	lr, #150
	ldr	r3, .L477+40
	ldr	r2, .L477+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L436:
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
	bne	.L436
	ldr	r3, .L477+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #8]	@ movhi
	beq	.L462
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #10]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r1, [r5, #12]	@ movhi
.L462:
	ldr	r3, .L477+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L441
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #156
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L477+56
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L461:
	ldr	r3, .L477+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L442
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L477+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L460:
	ldr	r3, .L477+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L443
	ldr	r1, [r3]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	add	r2, r3, #28
	ldm	r2, {r2, lr}
	ldr	ip, [r3, #4]
	ldr	r0, .L477+72
	add	r3, r2, lr, lsl #5
	lsl	r3, r3, #2
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
.L459:
	ldr	r3, .L477+76
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L444
	ldr	r2, [r3]
	mvn	r2, r2, lsl #18
	mov	r1, #792
	mvn	r2, r2, lsr #18
	ldr	r0, [r3, #4]
	ldr	r3, .L477+80
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L458:
	ldr	r3, .L477+84
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L445
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #540
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L477+88
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L457:
	mov	r6, #512
	mov	r4, #152
	ldr	r3, .L477+92
	ldr	r2, .L477+4
	ldr	lr, .L477+96
	add	r0, r3, #200
.L448:
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
	bne	.L448
	ldr	r3, .L477+100
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #16]	@ movhi
	beq	.L456
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #18]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	strh	r1, [r5, #20]	@ movhi
.L456:
	ldr	r3, .L477+104
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #24]	@ movhi
	beq	.L455
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #26]	@ movhi
	strh	r3, [r5, #24]	@ movhi
	strh	r1, [r5, #28]	@ movhi
.L455:
	ldr	r3, .L477+108
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #32]	@ movhi
	beq	.L454
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #34]	@ movhi
	strh	r3, [r5, #32]	@ movhi
	strh	r1, [r5, #36]	@ movhi
.L454:
	ldr	r3, .L477+112
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r5, #40]	@ movhi
	beq	.L453
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [r5, #42]	@ movhi
	strh	r3, [r5, #40]	@ movhi
	strh	r1, [r5, #44]	@ movhi
.L453:
	ldr	r3, .L477+116
	mov	lr, pc
	bx	r3
	ldr	r4, .L477+120
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L477+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L477+124
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L477+128
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L445:
	mov	r2, #512
	ldr	r3, .L477+88
	strh	r2, [r3]	@ movhi
	b	.L457
.L444:
	mov	r2, #512
	ldr	r3, .L477+80
	strh	r2, [r3]	@ movhi
	b	.L458
.L443:
	mov	r2, #512
	ldr	r3, .L477+72
	strh	r2, [r3]	@ movhi
	b	.L459
.L442:
	mov	r2, #512
	ldr	r3, .L477+64
	strh	r2, [r3]	@ movhi
	b	.L460
.L441:
	mov	r2, #512
	ldr	r3, .L477+56
	strh	r2, [r3]	@ movhi
	b	.L461
.L435:
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
	b	.L437
.L476:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #138]	@ movhi
	strh	r0, [r5, #136]	@ movhi
	strh	r1, [r5, #140]	@ movhi
	b	.L432
.L475:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #130]	@ movhi
	strh	r0, [r5, #128]	@ movhi
	strh	r1, [r5, #132]	@ movhi
	b	.L430
.L474:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #74]	@ movhi
	strh	r0, [r5, #72]	@ movhi
	strh	r1, [r5, #76]	@ movhi
	b	.L428
.L473:
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [r5, #66]	@ movhi
	strh	r0, [r5, #64]	@ movhi
	strh	r1, [r5, #68]	@ movhi
	b	.L426
.L472:
	mov	r2, #148
	ldr	r3, [r1]
	ldr	r1, [r1, #4]
	orr	r3, r3, #16384
	strh	r3, [r5, #58]	@ movhi
	strh	r1, [r5, #56]	@ movhi
	strh	r2, [r5, #60]	@ movhi
	b	.L424
.L471:
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
	b	.L422
.L470:
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
	b	.L420
.L469:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r5, .L477+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [r5, #2]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	b	.L418
.L478:
	.align	2
.L477:
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
	.word	cheatmode
	.word	shadowOAM+312
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
	ldr	r5, .L485
	ldr	lr, .L485+4
	ldr	ip, .L485+8
	ldr	r0, .L485+12
	ldr	r1, .L485+16
	ldr	r6, .L485+20
	ldr	r3, .L485+24
	str	r4, [r5, #16]
	ldr	r5, .L485+28
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	ldr	lr, .L485+32
	ldr	ip, .L485+36
	str	r4, [r0, #16]
	str	r4, [r6, #16]
	ldr	r0, .L485+40
	ldr	r8, .L485+44
	ldr	r7, .L485+48
	str	r4, [r1, #16]
	str	r4, [r3, #16]
	ldr	r1, .L485+52
	ldr	r3, .L485+56
	ldr	r6, .L485+60
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
.L480:
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
	bne	.L480
	mov	r2, #8
	mov	ip, #67
	mov	r0, #116
	mov	r4, #0
	mov	r5, #1
	ldr	r3, .L485+64
	add	r1, r3, #1392
	add	r1, r1, r2
.L481:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	r5, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L481
	ldr	r3, .L485+68
	mov	lr, pc
	bx	r3
	mov	r3, #64
	mov	ip, #240
	mov	r0, #97
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
.L486:
	.align	2
.L485:
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
	mov	r0, #3
	mov	r2, #32
	mov	lr, #206
	mov	ip, #0
	ldr	r1, .L500
	ldrh	r3, [r1]
	add	r3, r3, r0
	strh	r3, [r1]	@ movhi
	ldr	r1, .L500+4
	ldr	r3, .L500+8
	ldrh	r1, [r1, #48]
	str	lr, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	ip, [r3, #16]
	ldr	r3, .L500+12
	tst	r1, #16
	ldreq	r2, [r3, #20]
	ldr	r1, [r3]
	addeq	r1, r1, r2
	ldr	r2, .L500+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #32
	ldreq	r2, [r3, #20]
	subeq	r1, r1, r2
	ldr	r2, .L500+4
	ldrh	r2, [r2, #48]
	streq	r1, [r3]
	tst	r2, #64
	ldreq	r0, [r3, #24]
	ldr	r2, [r3, #4]
	subeq	r2, r2, r0
	ldr	r0, .L500+4
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
	ldr	r3, .L500+16
	ldr	r2, [r3, #76]
	cmp	r2, #1
	beq	.L499
.L487:
	pop	{r4, lr}
	bx	lr
.L499:
	ldr	r2, [r3, #116]
	cmp	r2, #1
	bne	.L487
	ldr	r2, [r3, #156]
	cmp	r2, #1
	bne	.L487
	ldr	r3, [r3, #196]
	cmp	r3, #1
	ldreq	r2, .L500+20
	streq	r3, [r2]
	b	.L487
.L501:
	.align	2
.L500:
	.word	hOff
	.word	67109120
	.word	cheatmode
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
	ldr	r3, .L506
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L506+4
	ldr	lr, .L506+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L506+12
	ldr	lr, .L506+16
	ldr	r3, .L506+20
	str	r0, [lr, #16]
	ldr	r4, .L506+24
	ldr	lr, .L506+28
	str	r0, [ip, #16]
	ldr	ip, .L506+32
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
.L503:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r1, r3
	bne	.L503
	ldr	r0, .L506+36
	ldr	r1, .L506+40
	ldr	r3, .L506+44
	pop	{r4, lr}
	str	r2, [r0, #16]
	str	r2, [r1, #16]
	str	r2, [r3, #16]
	b	drawGame
.L507:
	.align	2
.L506:
	.word	hideSprites
	.word	leela
	.word	alien
	.word	goo
	.word	cheatmode
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
	ldr	r3, .L512
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L512+4
	ldr	ip, .L512+8
	str	r0, [lr, #16]
	ldr	lr, .L512+12
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L512+16
	ldr	lr, .L512+20
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L512+24
	ldr	lr, .L512+28
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L512+32
	ldr	lr, .L512+36
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L512+40
	ldr	lr, .L512+44
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L512+48
	ldr	lr, .L512+52
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L512+56
	ldr	lr, .L512+60
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L512+64
	ldr	lr, .L512+68
	ldr	r3, .L512+72
	str	r0, [lr, #16]
	ldr	r4, .L512+76
	ldr	lr, .L512+80
	str	r0, [ip, #16]
	ldr	ip, .L512+84
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
.L509:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L509
	pop	{r4, lr}
	b	drawGame
.L513:
	.align	2
.L512:
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
	.word	goo
	.word	cheatmode
	.word	bullets
	.word	fry
	.word	coins
	.word	treasure
	.size	initWin, .-initWin
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCannonball.part.0, %function
updateCannonball.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L545
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #8]
	add	r3, r3, r1
	add	r1, r3, r2
	cmp	r1, #159
	str	r3, [r4, #4]
	sub	sp, sp, #16
	beq	.L540
.L515:
	str	r2, [sp, #12]
	str	r3, [sp, #4]
	ldr	r5, .L545+4
	ldr	lr, [r4, #12]
	ldr	ip, [r4]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldm	r5, {r0, r1}
	ldr	r7, .L545+8
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L541
.L516:
	ldr	r5, .L545+12
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #52]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	add	r2, r2, r2, lsr #31
	stm	sp, {ip, lr}
	str	r6, [sp, #12]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L517
	ldr	r3, [r5, #16]
	cmp	r3, #0
	bne	.L542
.L517:
	ldr	r6, .L545+16
	add	r8, r4, #8
	ldm	r8, {r8, ip}
	ldr	r2, [r6, #12]
	ldr	r0, [r6]
	ldr	r3, [r6, #8]
	ldr	r1, [r6, #52]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	add	r2, r2, r2, lsr #31
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	asr	r2, r2, #1
	add	r0, r0, #20
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L543
.L514:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L542:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L517
.L521:
	ldr	r3, .L545+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L544
	cmp	r3, #0
	ldreq	r2, .L545+16
	streq	r3, [r2, #68]
.L522:
	mov	r3, #1
	mov	r0, #0
	ldr	r1, .L545+24
	ldr	r2, .L545+28
	str	r0, [r4, #16]
	str	r3, [r1, #32]
	str	r3, [r2, #16]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L541:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L516
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L516
	mov	r3, #0
	mov	r2, #3
	str	r3, [r4, #16]
	ldr	r3, .L545+24
	str	r2, [r5, #32]
	str	r0, [r3, #32]
	b	.L516
.L543:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L514
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L521
	b	.L514
.L540:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L545+24
	str	r1, [r4, #16]
	str	r2, [r3, #32]
	bl	drawGame
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	b	.L515
.L544:
	mov	r3, #0
	str	r3, [r5, #68]
	b	.L522
.L546:
	.align	2
.L545:
	.word	cannonball
	.word	helmet
	.word	collision
	.word	leela
	.word	fry
	.word	characterChoice
	.word	enemy
	.word	goo
	.size	updateCannonball.part.0, .-updateCannonball.part.0
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
	ldr	r3, .L549
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bxeq	lr
	b	updateCannonball.part.0
.L550:
	.align	2
.L549:
	.word	cannonball
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
	ldr	r5, .L611
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L611+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L611+8
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
	beq	.L555
.L557:
	ldr	r0, [r4]
.L556:
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
	beq	.L558
.L560:
	ldr	r0, [r4]
.L559:
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
	beq	.L561
.L563:
	ldr	r0, [r4]
.L562:
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
	beq	.L609
.L564:
	ldr	r5, .L611+12
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
	beq	.L565
.L567:
	ldr	r0, [r4]
.L566:
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
	beq	.L568
.L570:
	ldr	r0, [r4]
.L569:
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
	beq	.L571
.L573:
	ldr	r0, [r4]
.L572:
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
	beq	.L574
.L576:
	ldr	r0, [r4]
.L575:
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
	beq	.L610
.L551:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L552:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L554
	ldr	ip, .L611+16
	ldr	r1, .L611+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L554
	mov	r3, r0
	mov	lr, #190
	ldr	r1, .L611+24
	mov	r0, lr
	str	r3, [ip]
	str	lr, [r4]
	str	r2, [r1, #16]
	str	r3, [r1, #20]
	b	.L553
.L610:
	ldr	r3, .L611+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L551
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L551
	ldr	r3, .L611+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L551
	mov	r0, #0
	ldr	r2, .L611+28
	ldr	r1, .L611+32
	str	r0, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r1]
	b	.L551
.L574:
	ldr	r3, .L611+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L576
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L576
	ldr	r2, .L611+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L576
	mov	r1, #190
	mov	ip, #0
	mov	lr, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L611+36
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L575
.L571:
	ldr	r3, .L611+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L573
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L573
	ldr	r2, .L611+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L573
	mov	r1, #190
	mov	ip, #0
	mov	lr, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L611+40
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L572
.L568:
	ldr	r3, .L611+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L570
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L570
	ldr	r2, .L611+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L570
	mov	r1, #190
	mov	ip, #0
	mov	lr, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L611+44
	str	lr, [r3]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	b	.L569
.L565:
	ldr	r2, .L611+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L567
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L567
	ldr	r1, .L611+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L567
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L611+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	b	.L566
.L609:
	ldr	r3, .L611+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L564
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L564
	ldr	r3, .L611+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L611+28
	ldreq	r1, .L611+32
	streq	r3, [r2, #16]
	streq	r0, [r2, #20]
	streq	r0, [r1]
	b	.L564
.L561:
	ldr	r2, .L611+16
	ldr	r1, [r2]
	cmp	r1, #3
	bne	.L563
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L563
	ldr	r1, .L611+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L563
	mov	ip, #190
	mov	lr, #4
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L611+36
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L562
.L558:
	ldr	r2, .L611+16
	ldr	r1, [r2]
	cmp	r1, #2
	bne	.L560
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L560
	ldr	r1, .L611+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L560
	mov	ip, #190
	mov	lr, #3
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L611+40
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L559
.L555:
	ldr	r2, .L611+16
	ldr	r3, [r2]
	cmp	r3, #1
	bne	.L557
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L557
	ldr	r1, .L611+20
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L557
	mov	ip, #190
	mov	lr, #2
	mov	r0, ip
	str	ip, [r4]
	ldr	ip, .L611+44
	str	lr, [r2]
	str	r1, [ip, #16]
	str	r3, [ip, #20]
	b	.L556
.L612:
	.align	2
.L611:
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
	ldr	r2, .L621
	ldrh	r3, [r2]
	ldr	r0, .L621+4
	push	{r4, lr}
	ldr	r1, .L621+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L621+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L614:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L614
	bl	updateEnemy
	bl	updateLives
	ldr	r3, .L621+16
	ldr	r3, [r3, #16]
	cmp	r3, #0
	blne	updateCannonball.part.0
.L615:
	bl	updateHelmet
	ldr	r3, .L621+20
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L621+24
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L621+28
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L621+32
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L622:
	.align	2
.L621:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	cannonball
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
	ldr	r2, .L631
	ldrh	r3, [r2]
	ldr	r0, .L631+4
	push	{r4, lr}
	ldr	r1, .L631+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L631+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L624:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L624
	bl	updateLives
	bl	updateEnemy
	ldr	r3, .L631+16
	ldr	r3, [r3, #16]
	cmp	r3, #0
	blne	updateCannonball.part.0
.L625:
	bl	updateHelmet
	ldr	r3, .L631+20
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L631+24
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L631+28
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L631+32
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L632:
	.align	2
.L631:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	cannonball
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
	ldr	r2, .L641
	ldrh	r3, [r2]
	ldr	r0, .L641+4
	push	{r4, lr}
	ldr	r1, .L641+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	bl	updateHelmet
	ldr	r1, .L641+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L634:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L634
	bl	updateLives
	bl	updateEnemy
	ldr	r3, .L641+16
	ldr	r3, [r3, #16]
	cmp	r3, #0
	blne	updateCannonball.part.0
.L635:
	ldr	r3, .L641+20
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L641+24
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L641+28
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L641+32
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L642:
	.align	2
.L641:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	cannonball
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
	ldr	r2, .L651
	ldrh	r3, [r2]
	ldr	r0, .L651+4
	push	{r4, lr}
	ldr	r1, .L651+8
	add	r3, r3, #1
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r1, .L651+12
	add	r4, r1, #1392
	add	r4, r4, #8
.L644:
	mov	r0, r1
	add	r1, r1, #28
	bl	updateBullets
	cmp	r1, r4
	bne	.L644
	bl	updateLives
	bl	updateEnemy
	ldr	r3, .L651+16
	ldr	r3, [r3, #16]
	cmp	r3, #0
	blne	updateCannonball.part.0
.L645:
	bl	updateHelmet
	ldr	r3, .L651+20
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #7
	ldr	r2, .L651+24
	eor	r3, r3, #1
	and	r3, r3, #1
	ldr	r0, .L651+28
	str	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L651+32
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L652:
	.align	2
.L651:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	cannonball
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
	.comm	cheatmode,20,4
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
