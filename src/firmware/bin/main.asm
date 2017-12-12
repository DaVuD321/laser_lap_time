
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 37 00 	jmp	0x6e	; 0x6e <__dtors_end>
       4:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
       8:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
       c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      10:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      14:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      18:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      1c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      20:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      24:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      28:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      2c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      30:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      34:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      38:	0c 94 e0 00 	jmp	0x1c0	; 0x1c0 <__vector_14>
      3c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      40:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      44:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      48:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      4c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      50:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      54:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      58:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      5c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      60:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      64:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>

00000068 <__ctors_start>:
      68:	3d 01       	movw	r6, r26
      6a:	0b 02       	muls	r16, r27

0000006c <__ctors_end>:
      6c:	0f 02       	muls	r16, r31

0000006e <__dtors_end>:
      6e:	11 24       	eor	r1, r1
      70:	1f be       	out	0x3f, r1	; 63
      72:	cf ef       	ldi	r28, 0xFF	; 255
      74:	d8 e0       	ldi	r29, 0x08	; 8
      76:	de bf       	out	0x3e, r29	; 62
      78:	cd bf       	out	0x3d, r28	; 61

0000007a <__do_copy_data>:
      7a:	11 e0       	ldi	r17, 0x01	; 1
      7c:	a0 e0       	ldi	r26, 0x00	; 0
      7e:	b1 e0       	ldi	r27, 0x01	; 1
      80:	e4 e1       	ldi	r30, 0x14	; 20
      82:	f2 e2       	ldi	r31, 0x22	; 34
      84:	02 c0       	rjmp	.+4      	; 0x8a <__do_copy_data+0x10>
      86:	05 90       	lpm	r0, Z+
      88:	0d 92       	st	X+, r0
      8a:	a0 39       	cpi	r26, 0x90	; 144
      8c:	b1 07       	cpc	r27, r17
      8e:	d9 f7       	brne	.-10     	; 0x86 <__do_copy_data+0xc>

00000090 <__do_clear_bss>:
      90:	21 e0       	ldi	r18, 0x01	; 1
      92:	a0 e9       	ldi	r26, 0x90	; 144
      94:	b1 e0       	ldi	r27, 0x01	; 1
      96:	01 c0       	rjmp	.+2      	; 0x9a <.do_clear_bss_start>

00000098 <.do_clear_bss_loop>:
      98:	1d 92       	st	X+, r1

0000009a <.do_clear_bss_start>:
      9a:	aa 3d       	cpi	r26, 0xDA	; 218
      9c:	b2 07       	cpc	r27, r18
      9e:	e1 f7       	brne	.-8      	; 0x98 <.do_clear_bss_loop>

000000a0 <__do_global_ctors>:
      a0:	10 e0       	ldi	r17, 0x00	; 0
      a2:	c6 e3       	ldi	r28, 0x36	; 54
      a4:	d0 e0       	ldi	r29, 0x00	; 0
      a6:	04 c0       	rjmp	.+8      	; 0xb0 <__do_global_ctors+0x10>
      a8:	21 97       	sbiw	r28, 0x01	; 1
      aa:	fe 01       	movw	r30, r28
      ac:	0e 94 d2 0f 	call	0x1fa4	; 0x1fa4 <__tablejump2__>
      b0:	c4 33       	cpi	r28, 0x34	; 52
      b2:	d1 07       	cpc	r29, r17
      b4:	c9 f7       	brne	.-14     	; 0xa8 <__do_global_ctors+0x8>
      b6:	0e 94 f1 0b 	call	0x17e2	; 0x17e2 <main>
      ba:	0c 94 fd 10 	jmp	0x21fa	; 0x21fa <__do_global_dtors>

000000be <__bad_interrupt>:
      be:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c2 <_ZdlPv>:
      c2:	0c 94 74 10 	jmp	0x20e8	; 0x20e8 <free>

000000c6 <_ZN8CRTTimerC1Ev>:
      c6:	e1 e9       	ldi	r30, 0x91	; 145
      c8:	f1 e0       	ldi	r31, 0x01	; 1
      ca:	11 82       	std	Z+1, r1	; 0x01
      cc:	10 82       	st	Z, r1
      ce:	13 82       	std	Z+3, r1	; 0x03
      d0:	12 82       	std	Z+2, r1	; 0x02
      d2:	15 82       	std	Z+5, r1	; 0x05
      d4:	14 82       	std	Z+4, r1	; 0x04
      d6:	16 82       	std	Z+6, r1	; 0x06
      d8:	17 82       	std	Z+7, r1	; 0x07
      da:	38 96       	adiw	r30, 0x08	; 8
      dc:	81 e0       	ldi	r24, 0x01	; 1
      de:	e1 3d       	cpi	r30, 0xD1	; 209
      e0:	f8 07       	cpc	r31, r24
      e2:	99 f7       	brne	.-26     	; 0xca <_ZN8CRTTimerC1Ev+0x4>
      e4:	84 b5       	in	r24, 0x24	; 36
      e6:	82 60       	ori	r24, 0x02	; 2
      e8:	84 bd       	out	0x24, r24	; 36
      ea:	89 ef       	ldi	r24, 0xF9	; 249
      ec:	87 bd       	out	0x27, r24	; 39
      ee:	83 e0       	ldi	r24, 0x03	; 3
      f0:	85 bd       	out	0x25, r24	; 37
      f2:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
      f6:	82 60       	ori	r24, 0x02	; 2
      f8:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
      fc:	78 94       	sei
      fe:	08 95       	ret

00000100 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>:
     100:	f8 94       	cli
     102:	e1 e9       	ldi	r30, 0x91	; 145
     104:	f1 e0       	ldi	r31, 0x01	; 1
     106:	90 e0       	ldi	r25, 0x00	; 0
     108:	80 e0       	ldi	r24, 0x00	; 0
     10a:	a0 81       	ld	r26, Z
     10c:	b1 81       	ldd	r27, Z+1	; 0x01
     10e:	ab 2b       	or	r26, r27
     110:	91 f4       	brne	.+36     	; 0x136 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x36>
     112:	fc 01       	movw	r30, r24
     114:	33 e0       	ldi	r19, 0x03	; 3
     116:	ee 0f       	add	r30, r30
     118:	ff 1f       	adc	r31, r31
     11a:	3a 95       	dec	r19
     11c:	e1 f7       	brne	.-8      	; 0x116 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x16>
     11e:	ef 56       	subi	r30, 0x6F	; 111
     120:	fe 4f       	sbci	r31, 0xFE	; 254
     122:	71 83       	std	Z+1, r23	; 0x01
     124:	60 83       	st	Z, r22
     126:	53 83       	std	Z+3, r21	; 0x03
     128:	42 83       	std	Z+2, r20	; 0x02
     12a:	55 83       	std	Z+5, r21	; 0x05
     12c:	44 83       	std	Z+4, r20	; 0x04
     12e:	16 82       	std	Z+6, r1	; 0x06
     130:	27 83       	std	Z+7, r18	; 0x07
     132:	78 94       	sei
     134:	08 95       	ret
     136:	01 96       	adiw	r24, 0x01	; 1
     138:	38 96       	adiw	r30, 0x08	; 8
     13a:	88 30       	cpi	r24, 0x08	; 8
     13c:	91 05       	cpc	r25, r1
     13e:	29 f7       	brne	.-54     	; 0x10a <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0xa>
     140:	8f ef       	ldi	r24, 0xFF	; 255
     142:	9f ef       	ldi	r25, 0xFF	; 255
     144:	f6 cf       	rjmp	.-20     	; 0x132 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x32>

00000146 <_ZN8CRTTimer4mainEv>:
     146:	cf 93       	push	r28
     148:	df 93       	push	r29
     14a:	c1 e9       	ldi	r28, 0x91	; 145
     14c:	d1 e0       	ldi	r29, 0x01	; 1
     14e:	88 81       	ld	r24, Y
     150:	99 81       	ldd	r25, Y+1	; 0x01
     152:	00 97       	sbiw	r24, 0x00	; 0
     154:	71 f0       	breq	.+28     	; 0x172 <_ZN8CRTTimer4mainEv+0x2c>
     156:	2e 81       	ldd	r18, Y+6	; 0x06
     158:	22 23       	and	r18, r18
     15a:	59 f0       	breq	.+22     	; 0x172 <_ZN8CRTTimer4mainEv+0x2c>
     15c:	1e 82       	std	Y+6, r1	; 0x06
     15e:	2f 81       	ldd	r18, Y+7	; 0x07
     160:	21 11       	cpse	r18, r1
     162:	07 c0       	rjmp	.+14     	; 0x172 <_ZN8CRTTimer4mainEv+0x2c>
     164:	dc 01       	movw	r26, r24
     166:	ed 91       	ld	r30, X+
     168:	fc 91       	ld	r31, X
     16a:	04 80       	ldd	r0, Z+4	; 0x04
     16c:	f5 81       	ldd	r31, Z+5	; 0x05
     16e:	e0 2d       	mov	r30, r0
     170:	09 95       	icall
     172:	28 96       	adiw	r28, 0x08	; 8
     174:	b1 e0       	ldi	r27, 0x01	; 1
     176:	c1 3d       	cpi	r28, 0xD1	; 209
     178:	db 07       	cpc	r29, r27
     17a:	49 f7       	brne	.-46     	; 0x14e <_ZN8CRTTimer4mainEv+0x8>
     17c:	df 91       	pop	r29
     17e:	cf 91       	pop	r28
     180:	08 95       	ret

00000182 <_ZN8CRTTimer8get_timeEv>:
     182:	cf 93       	push	r28
     184:	df 93       	push	r29
     186:	00 d0       	rcall	.+0      	; 0x188 <_ZN8CRTTimer8get_timeEv+0x6>
     188:	00 d0       	rcall	.+0      	; 0x18a <_ZN8CRTTimer8get_timeEv+0x8>
     18a:	cd b7       	in	r28, 0x3d	; 61
     18c:	de b7       	in	r29, 0x3e	; 62
     18e:	f8 94       	cli
     190:	80 91 d1 01 	lds	r24, 0x01D1	; 0x8001d1 <g_rt_time>
     194:	90 91 d2 01 	lds	r25, 0x01D2	; 0x8001d2 <g_rt_time+0x1>
     198:	a0 91 d3 01 	lds	r26, 0x01D3	; 0x8001d3 <g_rt_time+0x2>
     19c:	b0 91 d4 01 	lds	r27, 0x01D4	; 0x8001d4 <g_rt_time+0x3>
     1a0:	89 83       	std	Y+1, r24	; 0x01
     1a2:	9a 83       	std	Y+2, r25	; 0x02
     1a4:	ab 83       	std	Y+3, r26	; 0x03
     1a6:	bc 83       	std	Y+4, r27	; 0x04
     1a8:	78 94       	sei
     1aa:	69 81       	ldd	r22, Y+1	; 0x01
     1ac:	7a 81       	ldd	r23, Y+2	; 0x02
     1ae:	8b 81       	ldd	r24, Y+3	; 0x03
     1b0:	9c 81       	ldd	r25, Y+4	; 0x04
     1b2:	0f 90       	pop	r0
     1b4:	0f 90       	pop	r0
     1b6:	0f 90       	pop	r0
     1b8:	0f 90       	pop	r0
     1ba:	df 91       	pop	r29
     1bc:	cf 91       	pop	r28
     1be:	08 95       	ret

000001c0 <__vector_14>:
     1c0:	1f 92       	push	r1
     1c2:	0f 92       	push	r0
     1c4:	0f b6       	in	r0, 0x3f	; 63
     1c6:	0f 92       	push	r0
     1c8:	11 24       	eor	r1, r1
     1ca:	2f 93       	push	r18
     1cc:	3f 93       	push	r19
     1ce:	4f 93       	push	r20
     1d0:	5f 93       	push	r21
     1d2:	6f 93       	push	r22
     1d4:	7f 93       	push	r23
     1d6:	8f 93       	push	r24
     1d8:	9f 93       	push	r25
     1da:	af 93       	push	r26
     1dc:	bf 93       	push	r27
     1de:	cf 93       	push	r28
     1e0:	df 93       	push	r29
     1e2:	ef 93       	push	r30
     1e4:	ff 93       	push	r31
     1e6:	c1 e9       	ldi	r28, 0x91	; 145
     1e8:	d1 e0       	ldi	r29, 0x01	; 1
     1ea:	8c 81       	ldd	r24, Y+4	; 0x04
     1ec:	9d 81       	ldd	r25, Y+5	; 0x05
     1ee:	00 97       	sbiw	r24, 0x00	; 0
     1f0:	71 f1       	breq	.+92     	; 0x24e <__vector_14+0x8e>
     1f2:	01 97       	sbiw	r24, 0x01	; 1
     1f4:	9d 83       	std	Y+5, r25	; 0x05
     1f6:	8c 83       	std	Y+4, r24	; 0x04
     1f8:	28 96       	adiw	r28, 0x08	; 8
     1fa:	b1 e0       	ldi	r27, 0x01	; 1
     1fc:	c1 3d       	cpi	r28, 0xD1	; 209
     1fe:	db 07       	cpc	r29, r27
     200:	a1 f7       	brne	.-24     	; 0x1ea <__vector_14+0x2a>
     202:	80 91 d1 01 	lds	r24, 0x01D1	; 0x8001d1 <g_rt_time>
     206:	90 91 d2 01 	lds	r25, 0x01D2	; 0x8001d2 <g_rt_time+0x1>
     20a:	a0 91 d3 01 	lds	r26, 0x01D3	; 0x8001d3 <g_rt_time+0x2>
     20e:	b0 91 d4 01 	lds	r27, 0x01D4	; 0x8001d4 <g_rt_time+0x3>
     212:	01 96       	adiw	r24, 0x01	; 1
     214:	a1 1d       	adc	r26, r1
     216:	b1 1d       	adc	r27, r1
     218:	80 93 d1 01 	sts	0x01D1, r24	; 0x8001d1 <g_rt_time>
     21c:	90 93 d2 01 	sts	0x01D2, r25	; 0x8001d2 <g_rt_time+0x1>
     220:	a0 93 d3 01 	sts	0x01D3, r26	; 0x8001d3 <g_rt_time+0x2>
     224:	b0 93 d4 01 	sts	0x01D4, r27	; 0x8001d4 <g_rt_time+0x3>
     228:	ff 91       	pop	r31
     22a:	ef 91       	pop	r30
     22c:	df 91       	pop	r29
     22e:	cf 91       	pop	r28
     230:	bf 91       	pop	r27
     232:	af 91       	pop	r26
     234:	9f 91       	pop	r25
     236:	8f 91       	pop	r24
     238:	7f 91       	pop	r23
     23a:	6f 91       	pop	r22
     23c:	5f 91       	pop	r21
     23e:	4f 91       	pop	r20
     240:	3f 91       	pop	r19
     242:	2f 91       	pop	r18
     244:	0f 90       	pop	r0
     246:	0f be       	out	0x3f, r0	; 63
     248:	0f 90       	pop	r0
     24a:	1f 90       	pop	r1
     24c:	18 95       	reti
     24e:	8a 81       	ldd	r24, Y+2	; 0x02
     250:	9b 81       	ldd	r25, Y+3	; 0x03
     252:	9d 83       	std	Y+5, r25	; 0x05
     254:	8c 83       	std	Y+4, r24	; 0x04
     256:	8e 81       	ldd	r24, Y+6	; 0x06
     258:	8f 3f       	cpi	r24, 0xFF	; 255
     25a:	11 f0       	breq	.+4      	; 0x260 <__vector_14+0xa0>
     25c:	8f 5f       	subi	r24, 0xFF	; 255
     25e:	8e 83       	std	Y+6, r24	; 0x06
     260:	8f 81       	ldd	r24, Y+7	; 0x07
     262:	88 23       	and	r24, r24
     264:	49 f2       	breq	.-110    	; 0x1f8 <__vector_14+0x38>
     266:	88 81       	ld	r24, Y
     268:	99 81       	ldd	r25, Y+1	; 0x01
     26a:	dc 01       	movw	r26, r24
     26c:	ed 91       	ld	r30, X+
     26e:	fc 91       	ld	r31, X
     270:	04 80       	ldd	r0, Z+4	; 0x04
     272:	f5 81       	ldd	r31, Z+5	; 0x05
     274:	e0 2d       	mov	r30, r0
     276:	09 95       	icall
     278:	bf cf       	rjmp	.-130    	; 0x1f8 <__vector_14+0x38>

0000027a <_GLOBAL__sub_I_g_rt_time>:
     27a:	80 e9       	ldi	r24, 0x90	; 144
     27c:	91 e0       	ldi	r25, 0x01	; 1
     27e:	0c 94 63 00 	jmp	0xc6	; 0xc6 <_ZN8CRTTimerC1Ev>

00000282 <_ZN9CTerminal4putsEPKc>:
     282:	0f 93       	push	r16
     284:	1f 93       	push	r17
     286:	cf 93       	push	r28
     288:	df 93       	push	r29
     28a:	8c 01       	movw	r16, r24
     28c:	eb 01       	movw	r28, r22
     28e:	69 91       	ld	r22, Y+
     290:	66 23       	and	r22, r22
     292:	21 f0       	breq	.+8      	; 0x29c <_ZN9CTerminal4putsEPKc+0x1a>
     294:	c8 01       	movw	r24, r16
     296:	0e 94 24 02 	call	0x448	; 0x448 <_ZN6CUSART8put_charEc>
     29a:	f9 cf       	rjmp	.-14     	; 0x28e <_ZN9CTerminal4putsEPKc+0xc>
     29c:	df 91       	pop	r29
     29e:	cf 91       	pop	r28
     2a0:	1f 91       	pop	r17
     2a2:	0f 91       	pop	r16
     2a4:	08 95       	ret

000002a6 <_ZN9CTerminal4putiEl>:
     2a6:	8f 92       	push	r8
     2a8:	9f 92       	push	r9
     2aa:	af 92       	push	r10
     2ac:	bf 92       	push	r11
     2ae:	cf 92       	push	r12
     2b0:	df 92       	push	r13
     2b2:	ef 92       	push	r14
     2b4:	ff 92       	push	r15
     2b6:	0f 93       	push	r16
     2b8:	1f 93       	push	r17
     2ba:	cf 93       	push	r28
     2bc:	df 93       	push	r29
     2be:	cd b7       	in	r28, 0x3d	; 61
     2c0:	de b7       	in	r29, 0x3e	; 62
     2c2:	2c 97       	sbiw	r28, 0x0c	; 12
     2c4:	0f b6       	in	r0, 0x3f	; 63
     2c6:	f8 94       	cli
     2c8:	de bf       	out	0x3e, r29	; 62
     2ca:	0f be       	out	0x3f, r0	; 63
     2cc:	cd bf       	out	0x3d, r28	; 61
     2ce:	7c 01       	movw	r14, r24
     2d0:	00 e0       	ldi	r16, 0x00	; 0
     2d2:	77 ff       	sbrs	r23, 7
     2d4:	08 c0       	rjmp	.+16     	; 0x2e6 <_ZN9CTerminal4putiEl+0x40>
     2d6:	70 95       	com	r23
     2d8:	60 95       	com	r22
     2da:	50 95       	com	r21
     2dc:	41 95       	neg	r20
     2de:	5f 4f       	sbci	r21, 0xFF	; 255
     2e0:	6f 4f       	sbci	r22, 0xFF	; 255
     2e2:	7f 4f       	sbci	r23, 0xFF	; 255
     2e4:	01 e0       	ldi	r16, 0x01	; 1
     2e6:	1c 86       	std	Y+12, r1	; 0x0c
     2e8:	1a e0       	ldi	r17, 0x0A	; 10
     2ea:	9a e0       	ldi	r25, 0x0A	; 10
     2ec:	89 2e       	mov	r8, r25
     2ee:	91 2c       	mov	r9, r1
     2f0:	a1 2c       	mov	r10, r1
     2f2:	b1 2c       	mov	r11, r1
     2f4:	cc 24       	eor	r12, r12
     2f6:	c3 94       	inc	r12
     2f8:	d1 2c       	mov	r13, r1
     2fa:	cc 0e       	add	r12, r28
     2fc:	dd 1e       	adc	r13, r29
     2fe:	c1 0e       	add	r12, r17
     300:	d1 1c       	adc	r13, r1
     302:	cb 01       	movw	r24, r22
     304:	ba 01       	movw	r22, r20
     306:	a5 01       	movw	r20, r10
     308:	94 01       	movw	r18, r8
     30a:	0e 94 b3 0f 	call	0x1f66	; 0x1f66 <__divmodsi4>
     30e:	94 2f       	mov	r25, r20
     310:	85 2f       	mov	r24, r21
     312:	60 5d       	subi	r22, 0xD0	; 208
     314:	f6 01       	movw	r30, r12
     316:	60 83       	st	Z, r22
     318:	a9 01       	movw	r20, r18
     31a:	69 2f       	mov	r22, r25
     31c:	78 2f       	mov	r23, r24
     31e:	8f ef       	ldi	r24, 0xFF	; 255
     320:	81 0f       	add	r24, r17
     322:	41 15       	cp	r20, r1
     324:	51 05       	cpc	r21, r1
     326:	61 05       	cpc	r22, r1
     328:	71 05       	cpc	r23, r1
     32a:	39 f5       	brne	.+78     	; 0x37a <_ZN9CTerminal4putiEl+0xd4>
     32c:	00 23       	and	r16, r16
     32e:	49 f0       	breq	.+18     	; 0x342 <_ZN9CTerminal4putiEl+0x9c>
     330:	e1 e0       	ldi	r30, 0x01	; 1
     332:	f0 e0       	ldi	r31, 0x00	; 0
     334:	ec 0f       	add	r30, r28
     336:	fd 1f       	adc	r31, r29
     338:	e8 0f       	add	r30, r24
     33a:	f1 1d       	adc	r31, r1
     33c:	9d e2       	ldi	r25, 0x2D	; 45
     33e:	90 83       	st	Z, r25
     340:	18 2f       	mov	r17, r24
     342:	61 e0       	ldi	r22, 0x01	; 1
     344:	70 e0       	ldi	r23, 0x00	; 0
     346:	6c 0f       	add	r22, r28
     348:	7d 1f       	adc	r23, r29
     34a:	61 0f       	add	r22, r17
     34c:	71 1d       	adc	r23, r1
     34e:	c7 01       	movw	r24, r14
     350:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
     354:	2c 96       	adiw	r28, 0x0c	; 12
     356:	0f b6       	in	r0, 0x3f	; 63
     358:	f8 94       	cli
     35a:	de bf       	out	0x3e, r29	; 62
     35c:	0f be       	out	0x3f, r0	; 63
     35e:	cd bf       	out	0x3d, r28	; 61
     360:	df 91       	pop	r29
     362:	cf 91       	pop	r28
     364:	1f 91       	pop	r17
     366:	0f 91       	pop	r16
     368:	ff 90       	pop	r15
     36a:	ef 90       	pop	r14
     36c:	df 90       	pop	r13
     36e:	cf 90       	pop	r12
     370:	bf 90       	pop	r11
     372:	af 90       	pop	r10
     374:	9f 90       	pop	r9
     376:	8f 90       	pop	r8
     378:	08 95       	ret
     37a:	18 2f       	mov	r17, r24
     37c:	bb cf       	rjmp	.-138    	; 0x2f4 <_ZN9CTerminal4putiEl+0x4e>

0000037e <_ZN9CTerminal5putuiEm>:
     37e:	8f 92       	push	r8
     380:	9f 92       	push	r9
     382:	af 92       	push	r10
     384:	bf 92       	push	r11
     386:	cf 92       	push	r12
     388:	df 92       	push	r13
     38a:	ef 92       	push	r14
     38c:	ff 92       	push	r15
     38e:	1f 93       	push	r17
     390:	cf 93       	push	r28
     392:	df 93       	push	r29
     394:	cd b7       	in	r28, 0x3d	; 61
     396:	de b7       	in	r29, 0x3e	; 62
     398:	2c 97       	sbiw	r28, 0x0c	; 12
     39a:	0f b6       	in	r0, 0x3f	; 63
     39c:	f8 94       	cli
     39e:	de bf       	out	0x3e, r29	; 62
     3a0:	0f be       	out	0x3f, r0	; 63
     3a2:	cd bf       	out	0x3d, r28	; 61
     3a4:	6c 01       	movw	r12, r24
     3a6:	1c 86       	std	Y+12, r1	; 0x0c
     3a8:	1a e0       	ldi	r17, 0x0A	; 10
     3aa:	9a e0       	ldi	r25, 0x0A	; 10
     3ac:	89 2e       	mov	r8, r25
     3ae:	91 2c       	mov	r9, r1
     3b0:	a1 2c       	mov	r10, r1
     3b2:	b1 2c       	mov	r11, r1
     3b4:	ee 24       	eor	r14, r14
     3b6:	e3 94       	inc	r14
     3b8:	f1 2c       	mov	r15, r1
     3ba:	ec 0e       	add	r14, r28
     3bc:	fd 1e       	adc	r15, r29
     3be:	e1 0e       	add	r14, r17
     3c0:	f1 1c       	adc	r15, r1
     3c2:	cb 01       	movw	r24, r22
     3c4:	ba 01       	movw	r22, r20
     3c6:	a5 01       	movw	r20, r10
     3c8:	94 01       	movw	r18, r8
     3ca:	0e 94 91 0f 	call	0x1f22	; 0x1f22 <__udivmodsi4>
     3ce:	94 2f       	mov	r25, r20
     3d0:	85 2f       	mov	r24, r21
     3d2:	60 5d       	subi	r22, 0xD0	; 208
     3d4:	f7 01       	movw	r30, r14
     3d6:	60 83       	st	Z, r22
     3d8:	a9 01       	movw	r20, r18
     3da:	69 2f       	mov	r22, r25
     3dc:	78 2f       	mov	r23, r24
     3de:	11 50       	subi	r17, 0x01	; 1
     3e0:	41 15       	cp	r20, r1
     3e2:	51 05       	cpc	r21, r1
     3e4:	61 05       	cpc	r22, r1
     3e6:	71 05       	cpc	r23, r1
     3e8:	29 f7       	brne	.-54     	; 0x3b4 <_ZN9CTerminal5putuiEm+0x36>
     3ea:	b7 01       	movw	r22, r14
     3ec:	c6 01       	movw	r24, r12
     3ee:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
     3f2:	2c 96       	adiw	r28, 0x0c	; 12
     3f4:	0f b6       	in	r0, 0x3f	; 63
     3f6:	f8 94       	cli
     3f8:	de bf       	out	0x3e, r29	; 62
     3fa:	0f be       	out	0x3f, r0	; 63
     3fc:	cd bf       	out	0x3d, r28	; 61
     3fe:	df 91       	pop	r29
     400:	cf 91       	pop	r28
     402:	1f 91       	pop	r17
     404:	ff 90       	pop	r15
     406:	ef 90       	pop	r14
     408:	df 90       	pop	r13
     40a:	cf 90       	pop	r12
     40c:	bf 90       	pop	r11
     40e:	af 90       	pop	r10
     410:	9f 90       	pop	r9
     412:	8f 90       	pop	r8
     414:	08 95       	ret

00000416 <_GLOBAL__sub_I_terminal>:
     416:	85 ed       	ldi	r24, 0xD5	; 213
     418:	91 e0       	ldi	r25, 0x01	; 1
     41a:	0c 94 13 02 	jmp	0x426	; 0x426 <_ZN6CUSARTC1Ev>

0000041e <_GLOBAL__sub_D_terminal>:
     41e:	85 ed       	ldi	r24, 0xD5	; 213
     420:	91 e0       	ldi	r25, 0x01	; 1
     422:	0c 94 23 02 	jmp	0x446	; 0x446 <_ZN6CUSARTD1Ev>

00000426 <_ZN6CUSARTC1Ev>:
     426:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     42a:	87 e6       	ldi	r24, 0x67	; 103
     42c:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     430:	e2 ec       	ldi	r30, 0xC2	; 194
     432:	f0 e0       	ldi	r31, 0x00	; 0
     434:	80 81       	ld	r24, Z
     436:	86 60       	ori	r24, 0x06	; 6
     438:	80 83       	st	Z, r24
     43a:	e1 ec       	ldi	r30, 0xC1	; 193
     43c:	f0 e0       	ldi	r31, 0x00	; 0
     43e:	80 81       	ld	r24, Z
     440:	88 61       	ori	r24, 0x18	; 24
     442:	80 83       	st	Z, r24
     444:	08 95       	ret

00000446 <_ZN6CUSARTD1Ev>:
     446:	08 95       	ret

