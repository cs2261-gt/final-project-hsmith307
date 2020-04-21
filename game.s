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
	ldr	r3, [r4, #68]
	cmp	r3, #1
	bne	.L6
	ldr	r3, [r4, #108]
	cmp	r3, #1
	bne	.L6
	ldr	r3, [r4, #148]
	cmp	r3, #1
	bne	.L6
	ldr	r3, [r4, #188]
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
	ldr	r3, [r4, #68]
	cmp	r3, #1
	ldr	r5, [r6]
	bne	.L7
	ldr	r3, [r4, #108]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [r4, #148]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [r4, #188]
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
	mov	r1, #0
	mov	ip, #32
	mov	r4, #500
.L57:
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
	mov	r1, #4352
	mov	r3, #67108864
	mov	r2, #1
	mov	r0, #32
	mov	lr, #104
	mov	ip, #64
	strh	r1, [r3]	@ movhi
	ldr	r3, .L105
	ldr	r3, [r3]
	ldr	r1, .L105+4
	cmp	r3, r2
	str	r2, [r1, #20]
	str	r2, [r1, #24]
	str	lr, [r1]
	str	r0, [r1, #12]
	str	r0, [r1, #8]
	str	ip, [r1, #4]
	beq	.L103
	cmp	r3, #0
	bne	.L104
	mov	lr, #4
	mov	r5, #3
	mov	r4, #23040
	ldr	r0, .L105+8
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
	str	r3, [r0, #56]
	str	r4, [r0, #4]
	ldr	lr, .L105+12
.L93:
	mov	ip, #0
	mov	r4, #1
	ldr	r3, .L105+16
	ldr	r5, [r3, #76]
	ldr	r2, [r3, #116]
	cmp	r5, ip
	mov	r6, #200
	movne	fp, ip
	moveq	fp, r4
	cmp	r2, ip
	movne	r9, ip
	moveq	r9, r4
	mov	r5, #20
	mov	r2, #32
	str	r4, [r1, #16]
	ldr	r1, .L105+20
	ldr	r4, .L105+24
	str	r6, [r1]
	str	r6, [r4]
	ldr	r6, .L105+28
	str	r9, [r4, #16]
	str	r5, [r1, #4]
	ldr	r9, [r3, #156]
	str	r5, [r6]
	ldr	r5, .L105+32
	cmp	r9, ip
	str	ip, [r5, #16]
	str	ip, [r6, #16]
	mov	ip, #120
	str	r2, [r1, #12]
	str	r2, [r1, #8]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
	str	r2, [r5, #12]
	str	r2, [r5, #8]
	str	r2, [r6, #12]
	str	r2, [r6, #8]
	moveq	r2, #1
	str	ip, [r5, #4]
	mov	r10, #90
	mov	ip, #0
	streq	r2, [r6, #16]
	ldr	r2, [r3, #196]
	cmp	r2, #0
	moveq	r2, #1
	mov	r7, #180
	mov	r8, #100
	str	r10, [r4, #4]
	mov	r4, ip
	streq	r2, [r5, #16]
	str	r7, [r5]
	str	ip, [r0, #16]
	ldr	r2, .L105+36
	ldr	r0, .L105+40
	ldr	r5, .L105+44
	str	fp, [r1, #16]
	str	r8, [r6, #4]
	str	ip, [lr, #16]
	str	ip, [r3, #20]
	str	ip, [r3, #60]
	str	ip, [r3, #100]
	add	r1, r2, #1392
	str	ip, [r3, #140]
	str	ip, [r3, #180]
	str	ip, [r5, #16]
	str	ip, [r0, #16]
	str	ip, [r0, #56]
	add	r1, r1, #8
.L98:
	str	r4, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L98
	mov	r2, #32
	mov	lr, #10
	mov	r1, #1
	mov	ip, #216
	mov	r0, #42
	mov	r5, #208
	ldr	r3, .L105+48
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	r2, .L105+52
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
	ldr	r5, .L105+56
	bl	initHelmet
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L105+60
	ldr	r1, .L105+64
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L105+68
	ldr	r1, .L105+72
	mov	lr, pc
	bx	r5
	ldr	r3, .L105+76
	ldr	r0, .L105+80
	ldr	r1, .L105+84
	ldr	r2, .L105+88
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L103:
	mov	r0, #0
	mov	r5, #3
	mov	r4, #23040
	mov	r2, #4
	ldr	lr, .L105+12
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
	ldr	r0, .L105+8
	b	.L93
.L104:
	ldr	lr, .L105+12
	ldr	r0, .L105+8
	b	.L93
.L106:
	.align	2
.L105:
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
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	bl	initCoins
	ldr	r2, .L119+4
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	ip, #1
	ldr	r6, .L119+8
	ldr	r4, [r6]
	ldr	r7, [r6, #12]
	ldr	lr, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r4, r4, r7
	add	lr, lr, #20
.L108:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r4, lr}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L108
	mov	r0, #64
	mov	r3, #4
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #203
	mov	r7, #120
	ldr	lr, .L119+12
	ldr	r4, [lr]
	ldr	lr, .L119+16
	str	r3, [lr, #40]
	str	r0, [lr, #12]
	ldr	r3, .L119+20
	str	r0, [lr, #8]
	ldr	r0, .L119+24
	cmp	r4, #0
	str	fp, [lr]
	str	ip, [lr, #20]
	str	ip, [lr, #24]
	str	ip, [lr, #36]
	str	r5, [lr, #32]
	str	r10, [lr, #4]
	str	r9, [lr, #28]
	str	r8, [r3, #40]
	str	ip, [r3, #48]
	str	r7, [r3, #44]
	str	ip, [r0, #16]
	str	ip, [r0, #28]
	bne	.L109
	ldr	r3, .L119+28
	str	r4, [r3, #56]
.L110:
	mov	r0, #1
	ldr	r3, .L119+4
.L111:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L111
	mov	ip, #0
	ldr	r3, .L119+32
	cmp	r4, #1
	str	ip, [r3]
	streq	r4, [r6, #16]
	beq	.L113
	cmp	r4, #0
	ldreq	r3, .L119+28
	streq	r0, [r3, #16]
.L113:
	mov	ip, #1
	mov	r0, #0
	str	ip, [lr, #16]
	mov	r3, ip
	ldr	ip, .L119+36
	ldr	lr, .L119+40
	str	r0, [ip, #16]
	ldr	ip, .L119+44
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L119+48
	ldr	ip, .L119+52
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L114:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L114
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L109:
	cmp	r4, #1
	streq	r5, [r6, #56]
	b	.L110
.L120:
	.align	2
.L119:
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
	ldr	r3, .L133
	ldr	r4, .L133+4
	mov	lr, pc
	bx	r3
	mov	r2, #8
	mov	r6, #0
	mov	r3, r4
	mov	r7, #1
	ldr	r8, .L133+8
	ldr	r0, [r8]
	ldr	ip, [r8, #12]
	ldr	r1, [r8, #52]
	add	r5, r4, #1392
	add	r5, r5, r2
	add	r0, r0, ip
	add	r1, r1, #20
.L122:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r7, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L122
	mov	r3, #64
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	mov	ip, #170
	ldr	r9, .L133+12
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
	ldr	r1, .L133+16
	ldr	r3, .L133+20
	str	r6, [r1, #16]
	str	r6, [r3, #16]
	ldr	r0, .L133+24
	ldr	r3, .L133+28
	ldr	r1, .L133+32
	str	r6, [r3, #16]
	str	r7, [r9, #16]
	str	r6, [r0, #16]
	str	r6, [r1, #16]
	ldr	r3, .L133+4
.L123:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L123
	ldr	r3, .L133+36
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L124
	ldr	r3, .L133+40
	str	r2, [r3, #56]
.L125:
	mov	r3, #1
.L126:
	str	r3, [r4, #12]
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L126
	ldr	r0, .L133+44
	ldr	r1, [r0, #84]
	ldr	ip, .L133+48
	cmp	r2, #1
	add	r1, r1, #25
	str	r1, [r0, #84]
	str	r3, [ip]
	streq	r2, [r8, #16]
	beq	.L128
	cmp	r2, #0
	ldreq	r2, .L133+40
	streq	r3, [r2, #16]
.L128:
	mov	r2, #1
	ldr	r3, .L133+52
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	bx	lr
.L124:
	cmp	r2, #1
	moveq	r3, #0
	streq	r3, [r8, #56]
	b	.L125
.L134:
	.align	2
.L133:
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
	ldr	r3, .L145
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L145+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L145+8
	ldr	r9, .L145+12
	str	ip, [r8, #16]
	ldr	r3, .L145+16
	ldr	fp, .L145+20
	ldr	r10, .L145+24
	ldr	r8, .L145+28
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
.L136:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r5, r2
	bne	.L136
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L145+32
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
	ldr	r3, .L145+16
	str	r6, [r3, #16]
	ldr	r3, .L145+8
	str	r6, [r3, #16]
	ldr	r3, .L145+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L137:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L137
	ldr	r3, .L145+36
	ldr	r0, .L145+40
	ldr	r1, [r3]
	ldr	r3, [r0, #124]
	cmp	r1, #0
	add	r3, r3, #25
	bne	.L138
	mov	lr, #2
	ldr	ip, .L145+44
	str	r3, [r0, #124]
	ldr	r3, .L145+48
	str	lr, [ip]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
.L139:
	mov	r2, #1
	ldr	r3, .L145+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L138:
	cmp	r1, #1
	bne	.L140
	mov	ip, #0
	mov	r2, #2
	str	r3, [r0, #124]
	ldr	r3, .L145+44
	str	r1, [r9, #16]
	str	ip, [r9, #56]
	str	r2, [r3]
	b	.L139
.L140:
	mov	r1, #2
	ldr	r2, .L145+44
	str	r3, [r0, #124]
	str	r1, [r2]
	b	.L139
.L146:
	.align	2
.L145:
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
	ldr	r3, .L157
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L157+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L157+8
	ldr	r9, .L157+12
	str	ip, [r8, #16]
	ldr	r3, .L157+16
	ldr	fp, .L157+20
	ldr	r10, .L157+24
	ldr	r8, .L157+28
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
.L148:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r5, r2
	bne	.L148
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L157+32
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
	ldr	r3, .L157+16
	str	r6, [r3, #16]
	ldr	r3, .L157+8
	str	r6, [r3, #16]
	ldr	r3, .L157+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L149:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L149
	ldr	r3, .L157+36
	ldr	r0, .L157+40
	ldr	r1, [r3]
	ldr	r3, [r0, #164]
	cmp	r1, #0
	add	r3, r3, #25
	bne	.L150
	mov	lr, #3
	ldr	ip, .L157+44
	str	r3, [r0, #164]
	ldr	r3, .L157+48
	str	lr, [ip]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
.L151:
	mov	r2, #1
	ldr	r3, .L157+52
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L150:
	cmp	r1, #1
	bne	.L152
	mov	ip, #0
	mov	r2, #3
	str	r3, [r0, #164]
	ldr	r3, .L157+44
	str	r1, [r9, #16]
	str	ip, [r9, #56]
	str	r2, [r3]
	b	.L151
.L152:
	mov	r1, #3
	ldr	r2, .L157+44
	str	r3, [r0, #164]
	str	r1, [r2]
	b	.L151
.L158:
	.align	2
.L157:
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
	ldr	r3, .L163
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L163+4
	ldr	ip, .L163+8
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L163+12
	ldr	ip, .L163+16
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L163+20
	ldr	ip, .L163+24
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L163+28
	ldr	ip, .L163+32
	ldr	r4, .L163+36
	ldr	lr, .L163+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L160:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L160
	pop	{r4, lr}
	bx	lr
.L164:
	.align	2
.L163:
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
	ldr	r5, .L174
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L174+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L166
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L166:
	ldr	r4, .L174+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L174+12
	add	r6, r6, #8
	b	.L171
.L173:
	ldr	r0, [r5]
.L171:
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
	bne	.L173
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L175:
	.align	2
.L174:
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
	ldr	r3, .L190
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r0, [r3, #20]
	ldr	r2, [r3]
	beq	.L177
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	beq	.L189
.L179:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L190+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r2, #16]
	stm	r2, {r0, r1}
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L177:
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #239
	str	r2, [r3]
	bne	.L179
	mov	r2, #1
.L189:
	str	r2, [r3, #28]
	b	.L179
.L191:
	.align	2
.L190:
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
	ldr	r3, .L194
	ldmib	r3, {r1, r2}
	add	r1, r1, r2
	ldr	r0, [r3]
	ldr	r2, .L194+4
	add	r0, r0, #8
	sub	r1, r1, #10
	str	lr, [r3, #32]
	stm	r2, {r0, r1}
	str	ip, [r2, #16]
	ldr	lr, [sp], #4
	bx	lr
.L195:
	.align	2
.L194:
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
	ldr	r1, .L205
	ldr	r2, .L205+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L205+8
	ldr	r8, .L205+12
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
.L199:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L201
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L201
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L201:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L199
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L206:
	.align	2
.L205:
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
	ldr	r3, .L224
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L224+4
	tst	r0, #64
	ldr	r2, [r4, #24]
	beq	.L208
	ldr	r3, .L224+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L221
.L208:
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
	ble	.L211
	mov	r1, #0
	ldr	r3, [r4]
	ldr	r2, .L224+12
	add	r3, r3, #1
	str	r3, [r4]
	str	r1, [r2, #16]
.L211:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L224+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L212
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L222
.L212:
	tst	r0, #16
	beq	.L216
	ldr	r3, .L224+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L223
.L216:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L221:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	r2, r2, #1488
	streq	r3, [r4, #48]
	subeq	r2, r2, #12
	b	.L208
.L222:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L212
.L223:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L225:
	.align	2
.L224:
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
	ldr	r3, .L242
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L242+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L227
	ldr	r2, .L242+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L240
.L227:
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
	ldr	ip, .L242+12
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
	bcc	.L230
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L230:
	ldr	r2, [r4, #56]
	cmp	r2, #5
	movgt	r1, #0
	ldrgt	r2, .L242+16
	addgt	r3, r3, #1
	strgt	r3, [r4]
	strgt	r1, [r2, #16]
	tst	r0, #16
	beq	.L235
	ldr	r3, .L242+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L241
.L235:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L240:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L227
.L241:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L243:
	.align	2
.L242:
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
	ldr	r0, .L258
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L247
	ldr	r1, [r4, #28]
	cmp	r1, #9
	movgt	r1, #4
	addle	r1, r1, #1
	str	r1, [r4, #28]
.L247:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L258+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L256
.L250:
	cmp	r3, #0
	beq	.L257
.L246:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L257:
	ldr	r5, .L258+8
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
	ldr	r6, .L258+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L246
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
.L256:
	ldr	r6, .L258+16
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
	ldr	r7, .L258+12
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
	b	.L250
.L259:
	.align	2
.L258:
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
	ldr	r2, .L268
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldreq	r1, .L268+4
	streq	r3, [r2, #16]
	streq	r0, [r1, #32]
	bx	lr
.L269:
	.align	2
.L268:
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
	ldr	r3, .L323
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L320
	cmp	r2, #0
	moveq	r2, #512
	ldreq	lr, .L323+4
	ldrne	lr, .L323+4
	strheq	r2, [lr]	@ movhi
.L272:
	ldr	r2, .L323+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L321
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [lr, #88]	@ movhi
.L274:
	ldr	r3, .L323+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L322
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [lr, #48]	@ movhi
.L276:
	ldr	r1, .L323+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L323+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L277
	mov	ip, #148
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L278
.L279:
	ldr	r3, .L323+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #72]	@ movhi
	beq	.L309
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #74]	@ movhi
	strh	r0, [lr, #72]	@ movhi
	strh	r1, [lr, #76]	@ movhi
.L309:
	ldr	r3, .L323+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #128]	@ movhi
	beq	.L308
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #130]	@ movhi
	strh	r0, [lr, #128]	@ movhi
	strh	r1, [lr, #132]	@ movhi
.L308:
	ldr	r3, .L323+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #136]	@ movhi
	beq	.L307
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #138]	@ movhi
	strh	r0, [lr, #136]	@ movhi
	strh	r1, [lr, #140]	@ movhi
.L307:
	ldr	r3, .L323+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [lr, #240]	@ movhi
	beq	.L284
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
.L284:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L285
	mov	r3, #512
	strh	r3, [lr, #248]	@ movhi
.L287:
	mov	r5, #512
	mov	r4, #150
	ldr	r3, .L323+40
	ldr	r2, .L323+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L286:
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
	bne	.L286
	ldr	r3, .L323+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #8]	@ movhi
	beq	.L306
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #10]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r1, [lr, #12]	@ movhi
.L306:
	ldr	r3, .L323+52
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L291
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #156
	mvn	r2, r2, lsr #17
	ldr	r0, [r3, #4]
	ldr	r3, .L323+56
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L305:
	ldr	r3, .L323+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L292
	mov	r0, #151
	ldr	r1, [r3, #4]
	ldr	r2, .L323+64
	ldr	r3, [r3]
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
.L304:
	mov	r6, #512
	mov	r5, #152
	ldr	r3, .L323+68
	ldr	r2, .L323+4
	ldr	r4, .L323+72
	add	r0, r3, #200
.L295:
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
	bne	.L295
	ldr	r3, .L323+76
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L303
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L303:
	ldr	r3, .L323+80
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L302
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L302:
	ldr	r3, .L323+84
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L301
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L301:
	ldr	r3, .L323+88
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L300
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L300:
	ldr	r3, .L323+92
	mov	lr, pc
	bx	r3
	ldr	r4, .L323+96
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L323+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L323+100
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L323+104
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L292:
	mov	r2, #512
	ldr	r3, .L323+64
	strh	r2, [r3]	@ movhi
	b	.L304
.L291:
	mov	r2, #512
	ldr	r3, .L323+56
	strh	r2, [r3]	@ movhi
	b	.L305
.L285:
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
	b	.L287
.L277:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [lr, #56]	@ movhi
	beq	.L310
	mov	r2, #148
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #68]	@ movhi
.L310:
	mov	r3, #512
	strh	r3, [lr, #64]	@ movhi
	b	.L279
.L278:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L279
.L322:
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
	b	.L276
.L321:
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
	b	.L274
.L320:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	lr, .L323+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	b	.L272
.L324:
	.align	2
.L323:
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
	ldr	r1, .L331
	ldr	r2, .L331+4
	ldr	r3, .L331+8
	ldr	r6, .L331+12
	str	r5, [r1, #16]
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L331+16
	ldr	ip, .L331+20
	ldr	r0, .L331+24
	ldr	r8, .L331+28
	ldr	r3, .L331+32
	ldr	r2, .L331+36
	ldr	r1, .L331+40
	ldr	r9, .L331+44
	ldr	r7, .L331+48
	ldr	r4, .L331+52
	str	r5, [r6, #20]
	str	r5, [r6, #60]
	str	r5, [r6, #100]
	str	r5, [r6, #140]
	str	r5, [r6, #180]
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
	ldr	r8, .L331+32
	str	lr, [r8, #16]
	ldr	r8, .L331+36
	str	lr, [r8, #16]
	ldr	r8, .L331+40
	str	lr, [r9, #16]
	str	lr, [r8, #16]
.L326:
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
	bne	.L326
	mov	r2, #8
	mov	r6, #0
	mov	r5, #1
	ldr	r3, .L331+56
	ldr	r0, [r7]
	ldr	lr, [r7, #12]
	ldr	r1, [r7, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L327:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L327
	ldr	r3, .L331+60
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
.L332:
	.align	2
.L331:
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
	ldr	r2, .L341
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L341+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L341+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L341+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L341+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L341+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L341+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L341+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L341+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L341+12
	ldr	r2, [r3, #76]
	cmp	r2, #1
	beq	.L340
.L333:
	pop	{r4, lr}
	bx	lr
.L340:
	ldr	r2, [r3, #116]
	cmp	r2, #1
	bne	.L333
	ldr	r2, [r3, #156]
	cmp	r2, #1
	bne	.L333
	ldr	r3, [r3, #196]
	cmp	r3, #1
	ldreq	r2, .L341+16
	streq	r3, [r2]
	b	.L333
.L342:
	.align	2
.L341:
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
	ldr	r3, .L347
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L347+4
	ldr	lr, .L347+8
	ldr	r3, .L347+12
	str	r0, [lr, #16]
	ldr	r4, .L347+16
	ldr	lr, .L347+20
	str	r0, [ip, #16]
	ldr	ip, .L347+24
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
	ldr	r3, .L353
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L353+4
	ldr	lr, .L353+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L353+12
	ldr	lr, .L353+16
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L353+20
	ldr	lr, .L353+24
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L353+28
	ldr	lr, .L353+32
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L353+36
	ldr	lr, .L353+40
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L353+44
	ldr	lr, .L353+48
	ldr	r3, .L353+52
	str	r0, [lr, #16]
	ldr	r4, .L353+56
	ldr	lr, .L353+60
	str	r0, [ip, #16]
	ldr	ip, .L353+64
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
.L350:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L350
	pop	{r4, lr}
	b	drawGame
.L354:
	.align	2
.L353:
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
	ldr	r5, .L415
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L415+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L415+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L356
.L358:
	ldr	r0, [r4]
.L357:
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
	beq	.L359
.L361:
	ldr	r0, [r4]
.L360:
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
	beq	.L362
.L364:
	ldr	r0, [r4]
.L363:
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
	beq	.L413
.L368:
	ldr	r5, .L415+12
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
	beq	.L369
.L371:
	ldr	r0, [r4]
.L370:
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
	beq	.L372
.L374:
	ldr	r0, [r4]
.L373:
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
	beq	.L375
.L377:
	ldr	r0, [r4]
.L376:
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
	beq	.L378
.L380:
	ldr	r0, [r4]
.L379:
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
	beq	.L414
.L355:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L356:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L358
	ldr	ip, .L415+16
	ldr	r1, .L415+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L358
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L415+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L357
.L414:
	ldr	r3, .L415+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L355
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L355
	ldr	r3, .L415+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L415+28
	ldreq	r2, .L415+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L355
.L378:
	ldr	r3, .L415+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L380
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L380
	ldr	r2, .L415+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L380
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L415+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L379
.L375:
	ldr	r3, .L415+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L377
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L377
	ldr	r2, .L415+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L377
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L415+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L376
.L372:
	ldr	r3, .L415+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L374
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L374
	ldr	r2, .L415+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L374
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L415+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L373
.L369:
	ldr	r2, .L415+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L371
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L371
	ldr	r1, .L415+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L371
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L415+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L370
.L413:
	ldr	r3, .L415+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L368
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L368
	ldr	r3, .L415+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L415+28
	ldreq	r2, .L415+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L368
.L365:
	ldr	r3, .L415+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L367
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L367
	ldr	r2, .L415+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L367
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L415+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L366
.L362:
	ldr	r3, .L415+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L364
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L364
	ldr	r2, .L415+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L364
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L415+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L363
.L359:
	ldr	r3, .L415+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L361
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L361
	ldr	r2, .L415+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L361
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L415+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L360
.L416:
	.align	2
.L415:
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
	ldr	r2, .L433
	ldrh	r3, [r2]
	ldr	r0, .L433+4
	push	{r4, lr}
	ldr	r1, .L433+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L433+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L419:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L418:
	add	r0, r0, #28
	cmp	r1, r0
	bne	.L419
	ldr	r4, .L433+16
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L420
	ldr	r3, .L433+20
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L432
.L422:
	bl	updateEnemy
	bl	updateLives
	ldr	r2, .L433+24
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldreq	r1, .L433+28
	streq	r0, [r1, #32]
	ldr	r0, .L433+32
	streq	r3, [r2, #16]
	bl	updateCoins
	ldr	r0, .L433+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L432:
	mov	r2, #1
	ldr	r3, .L433+40
	str	r2, [r3, #60]
	add	r0, r3, #40
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L420:
	cmp	r3, #1
	bne	.L422
	ldr	r2, .L433+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L422
	ldr	r2, .L433+40
	str	r3, [r2, #60]
	add	r0, r2, #40
	bl	updateTreasure.part.0
	b	.L422
.L434:
	.align	2
.L433:
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
	ldr	r2, .L451
	ldrh	r3, [r2]
	ldr	r0, .L451+4
	push	{r4, lr}
	ldr	r1, .L451+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L451+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L437:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L436:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L437
	bl	updateLives
	bl	updateEnemy
	ldr	r2, .L451+16
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldr	r4, .L451+20
	ldreq	r1, .L451+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r0, [r1, #32]
	cmp	r3, #0
	bne	.L441
	ldr	r3, .L451+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L450
.L443:
	ldr	r0, .L451+32
	bl	updateCoins
	ldr	r0, .L451+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L450:
	mov	r2, #1
	ldr	r3, .L451+40
	str	r2, [r3, #100]
	add	r0, r3, #80
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L441:
	cmp	r3, #1
	bne	.L443
	ldr	r2, .L451+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L443
	ldr	r2, .L451+40
	str	r3, [r2, #100]
	add	r0, r2, #80
	bl	updateTreasure.part.0
	b	.L443
.L452:
	.align	2
.L451:
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
	ldr	r2, .L469
	ldrh	r3, [r2]
	ldr	r0, .L469+4
	push	{r4, lr}
	ldr	r1, .L469+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L469+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L455:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L454:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L455
	bl	updateLives
	bl	updateEnemy
	ldr	r2, .L469+16
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldr	r4, .L469+20
	ldreq	r1, .L469+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r0, [r1, #32]
	cmp	r3, #0
	bne	.L459
	ldr	r3, .L469+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L468
.L461:
	ldr	r0, .L469+32
	bl	updateCoins
	ldr	r0, .L469+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L468:
	mov	r2, #1
	ldr	r3, .L469+40
	str	r2, [r3, #140]
	add	r0, r3, #120
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L459:
	cmp	r3, #1
	bne	.L461
	ldr	r2, .L469+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L461
	ldr	r2, .L469+40
	str	r3, [r2, #140]
	add	r0, r2, #120
	bl	updateTreasure.part.0
	b	.L461
.L470:
	.align	2
.L469:
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
	ldr	r2, .L487
	ldrh	r3, [r2]
	ldr	r0, .L487+4
	push	{r4, lr}
	ldr	r1, .L487+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L487+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L473:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L472:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L473
	bl	updateLives
	bl	updateEnemy
	ldr	r2, .L487+16
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r1, [r2, #24]
	ldr	r3, [r2, #4]
	addne	r3, r3, r1
	ldr	r1, [r2, #8]
	strne	r3, [r2, #4]
	adds	r3, r3, r1
	moveq	r0, #1
	ldr	r4, .L487+20
	ldreq	r1, .L487+24
	streq	r3, [r2, #16]
	ldr	r3, [r4]
	streq	r0, [r1, #32]
	cmp	r3, #0
	bne	.L477
	ldr	r3, .L487+28
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L486
.L479:
	ldr	r0, .L487+32
	bl	updateCoins
	ldr	r0, .L487+36
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L486:
	mov	r2, #1
	ldr	r3, .L487+40
	str	r2, [r3, #180]
	add	r0, r3, #160
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L477:
	cmp	r3, #1
	bne	.L479
	ldr	r2, .L487+44
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L479
	ldr	r2, .L487+40
	str	r3, [r2, #180]
	add	r0, r2, #160
	bl	updateTreasure.part.0
	b	.L479
.L488:
	.align	2
.L487:
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
