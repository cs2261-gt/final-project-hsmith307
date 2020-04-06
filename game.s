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
	.global	initSpaceship
	.arch armv4t
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
	ldr	r1, .L3
	ldr	r3, .L3+4
	ldrh	r0, [r1]
	ldrh	r1, [r3]
	ldr	r3, .L3+8
	add	r0, r0, #104
	add	r1, r1, #64
	stm	r3, {r0, r1}
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	bx	lr
.L4:
	.align	2
.L3:
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
	ldr	r3, .L7
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
.L8:
	.align	2
.L7:
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
	ldr	r3, .L11
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
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
	ldr	r3, .L15
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
.L16:
	.align	2
.L15:
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
	ldr	r3, .L21
	add	r1, r3, ip
.L18:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L18
	ldr	lr, [sp], #4
	bx	lr
.L22:
	.align	2
.L21:
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
	ldr	r2, .L25
	ldr	r1, .L25+4
	str	r4, [r2]
	str	r0, [r2, #4]
	str	ip, [r2, #16]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	ldr	r2, .L25+8
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
.L26:
	.align	2
.L25:
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
	ldr	r1, .L31
	ldr	r3, .L31+4
	ldr	ip, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, ip
	add	r1, r1, #10
	add	ip, r3, #280
.L28:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r4, [r3, #12]
	str	lr, [r3, #24]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L28
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	fry
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
	ldr	r1, .L37
	ldr	r3, .L37+4
	ldr	lr, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, lr
	add	r1, r1, #10
	add	lr, r3, #280
.L34:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	r4, [r3, #24]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, lr
	bne	.L34
	mov	r2, #32
	mov	r0, #200
	mov	r1, #20
	ldr	r3, .L37+8
	pop	{r4, lr}
	str	r0, [r3]
	str	ip, [r3, #16]
	str	r1, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L38:
	.align	2
.L37:
	.word	fry
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
	ldr	r3, .L41
	ldrh	r1, [r3]
	ldr	r3, .L41+4
	ldrh	r3, [r3]
	ldr	r2, .L41+8
	add	r3, r3, r0
	add	r1, r1, #104
	stm	r2, {r1, r3}
	ldr	r3, .L41+12
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
	ldr	r3, .L41+16
	str	r6, [r3]
	ldr	r3, .L41+20
	ldr	r1, .L41+24
	str	ip, [r3]
	ldr	ip, .L41+28
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
	ldr	r5, .L41+32
	ldr	r2, .L41+36
	ldr	r1, .L41+40
	str	r4, [ip, #12]
	str	r4, [ip, #8]
	str	lr, [ip, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L41+44
	ldr	r1, .L41+48
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L42:
	.align	2
.L41:
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
	ldr	r3, .L44
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L47
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L48:
	.align	2
.L47:
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
	ldr	r3, .L50
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L51:
	.align	2
.L50:
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
	ldr	r0, .L58
	ldr	r2, .L58+4
	ldr	r3, .L58+8
	ldrh	ip, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3]
	ldr	r3, .L58+12
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
	beq	.L57
	cmp	r2, #0
	bne	.L55
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L58+16
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
.L55:
	bl	initp1
	mov	r6, #200
	mov	r1, #32
	mov	r2, #1
	mov	r5, #90
	mov	r4, #20
	mov	ip, #10
	mov	r0, #180
	mov	lr, #120
	ldr	r3, .L58+20
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	ldr	r3, .L58+24
	stm	r3, {r4, ip}
	ldr	ip, .L58+28
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	str	r2, [ip, #16]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r0, [ip]
	ldr	r4, .L58+32
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L58+36
	ldr	r1, .L58+40
	str	lr, [ip, #4]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L58+44
	ldr	r1, .L58+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	mov	r1, #0
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L58+52
	str	r4, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	lr, [r3, #4]
	str	ip, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #32]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	b	.L55
.L59:
	.align	2
.L58:
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
	ldr	r3, .L67
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
	ldr	r0, .L67+4
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0, #16]
	str	lr, [r0]
	str	lr, [r0, #4]
	ldr	r0, .L67+8
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r7, [r0]
	ldr	r0, .L67+12
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r3, .L67+16
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r6, [r0]
	add	r0, r3, r4
.L61:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r0
	bne	.L61
	mov	r1, #0
	mov	ip, #64
	mov	r6, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r3, .L67+20
	ldr	r0, [r3]
	ldr	r3, .L67+24
	str	r1, [r3, #16]
	ldr	r3, .L67+28
	str	r1, [r3, #16]
	ldr	r3, .L67+32
	str	r1, [r3, #16]
	ldr	r3, .L67+36
	str	r1, [r3, #16]
	ldr	r3, .L67+40
	str	r1, [r3, #16]
	ldr	r3, .L67+44
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
	beq	.L66
	cmp	r0, #0
	ldreq	r3, .L67+48
	streq	r2, [r3, #16]
.L63:
	mov	r2, #0
	ldr	r3, .L67+52
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L66:
	ldr	r3, .L67+56
	str	r0, [r3, #16]
	b	.L63
.L68:
	.align	2
.L67:
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
	ldr	r3, .L74
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
	ldr	r3, .L74+4
	ldr	lr, [r3]
	ldr	r3, .L74+8
	str	r0, [r3, #16]
	ldr	r3, .L74+12
	str	r0, [r3, #16]
	ldr	r3, .L74+16
	str	r0, [r3, #16]
	ldr	r3, .L74+20
	str	r0, [r3, #16]
	ldr	r3, .L74+24
	str	r0, [r3, #16]
	ldr	r3, .L74+28
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
	ldr	r3, .L74+32
	ldr	r0, .L74+36
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3]
	ldr	r3, .L74+40
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
	beq	.L73
	cmp	lr, #0
	ldreq	r3, .L74+44
	streq	r2, [r3, #16]
.L71:
	mov	r2, #0
	ldr	r3, .L74+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L73:
	ldr	r3, .L74+52
	str	lr, [r3, #16]
	b	.L71
.L75:
	.align	2
.L74:
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
	ldr	r3, .L81
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
	ldr	r3, .L81+4
	ldr	lr, [r3]
	ldr	r3, .L81+8
	str	r0, [r3, #16]
	ldr	r3, .L81+12
	str	r0, [r3, #16]
	ldr	r3, .L81+16
	str	r0, [r3, #16]
	ldr	r3, .L81+20
	str	r0, [r3, #16]
	ldr	r3, .L81+24
	str	r0, [r3, #16]
	ldr	r3, .L81+28
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
	ldr	r3, .L81+32
	ldr	r0, .L81+36
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3]
	ldr	r3, .L81+40
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
	beq	.L80
	cmp	lr, #0
	ldreq	r3, .L81+44
	streq	r2, [r3, #16]
.L78:
	mov	r2, #0
	ldr	r3, .L81+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L80:
	ldr	r3, .L81+52
	str	lr, [r3, #16]
	b	.L78
.L82:
	.align	2
.L81:
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
	ldr	r3, .L88
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
	ldr	r3, .L88+4
	ldr	lr, [r3]
	ldr	r3, .L88+8
	str	r0, [r3, #16]
	ldr	r3, .L88+12
	str	r0, [r3, #16]
	ldr	r3, .L88+16
	str	r0, [r3, #16]
	ldr	r3, .L88+20
	str	r0, [r3, #16]
	ldr	r3, .L88+24
	str	r0, [r3, #16]
	ldr	r3, .L88+28
	str	r0, [r3, #32]
	ldr	r0, .L88+32
	str	r2, [r0, #16]
	str	ip, [r0]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	ldr	r0, .L88+36
	str	ip, [r0, #4]
	str	r2, [r0, #16]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r6, [r0]
	ldr	r0, .L88+40
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
	beq	.L87
	cmp	lr, #0
	ldreq	r3, .L88+44
	streq	r2, [r3, #16]
.L85:
	mov	r2, #0
	ldr	r3, .L88+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L87:
	ldr	r3, .L88+52
	str	lr, [r3, #16]
	b	.L85
.L89:
	.align	2
.L88:
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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L139
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, lr}
	bne	.L91
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L139+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L91:
	ldr	r2, .L139+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	bne	.L92
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, .L139+4
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #4]
	lsl	r3, r3, #3
	strh	r1, [r0, #90]	@ movhi
	strh	ip, [r0, #88]	@ movhi
	strh	r3, [r0, #92]	@ movhi
.L92:
	ldr	r3, .L139+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	bne	.L93
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L139+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #50]	@ movhi
	strh	ip, [r0, #48]	@ movhi
	strh	r2, [r0, #52]	@ movhi
.L93:
	ldr	r1, .L139+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	beq	.L94
	mov	r0, #152
	ldr	r2, [r1]
	ldr	r3, .L139+4
	ldr	r1, [r1, #4]
	orr	r2, r2, #16384
	strh	r2, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
.L94:
	ldr	r3, .L139+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L95
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L139+4
	orr	r2, r2, #16384
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #68]	@ movhi
.L95:
	ldr	r3, .L139+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L96
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L139+4
	orr	r2, r2, #16384
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	strh	r1, [r3, #76]	@ movhi
.L96:
	mov	r4, #148
	ldr	r3, .L139+28
	ldr	r1, .L139+4
	ldr	lr, .L139+32
	add	r0, r3, #60
.L98:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #20
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	cmp	r3, r0
	bne	.L98
	mov	lr, #216
	ldr	r3, .L139+36
	ldr	r1, .L139+4
	add	r0, r3, #280
.L100:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #28
	orrne	r2, r2, #16384
	strhne	lr, [r1, #100]	@ movhi
	strhne	r2, [r1, #98]	@ movhi
	strhne	ip, [r1, #96]	@ movhi
	cmp	r3, r0
	bne	.L100
	ldr	r2, .L139+40
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L101
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #144
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L139+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L101:
	ldr	r2, .L139+44
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #16
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L139+4
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L102:
	ldr	r2, .L139+48
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L103
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #20
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L139+4
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L103:
	ldr	r2, .L139+52
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L104
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #24
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L139+4
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L104:
	ldr	r2, .L139+56
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L105
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #28
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L139+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L105:
	ldr	r3, .L139+60
	mov	lr, pc
	bx	r3
	ldr	r4, .L139+64
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L139+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L139+68
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L139+72
	ldrh	r3, [r3]
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L140:
	.align	2
.L139:
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
	ldr	r2, .L147
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L147+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L147+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L147+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L147+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L147+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L147+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L147+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L147+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L148:
	.align	2
.L147:
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
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L179
	ldrh	r3, [r2]
	ldr	r0, .L179+4
	ldr	r6, .L179+8
	add	r3, r3, #1
	ldr	r1, .L179+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L179+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L150
	ldr	r3, [r6, #16]
	cmp	r3, #1
	beq	.L178
.L150:
	ldr	r4, .L179+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L179+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L152
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L152:
	ldr	r5, .L179+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L179+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L154
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L154:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	ldr	r7, .L179+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L156
.L158:
	ldr	r0, [r4]
.L157:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L159
.L161:
	ldr	r0, [r4]
.L160:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L162
.L164:
	ldr	r0, [r4]
.L163:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L165
	ldr	r3, .L179+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L179+36
	streq	r0, [r3]
.L165:
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
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L166
.L168:
	ldr	r0, [r4]
.L167:
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
	bx	r7
	cmp	r0, #1
	beq	.L169
.L171:
	ldr	r0, [r4]
.L170:
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
	bx	r7
	cmp	r0, #1
	beq	.L172
.L174:
	ldr	r0, [r4]
.L173:
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
	bx	r7
	cmp	r0, #1
	bne	.L175
	ldr	r3, .L179+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L179+36
	streq	r0, [r3]
.L175:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L169:
	ldr	r3, .L179+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L171
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L179+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L170
.L166:
	ldr	r1, .L179+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L168
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L179+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L167
.L172:
	ldr	r3, .L179+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L174
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L179+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L173
.L156:
	ldr	r1, .L179+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L158
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L179+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L157
.L162:
	ldr	r3, .L179+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L164
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L179+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L163
.L159:
	ldr	r3, .L179+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L161
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L179+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L160
.L178:
	add	r2, r6, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r6, #36]
	strge	r3, [r6, #36]
	b	.L150
.L180:
	.align	2
.L179:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	leela
	.word	collision
	.word	life1Counter
	.word	isLost
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
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L210
	ldrh	r3, [r2]
	ldr	r0, .L210+4
	ldr	r6, .L210+8
	add	r3, r3, #1
	ldr	r1, .L210+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L210+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L182
	add	r2, r6, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r6, #36]
	strge	r3, [r6, #36]
.L182:
	ldr	r4, .L210+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L210+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
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
	ldr	r5, .L210+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L210+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L186
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L186:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	ldr	r7, .L210+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L188
.L190:
	ldr	r0, [r4]
.L189:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L191
.L193:
	ldr	r0, [r4]
.L192:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L194
.L196:
	ldr	r0, [r4]
.L195:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L197
	ldr	r3, .L210+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L210+36
	streq	r0, [r3]
.L197:
	ldr	r0, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r0, r2
	streq	r3, [r4, #16]
	ldmib	r5, {r1, r3, ip}
	str	r3, [sp, #12]
	ldr	r3, [r5]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	ldmib	r4, {r1, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L199
.L201:
	ldr	r0, [r4]
.L200:
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
	bx	r7
	cmp	r0, #1
	beq	.L202
.L204:
	ldr	r0, [r4]
.L203:
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
	bx	r7
	cmp	r0, #1
	beq	.L205
.L207:
	ldr	r0, [r4]
.L206:
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	str	r3, [sp, #12]
	ldr	r3, [r5]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L208
	ldr	r3, .L210+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L210+36
	streq	r0, [r3]
.L208:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L205:
	ldr	r3, .L210+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L207
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L210+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L206
.L202:
	ldr	r3, .L210+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L204
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L210+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L203
.L199:
	ldr	r1, .L210+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L201
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L210+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L200
.L194:
	ldr	r3, .L210+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L196
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L210+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L195
.L191:
	ldr	r3, .L210+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L193
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L210+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L192
.L188:
	ldr	r1, .L210+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L190
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L210+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L189
.L211:
	.align	2
.L210:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	leela
	.word	collision
	.word	life2Counter
	.word	isLost
	.word	life1
	.word	life2
	.word	life3
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
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L241
	ldrh	r3, [r2]
	ldr	r0, .L241+4
	ldr	r6, .L241+8
	add	r3, r3, #1
	ldr	r1, .L241+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L241+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L213
	add	r2, r6, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r6, #36]
	strge	r3, [r6, #36]
.L213:
	ldr	r4, .L241+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L241+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L215
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L215:
	ldr	r5, .L241+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L241+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L217
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L217:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	ldr	r7, .L241+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L219
.L221:
	ldr	r0, [r4]
.L220:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L222
.L224:
	ldr	r0, [r4]
.L223:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L225
.L227:
	ldr	r0, [r4]
.L226:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L228
	ldr	r3, .L241+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L241+36
	streq	r0, [r3]
.L228:
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
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L229
.L231:
	ldr	r0, [r4]
.L230:
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
	bx	r7
	cmp	r0, #1
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
	bx	r7
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
	bx	r7
	cmp	r0, #1
	bne	.L238
	ldr	r3, .L241+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L241+36
	streq	r0, [r3]
.L238:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L235:
	ldr	r3, .L241+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L237
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L241+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L236
.L232:
	ldr	r3, .L241+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L234
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L241+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L233
.L229:
	ldr	r1, .L241+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L231
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L241+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L230
.L225:
	ldr	r3, .L241+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L227
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L241+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L226
.L222:
	ldr	r3, .L241+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L224
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L241+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L223
.L219:
	ldr	r1, .L241+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L221
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L241+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L220
.L242:
	.align	2
.L241:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	leela
	.word	collision
	.word	life3Counter
	.word	isLost
	.word	life1
	.word	life2
	.word	life3
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
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L272
	ldrh	r3, [r2]
	ldr	r0, .L272+4
	ldr	r6, .L272+8
	add	r3, r3, #1
	ldr	r1, .L272+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L272+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L244
	add	r2, r6, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r6, #36]
	strge	r3, [r6, #36]
.L244:
	ldr	r4, .L272+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L272+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L246
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L246:
	ldr	r5, .L272+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L272+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L248
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L248:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	ldr	r7, .L272+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L250
.L252:
	ldr	r0, [r4]
.L251:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L253
.L255:
	ldr	r0, [r4]
.L254:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L256
.L258:
	ldr	r0, [r4]
.L257:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L259
	ldr	r3, .L272+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L272+36
	streq	r0, [r3]
.L259:
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
	bx	r7
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
	bx	r7
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
	bx	r7
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
	bx	r7
	cmp	r0, #1
	bne	.L269
	ldr	r3, .L272+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L272+36
	streq	r0, [r3]
.L269:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L266:
	ldr	r3, .L272+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L268
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L272+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L267
.L263:
	ldr	r3, .L272+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L265
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L272+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L264
.L260:
	ldr	r1, .L272+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L262
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L272+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L261
.L256:
	ldr	r3, .L272+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L258
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L272+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L257
.L253:
	ldr	r3, .L272+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L255
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L272+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L254
.L250:
	ldr	r1, .L272+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L252
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L272+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L251
.L273:
	.align	2
.L272:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	leela
	.word	collision
	.word	life4Counter
	.word	isLost
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
	ldr	r3, .L276
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L276+4
	ldr	ip, .L276+8
	ldr	r0, .L276+12
	ldr	r1, .L276+16
	str	r3, [r2, #16]
	str	r3, [r2, #36]
	str	r3, [r2, #56]
	pop	{r4, lr}
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	b	drawGame
.L277:
	.align	2
.L276:
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
	.comm	leela,44,4
	.comm	fry,44,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