00000448 <_ZN6CUSART8put_charEc>:
     448:	6a 30       	cpi	r22, 0x0A	; 10
     44a:	49 f4       	brne	.+18     	; 0x45e <_ZN6CUSART8put_charEc+0x16>
     44c:	8d e0       	ldi	r24, 0x0D	; 13
     44e:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     452:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     456:	85 fd       	sbrc	r24, 5
     458:	02 c0       	rjmp	.+4      	; 0x45e <_ZN6CUSART8put_charEc+0x16>
     45a:	00 00       	nop
     45c:	fa cf       	rjmp	.-12     	; 0x452 <_ZN6CUSART8put_charEc+0xa>
     45e:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     462:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     466:	85 fd       	sbrc	r24, 5
     468:	02 c0       	rjmp	.+4      	; 0x46e <_ZN6CUSART8put_charEc+0x26>
     46a:	00 00       	nop
     46c:	fa cf       	rjmp	.-12     	; 0x462 <_ZN6CUSART8put_charEc+0x1a>
     46e:	08 95       	ret

00000470 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE9write_regEhhh>:
     470:	ff 92       	push	r15
     472:	0f 93       	push	r16
     474:	1f 93       	push	r17
     476:	cf 93       	push	r28
     478:	df 93       	push	r29
     47a:	ec 01       	movw	r28, r24
     47c:	f6 2e       	mov	r15, r22
     47e:	04 2f       	mov	r16, r20
     480:	12 2f       	mov	r17, r18
     482:	e8 81       	ld	r30, Y
     484:	f9 81       	ldd	r31, Y+1	; 0x01
     486:	01 90       	ld	r0, Z+
     488:	f0 81       	ld	r31, Z
     48a:	e0 2d       	mov	r30, r0
     48c:	09 95       	icall
     48e:	e8 81       	ld	r30, Y
     490:	f9 81       	ldd	r31, Y+1	; 0x01
     492:	04 80       	ldd	r0, Z+4	; 0x04
     494:	f5 81       	ldd	r31, Z+5	; 0x05
     496:	e0 2d       	mov	r30, r0
     498:	6f 2d       	mov	r22, r15
     49a:	ce 01       	movw	r24, r28
     49c:	09 95       	icall
     49e:	e8 81       	ld	r30, Y
     4a0:	f9 81       	ldd	r31, Y+1	; 0x01
     4a2:	04 80       	ldd	r0, Z+4	; 0x04
     4a4:	f5 81       	ldd	r31, Z+5	; 0x05
     4a6:	e0 2d       	mov	r30, r0
     4a8:	60 2f       	mov	r22, r16
     4aa:	ce 01       	movw	r24, r28
     4ac:	09 95       	icall
     4ae:	e8 81       	ld	r30, Y
     4b0:	f9 81       	ldd	r31, Y+1	; 0x01
     4b2:	04 80       	ldd	r0, Z+4	; 0x04
     4b4:	f5 81       	ldd	r31, Z+5	; 0x05
     4b6:	e0 2d       	mov	r30, r0
     4b8:	61 2f       	mov	r22, r17
     4ba:	ce 01       	movw	r24, r28
     4bc:	09 95       	icall
     4be:	e8 81       	ld	r30, Y
     4c0:	f9 81       	ldd	r31, Y+1	; 0x01
     4c2:	02 80       	ldd	r0, Z+2	; 0x02
     4c4:	f3 81       	ldd	r31, Z+3	; 0x03
     4c6:	e0 2d       	mov	r30, r0
     4c8:	ce 01       	movw	r24, r28
     4ca:	df 91       	pop	r29
     4cc:	cf 91       	pop	r28
     4ce:	1f 91       	pop	r17
     4d0:	0f 91       	pop	r16
     4d2:	ff 90       	pop	r15
     4d4:	09 94       	ijmp

000004d6 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     4d6:	ef 92       	push	r14
     4d8:	ff 92       	push	r15
     4da:	0f 93       	push	r16
     4dc:	1f 93       	push	r17
     4de:	cf 93       	push	r28
     4e0:	df 93       	push	r29
     4e2:	ec 01       	movw	r28, r24
     4e4:	e6 2e       	mov	r14, r22
     4e6:	f4 2e       	mov	r15, r20
     4e8:	12 2f       	mov	r17, r18
     4ea:	03 2f       	mov	r16, r19
     4ec:	e8 81       	ld	r30, Y
     4ee:	f9 81       	ldd	r31, Y+1	; 0x01
     4f0:	01 90       	ld	r0, Z+
     4f2:	f0 81       	ld	r31, Z
     4f4:	e0 2d       	mov	r30, r0
     4f6:	09 95       	icall
     4f8:	e8 81       	ld	r30, Y
     4fa:	f9 81       	ldd	r31, Y+1	; 0x01
     4fc:	04 80       	ldd	r0, Z+4	; 0x04
     4fe:	f5 81       	ldd	r31, Z+5	; 0x05
     500:	e0 2d       	mov	r30, r0
     502:	6e 2d       	mov	r22, r14
     504:	ce 01       	movw	r24, r28
     506:	09 95       	icall
     508:	e8 81       	ld	r30, Y
     50a:	f9 81       	ldd	r31, Y+1	; 0x01
     50c:	04 80       	ldd	r0, Z+4	; 0x04
     50e:	f5 81       	ldd	r31, Z+5	; 0x05
     510:	e0 2d       	mov	r30, r0
     512:	6f 2d       	mov	r22, r15
     514:	ce 01       	movw	r24, r28
     516:	09 95       	icall
     518:	e8 81       	ld	r30, Y
     51a:	f9 81       	ldd	r31, Y+1	; 0x01
     51c:	04 80       	ldd	r0, Z+4	; 0x04
     51e:	f5 81       	ldd	r31, Z+5	; 0x05
     520:	e0 2d       	mov	r30, r0
     522:	60 2f       	mov	r22, r16
     524:	ce 01       	movw	r24, r28
     526:	09 95       	icall
     528:	e8 81       	ld	r30, Y
     52a:	f9 81       	ldd	r31, Y+1	; 0x01
     52c:	04 80       	ldd	r0, Z+4	; 0x04
     52e:	f5 81       	ldd	r31, Z+5	; 0x05
     530:	e0 2d       	mov	r30, r0
     532:	61 2f       	mov	r22, r17
     534:	ce 01       	movw	r24, r28
     536:	09 95       	icall
     538:	e8 81       	ld	r30, Y
     53a:	f9 81       	ldd	r31, Y+1	; 0x01
     53c:	02 80       	ldd	r0, Z+2	; 0x02
     53e:	f3 81       	ldd	r31, Z+3	; 0x03
     540:	e0 2d       	mov	r30, r0
     542:	ce 01       	movw	r24, r28
     544:	df 91       	pop	r29
     546:	cf 91       	pop	r28
     548:	1f 91       	pop	r17
     54a:	0f 91       	pop	r16
     54c:	ff 90       	pop	r15
     54e:	ef 90       	pop	r14
     550:	09 94       	ijmp

00000552 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     552:	cf 92       	push	r12
     554:	df 92       	push	r13
     556:	ef 92       	push	r14
     558:	ff 92       	push	r15
     55a:	0f 93       	push	r16
     55c:	1f 93       	push	r17
     55e:	cf 93       	push	r28
     560:	df 93       	push	r29
     562:	ec 01       	movw	r28, r24
     564:	e6 2e       	mov	r14, r22
     566:	f4 2e       	mov	r15, r20
     568:	69 01       	movw	r12, r18
     56a:	e8 81       	ld	r30, Y
     56c:	f9 81       	ldd	r31, Y+1	; 0x01
     56e:	01 90       	ld	r0, Z+
     570:	f0 81       	ld	r31, Z
     572:	e0 2d       	mov	r30, r0
     574:	09 95       	icall
     576:	e8 81       	ld	r30, Y
     578:	f9 81       	ldd	r31, Y+1	; 0x01
     57a:	04 80       	ldd	r0, Z+4	; 0x04
     57c:	f5 81       	ldd	r31, Z+5	; 0x05
     57e:	e0 2d       	mov	r30, r0
     580:	6e 2d       	mov	r22, r14
     582:	ce 01       	movw	r24, r28
     584:	09 95       	icall
     586:	e8 81       	ld	r30, Y
     588:	f9 81       	ldd	r31, Y+1	; 0x01
     58a:	04 80       	ldd	r0, Z+4	; 0x04
     58c:	f5 81       	ldd	r31, Z+5	; 0x05
     58e:	e0 2d       	mov	r30, r0
     590:	6f 2d       	mov	r22, r15
     592:	ce 01       	movw	r24, r28
     594:	09 95       	icall
     596:	76 01       	movw	r14, r12
     598:	0c 0d       	add	r16, r12
     59a:	1d 1d       	adc	r17, r13
     59c:	e8 81       	ld	r30, Y
     59e:	f9 81       	ldd	r31, Y+1	; 0x01
     5a0:	e0 16       	cp	r14, r16
     5a2:	f1 06       	cpc	r15, r17
     5a4:	49 f0       	breq	.+18     	; 0x5b8 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     5a6:	d7 01       	movw	r26, r14
     5a8:	6d 91       	ld	r22, X+
     5aa:	7d 01       	movw	r14, r26
     5ac:	04 80       	ldd	r0, Z+4	; 0x04
     5ae:	f5 81       	ldd	r31, Z+5	; 0x05
     5b0:	e0 2d       	mov	r30, r0
     5b2:	ce 01       	movw	r24, r28
     5b4:	09 95       	icall
     5b6:	f2 cf       	rjmp	.-28     	; 0x59c <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     5b8:	02 80       	ldd	r0, Z+2	; 0x02
     5ba:	f3 81       	ldd	r31, Z+3	; 0x03
     5bc:	e0 2d       	mov	r30, r0
     5be:	ce 01       	movw	r24, r28
     5c0:	df 91       	pop	r29
     5c2:	cf 91       	pop	r28
     5c4:	1f 91       	pop	r17
     5c6:	0f 91       	pop	r16
     5c8:	ff 90       	pop	r15
     5ca:	ef 90       	pop	r14
     5cc:	df 90       	pop	r13
     5ce:	cf 90       	pop	r12
     5d0:	09 94       	ijmp

000005d2 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE8read_regEhh>:
     5d2:	0f 93       	push	r16
     5d4:	1f 93       	push	r17
     5d6:	cf 93       	push	r28
     5d8:	df 93       	push	r29
     5da:	ec 01       	movw	r28, r24
     5dc:	16 2f       	mov	r17, r22
     5de:	04 2f       	mov	r16, r20
     5e0:	e8 81       	ld	r30, Y
     5e2:	f9 81       	ldd	r31, Y+1	; 0x01
     5e4:	01 90       	ld	r0, Z+
     5e6:	f0 81       	ld	r31, Z
     5e8:	e0 2d       	mov	r30, r0
     5ea:	09 95       	icall
     5ec:	e8 81       	ld	r30, Y
     5ee:	f9 81       	ldd	r31, Y+1	; 0x01
     5f0:	04 80       	ldd	r0, Z+4	; 0x04
     5f2:	f5 81       	ldd	r31, Z+5	; 0x05
     5f4:	e0 2d       	mov	r30, r0
     5f6:	61 2f       	mov	r22, r17
     5f8:	ce 01       	movw	r24, r28
     5fa:	09 95       	icall
     5fc:	e8 81       	ld	r30, Y
     5fe:	f9 81       	ldd	r31, Y+1	; 0x01
     600:	04 80       	ldd	r0, Z+4	; 0x04
     602:	f5 81       	ldd	r31, Z+5	; 0x05
     604:	e0 2d       	mov	r30, r0
     606:	60 2f       	mov	r22, r16
     608:	ce 01       	movw	r24, r28
     60a:	09 95       	icall
     60c:	e8 81       	ld	r30, Y
     60e:	f9 81       	ldd	r31, Y+1	; 0x01
     610:	01 90       	ld	r0, Z+
     612:	f0 81       	ld	r31, Z
     614:	e0 2d       	mov	r30, r0
     616:	ce 01       	movw	r24, r28
     618:	09 95       	icall
     61a:	61 2f       	mov	r22, r17
     61c:	61 60       	ori	r22, 0x01	; 1
     61e:	e8 81       	ld	r30, Y
     620:	f9 81       	ldd	r31, Y+1	; 0x01
     622:	04 80       	ldd	r0, Z+4	; 0x04
     624:	f5 81       	ldd	r31, Z+5	; 0x05
     626:	e0 2d       	mov	r30, r0
     628:	ce 01       	movw	r24, r28
     62a:	09 95       	icall
     62c:	e8 81       	ld	r30, Y
     62e:	f9 81       	ldd	r31, Y+1	; 0x01
     630:	06 80       	ldd	r0, Z+6	; 0x06
     632:	f7 81       	ldd	r31, Z+7	; 0x07
     634:	e0 2d       	mov	r30, r0
     636:	60 e0       	ldi	r22, 0x00	; 0
     638:	ce 01       	movw	r24, r28
     63a:	09 95       	icall
     63c:	18 2f       	mov	r17, r24
     63e:	e8 81       	ld	r30, Y
     640:	f9 81       	ldd	r31, Y+1	; 0x01
     642:	02 80       	ldd	r0, Z+2	; 0x02
     644:	f3 81       	ldd	r31, Z+3	; 0x03
     646:	e0 2d       	mov	r30, r0
     648:	ce 01       	movw	r24, r28
     64a:	09 95       	icall
     64c:	81 2f       	mov	r24, r17
     64e:	df 91       	pop	r29
     650:	cf 91       	pop	r28
     652:	1f 91       	pop	r17
     654:	0f 91       	pop	r16
     656:	08 95       	ret

00000658 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     658:	0f 93       	push	r16
     65a:	1f 93       	push	r17
     65c:	cf 93       	push	r28
     65e:	df 93       	push	r29
     660:	ec 01       	movw	r28, r24
     662:	16 2f       	mov	r17, r22
     664:	04 2f       	mov	r16, r20
     666:	e8 81       	ld	r30, Y
     668:	f9 81       	ldd	r31, Y+1	; 0x01
     66a:	01 90       	ld	r0, Z+
     66c:	f0 81       	ld	r31, Z
     66e:	e0 2d       	mov	r30, r0
     670:	09 95       	icall
     672:	e8 81       	ld	r30, Y
     674:	f9 81       	ldd	r31, Y+1	; 0x01
     676:	04 80       	ldd	r0, Z+4	; 0x04
     678:	f5 81       	ldd	r31, Z+5	; 0x05
     67a:	e0 2d       	mov	r30, r0
     67c:	61 2f       	mov	r22, r17
     67e:	ce 01       	movw	r24, r28
     680:	09 95       	icall
     682:	e8 81       	ld	r30, Y
     684:	f9 81       	ldd	r31, Y+1	; 0x01
     686:	04 80       	ldd	r0, Z+4	; 0x04
     688:	f5 81       	ldd	r31, Z+5	; 0x05
     68a:	e0 2d       	mov	r30, r0
     68c:	60 2f       	mov	r22, r16
     68e:	ce 01       	movw	r24, r28
     690:	09 95       	icall
     692:	e8 81       	ld	r30, Y
     694:	f9 81       	ldd	r31, Y+1	; 0x01
     696:	01 90       	ld	r0, Z+
     698:	f0 81       	ld	r31, Z
     69a:	e0 2d       	mov	r30, r0
     69c:	ce 01       	movw	r24, r28
     69e:	09 95       	icall
     6a0:	61 2f       	mov	r22, r17
     6a2:	61 60       	ori	r22, 0x01	; 1
     6a4:	e8 81       	ld	r30, Y
     6a6:	f9 81       	ldd	r31, Y+1	; 0x01
     6a8:	04 80       	ldd	r0, Z+4	; 0x04
     6aa:	f5 81       	ldd	r31, Z+5	; 0x05
     6ac:	e0 2d       	mov	r30, r0
     6ae:	ce 01       	movw	r24, r28
     6b0:	09 95       	icall
     6b2:	e8 81       	ld	r30, Y
     6b4:	f9 81       	ldd	r31, Y+1	; 0x01
     6b6:	06 80       	ldd	r0, Z+6	; 0x06
     6b8:	f7 81       	ldd	r31, Z+7	; 0x07
     6ba:	e0 2d       	mov	r30, r0
     6bc:	61 e0       	ldi	r22, 0x01	; 1
     6be:	ce 01       	movw	r24, r28
     6c0:	09 95       	icall
     6c2:	08 2f       	mov	r16, r24
     6c4:	10 e0       	ldi	r17, 0x00	; 0
     6c6:	10 2f       	mov	r17, r16
     6c8:	00 27       	eor	r16, r16
     6ca:	e8 81       	ld	r30, Y
     6cc:	f9 81       	ldd	r31, Y+1	; 0x01
     6ce:	06 80       	ldd	r0, Z+6	; 0x06
     6d0:	f7 81       	ldd	r31, Z+7	; 0x07
     6d2:	e0 2d       	mov	r30, r0
     6d4:	60 e0       	ldi	r22, 0x00	; 0
     6d6:	ce 01       	movw	r24, r28
     6d8:	09 95       	icall
     6da:	08 2b       	or	r16, r24
     6dc:	e8 81       	ld	r30, Y
     6de:	f9 81       	ldd	r31, Y+1	; 0x01
     6e0:	02 80       	ldd	r0, Z+2	; 0x02
     6e2:	f3 81       	ldd	r31, Z+3	; 0x03
     6e4:	e0 2d       	mov	r30, r0
     6e6:	ce 01       	movw	r24, r28
     6e8:	09 95       	icall
     6ea:	c8 01       	movw	r24, r16
     6ec:	df 91       	pop	r29
     6ee:	cf 91       	pop	r28
     6f0:	1f 91       	pop	r17
     6f2:	0f 91       	pop	r16
     6f4:	08 95       	ret

000006f6 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
     6f6:	cf 92       	push	r12
     6f8:	df 92       	push	r13
     6fa:	ef 92       	push	r14
     6fc:	ff 92       	push	r15
     6fe:	0f 93       	push	r16
     700:	1f 93       	push	r17
     702:	cf 93       	push	r28
     704:	df 93       	push	r29
     706:	ec 01       	movw	r28, r24
     708:	f6 2e       	mov	r15, r22
     70a:	e4 2e       	mov	r14, r20
     70c:	69 01       	movw	r12, r18
     70e:	e8 81       	ld	r30, Y
     710:	f9 81       	ldd	r31, Y+1	; 0x01
     712:	01 90       	ld	r0, Z+
     714:	f0 81       	ld	r31, Z
     716:	e0 2d       	mov	r30, r0
     718:	09 95       	icall
     71a:	e8 81       	ld	r30, Y
     71c:	f9 81       	ldd	r31, Y+1	; 0x01
     71e:	04 80       	ldd	r0, Z+4	; 0x04
     720:	f5 81       	ldd	r31, Z+5	; 0x05
     722:	e0 2d       	mov	r30, r0
     724:	6f 2d       	mov	r22, r15
     726:	ce 01       	movw	r24, r28
     728:	09 95       	icall
     72a:	e8 81       	ld	r30, Y
     72c:	f9 81       	ldd	r31, Y+1	; 0x01
     72e:	04 80       	ldd	r0, Z+4	; 0x04
     730:	f5 81       	ldd	r31, Z+5	; 0x05
     732:	e0 2d       	mov	r30, r0
     734:	6e 2d       	mov	r22, r14
     736:	ce 01       	movw	r24, r28
     738:	09 95       	icall
     73a:	e8 81       	ld	r30, Y
     73c:	f9 81       	ldd	r31, Y+1	; 0x01
     73e:	01 90       	ld	r0, Z+
     740:	f0 81       	ld	r31, Z
     742:	e0 2d       	mov	r30, r0
     744:	ce 01       	movw	r24, r28
     746:	09 95       	icall
     748:	6f 2d       	mov	r22, r15
     74a:	61 60       	ori	r22, 0x01	; 1
     74c:	e8 81       	ld	r30, Y
     74e:	f9 81       	ldd	r31, Y+1	; 0x01
     750:	04 80       	ldd	r0, Z+4	; 0x04
     752:	f5 81       	ldd	r31, Z+5	; 0x05
     754:	e0 2d       	mov	r30, r0
     756:	ce 01       	movw	r24, r28
     758:	09 95       	icall
     75a:	76 01       	movw	r14, r12
     75c:	0c 0d       	add	r16, r12
     75e:	1d 1d       	adc	r17, r13
     760:	e8 81       	ld	r30, Y
     762:	f9 81       	ldd	r31, Y+1	; 0x01
     764:	e0 16       	cp	r14, r16
     766:	f1 06       	cpc	r15, r17
     768:	51 f0       	breq	.+20     	; 0x77e <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
     76a:	06 80       	ldd	r0, Z+6	; 0x06
     76c:	f7 81       	ldd	r31, Z+7	; 0x07
     76e:	e0 2d       	mov	r30, r0
     770:	61 e0       	ldi	r22, 0x01	; 1
     772:	ce 01       	movw	r24, r28
     774:	09 95       	icall
     776:	f7 01       	movw	r30, r14
     778:	81 93       	st	Z+, r24
     77a:	7f 01       	movw	r14, r30
     77c:	f1 cf       	rjmp	.-30     	; 0x760 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
     77e:	02 80       	ldd	r0, Z+2	; 0x02
     780:	f3 81       	ldd	r31, Z+3	; 0x03
     782:	e0 2d       	mov	r30, r0
     784:	ce 01       	movw	r24, r28
     786:	df 91       	pop	r29
     788:	cf 91       	pop	r28
     78a:	1f 91       	pop	r17
     78c:	0f 91       	pop	r16
     78e:	ff 90       	pop	r15
     790:	ef 90       	pop	r14
     792:	df 90       	pop	r13
     794:	cf 90       	pop	r12
     796:	09 94       	ijmp

00000798 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE9write_regEhhh>:
     798:	ff 92       	push	r15
     79a:	0f 93       	push	r16
     79c:	1f 93       	push	r17
     79e:	cf 93       	push	r28
     7a0:	df 93       	push	r29
     7a2:	ec 01       	movw	r28, r24
     7a4:	f6 2e       	mov	r15, r22
     7a6:	04 2f       	mov	r16, r20
     7a8:	12 2f       	mov	r17, r18
     7aa:	e8 81       	ld	r30, Y
     7ac:	f9 81       	ldd	r31, Y+1	; 0x01
     7ae:	01 90       	ld	r0, Z+
     7b0:	f0 81       	ld	r31, Z
     7b2:	e0 2d       	mov	r30, r0
     7b4:	09 95       	icall
     7b6:	e8 81       	ld	r30, Y
     7b8:	f9 81       	ldd	r31, Y+1	; 0x01
     7ba:	04 80       	ldd	r0, Z+4	; 0x04
     7bc:	f5 81       	ldd	r31, Z+5	; 0x05
     7be:	e0 2d       	mov	r30, r0
     7c0:	6f 2d       	mov	r22, r15
     7c2:	ce 01       	movw	r24, r28
     7c4:	09 95       	icall
     7c6:	e8 81       	ld	r30, Y
     7c8:	f9 81       	ldd	r31, Y+1	; 0x01
     7ca:	04 80       	ldd	r0, Z+4	; 0x04
     7cc:	f5 81       	ldd	r31, Z+5	; 0x05
     7ce:	e0 2d       	mov	r30, r0
     7d0:	60 2f       	mov	r22, r16
     7d2:	ce 01       	movw	r24, r28
     7d4:	09 95       	icall
     7d6:	e8 81       	ld	r30, Y
     7d8:	f9 81       	ldd	r31, Y+1	; 0x01
     7da:	04 80       	ldd	r0, Z+4	; 0x04
     7dc:	f5 81       	ldd	r31, Z+5	; 0x05
     7de:	e0 2d       	mov	r30, r0
     7e0:	61 2f       	mov	r22, r17
     7e2:	ce 01       	movw	r24, r28
     7e4:	09 95       	icall
     7e6:	e8 81       	ld	r30, Y
     7e8:	f9 81       	ldd	r31, Y+1	; 0x01
     7ea:	02 80       	ldd	r0, Z+2	; 0x02
     7ec:	f3 81       	ldd	r31, Z+3	; 0x03
     7ee:	e0 2d       	mov	r30, r0
     7f0:	ce 01       	movw	r24, r28
     7f2:	df 91       	pop	r29
     7f4:	cf 91       	pop	r28
     7f6:	1f 91       	pop	r17
     7f8:	0f 91       	pop	r16
     7fa:	ff 90       	pop	r15
     7fc:	09 94       	ijmp

000007fe <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     7fe:	ef 92       	push	r14
     800:	ff 92       	push	r15
     802:	0f 93       	push	r16
     804:	1f 93       	push	r17
     806:	cf 93       	push	r28
     808:	df 93       	push	r29
     80a:	ec 01       	movw	r28, r24
     80c:	e6 2e       	mov	r14, r22
     80e:	f4 2e       	mov	r15, r20
     810:	12 2f       	mov	r17, r18
     812:	03 2f       	mov	r16, r19
     814:	e8 81       	ld	r30, Y
     816:	f9 81       	ldd	r31, Y+1	; 0x01
     818:	01 90       	ld	r0, Z+
     81a:	f0 81       	ld	r31, Z
     81c:	e0 2d       	mov	r30, r0
     81e:	09 95       	icall
     820:	e8 81       	ld	r30, Y
     822:	f9 81       	ldd	r31, Y+1	; 0x01
     824:	04 80       	ldd	r0, Z+4	; 0x04
     826:	f5 81       	ldd	r31, Z+5	; 0x05
     828:	e0 2d       	mov	r30, r0
     82a:	6e 2d       	mov	r22, r14
     82c:	ce 01       	movw	r24, r28
     82e:	09 95       	icall
     830:	e8 81       	ld	r30, Y
     832:	f9 81       	ldd	r31, Y+1	; 0x01
     834:	04 80       	ldd	r0, Z+4	; 0x04
     836:	f5 81       	ldd	r31, Z+5	; 0x05
     838:	e0 2d       	mov	r30, r0
     83a:	6f 2d       	mov	r22, r15
     83c:	ce 01       	movw	r24, r28
     83e:	09 95       	icall
     840:	e8 81       	ld	r30, Y
     842:	f9 81       	ldd	r31, Y+1	; 0x01
     844:	04 80       	ldd	r0, Z+4	; 0x04
     846:	f5 81       	ldd	r31, Z+5	; 0x05
     848:	e0 2d       	mov	r30, r0
     84a:	60 2f       	mov	r22, r16
     84c:	ce 01       	movw	r24, r28
     84e:	09 95       	icall
     850:	e8 81       	ld	r30, Y
     852:	f9 81       	ldd	r31, Y+1	; 0x01
     854:	04 80       	ldd	r0, Z+4	; 0x04
     856:	f5 81       	ldd	r31, Z+5	; 0x05
     858:	e0 2d       	mov	r30, r0
     85a:	61 2f       	mov	r22, r17
     85c:	ce 01       	movw	r24, r28
     85e:	09 95       	icall
     860:	e8 81       	ld	r30, Y
     862:	f9 81       	ldd	r31, Y+1	; 0x01
     864:	02 80       	ldd	r0, Z+2	; 0x02
     866:	f3 81       	ldd	r31, Z+3	; 0x03
     868:	e0 2d       	mov	r30, r0
     86a:	ce 01       	movw	r24, r28
     86c:	df 91       	pop	r29
     86e:	cf 91       	pop	r28
     870:	1f 91       	pop	r17
     872:	0f 91       	pop	r16
     874:	ff 90       	pop	r15
     876:	ef 90       	pop	r14
     878:	09 94       	ijmp

