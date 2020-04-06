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
	.type	updateFry.part.0, %function
updateFry.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L5
	ldr	r1, [r2, #40]
	ldr	r3, [r2, #36]
	sub	r1, r1, #1
	cmp	r3, r1
	movge	r3, #0
	addlt	r3, r3, #1
	str	r3, [r2, #36]
	bx	lr
.L6:
	.align	2
.L5:
	.word	fry
	.size	updateFry.part.0, .-updateFry.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets.part.0, %function
updateBullets.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #16]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L8
	ldr	r1, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r1
	sub	r1, r3, #1
	cmp	r1, #237
	bls	.L10
.L8:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L10:
	ldr	r1, [r0, #8]
	add	r2, r1, r2
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
	.size	updateBullets.part.0, .-updateBullets.part.0
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
	@ link register save eliminated.
	mov	r2, #1
	mov	ip, #32
	ldr	r1, .L12
	ldr	r3, .L12+4
	ldrh	r0, [r1]
	ldrh	r1, [r3]
	ldr	r3, .L12+8
	add	r0, r0, #104
	add	r1, r1, #64
	stm	r3, {r0, r1}
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	bx	lr
.L13:
	.align	2
.L12:
	.word	hOff
	.word	vOff
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
	mov	r4, #20
	mov	lr, #90
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L16
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
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
	mov	r4, #20
	mov	lr, #90
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L20
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	mov	r1, #64
	mov	ip, #4
	mov	r0, #0
	ldr	r3, .L24
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #28]
	str	ip, [r3, #40]
	str	r0, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, r5, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	alien
	.size	initAlien, .-initAlien
	.align	2
	.global	initBlocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlocks, %function
initBlocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #60
	str	lr, [sp, #-4]!
	mov	r0, #1
	mov	lr, #80
	mov	r2, #32
	ldr	r3, .L30
	add	r1, r3, ip
.L27:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L27
	ldr	lr, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	blocks
	.size	initBlocks, .-initBlocks
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
	push	{r4, lr}
	mov	r3, #16
	mov	r0, #5
	mov	ip, #1
	mov	r4, #26
	mov	lr, #47
	ldr	r2, .L34
	ldr	r1, .L34+4
	str	r4, [r2]
	str	r0, [r2, #4]
	str	ip, [r2, #16]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	ldr	r2, .L34+8
	str	r0, [r1]
	str	lr, [r2]
	str	r0, [r1, #4]
	str	ip, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r0, [r2, #4]
	str	ip, [r2, #16]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	life2
	.word	life1
	.word	life3
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
	push	{r4, lr}
	mov	r2, #8
	mov	r4, #1
	mov	lr, #0
	ldr	r1, .L40
	ldr	r3, .L40+4
	ldr	ip, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, ip
	add	r1, r1, #10
	add	ip, r3, #280
.L37:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r4, [r3, #12]
	str	lr, [r3, #24]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L37
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	leela
	.word	bullets
	.size	initBullets, .-initBullets
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
	push	{r4, lr}
	mov	r2, #8
	mov	ip, #1
	mov	r4, #0
	ldr	r1, .L46
	ldr	r3, .L46+4
	ldr	lr, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, lr
	add	r1, r1, #10
	add	lr, r3, #280
.L43:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	r4, [r3, #24]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, lr
	bne	.L43
	mov	r2, #32
	mov	r0, #200
	mov	r1, #20
	ldr	r3, .L46+8
	pop	{r4, lr}
	str	r0, [r3]
	str	ip, [r3, #16]
	str	r1, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L47:
	.align	2
.L46:
	.word	leela
	.word	bullets
	.word	p1
	.size	initp1, .-initp1
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
	mov	r0, #64
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	ip, #4
	mov	r5, #1
	mov	r4, #32
	mov	r6, #0
	mov	r8, #20
	mov	r7, #90
	ldr	r3, .L50
	ldrh	r1, [r3]
	ldr	r3, .L50+4
	ldrh	r3, [r3]
	ldr	r2, .L50+8
	add	r3, r3, r0
	add	r1, r1, #104
	stm	r2, {r1, r3}
	ldr	r3, .L50+12
	str	r5, [r2, #20]
	str	r5, [r2, #24]
	str	r5, [r2, #16]
	str	r4, [r2, #12]
	str	r4, [r2, #8]
	str	r5, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #40]
	str	r8, [r3]
	str	r7, [r3, #4]
	str	r6, [r3, #16]
	str	r6, [r3, #28]
	str	r6, [r3, #36]
	str	r6, [r3, #32]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	bl	initp1
	mov	ip, #200
	mov	r10, #180
	mov	r2, #67108864
	mov	r9, #4352
	mov	r0, #10
	mov	lr, #120
	ldr	r3, .L50+16
	str	r6, [r3]
	ldr	r3, .L50+20
	ldr	r1, .L50+24
	str	ip, [r3]
	ldr	ip, .L50+28
	str	r8, [r1]
	str	r4, [r1, #12]
	str	r4, [r1, #8]
	str	r5, [r1, #16]
	str	r7, [r3, #4]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r5, [r3, #16]
	str	r10, [ip]
	mov	r3, #256
	strh	r9, [r2]	@ movhi
	str	r0, [r1, #4]
	str	r5, [ip, #16]
	mov	r0, #3
	ldr	r5, .L50+32
	ldr	r2, .L50+36
	ldr	r1, .L50+40
	str	r4, [ip, #12]
	str	r4, [ip, #8]
	str	lr, [ip, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L50+44
	ldr	r1, .L50+48
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	hOff
	.word	vOff
	.word	spaceship
	.word	fry
	.word	isLost
	.word	p2
	.word	p3
	.word	p4
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.size	initGame, .-initGame
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
	mov	r1, #1
	ldr	r3, .L53
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L54:
	.align	2
.L53:
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
	mov	r0, #10
	mov	r1, #1
	ldr	r3, .L56
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L57:
	.align	2
.L56:
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
	mov	r1, #1
	ldr	r3, .L59
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L60:
	.align	2
.L59:
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
	mov	r1, #1
	push	{r4, r5, r6, lr}
	mov	lr, #32
	ldr	r0, .L67
	ldr	r2, .L67+4
	ldr	r3, .L67+8
	ldrh	ip, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3]
	ldr	r3, .L67+12
	add	ip, ip, #104
	add	r0, r0, #64
	cmp	r2, r1
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	lr, [r3, #12]
	str	lr, [r3, #8]
	beq	.L66
	cmp	r2, #0
	bne	.L64
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L67+16
	str	r4, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	lr, [r3, #4]
	str	ip, [r3, #40]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
.L64:
	bl	initp1
	mov	r6, #200
	mov	r1, #32
	mov	r2, #1
	mov	r5, #90
	mov	r4, #20
	mov	ip, #10
	mov	r0, #180
	mov	lr, #120
	ldr	r3, .L67+20
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	ldr	r3, .L67+24
	stm	r3, {r4, ip}
	ldr	ip, .L67+28
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	str	r2, [ip, #16]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r0, [ip]
	ldr	r4, .L67+32
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L67+36
	ldr	r1, .L67+40
	str	lr, [ip, #4]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L67+44
	ldr	r1, .L67+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	mov	r1, #0
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L67+52
	str	r4, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	lr, [r3, #4]
	str	ip, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	b	.L64
.L68:
	.align	2
.L67:
	.word	hOff
	.word	vOff
	.word	characterChoice
	.word	spaceship
	.word	fry
	.word	p2
	.word	p3
	.word	p4
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.word	leela
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
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r3, #16
	mov	lr, #5
	mov	r7, #26
	mov	r6, #47
	mov	r4, #60
	mov	r2, ip
	mov	r5, #80
	mov	r1, #32
	ldr	r0, .L76+4
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0, #16]
	str	lr, [r0]
	str	lr, [r0, #4]
	ldr	r0, .L76+8
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r7, [r0]
	ldr	r0, .L76+12
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r3, .L76+16
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r6, [r0]
	add	r0, r3, r4
.L70:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r0
	bne	.L70
	mov	r1, #0
	mov	ip, #64
	mov	r6, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r3, .L76+20
	ldr	r0, [r3]
	ldr	r3, .L76+24
	str	r1, [r3, #16]
	ldr	r3, .L76+28
	str	r1, [r3, #16]
	ldr	r3, .L76+32
	str	r1, [r3, #16]
	ldr	r3, .L76+36
	str	r1, [r3, #16]
	ldr	r3, .L76+40
	str	r1, [r3, #16]
	ldr	r3, .L76+44
	cmp	r0, #1
	str	r1, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #28]
	str	lr, [r3, #40]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	beq	.L75
	cmp	r0, #0
	ldreq	r3, .L76+48
	streq	r2, [r3, #16]
.L72:
	mov	r2, #0
	ldr	r3, .L76+52
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L75:
	ldr	r3, .L76+56
	str	r0, [r3, #16]
	b	.L72
.L77:
	.align	2
.L76:
	.word	hideSprites
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	fry
	.word	life1Counter
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
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #1
	mov	r4, #64
	mov	r10, #170
	mov	r9, #90
	mov	r8, #2
	mov	r7, #4
	mov	r1, #16
	mov	ip, #5
	mov	r6, #26
	mov	r5, #47
	ldr	r3, .L83+4
	ldr	lr, [r3]
	ldr	r3, .L83+8
	str	r0, [r3, #16]
	ldr	r3, .L83+12
	str	r0, [r3, #16]
	ldr	r3, .L83+16
	str	r0, [r3, #16]
	ldr	r3, .L83+20
	str	r0, [r3, #16]
	ldr	r3, .L83+24
	str	r0, [r3, #16]
	ldr	r3, .L83+28
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r2, [r3, #16]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r0, [r3, #32]
	str	r8, [r3, #28]
	str	r7, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	r3, .L83+32
	ldr	r0, .L83+36
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3]
	ldr	r3, .L83+40
	cmp	lr, r2
	str	r2, [r0, #16]
	str	ip, [r0]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r5, [r3]
	beq	.L82
	cmp	lr, #0
	ldreq	r3, .L83+44
	streq	r2, [r3, #16]
.L80:
	mov	r2, #0
	ldr	r3, .L83+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L82:
	ldr	r3, .L83+52
	str	lr, [r3, #16]
	b	.L80
.L84:
	.align	2
.L83:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	life2
	.word	life1
	.word	life3
	.word	fry
	.word	life1Counter
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #1
	mov	r4, #64
	mov	r10, #170
	mov	r9, #90
	mov	r8, #2
	mov	r7, #4
	mov	r1, #16
	mov	ip, #5
	mov	r6, #26
	mov	r5, #47
	ldr	r3, .L90+4
	ldr	lr, [r3]
	ldr	r3, .L90+8
	str	r0, [r3, #16]
	ldr	r3, .L90+12
	str	r0, [r3, #16]
	ldr	r3, .L90+16
	str	r0, [r3, #16]
	ldr	r3, .L90+20
	str	r0, [r3, #16]
	ldr	r3, .L90+24
	str	r0, [r3, #16]
	ldr	r3, .L90+28
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r2, [r3, #16]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r0, [r3, #32]
	str	r8, [r3, #28]
	str	r7, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	r3, .L90+32
	ldr	r0, .L90+36
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3]
	ldr	r3, .L90+40
	cmp	lr, r2
	str	r2, [r0, #16]
	str	ip, [r0]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r5, [r3]
	beq	.L89
	cmp	lr, #0
	ldreq	r3, .L90+44
	streq	r2, [r3, #16]
.L87:
	mov	r2, #0
	ldr	r3, .L90+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L89:
	ldr	r3, .L90+52
	str	lr, [r3, #16]
	b	.L87
.L91:
	.align	2
.L90:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	life2
	.word	life1
	.word	life3
	.word	fry
	.word	life3Counter
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
	ldr	r3, .L97
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #1
	mov	r1, #16
	mov	ip, #5
	mov	r6, #26
	mov	r4, #64
	mov	r10, #170
	mov	r9, #90
	mov	r8, #2
	mov	r7, #4
	mov	r5, #47
	ldr	r3, .L97+4
	ldr	lr, [r3]
	ldr	r3, .L97+8
	str	r0, [r3, #16]
	ldr	r3, .L97+12
	str	r0, [r3, #16]
	ldr	r3, .L97+16
	str	r0, [r3, #16]
	ldr	r3, .L97+20
	str	r0, [r3, #16]
	ldr	r3, .L97+24
	str	r0, [r3, #16]
	ldr	r3, .L97+28
	str	r0, [r3, #32]
	ldr	r0, .L97+32
	str	r2, [r0, #16]
	str	ip, [r0]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	ldr	r0, .L97+36
	str	ip, [r0, #4]
	str	r2, [r0, #16]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r6, [r0]
	ldr	r0, .L97+40
	cmp	lr, r2
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #28]
	str	r7, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	ip, [r0, #4]
	str	r2, [r0, #16]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r5, [r0]
	beq	.L96
	cmp	lr, #0
	ldreq	r3, .L97+44
	streq	r2, [r3, #16]
.L94:
	mov	r2, #0
	ldr	r3, .L97+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L96:
	ldr	r3, .L97+52
	str	lr, [r3, #16]
	b	.L94
.L98:
	.align	2
.L97:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	fry
	.word	life4Counter
	.word	leela
	.size	initPlanet4, .-initPlanet4
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
	@ link register save eliminated.
	ldr	r0, .L101
	ldr	r2, [r0, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L101+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bxcc	lr
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bxne	lr
	b	updateFry.part.0
.L102:
	.align	2
.L101:
	.word	fry
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
	ldr	r1, .L115
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L115+4
	rsb	r3, r3, r3, lsl #15
	ldr	ip, [r1]
	add	r3, r2, r3, lsl #3
	ldr	r2, [r1, #20]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	add	r3, ip, r2
	str	r3, [r1]
	bcc	.L104
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L104:
	ldr	r2, .L115+8
	ldrh	r2, [r2]
	tst	r2, #1
	ldr	r2, [r1, #44]
	beq	.L114
	ldr	r0, .L115+12
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L114
	cmp	r2, #6
	ble	.L114
	push	{r4, lr}
	mov	lr, #1
	ldr	r0, .L115+16
	ldr	ip, [r1, #12]
	add	r3, r3, ip
	ldr	ip, [r0, #20]
	ldr	r4, [r1, #4]
	add	ip, ip, ip, lsr #31
	sub	r3, r3, ip, asr lr
	stm	r0, {r3, r4}
	str	lr, [r0, #24]
	str	lr, [r1, #44]
	pop	{r4, lr}
	bx	lr
.L114:
	add	r2, r2, #1
	str	r2, [r1, #44]
	bx	lr
.L116:
	.align	2
.L115:
	.word	leela
	.word	238609294
	.word	oldButtons
	.word	buttons
	.word	bullets
	.size	updateLeela, .-updateLeela
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
	mov	ip, #1
	ldr	r2, .L119
	ldr	r0, .L119+4
	str	lr, [sp, #-4]!
	ldr	r3, [r0]
	ldr	lr, [r0, #12]
	ldr	r1, [r2, #20]
	add	r3, r3, lr
	ldr	r0, [r0, #4]
	add	r1, r1, r1, lsr #31
	sub	r3, r3, r1, asr ip
	str	r0, [r2, #4]
	str	r3, [r2]
	str	ip, [r2, #24]
	ldr	lr, [sp], #4
	bx	lr
.L120:
	.align	2
.L119:
	.word	bullets
	.word	leela
	.size	shootBullets, .-shootBullets
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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L172
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, lr}
	bne	.L124
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L172+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L124:
	ldr	r2, .L172+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	bne	.L125
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, .L172+4
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #4]
	lsl	r3, r3, #3
	strh	r1, [r0, #90]	@ movhi
	strh	ip, [r0, #88]	@ movhi
	strh	r3, [r0, #92]	@ movhi
.L125:
	ldr	r3, .L172+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	bne	.L126
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L172+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #50]	@ movhi
	strh	ip, [r0, #48]	@ movhi
	strh	r2, [r0, #52]	@ movhi
.L126:
	ldr	r1, .L172+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	beq	.L127
	mov	r0, #152
	ldr	r2, [r1]
	ldr	r3, .L172+4
	ldr	r1, [r1, #4]
	orr	r2, r2, #16384
	strh	r2, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
.L127:
	ldr	r3, .L172+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L128
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L172+4
	orr	r2, r2, #16384
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #68]	@ movhi
.L128:
	ldr	r3, .L172+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L129
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L172+4
	orr	r2, r2, #16384
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	strh	r1, [r3, #76]	@ movhi
.L129:
	mov	r4, #148
	ldr	r3, .L172+28
	ldr	r1, .L172+4
	ldr	lr, .L172+32
	add	r0, r3, #60
.L131:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #20
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	cmp	r3, r0
	bne	.L131
	mov	lr, #216
	ldr	r3, .L172+36
	ldr	r1, .L172+4
	add	r0, r3, #280
.L133:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #28
	orrne	r2, r2, #16384
	strhne	lr, [r1, #100]	@ movhi
	strhne	r2, [r1, #98]	@ movhi
	strhne	ip, [r1, #96]	@ movhi
	cmp	r3, r0
	bne	.L133
	ldr	r2, .L172+40
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L134
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #144
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L172+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L134:
	ldr	r2, .L172+44
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L135
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #16
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L172+4
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L135:
	ldr	r2, .L172+48
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #20
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L172+4
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L136:
	ldr	r2, .L172+52
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L137
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #24
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L172+4
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L137:
	ldr	r2, .L172+56
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L138
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #28
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L172+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L138:
	ldr	r3, .L172+60
	mov	lr, pc
	bx	r3
	ldr	r4, .L172+64
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L172+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L172+68
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L172+72
	ldrh	r3, [r3]
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L173:
	.align	2
.L172:
	.word	fry
	.word	shadowOAM
	.word	leela
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	-32768
	.word	bullets
	.word	spaceship
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
	ldr	r2, .L180
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L180+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L180+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L180+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L180+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L180+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L180+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L180+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L180+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L181:
	.align	2
.L180:
	.word	hOff
	.word	67109120
	.word	spaceship
	.size	updateSpace, .-updateSpace
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
	push	{r4, r5, r6, lr}
	ldr	r2, .L215
	ldrh	r3, [r2]
	ldr	r0, .L215+4
	ldr	r5, .L215+8
	add	r3, r3, #1
	ldr	r1, .L215+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L215+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L183
	ldr	r3, [r5, #16]
	cmp	r3, #1
	beq	.L214
.L183:
	ldr	r4, .L215+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L215+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L184
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L184:
	bl	updateLeela
	ldr	r0, .L215+24
	add	r6, r0, #280
.L187:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateBullets.part.0
.L186:
	add	r0, r0, #28
	cmp	r6, r0
	bne	.L187
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r6, .L215+28
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
	mov	r3, r0
	beq	.L188
.L190:
	ldr	r0, [r4]
.L189:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L191
.L193:
	ldr	r0, [r4]
.L192:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L194
.L196:
	ldr	r0, [r4]
.L195:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	bne	.L197
	ldr	r3, .L215+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L215+36
	streq	r0, [r3]
.L197:
	ldr	r5, .L215+40
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
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
	mov	r3, r0
	beq	.L198
.L200:
	ldr	r0, [r4]
.L199:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L201
.L203:
	ldr	r0, [r4]
.L202:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L204
.L206:
	ldr	r0, [r4]
.L205:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	bne	.L207
	ldr	r3, .L215+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L215+36
	streq	r0, [r3]
.L207:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L201:
	ldr	r3, .L215+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L203
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L215+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L202
.L198:
	ldr	r1, .L215+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L200
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L215+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L199
.L204:
	ldr	r3, .L215+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L206
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L215+52
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L205
.L188:
	ldr	r1, .L215+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L190
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L215+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L189
.L194:
	ldr	r3, .L215+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L196
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L215+52
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L195
.L191:
	ldr	r3, .L215+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L193
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L215+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L192
.L214:
	bl	updateFry.part.0
	b	.L183
.L216:
	.align	2
.L215:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	bullets
	.word	collision
	.word	life1Counter
	.word	isLost
	.word	leela
	.word	life2
	.word	life3
	.word	life1
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
	push	{r4, r5, r6, lr}
	ldr	r2, .L244
	ldrh	r3, [r2]
	ldr	r0, .L244+4
	ldr	r5, .L244+8
	add	r3, r3, #1
	ldr	r1, .L244+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L244+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L218
	ldr	r3, [r5, #16]
	cmp	r3, #1
	beq	.L243
.L218:
	ldr	r4, .L244+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L244+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L219
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L219:
	bl	updateLeela
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r6, .L244+24
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
	mov	r3, r0
	beq	.L221
.L223:
	ldr	r0, [r4]
.L222:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L224
.L226:
	ldr	r0, [r4]
.L225:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L227
.L229:
	ldr	r0, [r4]
.L228:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	bne	.L230
	ldr	r3, .L244+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L244+32
	streq	r0, [r3]
.L230:
	ldr	r0, [r4]
	ldr	r2, [r4, #12]
	ldr	r5, .L244+36
	adds	r3, r0, r2
	streq	r3, [r4, #16]
	ldmib	r5, {r1, r3, ip}
	str	r3, [sp, #12]
	ldr	r3, [r5]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	ldmib	r4, {r1, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L232
.L234:
	ldr	r0, [r4]
.L233:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L235
.L237:
	ldr	r0, [r4]
.L236:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L238
.L240:
	ldr	r0, [r4]
.L239:
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #12]
	str	r3, [sp, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L241
	ldr	r3, .L244+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L244+32
	streq	r0, [r3]
.L241:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L235:
	ldr	r3, .L244+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L237
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L244+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L236
.L232:
	ldr	r1, .L244+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L234
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L244+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L233
.L238:
	ldr	r3, .L244+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L240
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L244+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L239
.L221:
	ldr	r1, .L244+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L223
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L244+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L222
.L227:
	ldr	r3, .L244+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L229
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L244+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L228
.L224:
	ldr	r3, .L244+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L226
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L244+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L225
.L243:
	bl	updateFry.part.0
	b	.L218
.L245:
	.align	2
.L244:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	collision
	.word	life2Counter
	.word	isLost
	.word	leela
	.word	life2
	.word	life3
	.word	life1
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
	push	{r4, r5, r6, lr}
	ldr	r2, .L273
	ldrh	r3, [r2]
	ldr	r0, .L273+4
	ldr	r5, .L273+8
	add	r3, r3, #1
	ldr	r1, .L273+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L273+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L247
	ldr	r3, [r5, #16]
	cmp	r3, #1
	beq	.L272
.L247:
	ldr	r4, .L273+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L273+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L248
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L248:
	bl	updateLeela
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r6, .L273+24
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
	mov	r3, r0
	beq	.L250
.L252:
	ldr	r0, [r4]
.L251:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L253
.L255:
	ldr	r0, [r4]
.L254:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L256
.L258:
	ldr	r0, [r4]
.L257:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	bne	.L259
	ldr	r3, .L273+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L273+32
	streq	r0, [r3]
.L259:
	ldr	r5, .L273+36
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
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
	mov	r3, r0
	beq	.L260
.L262:
	ldr	r0, [r4]
.L261:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L263
.L265:
	ldr	r0, [r4]
.L264:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L266
.L268:
	ldr	r0, [r4]
.L267:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	bne	.L269
	ldr	r3, .L273+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L273+32
	streq	r0, [r3]
.L269:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L263:
	ldr	r3, .L273+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L265
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L273+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L264
.L260:
	ldr	r1, .L273+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L262
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L273+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L261
.L266:
	ldr	r3, .L273+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L268
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L273+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L267
.L250:
	ldr	r1, .L273+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L252
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L273+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L251
.L256:
	ldr	r3, .L273+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L258
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L273+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L257
.L253:
	ldr	r3, .L273+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L255
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L273+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L254
.L272:
	bl	updateFry.part.0
	b	.L247
.L274:
	.align	2
.L273:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	collision
	.word	life3Counter
	.word	isLost
	.word	leela
	.word	life2
	.word	life3
	.word	life1
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
	push	{r4, r5, r6, lr}
	ldr	r2, .L302
	ldrh	r3, [r2]
	ldr	r0, .L302+4
	ldr	r5, .L302+8
	add	r3, r3, #1
	ldr	r1, .L302+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L302+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L276
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L276:
	ldr	r4, .L302+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L302+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L278
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L278:
	bl	updateLeela
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r6, .L302+24
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
	mov	r3, r0
	beq	.L280
.L282:
	ldr	r0, [r4]
.L281:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L283
.L285:
	ldr	r0, [r4]
.L284:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L286
.L288:
	ldr	r0, [r4]
.L287:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	bne	.L289
	ldr	r3, .L302+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L302+32
	streq	r0, [r3]
.L289:
	ldr	r5, .L302+36
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
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
	mov	r3, r0
	beq	.L290
.L292:
	ldr	r0, [r4]
.L291:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L293
.L295:
	ldr	r0, [r4]
.L294:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	beq	.L296
.L298:
	ldr	r0, [r4]
.L297:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
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
	bne	.L299
	ldr	r3, .L302+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L302+32
	streq	r0, [r3]
.L299:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L296:
	ldr	r3, .L302+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L298
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L302+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L297
.L293:
	ldr	r3, .L302+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L295
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L302+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L294
.L290:
	ldr	r1, .L302+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L292
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L302+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L291
.L286:
	ldr	r3, .L302+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L288
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L302+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L287
.L283:
	ldr	r3, .L302+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L285
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L302+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L284
.L280:
	ldr	r1, .L302+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L282
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L302+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L281
.L303:
	.align	2
.L302:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	collision
	.word	life4Counter
	.word	isLost
	.word	leela
	.word	life1
	.word	life2
	.word	life3
	.size	updatePlanet4, .-updatePlanet4
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
	ldr	r3, .L306
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L306+4
	ldr	ip, .L306+8
	ldr	r0, .L306+12
	ldr	r1, .L306+16
	str	r3, [r2, #16]
	str	r3, [r2, #36]
	str	r3, [r2, #56]
	pop	{r4, lr}
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	b	drawGame
.L307:
	.align	2
.L306:
	.word	hideSprites
	.word	blocks
	.word	fry
	.word	leela
	.word	alien
	.size	initLose, .-initLose
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	characterChoice,4,4
	.comm	isLost,4,4
	.comm	prevState,4,4
	.comm	life4Counter,4,4
	.comm	life3Counter,4,4
	.comm	life2Counter,4,4
	.comm	life1Counter,4,4
	.comm	bullets,280,4
	.comm	blocks,60,4
	.comm	life3,20,4
	.comm	life2,20,4
	.comm	life1,20,4
	.comm	p4,28,4
	.comm	p3,28,4
	.comm	p2,28,4
	.comm	p1,28,4
	.comm	alien,44,4
	.comm	spaceship,28,4
	.comm	leela,48,4
	.comm	fry,48,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
