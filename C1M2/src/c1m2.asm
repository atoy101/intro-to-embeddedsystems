
c1m2.out:     file format elf32-littlearm


Disassembly of section .text:

00000140 <deregister_tm_clones>:
 140:	4b04      	ldr	r3, [pc, #16]	; (154 <deregister_tm_clones+0x14>)
 142:	4805      	ldr	r0, [pc, #20]	; (158 <deregister_tm_clones+0x18>)
 144:	1a1b      	subs	r3, r3, r0
 146:	2b06      	cmp	r3, #6
 148:	d902      	bls.n	150 <deregister_tm_clones+0x10>
 14a:	4b04      	ldr	r3, [pc, #16]	; (15c <deregister_tm_clones+0x1c>)
 14c:	b103      	cbz	r3, 150 <deregister_tm_clones+0x10>
 14e:	4718      	bx	r3
 150:	4770      	bx	lr
 152:	bf00      	nop
 154:	2000043f 	.word	0x2000043f
 158:	2000043c 	.word	0x2000043c
 15c:	00000000 	.word	0x00000000

00000160 <register_tm_clones>:
 160:	4905      	ldr	r1, [pc, #20]	; (178 <register_tm_clones+0x18>)
 162:	4806      	ldr	r0, [pc, #24]	; (17c <register_tm_clones+0x1c>)
 164:	1a09      	subs	r1, r1, r0
 166:	1089      	asrs	r1, r1, #2
 168:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
 16c:	1049      	asrs	r1, r1, #1
 16e:	d002      	beq.n	176 <register_tm_clones+0x16>
 170:	4b03      	ldr	r3, [pc, #12]	; (180 <register_tm_clones+0x20>)
 172:	b103      	cbz	r3, 176 <register_tm_clones+0x16>
 174:	4718      	bx	r3
 176:	4770      	bx	lr
 178:	2000043c 	.word	0x2000043c
 17c:	2000043c 	.word	0x2000043c
 180:	00000000 	.word	0x00000000

00000184 <__do_global_dtors_aux>:
 184:	b510      	push	{r4, lr}
 186:	4c06      	ldr	r4, [pc, #24]	; (1a0 <__do_global_dtors_aux+0x1c>)
 188:	7823      	ldrb	r3, [r4, #0]
 18a:	b943      	cbnz	r3, 19e <__do_global_dtors_aux+0x1a>
 18c:	f7ff ffd8 	bl	140 <deregister_tm_clones>
 190:	4b04      	ldr	r3, [pc, #16]	; (1a4 <__do_global_dtors_aux+0x20>)
 192:	b113      	cbz	r3, 19a <__do_global_dtors_aux+0x16>
 194:	4804      	ldr	r0, [pc, #16]	; (1a8 <__do_global_dtors_aux+0x24>)
 196:	f3af 8000 	nop.w
 19a:	2301      	movs	r3, #1
 19c:	7023      	strb	r3, [r4, #0]
 19e:	bd10      	pop	{r4, pc}
 1a0:	2000043c 	.word	0x2000043c
 1a4:	00000000 	.word	0x00000000
 1a8:	00000ac0 	.word	0x00000ac0

000001ac <frame_dummy>:
 1ac:	b508      	push	{r3, lr}
 1ae:	4b08      	ldr	r3, [pc, #32]	; (1d0 <frame_dummy+0x24>)
 1b0:	b11b      	cbz	r3, 1ba <frame_dummy+0xe>
 1b2:	4908      	ldr	r1, [pc, #32]	; (1d4 <frame_dummy+0x28>)
 1b4:	4808      	ldr	r0, [pc, #32]	; (1d8 <frame_dummy+0x2c>)
 1b6:	f3af 8000 	nop.w
 1ba:	4808      	ldr	r0, [pc, #32]	; (1dc <frame_dummy+0x30>)
 1bc:	6803      	ldr	r3, [r0, #0]
 1be:	b913      	cbnz	r3, 1c6 <frame_dummy+0x1a>
 1c0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 1c4:	e7cc      	b.n	160 <register_tm_clones>
 1c6:	4b06      	ldr	r3, [pc, #24]	; (1e0 <frame_dummy+0x34>)
 1c8:	2b00      	cmp	r3, #0
 1ca:	d0f9      	beq.n	1c0 <frame_dummy+0x14>
 1cc:	4798      	blx	r3
 1ce:	e7f7      	b.n	1c0 <frame_dummy+0x14>
 1d0:	00000000 	.word	0x00000000
 1d4:	20000440 	.word	0x20000440
 1d8:	00000ac0 	.word	0x00000ac0
 1dc:	20000438 	.word	0x20000438
 1e0:	00000000 	.word	0x00000000

000001e4 <_mainCRTStartup>:
 1e4:	4b13      	ldr	r3, [pc, #76]	; (234 <_mainCRTStartup+0x50>)
 1e6:	2b00      	cmp	r3, #0
 1e8:	bf08      	it	eq
 1ea:	4b11      	ldreq	r3, [pc, #68]	; (230 <_mainCRTStartup+0x4c>)
 1ec:	469d      	mov	sp, r3
 1ee:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 1f2:	2100      	movs	r1, #0
 1f4:	468b      	mov	fp, r1
 1f6:	460f      	mov	r7, r1
 1f8:	4811      	ldr	r0, [pc, #68]	; (240 <_mainCRTStartup+0x5c>)
 1fa:	4a12      	ldr	r2, [pc, #72]	; (244 <_mainCRTStartup+0x60>)
 1fc:	1a12      	subs	r2, r2, r0
 1fe:	f000 fae3 	bl	7c8 <memset>
 202:	4b0d      	ldr	r3, [pc, #52]	; (238 <_mainCRTStartup+0x54>)
 204:	2b00      	cmp	r3, #0
 206:	d000      	beq.n	20a <_mainCRTStartup+0x26>
 208:	4798      	blx	r3
 20a:	4b0c      	ldr	r3, [pc, #48]	; (23c <_mainCRTStartup+0x58>)
 20c:	2b00      	cmp	r3, #0
 20e:	d000      	beq.n	212 <_mainCRTStartup+0x2e>
 210:	4798      	blx	r3
 212:	2000      	movs	r0, #0
 214:	2100      	movs	r1, #0
 216:	0004      	movs	r4, r0
 218:	000d      	movs	r5, r1
 21a:	480b      	ldr	r0, [pc, #44]	; (248 <_mainCRTStartup+0x64>)
 21c:	f000 fa82 	bl	724 <atexit>
 220:	f000 faaa 	bl	778 <__libc_init_array>
 224:	0020      	movs	r0, r4
 226:	0029      	movs	r1, r5
 228:	f000 f9c8 	bl	5bc <main>
 22c:	f000 fa80 	bl	730 <exit>
 230:	00080000 	.word	0x00080000
 234:	20000468 	.word	0x20000468
	...
 240:	2000043c 	.word	0x2000043c
 244:	20000464 	.word	0x20000464
 248:	00000751 	.word	0x00000751

0000024c <SystemCoreClockUpdate>:
 *
 * @brief  Updates the SystemCoreClock with current core Clock
 *         retrieved from cpu registers.
 */
void SystemCoreClockUpdate(void)
{
 24c:	b480      	push	{r7}
 24e:	b089      	sub	sp, #36	; 0x24
 250:	af00      	add	r7, sp, #0
    float dcoConst;
    int32_t calVal;
    uint32_t centeredFreq;
    int16_t dcoTune;

    divider = (CS->CTL1 & CS_CTL1_DIVM_MASK) >> CS_CTL1_DIVM_OFS;
 252:	4bab      	ldr	r3, [pc, #684]	; (500 <SystemCoreClockUpdate+0x2b4>)
 254:	689b      	ldr	r3, [r3, #8]
 256:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 25a:	0c1b      	lsrs	r3, r3, #16
 25c:	60fb      	str	r3, [r7, #12]
    dividerValue = 1 << divider;
 25e:	2201      	movs	r2, #1
 260:	68fb      	ldr	r3, [r7, #12]
 262:	fa02 f303 	lsl.w	r3, r2, r3
 266:	72fb      	strb	r3, [r7, #11]
    source = CS->CTL1 & CS_CTL1_SELM_MASK;
 268:	4ba5      	ldr	r3, [pc, #660]	; (500 <SystemCoreClockUpdate+0x2b4>)
 26a:	689b      	ldr	r3, [r3, #8]
 26c:	f003 0307 	and.w	r3, r3, #7
 270:	607b      	str	r3, [r7, #4]

    switch(source)
 272:	687b      	ldr	r3, [r7, #4]
 274:	2b05      	cmp	r3, #5
 276:	f200 813d 	bhi.w	4f4 <SystemCoreClockUpdate+0x2a8>
 27a:	a201      	add	r2, pc, #4	; (adr r2, 280 <SystemCoreClockUpdate+0x34>)
 27c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 280:	00000299 	.word	0x00000299
 284:	00000319 	.word	0x00000319
 288:	0000032b 	.word	0x0000032b
 28c:	00000359 	.word	0x00000359
 290:	00000469 	.word	0x00000469
 294:	00000479 	.word	0x00000479
    {
    case CS_CTL1_SELM__LFXTCLK:
        if(BITBAND_PERI(CS->IFG, CS_IFG_LFXTIFG_OFS))
 298:	4b9a      	ldr	r3, [pc, #616]	; (504 <SystemCoreClockUpdate+0x2b8>)
 29a:	781b      	ldrb	r3, [r3, #0]
 29c:	b2db      	uxtb	r3, r3
 29e:	2b00      	cmp	r3, #0
 2a0:	d031      	beq.n	306 <SystemCoreClockUpdate+0xba>
        {
            // Clear interrupt flag
            CS->KEY = CS_KEY_VAL;
 2a2:	4b97      	ldr	r3, [pc, #604]	; (500 <SystemCoreClockUpdate+0x2b4>)
 2a4:	f646 125a 	movw	r2, #26970	; 0x695a
 2a8:	601a      	str	r2, [r3, #0]
            CS->CLRIFG |= CS_CLRIFG_CLR_LFXTIFG;
 2aa:	4a95      	ldr	r2, [pc, #596]	; (500 <SystemCoreClockUpdate+0x2b4>)
 2ac:	4b94      	ldr	r3, [pc, #592]	; (500 <SystemCoreClockUpdate+0x2b4>)
 2ae:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 2b0:	f043 0301 	orr.w	r3, r3, #1
 2b4:	6513      	str	r3, [r2, #80]	; 0x50
            CS->KEY = 1;
 2b6:	4b92      	ldr	r3, [pc, #584]	; (500 <SystemCoreClockUpdate+0x2b4>)
 2b8:	2201      	movs	r2, #1
 2ba:	601a      	str	r2, [r3, #0]

            if(BITBAND_PERI(CS->IFG, CS_IFG_LFXTIFG_OFS))
 2bc:	4b91      	ldr	r3, [pc, #580]	; (504 <SystemCoreClockUpdate+0x2b8>)
 2be:	781b      	ldrb	r3, [r3, #0]
 2c0:	b2db      	uxtb	r3, r3
 2c2:	2b00      	cmp	r3, #0
 2c4:	d016      	beq.n	2f4 <SystemCoreClockUpdate+0xa8>
            {
                if(BITBAND_PERI(CS->CLKEN, CS_CLKEN_REFOFSEL_OFS))
 2c6:	4b90      	ldr	r3, [pc, #576]	; (508 <SystemCoreClockUpdate+0x2bc>)
 2c8:	781b      	ldrb	r3, [r3, #0]
 2ca:	b2db      	uxtb	r3, r3
 2cc:	2b00      	cmp	r3, #0
 2ce:	d008      	beq.n	2e2 <SystemCoreClockUpdate+0x96>
                {
                    SystemCoreClock = (128000 / dividerValue);
 2d0:	7afb      	ldrb	r3, [r7, #11]
 2d2:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 2d6:	fb92 f3f3 	sdiv	r3, r2, r3
 2da:	461a      	mov	r2, r3
 2dc:	4b8b      	ldr	r3, [pc, #556]	; (50c <SystemCoreClockUpdate+0x2c0>)
 2de:	601a      	str	r2, [r3, #0]
        }
        else
        {
            SystemCoreClock = __LFXT / dividerValue;
        }
        break;
 2e0:	e108      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
                    SystemCoreClock = (32000 / dividerValue);
 2e2:	7afb      	ldrb	r3, [r7, #11]
 2e4:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 2e8:	fb92 f3f3 	sdiv	r3, r2, r3
 2ec:	461a      	mov	r2, r3
 2ee:	4b87      	ldr	r3, [pc, #540]	; (50c <SystemCoreClockUpdate+0x2c0>)
 2f0:	601a      	str	r2, [r3, #0]
        break;
 2f2:	e0ff      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
                SystemCoreClock = __LFXT / dividerValue;
 2f4:	7afb      	ldrb	r3, [r7, #11]
 2f6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 2fa:	fb92 f3f3 	sdiv	r3, r2, r3
 2fe:	461a      	mov	r2, r3
 300:	4b82      	ldr	r3, [pc, #520]	; (50c <SystemCoreClockUpdate+0x2c0>)
 302:	601a      	str	r2, [r3, #0]
        break;
 304:	e0f6      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
            SystemCoreClock = __LFXT / dividerValue;
 306:	7afb      	ldrb	r3, [r7, #11]
 308:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 30c:	fb92 f3f3 	sdiv	r3, r2, r3
 310:	461a      	mov	r2, r3
 312:	4b7e      	ldr	r3, [pc, #504]	; (50c <SystemCoreClockUpdate+0x2c0>)
 314:	601a      	str	r2, [r3, #0]
        break;
 316:	e0ed      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
    case CS_CTL1_SELM__VLOCLK:
        SystemCoreClock = __VLOCLK / dividerValue;
 318:	7afb      	ldrb	r3, [r7, #11]
 31a:	f242 7210 	movw	r2, #10000	; 0x2710
 31e:	fb92 f3f3 	sdiv	r3, r2, r3
 322:	461a      	mov	r2, r3
 324:	4b79      	ldr	r3, [pc, #484]	; (50c <SystemCoreClockUpdate+0x2c0>)
 326:	601a      	str	r2, [r3, #0]
        break;
 328:	e0e4      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
    case CS_CTL1_SELM__REFOCLK:
        if (BITBAND_PERI(CS->CLKEN, CS_CLKEN_REFOFSEL_OFS))
 32a:	4b77      	ldr	r3, [pc, #476]	; (508 <SystemCoreClockUpdate+0x2bc>)
 32c:	781b      	ldrb	r3, [r3, #0]
 32e:	b2db      	uxtb	r3, r3
 330:	2b00      	cmp	r3, #0
 332:	d008      	beq.n	346 <SystemCoreClockUpdate+0xfa>
        {
            SystemCoreClock = (128000 / dividerValue);
 334:	7afb      	ldrb	r3, [r7, #11]
 336:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 33a:	fb92 f3f3 	sdiv	r3, r2, r3
 33e:	461a      	mov	r2, r3
 340:	4b72      	ldr	r3, [pc, #456]	; (50c <SystemCoreClockUpdate+0x2c0>)
 342:	601a      	str	r2, [r3, #0]
        }
        else
        {
            SystemCoreClock = (32000 / dividerValue);
        }
        break;
 344:	e0d6      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
            SystemCoreClock = (32000 / dividerValue);
 346:	7afb      	ldrb	r3, [r7, #11]
 348:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 34c:	fb92 f3f3 	sdiv	r3, r2, r3
 350:	461a      	mov	r2, r3
 352:	4b6e      	ldr	r3, [pc, #440]	; (50c <SystemCoreClockUpdate+0x2c0>)
 354:	601a      	str	r2, [r3, #0]
        break;
 356:	e0cd      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
    case CS_CTL1_SELM__DCOCLK:
        dcoTune = (CS->CTL0 & CS_CTL0_DCOTUNE_MASK) >> CS_CTL0_DCOTUNE_OFS;
 358:	4b69      	ldr	r3, [pc, #420]	; (500 <SystemCoreClockUpdate+0x2b4>)
 35a:	685b      	ldr	r3, [r3, #4]
 35c:	b21b      	sxth	r3, r3
 35e:	f3c3 0309 	ubfx	r3, r3, #0, #10
 362:	827b      	strh	r3, [r7, #18]
    
        switch(CS->CTL0 & CS_CTL0_DCORSEL_MASK)
 364:	4b66      	ldr	r3, [pc, #408]	; (500 <SystemCoreClockUpdate+0x2b4>)
 366:	685b      	ldr	r3, [r3, #4]
 368:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 36c:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 370:	d018      	beq.n	3a4 <SystemCoreClockUpdate+0x158>
 372:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 376:	d805      	bhi.n	384 <SystemCoreClockUpdate+0x138>
 378:	2b00      	cmp	r3, #0
 37a:	d00d      	beq.n	398 <SystemCoreClockUpdate+0x14c>
 37c:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 380:	d00d      	beq.n	39e <SystemCoreClockUpdate+0x152>
 382:	e01b      	b.n	3bc <SystemCoreClockUpdate+0x170>
 384:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 388:	d012      	beq.n	3b0 <SystemCoreClockUpdate+0x164>
 38a:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 38e:	d012      	beq.n	3b6 <SystemCoreClockUpdate+0x16a>
 390:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 394:	d009      	beq.n	3aa <SystemCoreClockUpdate+0x15e>
 396:	e011      	b.n	3bc <SystemCoreClockUpdate+0x170>
        {
        case CS_CTL0_DCORSEL_0:
            centeredFreq = 1500000;
 398:	4b5d      	ldr	r3, [pc, #372]	; (510 <SystemCoreClockUpdate+0x2c4>)
 39a:	617b      	str	r3, [r7, #20]
            break;
 39c:	e00e      	b.n	3bc <SystemCoreClockUpdate+0x170>
        case CS_CTL0_DCORSEL_1:
            centeredFreq = 3000000;
 39e:	4b5d      	ldr	r3, [pc, #372]	; (514 <SystemCoreClockUpdate+0x2c8>)
 3a0:	617b      	str	r3, [r7, #20]
            break;
 3a2:	e00b      	b.n	3bc <SystemCoreClockUpdate+0x170>
        case CS_CTL0_DCORSEL_2:
            centeredFreq = 6000000;
 3a4:	4b5c      	ldr	r3, [pc, #368]	; (518 <SystemCoreClockUpdate+0x2cc>)
 3a6:	617b      	str	r3, [r7, #20]
            break;
 3a8:	e008      	b.n	3bc <SystemCoreClockUpdate+0x170>
        case CS_CTL0_DCORSEL_3:
            centeredFreq = 12000000;
 3aa:	4b5c      	ldr	r3, [pc, #368]	; (51c <SystemCoreClockUpdate+0x2d0>)
 3ac:	617b      	str	r3, [r7, #20]
            break;
 3ae:	e005      	b.n	3bc <SystemCoreClockUpdate+0x170>
        case CS_CTL0_DCORSEL_4:
            centeredFreq = 24000000;
 3b0:	4b5b      	ldr	r3, [pc, #364]	; (520 <SystemCoreClockUpdate+0x2d4>)
 3b2:	617b      	str	r3, [r7, #20]
            break;
 3b4:	e002      	b.n	3bc <SystemCoreClockUpdate+0x170>
        case CS_CTL0_DCORSEL_5:
            centeredFreq = 48000000;
 3b6:	4b5b      	ldr	r3, [pc, #364]	; (524 <SystemCoreClockUpdate+0x2d8>)
 3b8:	617b      	str	r3, [r7, #20]
            break;
 3ba:	bf00      	nop
        }

        if(dcoTune == 0)
 3bc:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 3c0:	2b00      	cmp	r3, #0
 3c2:	d103      	bne.n	3cc <SystemCoreClockUpdate+0x180>
        {
            SystemCoreClock = centeredFreq;
 3c4:	4a51      	ldr	r2, [pc, #324]	; (50c <SystemCoreClockUpdate+0x2c0>)
 3c6:	697b      	ldr	r3, [r7, #20]
 3c8:	6013      	str	r3, [r2, #0]
            SystemCoreClock = (uint32_t) ((centeredFreq)
                               / (1
                                    - ((dcoConst * dcoTune)
                                            / (8 * (1 + dcoConst * (768 - calVal))))));
        }
        break;
 3ca:	e093      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
            if(dcoTune & 0x1000)
 3cc:	8a7b      	ldrh	r3, [r7, #18]
 3ce:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 3d2:	2b00      	cmp	r3, #0
 3d4:	d005      	beq.n	3e2 <SystemCoreClockUpdate+0x196>
                dcoTune = dcoTune | 0xF000;
 3d6:	8a7b      	ldrh	r3, [r7, #18]
 3d8:	ea6f 5303 	mvn.w	r3, r3, lsl #20
 3dc:	ea6f 5313 	mvn.w	r3, r3, lsr #20
 3e0:	827b      	strh	r3, [r7, #18]
            if (BITBAND_PERI(CS->CTL0, CS_CTL0_DCORES_OFS))
 3e2:	4b51      	ldr	r3, [pc, #324]	; (528 <SystemCoreClockUpdate+0x2dc>)
 3e4:	781b      	ldrb	r3, [r3, #0]
 3e6:	b2db      	uxtb	r3, r3
 3e8:	2b00      	cmp	r3, #0
 3ea:	d006      	beq.n	3fa <SystemCoreClockUpdate+0x1ae>
                dcoConst = *((float *) &TLV->DCOER_CONSTK_RSEL04);
 3ec:	4b4f      	ldr	r3, [pc, #316]	; (52c <SystemCoreClockUpdate+0x2e0>)
 3ee:	681b      	ldr	r3, [r3, #0]
 3f0:	61fb      	str	r3, [r7, #28]
                calVal = TLV->DCOER_FCAL_RSEL04;
 3f2:	4b4f      	ldr	r3, [pc, #316]	; (530 <SystemCoreClockUpdate+0x2e4>)
 3f4:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 3f6:	61bb      	str	r3, [r7, #24]
 3f8:	e005      	b.n	406 <SystemCoreClockUpdate+0x1ba>
                dcoConst = *((float *) &TLV->DCOIR_CONSTK_RSEL04);
 3fa:	4b4e      	ldr	r3, [pc, #312]	; (534 <SystemCoreClockUpdate+0x2e8>)
 3fc:	681b      	ldr	r3, [r3, #0]
 3fe:	61fb      	str	r3, [r7, #28]
                calVal = TLV->DCOIR_FCAL_RSEL04;
 400:	4b4b      	ldr	r3, [pc, #300]	; (530 <SystemCoreClockUpdate+0x2e4>)
 402:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 404:	61bb      	str	r3, [r7, #24]
                               / (1
 406:	697b      	ldr	r3, [r7, #20]
 408:	ee07 3a90 	vmov	s15, r3
 40c:	eef8 6a67 	vcvt.f32.u32	s13, s15
                                    - ((dcoConst * dcoTune)
 410:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 414:	ee07 3a90 	vmov	s15, r3
 418:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 41c:	edd7 7a07 	vldr	s15, [r7, #28]
 420:	ee27 6a27 	vmul.f32	s12, s14, s15
                                            / (8 * (1 + dcoConst * (768 - calVal))))));
 424:	69bb      	ldr	r3, [r7, #24]
 426:	f5c3 7340 	rsb	r3, r3, #768	; 0x300
 42a:	ee07 3a90 	vmov	s15, r3
 42e:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 432:	edd7 7a07 	vldr	s15, [r7, #28]
 436:	ee67 7a27 	vmul.f32	s15, s14, s15
 43a:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 43e:	ee77 7a87 	vadd.f32	s15, s15, s14
 442:	eeb2 7a00 	vmov.f32	s14, #32	; 0x41000000  8.0
 446:	ee27 7a87 	vmul.f32	s14, s15, s14
 44a:	eec6 7a07 	vdiv.f32	s15, s12, s14
                                    - ((dcoConst * dcoTune)
 44e:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 452:	ee37 7a67 	vsub.f32	s14, s14, s15
                               / (1
 456:	eec6 7a87 	vdiv.f32	s15, s13, s14
            SystemCoreClock = (uint32_t) ((centeredFreq)
 45a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 45e:	ee17 2a90 	vmov	r2, s15
 462:	4b2a      	ldr	r3, [pc, #168]	; (50c <SystemCoreClockUpdate+0x2c0>)
 464:	601a      	str	r2, [r3, #0]
        break;
 466:	e045      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
    case CS_CTL1_SELM__MODOSC:
        SystemCoreClock = __MODCLK / dividerValue;
 468:	7afb      	ldrb	r3, [r7, #11]
 46a:	4a2d      	ldr	r2, [pc, #180]	; (520 <SystemCoreClockUpdate+0x2d4>)
 46c:	fb92 f3f3 	sdiv	r3, r2, r3
 470:	461a      	mov	r2, r3
 472:	4b26      	ldr	r3, [pc, #152]	; (50c <SystemCoreClockUpdate+0x2c0>)
 474:	601a      	str	r2, [r3, #0]
        break;
 476:	e03d      	b.n	4f4 <SystemCoreClockUpdate+0x2a8>
    case CS_CTL1_SELM__HFXTCLK:
        if(BITBAND_PERI(CS->IFG, CS_IFG_HFXTIFG_OFS))
 478:	4b2f      	ldr	r3, [pc, #188]	; (538 <SystemCoreClockUpdate+0x2ec>)
 47a:	781b      	ldrb	r3, [r3, #0]
 47c:	b2db      	uxtb	r3, r3
 47e:	2b00      	cmp	r3, #0
 480:	d030      	beq.n	4e4 <SystemCoreClockUpdate+0x298>
        {
            // Clear interrupt flag
            CS->KEY = CS_KEY_VAL;
 482:	4b1f      	ldr	r3, [pc, #124]	; (500 <SystemCoreClockUpdate+0x2b4>)
 484:	f646 125a 	movw	r2, #26970	; 0x695a
 488:	601a      	str	r2, [r3, #0]
            CS->CLRIFG |= CS_CLRIFG_CLR_HFXTIFG;
 48a:	4a1d      	ldr	r2, [pc, #116]	; (500 <SystemCoreClockUpdate+0x2b4>)
 48c:	4b1c      	ldr	r3, [pc, #112]	; (500 <SystemCoreClockUpdate+0x2b4>)
 48e:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 490:	f043 0302 	orr.w	r3, r3, #2
 494:	6513      	str	r3, [r2, #80]	; 0x50
            CS->KEY = 1;
 496:	4b1a      	ldr	r3, [pc, #104]	; (500 <SystemCoreClockUpdate+0x2b4>)
 498:	2201      	movs	r2, #1
 49a:	601a      	str	r2, [r3, #0]

            if(BITBAND_PERI(CS->IFG, CS_IFG_HFXTIFG_OFS))
 49c:	4b26      	ldr	r3, [pc, #152]	; (538 <SystemCoreClockUpdate+0x2ec>)
 49e:	781b      	ldrb	r3, [r3, #0]
 4a0:	b2db      	uxtb	r3, r3
 4a2:	2b00      	cmp	r3, #0
 4a4:	d016      	beq.n	4d4 <SystemCoreClockUpdate+0x288>
            {
                if(BITBAND_PERI(CS->CLKEN, CS_CLKEN_REFOFSEL_OFS))
 4a6:	4b18      	ldr	r3, [pc, #96]	; (508 <SystemCoreClockUpdate+0x2bc>)
 4a8:	781b      	ldrb	r3, [r3, #0]
 4aa:	b2db      	uxtb	r3, r3
 4ac:	2b00      	cmp	r3, #0
 4ae:	d008      	beq.n	4c2 <SystemCoreClockUpdate+0x276>
                {
                    SystemCoreClock = (128000 / dividerValue);
 4b0:	7afb      	ldrb	r3, [r7, #11]
 4b2:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 4b6:	fb92 f3f3 	sdiv	r3, r2, r3
 4ba:	461a      	mov	r2, r3
 4bc:	4b13      	ldr	r3, [pc, #76]	; (50c <SystemCoreClockUpdate+0x2c0>)
 4be:	601a      	str	r2, [r3, #0]
        }
        else
        {
            SystemCoreClock = __HFXT / dividerValue;
        }
        break;
 4c0:	e017      	b.n	4f2 <SystemCoreClockUpdate+0x2a6>
                    SystemCoreClock = (32000 / dividerValue);
 4c2:	7afb      	ldrb	r3, [r7, #11]
 4c4:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 4c8:	fb92 f3f3 	sdiv	r3, r2, r3
 4cc:	461a      	mov	r2, r3
 4ce:	4b0f      	ldr	r3, [pc, #60]	; (50c <SystemCoreClockUpdate+0x2c0>)
 4d0:	601a      	str	r2, [r3, #0]
        break;
 4d2:	e00e      	b.n	4f2 <SystemCoreClockUpdate+0x2a6>
                SystemCoreClock = __HFXT / dividerValue;
 4d4:	7afb      	ldrb	r3, [r7, #11]
 4d6:	4a13      	ldr	r2, [pc, #76]	; (524 <SystemCoreClockUpdate+0x2d8>)
 4d8:	fb92 f3f3 	sdiv	r3, r2, r3
 4dc:	461a      	mov	r2, r3
 4de:	4b0b      	ldr	r3, [pc, #44]	; (50c <SystemCoreClockUpdate+0x2c0>)
 4e0:	601a      	str	r2, [r3, #0]
        break;
 4e2:	e006      	b.n	4f2 <SystemCoreClockUpdate+0x2a6>
            SystemCoreClock = __HFXT / dividerValue;
 4e4:	7afb      	ldrb	r3, [r7, #11]
 4e6:	4a0f      	ldr	r2, [pc, #60]	; (524 <SystemCoreClockUpdate+0x2d8>)
 4e8:	fb92 f3f3 	sdiv	r3, r2, r3
 4ec:	461a      	mov	r2, r3
 4ee:	4b07      	ldr	r3, [pc, #28]	; (50c <SystemCoreClockUpdate+0x2c0>)
 4f0:	601a      	str	r2, [r3, #0]
        break;
 4f2:	bf00      	nop
    }
}
 4f4:	bf00      	nop
 4f6:	3724      	adds	r7, #36	; 0x24
 4f8:	46bd      	mov	sp, r7
 4fa:	f85d 7b04 	ldr.w	r7, [sp], #4
 4fe:	4770      	bx	lr
 500:	40010400 	.word	0x40010400
 504:	42208900 	.word	0x42208900
 508:	4220863c 	.word	0x4220863c
 50c:	20000004 	.word	0x20000004
 510:	0016e360 	.word	0x0016e360
 514:	002dc6c0 	.word	0x002dc6c0
 518:	005b8d80 	.word	0x005b8d80
 51c:	00b71b00 	.word	0x00b71b00
 520:	016e3600 	.word	0x016e3600
 524:	02dc6c00 	.word	0x02dc6c00
 528:	422080d8 	.word	0x422080d8
 52c:	00201084 	.word	0x00201084
 530:	00201000 	.word	0x00201000
 534:	00201064 	.word	0x00201064
 538:	42208904 	.word	0x42208904

0000053c <SystemInit>:
 *     5. Enable Flash wait states if needed
 *     6. Change MCLK to desired frequency
 *     7. Enable Flash read buffering
 */
void SystemInit(void)
{
 53c:	b480      	push	{r7}
 53e:	af00      	add	r7, sp, #0
    // Enable FPU if used
    #if (__FPU_USED == 1)                                  // __FPU_USED is defined in core_cm4.h
    SCB->CPACR |= ((3UL << 10 * 2) |                       // Set CP10 Full Access
 540:	4a19      	ldr	r2, [pc, #100]	; (5a8 <SystemInit+0x6c>)
 542:	4b19      	ldr	r3, [pc, #100]	; (5a8 <SystemInit+0x6c>)
 544:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 548:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 54c:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
                   (3UL << 11 * 2));                       // Set CP11 Full Access
    #endif

    #if (__HALT_WDT == 1)
    WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD;            // Halt the WDT
 550:	4b16      	ldr	r3, [pc, #88]	; (5ac <SystemInit+0x70>)
 552:	f44f 42b5 	mov.w	r2, #23168	; 0x5a80
 556:	819a      	strh	r2, [r3, #12]
    #endif

    SYSCTL->SRAM_BANKEN = SYSCTL_SRAM_BANKEN_BNK7_EN;      // Enable all SRAM banks
 558:	4b15      	ldr	r3, [pc, #84]	; (5b0 <SystemInit+0x74>)
 55a:	2280      	movs	r2, #128	; 0x80
 55c:	615a      	str	r2, [r3, #20]
    #endif

    // No flash wait states necessary

    // DCO = 3 MHz; MCLK = source
    CS->KEY = CS_KEY_VAL;                                  // Unlock CS module for register access
 55e:	4b15      	ldr	r3, [pc, #84]	; (5b4 <SystemInit+0x78>)
 560:	f646 125a 	movw	r2, #26970	; 0x695a
 564:	601a      	str	r2, [r3, #0]
    CS->CTL0 = CS_CTL0_DCORSEL_1;                          // Set DCO to 1.5MHz
 566:	4b13      	ldr	r3, [pc, #76]	; (5b4 <SystemInit+0x78>)
 568:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 56c:	605a      	str	r2, [r3, #4]
    CS->CTL1 = (CS->CTL1 & ~(CS_CTL1_SELM_MASK | CS_CTL1_DIVM_MASK)) | CS_CTL1_SELM__DCOCLK;  
 56e:	4a11      	ldr	r2, [pc, #68]	; (5b4 <SystemInit+0x78>)
 570:	4b10      	ldr	r3, [pc, #64]	; (5b4 <SystemInit+0x78>)
 572:	689b      	ldr	r3, [r3, #8]
 574:	f023 1307 	bic.w	r3, r3, #458759	; 0x70007
 578:	f043 0303 	orr.w	r3, r3, #3
 57c:	6093      	str	r3, [r2, #8]
	                                                       // Select MCLK as DCO source
    CS->KEY = 0;
 57e:	4b0d      	ldr	r3, [pc, #52]	; (5b4 <SystemInit+0x78>)
 580:	2200      	movs	r2, #0
 582:	601a      	str	r2, [r3, #0]

    // Set Flash Bank read buffering
    FLCTL->BANK0_RDCTL = FLCTL->BANK0_RDCTL & ~(FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);
 584:	4a0c      	ldr	r2, [pc, #48]	; (5b8 <SystemInit+0x7c>)
 586:	4b0c      	ldr	r3, [pc, #48]	; (5b8 <SystemInit+0x7c>)
 588:	691b      	ldr	r3, [r3, #16]
 58a:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 58e:	6113      	str	r3, [r2, #16]
    FLCTL->BANK1_RDCTL = FLCTL->BANK1_RDCTL & ~(FLCTL_BANK1_RDCTL_BUFD | FLCTL_BANK1_RDCTL_BUFI);
 590:	4a09      	ldr	r2, [pc, #36]	; (5b8 <SystemInit+0x7c>)
 592:	4b09      	ldr	r3, [pc, #36]	; (5b8 <SystemInit+0x7c>)
 594:	695b      	ldr	r3, [r3, #20]
 596:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 59a:	6153      	str	r3, [r2, #20]
    // Set Flash Bank read buffering
    FLCTL->BANK0_RDCTL = FLCTL->BANK0_RDCTL | (FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);
    FLCTL->BANK1_RDCTL = FLCTL->BANK1_RDCTL | (FLCTL_BANK1_RDCTL_BUFD | FLCTL_BANK1_RDCTL_BUFI);
    #endif

}
 59c:	bf00      	nop
 59e:	46bd      	mov	sp, r7
 5a0:	f85d 7b04 	ldr.w	r7, [sp], #4
 5a4:	4770      	bx	lr
 5a6:	bf00      	nop
 5a8:	e000ed00 	.word	0xe000ed00
 5ac:	40004800 	.word	0x40004800
 5b0:	e0043000 	.word	0xe0043000
 5b4:	40010400 	.word	0x40010400
 5b8:	40011000 	.word	0x40011000

000005bc <main>:

#define MAX_LENGTH (10)
char buffer[MAX_LENGTH];

/* A pretty boring main file */
int main(void) {
 5bc:	b580      	push	{r7, lr}
 5be:	b082      	sub	sp, #8
 5c0:	af00      	add	r7, sp, #0
  unsigned int i;
  char value;

  /* Code below does some arbitrary memory Reads & writes */
  clear_all(buffer, MAX_LENGTH);
 5c2:	210a      	movs	r1, #10
 5c4:	4828      	ldr	r0, [pc, #160]	; (668 <main+0xac>)
 5c6:	f000 f89f 	bl	708 <clear_all>
  set_all( ( buffer + 8 ), 43, 2); 
 5ca:	4b28      	ldr	r3, [pc, #160]	; (66c <main+0xb0>)
 5cc:	2202      	movs	r2, #2
 5ce:	212b      	movs	r1, #43	; 0x2b
 5d0:	4618      	mov	r0, r3
 5d2:	f000 f87d 	bl	6d0 <set_all>
  set_value(buffer, 0, 0x61);
 5d6:	2261      	movs	r2, #97	; 0x61
 5d8:	2100      	movs	r1, #0
 5da:	4823      	ldr	r0, [pc, #140]	; (668 <main+0xac>)
 5dc:	f000 f848 	bl	670 <set_value>
  value = get_value(buffer, 9);
 5e0:	2109      	movs	r1, #9
 5e2:	4821      	ldr	r0, [pc, #132]	; (668 <main+0xac>)
 5e4:	f000 f864 	bl	6b0 <get_value>
 5e8:	4603      	mov	r3, r0
 5ea:	70fb      	strb	r3, [r7, #3]
  set_value(buffer, 9, (value + 0x27));
 5ec:	78fb      	ldrb	r3, [r7, #3]
 5ee:	3327      	adds	r3, #39	; 0x27
 5f0:	b2db      	uxtb	r3, r3
 5f2:	461a      	mov	r2, r3
 5f4:	2109      	movs	r1, #9
 5f6:	481c      	ldr	r0, [pc, #112]	; (668 <main+0xac>)
 5f8:	f000 f83a 	bl	670 <set_value>
  set_value(buffer, 3, 0x37);
 5fc:	2237      	movs	r2, #55	; 0x37
 5fe:	2103      	movs	r1, #3
 600:	4819      	ldr	r0, [pc, #100]	; (668 <main+0xac>)
 602:	f000 f835 	bl	670 <set_value>
  set_value(buffer, 1, 88);
 606:	2258      	movs	r2, #88	; 0x58
 608:	2101      	movs	r1, #1
 60a:	4817      	ldr	r0, [pc, #92]	; (668 <main+0xac>)
 60c:	f000 f830 	bl	670 <set_value>
  set_value(buffer, 4, '2');
 610:	2232      	movs	r2, #50	; 0x32
 612:	2104      	movs	r1, #4
 614:	4814      	ldr	r0, [pc, #80]	; (668 <main+0xac>)
 616:	f000 f82b 	bl	670 <set_value>
  value = get_value(buffer, 1);
 61a:	2101      	movs	r1, #1
 61c:	4812      	ldr	r0, [pc, #72]	; (668 <main+0xac>)
 61e:	f000 f847 	bl	6b0 <get_value>
 622:	4603      	mov	r3, r0
 624:	70fb      	strb	r3, [r7, #3]
  set_value(buffer, 2, 121);
 626:	2279      	movs	r2, #121	; 0x79
 628:	2102      	movs	r1, #2
 62a:	480f      	ldr	r0, [pc, #60]	; (668 <main+0xac>)
 62c:	f000 f820 	bl	670 <set_value>
  set_value(buffer, 7, (value - 12));
 630:	78fb      	ldrb	r3, [r7, #3]
 632:	3b0c      	subs	r3, #12
 634:	b2db      	uxtb	r3, r3
 636:	461a      	mov	r2, r3
 638:	2107      	movs	r1, #7
 63a:	480b      	ldr	r0, [pc, #44]	; (668 <main+0xac>)
 63c:	f000 f818 	bl	670 <set_value>
  set_value(buffer, 5, 0x5F);
 640:	225f      	movs	r2, #95	; 0x5f
 642:	2105      	movs	r1, #5
 644:	4808      	ldr	r0, [pc, #32]	; (668 <main+0xac>)
 646:	f000 f813 	bl	670 <set_value>

  for ( i = 0; i < MAX_LENGTH; i++ ){
 64a:	2300      	movs	r3, #0
 64c:	607b      	str	r3, [r7, #4]
 64e:	e002      	b.n	656 <main+0x9a>
 650:	687b      	ldr	r3, [r7, #4]
 652:	3301      	adds	r3, #1
 654:	607b      	str	r3, [r7, #4]
 656:	687b      	ldr	r3, [r7, #4]
 658:	2b09      	cmp	r3, #9
 65a:	d9f9      	bls.n	650 <main+0x94>
    PRINTF("%c", buffer[i]);
  }
  PRINTF("\n");
  return 0;
 65c:	2300      	movs	r3, #0
}
 65e:	4618      	mov	r0, r3
 660:	3708      	adds	r7, #8
 662:	46bd      	mov	sp, r7
 664:	bd80      	pop	{r7, pc}
 666:	bf00      	nop
 668:	20000458 	.word	0x20000458
 66c:	20000460 	.word	0x20000460

00000670 <set_value>:
#include "memory.h"

/***********************************************************
 Function Definitions
***********************************************************/
void set_value(char * ptr, unsigned int index, char value){
 670:	b480      	push	{r7}
 672:	b085      	sub	sp, #20
 674:	af00      	add	r7, sp, #0
 676:	60f8      	str	r0, [r7, #12]
 678:	60b9      	str	r1, [r7, #8]
 67a:	4613      	mov	r3, r2
 67c:	71fb      	strb	r3, [r7, #7]
  ptr[index] = value;
 67e:	68fa      	ldr	r2, [r7, #12]
 680:	68bb      	ldr	r3, [r7, #8]
 682:	4413      	add	r3, r2
 684:	79fa      	ldrb	r2, [r7, #7]
 686:	701a      	strb	r2, [r3, #0]
}
 688:	bf00      	nop
 68a:	3714      	adds	r7, #20
 68c:	46bd      	mov	sp, r7
 68e:	f85d 7b04 	ldr.w	r7, [sp], #4
 692:	4770      	bx	lr

00000694 <clear_value>:

void clear_value(char * ptr, unsigned int index){
 694:	b580      	push	{r7, lr}
 696:	b082      	sub	sp, #8
 698:	af00      	add	r7, sp, #0
 69a:	6078      	str	r0, [r7, #4]
 69c:	6039      	str	r1, [r7, #0]
  set_value(ptr, index, 0);
 69e:	2200      	movs	r2, #0
 6a0:	6839      	ldr	r1, [r7, #0]
 6a2:	6878      	ldr	r0, [r7, #4]
 6a4:	f7ff ffe4 	bl	670 <set_value>
}
 6a8:	bf00      	nop
 6aa:	3708      	adds	r7, #8
 6ac:	46bd      	mov	sp, r7
 6ae:	bd80      	pop	{r7, pc}

000006b0 <get_value>:

char get_value(char * ptr, unsigned int index){
 6b0:	b480      	push	{r7}
 6b2:	b083      	sub	sp, #12
 6b4:	af00      	add	r7, sp, #0
 6b6:	6078      	str	r0, [r7, #4]
 6b8:	6039      	str	r1, [r7, #0]
  return ptr[index];
 6ba:	687a      	ldr	r2, [r7, #4]
 6bc:	683b      	ldr	r3, [r7, #0]
 6be:	4413      	add	r3, r2
 6c0:	781b      	ldrb	r3, [r3, #0]
}
 6c2:	4618      	mov	r0, r3
 6c4:	370c      	adds	r7, #12
 6c6:	46bd      	mov	sp, r7
 6c8:	f85d 7b04 	ldr.w	r7, [sp], #4
 6cc:	4770      	bx	lr
 6ce:	bf00      	nop

000006d0 <set_all>:

void set_all(char * ptr, char value, unsigned int size){
 6d0:	b580      	push	{r7, lr}
 6d2:	b086      	sub	sp, #24
 6d4:	af00      	add	r7, sp, #0
 6d6:	60f8      	str	r0, [r7, #12]
 6d8:	460b      	mov	r3, r1
 6da:	607a      	str	r2, [r7, #4]
 6dc:	72fb      	strb	r3, [r7, #11]
  unsigned int i;
  for(i = 0; i < size; i++) {
 6de:	2300      	movs	r3, #0
 6e0:	617b      	str	r3, [r7, #20]
 6e2:	e008      	b.n	6f6 <set_all+0x26>
    set_value(ptr, i, value);
 6e4:	7afb      	ldrb	r3, [r7, #11]
 6e6:	461a      	mov	r2, r3
 6e8:	6979      	ldr	r1, [r7, #20]
 6ea:	68f8      	ldr	r0, [r7, #12]
 6ec:	f7ff ffc0 	bl	670 <set_value>
  for(i = 0; i < size; i++) {
 6f0:	697b      	ldr	r3, [r7, #20]
 6f2:	3301      	adds	r3, #1
 6f4:	617b      	str	r3, [r7, #20]
 6f6:	697a      	ldr	r2, [r7, #20]
 6f8:	687b      	ldr	r3, [r7, #4]
 6fa:	429a      	cmp	r2, r3
 6fc:	d3f2      	bcc.n	6e4 <set_all+0x14>
  }
}
 6fe:	bf00      	nop
 700:	3718      	adds	r7, #24
 702:	46bd      	mov	sp, r7
 704:	bd80      	pop	{r7, pc}
 706:	bf00      	nop

00000708 <clear_all>:

void clear_all(char * ptr, unsigned int size){
 708:	b580      	push	{r7, lr}
 70a:	b082      	sub	sp, #8
 70c:	af00      	add	r7, sp, #0
 70e:	6078      	str	r0, [r7, #4]
 710:	6039      	str	r1, [r7, #0]
  set_all(ptr, 0, size);
 712:	683a      	ldr	r2, [r7, #0]
 714:	2100      	movs	r1, #0
 716:	6878      	ldr	r0, [r7, #4]
 718:	f7ff ffda 	bl	6d0 <set_all>
}
 71c:	bf00      	nop
 71e:	3708      	adds	r7, #8
 720:	46bd      	mov	sp, r7
 722:	bd80      	pop	{r7, pc}

00000724 <atexit>:
 724:	2300      	movs	r3, #0
 726:	4601      	mov	r1, r0
 728:	461a      	mov	r2, r3
 72a:	4618      	mov	r0, r3
 72c:	f000 b89a 	b.w	864 <__register_exitproc>

00000730 <exit>:
 730:	b508      	push	{r3, lr}
 732:	2100      	movs	r1, #0
 734:	4604      	mov	r4, r0
 736:	f000 f8e7 	bl	908 <__call_exitprocs>
 73a:	4b04      	ldr	r3, [pc, #16]	; (74c <exit+0x1c>)
 73c:	6818      	ldr	r0, [r3, #0]
 73e:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 740:	b103      	cbz	r3, 744 <exit+0x14>
 742:	4798      	blx	r3
 744:	4620      	mov	r0, r4
 746:	f000 f94b 	bl	9e0 <_exit>
 74a:	bf00      	nop
 74c:	00000ab8 	.word	0x00000ab8

00000750 <__libc_fini_array>:
 750:	b538      	push	{r3, r4, r5, lr}
 752:	4d07      	ldr	r5, [pc, #28]	; (770 <__libc_fini_array+0x20>)
 754:	4c07      	ldr	r4, [pc, #28]	; (774 <__libc_fini_array+0x24>)
 756:	1b2c      	subs	r4, r5, r4
 758:	10a4      	asrs	r4, r4, #2
 75a:	d005      	beq.n	768 <__libc_fini_array+0x18>
 75c:	3c01      	subs	r4, #1
 75e:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 762:	4798      	blx	r3
 764:	2c00      	cmp	r4, #0
 766:	d1f9      	bne.n	75c <__libc_fini_array+0xc>
 768:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 76c:	f000 b94e 	b.w	a0c <_fini>
	...

00000778 <__libc_init_array>:
 778:	b570      	push	{r4, r5, r6, lr}
 77a:	4e0f      	ldr	r6, [pc, #60]	; (7b8 <__libc_init_array+0x40>)
 77c:	4d0f      	ldr	r5, [pc, #60]	; (7bc <__libc_init_array+0x44>)
 77e:	1b76      	subs	r6, r6, r5
 780:	10b6      	asrs	r6, r6, #2
 782:	bf18      	it	ne
 784:	2400      	movne	r4, #0
 786:	d005      	beq.n	794 <__libc_init_array+0x1c>
 788:	3401      	adds	r4, #1
 78a:	f855 3b04 	ldr.w	r3, [r5], #4
 78e:	4798      	blx	r3
 790:	42a6      	cmp	r6, r4
 792:	d1f9      	bne.n	788 <__libc_init_array+0x10>
 794:	4e0a      	ldr	r6, [pc, #40]	; (7c0 <__libc_init_array+0x48>)
 796:	4d0b      	ldr	r5, [pc, #44]	; (7c4 <__libc_init_array+0x4c>)
 798:	1b76      	subs	r6, r6, r5
 79a:	f000 f931 	bl	a00 <_init>
 79e:	10b6      	asrs	r6, r6, #2
 7a0:	bf18      	it	ne
 7a2:	2400      	movne	r4, #0
 7a4:	d006      	beq.n	7b4 <__libc_init_array+0x3c>
 7a6:	3401      	adds	r4, #1
 7a8:	f855 3b04 	ldr.w	r3, [r5], #4
 7ac:	4798      	blx	r3
 7ae:	42a6      	cmp	r6, r4
 7b0:	d1f9      	bne.n	7a6 <__libc_init_array+0x2e>
 7b2:	bd70      	pop	{r4, r5, r6, pc}
 7b4:	bd70      	pop	{r4, r5, r6, pc}
 7b6:	bf00      	nop
	...
 7c0:	00000a00 	.word	0x00000a00
 7c4:	000009f8 	.word	0x000009f8

000007c8 <memset>:
 7c8:	b470      	push	{r4, r5, r6}
 7ca:	0784      	lsls	r4, r0, #30
 7cc:	d046      	beq.n	85c <memset+0x94>
 7ce:	1e54      	subs	r4, r2, #1
 7d0:	2a00      	cmp	r2, #0
 7d2:	d041      	beq.n	858 <memset+0x90>
 7d4:	b2cd      	uxtb	r5, r1
 7d6:	4603      	mov	r3, r0
 7d8:	e002      	b.n	7e0 <memset+0x18>
 7da:	1e62      	subs	r2, r4, #1
 7dc:	b3e4      	cbz	r4, 858 <memset+0x90>
 7de:	4614      	mov	r4, r2
 7e0:	f803 5b01 	strb.w	r5, [r3], #1
 7e4:	079a      	lsls	r2, r3, #30
 7e6:	d1f8      	bne.n	7da <memset+0x12>
 7e8:	2c03      	cmp	r4, #3
 7ea:	d92e      	bls.n	84a <memset+0x82>
 7ec:	b2cd      	uxtb	r5, r1
 7ee:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 7f2:	2c0f      	cmp	r4, #15
 7f4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 7f8:	d919      	bls.n	82e <memset+0x66>
 7fa:	f103 0210 	add.w	r2, r3, #16
 7fe:	4626      	mov	r6, r4
 800:	3e10      	subs	r6, #16
 802:	2e0f      	cmp	r6, #15
 804:	f842 5c10 	str.w	r5, [r2, #-16]
 808:	f842 5c0c 	str.w	r5, [r2, #-12]
 80c:	f842 5c08 	str.w	r5, [r2, #-8]
 810:	f842 5c04 	str.w	r5, [r2, #-4]
 814:	f102 0210 	add.w	r2, r2, #16
 818:	d8f2      	bhi.n	800 <memset+0x38>
 81a:	f1a4 0210 	sub.w	r2, r4, #16
 81e:	f022 020f 	bic.w	r2, r2, #15
 822:	f004 040f 	and.w	r4, r4, #15
 826:	3210      	adds	r2, #16
 828:	2c03      	cmp	r4, #3
 82a:	4413      	add	r3, r2
 82c:	d90d      	bls.n	84a <memset+0x82>
 82e:	461e      	mov	r6, r3
 830:	4622      	mov	r2, r4
 832:	3a04      	subs	r2, #4
 834:	2a03      	cmp	r2, #3
 836:	f846 5b04 	str.w	r5, [r6], #4
 83a:	d8fa      	bhi.n	832 <memset+0x6a>
 83c:	1f22      	subs	r2, r4, #4
 83e:	f022 0203 	bic.w	r2, r2, #3
 842:	3204      	adds	r2, #4
 844:	4413      	add	r3, r2
 846:	f004 0403 	and.w	r4, r4, #3
 84a:	b12c      	cbz	r4, 858 <memset+0x90>
 84c:	b2c9      	uxtb	r1, r1
 84e:	441c      	add	r4, r3
 850:	f803 1b01 	strb.w	r1, [r3], #1
 854:	42a3      	cmp	r3, r4
 856:	d1fb      	bne.n	850 <memset+0x88>
 858:	bc70      	pop	{r4, r5, r6}
 85a:	4770      	bx	lr
 85c:	4614      	mov	r4, r2
 85e:	4603      	mov	r3, r0
 860:	e7c2      	b.n	7e8 <memset+0x20>
 862:	bf00      	nop

00000864 <__register_exitproc>:
 864:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 868:	4c25      	ldr	r4, [pc, #148]	; (900 <__register_exitproc+0x9c>)
 86a:	6825      	ldr	r5, [r4, #0]
 86c:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 870:	4606      	mov	r6, r0
 872:	4688      	mov	r8, r1
 874:	4692      	mov	sl, r2
 876:	4699      	mov	r9, r3
 878:	b3c4      	cbz	r4, 8ec <__register_exitproc+0x88>
 87a:	6860      	ldr	r0, [r4, #4]
 87c:	281f      	cmp	r0, #31
 87e:	dc17      	bgt.n	8b0 <__register_exitproc+0x4c>
 880:	1c43      	adds	r3, r0, #1
 882:	b176      	cbz	r6, 8a2 <__register_exitproc+0x3e>
 884:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 888:	2201      	movs	r2, #1
 88a:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 88e:	f8d4 1188 	ldr.w	r1, [r4, #392]	; 0x188
 892:	4082      	lsls	r2, r0
 894:	4311      	orrs	r1, r2
 896:	2e02      	cmp	r6, #2
 898:	f8c4 1188 	str.w	r1, [r4, #392]	; 0x188
 89c:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 8a0:	d01e      	beq.n	8e0 <__register_exitproc+0x7c>
 8a2:	3002      	adds	r0, #2
 8a4:	6063      	str	r3, [r4, #4]
 8a6:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 8aa:	2000      	movs	r0, #0
 8ac:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8b0:	4b14      	ldr	r3, [pc, #80]	; (904 <__register_exitproc+0xa0>)
 8b2:	b303      	cbz	r3, 8f6 <__register_exitproc+0x92>
 8b4:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8b8:	f3af 8000 	nop.w
 8bc:	4604      	mov	r4, r0
 8be:	b1d0      	cbz	r0, 8f6 <__register_exitproc+0x92>
 8c0:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 8c4:	2700      	movs	r7, #0
 8c6:	e880 0088 	stmia.w	r0, {r3, r7}
 8ca:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8ce:	4638      	mov	r0, r7
 8d0:	2301      	movs	r3, #1
 8d2:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8d6:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 8da:	2e00      	cmp	r6, #0
 8dc:	d0e1      	beq.n	8a2 <__register_exitproc+0x3e>
 8de:	e7d1      	b.n	884 <__register_exitproc+0x20>
 8e0:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 8e4:	430a      	orrs	r2, r1
 8e6:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8ea:	e7da      	b.n	8a2 <__register_exitproc+0x3e>
 8ec:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8f0:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8f4:	e7c1      	b.n	87a <__register_exitproc+0x16>
 8f6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8fa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8fe:	bf00      	nop
 900:	00000ab8 	.word	0x00000ab8
 904:	00000000 	.word	0x00000000

00000908 <__call_exitprocs>:
 908:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 90c:	4b32      	ldr	r3, [pc, #200]	; (9d8 <__call_exitprocs+0xd0>)
 90e:	b085      	sub	sp, #20
 910:	681b      	ldr	r3, [r3, #0]
 912:	9302      	str	r3, [sp, #8]
 914:	f503 73a4 	add.w	r3, r3, #328	; 0x148
 918:	9001      	str	r0, [sp, #4]
 91a:	460e      	mov	r6, r1
 91c:	9303      	str	r3, [sp, #12]
 91e:	9b02      	ldr	r3, [sp, #8]
 920:	f8d3 7148 	ldr.w	r7, [r3, #328]	; 0x148
 924:	b33f      	cbz	r7, 976 <__call_exitprocs+0x6e>
 926:	f8dd a00c 	ldr.w	sl, [sp, #12]
 92a:	f04f 0901 	mov.w	r9, #1
 92e:	46d3      	mov	fp, sl
 930:	687c      	ldr	r4, [r7, #4]
 932:	1e65      	subs	r5, r4, #1
 934:	d40e      	bmi.n	954 <__call_exitprocs+0x4c>
 936:	3401      	adds	r4, #1
 938:	eb07 0484 	add.w	r4, r7, r4, lsl #2
 93c:	f04f 0800 	mov.w	r8, #0
 940:	b1e6      	cbz	r6, 97c <__call_exitprocs+0x74>
 942:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 946:	429e      	cmp	r6, r3
 948:	d018      	beq.n	97c <__call_exitprocs+0x74>
 94a:	3d01      	subs	r5, #1
 94c:	1c6b      	adds	r3, r5, #1
 94e:	f1a4 0404 	sub.w	r4, r4, #4
 952:	d1f5      	bne.n	940 <__call_exitprocs+0x38>
 954:	4b21      	ldr	r3, [pc, #132]	; (9dc <__call_exitprocs+0xd4>)
 956:	b173      	cbz	r3, 976 <__call_exitprocs+0x6e>
 958:	687b      	ldr	r3, [r7, #4]
 95a:	2b00      	cmp	r3, #0
 95c:	d136      	bne.n	9cc <__call_exitprocs+0xc4>
 95e:	683b      	ldr	r3, [r7, #0]
 960:	2b00      	cmp	r3, #0
 962:	d034      	beq.n	9ce <__call_exitprocs+0xc6>
 964:	4638      	mov	r0, r7
 966:	f8cb 3000 	str.w	r3, [fp]
 96a:	f3af 8000 	nop.w
 96e:	f8db 7000 	ldr.w	r7, [fp]
 972:	2f00      	cmp	r7, #0
 974:	d1dc      	bne.n	930 <__call_exitprocs+0x28>
 976:	b005      	add	sp, #20
 978:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 97c:	687b      	ldr	r3, [r7, #4]
 97e:	6822      	ldr	r2, [r4, #0]
 980:	3b01      	subs	r3, #1
 982:	42ab      	cmp	r3, r5
 984:	bf0c      	ite	eq
 986:	607d      	streq	r5, [r7, #4]
 988:	f8c4 8000 	strne.w	r8, [r4]
 98c:	2a00      	cmp	r2, #0
 98e:	d0dc      	beq.n	94a <__call_exitprocs+0x42>
 990:	f8d7 1188 	ldr.w	r1, [r7, #392]	; 0x188
 994:	f8d7 a004 	ldr.w	sl, [r7, #4]
 998:	fa09 f305 	lsl.w	r3, r9, r5
 99c:	420b      	tst	r3, r1
 99e:	d00f      	beq.n	9c0 <__call_exitprocs+0xb8>
 9a0:	f8d7 118c 	ldr.w	r1, [r7, #396]	; 0x18c
 9a4:	420b      	tst	r3, r1
 9a6:	d10d      	bne.n	9c4 <__call_exitprocs+0xbc>
 9a8:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 9ac:	9801      	ldr	r0, [sp, #4]
 9ae:	4790      	blx	r2
 9b0:	687b      	ldr	r3, [r7, #4]
 9b2:	4553      	cmp	r3, sl
 9b4:	d1b3      	bne.n	91e <__call_exitprocs+0x16>
 9b6:	f8db 3000 	ldr.w	r3, [fp]
 9ba:	42bb      	cmp	r3, r7
 9bc:	d0c5      	beq.n	94a <__call_exitprocs+0x42>
 9be:	e7ae      	b.n	91e <__call_exitprocs+0x16>
 9c0:	4790      	blx	r2
 9c2:	e7f5      	b.n	9b0 <__call_exitprocs+0xa8>
 9c4:	f8d4 0080 	ldr.w	r0, [r4, #128]	; 0x80
 9c8:	4790      	blx	r2
 9ca:	e7f1      	b.n	9b0 <__call_exitprocs+0xa8>
 9cc:	683b      	ldr	r3, [r7, #0]
 9ce:	46bb      	mov	fp, r7
 9d0:	461f      	mov	r7, r3
 9d2:	2f00      	cmp	r7, #0
 9d4:	d1ac      	bne.n	930 <__call_exitprocs+0x28>
 9d6:	e7ce      	b.n	976 <__call_exitprocs+0x6e>
 9d8:	00000ab8 	.word	0x00000ab8
 9dc:	00000000 	.word	0x00000000

000009e0 <_exit>:
 9e0:	e7fe      	b.n	9e0 <_exit>
 9e2:	bf00      	nop

000009e4 <register_fini>:
 9e4:	4b02      	ldr	r3, [pc, #8]	; (9f0 <register_fini+0xc>)
 9e6:	b113      	cbz	r3, 9ee <register_fini+0xa>
 9e8:	4802      	ldr	r0, [pc, #8]	; (9f4 <register_fini+0x10>)
 9ea:	f7ff be9b 	b.w	724 <atexit>
 9ee:	4770      	bx	lr
 9f0:	00000000 	.word	0x00000000
 9f4:	00000751 	.word	0x00000751

000009f8 <__init_array_start>:
 9f8:	000001ad 	.word	0x000001ad
 9fc:	000009e5 	.word	0x000009e5

00000a00 <_init>:
 a00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a02:	bf00      	nop
 a04:	bcf8      	pop	{r3, r4, r5, r6, r7}
 a06:	bc08      	pop	{r3}
 a08:	469e      	mov	lr, r3
 a0a:	4770      	bx	lr

00000a0c <_fini>:
 a0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a0e:	bf00      	nop

00000a10 <__do_global_dtors_aux_fini_array_entry>:
 a10:	0185 0000 bcf8 bc08 469e 4770               .........FpG

Disassembly of section .text:Reset_Handler:

00000a1c <Reset_Handler>:
#define HWREG(x) (*((volatile uint32_t *)(x)))
#endif

__attribute__((interrupt,section(".text:Reset_Handler")))
void Reset_Handler(void)
{
 a1c:	4668      	mov	r0, sp
 a1e:	f020 0107 	bic.w	r1, r0, #7
 a22:	468d      	mov	sp, r1
 a24:	b581      	push	{r0, r7, lr}
 a26:	b083      	sub	sp, #12
 a28:	af00      	add	r7, sp, #0
	/* Copy the data segment initializers from flash to SRAM. */
	    uint32_t *pui32Src, *pui32Dest;

	    pui32Src = &__data_load__;
 a2a:	4b12      	ldr	r3, [pc, #72]	; (a74 <zero_loop+0x20>)
 a2c:	607b      	str	r3, [r7, #4]
	    for(pui32Dest = &__data_start__; pui32Dest < &__data_end__; )
 a2e:	4b12      	ldr	r3, [pc, #72]	; (a78 <zero_loop+0x24>)
 a30:	603b      	str	r3, [r7, #0]
 a32:	e007      	b.n	a44 <Reset_Handler+0x28>
	    {
	        *pui32Dest++ = *pui32Src++;
 a34:	683b      	ldr	r3, [r7, #0]
 a36:	1d1a      	adds	r2, r3, #4
 a38:	603a      	str	r2, [r7, #0]
 a3a:	687a      	ldr	r2, [r7, #4]
 a3c:	1d11      	adds	r1, r2, #4
 a3e:	6079      	str	r1, [r7, #4]
 a40:	6812      	ldr	r2, [r2, #0]
 a42:	601a      	str	r2, [r3, #0]
	    for(pui32Dest = &__data_start__; pui32Dest < &__data_end__; )
 a44:	683b      	ldr	r3, [r7, #0]
 a46:	4a0d      	ldr	r2, [pc, #52]	; (a7c <zero_loop+0x28>)
 a48:	4293      	cmp	r3, r2
 a4a:	d3f3      	bcc.n	a34 <Reset_Handler+0x18>
	    }

	    /* Zero fill the bss segment. */
	    __asm("    ldr     r0, =__bss_start__\n"
 a4c:	480c      	ldr	r0, [pc, #48]	; (a80 <zero_loop+0x2c>)
 a4e:	490d      	ldr	r1, [pc, #52]	; (a84 <zero_loop+0x30>)
 a50:	f04f 0200 	mov.w	r2, #0

00000a54 <zero_loop>:
 a54:	4288      	cmp	r0, r1
 a56:	bfb8      	it	lt
 a58:	f840 2b04 	strlt.w	r2, [r0], #4
 a5c:	dbfa      	blt.n	a54 <zero_loop>
	          "    it      lt\n"
	          "    strlt   r2, [r0], #4\n"
	          "    blt     zero_loop");

	    /* Call system initialization routine */
		SystemInit();
 a5e:	f7ff fd6d 	bl	53c <SystemInit>

	    /* Call the application's entry point. */
	    main();
 a62:	f7ff fdab 	bl	5bc <main>
}
 a66:	bf00      	nop
 a68:	370c      	adds	r7, #12
 a6a:	46bd      	mov	sp, r7
 a6c:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
 a70:	4685      	mov	sp, r0
 a72:	4770      	bx	lr
 a74:	00000acc 	.word	0x00000acc
 a78:	20000000 	.word	0x20000000
 a7c:	20000438 	.word	0x20000438
 a80:	2000043c 	.word	0x2000043c
 a84:	20000464 	.word	0x20000464

Disassembly of section .text:NMI_Handler:

00000a88 <NMI_Handler>:
/* This is the code that gets called when the processor receives a NMI.  This  */
/* simply enters an infinite loop, preserving the system state for examination */
/* by a debugger.                                                              */
__attribute__((interrupt,section(".text:NMI_Handler")))
void NMI_Handler(void)
{
 a88:	4668      	mov	r0, sp
 a8a:	f020 0107 	bic.w	r1, r0, #7
 a8e:	468d      	mov	sp, r1
 a90:	b481      	push	{r0, r7}
 a92:	af00      	add	r7, sp, #0
    /* Enter an infinite loop. */
    while(1)
    {
    }
 a94:	e7fe      	b.n	a94 <NMI_Handler+0xc>
 a96:	bf00      	nop

Disassembly of section .text:HardFault_Handler:

00000a98 <HardFault_Handler>:
/* This is the code that gets called when the processor receives a fault        */
/* interrupt.  This simply enters an infinite loop, preserving the system state */
/* for examination by a debugger.                                               */
__attribute__((interrupt,section(".text:HardFault_Handler")))
void HardFault_Handler(void)
{
 a98:	4668      	mov	r0, sp
 a9a:	f020 0107 	bic.w	r1, r0, #7
 a9e:	468d      	mov	sp, r1
 aa0:	b481      	push	{r0, r7}
 aa2:	af00      	add	r7, sp, #0
    /* Enter an infinite loop. */
    while(1)
    {
    }
 aa4:	e7fe      	b.n	aa4 <HardFault_Handler+0xc>
 aa6:	bf00      	nop

Disassembly of section .text:Default_Handler:

00000aa8 <Default_Handler>:
}

__attribute__((interrupt,section(".text:Default_Handler")))
void Default_Handler(void)
{
 aa8:	4668      	mov	r0, sp
 aaa:	f020 0107 	bic.w	r1, r0, #7
 aae:	468d      	mov	sp, r1
 ab0:	b481      	push	{r0, r7}
 ab2:	af00      	add	r7, sp, #0
	/* Enter an infinite loop. */
	while(1)
	{
	}
 ab4:	e7fe      	b.n	ab4 <Default_Handler+0xc>
 ab6:	bf00      	nop