0000087a <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     87a:	cf 92       	push	r12
     87c:	df 92       	push	r13
     87e:	ef 92       	push	r14
     880:	ff 92       	push	r15
     882:	0f 93       	push	r16
     884:	1f 93       	push	r17
     886:	cf 93       	push	r28
     888:	df 93       	push	r29
     88a:	ec 01       	movw	r28, r24
     88c:	e6 2e       	mov	r14, r22
     88e:	f4 2e       	mov	r15, r20
     890:	69 01       	movw	r12, r18
     892:	e8 81       	ld	r30, Y
     894:	f9 81       	ldd	r31, Y+1	; 0x01
     896:	01 90       	ld	r0, Z+
     898:	f0 81       	ld	r31, Z
     89a:	e0 2d       	mov	r30, r0
     89c:	09 95       	icall
     89e:	e8 81       	ld	r30, Y
     8a0:	f9 81       	ldd	r31, Y+1	; 0x01
     8a2:	04 80       	ldd	r0, Z+4	; 0x04
     8a4:	f5 81       	ldd	r31, Z+5	; 0x05
     8a6:	e0 2d       	mov	r30, r0
     8a8:	6e 2d       	mov	r22, r14
     8aa:	ce 01       	movw	r24, r28
     8ac:	09 95       	icall
     8ae:	e8 81       	ld	r30, Y
     8b0:	f9 81       	ldd	r31, Y+1	; 0x01
     8b2:	04 80       	ldd	r0, Z+4	; 0x04
     8b4:	f5 81       	ldd	r31, Z+5	; 0x05
     8b6:	e0 2d       	mov	r30, r0
     8b8:	6f 2d       	mov	r22, r15
     8ba:	ce 01       	movw	r24, r28
     8bc:	09 95       	icall
     8be:	76 01       	movw	r14, r12
     8c0:	0c 0d       	add	r16, r12
     8c2:	1d 1d       	adc	r17, r13
     8c4:	e8 81       	ld	r30, Y
     8c6:	f9 81       	ldd	r31, Y+1	; 0x01
     8c8:	e0 16       	cp	r14, r16
     8ca:	f1 06       	cpc	r15, r17
     8cc:	49 f0       	breq	.+18     	; 0x8e0 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     8ce:	d7 01       	movw	r26, r14
     8d0:	6d 91       	ld	r22, X+
     8d2:	7d 01       	movw	r14, r26
     8d4:	04 80       	ldd	r0, Z+4	; 0x04
     8d6:	f5 81       	ldd	r31, Z+5	; 0x05
     8d8:	e0 2d       	mov	r30, r0
     8da:	ce 01       	movw	r24, r28
     8dc:	09 95       	icall
     8de:	f2 cf       	rjmp	.-28     	; 0x8c4 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     8e0:	02 80       	ldd	r0, Z+2	; 0x02
     8e2:	f3 81       	ldd	r31, Z+3	; 0x03
     8e4:	e0 2d       	mov	r30, r0
     8e6:	ce 01       	movw	r24, r28
     8e8:	df 91       	pop	r29
     8ea:	cf 91       	pop	r28
     8ec:	1f 91       	pop	r17
     8ee:	0f 91       	pop	r16
     8f0:	ff 90       	pop	r15
     8f2:	ef 90       	pop	r14
     8f4:	df 90       	pop	r13
     8f6:	cf 90       	pop	r12
     8f8:	09 94       	ijmp

000008fa <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE8read_regEhh>:
     8fa:	0f 93       	push	r16
     8fc:	1f 93       	push	r17
     8fe:	cf 93       	push	r28
     900:	df 93       	push	r29
     902:	ec 01       	movw	r28, r24
     904:	16 2f       	mov	r17, r22
     906:	04 2f       	mov	r16, r20
     908:	e8 81       	ld	r30, Y
     90a:	f9 81       	ldd	r31, Y+1	; 0x01
     90c:	01 90       	ld	r0, Z+
     90e:	f0 81       	ld	r31, Z
     910:	e0 2d       	mov	r30, r0
     912:	09 95       	icall
     914:	e8 81       	ld	r30, Y
     916:	f9 81       	ldd	r31, Y+1	; 0x01
     918:	04 80       	ldd	r0, Z+4	; 0x04
     91a:	f5 81       	ldd	r31, Z+5	; 0x05
     91c:	e0 2d       	mov	r30, r0
     91e:	61 2f       	mov	r22, r17
     920:	ce 01       	movw	r24, r28
     922:	09 95       	icall
     924:	e8 81       	ld	r30, Y
     926:	f9 81       	ldd	r31, Y+1	; 0x01
     928:	04 80       	ldd	r0, Z+4	; 0x04
     92a:	f5 81       	ldd	r31, Z+5	; 0x05
     92c:	e0 2d       	mov	r30, r0
     92e:	60 2f       	mov	r22, r16
     930:	ce 01       	movw	r24, r28
     932:	09 95       	icall
     934:	e8 81       	ld	r30, Y
     936:	f9 81       	ldd	r31, Y+1	; 0x01
     938:	01 90       	ld	r0, Z+
     93a:	f0 81       	ld	r31, Z
     93c:	e0 2d       	mov	r30, r0
     93e:	ce 01       	movw	r24, r28
     940:	09 95       	icall
     942:	61 2f       	mov	r22, r17
     944:	61 60       	ori	r22, 0x01	; 1
     946:	e8 81       	ld	r30, Y
     948:	f9 81       	ldd	r31, Y+1	; 0x01
     94a:	04 80       	ldd	r0, Z+4	; 0x04
     94c:	f5 81       	ldd	r31, Z+5	; 0x05
     94e:	e0 2d       	mov	r30, r0
     950:	ce 01       	movw	r24, r28
     952:	09 95       	icall
     954:	e8 81       	ld	r30, Y
     956:	f9 81       	ldd	r31, Y+1	; 0x01
     958:	06 80       	ldd	r0, Z+6	; 0x06
     95a:	f7 81       	ldd	r31, Z+7	; 0x07
     95c:	e0 2d       	mov	r30, r0
     95e:	60 e0       	ldi	r22, 0x00	; 0
     960:	ce 01       	movw	r24, r28
     962:	09 95       	icall
     964:	18 2f       	mov	r17, r24
     966:	e8 81       	ld	r30, Y
     968:	f9 81       	ldd	r31, Y+1	; 0x01
     96a:	02 80       	ldd	r0, Z+2	; 0x02
     96c:	f3 81       	ldd	r31, Z+3	; 0x03
     96e:	e0 2d       	mov	r30, r0
     970:	ce 01       	movw	r24, r28
     972:	09 95       	icall
     974:	81 2f       	mov	r24, r17
     976:	df 91       	pop	r29
     978:	cf 91       	pop	r28
     97a:	1f 91       	pop	r17
     97c:	0f 91       	pop	r16
     97e:	08 95       	ret

00000980 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     980:	0f 93       	push	r16
     982:	1f 93       	push	r17
     984:	cf 93       	push	r28
     986:	df 93       	push	r29
     988:	ec 01       	movw	r28, r24
     98a:	16 2f       	mov	r17, r22
     98c:	04 2f       	mov	r16, r20
     98e:	e8 81       	ld	r30, Y
     990:	f9 81       	ldd	r31, Y+1	; 0x01
     992:	01 90       	ld	r0, Z+
     994:	f0 81       	ld	r31, Z
     996:	e0 2d       	mov	r30, r0
     998:	09 95       	icall
     99a:	e8 81       	ld	r30, Y
     99c:	f9 81       	ldd	r31, Y+1	; 0x01
     99e:	04 80       	ldd	r0, Z+4	; 0x04
     9a0:	f5 81       	ldd	r31, Z+5	; 0x05
     9a2:	e0 2d       	mov	r30, r0
     9a4:	61 2f       	mov	r22, r17
     9a6:	ce 01       	movw	r24, r28
     9a8:	09 95       	icall
     9aa:	e8 81       	ld	r30, Y
     9ac:	f9 81       	ldd	r31, Y+1	; 0x01
     9ae:	04 80       	ldd	r0, Z+4	; 0x04
     9b0:	f5 81       	ldd	r31, Z+5	; 0x05
     9b2:	e0 2d       	mov	r30, r0
     9b4:	60 2f       	mov	r22, r16
     9b6:	ce 01       	movw	r24, r28
     9b8:	09 95       	icall
     9ba:	e8 81       	ld	r30, Y
     9bc:	f9 81       	ldd	r31, Y+1	; 0x01
     9be:	01 90       	ld	r0, Z+
     9c0:	f0 81       	ld	r31, Z
     9c2:	e0 2d       	mov	r30, r0
     9c4:	ce 01       	movw	r24, r28
     9c6:	09 95       	icall
     9c8:	61 2f       	mov	r22, r17
     9ca:	61 60       	ori	r22, 0x01	; 1
     9cc:	e8 81       	ld	r30, Y
     9ce:	f9 81       	ldd	r31, Y+1	; 0x01
     9d0:	04 80       	ldd	r0, Z+4	; 0x04
     9d2:	f5 81       	ldd	r31, Z+5	; 0x05
     9d4:	e0 2d       	mov	r30, r0
     9d6:	ce 01       	movw	r24, r28
     9d8:	09 95       	icall
     9da:	e8 81       	ld	r30, Y
     9dc:	f9 81       	ldd	r31, Y+1	; 0x01
     9de:	06 80       	ldd	r0, Z+6	; 0x06
     9e0:	f7 81       	ldd	r31, Z+7	; 0x07
     9e2:	e0 2d       	mov	r30, r0
     9e4:	61 e0       	ldi	r22, 0x01	; 1
     9e6:	ce 01       	movw	r24, r28
     9e8:	09 95       	icall
     9ea:	08 2f       	mov	r16, r24
     9ec:	10 e0       	ldi	r17, 0x00	; 0
     9ee:	10 2f       	mov	r17, r16
     9f0:	00 27       	eor	r16, r16
     9f2:	e8 81       	ld	r30, Y
     9f4:	f9 81       	ldd	r31, Y+1	; 0x01
     9f6:	06 80       	ldd	r0, Z+6	; 0x06
     9f8:	f7 81       	ldd	r31, Z+7	; 0x07
     9fa:	e0 2d       	mov	r30, r0
     9fc:	60 e0       	ldi	r22, 0x00	; 0
     9fe:	ce 01       	movw	r24, r28
     a00:	09 95       	icall
     a02:	08 2b       	or	r16, r24
     a04:	e8 81       	ld	r30, Y
     a06:	f9 81       	ldd	r31, Y+1	; 0x01
     a08:	02 80       	ldd	r0, Z+2	; 0x02
     a0a:	f3 81       	ldd	r31, Z+3	; 0x03
     a0c:	e0 2d       	mov	r30, r0
     a0e:	ce 01       	movw	r24, r28
     a10:	09 95       	icall
     a12:	c8 01       	movw	r24, r16
     a14:	df 91       	pop	r29
     a16:	cf 91       	pop	r28
     a18:	1f 91       	pop	r17
     a1a:	0f 91       	pop	r16
     a1c:	08 95       	ret

00000a1e <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
     a1e:	cf 92       	push	r12
     a20:	df 92       	push	r13
     a22:	ef 92       	push	r14
     a24:	ff 92       	push	r15
     a26:	0f 93       	push	r16
     a28:	1f 93       	push	r17
     a2a:	cf 93       	push	r28
     a2c:	df 93       	push	r29
     a2e:	ec 01       	movw	r28, r24
     a30:	f6 2e       	mov	r15, r22
     a32:	e4 2e       	mov	r14, r20
     a34:	69 01       	movw	r12, r18
     a36:	e8 81       	ld	r30, Y
     a38:	f9 81       	ldd	r31, Y+1	; 0x01
     a3a:	01 90       	ld	r0, Z+
     a3c:	f0 81       	ld	r31, Z
     a3e:	e0 2d       	mov	r30, r0
     a40:	09 95       	icall
     a42:	e8 81       	ld	r30, Y
     a44:	f9 81       	ldd	r31, Y+1	; 0x01
     a46:	04 80       	ldd	r0, Z+4	; 0x04
     a48:	f5 81       	ldd	r31, Z+5	; 0x05
     a4a:	e0 2d       	mov	r30, r0
     a4c:	6f 2d       	mov	r22, r15
     a4e:	ce 01       	movw	r24, r28
     a50:	09 95       	icall
     a52:	e8 81       	ld	r30, Y
     a54:	f9 81       	ldd	r31, Y+1	; 0x01
     a56:	04 80       	ldd	r0, Z+4	; 0x04
     a58:	f5 81       	ldd	r31, Z+5	; 0x05
     a5a:	e0 2d       	mov	r30, r0
     a5c:	6e 2d       	mov	r22, r14
     a5e:	ce 01       	movw	r24, r28
     a60:	09 95       	icall
     a62:	e8 81       	ld	r30, Y
     a64:	f9 81       	ldd	r31, Y+1	; 0x01
     a66:	01 90       	ld	r0, Z+
     a68:	f0 81       	ld	r31, Z
     a6a:	e0 2d       	mov	r30, r0
     a6c:	ce 01       	movw	r24, r28
     a6e:	09 95       	icall
     a70:	6f 2d       	mov	r22, r15
     a72:	61 60       	ori	r22, 0x01	; 1
     a74:	e8 81       	ld	r30, Y
     a76:	f9 81       	ldd	r31, Y+1	; 0x01
     a78:	04 80       	ldd	r0, Z+4	; 0x04
     a7a:	f5 81       	ldd	r31, Z+5	; 0x05
     a7c:	e0 2d       	mov	r30, r0
     a7e:	ce 01       	movw	r24, r28
     a80:	09 95       	icall
     a82:	76 01       	movw	r14, r12
     a84:	0c 0d       	add	r16, r12
     a86:	1d 1d       	adc	r17, r13
     a88:	e8 81       	ld	r30, Y
     a8a:	f9 81       	ldd	r31, Y+1	; 0x01
     a8c:	e0 16       	cp	r14, r16
     a8e:	f1 06       	cpc	r15, r17
     a90:	51 f0       	breq	.+20     	; 0xaa6 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
     a92:	06 80       	ldd	r0, Z+6	; 0x06
     a94:	f7 81       	ldd	r31, Z+7	; 0x07
     a96:	e0 2d       	mov	r30, r0
     a98:	61 e0       	ldi	r22, 0x01	; 1
     a9a:	ce 01       	movw	r24, r28
     a9c:	09 95       	icall
     a9e:	f7 01       	movw	r30, r14
     aa0:	81 93       	st	Z+, r24
     aa2:	7f 01       	movw	r14, r30
     aa4:	f1 cf       	rjmp	.-30     	; 0xa88 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
     aa6:	02 80       	ldd	r0, Z+2	; 0x02
     aa8:	f3 81       	ldd	r31, Z+3	; 0x03
     aaa:	e0 2d       	mov	r30, r0
     aac:	ce 01       	movw	r24, r28
     aae:	df 91       	pop	r29
     ab0:	cf 91       	pop	r28
     ab2:	1f 91       	pop	r17
     ab4:	0f 91       	pop	r16
     ab6:	ff 90       	pop	r15
     ab8:	ef 90       	pop	r14
     aba:	df 90       	pop	r13
     abc:	cf 90       	pop	r12
     abe:	09 94       	ijmp

00000ac0 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE9write_regEhhh>:
     ac0:	ff 92       	push	r15
     ac2:	0f 93       	push	r16
     ac4:	1f 93       	push	r17
     ac6:	cf 93       	push	r28
     ac8:	df 93       	push	r29
     aca:	ec 01       	movw	r28, r24
     acc:	f6 2e       	mov	r15, r22
     ace:	04 2f       	mov	r16, r20
     ad0:	12 2f       	mov	r17, r18
     ad2:	e8 81       	ld	r30, Y
     ad4:	f9 81       	ldd	r31, Y+1	; 0x01
     ad6:	01 90       	ld	r0, Z+
     ad8:	f0 81       	ld	r31, Z
     ada:	e0 2d       	mov	r30, r0
     adc:	09 95       	icall
     ade:	e8 81       	ld	r30, Y
     ae0:	f9 81       	ldd	r31, Y+1	; 0x01
     ae2:	04 80       	ldd	r0, Z+4	; 0x04
     ae4:	f5 81       	ldd	r31, Z+5	; 0x05
     ae6:	e0 2d       	mov	r30, r0
     ae8:	6f 2d       	mov	r22, r15
     aea:	ce 01       	movw	r24, r28
     aec:	09 95       	icall
     aee:	e8 81       	ld	r30, Y
     af0:	f9 81       	ldd	r31, Y+1	; 0x01
     af2:	04 80       	ldd	r0, Z+4	; 0x04
     af4:	f5 81       	ldd	r31, Z+5	; 0x05
     af6:	e0 2d       	mov	r30, r0
     af8:	60 2f       	mov	r22, r16
     afa:	ce 01       	movw	r24, r28
     afc:	09 95       	icall
     afe:	e8 81       	ld	r30, Y
     b00:	f9 81       	ldd	r31, Y+1	; 0x01
     b02:	04 80       	ldd	r0, Z+4	; 0x04
     b04:	f5 81       	ldd	r31, Z+5	; 0x05
     b06:	e0 2d       	mov	r30, r0
     b08:	61 2f       	mov	r22, r17
     b0a:	ce 01       	movw	r24, r28
     b0c:	09 95       	icall
     b0e:	e8 81       	ld	r30, Y
     b10:	f9 81       	ldd	r31, Y+1	; 0x01
     b12:	02 80       	ldd	r0, Z+2	; 0x02
     b14:	f3 81       	ldd	r31, Z+3	; 0x03
     b16:	e0 2d       	mov	r30, r0
     b18:	ce 01       	movw	r24, r28
     b1a:	df 91       	pop	r29
     b1c:	cf 91       	pop	r28
     b1e:	1f 91       	pop	r17
     b20:	0f 91       	pop	r16
     b22:	ff 90       	pop	r15
     b24:	09 94       	ijmp

00000b26 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     b26:	ef 92       	push	r14
     b28:	ff 92       	push	r15
     b2a:	0f 93       	push	r16
     b2c:	1f 93       	push	r17
     b2e:	cf 93       	push	r28
     b30:	df 93       	push	r29
     b32:	ec 01       	movw	r28, r24
     b34:	e6 2e       	mov	r14, r22
     b36:	f4 2e       	mov	r15, r20
     b38:	12 2f       	mov	r17, r18
     b3a:	03 2f       	mov	r16, r19
     b3c:	e8 81       	ld	r30, Y
     b3e:	f9 81       	ldd	r31, Y+1	; 0x01
     b40:	01 90       	ld	r0, Z+
     b42:	f0 81       	ld	r31, Z
     b44:	e0 2d       	mov	r30, r0
     b46:	09 95       	icall
     b48:	e8 81       	ld	r30, Y
     b4a:	f9 81       	ldd	r31, Y+1	; 0x01
     b4c:	04 80       	ldd	r0, Z+4	; 0x04
     b4e:	f5 81       	ldd	r31, Z+5	; 0x05
     b50:	e0 2d       	mov	r30, r0
     b52:	6e 2d       	mov	r22, r14
     b54:	ce 01       	movw	r24, r28
     b56:	09 95       	icall
     b58:	e8 81       	ld	r30, Y
     b5a:	f9 81       	ldd	r31, Y+1	; 0x01
     b5c:	04 80       	ldd	r0, Z+4	; 0x04
     b5e:	f5 81       	ldd	r31, Z+5	; 0x05
     b60:	e0 2d       	mov	r30, r0
     b62:	6f 2d       	mov	r22, r15
     b64:	ce 01       	movw	r24, r28
     b66:	09 95       	icall
     b68:	e8 81       	ld	r30, Y
     b6a:	f9 81       	ldd	r31, Y+1	; 0x01
     b6c:	04 80       	ldd	r0, Z+4	; 0x04
     b6e:	f5 81       	ldd	r31, Z+5	; 0x05
     b70:	e0 2d       	mov	r30, r0
     b72:	60 2f       	mov	r22, r16
     b74:	ce 01       	movw	r24, r28
     b76:	09 95       	icall
     b78:	e8 81       	ld	r30, Y
     b7a:	f9 81       	ldd	r31, Y+1	; 0x01
     b7c:	04 80       	ldd	r0, Z+4	; 0x04
     b7e:	f5 81       	ldd	r31, Z+5	; 0x05
     b80:	e0 2d       	mov	r30, r0
     b82:	61 2f       	mov	r22, r17
     b84:	ce 01       	movw	r24, r28
     b86:	09 95       	icall
     b88:	e8 81       	ld	r30, Y
     b8a:	f9 81       	ldd	r31, Y+1	; 0x01
     b8c:	02 80       	ldd	r0, Z+2	; 0x02
     b8e:	f3 81       	ldd	r31, Z+3	; 0x03
     b90:	e0 2d       	mov	r30, r0
     b92:	ce 01       	movw	r24, r28
     b94:	df 91       	pop	r29
     b96:	cf 91       	pop	r28
     b98:	1f 91       	pop	r17
     b9a:	0f 91       	pop	r16
     b9c:	ff 90       	pop	r15
     b9e:	ef 90       	pop	r14
     ba0:	09 94       	ijmp

00000ba2 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     ba2:	cf 92       	push	r12
     ba4:	df 92       	push	r13
     ba6:	ef 92       	push	r14
     ba8:	ff 92       	push	r15
     baa:	0f 93       	push	r16
     bac:	1f 93       	push	r17
     bae:	cf 93       	push	r28
     bb0:	df 93       	push	r29
     bb2:	ec 01       	movw	r28, r24
     bb4:	e6 2e       	mov	r14, r22
     bb6:	f4 2e       	mov	r15, r20
     bb8:	69 01       	movw	r12, r18
     bba:	e8 81       	ld	r30, Y
     bbc:	f9 81       	ldd	r31, Y+1	; 0x01
     bbe:	01 90       	ld	r0, Z+
     bc0:	f0 81       	ld	r31, Z
     bc2:	e0 2d       	mov	r30, r0
     bc4:	09 95       	icall
     bc6:	e8 81       	ld	r30, Y
     bc8:	f9 81       	ldd	r31, Y+1	; 0x01
     bca:	04 80       	ldd	r0, Z+4	; 0x04
     bcc:	f5 81       	ldd	r31, Z+5	; 0x05
     bce:	e0 2d       	mov	r30, r0
     bd0:	6e 2d       	mov	r22, r14
     bd2:	ce 01       	movw	r24, r28
     bd4:	09 95       	icall
     bd6:	e8 81       	ld	r30, Y
     bd8:	f9 81       	ldd	r31, Y+1	; 0x01
     bda:	04 80       	ldd	r0, Z+4	; 0x04
     bdc:	f5 81       	ldd	r31, Z+5	; 0x05
     bde:	e0 2d       	mov	r30, r0
     be0:	6f 2d       	mov	r22, r15
     be2:	ce 01       	movw	r24, r28
     be4:	09 95       	icall
     be6:	76 01       	movw	r14, r12
     be8:	0c 0d       	add	r16, r12
     bea:	1d 1d       	adc	r17, r13
     bec:	e8 81       	ld	r30, Y
     bee:	f9 81       	ldd	r31, Y+1	; 0x01
     bf0:	e0 16       	cp	r14, r16
     bf2:	f1 06       	cpc	r15, r17
     bf4:	49 f0       	breq	.+18     	; 0xc08 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     bf6:	d7 01       	movw	r26, r14
     bf8:	6d 91       	ld	r22, X+
     bfa:	7d 01       	movw	r14, r26
     bfc:	04 80       	ldd	r0, Z+4	; 0x04
     bfe:	f5 81       	ldd	r31, Z+5	; 0x05
     c00:	e0 2d       	mov	r30, r0
     c02:	ce 01       	movw	r24, r28
     c04:	09 95       	icall
     c06:	f2 cf       	rjmp	.-28     	; 0xbec <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     c08:	02 80       	ldd	r0, Z+2	; 0x02
     c0a:	f3 81       	ldd	r31, Z+3	; 0x03
     c0c:	e0 2d       	mov	r30, r0
     c0e:	ce 01       	movw	r24, r28
     c10:	df 91       	pop	r29
     c12:	cf 91       	pop	r28
     c14:	1f 91       	pop	r17
     c16:	0f 91       	pop	r16
     c18:	ff 90       	pop	r15
     c1a:	ef 90       	pop	r14
     c1c:	df 90       	pop	r13
     c1e:	cf 90       	pop	r12
     c20:	09 94       	ijmp

00000c22 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE8read_regEhh>:
     c22:	0f 93       	push	r16
     c24:	1f 93       	push	r17
     c26:	cf 93       	push	r28
     c28:	df 93       	push	r29
     c2a:	ec 01       	movw	r28, r24
     c2c:	16 2f       	mov	r17, r22
     c2e:	04 2f       	mov	r16, r20
     c30:	e8 81       	ld	r30, Y
     c32:	f9 81       	ldd	r31, Y+1	; 0x01
     c34:	01 90       	ld	r0, Z+
     c36:	f0 81       	ld	r31, Z
     c38:	e0 2d       	mov	r30, r0
     c3a:	09 95       	icall
     c3c:	e8 81       	ld	r30, Y
     c3e:	f9 81       	ldd	r31, Y+1	; 0x01
     c40:	04 80       	ldd	r0, Z+4	; 0x04
     c42:	f5 81       	ldd	r31, Z+5	; 0x05
     c44:	e0 2d       	mov	r30, r0
     c46:	61 2f       	mov	r22, r17
     c48:	ce 01       	movw	r24, r28
     c4a:	09 95       	icall
     c4c:	e8 81       	ld	r30, Y
     c4e:	f9 81       	ldd	r31, Y+1	; 0x01
     c50:	04 80       	ldd	r0, Z+4	; 0x04
     c52:	f5 81       	ldd	r31, Z+5	; 0x05
     c54:	e0 2d       	mov	r30, r0
     c56:	60 2f       	mov	r22, r16
     c58:	ce 01       	movw	r24, r28
     c5a:	09 95       	icall
     c5c:	e8 81       	ld	r30, Y
     c5e:	f9 81       	ldd	r31, Y+1	; 0x01
     c60:	01 90       	ld	r0, Z+
     c62:	f0 81       	ld	r31, Z
     c64:	e0 2d       	mov	r30, r0
     c66:	ce 01       	movw	r24, r28
     c68:	09 95       	icall
     c6a:	61 2f       	mov	r22, r17
     c6c:	61 60       	ori	r22, 0x01	; 1
     c6e:	e8 81       	ld	r30, Y
     c70:	f9 81       	ldd	r31, Y+1	; 0x01
     c72:	04 80       	ldd	r0, Z+4	; 0x04
     c74:	f5 81       	ldd	r31, Z+5	; 0x05
     c76:	e0 2d       	mov	r30, r0
     c78:	ce 01       	movw	r24, r28
     c7a:	09 95       	icall
     c7c:	e8 81       	ld	r30, Y
     c7e:	f9 81       	ldd	r31, Y+1	; 0x01
     c80:	06 80       	ldd	r0, Z+6	; 0x06
     c82:	f7 81       	ldd	r31, Z+7	; 0x07
     c84:	e0 2d       	mov	r30, r0
     c86:	60 e0       	ldi	r22, 0x00	; 0
     c88:	ce 01       	movw	r24, r28
     c8a:	09 95       	icall
     c8c:	18 2f       	mov	r17, r24
     c8e:	e8 81       	ld	r30, Y
     c90:	f9 81       	ldd	r31, Y+1	; 0x01
     c92:	02 80       	ldd	r0, Z+2	; 0x02
     c94:	f3 81       	ldd	r31, Z+3	; 0x03
     c96:	e0 2d       	mov	r30, r0
     c98:	ce 01       	movw	r24, r28
     c9a:	09 95       	icall
     c9c:	81 2f       	mov	r24, r17
     c9e:	df 91       	pop	r29
     ca0:	cf 91       	pop	r28
     ca2:	1f 91       	pop	r17
     ca4:	0f 91       	pop	r16
     ca6:	08 95       	ret

