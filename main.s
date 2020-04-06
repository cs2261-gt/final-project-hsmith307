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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #7680
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1744
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+12
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	futuramapagePal
	.word	futuramapageTiles
	.word	100724736
	.word	futuramapageMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	r2, #67108864
	mov	ip, #4352
	ldr	r0, .L7
	ldr	r1, .L7+4
	strh	ip, [r2]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	add	r2, r2, #256
	ldr	r3, .L7+8
	ldrh	r2, [r2, #48]
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	hOff
	.word	vOff
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L11
	mov	lr, pc
	bx	r3
	ldr	r4, .L11+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L11+8
	mov	lr, pc
	bx	r4
	mov	r3, #1632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L11+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L11+16
	mov	r0, #3
	ldr	r1, .L11+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L11+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	initGame
	.word	DMANow
	.word	bgPal
	.word	bgTiles
	.word	100724736
	.word	bgMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToSpace
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSpace, %function
goToSpace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L15+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L15+8
	mov	lr, pc
	bx	r4
	mov	r3, #1632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L15+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L15+16
	mov	r0, #3
	ldr	r1, .L15+20
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L15+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	initSpace
	.word	DMANow
	.word	bgPal
	.word	bgTiles
	.word	100724736
	.word	bgMap
	.word	state
	.size	goToSpace, .-goToSpace
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	start.part.0, %function
start.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSpace
.L20:
	.align	2
.L19:
	.word	buttons
	.size	start.part.0, .-start.part.0
	.set	game.part.0,start.part.0
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	game.part.0
.L24:
	.align	2
.L23:
	.word	oldButtons
	.size	game, .-game
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	game
	.size	start, .-start
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet1.part.0, %function
planet1.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L28
	ldrh	r3, [r3]
	tst	r3, #32
	bxne	lr
	b	goToSpace
.L29:
	.align	2
.L28:
	.word	buttons
	.size	planet1.part.0, .-planet1.part.0
	.set	planet4.part.0,planet1.part.0
	.set	planet3.part.0,planet1.part.0
	.set	planet2.part.0,planet1.part.0
	.align	2
	.global	goToPlanet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlanet1, %function
goToPlanet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L32
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L32+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L32+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L32+12
	ldr	r1, .L32+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L32+20
	mov	r0, #3
	ldr	r1, .L32+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L32+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	initPlanet1
	.word	DMANow
	.word	planet1PSPal
	.word	18080
	.word	planet1PSTiles
	.word	100724736
	.word	planet1PSMap
	.word	state
	.size	goToPlanet1, .-goToPlanet1
	.align	2
	.global	goToPlanet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlanet2, %function
goToPlanet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L36+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L36+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L36+12
	ldr	r1, .L36+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L36+20
	mov	r0, #3
	ldr	r1, .L36+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L36+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L37:
	.align	2
.L36:
	.word	initPlanet2
	.word	DMANow
	.word	planet2bgPal
	.word	9840
	.word	planet2bgTiles
	.word	100724736
	.word	planet2bgMap
	.word	state
	.size	goToPlanet2, .-goToPlanet2
	.align	2
	.global	goToPlanet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlanet3, %function
goToPlanet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L40+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L40+12
	ldr	r1, .L40+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L40+20
	mov	r0, #3
	ldr	r1, .L40+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L40+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
	.word	initPlanet3
	.word	DMANow
	.word	planet3bgPal
	.word	15696
	.word	planet3bgTiles
	.word	100724736
	.word	planet3bgMap
	.word	state
	.size	goToPlanet3, .-goToPlanet3
	.align	2
	.global	goToPlanet4
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlanet4, %function
goToPlanet4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L44+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L44+12
	ldr	r1, .L44+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L44+20
	mov	r0, #3
	ldr	r1, .L44+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L44+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	initPlanet4
	.word	DMANow
	.word	planet4bgPal
	.word	13296
	.word	planet4bgTiles
	.word	100724736
	.word	planet4bgMap
	.word	state
	.size	goToPlanet4, .-goToPlanet4
	.align	2
	.global	space
	.syntax unified
	.arm
	.fpu softvfp
	.type	space, %function
space:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L56
	sub	sp, sp, #20
	ldr	r3, .L56+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	ip, [r4, #8]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r0, .L56+8
	ldr	r5, .L56+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L52
.L47:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L56+16
	ldr	lr, [r4, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r6, [sp, #12]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L53
.L48:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L56+20
	ldr	lr, [r4, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r6, [sp, #12]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L54
.L49:
	ldr	r0, .L56+24
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L55
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L52:
	bl	goToPlanet1
	b	.L47
.L55:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPlanet4
.L54:
	bl	goToPlanet3
	b	.L49
.L53:
	bl	goToPlanet2
	b	.L48
.L57:
	.align	2
.L56:
	.word	spaceship
	.word	updateSpace
	.word	p1
	.word	collision
	.word	p2
	.word	p3
	.word	p4
	.size	space, .-space
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	mov	r3, #67108864
	mov	r2, #4352
	push	{r4, lr}
	ldr	r1, .L60
	ldr	lr, .L60+4
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r4, .L60+8
	str	ip, [lr, #16]
	ldr	r2, .L60+12
	ldr	lr, .L60+16
	ldr	r1, .L60+20
	ldr	r0, .L60+24
	str	ip, [r4, #16]
	str	ip, [r2, #16]
	str	ip, [r1, #16]
	str	ip, [r0, #16]
	ldr	r4, .L60+28
	str	ip, [lr, #16]
	str	ip, [lr, #36]
	str	ip, [lr, #56]
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L60+36
	ldr	r2, .L60+40
	ldr	r1, .L60+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L60+48
	mov	r0, #3
	ldr	r1, .L60+52
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L60+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
	.word	7684
	.word	fry
	.word	alien
	.word	life1
	.word	blocks
	.word	life2
	.word	life3
	.word	DMANow
	.word	pausePal
	.word	6640
	.word	100679680
	.word	pauseTiles
	.word	100724736
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	planet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet1, %function
planet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L70+4
	ldrh	r3, [r4]
	ldr	r2, .L70+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L63
	ldr	r2, .L70+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L69
.L63:
	tst	r3, #32
	popne	{r4, lr}
	bne	planet1.part.0
.L62:
	pop	{r4, lr}
	bx	lr
.L69:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L63
.L71:
	.align	2
.L70:
	.word	updatePlanet1
	.word	oldButtons
	.word	prevState
	.word	buttons
	.size	planet1, .-planet1
	.align	2
	.global	planet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet2, %function
planet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L80+4
	ldrh	r3, [r4]
	ldr	r2, .L80+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L73
	ldr	r2, .L80+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L79
.L73:
	tst	r3, #32
	popne	{r4, lr}
	bne	planet2.part.0
.L72:
	pop	{r4, lr}
	bx	lr
.L79:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L73
.L81:
	.align	2
.L80:
	.word	updatePlanet2
	.word	oldButtons
	.word	prevState
	.word	buttons
	.size	planet2, .-planet2
	.align	2
	.global	planet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet3, %function
planet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L90+4
	ldrh	r3, [r4]
	ldr	r2, .L90+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L83
	ldr	r2, .L90+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L89
.L83:
	tst	r3, #32
	popne	{r4, lr}
	bne	planet3.part.0
.L82:
	pop	{r4, lr}
	bx	lr
.L89:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L83
.L91:
	.align	2
.L90:
	.word	updatePlanet3
	.word	oldButtons
	.word	prevState
	.word	buttons
	.size	planet3, .-planet3
	.align	2
	.global	planet4
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet4, %function
planet4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L100
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L100+4
	ldrh	r3, [r4]
	ldr	r2, .L100+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L93
	ldr	r2, .L100+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L99
.L93:
	tst	r3, #32
	popne	{r4, lr}
	bne	planet4.part.0
.L92:
	pop	{r4, lr}
	bx	lr
.L99:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L93
.L101:
	.align	2
.L100:
	.word	updatePlanet4
	.word	oldButtons
	.word	prevState
	.word	buttons
	.size	planet4, .-planet4
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L114
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L114+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L114+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L102
	ldr	r3, .L114+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L102
	ldr	r3, .L114+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L111
	cmp	r3, #4
	beq	.L112
	cmp	r3, #5
	beq	.L113
	pop	{r4, lr}
	b	goToPlanet4
.L102:
	pop	{r4, lr}
	bx	lr
.L111:
	pop	{r4, lr}
	b	goToPlanet1
.L113:
	pop	{r4, lr}
	b	goToPlanet3
.L112:
	pop	{r4, lr}
	b	goToPlanet2
.L115:
	.align	2
.L114:
	.word	hideSprites
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	prevState
	.size	pause, .-pause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	mov	r3, #0
	mov	ip, #4352
	ldr	r1, .L133
	ldr	r2, .L133+4
	push	{r4, r7, fp, lr}
	strh	ip, [r0]	@ movhi
	ldr	r4, .L133+8
	strh	r3, [r1]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r7, .L133+12
	ldrh	r2, [r4, #48]
	ldr	r6, .L133+16
	ldr	r3, .L133+20
	strh	r2, [r7]	@ movhi
	ldr	r5, .L133+24
	mov	lr, pc
	bx	r3
	ldr	fp, .L133+28
	ldrh	r0, [r7]
	ldr	r2, [r6]
	ldr	r10, .L133+32
	ldr	r9, .L133+36
	ldr	r8, .L133+40
.L118:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L129
.L120:
	.word	.L127
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L121
	.word	.L119
.L119:
	ldr	r3, .L133+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L118
.L121:
	ldr	r3, .L133+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L118
.L122:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L118
.L123:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L118
.L124:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L118
.L125:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L118
.L126:
	tst	r0, #8
	beq	.L129
	ldr	r3, .L133+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L118
.L127:
	tst	r0, #8
	beq	.L129
	ldr	r3, .L133+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L118
.L129:
	mov	r0, r3
	b	.L118
.L134:
	.align	2
.L133:
	.word	hOff
	.word	vOff
	.word	67109120
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	space
	.word	planet1
	.word	planet2
	.word	planet3
	.word	pause
	.word	planet4
	.word	game.part.0
	.word	start.part.0
	.size	main, .-main
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	prevState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
