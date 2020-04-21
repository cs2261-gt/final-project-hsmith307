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
	ldr	r3, .L63
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r3, .L66
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L67:
	.align	2
.L66:
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
	ldr	r3, .L69
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L70:
	.align	2
.L69:
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
	ldr	r3, .L72
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r3, .L85
	ldr	r3, [r3]
	ldr	ip, .L85+4
	cmp	r3, r1
	stmib	ip, {r0, r2}
	str	r1, [ip, #20]
	str	r1, [ip, #24]
	str	lr, [ip]
	str	r2, [ip, #12]
	beq	.L83
	cmp	r3, #0
	bne	.L84
	mov	r5, #3
	mov	r4, #23040
	mov	lr, #4
	ldr	r2, .L85+8
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
	ldr	r5, .L85+12
.L77:
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
	ldr	ip, .L85+16
	str	r1, [r5, #16]
	str	r1, [ip, #56]
	ldr	r5, .L85+20
	str	r1, [ip, #20]
	str	r1, [ip, #92]
	str	r1, [ip, #128]
	str	r1, [ip, #164]
	ldr	ip, .L85+24
	str	r1, [r5, #16]
	str	r1, [ip, #16]
	ldr	r5, .L85+28
	str	r1, [ip, #56]
	ldr	ip, .L85+32
	str	r7, [r5]
	stm	ip, {r7, fp}
	ldr	r7, .L85+36
	str	r1, [r2, #16]
	mov	r4, r1
	ldr	r3, .L85+40
	ldr	r1, .L85+44
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
.L78:
	str	r4, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L78
	ldr	r5, .L85+48
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L85+52
	ldr	r1, .L85+56
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L85+60
	ldr	r1, .L85+64
	mov	lr, pc
	bx	r5
	ldr	r3, .L85+68
	ldr	r0, .L85+72
	ldr	r1, .L85+76
	ldr	r2, .L85+80
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L83:
	mov	r2, #0
	mov	r4, #3
	mov	lr, #23040
	mov	r1, #4
	ldr	r5, .L85+12
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
	ldr	r2, .L85+8
	b	.L77
.L84:
	ldr	r5, .L85+12
	ldr	r2, .L85+8
	b	.L77
.L86:
	.align	2
.L85:
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
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	bl	initCoins
	ldr	r2, .L99+4
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	ip, #1
	ldr	r6, .L99+8
	ldr	r4, [r6]
	ldr	r7, [r6, #12]
	ldr	lr, [r6, #52]
	add	r1, r2, #1392
	add	r1, r1, r0
	add	r4, r4, r7
	add	lr, lr, #20
.L88:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #12]
	stm	r3, {r4, lr}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L88
	mov	r3, #4
	mov	r0, #64
	mov	fp, #170
	mov	r10, #90
	mov	r9, #2
	mov	r8, #203
	mov	r7, #120
	ldr	lr, .L99+12
	ldr	r4, [lr]
	ldr	lr, .L99+16
	str	r3, [lr, #40]
	ldr	r3, .L99+20
	cmp	r4, #0
	str	fp, [lr]
	str	ip, [lr, #20]
	str	ip, [lr, #24]
	str	ip, [lr, #36]
	str	r5, [lr, #32]
	str	r10, [lr, #4]
	str	r9, [lr, #28]
	str	r0, [lr, #12]
	str	r0, [lr, #8]
	str	r8, [r3, #36]
	str	ip, [r3, #44]
	str	r7, [r3, #40]
	bne	.L89
	ldr	r3, .L99+24
	str	r4, [r3, #56]
.L90:
	mov	r0, #1
	ldr	r3, .L99+4
.L91:
	str	r0, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L91
	mov	ip, #0
	ldr	r3, .L99+28
	cmp	r4, #1
	str	ip, [r3]
	streq	r4, [r6, #16]
	beq	.L93
	cmp	r4, #0
	ldreq	r3, .L99+24
	streq	r0, [r3, #16]
.L93:
	mov	ip, #1
	mov	r0, #0
	str	ip, [lr, #16]
	mov	r3, ip
	ldr	ip, .L99+32
	ldr	lr, .L99+36
	str	r0, [ip, #16]
	ldr	ip, .L99+40
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L99+44
	ldr	ip, .L99+48
	str	r0, [lr, #16]
	str	r0, [ip, #16]
.L94:
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L94
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L89:
	cmp	r4, #1
	streq	r5, [r6, #56]
	b	.L90
.L100:
	.align	2
.L99:
	.word	hideSprites
	.word	bullets
	.word	leela
	.word	characterChoice
	.word	alien
	.word	treasure
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
	ldr	r3, .L113
	ldr	r4, .L113+4
	mov	lr, pc
	bx	r3
	mov	r2, #8
	mov	r6, #0
	mov	r3, r4
	mov	r7, #1
	ldr	r8, .L113+8
	ldr	r0, [r8]
	ldr	ip, [r8, #12]
	ldr	r1, [r8, #52]
	add	r5, r4, #1392
	add	r5, r5, r2
	add	r0, r0, ip
	add	r1, r1, #20
.L102:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r7, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L102
	mov	r3, #64
	mov	r0, #90
	mov	r1, #2
	mov	r2, #4
	mov	ip, #170
	ldr	r9, .L113+12
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
	ldr	r1, .L113+16
	ldr	r3, .L113+20
	str	r6, [r1, #16]
	str	r6, [r3, #16]
	ldr	r0, .L113+24
	ldr	r3, .L113+28
	ldr	r1, .L113+32
	str	r6, [r3, #16]
	str	r7, [r9, #16]
	str	r6, [r0, #16]
	str	r6, [r1, #16]
	ldr	r3, .L113+4
.L103:
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r5
	bne	.L103
	ldr	r3, .L113+36
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L104
	ldr	r3, .L113+40
	str	r2, [r3, #56]
.L105:
	mov	r3, #1
.L106:
	str	r3, [r4, #12]
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L106
	ldr	r0, .L113+44
	ldr	r1, [r0, #76]
	ldr	ip, .L113+48
	cmp	r2, #1
	add	r1, r1, #25
	str	r1, [r0, #76]
	str	r3, [ip]
	streq	r2, [r8, #16]
	beq	.L101
	cmp	r2, #0
	ldreq	r2, .L113+40
	streq	r3, [r2, #16]
.L101:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L104:
	cmp	r2, #1
	moveq	r3, #0
	streq	r3, [r8, #56]
	b	.L105
.L114:
	.align	2
.L113:
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
	ldr	r3, .L124
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L124+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L124+8
	ldr	r9, .L124+12
	str	ip, [r8, #16]
	ldr	r3, .L124+16
	ldr	fp, .L124+20
	ldr	r10, .L124+24
	ldr	r8, .L124+28
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
.L116:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r5, r2
	bne	.L116
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L124+32
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
	ldr	r3, .L124+16
	str	r6, [r3, #16]
	ldr	r3, .L124+8
	str	r6, [r3, #16]
	ldr	r3, .L124+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L117:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L117
	ldr	r3, .L124+36
	ldr	r0, .L124+40
	ldr	r1, [r3]
	ldr	r3, [r0, #112]
	cmp	r1, #0
	add	r3, r3, #25
	bne	.L118
	mov	lr, #2
	ldr	ip, .L124+44
	str	r3, [r0, #112]
	ldr	r3, .L124+48
	str	lr, [ip]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L118:
	cmp	r1, #1
	bne	.L120
	mov	ip, #0
	mov	r2, #2
	str	r3, [r0, #112]
	ldr	r3, .L124+44
	str	r1, [r9, #16]
	str	ip, [r9, #56]
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L120:
	mov	r1, #2
	ldr	r2, .L124+44
	str	r3, [r0, #112]
	str	r1, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L125:
	.align	2
.L124:
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
	ldr	r3, .L135
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r4, .L135+4
	mov	r1, #8
	mov	r2, r4
	mov	r7, #1
	ldr	r8, .L135+8
	ldr	r9, .L135+12
	str	ip, [r8, #16]
	ldr	r3, .L135+16
	ldr	fp, .L135+20
	ldr	r10, .L135+24
	ldr	r8, .L135+28
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
.L127:
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r6, [r2, #24]
	str	r7, [r2, #12]
	stm	r2, {r0, ip}
	add	r2, r2, #28
	cmp	r5, r2
	bne	.L127
	mov	r2, #64
	mov	lr, #170
	mov	ip, #90
	mov	r0, #2
	mov	r1, #4
	ldr	r8, .L135+32
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
	ldr	r3, .L135+16
	str	r6, [r3, #16]
	ldr	r3, .L135+8
	str	r6, [r3, #16]
	ldr	r3, .L135+28
	str	r7, [r8, #16]
	str	r6, [fp, #16]
	str	r6, [r10, #16]
	str	r6, [r3, #16]
.L128:
	str	r2, [r4, #24]
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L128
	ldr	r3, .L135+36
	ldr	r0, .L135+40
	ldr	r1, [r3]
	ldr	r3, [r0, #148]
	cmp	r1, #0
	add	r3, r3, #25
	bne	.L129
	mov	lr, #3
	ldr	ip, .L135+44
	str	r3, [r0, #148]
	ldr	r3, .L135+48
	str	lr, [ip]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L129:
	cmp	r1, #1
	bne	.L131
	mov	ip, #0
	mov	r2, #3
	str	r3, [r0, #148]
	ldr	r3, .L135+44
	str	r1, [r9, #16]
	str	ip, [r9, #56]
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L131:
	mov	r1, #3
	ldr	r2, .L135+44
	str	r3, [r0, #148]
	str	r1, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L136:
	.align	2
.L135:
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
	ldr	r3, .L141
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	lr, .L141+4
	ldr	ip, .L141+8
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L141+12
	ldr	ip, .L141+16
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L141+20
	ldr	ip, .L141+24
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L141+28
	ldr	ip, .L141+32
	ldr	r4, .L141+36
	ldr	lr, .L141+40
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L138:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L138
	pop	{r4, lr}
	bx	lr
.L142:
	.align	2
.L141:
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
	ldr	r5, .L152
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L152+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r5]
	sub	sp, sp, #16
	bcc	.L144
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L144:
	ldr	r4, .L152+8
	cmp	r0, #0
	add	r6, r4, #1392
	mov	r8, #0
	streq	r0, [r5, #16]
	ldr	r7, .L152+12
	add	r6, r6, #8
	b	.L149
.L151:
	ldr	r0, [r5]
.L149:
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
	bne	.L151
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	alien
	.word	238609294
	.word	bullets
	.word	collision
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #1
	ldr	r1, .L163
	ldr	r2, .L163+4
	ldr	r0, [r1]
	ldr	lr, [r1, #12]
	ldr	r3, .L163+8
	ldr	r8, .L163+12
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
.L157:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L159
	cmp	r1, #1
	streq	r6, [r3]
	streq	r5, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L159
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r4, [r3, #24]
.L159:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L157
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L164:
	.align	2
.L163:
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
	ldr	r3, .L182
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L182+4
	tst	r0, #64
	ldr	r2, [r4, #24]
	beq	.L166
	ldr	r3, .L182+8
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L179
.L166:
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
	ble	.L169
	mov	r1, #0
	ldr	r3, [r4]
	ldr	r2, .L182+12
	add	r3, r3, #1
	str	r3, [r4]
	str	r1, [r2, #16]
.L169:
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L182+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L170
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L180
.L170:
	tst	r0, #16
	beq	.L174
	ldr	r3, .L182+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L181
.L174:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L179:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	moveq	r3, #1
	subeq	r2, r2, #1488
	streq	r3, [r4, #48]
	subeq	r2, r2, #12
	b	.L166
.L180:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L170
.L181:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L183:
	.align	2
.L182:
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
	ldr	r3, .L200
	ldrh	r0, [r3]
	push	{r4, lr}
	ldr	r4, .L200+4
	tst	r0, #64
	ldr	r3, [r4, #24]
	beq	.L185
	ldr	r2, .L200+8
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L198
.L185:
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
	ldr	ip, .L200+12
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
	bcc	.L188
	add	r1, r4, #36
	ldm	r1, {r1, r2}
	sub	r2, r2, #1
	cmp	r1, r2
	movge	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #36]
	strge	r2, [r4, #36]
.L188:
	ldr	r2, [r4, #56]
	cmp	r2, #5
	movgt	r1, #0
	ldrgt	r2, .L200+16
	addgt	r3, r3, #1
	strgt	r3, [r4]
	strgt	r1, [r2, #16]
	tst	r0, #16
	beq	.L193
	ldr	r3, .L200+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L199
.L193:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L198:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	moveq	r2, #1
	subeq	r3, r3, #1488
	streq	r2, [r4, #48]
	subeq	r3, r3, #12
	b	.L185
.L199:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L201:
	.align	2
.L200:
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
	ldr	r0, .L216
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	ldr	ip, [r4, #20]
	add	r3, r2, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r1, ip
	str	r3, [r4]
	sub	sp, sp, #20
	bcc	.L205
	ldr	r1, [r4, #36]
	ldr	r0, [r4, #28]
	sub	r1, r1, #1
	cmp	r0, r1
	movge	r1, #4
	addlt	r0, r0, #1
	strlt	r0, [r4, #28]
	strge	r1, [r4, #28]
.L205:
	cmp	r3, #0
	ldreq	r3, [r4, #12]
	ldr	r5, .L216+4
	rsbeq	r3, r3, #240
	streq	r3, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r3, #1
	str	r2, [r4, #32]
	beq	.L214
.L208:
	cmp	r3, #0
	beq	.L215
.L204:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L215:
	ldr	r5, .L216+8
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
	ldr	r6, .L216+12
	stm	sp, {ip, lr}
	add	r1, r3, r1
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L204
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
.L214:
	ldr	r6, .L216+16
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
	ldr	r7, .L216+12
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
	b	.L208
.L217:
	.align	2
.L216:
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
	ldr	r3, .L269
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, r5, r6, lr}
	beq	.L266
	cmp	r2, #0
	moveq	r2, #512
	ldreq	lr, .L269+4
	ldrne	lr, .L269+4
	strheq	r2, [lr]	@ movhi
.L222:
	ldr	r2, .L269+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	beq	.L267
	cmp	r0, #0
	moveq	r3, #512
	strheq	r3, [lr, #88]	@ movhi
.L224:
	ldr	r3, .L269+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	beq	.L268
	cmp	r0, #0
	moveq	r2, #512
	strheq	r2, [lr, #48]	@ movhi
.L226:
	ldr	r1, .L269+16
	ldr	r2, [r3, #32]
	ldr	ip, [r1, #16]
	ldr	r0, .L269+20
	add	r2, r2, #1
	cmp	ip, #0
	str	r2, [r3, #32]
	ldr	r3, [r0, #16]
	beq	.L227
	mov	ip, #148
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	cmp	r3, #0
	orr	r3, r2, #16384
	strh	r3, [lr, #58]	@ movhi
	strh	r1, [lr, #56]	@ movhi
	strh	ip, [lr, #60]	@ movhi
	bne	.L228
.L229:
	ldr	r3, .L269+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #72]	@ movhi
	beq	.L255
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #74]	@ movhi
	strh	r0, [lr, #72]	@ movhi
	strh	r1, [lr, #76]	@ movhi
.L255:
	ldr	r3, .L269+28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #128]	@ movhi
	beq	.L254
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #130]	@ movhi
	strh	r0, [lr, #128]	@ movhi
	strh	r1, [lr, #132]	@ movhi
.L254:
	ldr	r3, .L269+32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #136]	@ movhi
	beq	.L253
	mov	r1, #148
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	orr	r3, r2, #16384
	strh	r3, [lr, #138]	@ movhi
	strh	r0, [lr, #136]	@ movhi
	strh	r1, [lr, #140]	@ movhi
.L253:
	ldr	r3, .L269+36
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [lr, #240]	@ movhi
	beq	.L234
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
.L234:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L235
	mov	r3, #512
	strh	r3, [lr, #248]	@ movhi
.L237:
	mov	r5, #512
	mov	r4, #150
	ldr	r3, .L269+40
	ldr	r2, .L269+44
	add	r0, r3, #1392
	add	r0, r0, #8
.L236:
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
	bne	.L236
	ldr	r3, .L269+48
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #8]	@ movhi
	beq	.L252
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #144
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #10]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r1, [lr, #12]	@ movhi
.L252:
	mov	r6, #512
	mov	r5, #152
	ldr	r3, .L269+52
	ldr	r2, .L269+4
	ldr	r4, .L269+56
	add	r0, r3, #180
.L243:
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
	bne	.L243
	ldr	r3, .L269+60
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #16]	@ movhi
	beq	.L251
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #16
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #18]	@ movhi
	strh	r3, [lr, #16]	@ movhi
	strh	r1, [lr, #20]	@ movhi
.L251:
	ldr	r3, .L269+64
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #24]	@ movhi
	beq	.L250
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #20
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #26]	@ movhi
	strh	r3, [lr, #24]	@ movhi
	strh	r1, [lr, #28]	@ movhi
.L250:
	ldr	r3, .L269+68
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #32]	@ movhi
	beq	.L249
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #24
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #34]	@ movhi
	strh	r3, [lr, #32]	@ movhi
	strh	r1, [lr, #36]	@ movhi
.L249:
	ldr	r3, .L269+72
	ldr	r2, [r3, #16]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [lr, #40]	@ movhi
	beq	.L248
	ldr	r2, [r3]
	mvn	r2, r2, lsl #17
	mov	r1, #28
	mvn	r2, r2, lsr #17
	ldr	r3, [r3, #4]
	strh	r2, [lr, #42]	@ movhi
	strh	r3, [lr, #40]	@ movhi
	strh	r1, [lr, #44]	@ movhi
.L248:
	ldr	r3, .L269+76
	mov	lr, pc
	bx	r3
	ldr	r4, .L269+80
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L269+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L269+84
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L269+88
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L235:
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
	b	.L237
.L227:
	mov	r2, #512
	cmp	r3, #0
	strh	r2, [lr, #56]	@ movhi
	beq	.L256
	mov	r2, #148
	ldr	r3, [r0]
	orr	r3, r3, #16384
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #68]	@ movhi
.L256:
	mov	r3, #512
	strh	r3, [lr, #64]	@ movhi
	b	.L229
.L228:
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	orr	r3, r3, #16384
	strh	ip, [lr, #68]	@ movhi
	strh	r3, [lr, #66]	@ movhi
	strh	r2, [lr, #64]	@ movhi
	b	.L229
.L268:
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
	b	.L226
.L267:
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
	b	.L224
.L266:
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	lr, .L269+4
	add	r2, r2, r0, lsl #5
	ldr	r0, [r3, #52]
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	b	.L222
.L270:
	.align	2
.L269:
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
	ldr	r1, .L277
	ldr	r2, .L277+4
	ldr	r3, .L277+8
	ldr	r6, .L277+12
	str	r5, [r1, #16]
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	lr, .L277+16
	ldr	ip, .L277+20
	ldr	r0, .L277+24
	ldr	r8, .L277+28
	ldr	r3, .L277+32
	ldr	r2, .L277+36
	ldr	r1, .L277+40
	ldr	r9, .L277+44
	ldr	r7, .L277+48
	ldr	r4, .L277+52
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
	ldr	r8, .L277+32
	str	lr, [r8, #16]
	ldr	r8, .L277+36
	str	lr, [r8, #16]
	ldr	r8, .L277+40
	str	lr, [r9, #16]
	str	lr, [r8, #16]
.L272:
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
	bne	.L272
	mov	r2, #8
	mov	r6, #0
	mov	r5, #1
	ldr	r3, .L277+56
	ldr	r0, [r7]
	ldr	lr, [r7, #12]
	ldr	r1, [r7, #52]
	add	ip, r3, #1392
	add	ip, ip, r2
	add	r0, r0, lr
	add	r1, r1, #20
.L273:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L273
	ldr	r3, .L277+60
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
.L278:
	.align	2
.L277:
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
	ldr	r2, .L287
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L287+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L287+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L287+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L287+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L287+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L287+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L287+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L287+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L287+12
	ldr	r2, [r3, #64]
	cmp	r2, #1
	beq	.L286
.L279:
	pop	{r4, lr}
	bx	lr
.L286:
	ldr	r2, [r3, #100]
	cmp	r2, #1
	bne	.L279
	ldr	r2, [r3, #136]
	cmp	r2, #1
	bne	.L279
	ldr	r3, [r3, #172]
	cmp	r3, #1
	ldreq	r2, .L287+16
	streq	r3, [r2]
	b	.L279
.L288:
	.align	2
.L287:
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
	ldr	r3, .L293
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L293+4
	ldr	lr, .L293+8
	ldr	r3, .L293+12
	str	r0, [lr, #16]
	ldr	r4, .L293+16
	ldr	lr, .L293+20
	str	r0, [ip, #16]
	ldr	ip, .L293+24
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
.L290:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L290
	pop	{r4, lr}
	b	drawGame
.L294:
	.align	2
.L293:
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
	ldr	r3, .L299
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L299+4
	ldr	lr, .L299+8
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L299+12
	ldr	lr, .L299+16
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L299+20
	ldr	lr, .L299+24
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L299+28
	ldr	lr, .L299+32
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L299+36
	ldr	lr, .L299+40
	str	r0, [ip, #16]
	str	r0, [lr, #16]
	ldr	ip, .L299+44
	ldr	lr, .L299+48
	ldr	r3, .L299+52
	str	r0, [lr, #16]
	ldr	r4, .L299+56
	ldr	lr, .L299+60
	str	r0, [ip, #16]
	ldr	ip, .L299+64
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
.L296:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L296
	pop	{r4, lr}
	b	drawGame
.L300:
	.align	2
.L299:
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
	ldr	r5, .L361
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #52]
	ldr	r3, [r5]
	ldr	r4, .L361+4
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	ldr	r6, .L361+8
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L302
.L304:
	ldr	r0, [r4]
.L303:
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
	beq	.L305
.L307:
	ldr	r0, [r4]
.L306:
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
	beq	.L308
.L310:
	ldr	r0, [r4]
.L309:
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
	beq	.L311
.L313:
	ldr	r0, [r4]
.L312:
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
.L314:
	ldr	r5, .L361+12
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
	beq	.L315
.L317:
	ldr	r0, [r4]
.L316:
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
	beq	.L318
.L320:
	ldr	r0, [r4]
.L319:
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
	beq	.L321
.L323:
	ldr	r0, [r4]
.L322:
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
	beq	.L324
.L326:
	ldr	r0, [r4]
.L325:
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
	beq	.L360
.L301:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L302:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L304
	ldr	ip, .L361+16
	ldr	r1, .L361+20
	ldr	r2, [ip]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L304
	mov	r3, r0
	mov	r1, #190
	str	r3, [ip]
	ldr	r3, .L361+24
	mov	r0, r1
	str	r1, [r4]
	str	r2, [r3, #16]
	b	.L303
.L360:
	ldr	r3, .L361+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L301
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L301
	ldr	r3, .L361+20
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #0
	ldreq	r1, .L361+28
	ldreq	r2, .L361+32
	streq	r0, [r1, #16]
	streq	r3, [r2]
	b	.L301
.L324:
	ldr	r3, .L361+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L326
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L326
	ldr	r2, .L361+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L326
	mov	r2, #190
	mov	r1, #0
	mov	ip, #4
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L361+36
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L325
.L321:
	ldr	r3, .L361+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L323
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L323
	ldr	r2, .L361+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L323
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L361+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L322
.L318:
	ldr	r3, .L361+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L320
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L320
	ldr	r2, .L361+20
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L320
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L361+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L319
.L315:
	ldr	r2, .L361+16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L317
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.L317
	ldr	r1, .L361+20
	ldr	r1, [r1]
	cmp	r1, #1
	bne	.L317
	mov	ip, #190
	str	r1, [r2]
	ldr	r2, .L361+24
	mov	r0, ip
	str	ip, [r4]
	str	r3, [r2, #16]
	b	.L316
.L359:
	ldr	r3, .L361+16
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L314
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L314
	ldr	r3, .L361+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r1, .L361+28
	ldreq	r2, .L361+32
	streq	r3, [r1, #16]
	streq	r0, [r2]
	b	.L314
.L311:
	ldr	r3, .L361+16
	ldr	r2, [r3]
	cmp	r2, #3
	bne	.L313
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L313
	ldr	r2, .L361+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L313
	mov	r1, #190
	mov	ip, #4
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L361+36
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L312
.L308:
	ldr	r3, .L361+16
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L310
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L310
	ldr	r2, .L361+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L310
	mov	r1, #190
	mov	ip, #3
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L361+40
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L309
.L305:
	ldr	r3, .L361+16
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L307
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L307
	ldr	r2, .L361+20
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L307
	mov	r1, #190
	mov	ip, #2
	mov	r0, r1
	str	r1, [r4]
	ldr	r1, .L361+44
	str	ip, [r3]
	str	r2, [r1, #16]
	b	.L306
.L362:
	.align	2
.L361:
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
	ldr	r2, .L376
	ldrh	r3, [r2]
	ldr	r0, .L376+4
	push	{r4, lr}
	ldr	r1, .L376+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L376+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L365:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L364:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L365
	ldr	r4, .L376+16
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L366
	ldr	r3, .L376+20
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L375
.L368:
	bl	updateLives
	ldr	r0, .L376+24
	bl	updateCoins
	ldr	r0, .L376+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L375:
	mov	r2, #1
	ldr	r3, .L376+32
	str	r2, [r3, #56]
	add	r0, r3, #36
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L366:
	cmp	r3, #1
	bne	.L368
	ldr	r2, .L376+36
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L368
	ldr	r2, .L376+32
	str	r3, [r2, #56]
	add	r0, r2, #36
	bl	updateTreasure.part.0
	b	.L368
.L377:
	.align	2
.L376:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
	.word	characterChoice
	.word	fry
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
	ldr	r2, .L391
	ldrh	r3, [r2]
	ldr	r0, .L391+4
	push	{r4, lr}
	ldr	r1, .L391+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L391+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L380:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L379:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L380
	ldr	r4, .L391+16
	bl	updateLives
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L381
	ldr	r3, .L391+20
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L390
.L383:
	ldr	r0, .L391+24
	bl	updateCoins
	ldr	r0, .L391+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L390:
	mov	r2, #1
	ldr	r3, .L391+32
	str	r2, [r3, #92]
	add	r0, r3, #72
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L381:
	cmp	r3, #1
	bne	.L383
	ldr	r2, .L391+36
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L383
	ldr	r2, .L391+32
	str	r3, [r2, #92]
	add	r0, r2, #72
	bl	updateTreasure.part.0
	b	.L383
.L392:
	.align	2
.L391:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
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
	ldr	r2, .L406
	ldrh	r3, [r2]
	ldr	r0, .L406+4
	push	{r4, lr}
	ldr	r1, .L406+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L406+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L395:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L394:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L395
	ldr	r4, .L406+16
	bl	updateLives
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L396
	ldr	r3, .L406+20
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L405
.L398:
	ldr	r0, .L406+24
	bl	updateCoins
	ldr	r0, .L406+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L405:
	mov	r2, #1
	ldr	r3, .L406+32
	str	r2, [r3, #128]
	add	r0, r3, #108
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L396:
	cmp	r3, #1
	bne	.L398
	ldr	r2, .L406+36
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L398
	ldr	r2, .L406+32
	str	r3, [r2, #128]
	add	r0, r2, #108
	bl	updateTreasure.part.0
	b	.L398
.L407:
	.align	2
.L406:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
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
	ldr	r2, .L421
	ldrh	r3, [r2]
	ldr	r0, .L421+4
	push	{r4, lr}
	ldr	r1, .L421+8
	add	r3, r3, #1
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	bl	updateAlien
	bl	updateLeela
	ldr	r0, .L421+12
	add	r1, r0, #1392
	add	r1, r1, #8
.L410:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L409:
	add	r0, r0, #28
	cmp	r0, r1
	bne	.L410
	ldr	r4, .L421+16
	bl	updateLives
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L411
	ldr	r3, .L421+20
	ldr	r3, [r3, #56]
	cmp	r3, #20
	bgt	.L420
.L413:
	ldr	r0, .L421+24
	bl	updateCoins
	ldr	r0, .L421+28
	bl	updateCoins
	pop	{r4, lr}
	b	drawGame
.L420:
	mov	r2, #1
	ldr	r3, .L421+32
	str	r2, [r3, #164]
	add	r0, r3, #144
	bl	updateTreasure.part.0
	ldr	r3, [r4]
.L411:
	cmp	r3, #1
	bne	.L413
	ldr	r2, .L421+36
	ldr	r2, [r2, #56]
	cmp	r2, #5
	ble	.L413
	ldr	r2, .L421+32
	str	r3, [r2, #164]
	add	r0, r2, #144
	bl	updateTreasure.part.0
	b	.L413
.L422:
	.align	2
.L421:
	.word	hOff
	.word	vOff
	.word	hideSprites
	.word	bullets
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