00000ca8 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     ca8:	0f 93       	push	r16
     caa:	1f 93       	push	r17
     cac:	cf 93       	push	r28
     cae:	df 93       	push	r29
     cb0:	ec 01       	movw	r28, r24
     cb2:	16 2f       	mov	r17, r22
     cb4:	04 2f       	mov	r16, r20
     cb6:	e8 81       	ld	r30, Y
     cb8:	f9 81       	ldd	r31, Y+1	; 0x01
     cba:	01 90       	ld	r0, Z+
     cbc:	f0 81       	ld	r31, Z
     cbe:	e0 2d       	mov	r30, r0
     cc0:	09 95       	icall
     cc2:	e8 81       	ld	r30, Y
     cc4:	f9 81       	ldd	r31, Y+1	; 0x01
     cc6:	04 80       	ldd	r0, Z+4	; 0x04
     cc8:	f5 81       	ldd	r31, Z+5	; 0x05
     cca:	e0 2d       	mov	r30, r0
     ccc:	61 2f       	mov	r22, r17
     cce:	ce 01       	movw	r24, r28
     cd0:	09 95       	icall
     cd2:	e8 81       	ld	r30, Y
     cd4:	f9 81       	ldd	r31, Y+1	; 0x01
     cd6:	04 80       	ldd	r0, Z+4	; 0x04
     cd8:	f5 81       	ldd	r31, Z+5	; 0x05
     cda:	e0 2d       	mov	r30, r0
     cdc:	60 2f       	mov	r22, r16
     cde:	ce 01       	movw	r24, r28
     ce0:	09 95       	icall
     ce2:	e8 81       	ld	r30, Y
     ce4:	f9 81       	ldd	r31, Y+1	; 0x01
     ce6:	01 90       	ld	r0, Z+
     ce8:	f0 81       	ld	r31, Z
     cea:	e0 2d       	mov	r30, r0
     cec:	ce 01       	movw	r24, r28
     cee:	09 95       	icall
     cf0:	61 2f       	mov	r22, r17
     cf2:	61 60       	ori	r22, 0x01	; 1
     cf4:	e8 81       	ld	r30, Y
     cf6:	f9 81       	ldd	r31, Y+1	; 0x01
     cf8:	04 80       	ldd	r0, Z+4	; 0x04
     cfa:	f5 81       	ldd	r31, Z+5	; 0x05
     cfc:	e0 2d       	mov	r30, r0
     cfe:	ce 01       	movw	r24, r28
     d00:	09 95       	icall
     d02:	e8 81       	ld	r30, Y
     d04:	f9 81       	ldd	r31, Y+1	; 0x01
     d06:	06 80       	ldd	r0, Z+6	; 0x06
     d08:	f7 81       	ldd	r31, Z+7	; 0x07
     d0a:	e0 2d       	mov	r30, r0
     d0c:	61 e0       	ldi	r22, 0x01	; 1
     d0e:	ce 01       	movw	r24, r28
     d10:	09 95       	icall
     d12:	08 2f       	mov	r16, r24
     d14:	10 e0       	ldi	r17, 0x00	; 0
     d16:	10 2f       	mov	r17, r16
     d18:	00 27       	eor	r16, r16
     d1a:	e8 81       	ld	r30, Y
     d1c:	f9 81       	ldd	r31, Y+1	; 0x01
     d1e:	06 80       	ldd	r0, Z+6	; 0x06
     d20:	f7 81       	ldd	r31, Z+7	; 0x07
     d22:	e0 2d       	mov	r30, r0
     d24:	60 e0       	ldi	r22, 0x00	; 0
     d26:	ce 01       	movw	r24, r28
     d28:	09 95       	icall
     d2a:	08 2b       	or	r16, r24
     d2c:	e8 81       	ld	r30, Y
     d2e:	f9 81       	ldd	r31, Y+1	; 0x01
     d30:	02 80       	ldd	r0, Z+2	; 0x02
     d32:	f3 81       	ldd	r31, Z+3	; 0x03
     d34:	e0 2d       	mov	r30, r0
     d36:	ce 01       	movw	r24, r28
     d38:	09 95       	icall
     d3a:	c8 01       	movw	r24, r16
     d3c:	df 91       	pop	r29
     d3e:	cf 91       	pop	r28
     d40:	1f 91       	pop	r17
     d42:	0f 91       	pop	r16
     d44:	08 95       	ret

00000d46 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
     d46:	cf 92       	push	r12
     d48:	df 92       	push	r13
     d4a:	ef 92       	push	r14
     d4c:	ff 92       	push	r15
     d4e:	0f 93       	push	r16
     d50:	1f 93       	push	r17
     d52:	cf 93       	push	r28
     d54:	df 93       	push	r29
     d56:	ec 01       	movw	r28, r24
     d58:	f6 2e       	mov	r15, r22
     d5a:	e4 2e       	mov	r14, r20
     d5c:	69 01       	movw	r12, r18
     d5e:	e8 81       	ld	r30, Y
     d60:	f9 81       	ldd	r31, Y+1	; 0x01
     d62:	01 90       	ld	r0, Z+
     d64:	f0 81       	ld	r31, Z
     d66:	e0 2d       	mov	r30, r0
     d68:	09 95       	icall
     d6a:	e8 81       	ld	r30, Y
     d6c:	f9 81       	ldd	r31, Y+1	; 0x01
     d6e:	04 80       	ldd	r0, Z+4	; 0x04
     d70:	f5 81       	ldd	r31, Z+5	; 0x05
     d72:	e0 2d       	mov	r30, r0
     d74:	6f 2d       	mov	r22, r15
     d76:	ce 01       	movw	r24, r28
     d78:	09 95       	icall
     d7a:	e8 81       	ld	r30, Y
     d7c:	f9 81       	ldd	r31, Y+1	; 0x01
     d7e:	04 80       	ldd	r0, Z+4	; 0x04
     d80:	f5 81       	ldd	r31, Z+5	; 0x05
     d82:	e0 2d       	mov	r30, r0
     d84:	6e 2d       	mov	r22, r14
     d86:	ce 01       	movw	r24, r28
     d88:	09 95       	icall
     d8a:	e8 81       	ld	r30, Y
     d8c:	f9 81       	ldd	r31, Y+1	; 0x01
     d8e:	01 90       	ld	r0, Z+
     d90:	f0 81       	ld	r31, Z
     d92:	e0 2d       	mov	r30, r0
     d94:	ce 01       	movw	r24, r28
     d96:	09 95       	icall
     d98:	6f 2d       	mov	r22, r15
     d9a:	61 60       	ori	r22, 0x01	; 1
     d9c:	e8 81       	ld	r30, Y
     d9e:	f9 81       	ldd	r31, Y+1	; 0x01
     da0:	04 80       	ldd	r0, Z+4	; 0x04
     da2:	f5 81       	ldd	r31, Z+5	; 0x05
     da4:	e0 2d       	mov	r30, r0
     da6:	ce 01       	movw	r24, r28
     da8:	09 95       	icall
     daa:	76 01       	movw	r14, r12
     dac:	0c 0d       	add	r16, r12
     dae:	1d 1d       	adc	r17, r13
     db0:	e8 81       	ld	r30, Y
     db2:	f9 81       	ldd	r31, Y+1	; 0x01
     db4:	e0 16       	cp	r14, r16
     db6:	f1 06       	cpc	r15, r17
     db8:	51 f0       	breq	.+20     	; 0xdce <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
     dba:	06 80       	ldd	r0, Z+6	; 0x06
     dbc:	f7 81       	ldd	r31, Z+7	; 0x07
     dbe:	e0 2d       	mov	r30, r0
     dc0:	61 e0       	ldi	r22, 0x01	; 1
     dc2:	ce 01       	movw	r24, r28
     dc4:	09 95       	icall
     dc6:	f7 01       	movw	r30, r14
     dc8:	81 93       	st	Z+, r24
     dca:	7f 01       	movw	r14, r30
     dcc:	f1 cf       	rjmp	.-30     	; 0xdb0 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
     dce:	02 80       	ldd	r0, Z+2	; 0x02
     dd0:	f3 81       	ldd	r31, Z+3	; 0x03
     dd2:	e0 2d       	mov	r30, r0
     dd4:	ce 01       	movw	r24, r28
     dd6:	df 91       	pop	r29
     dd8:	cf 91       	pop	r28
     dda:	1f 91       	pop	r17
     ddc:	0f 91       	pop	r16
     dde:	ff 90       	pop	r15
     de0:	ef 90       	pop	r14
     de2:	df 90       	pop	r13
     de4:	cf 90       	pop	r12
     de6:	09 94       	ijmp

00000de8 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE9write_regEhhh>:
     de8:	ff 92       	push	r15
     dea:	0f 93       	push	r16
     dec:	1f 93       	push	r17
     dee:	cf 93       	push	r28
     df0:	df 93       	push	r29
     df2:	ec 01       	movw	r28, r24
     df4:	f6 2e       	mov	r15, r22
     df6:	04 2f       	mov	r16, r20
     df8:	12 2f       	mov	r17, r18
     dfa:	e8 81       	ld	r30, Y
     dfc:	f9 81       	ldd	r31, Y+1	; 0x01
     dfe:	01 90       	ld	r0, Z+
     e00:	f0 81       	ld	r31, Z
     e02:	e0 2d       	mov	r30, r0
     e04:	09 95       	icall
     e06:	e8 81       	ld	r30, Y
     e08:	f9 81       	ldd	r31, Y+1	; 0x01
     e0a:	04 80       	ldd	r0, Z+4	; 0x04
     e0c:	f5 81       	ldd	r31, Z+5	; 0x05
     e0e:	e0 2d       	mov	r30, r0
     e10:	6f 2d       	mov	r22, r15
     e12:	ce 01       	movw	r24, r28
     e14:	09 95       	icall
     e16:	e8 81       	ld	r30, Y
     e18:	f9 81       	ldd	r31, Y+1	; 0x01
     e1a:	04 80       	ldd	r0, Z+4	; 0x04
     e1c:	f5 81       	ldd	r31, Z+5	; 0x05
     e1e:	e0 2d       	mov	r30, r0
     e20:	60 2f       	mov	r22, r16
     e22:	ce 01       	movw	r24, r28
     e24:	09 95       	icall
     e26:	e8 81       	ld	r30, Y
     e28:	f9 81       	ldd	r31, Y+1	; 0x01
     e2a:	04 80       	ldd	r0, Z+4	; 0x04
     e2c:	f5 81       	ldd	r31, Z+5	; 0x05
     e2e:	e0 2d       	mov	r30, r0
     e30:	61 2f       	mov	r22, r17
     e32:	ce 01       	movw	r24, r28
     e34:	09 95       	icall
     e36:	e8 81       	ld	r30, Y
     e38:	f9 81       	ldd	r31, Y+1	; 0x01
     e3a:	02 80       	ldd	r0, Z+2	; 0x02
     e3c:	f3 81       	ldd	r31, Z+3	; 0x03
     e3e:	e0 2d       	mov	r30, r0
     e40:	ce 01       	movw	r24, r28
     e42:	df 91       	pop	r29
     e44:	cf 91       	pop	r28
     e46:	1f 91       	pop	r17
     e48:	0f 91       	pop	r16
     e4a:	ff 90       	pop	r15
     e4c:	09 94       	ijmp

00000e4e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     e4e:	ef 92       	push	r14
     e50:	ff 92       	push	r15
     e52:	0f 93       	push	r16
     e54:	1f 93       	push	r17
     e56:	cf 93       	push	r28
     e58:	df 93       	push	r29
     e5a:	ec 01       	movw	r28, r24
     e5c:	e6 2e       	mov	r14, r22
     e5e:	f4 2e       	mov	r15, r20
     e60:	12 2f       	mov	r17, r18
     e62:	03 2f       	mov	r16, r19
     e64:	e8 81       	ld	r30, Y
     e66:	f9 81       	ldd	r31, Y+1	; 0x01
     e68:	01 90       	ld	r0, Z+
     e6a:	f0 81       	ld	r31, Z
     e6c:	e0 2d       	mov	r30, r0
     e6e:	09 95       	icall
     e70:	e8 81       	ld	r30, Y
     e72:	f9 81       	ldd	r31, Y+1	; 0x01
     e74:	04 80       	ldd	r0, Z+4	; 0x04
     e76:	f5 81       	ldd	r31, Z+5	; 0x05
     e78:	e0 2d       	mov	r30, r0
     e7a:	6e 2d       	mov	r22, r14
     e7c:	ce 01       	movw	r24, r28
     e7e:	09 95       	icall
     e80:	e8 81       	ld	r30, Y
     e82:	f9 81       	ldd	r31, Y+1	; 0x01
     e84:	04 80       	ldd	r0, Z+4	; 0x04
     e86:	f5 81       	ldd	r31, Z+5	; 0x05
     e88:	e0 2d       	mov	r30, r0
     e8a:	6f 2d       	mov	r22, r15
     e8c:	ce 01       	movw	r24, r28
     e8e:	09 95       	icall
     e90:	e8 81       	ld	r30, Y
     e92:	f9 81       	ldd	r31, Y+1	; 0x01
     e94:	04 80       	ldd	r0, Z+4	; 0x04
     e96:	f5 81       	ldd	r31, Z+5	; 0x05
     e98:	e0 2d       	mov	r30, r0
     e9a:	60 2f       	mov	r22, r16
     e9c:	ce 01       	movw	r24, r28
     e9e:	09 95       	icall
     ea0:	e8 81       	ld	r30, Y
     ea2:	f9 81       	ldd	r31, Y+1	; 0x01
     ea4:	04 80       	ldd	r0, Z+4	; 0x04
     ea6:	f5 81       	ldd	r31, Z+5	; 0x05
     ea8:	e0 2d       	mov	r30, r0
     eaa:	61 2f       	mov	r22, r17
     eac:	ce 01       	movw	r24, r28
     eae:	09 95       	icall
     eb0:	e8 81       	ld	r30, Y
     eb2:	f9 81       	ldd	r31, Y+1	; 0x01
     eb4:	02 80       	ldd	r0, Z+2	; 0x02
     eb6:	f3 81       	ldd	r31, Z+3	; 0x03
     eb8:	e0 2d       	mov	r30, r0
     eba:	ce 01       	movw	r24, r28
     ebc:	df 91       	pop	r29
     ebe:	cf 91       	pop	r28
     ec0:	1f 91       	pop	r17
     ec2:	0f 91       	pop	r16
     ec4:	ff 90       	pop	r15
     ec6:	ef 90       	pop	r14
     ec8:	09 94       	ijmp

00000eca <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     eca:	cf 92       	push	r12
     ecc:	df 92       	push	r13
     ece:	ef 92       	push	r14
     ed0:	ff 92       	push	r15
     ed2:	0f 93       	push	r16
     ed4:	1f 93       	push	r17
     ed6:	cf 93       	push	r28
     ed8:	df 93       	push	r29
     eda:	ec 01       	movw	r28, r24
     edc:	e6 2e       	mov	r14, r22
     ede:	f4 2e       	mov	r15, r20
     ee0:	69 01       	movw	r12, r18
     ee2:	e8 81       	ld	r30, Y
     ee4:	f9 81       	ldd	r31, Y+1	; 0x01
     ee6:	01 90       	ld	r0, Z+
     ee8:	f0 81       	ld	r31, Z
     eea:	e0 2d       	mov	r30, r0
     eec:	09 95       	icall
     eee:	e8 81       	ld	r30, Y
     ef0:	f9 81       	ldd	r31, Y+1	; 0x01
     ef2:	04 80       	ldd	r0, Z+4	; 0x04
     ef4:	f5 81       	ldd	r31, Z+5	; 0x05
     ef6:	e0 2d       	mov	r30, r0
     ef8:	6e 2d       	mov	r22, r14
     efa:	ce 01       	movw	r24, r28
     efc:	09 95       	icall
     efe:	e8 81       	ld	r30, Y
     f00:	f9 81       	ldd	r31, Y+1	; 0x01
     f02:	04 80       	ldd	r0, Z+4	; 0x04
     f04:	f5 81       	ldd	r31, Z+5	; 0x05
     f06:	e0 2d       	mov	r30, r0
     f08:	6f 2d       	mov	r22, r15
     f0a:	ce 01       	movw	r24, r28
     f0c:	09 95       	icall
     f0e:	76 01       	movw	r14, r12
     f10:	0c 0d       	add	r16, r12
     f12:	1d 1d       	adc	r17, r13
     f14:	e8 81       	ld	r30, Y
     f16:	f9 81       	ldd	r31, Y+1	; 0x01
     f18:	e0 16       	cp	r14, r16
     f1a:	f1 06       	cpc	r15, r17
     f1c:	49 f0       	breq	.+18     	; 0xf30 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     f1e:	d7 01       	movw	r26, r14
     f20:	6d 91       	ld	r22, X+
     f22:	7d 01       	movw	r14, r26
     f24:	04 80       	ldd	r0, Z+4	; 0x04
     f26:	f5 81       	ldd	r31, Z+5	; 0x05
     f28:	e0 2d       	mov	r30, r0
     f2a:	ce 01       	movw	r24, r28
     f2c:	09 95       	icall
     f2e:	f2 cf       	rjmp	.-28     	; 0xf14 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     f30:	02 80       	ldd	r0, Z+2	; 0x02
     f32:	f3 81       	ldd	r31, Z+3	; 0x03
     f34:	e0 2d       	mov	r30, r0
     f36:	ce 01       	movw	r24, r28
     f38:	df 91       	pop	r29
     f3a:	cf 91       	pop	r28
     f3c:	1f 91       	pop	r17
     f3e:	0f 91       	pop	r16
     f40:	ff 90       	pop	r15
     f42:	ef 90       	pop	r14
     f44:	df 90       	pop	r13
     f46:	cf 90       	pop	r12
     f48:	09 94       	ijmp

00000f4a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE8read_regEhh>:
     f4a:	0f 93       	push	r16
     f4c:	1f 93       	push	r17
     f4e:	cf 93       	push	r28
     f50:	df 93       	push	r29
     f52:	ec 01       	movw	r28, r24
     f54:	16 2f       	mov	r17, r22
     f56:	04 2f       	mov	r16, r20
     f58:	e8 81       	ld	r30, Y
     f5a:	f9 81       	ldd	r31, Y+1	; 0x01
     f5c:	01 90       	ld	r0, Z+
     f5e:	f0 81       	ld	r31, Z
     f60:	e0 2d       	mov	r30, r0
     f62:	09 95       	icall
     f64:	e8 81       	ld	r30, Y
     f66:	f9 81       	ldd	r31, Y+1	; 0x01
     f68:	04 80       	ldd	r0, Z+4	; 0x04
     f6a:	f5 81       	ldd	r31, Z+5	; 0x05
     f6c:	e0 2d       	mov	r30, r0
     f6e:	61 2f       	mov	r22, r17
     f70:	ce 01       	movw	r24, r28
     f72:	09 95       	icall
     f74:	e8 81       	ld	r30, Y
     f76:	f9 81       	ldd	r31, Y+1	; 0x01
     f78:	04 80       	ldd	r0, Z+4	; 0x04
     f7a:	f5 81       	ldd	r31, Z+5	; 0x05
     f7c:	e0 2d       	mov	r30, r0
     f7e:	60 2f       	mov	r22, r16
     f80:	ce 01       	movw	r24, r28
     f82:	09 95       	icall
     f84:	e8 81       	ld	r30, Y
     f86:	f9 81       	ldd	r31, Y+1	; 0x01
     f88:	01 90       	ld	r0, Z+
     f8a:	f0 81       	ld	r31, Z
     f8c:	e0 2d       	mov	r30, r0
     f8e:	ce 01       	movw	r24, r28
     f90:	09 95       	icall
     f92:	61 2f       	mov	r22, r17
     f94:	61 60       	ori	r22, 0x01	; 1
     f96:	e8 81       	ld	r30, Y
     f98:	f9 81       	ldd	r31, Y+1	; 0x01
     f9a:	04 80       	ldd	r0, Z+4	; 0x04
     f9c:	f5 81       	ldd	r31, Z+5	; 0x05
     f9e:	e0 2d       	mov	r30, r0
     fa0:	ce 01       	movw	r24, r28
     fa2:	09 95       	icall
     fa4:	e8 81       	ld	r30, Y
     fa6:	f9 81       	ldd	r31, Y+1	; 0x01
     fa8:	06 80       	ldd	r0, Z+6	; 0x06
     faa:	f7 81       	ldd	r31, Z+7	; 0x07
     fac:	e0 2d       	mov	r30, r0
     fae:	60 e0       	ldi	r22, 0x00	; 0
     fb0:	ce 01       	movw	r24, r28
     fb2:	09 95       	icall
     fb4:	18 2f       	mov	r17, r24
     fb6:	e8 81       	ld	r30, Y
     fb8:	f9 81       	ldd	r31, Y+1	; 0x01
     fba:	02 80       	ldd	r0, Z+2	; 0x02
     fbc:	f3 81       	ldd	r31, Z+3	; 0x03
     fbe:	e0 2d       	mov	r30, r0
     fc0:	ce 01       	movw	r24, r28
     fc2:	09 95       	icall
     fc4:	81 2f       	mov	r24, r17
     fc6:	df 91       	pop	r29
     fc8:	cf 91       	pop	r28
     fca:	1f 91       	pop	r17
     fcc:	0f 91       	pop	r16
     fce:	08 95       	ret

00000fd0 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     fd0:	0f 93       	push	r16
     fd2:	1f 93       	push	r17
     fd4:	cf 93       	push	r28
     fd6:	df 93       	push	r29
     fd8:	ec 01       	movw	r28, r24
     fda:	16 2f       	mov	r17, r22
     fdc:	04 2f       	mov	r16, r20
     fde:	e8 81       	ld	r30, Y
     fe0:	f9 81       	ldd	r31, Y+1	; 0x01
     fe2:	01 90       	ld	r0, Z+
     fe4:	f0 81       	ld	r31, Z
     fe6:	e0 2d       	mov	r30, r0
     fe8:	09 95       	icall
     fea:	e8 81       	ld	r30, Y
     fec:	f9 81       	ldd	r31, Y+1	; 0x01
     fee:	04 80       	ldd	r0, Z+4	; 0x04
     ff0:	f5 81       	ldd	r31, Z+5	; 0x05
     ff2:	e0 2d       	mov	r30, r0
     ff4:	61 2f       	mov	r22, r17
     ff6:	ce 01       	movw	r24, r28
     ff8:	09 95       	icall
     ffa:	e8 81       	ld	r30, Y
     ffc:	f9 81       	ldd	r31, Y+1	; 0x01
     ffe:	04 80       	ldd	r0, Z+4	; 0x04
    1000:	f5 81       	ldd	r31, Z+5	; 0x05
    1002:	e0 2d       	mov	r30, r0
    1004:	60 2f       	mov	r22, r16
    1006:	ce 01       	movw	r24, r28
    1008:	09 95       	icall
    100a:	e8 81       	ld	r30, Y
    100c:	f9 81       	ldd	r31, Y+1	; 0x01
    100e:	01 90       	ld	r0, Z+
    1010:	f0 81       	ld	r31, Z
    1012:	e0 2d       	mov	r30, r0
    1014:	ce 01       	movw	r24, r28
    1016:	09 95       	icall
    1018:	61 2f       	mov	r22, r17
    101a:	61 60       	ori	r22, 0x01	; 1
    101c:	e8 81       	ld	r30, Y
    101e:	f9 81       	ldd	r31, Y+1	; 0x01
    1020:	04 80       	ldd	r0, Z+4	; 0x04
    1022:	f5 81       	ldd	r31, Z+5	; 0x05
    1024:	e0 2d       	mov	r30, r0
    1026:	ce 01       	movw	r24, r28
    1028:	09 95       	icall
    102a:	e8 81       	ld	r30, Y
    102c:	f9 81       	ldd	r31, Y+1	; 0x01
    102e:	06 80       	ldd	r0, Z+6	; 0x06
    1030:	f7 81       	ldd	r31, Z+7	; 0x07
    1032:	e0 2d       	mov	r30, r0
    1034:	61 e0       	ldi	r22, 0x01	; 1
    1036:	ce 01       	movw	r24, r28
    1038:	09 95       	icall
    103a:	08 2f       	mov	r16, r24
    103c:	10 e0       	ldi	r17, 0x00	; 0
    103e:	10 2f       	mov	r17, r16
    1040:	00 27       	eor	r16, r16
    1042:	e8 81       	ld	r30, Y
    1044:	f9 81       	ldd	r31, Y+1	; 0x01
    1046:	06 80       	ldd	r0, Z+6	; 0x06
    1048:	f7 81       	ldd	r31, Z+7	; 0x07
    104a:	e0 2d       	mov	r30, r0
    104c:	60 e0       	ldi	r22, 0x00	; 0
    104e:	ce 01       	movw	r24, r28
    1050:	09 95       	icall
    1052:	08 2b       	or	r16, r24
    1054:	e8 81       	ld	r30, Y
    1056:	f9 81       	ldd	r31, Y+1	; 0x01
    1058:	02 80       	ldd	r0, Z+2	; 0x02
    105a:	f3 81       	ldd	r31, Z+3	; 0x03
    105c:	e0 2d       	mov	r30, r0
    105e:	ce 01       	movw	r24, r28
    1060:	09 95       	icall
    1062:	c8 01       	movw	r24, r16
    1064:	df 91       	pop	r29
    1066:	cf 91       	pop	r28
    1068:	1f 91       	pop	r17
    106a:	0f 91       	pop	r16
    106c:	08 95       	ret

0000106e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
    106e:	cf 92       	push	r12
    1070:	df 92       	push	r13
    1072:	ef 92       	push	r14
    1074:	ff 92       	push	r15
    1076:	0f 93       	push	r16
    1078:	1f 93       	push	r17
    107a:	cf 93       	push	r28
    107c:	df 93       	push	r29
    107e:	ec 01       	movw	r28, r24
    1080:	f6 2e       	mov	r15, r22
    1082:	e4 2e       	mov	r14, r20
    1084:	69 01       	movw	r12, r18
    1086:	e8 81       	ld	r30, Y
    1088:	f9 81       	ldd	r31, Y+1	; 0x01
    108a:	01 90       	ld	r0, Z+
    108c:	f0 81       	ld	r31, Z
    108e:	e0 2d       	mov	r30, r0
    1090:	09 95       	icall
    1092:	e8 81       	ld	r30, Y
    1094:	f9 81       	ldd	r31, Y+1	; 0x01
    1096:	04 80       	ldd	r0, Z+4	; 0x04
    1098:	f5 81       	ldd	r31, Z+5	; 0x05
    109a:	e0 2d       	mov	r30, r0
    109c:	6f 2d       	mov	r22, r15
    109e:	ce 01       	movw	r24, r28
    10a0:	09 95       	icall
    10a2:	e8 81       	ld	r30, Y
    10a4:	f9 81       	ldd	r31, Y+1	; 0x01
    10a6:	04 80       	ldd	r0, Z+4	; 0x04
    10a8:	f5 81       	ldd	r31, Z+5	; 0x05
    10aa:	e0 2d       	mov	r30, r0
    10ac:	6e 2d       	mov	r22, r14
    10ae:	ce 01       	movw	r24, r28
    10b0:	09 95       	icall
    10b2:	e8 81       	ld	r30, Y
    10b4:	f9 81       	ldd	r31, Y+1	; 0x01
    10b6:	01 90       	ld	r0, Z+
    10b8:	f0 81       	ld	r31, Z
    10ba:	e0 2d       	mov	r30, r0
    10bc:	ce 01       	movw	r24, r28
    10be:	09 95       	icall
    10c0:	6f 2d       	mov	r22, r15
    10c2:	61 60       	ori	r22, 0x01	; 1
    10c4:	e8 81       	ld	r30, Y
    10c6:	f9 81       	ldd	r31, Y+1	; 0x01
    10c8:	04 80       	ldd	r0, Z+4	; 0x04
    10ca:	f5 81       	ldd	r31, Z+5	; 0x05
    10cc:	e0 2d       	mov	r30, r0
    10ce:	ce 01       	movw	r24, r28
    10d0:	09 95       	icall
    10d2:	76 01       	movw	r14, r12
    10d4:	0c 0d       	add	r16, r12
    10d6:	1d 1d       	adc	r17, r13
    10d8:	e8 81       	ld	r30, Y
    10da:	f9 81       	ldd	r31, Y+1	; 0x01
    10dc:	e0 16       	cp	r14, r16
    10de:	f1 06       	cpc	r15, r17
    10e0:	51 f0       	breq	.+20     	; 0x10f6 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
    10e2:	06 80       	ldd	r0, Z+6	; 0x06
    10e4:	f7 81       	ldd	r31, Z+7	; 0x07
    10e6:	e0 2d       	mov	r30, r0
    10e8:	61 e0       	ldi	r22, 0x01	; 1
    10ea:	ce 01       	movw	r24, r28
    10ec:	09 95       	icall
    10ee:	f7 01       	movw	r30, r14
    10f0:	81 93       	st	Z+, r24
    10f2:	7f 01       	movw	r14, r30
    10f4:	f1 cf       	rjmp	.-30     	; 0x10d8 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
    10f6:	02 80       	ldd	r0, Z+2	; 0x02
    10f8:	f3 81       	ldd	r31, Z+3	; 0x03
    10fa:	e0 2d       	mov	r30, r0
    10fc:	ce 01       	movw	r24, r28
    10fe:	df 91       	pop	r29
    1100:	cf 91       	pop	r28
    1102:	1f 91       	pop	r17
    1104:	0f 91       	pop	r16
    1106:	ff 90       	pop	r15
    1108:	ef 90       	pop	r14
    110a:	df 90       	pop	r13
    110c:	cf 90       	pop	r12
    110e:	09 94       	ijmp

00001110 <_ZN16CMeasurementTaskD1Ev>:
    1110:	0f 93       	push	r16
    1112:	1f 93       	push	r17
    1114:	cf 93       	push	r28
    1116:	df 93       	push	r29
    1118:	29 e8       	ldi	r18, 0x89	; 137
    111a:	31 e0       	ldi	r19, 0x01	; 1
    111c:	fc 01       	movw	r30, r24
    111e:	31 83       	std	Z+1, r19	; 0x01
    1120:	20 83       	st	Z, r18
    1122:	8c 01       	movw	r16, r24
    1124:	0e 5e       	subi	r16, 0xEE	; 238
    1126:	1f 4f       	sbci	r17, 0xFF	; 255
    1128:	59 f0       	breq	.+22     	; 0x1140 <_ZN16CMeasurementTaskD1Ev+0x30>
    112a:	ec 01       	movw	r28, r24
    112c:	ce 57       	subi	r28, 0x7E	; 126
    112e:	df 4f       	sbci	r29, 0xFF	; 255
    1130:	0c 17       	cp	r16, r28
    1132:	1d 07       	cpc	r17, r29
    1134:	29 f0       	breq	.+10     	; 0x1140 <_ZN16CMeasurementTaskD1Ev+0x30>
    1136:	6c 97       	sbiw	r28, 0x1c	; 28
    1138:	ce 01       	movw	r24, r28
    113a:	0e 94 17 0c 	call	0x182e	; 0x182e <_ZN16CObjectDetectionD1Ev>
    113e:	f8 cf       	rjmp	.-16     	; 0x1130 <_ZN16CMeasurementTaskD1Ev+0x20>
    1140:	df 91       	pop	r29
    1142:	cf 91       	pop	r28
    1144:	1f 91       	pop	r17
    1146:	0f 91       	pop	r16
    1148:	08 95       	ret

