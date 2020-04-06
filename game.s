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
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #64
	mov	ip, #32
	mov	r0, #1
	mov	r6, #90
	mov	r5, #200
	mov	r1, #20
	mov	r2, #0
	mov	fp, #4
	mov	r10, #10
	mov	r9, #180
	mov	r7, #67108864
	mov	r8, #4352
	ldr	r3, .L4
	ldrh	lr, [r3]
	ldr	r3, .L4+4
	add	lr, lr, #104
	str	lr, [r3]
	ldr	lr, .L4+8
	ldrh	lr, [lr]
	add	lr, lr, r4
	str	lr, [r3, #4]
	ldr	lr, .L4+12
	str	r6, [lr, #4]
	str	r5, [lr]
	str	ip, [lr, #12]
	str	ip, [lr, #8]
	str	r0, [lr, #16]
	ldr	lr, .L4+16
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #16]
	str	ip, [r3, #12]
	str	r5, [lr]
	str	r1, [lr, #4]
	str	ip, [r3, #8]
	str	ip, [lr, #12]
	ldr	r3, .L4+20
	str	ip, [lr, #8]
	str	r0, [lr, #16]
	ldr	lr, .L4+24
	stm	r3, {r1, r6}
	stm	lr, {r1, r10}
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	fp, [r3, #40]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	ldr	r4, .L4+28
	ldr	r3, .L4+32
	str	ip, [lr, #12]
	str	r2, [r3]
	str	r9, [r4]
	strh	r8, [r7]	@ movhi
	str	ip, [lr, #8]
	str	ip, [r4, #12]
	str	ip, [r4, #8]
	mov	ip, #120
	str	r0, [lr, #16]
	str	r0, [r4, #16]
	ldr	r5, .L4+36
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+48
	ldr	r1, .L4+52
	mov	lr, pc
	bx	r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	spaceship
	.word	vOff
	.word	p2
	.word	p1
	.word	fry
	.word	p3
	.word	p4
	.word	isLost
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.size	initGame, .-initGame
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
	ldr	r1, .L7
	ldr	r3, .L7+4
	ldrh	r0, [r1]
	ldrh	r1, [r3]
	ldr	r3, .L7+8
	add	r0, r0, #104
	add	r1, r1, #64
	stm	r3, {r0, r1}
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	bx	lr
.L8:
	.align	2
.L7:
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
	ldr	r3, .L11
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
.L12:
	.align	2
.L11:
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
	ldr	r3, .L15
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
.L16:
	.align	2
.L15:
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
	ldr	r3, .L19
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
.L20:
	.align	2
.L19:
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
	ldr	r3, .L25
	add	r1, r3, ip
.L22:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L22
	ldr	lr, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r2, .L29
	ldr	r1, .L29+4
	str	r4, [r2]
	str	r0, [r2, #4]
	str	ip, [r2, #16]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	ldr	r2, .L29+8
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
.L30:
	.align	2
.L29:
	.word	life2
	.word	life1
	.word	life3
	.size	initLives, .-initLives
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
	mov	r1, #1
	ldr	r3, .L32
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L33:
	.align	2
.L32:
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
	mov	r1, #1
	ldr	r3, .L35
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L36:
	.align	2
.L35:
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
	ldr	r3, .L38
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r3, .L41
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L42:
	.align	2
.L41:
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, #32
	ldr	r0, .L49
	ldr	r2, .L49+4
	ldr	r3, .L49+8
	ldrh	ip, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3]
	ldr	r3, .L49+12
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
	beq	.L48
	cmp	r2, #0
	bne	.L46
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L49+16
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
.L46:
	mov	r3, #200
	mov	r7, #90
	mov	ip, #20
	mov	r1, #32
	mov	lr, #1
	mov	r6, #10
	mov	r4, #120
	mov	r5, #180
	ldr	r0, .L49+20
	ldr	r2, .L49+24
	str	r3, [r0]
	stm	r2, {r3, r7}
	ldr	r3, .L49+28
	str	ip, [r0, #4]
	str	ip, [r3]
	ldr	ip, .L49+32
	str	lr, [r0, #16]
	str	lr, [r2, #16]
	str	lr, [r3, #16]
	str	r6, [r3, #4]
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	str	r1, [r2, #12]
	str	r1, [r2, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r4, [ip, #4]
	mov	r3, #256
	ldr	r4, .L49+36
	mov	r0, #3
	ldr	r2, .L49+40
	ldr	r1, .L49+44
	str	lr, [ip, #16]
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L49+48
	ldr	r1, .L49+52
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L48:
	mov	r1, #0
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L49+56
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
	b	.L46
.L50:
	.align	2
.L49:
	.word	hOff
	.word	vOff
	.word	characterChoice
	.word	spaceship
	.word	fry
	.word	p1
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
	ldr	r3, .L58
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
	ldr	r0, .L58+4
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0, #16]
	str	lr, [r0]
	str	lr, [r0, #4]
	ldr	r0, .L58+8
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r7, [r0]
	ldr	r0, .L58+12
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r3, .L58+16
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r6, [r0]
	add	r0, r3, r4
.L52:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r0
	bne	.L52
	mov	r1, #0
	mov	ip, #64
	mov	r6, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r3, .L58+20
	ldr	r0, [r3]
	ldr	r3, .L58+24
	str	r1, [r3, #16]
	ldr	r3, .L58+28
	str	r1, [r3, #16]
	ldr	r3, .L58+32
	str	r1, [r3, #16]
	ldr	r3, .L58+36
	str	r1, [r3, #16]
	ldr	r3, .L58+40
	str	r1, [r3, #16]
	ldr	r3, .L58+44
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
	beq	.L57
	cmp	r0, #0
	ldreq	r3, .L58+48
	streq	r2, [r3, #16]
.L54:
	mov	r2, #0
	ldr	r3, .L58+52
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L57:
	ldr	r3, .L58+56
	str	r0, [r3, #16]
	b	.L54
.L59:
	.align	2
.L58:
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
	ldr	r3, .L62
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r2, #1
	mov	ip, #64
	mov	r9, #170
	mov	r8, #90
	mov	r7, #2
	mov	r6, #4
	mov	r0, #16
	mov	lr, #5
	mov	r5, #26
	mov	r4, #47
	ldr	r3, .L62+4
	str	r1, [r3, #16]
	ldr	r3, .L62+8
	str	r1, [r3, #16]
	ldr	r3, .L62+12
	str	r1, [r3, #16]
	ldr	r3, .L62+16
	str	r1, [r3, #16]
	ldr	r3, .L62+20
	str	r1, [r3, #16]
	ldr	r3, .L62+24
	str	r9, [r3]
	str	r8, [r3, #4]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	str	r2, [r3, #16]
	ldr	ip, .L62+28
	str	r7, [r3, #28]
	str	r6, [r3, #40]
	str	r1, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	r3, .L62+32
	str	lr, [ip]
	str	lr, [r3, #4]
	str	r5, [r3]
	str	lr, [ip, #4]
	str	r2, [r3, #16]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	ldr	r6, .L62+36
	ldr	r3, .L62+40
	str	r2, [ip, #16]
	str	r0, [ip, #8]
	str	r0, [ip, #12]
	ldr	ip, .L62+44
	str	r2, [r6, #16]
	str	lr, [r3, #4]
	str	r4, [r3]
	str	r2, [r3, #16]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [ip]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	life1
	.word	life2
	.word	fry
	.word	life3
	.word	life1Counter
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
	ldr	r3, .L66
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r2, #1
	mov	ip, #64
	mov	r9, #170
	mov	r8, #90
	mov	r7, #2
	mov	r6, #4
	mov	r0, #16
	mov	lr, #5
	mov	r5, #26
	mov	r4, #47
	ldr	r3, .L66+4
	str	r1, [r3, #16]
	ldr	r3, .L66+8
	str	r1, [r3, #16]
	ldr	r3, .L66+12
	str	r1, [r3, #16]
	ldr	r3, .L66+16
	str	r1, [r3, #16]
	ldr	r3, .L66+20
	str	r1, [r3, #16]
	ldr	r3, .L66+24
	str	r9, [r3]
	str	r8, [r3, #4]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	str	r2, [r3, #16]
	ldr	ip, .L66+28
	str	r7, [r3, #28]
	str	r6, [r3, #40]
	str	r1, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	r3, .L66+32
	str	lr, [ip]
	str	lr, [r3, #4]
	str	r5, [r3]
	str	lr, [ip, #4]
	str	r2, [r3, #16]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	ldr	r6, .L66+36
	ldr	r3, .L66+40
	str	r2, [ip, #16]
	str	r0, [ip, #8]
	str	r0, [ip, #12]
	ldr	ip, .L66+44
	str	r2, [r6, #16]
	str	lr, [r3, #4]
	str	r4, [r3]
	str	r2, [r3, #16]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [ip]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	life1
	.word	life2
	.word	fry
	.word	life3
	.word	life3Counter
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
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	ip, #4
	mov	r2, #1
	mov	r0, #16
	mov	lr, #5
	mov	r4, #64
	mov	r9, #170
	mov	r8, #90
	mov	r7, #2
	mov	r6, #26
	mov	r5, #47
	ldr	r3, .L70+4
	str	r1, [r3, #16]
	ldr	r3, .L70+8
	str	r1, [r3, #16]
	ldr	r3, .L70+12
	str	r1, [r3, #16]
	ldr	r3, .L70+16
	str	r1, [r3, #16]
	ldr	r3, .L70+20
	str	r1, [r3, #16]
	ldr	r3, .L70+24
	str	ip, [r3, #40]
	ldr	ip, .L70+28
	str	r2, [ip, #16]
	ldr	ip, .L70+32
	str	lr, [ip]
	str	lr, [ip, #4]
	str	r2, [ip, #16]
	str	r0, [ip, #8]
	str	r0, [ip, #12]
	ldr	ip, .L70+36
	str	r9, [r3]
	str	r8, [r3, #4]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r7, [r3, #28]
	str	r2, [r3, #16]
	str	lr, [ip, #4]
	str	r6, [ip]
	str	r1, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [ip, #16]
	ldr	r3, .L70+40
	str	r0, [ip, #8]
	str	r0, [ip, #12]
	ldr	ip, .L70+44
	str	lr, [r3, #4]
	str	r5, [r3]
	str	r2, [r3, #16]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [ip]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	fry
	.word	life1
	.word	life2
	.word	life3
	.word	life4Counter
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
	ldr	r3, .L115
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, lr}
	bne	.L73
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L115+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L73:
	ldr	r2, .L115+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	bne	.L74
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, .L115+4
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #4]
	lsl	r3, r3, #3
	strh	r1, [r0, #90]	@ movhi
	strh	ip, [r0, #88]	@ movhi
	strh	r3, [r0, #92]	@ movhi
.L74:
	ldr	r3, .L115+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	bne	.L75
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L115+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #50]	@ movhi
	strh	ip, [r0, #48]	@ movhi
	strh	r2, [r0, #52]	@ movhi
.L75:
	ldr	r1, .L115+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	beq	.L76
	mov	r0, #152
	ldr	r2, [r1]
	ldr	r3, .L115+4
	ldr	r1, [r1, #4]
	orr	r2, r2, #16384
	strh	r2, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
.L76:
	ldr	r3, .L115+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L77
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L115+4
	orr	r2, r2, #16384
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #68]	@ movhi
.L77:
	ldr	r3, .L115+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L78
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L115+4
	orr	r2, r2, #16384
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	strh	r1, [r3, #76]	@ movhi
.L78:
	mov	r4, #148
	ldr	r3, .L115+28
	ldr	r1, .L115+4
	ldr	lr, .L115+32
	add	r0, r3, #60
.L80:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #20
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	cmp	r3, r0
	bne	.L80
	ldr	r2, .L115+36
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L81
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #144
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L115+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L81:
	ldr	r2, .L115+40
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L82
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #16
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L115+4
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L82:
	ldr	r2, .L115+44
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #20
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L115+4
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L83:
	ldr	r2, .L115+48
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #24
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L115+4
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L84:
	ldr	r2, .L115+52
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L85
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #28
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L115+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L85:
	ldr	r3, .L115+56
	mov	lr, pc
	bx	r3
	ldr	r4, .L115+60
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L115+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L115+64
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L115+68
	ldrh	r3, [r3]
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L116:
	.align	2
.L115:
	.word	fry
	.word	shadowOAM
	.word	leela
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	-32768
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
	ldr	r2, .L123
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L123+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L123+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L123+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L123+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L123+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L123+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L123+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L123+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L124:
	.align	2
.L123:
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
	ldr	r2, .L155
	ldrh	r3, [r2]
	ldr	r0, .L155+4
	ldr	r6, .L155+8
	add	r3, r3, #1
	ldr	r1, .L155+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L155+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L126
	ldr	r3, [r6, #16]
	cmp	r3, #1
	beq	.L154
.L126:
	ldr	r4, .L155+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L155+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L128
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L128:
	ldr	r5, .L155+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L155+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L130
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L130:
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
	ldr	r7, .L155+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L132
.L134:
	ldr	r0, [r4]
.L133:
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
	beq	.L135
.L137:
	ldr	r0, [r4]
.L136:
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
	beq	.L138
.L140:
	ldr	r0, [r4]
.L139:
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
	bne	.L141
	ldr	r3, .L155+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L155+36
	streq	r0, [r3]
.L141:
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
	beq	.L142
.L144:
	ldr	r0, [r4]
.L143:
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
	beq	.L145
.L147:
	ldr	r0, [r4]
.L146:
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
	beq	.L148
.L150:
	ldr	r0, [r4]
.L149:
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
	bne	.L151
	ldr	r3, .L155+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L155+36
	streq	r0, [r3]
.L151:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L145:
	ldr	r3, .L155+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L147
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L155+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L146
.L142:
	ldr	r1, .L155+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L144
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L155+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L143
.L148:
	ldr	r3, .L155+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L150
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L155+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L149
.L132:
	ldr	r1, .L155+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L134
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L155+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L133
.L138:
	ldr	r3, .L155+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L140
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L155+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L139
.L135:
	ldr	r3, .L155+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L137
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L155+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L136
.L154:
	add	r2, r6, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r6, #36]
	strge	r3, [r6, #36]
	b	.L126
.L156:
	.align	2
.L155:
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
	push	{r4, r5, r6, lr}
	ldr	r2, .L184
	ldrh	r3, [r2]
	ldr	r0, .L184+4
	ldr	r5, .L184+8
	add	r3, r3, #1
	ldr	r1, .L184+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L184+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L158
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L158:
	ldr	r4, .L184+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L184+16
	rsb	r3, r3, r3, lsl #15
	ldr	r0, [r4]
	add	r3, r2, r3, lsl #3
	ldr	r2, [r4, #20]
	add	r3, r3, r1
	sub	r0, r0, r2
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L160
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L160:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	ldr	r6, .L184+24
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
	beq	.L162
.L164:
	ldr	r0, [r4]
.L163:
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
	beq	.L165
.L167:
	ldr	r0, [r4]
.L166:
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
	beq	.L168
.L170:
	ldr	r0, [r4]
.L169:
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
	bne	.L171
	ldr	r3, .L184+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L184+32
	streq	r0, [r3]
.L171:
	ldr	r0, [r4]
	ldr	r2, [r4, #12]
	ldr	r5, .L184+36
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
	beq	.L173
.L175:
	ldr	r0, [r4]
.L174:
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
	beq	.L176
.L178:
	ldr	r0, [r4]
.L177:
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
	beq	.L179
.L181:
	ldr	r0, [r4]
.L180:
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
	bne	.L182
	ldr	r3, .L184+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L184+32
	streq	r0, [r3]
.L182:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L179:
	ldr	r3, .L184+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L181
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L184+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L180
.L176:
	ldr	r3, .L184+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L178
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L184+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L177
.L173:
	ldr	r1, .L184+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L175
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L184+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L174
.L168:
	ldr	r3, .L184+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L170
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L184+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L169
.L165:
	ldr	r3, .L184+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L167
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L184+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L166
.L162:
	ldr	r1, .L184+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L164
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L184+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L163
.L185:
	.align	2
.L184:
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
	push	{r4, r5, r6, lr}
	ldr	r2, .L213
	ldrh	r3, [r2]
	ldr	r0, .L213+4
	ldr	r5, .L213+8
	add	r3, r3, #1
	ldr	r1, .L213+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L213+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L187
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L187:
	ldr	r4, .L213+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L213+16
	rsb	r3, r3, r3, lsl #15
	ldr	r0, [r4]
	add	r3, r2, r3, lsl #3
	ldr	r2, [r4, #20]
	add	r3, r3, r1
	sub	r0, r0, r2
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L189
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L189:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	ldr	r6, .L213+24
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
	beq	.L197
.L199:
	ldr	r0, [r4]
.L198:
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
	bne	.L200
	ldr	r3, .L213+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L213+32
	streq	r0, [r3]
.L200:
	ldr	r5, .L213+36
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
	beq	.L207
.L209:
	ldr	r0, [r4]
.L208:
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
	bne	.L210
	ldr	r3, .L213+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L213+32
	streq	r0, [r3]
.L210:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L207:
	ldr	r3, .L213+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L209
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L213+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L208
.L204:
	ldr	r3, .L213+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L206
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L213+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L205
.L201:
	ldr	r1, .L213+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L203
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L213+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L202
.L197:
	ldr	r3, .L213+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L199
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L213+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L198
.L194:
	ldr	r3, .L213+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L196
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L213+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L195
.L191:
	ldr	r1, .L213+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L193
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L213+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L192
.L214:
	.align	2
.L213:
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
	push	{r4, r5, r6, lr}
	ldr	r2, .L242
	ldrh	r3, [r2]
	ldr	r0, .L242+4
	ldr	r5, .L242+8
	add	r3, r3, #1
	ldr	r1, .L242+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L242+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L216
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L216:
	ldr	r4, .L242+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L242+16
	rsb	r3, r3, r3, lsl #15
	ldr	r0, [r4]
	add	r3, r2, r3, lsl #3
	ldr	r2, [r4, #20]
	add	r3, r3, r1
	sub	r0, r0, r2
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L218
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L218:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	ldr	r6, .L242+24
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
	beq	.L220
.L222:
	ldr	r0, [r4]
.L221:
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
	beq	.L223
.L225:
	ldr	r0, [r4]
.L224:
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
	beq	.L226
.L228:
	ldr	r0, [r4]
.L227:
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
	bne	.L229
	ldr	r3, .L242+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L242+32
	streq	r0, [r3]
.L229:
	ldr	r5, .L242+36
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
	beq	.L230
.L232:
	ldr	r0, [r4]
.L231:
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
	beq	.L233
.L235:
	ldr	r0, [r4]
.L234:
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
	beq	.L236
.L238:
	ldr	r0, [r4]
.L237:
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
	bne	.L239
	ldr	r3, .L242+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L242+32
	streq	r0, [r3]
.L239:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L236:
	ldr	r3, .L242+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L238
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L242+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L237
.L233:
	ldr	r3, .L242+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L235
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L242+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L234
.L230:
	ldr	r1, .L242+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L232
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L242+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L231
.L226:
	ldr	r3, .L242+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L228
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L242+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L227
.L223:
	ldr	r3, .L242+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L225
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L242+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L224
.L220:
	ldr	r1, .L242+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L222
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L242+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L221
.L243:
	.align	2
.L242:
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
	ldr	r3, .L246
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L246+4
	ldr	ip, .L246+8
	ldr	r0, .L246+12
	ldr	r1, .L246+16
	str	r3, [r2, #16]
	str	r3, [r2, #36]
	str	r3, [r2, #56]
	pop	{r4, lr}
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	b	drawGame
.L247:
	.align	2
.L246:
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