0000114a <_ZN16CMeasurementTaskD0Ev>:
    114a:	cf 93       	push	r28
    114c:	df 93       	push	r29
    114e:	ec 01       	movw	r28, r24
    1150:	0e 94 88 08 	call	0x1110	; 0x1110 <_ZN16CMeasurementTaskD1Ev>
    1154:	ce 01       	movw	r24, r28
    1156:	df 91       	pop	r29
    1158:	cf 91       	pop	r28
    115a:	0c 94 61 00 	jmp	0xc2	; 0xc2 <_ZdlPv>

0000115e <_ZN16CMeasurementTaskclEv>:
    115e:	0f 93       	push	r16
    1160:	1f 93       	push	r17
    1162:	cf 93       	push	r28
    1164:	df 93       	push	r29
    1166:	ec 01       	movw	r28, r24
    1168:	42 96       	adiw	r24, 0x12	; 18
    116a:	0e 94 25 0c 	call	0x184a	; 0x184a <_ZN16CObjectDetection7processEv>
    116e:	ce 01       	movw	r24, r28
    1170:	8e 96       	adiw	r24, 0x2e	; 46
    1172:	0e 94 25 0c 	call	0x184a	; 0x184a <_ZN16CObjectDetection7processEv>
    1176:	ce 01       	movw	r24, r28
    1178:	86 5b       	subi	r24, 0xB6	; 182
    117a:	9f 4f       	sbci	r25, 0xFF	; 255
    117c:	0e 94 25 0c 	call	0x184a	; 0x184a <_ZN16CObjectDetection7processEv>
    1180:	ce 01       	movw	r24, r28
    1182:	8a 59       	subi	r24, 0x9A	; 154
    1184:	9f 4f       	sbci	r25, 0xFF	; 255
    1186:	0e 94 25 0c 	call	0x184a	; 0x184a <_ZN16CObjectDetection7processEv>
    118a:	9e 01       	movw	r18, r28
    118c:	20 59       	subi	r18, 0x90	; 144
    118e:	3f 4f       	sbci	r19, 0xFF	; 255
    1190:	8e 01       	movw	r16, r28
    1192:	80 e0       	ldi	r24, 0x00	; 0
    1194:	f8 01       	movw	r30, r16
    1196:	95 a5       	ldd	r25, Z+45	; 0x2d
    1198:	91 11       	cpse	r25, r1
    119a:	89 2f       	mov	r24, r25
    119c:	04 5e       	subi	r16, 0xE4	; 228
    119e:	1f 4f       	sbci	r17, 0xFF	; 255
    11a0:	20 17       	cp	r18, r16
    11a2:	31 07       	cpc	r19, r17
    11a4:	b9 f7       	brne	.-18     	; 0x1194 <_ZN16CMeasurementTaskclEv+0x36>
    11a6:	88 23       	and	r24, r24
    11a8:	69 f1       	breq	.+90     	; 0x1204 <_ZN16CMeasurementTaskclEv+0xa6>
    11aa:	80 e9       	ldi	r24, 0x90	; 144
    11ac:	91 e0       	ldi	r25, 0x01	; 1
    11ae:	0e 94 c1 00 	call	0x182	; 0x182 <_ZN8CRTTimer8get_timeEv>
    11b2:	ab 01       	movw	r20, r22
    11b4:	bc 01       	movw	r22, r24
    11b6:	85 ed       	ldi	r24, 0xD5	; 213
    11b8:	91 e0       	ldi	r25, 0x01	; 1
    11ba:	0e 94 bf 01 	call	0x37e	; 0x37e <_ZN9CTerminal5putuiEm>
    11be:	61 e1       	ldi	r22, 0x11	; 17
    11c0:	71 e0       	ldi	r23, 0x01	; 1
    11c2:	85 ed       	ldi	r24, 0xD5	; 213
    11c4:	91 e0       	ldi	r25, 0x01	; 1
    11c6:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    11ca:	8d a5       	ldd	r24, Y+45	; 0x2d
    11cc:	61 e3       	ldi	r22, 0x31	; 49
    11ce:	81 11       	cpse	r24, r1
    11d0:	01 c0       	rjmp	.+2      	; 0x11d4 <_ZN16CMeasurementTaskclEv+0x76>
    11d2:	60 e3       	ldi	r22, 0x30	; 48
    11d4:	85 ed       	ldi	r24, 0xD5	; 213
    11d6:	91 e0       	ldi	r25, 0x01	; 1
    11d8:	0e 94 24 02 	call	0x448	; 0x448 <_ZN6CUSART8put_charEc>
    11dc:	61 e1       	ldi	r22, 0x11	; 17
    11de:	71 e0       	ldi	r23, 0x01	; 1
    11e0:	85 ed       	ldi	r24, 0xD5	; 213
    11e2:	91 e0       	ldi	r25, 0x01	; 1
    11e4:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    11e8:	6c 96       	adiw	r28, 0x1c	; 28
    11ea:	c0 17       	cp	r28, r16
    11ec:	d1 07       	cpc	r29, r17
    11ee:	69 f7       	brne	.-38     	; 0x11ca <_ZN16CMeasurementTaskclEv+0x6c>
    11f0:	63 e2       	ldi	r22, 0x23	; 35
    11f2:	71 e0       	ldi	r23, 0x01	; 1
    11f4:	85 ed       	ldi	r24, 0xD5	; 213
    11f6:	91 e0       	ldi	r25, 0x01	; 1
    11f8:	df 91       	pop	r29
    11fa:	cf 91       	pop	r28
    11fc:	1f 91       	pop	r17
    11fe:	0f 91       	pop	r16
    1200:	0c 94 41 01 	jmp	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    1204:	df 91       	pop	r29
    1206:	cf 91       	pop	r28
    1208:	1f 91       	pop	r17
    120a:	0f 91       	pop	r16
    120c:	08 95       	ret

0000120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>:
    120e:	88 23       	and	r24, r24
    1210:	11 f0       	breq	.+4      	; 0x1216 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3+0x8>
    1212:	3d 98       	cbi	0x07, 5	; 7
    1214:	08 95       	ret
    1216:	3d 9a       	sbi	0x07, 5	; 7
    1218:	08 95       	ret

0000121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>:
	...
    1222:	00 00       	nop
    1224:	08 95       	ret

00001226 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5startEv>:
    1226:	81 e0       	ldi	r24, 0x01	; 1
    1228:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    122c:	3b 98       	cbi	0x07, 3	; 7
    122e:	81 e0       	ldi	r24, 0x01	; 1
    1230:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1234:	3b 9a       	sbi	0x07, 3	; 7
    1236:	80 e0       	ldi	r24, 0x00	; 0
    1238:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    123c:	3b 98       	cbi	0x07, 3	; 7
    123e:	0c 94 0d 09 	jmp	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

00001242 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4stopEv>:
    1242:	80 e0       	ldi	r24, 0x00	; 0
    1244:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1248:	3b 9a       	sbi	0x07, 3	; 7
    124a:	81 e0       	ldi	r24, 0x01	; 1
    124c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1250:	3b 9a       	sbi	0x07, 3	; 7
    1252:	81 e0       	ldi	r24, 0x01	; 1
    1254:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1258:	3b 98       	cbi	0x07, 3	; 7
    125a:	0c 94 0d 09 	jmp	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

0000125e <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5startEv>:
    125e:	81 e0       	ldi	r24, 0x01	; 1
    1260:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1264:	3a 98       	cbi	0x07, 2	; 7
    1266:	81 e0       	ldi	r24, 0x01	; 1
    1268:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    126c:	3a 9a       	sbi	0x07, 2	; 7
    126e:	80 e0       	ldi	r24, 0x00	; 0
    1270:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1274:	3a 98       	cbi	0x07, 2	; 7
    1276:	0c 94 0d 09 	jmp	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

0000127a <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4stopEv>:
    127a:	80 e0       	ldi	r24, 0x00	; 0
    127c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1280:	3a 9a       	sbi	0x07, 2	; 7
    1282:	81 e0       	ldi	r24, 0x01	; 1
    1284:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1288:	3a 9a       	sbi	0x07, 2	; 7
    128a:	81 e0       	ldi	r24, 0x01	; 1
    128c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1290:	3a 98       	cbi	0x07, 2	; 7
    1292:	0c 94 0d 09 	jmp	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

00001296 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4stopEv>:
    1296:	80 e0       	ldi	r24, 0x00	; 0
    1298:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    129c:	38 9a       	sbi	0x07, 0	; 7
    129e:	81 e0       	ldi	r24, 0x01	; 1
    12a0:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12a4:	38 9a       	sbi	0x07, 0	; 7
    12a6:	81 e0       	ldi	r24, 0x01	; 1
    12a8:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12ac:	38 98       	cbi	0x07, 0	; 7
    12ae:	0c 94 0d 09 	jmp	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000012b2 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5startEv>:
    12b2:	81 e0       	ldi	r24, 0x01	; 1
    12b4:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12b8:	38 98       	cbi	0x07, 0	; 7
    12ba:	81 e0       	ldi	r24, 0x01	; 1
    12bc:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12c0:	38 9a       	sbi	0x07, 0	; 7
    12c2:	80 e0       	ldi	r24, 0x00	; 0
    12c4:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12c8:	38 98       	cbi	0x07, 0	; 7
    12ca:	0c 94 0d 09 	jmp	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000012ce <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5startEv>:
    12ce:	81 e0       	ldi	r24, 0x01	; 1
    12d0:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12d4:	39 98       	cbi	0x07, 1	; 7
    12d6:	81 e0       	ldi	r24, 0x01	; 1
    12d8:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12dc:	39 9a       	sbi	0x07, 1	; 7
    12de:	80 e0       	ldi	r24, 0x00	; 0
    12e0:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12e4:	39 98       	cbi	0x07, 1	; 7
    12e6:	0c 94 0d 09 	jmp	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000012ea <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4stopEv>:
    12ea:	80 e0       	ldi	r24, 0x00	; 0
    12ec:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12f0:	39 9a       	sbi	0x07, 1	; 7
    12f2:	81 e0       	ldi	r24, 0x01	; 1
    12f4:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    12f8:	39 9a       	sbi	0x07, 1	; 7
    12fa:	81 e0       	ldi	r24, 0x01	; 1
    12fc:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1300:	39 98       	cbi	0x07, 1	; 7
    1302:	0c 94 0d 09 	jmp	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

00001306 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh>:
    1306:	cf 93       	push	r28
    1308:	df 93       	push	r29
    130a:	d6 2f       	mov	r29, r22
    130c:	c8 e0       	ldi	r28, 0x08	; 8
    130e:	80 e0       	ldi	r24, 0x00	; 0
    1310:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1314:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1318:	d7 ff       	sbrs	r29, 7
    131a:	24 c0       	rjmp	.+72     	; 0x1364 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x5e>
    131c:	38 98       	cbi	0x07, 0	; 7
    131e:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1322:	81 e0       	ldi	r24, 0x01	; 1
    1324:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1328:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    132c:	dd 0f       	add	r29, r29
    132e:	c1 50       	subi	r28, 0x01	; 1
    1330:	71 f7       	brne	.-36     	; 0x130e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x8>
    1332:	80 e0       	ldi	r24, 0x00	; 0
    1334:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1338:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    133c:	38 98       	cbi	0x07, 0	; 7
    133e:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1342:	81 e0       	ldi	r24, 0x01	; 1
    1344:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1348:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    134c:	c6 b1       	in	r28, 0x06	; 6
    134e:	80 e0       	ldi	r24, 0x00	; 0
    1350:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1354:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1358:	8c 2f       	mov	r24, r28
    135a:	80 95       	com	r24
    135c:	81 70       	andi	r24, 0x01	; 1
    135e:	df 91       	pop	r29
    1360:	cf 91       	pop	r28
    1362:	08 95       	ret
    1364:	38 9a       	sbi	0x07, 0	; 7
    1366:	db cf       	rjmp	.-74     	; 0x131e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x18>

00001368 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh>:
    1368:	cf 93       	push	r28
    136a:	df 93       	push	r29
    136c:	d6 2f       	mov	r29, r22
    136e:	c8 e0       	ldi	r28, 0x08	; 8
    1370:	80 e0       	ldi	r24, 0x00	; 0
    1372:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1376:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    137a:	d7 ff       	sbrs	r29, 7
    137c:	26 c0       	rjmp	.+76     	; 0x13ca <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x62>
    137e:	3a 98       	cbi	0x07, 2	; 7
    1380:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1384:	81 e0       	ldi	r24, 0x01	; 1
    1386:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    138a:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    138e:	dd 0f       	add	r29, r29
    1390:	c1 50       	subi	r28, 0x01	; 1
    1392:	71 f7       	brne	.-36     	; 0x1370 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x8>
    1394:	80 e0       	ldi	r24, 0x00	; 0
    1396:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    139a:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    139e:	3a 98       	cbi	0x07, 2	; 7
    13a0:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    13a4:	81 e0       	ldi	r24, 0x01	; 1
    13a6:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    13aa:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    13ae:	c6 b1       	in	r28, 0x06	; 6
    13b0:	80 e0       	ldi	r24, 0x00	; 0
    13b2:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    13b6:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    13ba:	c2 fb       	bst	r28, 2
    13bc:	cc 27       	eor	r28, r28
    13be:	c0 f9       	bld	r28, 0
    13c0:	81 e0       	ldi	r24, 0x01	; 1
    13c2:	8c 27       	eor	r24, r28
    13c4:	df 91       	pop	r29
    13c6:	cf 91       	pop	r28
    13c8:	08 95       	ret
    13ca:	3a 9a       	sbi	0x07, 2	; 7
    13cc:	d9 cf       	rjmp	.-78     	; 0x1380 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x18>

000013ce <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh>:
    13ce:	cf 93       	push	r28
    13d0:	df 93       	push	r29
    13d2:	d6 2f       	mov	r29, r22
    13d4:	c8 e0       	ldi	r28, 0x08	; 8
    13d6:	80 e0       	ldi	r24, 0x00	; 0
    13d8:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    13dc:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    13e0:	d7 ff       	sbrs	r29, 7
    13e2:	26 c0       	rjmp	.+76     	; 0x1430 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x62>
    13e4:	3b 98       	cbi	0x07, 3	; 7
    13e6:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    13ea:	81 e0       	ldi	r24, 0x01	; 1
    13ec:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    13f0:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    13f4:	dd 0f       	add	r29, r29
    13f6:	c1 50       	subi	r28, 0x01	; 1
    13f8:	71 f7       	brne	.-36     	; 0x13d6 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x8>
    13fa:	80 e0       	ldi	r24, 0x00	; 0
    13fc:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1400:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1404:	3b 98       	cbi	0x07, 3	; 7
    1406:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    140a:	81 e0       	ldi	r24, 0x01	; 1
    140c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1410:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1414:	c6 b1       	in	r28, 0x06	; 6
    1416:	80 e0       	ldi	r24, 0x00	; 0
    1418:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    141c:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1420:	c3 fb       	bst	r28, 3
    1422:	cc 27       	eor	r28, r28
    1424:	c0 f9       	bld	r28, 0
    1426:	81 e0       	ldi	r24, 0x01	; 1
    1428:	8c 27       	eor	r24, r28
    142a:	df 91       	pop	r29
    142c:	cf 91       	pop	r28
    142e:	08 95       	ret
    1430:	3b 9a       	sbi	0x07, 3	; 7
    1432:	d9 cf       	rjmp	.-78     	; 0x13e6 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x18>

00001434 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh>:
    1434:	cf 93       	push	r28
    1436:	df 93       	push	r29
    1438:	d6 2f       	mov	r29, r22
    143a:	c8 e0       	ldi	r28, 0x08	; 8
    143c:	80 e0       	ldi	r24, 0x00	; 0
    143e:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1442:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1446:	d7 ff       	sbrs	r29, 7
    1448:	25 c0       	rjmp	.+74     	; 0x1494 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x60>
    144a:	39 98       	cbi	0x07, 1	; 7
    144c:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1450:	81 e0       	ldi	r24, 0x01	; 1
    1452:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1456:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    145a:	dd 0f       	add	r29, r29
    145c:	c1 50       	subi	r28, 0x01	; 1
    145e:	71 f7       	brne	.-36     	; 0x143c <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x8>
    1460:	80 e0       	ldi	r24, 0x00	; 0
    1462:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1466:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    146a:	39 98       	cbi	0x07, 1	; 7
    146c:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1470:	81 e0       	ldi	r24, 0x01	; 1
    1472:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1476:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    147a:	c6 b1       	in	r28, 0x06	; 6
    147c:	80 e0       	ldi	r24, 0x00	; 0
    147e:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1482:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1486:	c6 95       	lsr	r28
    1488:	c1 70       	andi	r28, 0x01	; 1
    148a:	81 e0       	ldi	r24, 0x01	; 1
    148c:	8c 27       	eor	r24, r28
    148e:	df 91       	pop	r29
    1490:	cf 91       	pop	r28
    1492:	08 95       	ret
    1494:	39 9a       	sbi	0x07, 1	; 7
    1496:	da cf       	rjmp	.-76     	; 0x144c <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x18>

00001498 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh>:
    1498:	1f 93       	push	r17
    149a:	cf 93       	push	r28
    149c:	df 93       	push	r29
    149e:	16 2f       	mov	r17, r22
    14a0:	3b 98       	cbi	0x07, 3	; 7
    14a2:	80 e0       	ldi	r24, 0x00	; 0
    14a4:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    14a8:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    14ac:	d8 e0       	ldi	r29, 0x08	; 8
    14ae:	c0 e0       	ldi	r28, 0x00	; 0
    14b0:	cc 0f       	add	r28, r28
    14b2:	81 e0       	ldi	r24, 0x01	; 1
    14b4:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    14b8:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    14bc:	33 99       	sbic	0x06, 3	; 6
    14be:	c1 60       	ori	r28, 0x01	; 1
    14c0:	80 e0       	ldi	r24, 0x00	; 0
    14c2:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    14c6:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    14ca:	d1 50       	subi	r29, 0x01	; 1
    14cc:	89 f7       	brne	.-30     	; 0x14b0 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x18>
    14ce:	11 23       	and	r17, r17
    14d0:	a9 f0       	breq	.+42     	; 0x14fc <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x64>
    14d2:	3b 9a       	sbi	0x07, 3	; 7
    14d4:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    14d8:	81 e0       	ldi	r24, 0x01	; 1
    14da:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    14de:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    14e2:	80 e0       	ldi	r24, 0x00	; 0
    14e4:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    14e8:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    14ec:	3b 98       	cbi	0x07, 3	; 7
    14ee:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    14f2:	8c 2f       	mov	r24, r28
    14f4:	df 91       	pop	r29
    14f6:	cf 91       	pop	r28
    14f8:	1f 91       	pop	r17
    14fa:	08 95       	ret
    14fc:	3b 98       	cbi	0x07, 3	; 7
    14fe:	ea cf       	rjmp	.-44     	; 0x14d4 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x3c>

00001500 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh>:
    1500:	1f 93       	push	r17
    1502:	cf 93       	push	r28
    1504:	df 93       	push	r29
    1506:	16 2f       	mov	r17, r22
    1508:	3a 98       	cbi	0x07, 2	; 7
    150a:	80 e0       	ldi	r24, 0x00	; 0
    150c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1510:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1514:	d8 e0       	ldi	r29, 0x08	; 8
    1516:	c0 e0       	ldi	r28, 0x00	; 0
    1518:	cc 0f       	add	r28, r28
    151a:	81 e0       	ldi	r24, 0x01	; 1
    151c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1520:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1524:	32 99       	sbic	0x06, 2	; 6
    1526:	c1 60       	ori	r28, 0x01	; 1
    1528:	80 e0       	ldi	r24, 0x00	; 0
    152a:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    152e:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1532:	d1 50       	subi	r29, 0x01	; 1
    1534:	89 f7       	brne	.-30     	; 0x1518 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x18>
    1536:	11 23       	and	r17, r17
    1538:	a9 f0       	breq	.+42     	; 0x1564 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x64>
    153a:	3a 9a       	sbi	0x07, 2	; 7
    153c:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1540:	81 e0       	ldi	r24, 0x01	; 1
    1542:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1546:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    154a:	80 e0       	ldi	r24, 0x00	; 0
    154c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1550:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1554:	3a 98       	cbi	0x07, 2	; 7
    1556:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    155a:	8c 2f       	mov	r24, r28
    155c:	df 91       	pop	r29
    155e:	cf 91       	pop	r28
    1560:	1f 91       	pop	r17
    1562:	08 95       	ret
    1564:	3a 98       	cbi	0x07, 2	; 7
    1566:	ea cf       	rjmp	.-44     	; 0x153c <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x3c>

00001568 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh>:
    1568:	1f 93       	push	r17
    156a:	cf 93       	push	r28
    156c:	df 93       	push	r29
    156e:	16 2f       	mov	r17, r22
    1570:	38 98       	cbi	0x07, 0	; 7
    1572:	80 e0       	ldi	r24, 0x00	; 0
    1574:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1578:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    157c:	d8 e0       	ldi	r29, 0x08	; 8
    157e:	c0 e0       	ldi	r28, 0x00	; 0
    1580:	cc 0f       	add	r28, r28
    1582:	81 e0       	ldi	r24, 0x01	; 1
    1584:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1588:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    158c:	30 99       	sbic	0x06, 0	; 6
    158e:	c1 60       	ori	r28, 0x01	; 1
    1590:	80 e0       	ldi	r24, 0x00	; 0
    1592:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1596:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    159a:	d1 50       	subi	r29, 0x01	; 1
    159c:	89 f7       	brne	.-30     	; 0x1580 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x18>
    159e:	11 23       	and	r17, r17
    15a0:	a9 f0       	breq	.+42     	; 0x15cc <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x64>
    15a2:	38 9a       	sbi	0x07, 0	; 7
    15a4:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    15a8:	81 e0       	ldi	r24, 0x01	; 1
    15aa:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    15ae:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    15b2:	80 e0       	ldi	r24, 0x00	; 0
    15b4:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    15b8:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    15bc:	38 98       	cbi	0x07, 0	; 7
    15be:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    15c2:	8c 2f       	mov	r24, r28
    15c4:	df 91       	pop	r29
    15c6:	cf 91       	pop	r28
    15c8:	1f 91       	pop	r17
    15ca:	08 95       	ret
    15cc:	38 98       	cbi	0x07, 0	; 7
    15ce:	ea cf       	rjmp	.-44     	; 0x15a4 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x3c>

000015d0 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh>:
    15d0:	1f 93       	push	r17
    15d2:	cf 93       	push	r28
    15d4:	df 93       	push	r29
    15d6:	16 2f       	mov	r17, r22
    15d8:	39 98       	cbi	0x07, 1	; 7
    15da:	80 e0       	ldi	r24, 0x00	; 0
    15dc:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    15e0:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    15e4:	d8 e0       	ldi	r29, 0x08	; 8
    15e6:	c0 e0       	ldi	r28, 0x00	; 0
    15e8:	cc 0f       	add	r28, r28
    15ea:	81 e0       	ldi	r24, 0x01	; 1
    15ec:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    15f0:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    15f4:	31 99       	sbic	0x06, 1	; 6
    15f6:	c1 60       	ori	r28, 0x01	; 1
    15f8:	80 e0       	ldi	r24, 0x00	; 0
    15fa:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    15fe:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1602:	d1 50       	subi	r29, 0x01	; 1
    1604:	89 f7       	brne	.-30     	; 0x15e8 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x18>
    1606:	11 23       	and	r17, r17
    1608:	a9 f0       	breq	.+42     	; 0x1634 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x64>
    160a:	39 9a       	sbi	0x07, 1	; 7
    160c:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1610:	81 e0       	ldi	r24, 0x01	; 1
    1612:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1616:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    161a:	80 e0       	ldi	r24, 0x00	; 0
    161c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1620:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1624:	39 98       	cbi	0x07, 1	; 7
    1626:	0e 94 0d 09 	call	0x121a	; 0x121a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    162a:	8c 2f       	mov	r24, r28
    162c:	df 91       	pop	r29
    162e:	cf 91       	pop	r28
    1630:	1f 91       	pop	r17
    1632:	08 95       	ret
    1634:	39 98       	cbi	0x07, 1	; 7
    1636:	ea cf       	rjmp	.-44     	; 0x160c <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x3c>

00001638 <_ZN16CMeasurementTaskC1Ev>:
    1638:	4f 92       	push	r4
    163a:	5f 92       	push	r5
    163c:	6f 92       	push	r6
    163e:	7f 92       	push	r7
    1640:	8f 92       	push	r8
    1642:	9f 92       	push	r9
    1644:	af 92       	push	r10
    1646:	bf 92       	push	r11
    1648:	cf 92       	push	r12
    164a:	df 92       	push	r13
    164c:	ef 92       	push	r14
    164e:	ff 92       	push	r15
    1650:	0f 93       	push	r16
    1652:	1f 93       	push	r17
    1654:	cf 93       	push	r28
    1656:	df 93       	push	r29
    1658:	ec 01       	movw	r28, r24
    165a:	89 e8       	ldi	r24, 0x89	; 137
    165c:	91 e0       	ldi	r25, 0x01	; 1
    165e:	fe 01       	movw	r30, r28
    1660:	81 93       	st	Z+, r24
    1662:	91 93       	st	Z+, r25
    1664:	7f 01       	movw	r14, r30
    1666:	89 e2       	ldi	r24, 0x29	; 41
    1668:	91 e0       	ldi	r25, 0x01	; 1
    166a:	9b 83       	std	Y+3, r25	; 0x03
    166c:	8a 83       	std	Y+2, r24	; 0x02
    166e:	38 98       	cbi	0x07, 0	; 7
    1670:	81 e0       	ldi	r24, 0x01	; 1
    1672:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1676:	40 98       	cbi	0x08, 0	; 8
    1678:	45 98       	cbi	0x08, 5	; 8
    167a:	6e 01       	movw	r12, r28
    167c:	f6 e0       	ldi	r31, 0x06	; 6
    167e:	cf 0e       	add	r12, r31
    1680:	d1 1c       	adc	r13, r1
    1682:	81 e4       	ldi	r24, 0x41	; 65
    1684:	91 e0       	ldi	r25, 0x01	; 1
    1686:	9f 83       	std	Y+7, r25	; 0x07
    1688:	8e 83       	std	Y+6, r24	; 0x06
    168a:	39 98       	cbi	0x07, 1	; 7
    168c:	81 e0       	ldi	r24, 0x01	; 1
    168e:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1692:	41 98       	cbi	0x08, 1	; 8
    1694:	45 98       	cbi	0x08, 5	; 8
    1696:	3e 01       	movw	r6, r28
    1698:	8a e0       	ldi	r24, 0x0A	; 10
    169a:	68 0e       	add	r6, r24
    169c:	71 1c       	adc	r7, r1
    169e:	89 e5       	ldi	r24, 0x59	; 89
    16a0:	91 e0       	ldi	r25, 0x01	; 1
    16a2:	9b 87       	std	Y+11, r25	; 0x0b
    16a4:	8a 87       	std	Y+10, r24	; 0x0a
    16a6:	3a 98       	cbi	0x07, 2	; 7
    16a8:	81 e0       	ldi	r24, 0x01	; 1
    16aa:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    16ae:	42 98       	cbi	0x08, 2	; 8
    16b0:	45 98       	cbi	0x08, 5	; 8
    16b2:	2e 01       	movw	r4, r28
    16b4:	ee e0       	ldi	r30, 0x0E	; 14
    16b6:	4e 0e       	add	r4, r30
    16b8:	51 1c       	adc	r5, r1
    16ba:	81 e7       	ldi	r24, 0x71	; 113
    16bc:	91 e0       	ldi	r25, 0x01	; 1
    16be:	9f 87       	std	Y+15, r25	; 0x0f
    16c0:	8e 87       	std	Y+14, r24	; 0x0e
    16c2:	3b 98       	cbi	0x07, 3	; 7
    16c4:	81 e0       	ldi	r24, 0x01	; 1
    16c6:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    16ca:	43 98       	cbi	0x08, 3	; 8
    16cc:	45 98       	cbi	0x08, 5	; 8
    16ce:	4e 01       	movw	r8, r28
    16d0:	f2 e1       	ldi	r31, 0x12	; 18
    16d2:	8f 0e       	add	r8, r31
    16d4:	91 1c       	adc	r9, r1
    16d6:	84 01       	movw	r16, r8
    16d8:	5e 01       	movw	r10, r28
    16da:	82 e8       	ldi	r24, 0x82	; 130
    16dc:	a8 0e       	add	r10, r24
    16de:	b1 1c       	adc	r11, r1
    16e0:	c8 01       	movw	r24, r16
    16e2:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN16CObjectDetectionC1Ev>
    16e6:	04 5e       	subi	r16, 0xE4	; 228
    16e8:	1f 4f       	sbci	r17, 0xFF	; 255
    16ea:	a0 16       	cp	r10, r16
    16ec:	b1 06       	cpc	r11, r17
    16ee:	c1 f7       	brne	.-16     	; 0x16e0 <_ZN16CMeasurementTaskC1Ev+0xa8>
    16f0:	b7 01       	movw	r22, r14
    16f2:	c4 01       	movw	r24, r8
    16f4:	0e 94 19 0c 	call	0x1832	; 0x1832 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    16f8:	8c 01       	movw	r16, r24
    16fa:	66 e0       	ldi	r22, 0x06	; 6
    16fc:	71 e0       	ldi	r23, 0x01	; 1
    16fe:	85 ed       	ldi	r24, 0xD5	; 213
    1700:	91 e0       	ldi	r25, 0x01	; 1
    1702:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    1706:	a8 01       	movw	r20, r16
    1708:	11 0f       	add	r17, r17
    170a:	66 0b       	sbc	r22, r22
    170c:	77 0b       	sbc	r23, r23
    170e:	85 ed       	ldi	r24, 0xD5	; 213
    1710:	91 e0       	ldi	r25, 0x01	; 1
    1712:	0e 94 53 01 	call	0x2a6	; 0x2a6 <_ZN9CTerminal4putiEl>
    1716:	63 e2       	ldi	r22, 0x23	; 35
    1718:	71 e0       	ldi	r23, 0x01	; 1
    171a:	85 ed       	ldi	r24, 0xD5	; 213
    171c:	91 e0       	ldi	r25, 0x01	; 1
    171e:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    1722:	b6 01       	movw	r22, r12
    1724:	ce 01       	movw	r24, r28
    1726:	8e 96       	adiw	r24, 0x2e	; 46
    1728:	0e 94 19 0c 	call	0x1832	; 0x1832 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    172c:	8c 01       	movw	r16, r24
    172e:	66 e0       	ldi	r22, 0x06	; 6
    1730:	71 e0       	ldi	r23, 0x01	; 1
    1732:	85 ed       	ldi	r24, 0xD5	; 213
    1734:	91 e0       	ldi	r25, 0x01	; 1
    1736:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    173a:	a8 01       	movw	r20, r16
    173c:	11 0f       	add	r17, r17
    173e:	66 0b       	sbc	r22, r22
    1740:	77 0b       	sbc	r23, r23
    1742:	85 ed       	ldi	r24, 0xD5	; 213
    1744:	91 e0       	ldi	r25, 0x01	; 1
    1746:	0e 94 53 01 	call	0x2a6	; 0x2a6 <_ZN9CTerminal4putiEl>
    174a:	63 e2       	ldi	r22, 0x23	; 35
    174c:	71 e0       	ldi	r23, 0x01	; 1
    174e:	85 ed       	ldi	r24, 0xD5	; 213
    1750:	91 e0       	ldi	r25, 0x01	; 1
    1752:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    1756:	b3 01       	movw	r22, r6
    1758:	ce 01       	movw	r24, r28
    175a:	86 5b       	subi	r24, 0xB6	; 182
    175c:	9f 4f       	sbci	r25, 0xFF	; 255
    175e:	0e 94 19 0c 	call	0x1832	; 0x1832 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1762:	8c 01       	movw	r16, r24
    1764:	66 e0       	ldi	r22, 0x06	; 6
    1766:	71 e0       	ldi	r23, 0x01	; 1
    1768:	85 ed       	ldi	r24, 0xD5	; 213
    176a:	91 e0       	ldi	r25, 0x01	; 1
    176c:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    1770:	a8 01       	movw	r20, r16
    1772:	11 0f       	add	r17, r17
    1774:	66 0b       	sbc	r22, r22
    1776:	77 0b       	sbc	r23, r23
    1778:	85 ed       	ldi	r24, 0xD5	; 213
    177a:	91 e0       	ldi	r25, 0x01	; 1
    177c:	0e 94 53 01 	call	0x2a6	; 0x2a6 <_ZN9CTerminal4putiEl>
    1780:	63 e2       	ldi	r22, 0x23	; 35
    1782:	71 e0       	ldi	r23, 0x01	; 1
    1784:	85 ed       	ldi	r24, 0xD5	; 213
    1786:	91 e0       	ldi	r25, 0x01	; 1
    1788:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    178c:	b2 01       	movw	r22, r4
    178e:	ce 01       	movw	r24, r28
    1790:	8a 59       	subi	r24, 0x9A	; 154
    1792:	9f 4f       	sbci	r25, 0xFF	; 255
    1794:	0e 94 19 0c 	call	0x1832	; 0x1832 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1798:	ec 01       	movw	r28, r24
    179a:	66 e0       	ldi	r22, 0x06	; 6
    179c:	71 e0       	ldi	r23, 0x01	; 1
    179e:	85 ed       	ldi	r24, 0xD5	; 213
    17a0:	91 e0       	ldi	r25, 0x01	; 1
    17a2:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    17a6:	ae 01       	movw	r20, r28
    17a8:	dd 0f       	add	r29, r29
    17aa:	66 0b       	sbc	r22, r22
    17ac:	77 0b       	sbc	r23, r23
    17ae:	85 ed       	ldi	r24, 0xD5	; 213
    17b0:	91 e0       	ldi	r25, 0x01	; 1
    17b2:	0e 94 53 01 	call	0x2a6	; 0x2a6 <_ZN9CTerminal4putiEl>
    17b6:	63 e2       	ldi	r22, 0x23	; 35
    17b8:	71 e0       	ldi	r23, 0x01	; 1
    17ba:	85 ed       	ldi	r24, 0xD5	; 213
    17bc:	91 e0       	ldi	r25, 0x01	; 1
    17be:	df 91       	pop	r29
    17c0:	cf 91       	pop	r28
    17c2:	1f 91       	pop	r17
    17c4:	0f 91       	pop	r16
    17c6:	ff 90       	pop	r15
    17c8:	ef 90       	pop	r14
    17ca:	df 90       	pop	r13
    17cc:	cf 90       	pop	r12
    17ce:	bf 90       	pop	r11
    17d0:	af 90       	pop	r10
    17d2:	9f 90       	pop	r9
    17d4:	8f 90       	pop	r8
    17d6:	7f 90       	pop	r7
    17d8:	6f 90       	pop	r6
    17da:	5f 90       	pop	r5
    17dc:	4f 90       	pop	r4
    17de:	0c 94 41 01 	jmp	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>

000017e2 <main>:
    17e2:	cf 93       	push	r28
    17e4:	df 93       	push	r29
    17e6:	cd b7       	in	r28, 0x3d	; 61
    17e8:	de b7       	in	r29, 0x3e	; 62
    17ea:	c2 58       	subi	r28, 0x82	; 130
    17ec:	d1 09       	sbc	r29, r1
    17ee:	0f b6       	in	r0, 0x3f	; 63
    17f0:	f8 94       	cli
    17f2:	de bf       	out	0x3e, r29	; 62
    17f4:	0f be       	out	0x3f, r0	; 63
    17f6:	cd bf       	out	0x3d, r28	; 61
    17f8:	ce 01       	movw	r24, r28
    17fa:	01 96       	adiw	r24, 0x01	; 1
    17fc:	0e 94 1c 0b 	call	0x1638	; 0x1638 <_ZN16CMeasurementTaskC1Ev>
    1800:	20 e0       	ldi	r18, 0x00	; 0
    1802:	44 e6       	ldi	r20, 0x64	; 100
    1804:	50 e0       	ldi	r21, 0x00	; 0
    1806:	be 01       	movw	r22, r28
    1808:	6f 5f       	subi	r22, 0xFF	; 255
    180a:	7f 4f       	sbci	r23, 0xFF	; 255
    180c:	80 e9       	ldi	r24, 0x90	; 144
    180e:	91 e0       	ldi	r25, 0x01	; 1
    1810:	0e 94 80 00 	call	0x100	; 0x100 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>
    1814:	63 e1       	ldi	r22, 0x13	; 19
    1816:	71 e0       	ldi	r23, 0x01	; 1
    1818:	85 ed       	ldi	r24, 0xD5	; 213
    181a:	91 e0       	ldi	r25, 0x01	; 1
    181c:	0e 94 41 01 	call	0x282	; 0x282 <_ZN9CTerminal4putsEPKc>
    1820:	80 e9       	ldi	r24, 0x90	; 144
    1822:	91 e0       	ldi	r25, 0x01	; 1
    1824:	0e 94 a3 00 	call	0x146	; 0x146 <_ZN8CRTTimer4mainEv>
    1828:	fb cf       	rjmp	.-10     	; 0x1820 <main+0x3e>

0000182a <_ZN16CObjectDetectionC1Ev>:
    182a:	0c 94 61 0c 	jmp	0x18c2	; 0x18c2 <_ZN8CVL53L0XC1Ev>

0000182e <_ZN16CObjectDetectionD1Ev>:
    182e:	0c 94 62 0c 	jmp	0x18c4	; 0x18c4 <_ZN8CVL53L0XD1Ev>

00001832 <_ZN16CObjectDetection4initEP14CI2C_Interface>:
    1832:	fc 01       	movw	r30, r24
    1834:	16 8a       	std	Z+22, r1	; 0x16
    1836:	15 8a       	std	Z+21, r1	; 0x15
    1838:	10 8e       	std	Z+24, r1	; 0x18
    183a:	17 8a       	std	Z+23, r1	; 0x17
    183c:	12 8e       	std	Z+26, r1	; 0x1a
    183e:	11 8e       	std	Z+25, r1	; 0x19
    1840:	13 8e       	std	Z+27, r1	; 0x1b
    1842:	14 8a       	std	Z+20, r1	; 0x14
    1844:	13 8a       	std	Z+19, r1	; 0x13
    1846:	0c 94 d3 0d 	jmp	0x1ba6	; 0x1ba6 <_ZN8CVL53L0X4initEP14CI2C_Interface>

0000184a <_ZN16CObjectDetection7processEv>:
    184a:	cf 93       	push	r28
    184c:	df 93       	push	r29
    184e:	ec 01       	movw	r28, r24
    1850:	0e 94 63 0c 	call	0x18c6	; 0x18c6 <_ZN8CVL53L0X4readEv>
    1854:	ce 01       	movw	r24, r28
    1856:	0e 94 9b 0c 	call	0x1936	; 0x1936 <_ZN8CVL53L0X12get_distanceEv>
    185a:	9e 8b       	std	Y+22, r25	; 0x16
    185c:	8d 8b       	std	Y+21, r24	; 0x15
    185e:	4f 89       	ldd	r20, Y+23	; 0x17
    1860:	58 8d       	ldd	r21, Y+24	; 0x18
    1862:	6f e1       	ldi	r22, 0x1F	; 31
    1864:	64 9f       	mul	r22, r20
    1866:	90 01       	movw	r18, r0
    1868:	65 9f       	mul	r22, r21
    186a:	30 0d       	add	r19, r0
    186c:	11 24       	eor	r1, r1
    186e:	28 0f       	add	r18, r24
    1870:	39 1f       	adc	r19, r25
    1872:	37 ff       	sbrs	r19, 7
    1874:	02 c0       	rjmp	.+4      	; 0x187a <_ZN16CObjectDetection7processEv+0x30>
    1876:	21 5e       	subi	r18, 0xE1	; 225
    1878:	3f 4f       	sbci	r19, 0xFF	; 255
    187a:	45 e0       	ldi	r20, 0x05	; 5
    187c:	35 95       	asr	r19
    187e:	27 95       	ror	r18
    1880:	4a 95       	dec	r20
    1882:	e1 f7       	brne	.-8      	; 0x187c <_ZN16CObjectDetection7processEv+0x32>
    1884:	38 8f       	std	Y+24, r19	; 0x18
    1886:	2f 8b       	std	Y+23, r18	; 0x17
    1888:	82 1b       	sub	r24, r18
    188a:	93 0b       	sbc	r25, r19
    188c:	9a 8f       	std	Y+26, r25	; 0x1a
    188e:	89 8f       	std	Y+25, r24	; 0x19
    1890:	86 3f       	cpi	r24, 0xF6	; 246
    1892:	9f 4f       	sbci	r25, 0xFF	; 255
    1894:	a4 f4       	brge	.+40     	; 0x18be <_ZN16CObjectDetection7processEv+0x74>
    1896:	8b 89       	ldd	r24, Y+19	; 0x13
    1898:	9c 89       	ldd	r25, Y+20	; 0x14
    189a:	89 2b       	or	r24, r25
    189c:	81 f4       	brne	.+32     	; 0x18be <_ZN16CObjectDetection7processEv+0x74>
    189e:	81 e0       	ldi	r24, 0x01	; 1
    18a0:	8b 8f       	std	Y+27, r24	; 0x1b
    18a2:	84 e1       	ldi	r24, 0x14	; 20
    18a4:	90 e0       	ldi	r25, 0x00	; 0
    18a6:	9c 8b       	std	Y+20, r25	; 0x14
    18a8:	8b 8b       	std	Y+19, r24	; 0x13
    18aa:	8b 89       	ldd	r24, Y+19	; 0x13
    18ac:	9c 89       	ldd	r25, Y+20	; 0x14
    18ae:	00 97       	sbiw	r24, 0x00	; 0
    18b0:	19 f0       	breq	.+6      	; 0x18b8 <_ZN16CObjectDetection7processEv+0x6e>
    18b2:	01 97       	sbiw	r24, 0x01	; 1
    18b4:	9c 8b       	std	Y+20, r25	; 0x14
    18b6:	8b 8b       	std	Y+19, r24	; 0x13
    18b8:	df 91       	pop	r29
    18ba:	cf 91       	pop	r28
    18bc:	08 95       	ret
    18be:	1b 8e       	std	Y+27, r1	; 0x1b
    18c0:	f4 cf       	rjmp	.-24     	; 0x18aa <_ZN16CObjectDetection7processEv+0x60>

000018c2 <_ZN8CVL53L0XC1Ev>:
    18c2:	08 95       	ret

000018c4 <_ZN8CVL53L0XD1Ev>:
    18c4:	08 95       	ret

000018c6 <_ZN8CVL53L0X4readEv>:
    18c6:	0f 93       	push	r16
    18c8:	1f 93       	push	r17
    18ca:	cf 93       	push	r28
    18cc:	df 93       	push	r29
    18ce:	ec 01       	movw	r28, r24
    18d0:	89 89       	ldd	r24, Y+17	; 0x11
    18d2:	9a 89       	ldd	r25, Y+18	; 0x12
    18d4:	dc 01       	movw	r26, r24
    18d6:	ed 91       	ld	r30, X+
    18d8:	fc 91       	ld	r31, X
    18da:	00 84       	ldd	r0, Z+8	; 0x08
    18dc:	f1 85       	ldd	r31, Z+9	; 0x09
    18de:	e0 2d       	mov	r30, r0
    18e0:	21 e0       	ldi	r18, 0x01	; 1
    18e2:	4b e0       	ldi	r20, 0x0B	; 11
    18e4:	62 e5       	ldi	r22, 0x52	; 82
    18e6:	09 95       	icall
    18e8:	89 89       	ldd	r24, Y+17	; 0x11
    18ea:	9a 89       	ldd	r25, Y+18	; 0x12
    18ec:	9e 01       	movw	r18, r28
    18ee:	2d 5f       	subi	r18, 0xFD	; 253
    18f0:	3f 4f       	sbci	r19, 0xFF	; 255
    18f2:	dc 01       	movw	r26, r24
    18f4:	ed 91       	ld	r30, X+
    18f6:	fc 91       	ld	r31, X
    18f8:	02 88       	ldd	r0, Z+18	; 0x12
    18fa:	f3 89       	ldd	r31, Z+19	; 0x13
    18fc:	e0 2d       	mov	r30, r0
    18fe:	0e e0       	ldi	r16, 0x0E	; 14
    1900:	10 e0       	ldi	r17, 0x00	; 0
    1902:	44 e1       	ldi	r20, 0x14	; 20
    1904:	62 e5       	ldi	r22, 0x52	; 82
    1906:	09 95       	icall
    1908:	8d 85       	ldd	r24, Y+13	; 0x0d
    190a:	9e 85       	ldd	r25, Y+14	; 0x0e
    190c:	98 27       	eor	r25, r24
    190e:	89 27       	eor	r24, r25
    1910:	98 27       	eor	r25, r24
    1912:	1a 82       	std	Y+2, r1	; 0x02
    1914:	9c 01       	movw	r18, r24
    1916:	24 51       	subi	r18, 0x14	; 20
    1918:	31 09       	sbc	r19, r1
    191a:	21 3e       	cpi	r18, 0xE1	; 225
    191c:	31 40       	sbci	r19, 0x01	; 1
    191e:	20 f4       	brcc	.+8      	; 0x1928 <_ZN8CVL53L0X4readEv+0x62>
    1920:	99 83       	std	Y+1, r25	; 0x01
    1922:	88 83       	st	Y, r24
    1924:	81 e0       	ldi	r24, 0x01	; 1
    1926:	8a 83       	std	Y+2, r24	; 0x02
    1928:	88 81       	ld	r24, Y
    192a:	99 81       	ldd	r25, Y+1	; 0x01
    192c:	df 91       	pop	r29
    192e:	cf 91       	pop	r28
    1930:	1f 91       	pop	r17
    1932:	0f 91       	pop	r16
    1934:	08 95       	ret

00001936 <_ZN8CVL53L0X12get_distanceEv>:
    1936:	fc 01       	movw	r30, r24
    1938:	80 81       	ld	r24, Z
    193a:	91 81       	ldd	r25, Z+1	; 0x01
    193c:	08 95       	ret

0000193e <_ZN8CVL53L0X11getSPADinfoEPhPb>:
    193e:	af 92       	push	r10
    1940:	bf 92       	push	r11
    1942:	cf 92       	push	r12
    1944:	df 92       	push	r13
    1946:	ef 92       	push	r14
    1948:	ff 92       	push	r15
    194a:	0f 93       	push	r16
    194c:	1f 93       	push	r17
    194e:	cf 93       	push	r28
    1950:	df 93       	push	r29
    1952:	ec 01       	movw	r28, r24
    1954:	5b 01       	movw	r10, r22
    1956:	8a 01       	movw	r16, r20
    1958:	db 01       	movw	r26, r22
    195a:	1c 92       	st	X, r1
    195c:	89 89       	ldd	r24, Y+17	; 0x11
    195e:	9a 89       	ldd	r25, Y+18	; 0x12
    1960:	dc 01       	movw	r26, r24
    1962:	ed 91       	ld	r30, X+
    1964:	fc 91       	ld	r31, X
    1966:	00 84       	ldd	r0, Z+8	; 0x08
    1968:	f1 85       	ldd	r31, Z+9	; 0x09
    196a:	e0 2d       	mov	r30, r0
    196c:	21 e0       	ldi	r18, 0x01	; 1
    196e:	40 e8       	ldi	r20, 0x80	; 128
    1970:	62 e5       	ldi	r22, 0x52	; 82
    1972:	09 95       	icall
    1974:	89 89       	ldd	r24, Y+17	; 0x11
    1976:	9a 89       	ldd	r25, Y+18	; 0x12
    1978:	dc 01       	movw	r26, r24
    197a:	ed 91       	ld	r30, X+
    197c:	fc 91       	ld	r31, X
    197e:	00 84       	ldd	r0, Z+8	; 0x08
    1980:	f1 85       	ldd	r31, Z+9	; 0x09
    1982:	e0 2d       	mov	r30, r0
    1984:	21 e0       	ldi	r18, 0x01	; 1
    1986:	4f ef       	ldi	r20, 0xFF	; 255
    1988:	62 e5       	ldi	r22, 0x52	; 82
    198a:	09 95       	icall
    198c:	89 89       	ldd	r24, Y+17	; 0x11
    198e:	9a 89       	ldd	r25, Y+18	; 0x12
    1990:	dc 01       	movw	r26, r24
    1992:	ed 91       	ld	r30, X+
    1994:	fc 91       	ld	r31, X
    1996:	00 84       	ldd	r0, Z+8	; 0x08
    1998:	f1 85       	ldd	r31, Z+9	; 0x09
    199a:	e0 2d       	mov	r30, r0
    199c:	20 e0       	ldi	r18, 0x00	; 0
    199e:	40 e0       	ldi	r20, 0x00	; 0
    19a0:	62 e5       	ldi	r22, 0x52	; 82
    19a2:	09 95       	icall
    19a4:	89 89       	ldd	r24, Y+17	; 0x11
    19a6:	9a 89       	ldd	r25, Y+18	; 0x12
    19a8:	dc 01       	movw	r26, r24
    19aa:	ed 91       	ld	r30, X+
    19ac:	fc 91       	ld	r31, X
    19ae:	00 84       	ldd	r0, Z+8	; 0x08
    19b0:	f1 85       	ldd	r31, Z+9	; 0x09
    19b2:	e0 2d       	mov	r30, r0
    19b4:	26 e0       	ldi	r18, 0x06	; 6
    19b6:	4f ef       	ldi	r20, 0xFF	; 255
    19b8:	62 e5       	ldi	r22, 0x52	; 82
    19ba:	09 95       	icall
    19bc:	e9 88       	ldd	r14, Y+17	; 0x11
    19be:	fa 88       	ldd	r15, Y+18	; 0x12
    19c0:	d7 01       	movw	r26, r14
    19c2:	ed 91       	ld	r30, X+
    19c4:	fc 91       	ld	r31, X
    19c6:	c0 84       	ldd	r12, Z+8	; 0x08
    19c8:	d1 84       	ldd	r13, Z+9	; 0x09
    19ca:	06 84       	ldd	r0, Z+14	; 0x0e
    19cc:	f7 85       	ldd	r31, Z+15	; 0x0f
    19ce:	e0 2d       	mov	r30, r0
    19d0:	43 e8       	ldi	r20, 0x83	; 131
    19d2:	62 e5       	ldi	r22, 0x52	; 82
    19d4:	c7 01       	movw	r24, r14
    19d6:	09 95       	icall
    19d8:	28 2f       	mov	r18, r24
    19da:	24 60       	ori	r18, 0x04	; 4
    19dc:	43 e8       	ldi	r20, 0x83	; 131
    19de:	62 e5       	ldi	r22, 0x52	; 82
    19e0:	c7 01       	movw	r24, r14
    19e2:	f6 01       	movw	r30, r12
    19e4:	09 95       	icall
    19e6:	89 89       	ldd	r24, Y+17	; 0x11
    19e8:	9a 89       	ldd	r25, Y+18	; 0x12
    19ea:	dc 01       	movw	r26, r24
    19ec:	ed 91       	ld	r30, X+
    19ee:	fc 91       	ld	r31, X
    19f0:	00 84       	ldd	r0, Z+8	; 0x08
    19f2:	f1 85       	ldd	r31, Z+9	; 0x09
    19f4:	e0 2d       	mov	r30, r0
    19f6:	27 e0       	ldi	r18, 0x07	; 7
    19f8:	4f ef       	ldi	r20, 0xFF	; 255
    19fa:	62 e5       	ldi	r22, 0x52	; 82
    19fc:	09 95       	icall
    19fe:	89 89       	ldd	r24, Y+17	; 0x11
    1a00:	9a 89       	ldd	r25, Y+18	; 0x12
    1a02:	dc 01       	movw	r26, r24
    1a04:	ed 91       	ld	r30, X+
    1a06:	fc 91       	ld	r31, X
    1a08:	00 84       	ldd	r0, Z+8	; 0x08
    1a0a:	f1 85       	ldd	r31, Z+9	; 0x09
    1a0c:	e0 2d       	mov	r30, r0
    1a0e:	21 e0       	ldi	r18, 0x01	; 1
    1a10:	41 e8       	ldi	r20, 0x81	; 129
    1a12:	62 e5       	ldi	r22, 0x52	; 82
    1a14:	09 95       	icall
    1a16:	89 89       	ldd	r24, Y+17	; 0x11
    1a18:	9a 89       	ldd	r25, Y+18	; 0x12
    1a1a:	dc 01       	movw	r26, r24
    1a1c:	ed 91       	ld	r30, X+
    1a1e:	fc 91       	ld	r31, X
    1a20:	00 84       	ldd	r0, Z+8	; 0x08
    1a22:	f1 85       	ldd	r31, Z+9	; 0x09
    1a24:	e0 2d       	mov	r30, r0
    1a26:	21 e0       	ldi	r18, 0x01	; 1
    1a28:	40 e8       	ldi	r20, 0x80	; 128
    1a2a:	62 e5       	ldi	r22, 0x52	; 82
    1a2c:	09 95       	icall
    1a2e:	89 89       	ldd	r24, Y+17	; 0x11
    1a30:	9a 89       	ldd	r25, Y+18	; 0x12
    1a32:	dc 01       	movw	r26, r24
    1a34:	ed 91       	ld	r30, X+
    1a36:	fc 91       	ld	r31, X
    1a38:	00 84       	ldd	r0, Z+8	; 0x08
    1a3a:	f1 85       	ldd	r31, Z+9	; 0x09
    1a3c:	e0 2d       	mov	r30, r0
    1a3e:	2b e6       	ldi	r18, 0x6B	; 107
    1a40:	44 e9       	ldi	r20, 0x94	; 148
    1a42:	62 e5       	ldi	r22, 0x52	; 82
    1a44:	09 95       	icall
    1a46:	89 89       	ldd	r24, Y+17	; 0x11
    1a48:	9a 89       	ldd	r25, Y+18	; 0x12
    1a4a:	dc 01       	movw	r26, r24
    1a4c:	ed 91       	ld	r30, X+
    1a4e:	fc 91       	ld	r31, X
    1a50:	00 84       	ldd	r0, Z+8	; 0x08
    1a52:	f1 85       	ldd	r31, Z+9	; 0x09
    1a54:	e0 2d       	mov	r30, r0
    1a56:	20 e0       	ldi	r18, 0x00	; 0
    1a58:	43 e8       	ldi	r20, 0x83	; 131
    1a5a:	62 e5       	ldi	r22, 0x52	; 82
    1a5c:	09 95       	icall
    1a5e:	81 e4       	ldi	r24, 0x41	; 65
    1a60:	c8 2e       	mov	r12, r24
    1a62:	82 e4       	ldi	r24, 0x42	; 66
    1a64:	d8 2e       	mov	r13, r24
    1a66:	8f e0       	ldi	r24, 0x0F	; 15
    1a68:	e8 2e       	mov	r14, r24
    1a6a:	f1 2c       	mov	r15, r1
    1a6c:	89 89       	ldd	r24, Y+17	; 0x11
    1a6e:	9a 89       	ldd	r25, Y+18	; 0x12
    1a70:	dc 01       	movw	r26, r24
    1a72:	ed 91       	ld	r30, X+
    1a74:	fc 91       	ld	r31, X
    1a76:	06 84       	ldd	r0, Z+14	; 0x0e
    1a78:	f7 85       	ldd	r31, Z+15	; 0x0f
    1a7a:	e0 2d       	mov	r30, r0
    1a7c:	43 e8       	ldi	r20, 0x83	; 131
    1a7e:	62 e5       	ldi	r22, 0x52	; 82
    1a80:	09 95       	icall
    1a82:	81 11       	cpse	r24, r1
    1a84:	08 c0       	rjmp	.+16     	; 0x1a96 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x158>
    1a86:	b1 e0       	ldi	r27, 0x01	; 1
    1a88:	cb 1a       	sub	r12, r27
    1a8a:	d1 08       	sbc	r13, r1
    1a8c:	e1 08       	sbc	r14, r1
    1a8e:	f1 08       	sbc	r15, r1
    1a90:	69 f7       	brne	.-38     	; 0x1a6c <_ZN8CVL53L0X11getSPADinfoEPhPb+0x12e>
    1a92:	80 e0       	ldi	r24, 0x00	; 0
    1a94:	7d c0       	rjmp	.+250    	; 0x1b90 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x252>
    1a96:	89 89       	ldd	r24, Y+17	; 0x11
    1a98:	9a 89       	ldd	r25, Y+18	; 0x12
    1a9a:	dc 01       	movw	r26, r24
    1a9c:	ed 91       	ld	r30, X+
    1a9e:	fc 91       	ld	r31, X
    1aa0:	00 84       	ldd	r0, Z+8	; 0x08
    1aa2:	f1 85       	ldd	r31, Z+9	; 0x09
    1aa4:	e0 2d       	mov	r30, r0
    1aa6:	21 e0       	ldi	r18, 0x01	; 1
    1aa8:	43 e8       	ldi	r20, 0x83	; 131
    1aaa:	62 e5       	ldi	r22, 0x52	; 82
    1aac:	09 95       	icall
    1aae:	89 89       	ldd	r24, Y+17	; 0x11
    1ab0:	9a 89       	ldd	r25, Y+18	; 0x12
    1ab2:	dc 01       	movw	r26, r24
    1ab4:	ed 91       	ld	r30, X+
    1ab6:	fc 91       	ld	r31, X
    1ab8:	06 84       	ldd	r0, Z+14	; 0x0e
    1aba:	f7 85       	ldd	r31, Z+15	; 0x0f
    1abc:	e0 2d       	mov	r30, r0
    1abe:	42 e9       	ldi	r20, 0x92	; 146
    1ac0:	62 e5       	ldi	r22, 0x52	; 82
    1ac2:	09 95       	icall
    1ac4:	98 2f       	mov	r25, r24
    1ac6:	9f 77       	andi	r25, 0x7F	; 127
    1ac8:	f5 01       	movw	r30, r10
    1aca:	90 83       	st	Z, r25
    1acc:	88 1f       	adc	r24, r24
    1ace:	88 27       	eor	r24, r24
    1ad0:	88 1f       	adc	r24, r24
    1ad2:	d8 01       	movw	r26, r16
    1ad4:	8c 93       	st	X, r24
    1ad6:	89 89       	ldd	r24, Y+17	; 0x11
    1ad8:	9a 89       	ldd	r25, Y+18	; 0x12
    1ada:	dc 01       	movw	r26, r24
    1adc:	ed 91       	ld	r30, X+
    1ade:	fc 91       	ld	r31, X
    1ae0:	00 84       	ldd	r0, Z+8	; 0x08
    1ae2:	f1 85       	ldd	r31, Z+9	; 0x09
    1ae4:	e0 2d       	mov	r30, r0
    1ae6:	20 e0       	ldi	r18, 0x00	; 0
    1ae8:	41 e8       	ldi	r20, 0x81	; 129
    1aea:	62 e5       	ldi	r22, 0x52	; 82
    1aec:	09 95       	icall
    1aee:	89 89       	ldd	r24, Y+17	; 0x11
    1af0:	9a 89       	ldd	r25, Y+18	; 0x12
    1af2:	dc 01       	movw	r26, r24
    1af4:	ed 91       	ld	r30, X+
    1af6:	fc 91       	ld	r31, X
    1af8:	00 84       	ldd	r0, Z+8	; 0x08
    1afa:	f1 85       	ldd	r31, Z+9	; 0x09
    1afc:	e0 2d       	mov	r30, r0
    1afe:	26 e0       	ldi	r18, 0x06	; 6
    1b00:	4f ef       	ldi	r20, 0xFF	; 255
    1b02:	62 e5       	ldi	r22, 0x52	; 82
    1b04:	09 95       	icall
    1b06:	09 89       	ldd	r16, Y+17	; 0x11
    1b08:	1a 89       	ldd	r17, Y+18	; 0x12
    1b0a:	d8 01       	movw	r26, r16
    1b0c:	ed 91       	ld	r30, X+
    1b0e:	fc 91       	ld	r31, X
    1b10:	e0 84       	ldd	r14, Z+8	; 0x08
    1b12:	f1 84       	ldd	r15, Z+9	; 0x09
    1b14:	06 84       	ldd	r0, Z+14	; 0x0e
    1b16:	f7 85       	ldd	r31, Z+15	; 0x0f
    1b18:	e0 2d       	mov	r30, r0
    1b1a:	43 e8       	ldi	r20, 0x83	; 131
    1b1c:	62 e5       	ldi	r22, 0x52	; 82
    1b1e:	c8 01       	movw	r24, r16
    1b20:	09 95       	icall
    1b22:	28 2f       	mov	r18, r24
    1b24:	43 e8       	ldi	r20, 0x83	; 131
    1b26:	62 e5       	ldi	r22, 0x52	; 82
    1b28:	c8 01       	movw	r24, r16
    1b2a:	f7 01       	movw	r30, r14
    1b2c:	09 95       	icall
    1b2e:	89 89       	ldd	r24, Y+17	; 0x11
    1b30:	9a 89       	ldd	r25, Y+18	; 0x12
    1b32:	dc 01       	movw	r26, r24
    1b34:	ed 91       	ld	r30, X+
    1b36:	fc 91       	ld	r31, X
    1b38:	00 84       	ldd	r0, Z+8	; 0x08
    1b3a:	f1 85       	ldd	r31, Z+9	; 0x09
    1b3c:	e0 2d       	mov	r30, r0
    1b3e:	21 e0       	ldi	r18, 0x01	; 1
    1b40:	4f ef       	ldi	r20, 0xFF	; 255
    1b42:	62 e5       	ldi	r22, 0x52	; 82
    1b44:	09 95       	icall
    1b46:	89 89       	ldd	r24, Y+17	; 0x11
    1b48:	9a 89       	ldd	r25, Y+18	; 0x12
    1b4a:	dc 01       	movw	r26, r24
    1b4c:	ed 91       	ld	r30, X+
    1b4e:	fc 91       	ld	r31, X
    1b50:	00 84       	ldd	r0, Z+8	; 0x08
    1b52:	f1 85       	ldd	r31, Z+9	; 0x09
    1b54:	e0 2d       	mov	r30, r0
    1b56:	21 e0       	ldi	r18, 0x01	; 1
    1b58:	40 e0       	ldi	r20, 0x00	; 0
    1b5a:	62 e5       	ldi	r22, 0x52	; 82
    1b5c:	09 95       	icall
    1b5e:	89 89       	ldd	r24, Y+17	; 0x11
    1b60:	9a 89       	ldd	r25, Y+18	; 0x12
    1b62:	dc 01       	movw	r26, r24
    1b64:	ed 91       	ld	r30, X+
    1b66:	fc 91       	ld	r31, X
    1b68:	00 84       	ldd	r0, Z+8	; 0x08
    1b6a:	f1 85       	ldd	r31, Z+9	; 0x09
    1b6c:	e0 2d       	mov	r30, r0
    1b6e:	20 e0       	ldi	r18, 0x00	; 0
    1b70:	4f ef       	ldi	r20, 0xFF	; 255
    1b72:	62 e5       	ldi	r22, 0x52	; 82
    1b74:	09 95       	icall
    1b76:	89 89       	ldd	r24, Y+17	; 0x11
    1b78:	9a 89       	ldd	r25, Y+18	; 0x12
    1b7a:	dc 01       	movw	r26, r24
    1b7c:	ed 91       	ld	r30, X+
    1b7e:	fc 91       	ld	r31, X
    1b80:	00 84       	ldd	r0, Z+8	; 0x08
    1b82:	f1 85       	ldd	r31, Z+9	; 0x09
    1b84:	e0 2d       	mov	r30, r0
    1b86:	20 e0       	ldi	r18, 0x00	; 0
    1b88:	40 e8       	ldi	r20, 0x80	; 128
    1b8a:	62 e5       	ldi	r22, 0x52	; 82
    1b8c:	09 95       	icall
    1b8e:	81 e0       	ldi	r24, 0x01	; 1
    1b90:	df 91       	pop	r29
    1b92:	cf 91       	pop	r28
    1b94:	1f 91       	pop	r17
    1b96:	0f 91       	pop	r16
    1b98:	ff 90       	pop	r15
    1b9a:	ef 90       	pop	r14
    1b9c:	df 90       	pop	r13
    1b9e:	cf 90       	pop	r12
    1ba0:	bf 90       	pop	r11
    1ba2:	af 90       	pop	r10
    1ba4:	08 95       	ret

00001ba6 <_ZN8CVL53L0X4initEP14CI2C_Interface>:
    1ba6:	cf 92       	push	r12
    1ba8:	df 92       	push	r13
    1baa:	ef 92       	push	r14
    1bac:	ff 92       	push	r15
    1bae:	0f 93       	push	r16
    1bb0:	1f 93       	push	r17
    1bb2:	cf 93       	push	r28
    1bb4:	df 93       	push	r29
    1bb6:	cd b7       	in	r28, 0x3d	; 61
    1bb8:	de b7       	in	r29, 0x3e	; 62
    1bba:	28 97       	sbiw	r28, 0x08	; 8
    1bbc:	0f b6       	in	r0, 0x3f	; 63
    1bbe:	f8 94       	cli
    1bc0:	de bf       	out	0x3e, r29	; 62
    1bc2:	0f be       	out	0x3f, r0	; 63
    1bc4:	cd bf       	out	0x3d, r28	; 61
    1bc6:	7c 01       	movw	r14, r24
    1bc8:	8b 01       	movw	r16, r22
    1bca:	dc 01       	movw	r26, r24
    1bcc:	52 96       	adiw	r26, 0x12	; 18
    1bce:	7c 93       	st	X, r23
    1bd0:	6e 93       	st	-X, r22
    1bd2:	51 97       	sbiw	r26, 0x11	; 17
    1bd4:	80 e0       	ldi	r24, 0x00	; 0
    1bd6:	90 e2       	ldi	r25, 0x20	; 32
    1bd8:	11 96       	adiw	r26, 0x01	; 1
    1bda:	9c 93       	st	X, r25
    1bdc:	8e 93       	st	-X, r24
    1bde:	12 96       	adiw	r26, 0x02	; 2
    1be0:	1c 92       	st	X, r1
    1be2:	db 01       	movw	r26, r22
    1be4:	ed 91       	ld	r30, X+
    1be6:	fc 91       	ld	r31, X
    1be8:	c0 84       	ldd	r12, Z+8	; 0x08
    1bea:	d1 84       	ldd	r13, Z+9	; 0x09
    1bec:	06 84       	ldd	r0, Z+14	; 0x0e
    1bee:	f7 85       	ldd	r31, Z+15	; 0x0f
    1bf0:	e0 2d       	mov	r30, r0
    1bf2:	49 e8       	ldi	r20, 0x89	; 137
    1bf4:	62 e5       	ldi	r22, 0x52	; 82
    1bf6:	c8 01       	movw	r24, r16
    1bf8:	09 95       	icall
    1bfa:	28 2f       	mov	r18, r24
    1bfc:	21 60       	ori	r18, 0x01	; 1
    1bfe:	49 e8       	ldi	r20, 0x89	; 137
    1c00:	62 e5       	ldi	r22, 0x52	; 82
    1c02:	c8 01       	movw	r24, r16
    1c04:	f6 01       	movw	r30, r12
    1c06:	09 95       	icall
    1c08:	d7 01       	movw	r26, r14
    1c0a:	51 96       	adiw	r26, 0x11	; 17
    1c0c:	8d 91       	ld	r24, X+
    1c0e:	9c 91       	ld	r25, X
    1c10:	dc 01       	movw	r26, r24
    1c12:	ed 91       	ld	r30, X+
    1c14:	fc 91       	ld	r31, X
    1c16:	06 84       	ldd	r0, Z+14	; 0x0e
    1c18:	f7 85       	ldd	r31, Z+15	; 0x0f
    1c1a:	e0 2d       	mov	r30, r0
    1c1c:	40 ec       	ldi	r20, 0xC0	; 192
    1c1e:	62 e5       	ldi	r22, 0x52	; 82
    1c20:	09 95       	icall
    1c22:	8e 3e       	cpi	r24, 0xEE	; 238
    1c24:	09 f0       	breq	.+2      	; 0x1c28 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x82>
    1c26:	7a c1       	rjmp	.+756    	; 0x1f1c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x376>
    1c28:	f7 01       	movw	r30, r14
    1c2a:	81 89       	ldd	r24, Z+17	; 0x11
    1c2c:	92 89       	ldd	r25, Z+18	; 0x12
    1c2e:	dc 01       	movw	r26, r24
    1c30:	ed 91       	ld	r30, X+
    1c32:	fc 91       	ld	r31, X
    1c34:	00 84       	ldd	r0, Z+8	; 0x08
    1c36:	f1 85       	ldd	r31, Z+9	; 0x09
    1c38:	e0 2d       	mov	r30, r0
    1c3a:	21 e0       	ldi	r18, 0x01	; 1
    1c3c:	4f eb       	ldi	r20, 0xBF	; 191
    1c3e:	62 e5       	ldi	r22, 0x52	; 82
    1c40:	09 95       	icall
    1c42:	81 ea       	ldi	r24, 0xA1	; 161
    1c44:	96 e8       	ldi	r25, 0x86	; 134
    1c46:	a1 e0       	ldi	r26, 0x01	; 1
    1c48:	b0 e0       	ldi	r27, 0x00	; 0
    1c4a:	01 97       	sbiw	r24, 0x01	; 1
    1c4c:	a1 09       	sbc	r26, r1
    1c4e:	b1 09       	sbc	r27, r1
    1c50:	11 f0       	breq	.+4      	; 0x1c56 <_ZN8CVL53L0X4initEP14CI2C_Interface+0xb0>
    1c52:	00 00       	nop
    1c54:	fa cf       	rjmp	.-12     	; 0x1c4a <_ZN8CVL53L0X4initEP14CI2C_Interface+0xa4>
    1c56:	f7 01       	movw	r30, r14
    1c58:	81 89       	ldd	r24, Z+17	; 0x11
    1c5a:	92 89       	ldd	r25, Z+18	; 0x12
    1c5c:	dc 01       	movw	r26, r24
    1c5e:	ed 91       	ld	r30, X+
    1c60:	fc 91       	ld	r31, X
    1c62:	00 84       	ldd	r0, Z+8	; 0x08
    1c64:	f1 85       	ldd	r31, Z+9	; 0x09
    1c66:	e0 2d       	mov	r30, r0
    1c68:	20 e0       	ldi	r18, 0x00	; 0
    1c6a:	48 e8       	ldi	r20, 0x88	; 136
    1c6c:	62 e5       	ldi	r22, 0x52	; 82
    1c6e:	09 95       	icall
    1c70:	f7 01       	movw	r30, r14
    1c72:	81 89       	ldd	r24, Z+17	; 0x11
    1c74:	92 89       	ldd	r25, Z+18	; 0x12
    1c76:	dc 01       	movw	r26, r24
    1c78:	ed 91       	ld	r30, X+
    1c7a:	fc 91       	ld	r31, X
    1c7c:	00 84       	ldd	r0, Z+8	; 0x08
    1c7e:	f1 85       	ldd	r31, Z+9	; 0x09
    1c80:	e0 2d       	mov	r30, r0
    1c82:	21 e0       	ldi	r18, 0x01	; 1
    1c84:	40 e8       	ldi	r20, 0x80	; 128
    1c86:	62 e5       	ldi	r22, 0x52	; 82
    1c88:	09 95       	icall
    1c8a:	f7 01       	movw	r30, r14
    1c8c:	81 89       	ldd	r24, Z+17	; 0x11
    1c8e:	92 89       	ldd	r25, Z+18	; 0x12
    1c90:	dc 01       	movw	r26, r24
    1c92:	ed 91       	ld	r30, X+
    1c94:	fc 91       	ld	r31, X
    1c96:	00 84       	ldd	r0, Z+8	; 0x08
    1c98:	f1 85       	ldd	r31, Z+9	; 0x09
    1c9a:	e0 2d       	mov	r30, r0
    1c9c:	21 e0       	ldi	r18, 0x01	; 1
    1c9e:	4f ef       	ldi	r20, 0xFF	; 255
    1ca0:	62 e5       	ldi	r22, 0x52	; 82
    1ca2:	09 95       	icall
    1ca4:	f7 01       	movw	r30, r14
    1ca6:	81 89       	ldd	r24, Z+17	; 0x11
    1ca8:	92 89       	ldd	r25, Z+18	; 0x12
    1caa:	dc 01       	movw	r26, r24
    1cac:	ed 91       	ld	r30, X+
    1cae:	fc 91       	ld	r31, X
    1cb0:	00 84       	ldd	r0, Z+8	; 0x08
    1cb2:	f1 85       	ldd	r31, Z+9	; 0x09
    1cb4:	e0 2d       	mov	r30, r0
    1cb6:	20 e0       	ldi	r18, 0x00	; 0
    1cb8:	40 e0       	ldi	r20, 0x00	; 0
    1cba:	62 e5       	ldi	r22, 0x52	; 82
    1cbc:	09 95       	icall
    1cbe:	f7 01       	movw	r30, r14
    1cc0:	81 89       	ldd	r24, Z+17	; 0x11
    1cc2:	92 89       	ldd	r25, Z+18	; 0x12
    1cc4:	dc 01       	movw	r26, r24
    1cc6:	ed 91       	ld	r30, X+
    1cc8:	fc 91       	ld	r31, X
    1cca:	06 84       	ldd	r0, Z+14	; 0x0e
    1ccc:	f7 85       	ldd	r31, Z+15	; 0x0f
    1cce:	e0 2d       	mov	r30, r0
    1cd0:	41 e9       	ldi	r20, 0x91	; 145
    1cd2:	62 e5       	ldi	r22, 0x52	; 82
    1cd4:	09 95       	icall
    1cd6:	f7 01       	movw	r30, r14
    1cd8:	81 89       	ldd	r24, Z+17	; 0x11
    1cda:	92 89       	ldd	r25, Z+18	; 0x12
    1cdc:	dc 01       	movw	r26, r24
    1cde:	ed 91       	ld	r30, X+
    1ce0:	fc 91       	ld	r31, X
    1ce2:	00 84       	ldd	r0, Z+8	; 0x08
    1ce4:	f1 85       	ldd	r31, Z+9	; 0x09
    1ce6:	e0 2d       	mov	r30, r0
    1ce8:	21 e0       	ldi	r18, 0x01	; 1
    1cea:	40 e0       	ldi	r20, 0x00	; 0
    1cec:	62 e5       	ldi	r22, 0x52	; 82
    1cee:	09 95       	icall
    1cf0:	f7 01       	movw	r30, r14
    1cf2:	81 89       	ldd	r24, Z+17	; 0x11
    1cf4:	92 89       	ldd	r25, Z+18	; 0x12
    1cf6:	dc 01       	movw	r26, r24
    1cf8:	ed 91       	ld	r30, X+
    1cfa:	fc 91       	ld	r31, X
    1cfc:	00 84       	ldd	r0, Z+8	; 0x08
    1cfe:	f1 85       	ldd	r31, Z+9	; 0x09
    1d00:	e0 2d       	mov	r30, r0
    1d02:	20 e0       	ldi	r18, 0x00	; 0
    1d04:	4f ef       	ldi	r20, 0xFF	; 255
    1d06:	62 e5       	ldi	r22, 0x52	; 82
    1d08:	09 95       	icall
    1d0a:	f7 01       	movw	r30, r14
    1d0c:	81 89       	ldd	r24, Z+17	; 0x11
    1d0e:	92 89       	ldd	r25, Z+18	; 0x12
    1d10:	dc 01       	movw	r26, r24
    1d12:	ed 91       	ld	r30, X+
    1d14:	fc 91       	ld	r31, X
    1d16:	00 84       	ldd	r0, Z+8	; 0x08
    1d18:	f1 85       	ldd	r31, Z+9	; 0x09
    1d1a:	e0 2d       	mov	r30, r0
    1d1c:	20 e0       	ldi	r18, 0x00	; 0
    1d1e:	40 e8       	ldi	r20, 0x80	; 128
    1d20:	62 e5       	ldi	r22, 0x52	; 82
    1d22:	09 95       	icall
    1d24:	18 86       	std	Y+8, r1	; 0x08
    1d26:	ae 01       	movw	r20, r28
    1d28:	49 5f       	subi	r20, 0xF9	; 249
    1d2a:	5f 4f       	sbci	r21, 0xFF	; 255
    1d2c:	be 01       	movw	r22, r28
    1d2e:	68 5f       	subi	r22, 0xF8	; 248
    1d30:	7f 4f       	sbci	r23, 0xFF	; 255
    1d32:	c7 01       	movw	r24, r14
    1d34:	0e 94 9f 0c 	call	0x193e	; 0x193e <_ZN8CVL53L0X11getSPADinfoEPhPb>
    1d38:	f7 01       	movw	r30, r14
    1d3a:	81 89       	ldd	r24, Z+17	; 0x11
    1d3c:	92 89       	ldd	r25, Z+18	; 0x12
    1d3e:	dc 01       	movw	r26, r24
    1d40:	ed 91       	ld	r30, X+
    1d42:	fc 91       	ld	r31, X
    1d44:	02 88       	ldd	r0, Z+18	; 0x12
    1d46:	f3 89       	ldd	r31, Z+19	; 0x13
    1d48:	e0 2d       	mov	r30, r0
    1d4a:	06 e0       	ldi	r16, 0x06	; 6
    1d4c:	10 e0       	ldi	r17, 0x00	; 0
    1d4e:	9e 01       	movw	r18, r28
    1d50:	2f 5f       	subi	r18, 0xFF	; 255
    1d52:	3f 4f       	sbci	r19, 0xFF	; 255
    1d54:	40 eb       	ldi	r20, 0xB0	; 176
    1d56:	62 e5       	ldi	r22, 0x52	; 82
    1d58:	09 95       	icall
    1d5a:	f7 01       	movw	r30, r14
    1d5c:	81 89       	ldd	r24, Z+17	; 0x11
    1d5e:	92 89       	ldd	r25, Z+18	; 0x12
    1d60:	dc 01       	movw	r26, r24
    1d62:	ed 91       	ld	r30, X+
    1d64:	fc 91       	ld	r31, X
    1d66:	00 84       	ldd	r0, Z+8	; 0x08
    1d68:	f1 85       	ldd	r31, Z+9	; 0x09
    1d6a:	e0 2d       	mov	r30, r0
    1d6c:	21 e0       	ldi	r18, 0x01	; 1
    1d6e:	4f ef       	ldi	r20, 0xFF	; 255
    1d70:	62 e5       	ldi	r22, 0x52	; 82
    1d72:	09 95       	icall
    1d74:	f7 01       	movw	r30, r14
    1d76:	81 89       	ldd	r24, Z+17	; 0x11
    1d78:	92 89       	ldd	r25, Z+18	; 0x12
    1d7a:	dc 01       	movw	r26, r24
    1d7c:	ed 91       	ld	r30, X+
    1d7e:	fc 91       	ld	r31, X
    1d80:	00 84       	ldd	r0, Z+8	; 0x08
    1d82:	f1 85       	ldd	r31, Z+9	; 0x09
    1d84:	e0 2d       	mov	r30, r0
    1d86:	20 e0       	ldi	r18, 0x00	; 0
    1d88:	4f e4       	ldi	r20, 0x4F	; 79
    1d8a:	62 e5       	ldi	r22, 0x52	; 82
    1d8c:	09 95       	icall
    1d8e:	f7 01       	movw	r30, r14
    1d90:	81 89       	ldd	r24, Z+17	; 0x11
    1d92:	92 89       	ldd	r25, Z+18	; 0x12
    1d94:	dc 01       	movw	r26, r24
    1d96:	ed 91       	ld	r30, X+
    1d98:	fc 91       	ld	r31, X
    1d9a:	00 84       	ldd	r0, Z+8	; 0x08
    1d9c:	f1 85       	ldd	r31, Z+9	; 0x09
    1d9e:	e0 2d       	mov	r30, r0
    1da0:	2c e2       	ldi	r18, 0x2C	; 44
    1da2:	4e e4       	ldi	r20, 0x4E	; 78
    1da4:	62 e5       	ldi	r22, 0x52	; 82
    1da6:	09 95       	icall
    1da8:	f7 01       	movw	r30, r14
    1daa:	81 89       	ldd	r24, Z+17	; 0x11
    1dac:	92 89       	ldd	r25, Z+18	; 0x12
    1dae:	dc 01       	movw	r26, r24
    1db0:	ed 91       	ld	r30, X+
    1db2:	fc 91       	ld	r31, X
    1db4:	00 84       	ldd	r0, Z+8	; 0x08
    1db6:	f1 85       	ldd	r31, Z+9	; 0x09
    1db8:	e0 2d       	mov	r30, r0
    1dba:	20 e0       	ldi	r18, 0x00	; 0
    1dbc:	4f ef       	ldi	r20, 0xFF	; 255
    1dbe:	62 e5       	ldi	r22, 0x52	; 82
    1dc0:	09 95       	icall
    1dc2:	f7 01       	movw	r30, r14
    1dc4:	81 89       	ldd	r24, Z+17	; 0x11
    1dc6:	92 89       	ldd	r25, Z+18	; 0x12
    1dc8:	dc 01       	movw	r26, r24
    1dca:	ed 91       	ld	r30, X+
    1dcc:	fc 91       	ld	r31, X
    1dce:	00 84       	ldd	r0, Z+8	; 0x08
    1dd0:	f1 85       	ldd	r31, Z+9	; 0x09
    1dd2:	e0 2d       	mov	r30, r0
    1dd4:	24 eb       	ldi	r18, 0xB4	; 180
    1dd6:	46 eb       	ldi	r20, 0xB6	; 182
    1dd8:	62 e5       	ldi	r22, 0x52	; 82
    1dda:	09 95       	icall
    1ddc:	8f 81       	ldd	r24, Y+7	; 0x07
    1dde:	ac e0       	ldi	r26, 0x0C	; 12
    1de0:	81 11       	cpse	r24, r1
    1de2:	01 c0       	rjmp	.+2      	; 0x1de6 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x240>
    1de4:	a0 e0       	ldi	r26, 0x00	; 0
    1de6:	b8 85       	ldd	r27, Y+8	; 0x08
    1de8:	80 e0       	ldi	r24, 0x00	; 0
    1dea:	90 e0       	ldi	r25, 0x00	; 0
    1dec:	01 e0       	ldi	r16, 0x01	; 1
    1dee:	10 e0       	ldi	r17, 0x00	; 0
    1df0:	48 2f       	mov	r20, r24
    1df2:	46 95       	lsr	r20
    1df4:	46 95       	lsr	r20
    1df6:	46 95       	lsr	r20
    1df8:	50 e0       	ldi	r21, 0x00	; 0
    1dfa:	21 e0       	ldi	r18, 0x01	; 1
    1dfc:	30 e0       	ldi	r19, 0x00	; 0
    1dfe:	2c 0f       	add	r18, r28
    1e00:	3d 1f       	adc	r19, r29
    1e02:	24 0f       	add	r18, r20
    1e04:	35 1f       	adc	r19, r21
    1e06:	f9 01       	movw	r30, r18
    1e08:	20 81       	ld	r18, Z
    1e0a:	68 2f       	mov	r22, r24
    1e0c:	67 70       	andi	r22, 0x07	; 7
    1e0e:	8a 17       	cp	r24, r26
    1e10:	10 f0       	brcs	.+4      	; 0x1e16 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x270>
    1e12:	b9 13       	cpse	r27, r25
    1e14:	79 c0       	rjmp	.+242    	; 0x1f08 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x362>
    1e16:	e1 e0       	ldi	r30, 0x01	; 1
    1e18:	f0 e0       	ldi	r31, 0x00	; 0
    1e1a:	ec 0f       	add	r30, r28
    1e1c:	fd 1f       	adc	r31, r29
    1e1e:	4e 0f       	add	r20, r30
    1e20:	5f 1f       	adc	r21, r31
    1e22:	f8 01       	movw	r30, r16
    1e24:	02 c0       	rjmp	.+4      	; 0x1e2a <_ZN8CVL53L0X4initEP14CI2C_Interface+0x284>
    1e26:	ee 0f       	add	r30, r30
    1e28:	ff 1f       	adc	r31, r31
    1e2a:	6a 95       	dec	r22
    1e2c:	e2 f7       	brpl	.-8      	; 0x1e26 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x280>
    1e2e:	bf 01       	movw	r22, r30
    1e30:	60 95       	com	r22
    1e32:	26 23       	and	r18, r22
    1e34:	fa 01       	movw	r30, r20
    1e36:	20 83       	st	Z, r18
    1e38:	8f 5f       	subi	r24, 0xFF	; 255
    1e3a:	80 33       	cpi	r24, 0x30	; 48
    1e3c:	c9 f6       	brne	.-78     	; 0x1df0 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x24a>
    1e3e:	d7 01       	movw	r26, r14
    1e40:	51 96       	adiw	r26, 0x11	; 17
    1e42:	8d 91       	ld	r24, X+
    1e44:	9c 91       	ld	r25, X
    1e46:	dc 01       	movw	r26, r24
    1e48:	ed 91       	ld	r30, X+
    1e4a:	fc 91       	ld	r31, X
    1e4c:	04 84       	ldd	r0, Z+12	; 0x0c
    1e4e:	f5 85       	ldd	r31, Z+13	; 0x0d
    1e50:	e0 2d       	mov	r30, r0
    1e52:	06 e0       	ldi	r16, 0x06	; 6
    1e54:	10 e0       	ldi	r17, 0x00	; 0
    1e56:	9e 01       	movw	r18, r28
    1e58:	2f 5f       	subi	r18, 0xFF	; 255
    1e5a:	3f 4f       	sbci	r19, 0xFF	; 255
    1e5c:	40 eb       	ldi	r20, 0xB0	; 176
    1e5e:	62 e5       	ldi	r22, 0x52	; 82
    1e60:	09 95       	icall
    1e62:	f7 01       	movw	r30, r14
    1e64:	81 89       	ldd	r24, Z+17	; 0x11
    1e66:	92 89       	ldd	r25, Z+18	; 0x12
    1e68:	dc 01       	movw	r26, r24
    1e6a:	ed 91       	ld	r30, X+
    1e6c:	fc 91       	ld	r31, X
    1e6e:	06 84       	ldd	r0, Z+14	; 0x0e
    1e70:	f7 85       	ldd	r31, Z+15	; 0x0f
    1e72:	e0 2d       	mov	r30, r0
    1e74:	44 e8       	ldi	r20, 0x84	; 132
    1e76:	62 e5       	ldi	r22, 0x52	; 82
    1e78:	09 95       	icall
    1e7a:	18 2f       	mov	r17, r24
    1e7c:	f7 01       	movw	r30, r14
    1e7e:	81 89       	ldd	r24, Z+17	; 0x11
    1e80:	92 89       	ldd	r25, Z+18	; 0x12
    1e82:	dc 01       	movw	r26, r24
    1e84:	ed 91       	ld	r30, X+
    1e86:	fc 91       	ld	r31, X
    1e88:	00 84       	ldd	r0, Z+8	; 0x08
    1e8a:	f1 85       	ldd	r31, Z+9	; 0x09
    1e8c:	e0 2d       	mov	r30, r0
    1e8e:	24 e0       	ldi	r18, 0x04	; 4
    1e90:	4a e0       	ldi	r20, 0x0A	; 10
    1e92:	62 e5       	ldi	r22, 0x52	; 82
    1e94:	09 95       	icall
    1e96:	f7 01       	movw	r30, r14
    1e98:	81 89       	ldd	r24, Z+17	; 0x11
    1e9a:	92 89       	ldd	r25, Z+18	; 0x12
    1e9c:	21 2f       	mov	r18, r17
    1e9e:	2f 7e       	andi	r18, 0xEF	; 239
    1ea0:	dc 01       	movw	r26, r24
    1ea2:	ed 91       	ld	r30, X+
    1ea4:	fc 91       	ld	r31, X
    1ea6:	00 84       	ldd	r0, Z+8	; 0x08
    1ea8:	f1 85       	ldd	r31, Z+9	; 0x09
    1eaa:	e0 2d       	mov	r30, r0
    1eac:	44 e8       	ldi	r20, 0x84	; 132
    1eae:	62 e5       	ldi	r22, 0x52	; 82
    1eb0:	09 95       	icall
    1eb2:	f7 01       	movw	r30, r14
    1eb4:	81 89       	ldd	r24, Z+17	; 0x11
    1eb6:	92 89       	ldd	r25, Z+18	; 0x12
    1eb8:	dc 01       	movw	r26, r24
    1eba:	ed 91       	ld	r30, X+
    1ebc:	fc 91       	ld	r31, X
    1ebe:	00 84       	ldd	r0, Z+8	; 0x08
    1ec0:	f1 85       	ldd	r31, Z+9	; 0x09
    1ec2:	e0 2d       	mov	r30, r0
    1ec4:	21 e0       	ldi	r18, 0x01	; 1
    1ec6:	4b e0       	ldi	r20, 0x0B	; 11
    1ec8:	62 e5       	ldi	r22, 0x52	; 82
    1eca:	09 95       	icall
    1ecc:	f7 01       	movw	r30, r14
    1ece:	81 89       	ldd	r24, Z+17	; 0x11
    1ed0:	92 89       	ldd	r25, Z+18	; 0x12
    1ed2:	dc 01       	movw	r26, r24
    1ed4:	ed 91       	ld	r30, X+
    1ed6:	fc 91       	ld	r31, X
    1ed8:	00 84       	ldd	r0, Z+8	; 0x08
    1eda:	f1 85       	ldd	r31, Z+9	; 0x09
    1edc:	e0 2d       	mov	r30, r0
    1ede:	22 e0       	ldi	r18, 0x02	; 2
    1ee0:	40 e0       	ldi	r20, 0x00	; 0
    1ee2:	62 e5       	ldi	r22, 0x52	; 82
    1ee4:	09 95       	icall
    1ee6:	90 e0       	ldi	r25, 0x00	; 0
    1ee8:	80 e0       	ldi	r24, 0x00	; 0
    1eea:	28 96       	adiw	r28, 0x08	; 8
    1eec:	0f b6       	in	r0, 0x3f	; 63
    1eee:	f8 94       	cli
    1ef0:	de bf       	out	0x3e, r29	; 62
    1ef2:	0f be       	out	0x3f, r0	; 63
    1ef4:	cd bf       	out	0x3d, r28	; 61
    1ef6:	df 91       	pop	r29
    1ef8:	cf 91       	pop	r28
    1efa:	1f 91       	pop	r17
    1efc:	0f 91       	pop	r16
    1efe:	ff 90       	pop	r15
    1f00:	ef 90       	pop	r14
    1f02:	df 90       	pop	r13
    1f04:	cf 90       	pop	r12
    1f06:	08 95       	ret
    1f08:	30 e0       	ldi	r19, 0x00	; 0
    1f0a:	02 c0       	rjmp	.+4      	; 0x1f10 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x36a>
    1f0c:	35 95       	asr	r19
    1f0e:	27 95       	ror	r18
    1f10:	6a 95       	dec	r22
    1f12:	e2 f7       	brpl	.-8      	; 0x1f0c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x366>
    1f14:	20 ff       	sbrs	r18, 0
    1f16:	90 cf       	rjmp	.-224    	; 0x1e38 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x292>
    1f18:	9f 5f       	subi	r25, 0xFF	; 255
    1f1a:	8e cf       	rjmp	.-228    	; 0x1e38 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x292>
    1f1c:	8e ef       	ldi	r24, 0xFE	; 254
    1f1e:	9f ef       	ldi	r25, 0xFF	; 255
    1f20:	e4 cf       	rjmp	.-56     	; 0x1eea <_ZN8CVL53L0X4initEP14CI2C_Interface+0x344>

00001f22 <__udivmodsi4>:
    1f22:	a1 e2       	ldi	r26, 0x21	; 33
    1f24:	1a 2e       	mov	r1, r26
    1f26:	aa 1b       	sub	r26, r26
    1f28:	bb 1b       	sub	r27, r27
    1f2a:	fd 01       	movw	r30, r26
    1f2c:	0d c0       	rjmp	.+26     	; 0x1f48 <__udivmodsi4_ep>

00001f2e <__udivmodsi4_loop>:
    1f2e:	aa 1f       	adc	r26, r26
    1f30:	bb 1f       	adc	r27, r27
    1f32:	ee 1f       	adc	r30, r30
    1f34:	ff 1f       	adc	r31, r31
    1f36:	a2 17       	cp	r26, r18
    1f38:	b3 07       	cpc	r27, r19
    1f3a:	e4 07       	cpc	r30, r20
    1f3c:	f5 07       	cpc	r31, r21
    1f3e:	20 f0       	brcs	.+8      	; 0x1f48 <__udivmodsi4_ep>
    1f40:	a2 1b       	sub	r26, r18
    1f42:	b3 0b       	sbc	r27, r19
    1f44:	e4 0b       	sbc	r30, r20
    1f46:	f5 0b       	sbc	r31, r21

00001f48 <__udivmodsi4_ep>:
    1f48:	66 1f       	adc	r22, r22
    1f4a:	77 1f       	adc	r23, r23
    1f4c:	88 1f       	adc	r24, r24
    1f4e:	99 1f       	adc	r25, r25
    1f50:	1a 94       	dec	r1
    1f52:	69 f7       	brne	.-38     	; 0x1f2e <__udivmodsi4_loop>
    1f54:	60 95       	com	r22
    1f56:	70 95       	com	r23
    1f58:	80 95       	com	r24
    1f5a:	90 95       	com	r25
    1f5c:	9b 01       	movw	r18, r22
    1f5e:	ac 01       	movw	r20, r24
    1f60:	bd 01       	movw	r22, r26
    1f62:	cf 01       	movw	r24, r30
    1f64:	08 95       	ret

00001f66 <__divmodsi4>:
    1f66:	05 2e       	mov	r0, r21
    1f68:	97 fb       	bst	r25, 7
    1f6a:	1e f4       	brtc	.+6      	; 0x1f72 <__divmodsi4+0xc>
    1f6c:	00 94       	com	r0
    1f6e:	0e 94 ca 0f 	call	0x1f94	; 0x1f94 <__negsi2>
    1f72:	57 fd       	sbrc	r21, 7
    1f74:	07 d0       	rcall	.+14     	; 0x1f84 <__divmodsi4_neg2>
    1f76:	0e 94 91 0f 	call	0x1f22	; 0x1f22 <__udivmodsi4>
    1f7a:	07 fc       	sbrc	r0, 7
    1f7c:	03 d0       	rcall	.+6      	; 0x1f84 <__divmodsi4_neg2>
    1f7e:	4e f4       	brtc	.+18     	; 0x1f92 <__divmodsi4_exit>
    1f80:	0c 94 ca 0f 	jmp	0x1f94	; 0x1f94 <__negsi2>

00001f84 <__divmodsi4_neg2>:
    1f84:	50 95       	com	r21
    1f86:	40 95       	com	r20
    1f88:	30 95       	com	r19
    1f8a:	21 95       	neg	r18
    1f8c:	3f 4f       	sbci	r19, 0xFF	; 255
    1f8e:	4f 4f       	sbci	r20, 0xFF	; 255
    1f90:	5f 4f       	sbci	r21, 0xFF	; 255

00001f92 <__divmodsi4_exit>:
    1f92:	08 95       	ret

00001f94 <__negsi2>:
    1f94:	90 95       	com	r25
    1f96:	80 95       	com	r24
    1f98:	70 95       	com	r23
    1f9a:	61 95       	neg	r22
    1f9c:	7f 4f       	sbci	r23, 0xFF	; 255
    1f9e:	8f 4f       	sbci	r24, 0xFF	; 255
    1fa0:	9f 4f       	sbci	r25, 0xFF	; 255
    1fa2:	08 95       	ret

00001fa4 <__tablejump2__>:
    1fa4:	ee 0f       	add	r30, r30
    1fa6:	ff 1f       	adc	r31, r31
    1fa8:	05 90       	lpm	r0, Z+
    1faa:	f4 91       	lpm	r31, Z
    1fac:	e0 2d       	mov	r30, r0
    1fae:	09 94       	ijmp

00001fb0 <malloc>:
    1fb0:	0f 93       	push	r16
    1fb2:	1f 93       	push	r17
    1fb4:	cf 93       	push	r28
    1fb6:	df 93       	push	r29
    1fb8:	82 30       	cpi	r24, 0x02	; 2
    1fba:	91 05       	cpc	r25, r1
    1fbc:	10 f4       	brcc	.+4      	; 0x1fc2 <malloc+0x12>
    1fbe:	82 e0       	ldi	r24, 0x02	; 2
    1fc0:	90 e0       	ldi	r25, 0x00	; 0
    1fc2:	e0 91 d8 01 	lds	r30, 0x01D8	; 0x8001d8 <__flp>
    1fc6:	f0 91 d9 01 	lds	r31, 0x01D9	; 0x8001d9 <__flp+0x1>
    1fca:	30 e0       	ldi	r19, 0x00	; 0
    1fcc:	20 e0       	ldi	r18, 0x00	; 0
    1fce:	b0 e0       	ldi	r27, 0x00	; 0
    1fd0:	a0 e0       	ldi	r26, 0x00	; 0
    1fd2:	30 97       	sbiw	r30, 0x00	; 0
    1fd4:	99 f4       	brne	.+38     	; 0x1ffc <malloc+0x4c>
    1fd6:	21 15       	cp	r18, r1
    1fd8:	31 05       	cpc	r19, r1
    1fda:	09 f4       	brne	.+2      	; 0x1fde <malloc+0x2e>
    1fdc:	4a c0       	rjmp	.+148    	; 0x2072 <malloc+0xc2>
    1fde:	28 1b       	sub	r18, r24
    1fe0:	39 0b       	sbc	r19, r25
    1fe2:	24 30       	cpi	r18, 0x04	; 4
    1fe4:	31 05       	cpc	r19, r1
    1fe6:	d8 f5       	brcc	.+118    	; 0x205e <malloc+0xae>
    1fe8:	8a 81       	ldd	r24, Y+2	; 0x02
    1fea:	9b 81       	ldd	r25, Y+3	; 0x03
    1fec:	61 15       	cp	r22, r1
    1fee:	71 05       	cpc	r23, r1
    1ff0:	89 f1       	breq	.+98     	; 0x2054 <malloc+0xa4>
    1ff2:	fb 01       	movw	r30, r22
    1ff4:	93 83       	std	Z+3, r25	; 0x03
    1ff6:	82 83       	std	Z+2, r24	; 0x02
    1ff8:	fe 01       	movw	r30, r28
    1ffa:	11 c0       	rjmp	.+34     	; 0x201e <malloc+0x6e>
    1ffc:	40 81       	ld	r20, Z
    1ffe:	51 81       	ldd	r21, Z+1	; 0x01
    2000:	02 81       	ldd	r16, Z+2	; 0x02
    2002:	13 81       	ldd	r17, Z+3	; 0x03
    2004:	48 17       	cp	r20, r24
    2006:	59 07       	cpc	r21, r25
    2008:	e0 f0       	brcs	.+56     	; 0x2042 <malloc+0x92>
    200a:	48 17       	cp	r20, r24
    200c:	59 07       	cpc	r21, r25
    200e:	99 f4       	brne	.+38     	; 0x2036 <malloc+0x86>
    2010:	10 97       	sbiw	r26, 0x00	; 0
    2012:	61 f0       	breq	.+24     	; 0x202c <malloc+0x7c>
    2014:	12 96       	adiw	r26, 0x02	; 2
    2016:	0c 93       	st	X, r16
    2018:	12 97       	sbiw	r26, 0x02	; 2
    201a:	13 96       	adiw	r26, 0x03	; 3
    201c:	1c 93       	st	X, r17
    201e:	32 96       	adiw	r30, 0x02	; 2
    2020:	cf 01       	movw	r24, r30
    2022:	df 91       	pop	r29
    2024:	cf 91       	pop	r28
    2026:	1f 91       	pop	r17
    2028:	0f 91       	pop	r16
    202a:	08 95       	ret
    202c:	00 93 d8 01 	sts	0x01D8, r16	; 0x8001d8 <__flp>
    2030:	10 93 d9 01 	sts	0x01D9, r17	; 0x8001d9 <__flp+0x1>
    2034:	f4 cf       	rjmp	.-24     	; 0x201e <malloc+0x6e>
    2036:	21 15       	cp	r18, r1
    2038:	31 05       	cpc	r19, r1
    203a:	51 f0       	breq	.+20     	; 0x2050 <malloc+0xa0>
    203c:	42 17       	cp	r20, r18
    203e:	53 07       	cpc	r21, r19
    2040:	38 f0       	brcs	.+14     	; 0x2050 <malloc+0xa0>
    2042:	a9 01       	movw	r20, r18
    2044:	db 01       	movw	r26, r22
    2046:	9a 01       	movw	r18, r20
    2048:	bd 01       	movw	r22, r26
    204a:	df 01       	movw	r26, r30
    204c:	f8 01       	movw	r30, r16
    204e:	c1 cf       	rjmp	.-126    	; 0x1fd2 <malloc+0x22>
    2050:	ef 01       	movw	r28, r30
    2052:	f9 cf       	rjmp	.-14     	; 0x2046 <malloc+0x96>
    2054:	90 93 d9 01 	sts	0x01D9, r25	; 0x8001d9 <__flp+0x1>
    2058:	80 93 d8 01 	sts	0x01D8, r24	; 0x8001d8 <__flp>
    205c:	cd cf       	rjmp	.-102    	; 0x1ff8 <malloc+0x48>
    205e:	fe 01       	movw	r30, r28
    2060:	e2 0f       	add	r30, r18
    2062:	f3 1f       	adc	r31, r19
    2064:	81 93       	st	Z+, r24
    2066:	91 93       	st	Z+, r25
    2068:	22 50       	subi	r18, 0x02	; 2
    206a:	31 09       	sbc	r19, r1
    206c:	39 83       	std	Y+1, r19	; 0x01
    206e:	28 83       	st	Y, r18
    2070:	d7 cf       	rjmp	.-82     	; 0x2020 <malloc+0x70>
    2072:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    2076:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    207a:	23 2b       	or	r18, r19
    207c:	41 f4       	brne	.+16     	; 0x208e <malloc+0xde>
    207e:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
    2082:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
    2086:	30 93 d7 01 	sts	0x01D7, r19	; 0x8001d7 <__brkval+0x1>
    208a:	20 93 d6 01 	sts	0x01D6, r18	; 0x8001d6 <__brkval>
    208e:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__malloc_heap_end>
    2092:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__malloc_heap_end+0x1>
    2096:	21 15       	cp	r18, r1
    2098:	31 05       	cpc	r19, r1
    209a:	41 f4       	brne	.+16     	; 0x20ac <malloc+0xfc>
    209c:	2d b7       	in	r18, 0x3d	; 61
    209e:	3e b7       	in	r19, 0x3e	; 62
    20a0:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
    20a4:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
    20a8:	24 1b       	sub	r18, r20
    20aa:	35 0b       	sbc	r19, r21
    20ac:	e0 91 d6 01 	lds	r30, 0x01D6	; 0x8001d6 <__brkval>
    20b0:	f0 91 d7 01 	lds	r31, 0x01D7	; 0x8001d7 <__brkval+0x1>
    20b4:	e2 17       	cp	r30, r18
    20b6:	f3 07       	cpc	r31, r19
    20b8:	a0 f4       	brcc	.+40     	; 0x20e2 <malloc+0x132>
    20ba:	2e 1b       	sub	r18, r30
    20bc:	3f 0b       	sbc	r19, r31
    20be:	28 17       	cp	r18, r24
    20c0:	39 07       	cpc	r19, r25
    20c2:	78 f0       	brcs	.+30     	; 0x20e2 <malloc+0x132>
    20c4:	ac 01       	movw	r20, r24
    20c6:	4e 5f       	subi	r20, 0xFE	; 254
    20c8:	5f 4f       	sbci	r21, 0xFF	; 255
    20ca:	24 17       	cp	r18, r20
    20cc:	35 07       	cpc	r19, r21
    20ce:	48 f0       	brcs	.+18     	; 0x20e2 <malloc+0x132>
    20d0:	4e 0f       	add	r20, r30
    20d2:	5f 1f       	adc	r21, r31
    20d4:	50 93 d7 01 	sts	0x01D7, r21	; 0x8001d7 <__brkval+0x1>
    20d8:	40 93 d6 01 	sts	0x01D6, r20	; 0x8001d6 <__brkval>
    20dc:	81 93       	st	Z+, r24
    20de:	91 93       	st	Z+, r25
    20e0:	9f cf       	rjmp	.-194    	; 0x2020 <malloc+0x70>
    20e2:	f0 e0       	ldi	r31, 0x00	; 0
    20e4:	e0 e0       	ldi	r30, 0x00	; 0
    20e6:	9c cf       	rjmp	.-200    	; 0x2020 <malloc+0x70>

000020e8 <free>:
    20e8:	cf 93       	push	r28
    20ea:	df 93       	push	r29
    20ec:	00 97       	sbiw	r24, 0x00	; 0
    20ee:	e9 f0       	breq	.+58     	; 0x212a <free+0x42>
    20f0:	fc 01       	movw	r30, r24
    20f2:	32 97       	sbiw	r30, 0x02	; 2
    20f4:	13 82       	std	Z+3, r1	; 0x03
    20f6:	12 82       	std	Z+2, r1	; 0x02
    20f8:	a0 91 d8 01 	lds	r26, 0x01D8	; 0x8001d8 <__flp>
    20fc:	b0 91 d9 01 	lds	r27, 0x01D9	; 0x8001d9 <__flp+0x1>
    2100:	ed 01       	movw	r28, r26
    2102:	30 e0       	ldi	r19, 0x00	; 0
    2104:	20 e0       	ldi	r18, 0x00	; 0
    2106:	10 97       	sbiw	r26, 0x00	; 0
    2108:	a1 f4       	brne	.+40     	; 0x2132 <free+0x4a>
    210a:	20 81       	ld	r18, Z
    210c:	31 81       	ldd	r19, Z+1	; 0x01
    210e:	82 0f       	add	r24, r18
    2110:	93 1f       	adc	r25, r19
    2112:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    2116:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    211a:	28 17       	cp	r18, r24
    211c:	39 07       	cpc	r19, r25
    211e:	09 f0       	breq	.+2      	; 0x2122 <free+0x3a>
    2120:	61 c0       	rjmp	.+194    	; 0x21e4 <free+0xfc>
    2122:	f0 93 d7 01 	sts	0x01D7, r31	; 0x8001d7 <__brkval+0x1>
    2126:	e0 93 d6 01 	sts	0x01D6, r30	; 0x8001d6 <__brkval>
    212a:	df 91       	pop	r29
    212c:	cf 91       	pop	r28
    212e:	08 95       	ret
    2130:	ea 01       	movw	r28, r20
    2132:	ce 17       	cp	r28, r30
    2134:	df 07       	cpc	r29, r31
    2136:	e8 f5       	brcc	.+122    	; 0x21b2 <free+0xca>
    2138:	4a 81       	ldd	r20, Y+2	; 0x02
    213a:	5b 81       	ldd	r21, Y+3	; 0x03
    213c:	9e 01       	movw	r18, r28
    213e:	41 15       	cp	r20, r1
    2140:	51 05       	cpc	r21, r1
    2142:	b1 f7       	brne	.-20     	; 0x2130 <free+0x48>
    2144:	e9 01       	movw	r28, r18
    2146:	fb 83       	std	Y+3, r31	; 0x03
    2148:	ea 83       	std	Y+2, r30	; 0x02
    214a:	49 91       	ld	r20, Y+
    214c:	59 91       	ld	r21, Y+
    214e:	c4 0f       	add	r28, r20
    2150:	d5 1f       	adc	r29, r21
    2152:	ec 17       	cp	r30, r28
    2154:	fd 07       	cpc	r31, r29
    2156:	61 f4       	brne	.+24     	; 0x2170 <free+0x88>
    2158:	80 81       	ld	r24, Z
    215a:	91 81       	ldd	r25, Z+1	; 0x01
    215c:	02 96       	adiw	r24, 0x02	; 2
    215e:	84 0f       	add	r24, r20
    2160:	95 1f       	adc	r25, r21
    2162:	e9 01       	movw	r28, r18
    2164:	99 83       	std	Y+1, r25	; 0x01
    2166:	88 83       	st	Y, r24
    2168:	82 81       	ldd	r24, Z+2	; 0x02
    216a:	93 81       	ldd	r25, Z+3	; 0x03
    216c:	9b 83       	std	Y+3, r25	; 0x03
    216e:	8a 83       	std	Y+2, r24	; 0x02
    2170:	f0 e0       	ldi	r31, 0x00	; 0
    2172:	e0 e0       	ldi	r30, 0x00	; 0
    2174:	12 96       	adiw	r26, 0x02	; 2
    2176:	8d 91       	ld	r24, X+
    2178:	9c 91       	ld	r25, X
    217a:	13 97       	sbiw	r26, 0x03	; 3
    217c:	00 97       	sbiw	r24, 0x00	; 0
    217e:	b9 f5       	brne	.+110    	; 0x21ee <free+0x106>
    2180:	2d 91       	ld	r18, X+
    2182:	3c 91       	ld	r19, X
    2184:	11 97       	sbiw	r26, 0x01	; 1
    2186:	cd 01       	movw	r24, r26
    2188:	02 96       	adiw	r24, 0x02	; 2
    218a:	82 0f       	add	r24, r18
    218c:	93 1f       	adc	r25, r19
    218e:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    2192:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    2196:	28 17       	cp	r18, r24
    2198:	39 07       	cpc	r19, r25
    219a:	39 f6       	brne	.-114    	; 0x212a <free+0x42>
    219c:	30 97       	sbiw	r30, 0x00	; 0
    219e:	51 f5       	brne	.+84     	; 0x21f4 <free+0x10c>
    21a0:	10 92 d9 01 	sts	0x01D9, r1	; 0x8001d9 <__flp+0x1>
    21a4:	10 92 d8 01 	sts	0x01D8, r1	; 0x8001d8 <__flp>
    21a8:	b0 93 d7 01 	sts	0x01D7, r27	; 0x8001d7 <__brkval+0x1>
    21ac:	a0 93 d6 01 	sts	0x01D6, r26	; 0x8001d6 <__brkval>
    21b0:	bc cf       	rjmp	.-136    	; 0x212a <free+0x42>
    21b2:	d3 83       	std	Z+3, r29	; 0x03
    21b4:	c2 83       	std	Z+2, r28	; 0x02
    21b6:	40 81       	ld	r20, Z
    21b8:	51 81       	ldd	r21, Z+1	; 0x01
    21ba:	84 0f       	add	r24, r20
    21bc:	95 1f       	adc	r25, r21
    21be:	c8 17       	cp	r28, r24
    21c0:	d9 07       	cpc	r29, r25
    21c2:	61 f4       	brne	.+24     	; 0x21dc <free+0xf4>
    21c4:	4e 5f       	subi	r20, 0xFE	; 254
    21c6:	5f 4f       	sbci	r21, 0xFF	; 255
    21c8:	88 81       	ld	r24, Y
    21ca:	99 81       	ldd	r25, Y+1	; 0x01
    21cc:	48 0f       	add	r20, r24
    21ce:	59 1f       	adc	r21, r25
    21d0:	51 83       	std	Z+1, r21	; 0x01
    21d2:	40 83       	st	Z, r20
    21d4:	8a 81       	ldd	r24, Y+2	; 0x02
    21d6:	9b 81       	ldd	r25, Y+3	; 0x03
    21d8:	93 83       	std	Z+3, r25	; 0x03
    21da:	82 83       	std	Z+2, r24	; 0x02
    21dc:	21 15       	cp	r18, r1
    21de:	31 05       	cpc	r19, r1
    21e0:	09 f0       	breq	.+2      	; 0x21e4 <free+0xfc>
    21e2:	b0 cf       	rjmp	.-160    	; 0x2144 <free+0x5c>
    21e4:	f0 93 d9 01 	sts	0x01D9, r31	; 0x8001d9 <__flp+0x1>
    21e8:	e0 93 d8 01 	sts	0x01D8, r30	; 0x8001d8 <__flp>
    21ec:	9e cf       	rjmp	.-196    	; 0x212a <free+0x42>
    21ee:	fd 01       	movw	r30, r26
    21f0:	dc 01       	movw	r26, r24
    21f2:	c0 cf       	rjmp	.-128    	; 0x2174 <free+0x8c>
    21f4:	13 82       	std	Z+3, r1	; 0x03
    21f6:	12 82       	std	Z+2, r1	; 0x02
    21f8:	d7 cf       	rjmp	.-82     	; 0x21a8 <free+0xc0>

000021fa <__do_global_dtors>:
    21fa:	10 e0       	ldi	r17, 0x00	; 0
    21fc:	c6 e3       	ldi	r28, 0x36	; 54
    21fe:	d0 e0       	ldi	r29, 0x00	; 0
    2200:	04 c0       	rjmp	.+8      	; 0x220a <__do_global_dtors+0x10>
    2202:	fe 01       	movw	r30, r28
    2204:	0e 94 d2 0f 	call	0x1fa4	; 0x1fa4 <__tablejump2__>
    2208:	21 96       	adiw	r28, 0x01	; 1
    220a:	c7 33       	cpi	r28, 0x37	; 55
    220c:	d1 07       	cpc	r29, r17
    220e:	c9 f7       	brne	.-14     	; 0x2202 <__do_global_dtors+0x8>
    2210:	f8 94       	cli

00002212 <__stop_program>:
    2212:	ff cf       	rjmp	.-2      	; 0x2212 <__stop_program>
