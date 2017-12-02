
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
      38:	0c 94 c1 00 	jmp	0x182	; 0x182 <__vector_14>
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
      68:	1e 01       	movw	r2, r28
      6a:	a0 01       	movw	r20, r0

0000006c <__ctors_end>:
      6c:	a4 01       	movw	r20, r8

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
      80:	ec e1       	ldi	r30, 0x1C	; 28
      82:	f2 e1       	ldi	r31, 0x12	; 18
      84:	02 c0       	rjmp	.+4      	; 0x8a <__do_copy_data+0x10>
      86:	05 90       	lpm	r0, Z+
      88:	0d 92       	st	X+, r0
      8a:	a8 35       	cpi	r26, 0x58	; 88
      8c:	b1 07       	cpc	r27, r17
      8e:	d9 f7       	brne	.-10     	; 0x86 <__do_copy_data+0xc>

00000090 <__do_clear_bss>:
      90:	21 e0       	ldi	r18, 0x01	; 1
      92:	a8 e5       	ldi	r26, 0x58	; 88
      94:	b1 e0       	ldi	r27, 0x01	; 1
      96:	01 c0       	rjmp	.+2      	; 0x9a <.do_clear_bss_start>

00000098 <.do_clear_bss_loop>:
      98:	1d 92       	st	X+, r1

0000009a <.do_clear_bss_start>:
      9a:	a2 3a       	cpi	r26, 0xA2	; 162
      9c:	b2 07       	cpc	r27, r18
      9e:	e1 f7       	brne	.-8      	; 0x98 <.do_clear_bss_loop>

000000a0 <__do_global_ctors>:
      a0:	10 e0       	ldi	r17, 0x00	; 0
      a2:	c6 e3       	ldi	r28, 0x36	; 54
      a4:	d0 e0       	ldi	r29, 0x00	; 0
      a6:	04 c0       	rjmp	.+8      	; 0xb0 <__do_global_ctors+0x10>
      a8:	21 97       	sbiw	r28, 0x01	; 1
      aa:	fe 01       	movw	r30, r28
      ac:	0e 94 d6 07 	call	0xfac	; 0xfac <__tablejump2__>
      b0:	c4 33       	cpi	r28, 0x34	; 52
      b2:	d1 07       	cpc	r29, r17
      b4:	c9 f7       	brne	.-14     	; 0xa8 <__do_global_ctors+0x8>
      b6:	0e 94 1c 04 	call	0x838	; 0x838 <main>
      ba:	0c 94 01 09 	jmp	0x1202	; 0x1202 <__do_global_dtors>

000000be <__bad_interrupt>:
      be:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c2 <_ZdlPv>:
      c2:	0c 94 78 08 	jmp	0x10f0	; 0x10f0 <free>

000000c6 <_ZN8CRTTimerC1Ev>:
      c6:	e9 e5       	ldi	r30, 0x59	; 89
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
      de:	e9 39       	cpi	r30, 0x99	; 153
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
     102:	e9 e5       	ldi	r30, 0x59	; 89
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
     11e:	e7 5a       	subi	r30, 0xA7	; 167
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
     14a:	c9 e5       	ldi	r28, 0x59	; 89
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
     176:	c9 39       	cpi	r28, 0x99	; 153
     178:	db 07       	cpc	r29, r27
     17a:	49 f7       	brne	.-46     	; 0x14e <_ZN8CRTTimer4mainEv+0x8>
     17c:	df 91       	pop	r29
     17e:	cf 91       	pop	r28
     180:	08 95       	ret

00000182 <__vector_14>:
     182:	1f 92       	push	r1
     184:	0f 92       	push	r0
     186:	0f b6       	in	r0, 0x3f	; 63
     188:	0f 92       	push	r0
     18a:	11 24       	eor	r1, r1
     18c:	2f 93       	push	r18
     18e:	3f 93       	push	r19
     190:	4f 93       	push	r20
     192:	5f 93       	push	r21
     194:	6f 93       	push	r22
     196:	7f 93       	push	r23
     198:	8f 93       	push	r24
     19a:	9f 93       	push	r25
     19c:	af 93       	push	r26
     19e:	bf 93       	push	r27
     1a0:	cf 93       	push	r28
     1a2:	df 93       	push	r29
     1a4:	ef 93       	push	r30
     1a6:	ff 93       	push	r31
     1a8:	c9 e5       	ldi	r28, 0x59	; 89
     1aa:	d1 e0       	ldi	r29, 0x01	; 1
     1ac:	8c 81       	ldd	r24, Y+4	; 0x04
     1ae:	9d 81       	ldd	r25, Y+5	; 0x05
     1b0:	00 97       	sbiw	r24, 0x00	; 0
     1b2:	71 f1       	breq	.+92     	; 0x210 <__vector_14+0x8e>
     1b4:	01 97       	sbiw	r24, 0x01	; 1
     1b6:	9d 83       	std	Y+5, r25	; 0x05
     1b8:	8c 83       	std	Y+4, r24	; 0x04
     1ba:	28 96       	adiw	r28, 0x08	; 8
     1bc:	b1 e0       	ldi	r27, 0x01	; 1
     1be:	c9 39       	cpi	r28, 0x99	; 153
     1c0:	db 07       	cpc	r29, r27
     1c2:	a1 f7       	brne	.-24     	; 0x1ac <__vector_14+0x2a>
     1c4:	80 91 99 01 	lds	r24, 0x0199	; 0x800199 <g_rt_time>
     1c8:	90 91 9a 01 	lds	r25, 0x019A	; 0x80019a <g_rt_time+0x1>
     1cc:	a0 91 9b 01 	lds	r26, 0x019B	; 0x80019b <g_rt_time+0x2>
     1d0:	b0 91 9c 01 	lds	r27, 0x019C	; 0x80019c <g_rt_time+0x3>
     1d4:	01 96       	adiw	r24, 0x01	; 1
     1d6:	a1 1d       	adc	r26, r1
     1d8:	b1 1d       	adc	r27, r1
     1da:	80 93 99 01 	sts	0x0199, r24	; 0x800199 <g_rt_time>
     1de:	90 93 9a 01 	sts	0x019A, r25	; 0x80019a <g_rt_time+0x1>
     1e2:	a0 93 9b 01 	sts	0x019B, r26	; 0x80019b <g_rt_time+0x2>
     1e6:	b0 93 9c 01 	sts	0x019C, r27	; 0x80019c <g_rt_time+0x3>
     1ea:	ff 91       	pop	r31
     1ec:	ef 91       	pop	r30
     1ee:	df 91       	pop	r29
     1f0:	cf 91       	pop	r28
     1f2:	bf 91       	pop	r27
     1f4:	af 91       	pop	r26
     1f6:	9f 91       	pop	r25
     1f8:	8f 91       	pop	r24
     1fa:	7f 91       	pop	r23
     1fc:	6f 91       	pop	r22
     1fe:	5f 91       	pop	r21
     200:	4f 91       	pop	r20
     202:	3f 91       	pop	r19
     204:	2f 91       	pop	r18
     206:	0f 90       	pop	r0
     208:	0f be       	out	0x3f, r0	; 63
     20a:	0f 90       	pop	r0
     20c:	1f 90       	pop	r1
     20e:	18 95       	reti
     210:	8a 81       	ldd	r24, Y+2	; 0x02
     212:	9b 81       	ldd	r25, Y+3	; 0x03
     214:	9d 83       	std	Y+5, r25	; 0x05
     216:	8c 83       	std	Y+4, r24	; 0x04
     218:	8e 81       	ldd	r24, Y+6	; 0x06
     21a:	8f 3f       	cpi	r24, 0xFF	; 255
     21c:	11 f0       	breq	.+4      	; 0x222 <__vector_14+0xa0>
     21e:	8f 5f       	subi	r24, 0xFF	; 255
     220:	8e 83       	std	Y+6, r24	; 0x06
     222:	8f 81       	ldd	r24, Y+7	; 0x07
     224:	88 23       	and	r24, r24
     226:	49 f2       	breq	.-110    	; 0x1ba <__vector_14+0x38>
     228:	88 81       	ld	r24, Y
     22a:	99 81       	ldd	r25, Y+1	; 0x01
     22c:	dc 01       	movw	r26, r24
     22e:	ed 91       	ld	r30, X+
     230:	fc 91       	ld	r31, X
     232:	04 80       	ldd	r0, Z+4	; 0x04
     234:	f5 81       	ldd	r31, Z+5	; 0x05
     236:	e0 2d       	mov	r30, r0
     238:	09 95       	icall
     23a:	bf cf       	rjmp	.-130    	; 0x1ba <__vector_14+0x38>

0000023c <_GLOBAL__sub_I_g_rt_time>:
     23c:	88 e5       	ldi	r24, 0x58	; 88
     23e:	91 e0       	ldi	r25, 0x01	; 1
     240:	0c 94 63 00 	jmp	0xc6	; 0xc6 <_ZN8CRTTimerC1Ev>

00000244 <_ZN9CTerminal4putsEPKc>:
     244:	0f 93       	push	r16
     246:	1f 93       	push	r17
     248:	cf 93       	push	r28
     24a:	df 93       	push	r29
     24c:	8c 01       	movw	r16, r24
     24e:	eb 01       	movw	r28, r22
     250:	69 91       	ld	r22, Y+
     252:	66 23       	and	r22, r22
     254:	21 f0       	breq	.+8      	; 0x25e <_ZN9CTerminal4putsEPKc+0x1a>
     256:	c8 01       	movw	r24, r16
     258:	0e 94 b9 01 	call	0x372	; 0x372 <_ZN6CUSART8put_charEc>
     25c:	f9 cf       	rjmp	.-14     	; 0x250 <_ZN9CTerminal4putsEPKc+0xc>
     25e:	df 91       	pop	r29
     260:	cf 91       	pop	r28
     262:	1f 91       	pop	r17
     264:	0f 91       	pop	r16
     266:	08 95       	ret

00000268 <_ZN9CTerminal4putiEl>:
     268:	8f 92       	push	r8
     26a:	9f 92       	push	r9
     26c:	af 92       	push	r10
     26e:	bf 92       	push	r11
     270:	cf 92       	push	r12
     272:	df 92       	push	r13
     274:	ef 92       	push	r14
     276:	ff 92       	push	r15
     278:	0f 93       	push	r16
     27a:	1f 93       	push	r17
     27c:	cf 93       	push	r28
     27e:	df 93       	push	r29
     280:	cd b7       	in	r28, 0x3d	; 61
     282:	de b7       	in	r29, 0x3e	; 62
     284:	2c 97       	sbiw	r28, 0x0c	; 12
     286:	0f b6       	in	r0, 0x3f	; 63
     288:	f8 94       	cli
     28a:	de bf       	out	0x3e, r29	; 62
     28c:	0f be       	out	0x3f, r0	; 63
     28e:	cd bf       	out	0x3d, r28	; 61
     290:	7c 01       	movw	r14, r24
     292:	00 e0       	ldi	r16, 0x00	; 0
     294:	77 ff       	sbrs	r23, 7
     296:	08 c0       	rjmp	.+16     	; 0x2a8 <_ZN9CTerminal4putiEl+0x40>
     298:	70 95       	com	r23
     29a:	60 95       	com	r22
     29c:	50 95       	com	r21
     29e:	41 95       	neg	r20
     2a0:	5f 4f       	sbci	r21, 0xFF	; 255
     2a2:	6f 4f       	sbci	r22, 0xFF	; 255
     2a4:	7f 4f       	sbci	r23, 0xFF	; 255
     2a6:	01 e0       	ldi	r16, 0x01	; 1
     2a8:	1c 86       	std	Y+12, r1	; 0x0c
     2aa:	1a e0       	ldi	r17, 0x0A	; 10
     2ac:	9a e0       	ldi	r25, 0x0A	; 10
     2ae:	89 2e       	mov	r8, r25
     2b0:	91 2c       	mov	r9, r1
     2b2:	a1 2c       	mov	r10, r1
     2b4:	b1 2c       	mov	r11, r1
     2b6:	cc 24       	eor	r12, r12
     2b8:	c3 94       	inc	r12
     2ba:	d1 2c       	mov	r13, r1
     2bc:	cc 0e       	add	r12, r28
     2be:	dd 1e       	adc	r13, r29
     2c0:	c1 0e       	add	r12, r17
     2c2:	d1 1c       	adc	r13, r1
     2c4:	cb 01       	movw	r24, r22
     2c6:	ba 01       	movw	r22, r20
     2c8:	a5 01       	movw	r20, r10
     2ca:	94 01       	movw	r18, r8
     2cc:	0e 94 b7 07 	call	0xf6e	; 0xf6e <__divmodsi4>
     2d0:	94 2f       	mov	r25, r20
     2d2:	85 2f       	mov	r24, r21
     2d4:	60 5d       	subi	r22, 0xD0	; 208
     2d6:	f6 01       	movw	r30, r12
     2d8:	60 83       	st	Z, r22
     2da:	a9 01       	movw	r20, r18
     2dc:	69 2f       	mov	r22, r25
     2de:	78 2f       	mov	r23, r24
     2e0:	8f ef       	ldi	r24, 0xFF	; 255
     2e2:	81 0f       	add	r24, r17
     2e4:	41 15       	cp	r20, r1
     2e6:	51 05       	cpc	r21, r1
     2e8:	61 05       	cpc	r22, r1
     2ea:	71 05       	cpc	r23, r1
     2ec:	39 f5       	brne	.+78     	; 0x33c <_ZN9CTerminal4putiEl+0xd4>
     2ee:	00 23       	and	r16, r16
     2f0:	49 f0       	breq	.+18     	; 0x304 <_ZN9CTerminal4putiEl+0x9c>
     2f2:	e1 e0       	ldi	r30, 0x01	; 1
     2f4:	f0 e0       	ldi	r31, 0x00	; 0
     2f6:	ec 0f       	add	r30, r28
     2f8:	fd 1f       	adc	r31, r29
     2fa:	e8 0f       	add	r30, r24
     2fc:	f1 1d       	adc	r31, r1
     2fe:	9d e2       	ldi	r25, 0x2D	; 45
     300:	90 83       	st	Z, r25
     302:	18 2f       	mov	r17, r24
     304:	61 e0       	ldi	r22, 0x01	; 1
     306:	70 e0       	ldi	r23, 0x00	; 0
     308:	6c 0f       	add	r22, r28
     30a:	7d 1f       	adc	r23, r29
     30c:	61 0f       	add	r22, r17
     30e:	71 1d       	adc	r23, r1
     310:	c7 01       	movw	r24, r14
     312:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     316:	2c 96       	adiw	r28, 0x0c	; 12
     318:	0f b6       	in	r0, 0x3f	; 63
     31a:	f8 94       	cli
     31c:	de bf       	out	0x3e, r29	; 62
     31e:	0f be       	out	0x3f, r0	; 63
     320:	cd bf       	out	0x3d, r28	; 61
     322:	df 91       	pop	r29
     324:	cf 91       	pop	r28
     326:	1f 91       	pop	r17
     328:	0f 91       	pop	r16
     32a:	ff 90       	pop	r15
     32c:	ef 90       	pop	r14
     32e:	df 90       	pop	r13
     330:	cf 90       	pop	r12
     332:	bf 90       	pop	r11
     334:	af 90       	pop	r10
     336:	9f 90       	pop	r9
     338:	8f 90       	pop	r8
     33a:	08 95       	ret
     33c:	18 2f       	mov	r17, r24
     33e:	bb cf       	rjmp	.-138    	; 0x2b6 <_ZN9CTerminal4putiEl+0x4e>

00000340 <_GLOBAL__sub_I_terminal>:
     340:	8d e9       	ldi	r24, 0x9D	; 157
     342:	91 e0       	ldi	r25, 0x01	; 1
     344:	0c 94 a8 01 	jmp	0x350	; 0x350 <_ZN6CUSARTC1Ev>

00000348 <_GLOBAL__sub_D_terminal>:
     348:	8d e9       	ldi	r24, 0x9D	; 157
     34a:	91 e0       	ldi	r25, 0x01	; 1
     34c:	0c 94 b8 01 	jmp	0x370	; 0x370 <_ZN6CUSARTD1Ev>

00000350 <_ZN6CUSARTC1Ev>:
     350:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     354:	87 e6       	ldi	r24, 0x67	; 103
     356:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     35a:	e2 ec       	ldi	r30, 0xC2	; 194
     35c:	f0 e0       	ldi	r31, 0x00	; 0
     35e:	80 81       	ld	r24, Z
     360:	86 60       	ori	r24, 0x06	; 6
     362:	80 83       	st	Z, r24
     364:	e1 ec       	ldi	r30, 0xC1	; 193
     366:	f0 e0       	ldi	r31, 0x00	; 0
     368:	80 81       	ld	r24, Z
     36a:	88 61       	ori	r24, 0x18	; 24
     36c:	80 83       	st	Z, r24
     36e:	08 95       	ret

00000370 <_ZN6CUSARTD1Ev>:
     370:	08 95       	ret

00000372 <_ZN6CUSART8put_charEc>:
     372:	6a 30       	cpi	r22, 0x0A	; 10
     374:	49 f4       	brne	.+18     	; 0x388 <_ZN6CUSART8put_charEc+0x16>
     376:	8d e0       	ldi	r24, 0x0D	; 13
     378:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     37c:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     380:	85 fd       	sbrc	r24, 5
     382:	02 c0       	rjmp	.+4      	; 0x388 <_ZN6CUSART8put_charEc+0x16>
     384:	00 00       	nop
     386:	fa cf       	rjmp	.-12     	; 0x37c <_ZN6CUSART8put_charEc+0xa>
     388:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     38c:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     390:	85 fd       	sbrc	r24, 5
     392:	02 c0       	rjmp	.+4      	; 0x398 <_ZN6CUSART8put_charEc+0x26>
     394:	00 00       	nop
     396:	fa cf       	rjmp	.-12     	; 0x38c <_ZN6CUSART8put_charEc+0x1a>
     398:	08 95       	ret

0000039a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE9write_regEhhh>:
     39a:	ff 92       	push	r15
     39c:	0f 93       	push	r16
     39e:	1f 93       	push	r17
     3a0:	cf 93       	push	r28
     3a2:	df 93       	push	r29
     3a4:	ec 01       	movw	r28, r24
     3a6:	f6 2e       	mov	r15, r22
     3a8:	04 2f       	mov	r16, r20
     3aa:	12 2f       	mov	r17, r18
     3ac:	e8 81       	ld	r30, Y
     3ae:	f9 81       	ldd	r31, Y+1	; 0x01
     3b0:	01 90       	ld	r0, Z+
     3b2:	f0 81       	ld	r31, Z
     3b4:	e0 2d       	mov	r30, r0
     3b6:	09 95       	icall
     3b8:	e8 81       	ld	r30, Y
     3ba:	f9 81       	ldd	r31, Y+1	; 0x01
     3bc:	04 80       	ldd	r0, Z+4	; 0x04
     3be:	f5 81       	ldd	r31, Z+5	; 0x05
     3c0:	e0 2d       	mov	r30, r0
     3c2:	6f 2d       	mov	r22, r15
     3c4:	ce 01       	movw	r24, r28
     3c6:	09 95       	icall
     3c8:	e8 81       	ld	r30, Y
     3ca:	f9 81       	ldd	r31, Y+1	; 0x01
     3cc:	04 80       	ldd	r0, Z+4	; 0x04
     3ce:	f5 81       	ldd	r31, Z+5	; 0x05
     3d0:	e0 2d       	mov	r30, r0
     3d2:	60 2f       	mov	r22, r16
     3d4:	ce 01       	movw	r24, r28
     3d6:	09 95       	icall
     3d8:	e8 81       	ld	r30, Y
     3da:	f9 81       	ldd	r31, Y+1	; 0x01
     3dc:	04 80       	ldd	r0, Z+4	; 0x04
     3de:	f5 81       	ldd	r31, Z+5	; 0x05
     3e0:	e0 2d       	mov	r30, r0
     3e2:	61 2f       	mov	r22, r17
     3e4:	ce 01       	movw	r24, r28
     3e6:	09 95       	icall
     3e8:	e8 81       	ld	r30, Y
     3ea:	f9 81       	ldd	r31, Y+1	; 0x01
     3ec:	02 80       	ldd	r0, Z+2	; 0x02
     3ee:	f3 81       	ldd	r31, Z+3	; 0x03
     3f0:	e0 2d       	mov	r30, r0
     3f2:	ce 01       	movw	r24, r28
     3f4:	df 91       	pop	r29
     3f6:	cf 91       	pop	r28
     3f8:	1f 91       	pop	r17
     3fa:	0f 91       	pop	r16
     3fc:	ff 90       	pop	r15
     3fe:	09 94       	ijmp

00000400 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     400:	ef 92       	push	r14
     402:	ff 92       	push	r15
     404:	0f 93       	push	r16
     406:	1f 93       	push	r17
     408:	cf 93       	push	r28
     40a:	df 93       	push	r29
     40c:	ec 01       	movw	r28, r24
     40e:	e6 2e       	mov	r14, r22
     410:	f4 2e       	mov	r15, r20
     412:	12 2f       	mov	r17, r18
     414:	03 2f       	mov	r16, r19
     416:	e8 81       	ld	r30, Y
     418:	f9 81       	ldd	r31, Y+1	; 0x01
     41a:	01 90       	ld	r0, Z+
     41c:	f0 81       	ld	r31, Z
     41e:	e0 2d       	mov	r30, r0
     420:	09 95       	icall
     422:	e8 81       	ld	r30, Y
     424:	f9 81       	ldd	r31, Y+1	; 0x01
     426:	04 80       	ldd	r0, Z+4	; 0x04
     428:	f5 81       	ldd	r31, Z+5	; 0x05
     42a:	e0 2d       	mov	r30, r0
     42c:	6e 2d       	mov	r22, r14
     42e:	ce 01       	movw	r24, r28
     430:	09 95       	icall
     432:	e8 81       	ld	r30, Y
     434:	f9 81       	ldd	r31, Y+1	; 0x01
     436:	04 80       	ldd	r0, Z+4	; 0x04
     438:	f5 81       	ldd	r31, Z+5	; 0x05
     43a:	e0 2d       	mov	r30, r0
     43c:	6f 2d       	mov	r22, r15
     43e:	ce 01       	movw	r24, r28
     440:	09 95       	icall
     442:	e8 81       	ld	r30, Y
     444:	f9 81       	ldd	r31, Y+1	; 0x01
     446:	04 80       	ldd	r0, Z+4	; 0x04
     448:	f5 81       	ldd	r31, Z+5	; 0x05
     44a:	e0 2d       	mov	r30, r0
     44c:	60 2f       	mov	r22, r16
     44e:	ce 01       	movw	r24, r28
     450:	09 95       	icall
     452:	e8 81       	ld	r30, Y
     454:	f9 81       	ldd	r31, Y+1	; 0x01
     456:	04 80       	ldd	r0, Z+4	; 0x04
     458:	f5 81       	ldd	r31, Z+5	; 0x05
     45a:	e0 2d       	mov	r30, r0
     45c:	61 2f       	mov	r22, r17
     45e:	ce 01       	movw	r24, r28
     460:	09 95       	icall
     462:	e8 81       	ld	r30, Y
     464:	f9 81       	ldd	r31, Y+1	; 0x01
     466:	02 80       	ldd	r0, Z+2	; 0x02
     468:	f3 81       	ldd	r31, Z+3	; 0x03
     46a:	e0 2d       	mov	r30, r0
     46c:	ce 01       	movw	r24, r28
     46e:	df 91       	pop	r29
     470:	cf 91       	pop	r28
     472:	1f 91       	pop	r17
     474:	0f 91       	pop	r16
     476:	ff 90       	pop	r15
     478:	ef 90       	pop	r14
     47a:	09 94       	ijmp

0000047c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     47c:	cf 92       	push	r12
     47e:	df 92       	push	r13
     480:	ef 92       	push	r14
     482:	ff 92       	push	r15
     484:	0f 93       	push	r16
     486:	1f 93       	push	r17
     488:	cf 93       	push	r28
     48a:	df 93       	push	r29
     48c:	ec 01       	movw	r28, r24
     48e:	e6 2e       	mov	r14, r22
     490:	f4 2e       	mov	r15, r20
     492:	69 01       	movw	r12, r18
     494:	e8 81       	ld	r30, Y
     496:	f9 81       	ldd	r31, Y+1	; 0x01
     498:	01 90       	ld	r0, Z+
     49a:	f0 81       	ld	r31, Z
     49c:	e0 2d       	mov	r30, r0
     49e:	09 95       	icall
     4a0:	e8 81       	ld	r30, Y
     4a2:	f9 81       	ldd	r31, Y+1	; 0x01
     4a4:	04 80       	ldd	r0, Z+4	; 0x04
     4a6:	f5 81       	ldd	r31, Z+5	; 0x05
     4a8:	e0 2d       	mov	r30, r0
     4aa:	6e 2d       	mov	r22, r14
     4ac:	ce 01       	movw	r24, r28
     4ae:	09 95       	icall
     4b0:	e8 81       	ld	r30, Y
     4b2:	f9 81       	ldd	r31, Y+1	; 0x01
     4b4:	04 80       	ldd	r0, Z+4	; 0x04
     4b6:	f5 81       	ldd	r31, Z+5	; 0x05
     4b8:	e0 2d       	mov	r30, r0
     4ba:	6f 2d       	mov	r22, r15
     4bc:	ce 01       	movw	r24, r28
     4be:	09 95       	icall
     4c0:	76 01       	movw	r14, r12
     4c2:	0c 0d       	add	r16, r12
     4c4:	1d 1d       	adc	r17, r13
     4c6:	e8 81       	ld	r30, Y
     4c8:	f9 81       	ldd	r31, Y+1	; 0x01
     4ca:	e0 16       	cp	r14, r16
     4cc:	f1 06       	cpc	r15, r17
     4ce:	49 f0       	breq	.+18     	; 0x4e2 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     4d0:	d7 01       	movw	r26, r14
     4d2:	6d 91       	ld	r22, X+
     4d4:	7d 01       	movw	r14, r26
     4d6:	04 80       	ldd	r0, Z+4	; 0x04
     4d8:	f5 81       	ldd	r31, Z+5	; 0x05
     4da:	e0 2d       	mov	r30, r0
     4dc:	ce 01       	movw	r24, r28
     4de:	09 95       	icall
     4e0:	f2 cf       	rjmp	.-28     	; 0x4c6 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     4e2:	02 80       	ldd	r0, Z+2	; 0x02
     4e4:	f3 81       	ldd	r31, Z+3	; 0x03
     4e6:	e0 2d       	mov	r30, r0
     4e8:	ce 01       	movw	r24, r28
     4ea:	df 91       	pop	r29
     4ec:	cf 91       	pop	r28
     4ee:	1f 91       	pop	r17
     4f0:	0f 91       	pop	r16
     4f2:	ff 90       	pop	r15
     4f4:	ef 90       	pop	r14
     4f6:	df 90       	pop	r13
     4f8:	cf 90       	pop	r12
     4fa:	09 94       	ijmp

000004fc <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE8read_regEhh>:
     4fc:	0f 93       	push	r16
     4fe:	1f 93       	push	r17
     500:	cf 93       	push	r28
     502:	df 93       	push	r29
     504:	ec 01       	movw	r28, r24
     506:	16 2f       	mov	r17, r22
     508:	04 2f       	mov	r16, r20
     50a:	e8 81       	ld	r30, Y
     50c:	f9 81       	ldd	r31, Y+1	; 0x01
     50e:	01 90       	ld	r0, Z+
     510:	f0 81       	ld	r31, Z
     512:	e0 2d       	mov	r30, r0
     514:	09 95       	icall
     516:	e8 81       	ld	r30, Y
     518:	f9 81       	ldd	r31, Y+1	; 0x01
     51a:	04 80       	ldd	r0, Z+4	; 0x04
     51c:	f5 81       	ldd	r31, Z+5	; 0x05
     51e:	e0 2d       	mov	r30, r0
     520:	61 2f       	mov	r22, r17
     522:	ce 01       	movw	r24, r28
     524:	09 95       	icall
     526:	e8 81       	ld	r30, Y
     528:	f9 81       	ldd	r31, Y+1	; 0x01
     52a:	04 80       	ldd	r0, Z+4	; 0x04
     52c:	f5 81       	ldd	r31, Z+5	; 0x05
     52e:	e0 2d       	mov	r30, r0
     530:	60 2f       	mov	r22, r16
     532:	ce 01       	movw	r24, r28
     534:	09 95       	icall
     536:	e8 81       	ld	r30, Y
     538:	f9 81       	ldd	r31, Y+1	; 0x01
     53a:	01 90       	ld	r0, Z+
     53c:	f0 81       	ld	r31, Z
     53e:	e0 2d       	mov	r30, r0
     540:	ce 01       	movw	r24, r28
     542:	09 95       	icall
     544:	61 2f       	mov	r22, r17
     546:	61 60       	ori	r22, 0x01	; 1
     548:	e8 81       	ld	r30, Y
     54a:	f9 81       	ldd	r31, Y+1	; 0x01
     54c:	04 80       	ldd	r0, Z+4	; 0x04
     54e:	f5 81       	ldd	r31, Z+5	; 0x05
     550:	e0 2d       	mov	r30, r0
     552:	ce 01       	movw	r24, r28
     554:	09 95       	icall
     556:	e8 81       	ld	r30, Y
     558:	f9 81       	ldd	r31, Y+1	; 0x01
     55a:	06 80       	ldd	r0, Z+6	; 0x06
     55c:	f7 81       	ldd	r31, Z+7	; 0x07
     55e:	e0 2d       	mov	r30, r0
     560:	60 e0       	ldi	r22, 0x00	; 0
     562:	ce 01       	movw	r24, r28
     564:	09 95       	icall
     566:	18 2f       	mov	r17, r24
     568:	e8 81       	ld	r30, Y
     56a:	f9 81       	ldd	r31, Y+1	; 0x01
     56c:	02 80       	ldd	r0, Z+2	; 0x02
     56e:	f3 81       	ldd	r31, Z+3	; 0x03
     570:	e0 2d       	mov	r30, r0
     572:	ce 01       	movw	r24, r28
     574:	09 95       	icall
     576:	81 2f       	mov	r24, r17
     578:	df 91       	pop	r29
     57a:	cf 91       	pop	r28
     57c:	1f 91       	pop	r17
     57e:	0f 91       	pop	r16
     580:	08 95       	ret

00000582 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     582:	0f 93       	push	r16
     584:	1f 93       	push	r17
     586:	cf 93       	push	r28
     588:	df 93       	push	r29
     58a:	ec 01       	movw	r28, r24
     58c:	16 2f       	mov	r17, r22
     58e:	04 2f       	mov	r16, r20
     590:	e8 81       	ld	r30, Y
     592:	f9 81       	ldd	r31, Y+1	; 0x01
     594:	01 90       	ld	r0, Z+
     596:	f0 81       	ld	r31, Z
     598:	e0 2d       	mov	r30, r0
     59a:	09 95       	icall
     59c:	e8 81       	ld	r30, Y
     59e:	f9 81       	ldd	r31, Y+1	; 0x01
     5a0:	04 80       	ldd	r0, Z+4	; 0x04
     5a2:	f5 81       	ldd	r31, Z+5	; 0x05
     5a4:	e0 2d       	mov	r30, r0
     5a6:	61 2f       	mov	r22, r17
     5a8:	ce 01       	movw	r24, r28
     5aa:	09 95       	icall
     5ac:	e8 81       	ld	r30, Y
     5ae:	f9 81       	ldd	r31, Y+1	; 0x01
     5b0:	04 80       	ldd	r0, Z+4	; 0x04
     5b2:	f5 81       	ldd	r31, Z+5	; 0x05
     5b4:	e0 2d       	mov	r30, r0
     5b6:	60 2f       	mov	r22, r16
     5b8:	ce 01       	movw	r24, r28
     5ba:	09 95       	icall
     5bc:	e8 81       	ld	r30, Y
     5be:	f9 81       	ldd	r31, Y+1	; 0x01
     5c0:	01 90       	ld	r0, Z+
     5c2:	f0 81       	ld	r31, Z
     5c4:	e0 2d       	mov	r30, r0
     5c6:	ce 01       	movw	r24, r28
     5c8:	09 95       	icall
     5ca:	61 2f       	mov	r22, r17
     5cc:	61 60       	ori	r22, 0x01	; 1
     5ce:	e8 81       	ld	r30, Y
     5d0:	f9 81       	ldd	r31, Y+1	; 0x01
     5d2:	04 80       	ldd	r0, Z+4	; 0x04
     5d4:	f5 81       	ldd	r31, Z+5	; 0x05
     5d6:	e0 2d       	mov	r30, r0
     5d8:	ce 01       	movw	r24, r28
     5da:	09 95       	icall
     5dc:	e8 81       	ld	r30, Y
     5de:	f9 81       	ldd	r31, Y+1	; 0x01
     5e0:	06 80       	ldd	r0, Z+6	; 0x06
     5e2:	f7 81       	ldd	r31, Z+7	; 0x07
     5e4:	e0 2d       	mov	r30, r0
     5e6:	61 e0       	ldi	r22, 0x01	; 1
     5e8:	ce 01       	movw	r24, r28
     5ea:	09 95       	icall
     5ec:	08 2f       	mov	r16, r24
     5ee:	10 e0       	ldi	r17, 0x00	; 0
     5f0:	10 2f       	mov	r17, r16
     5f2:	00 27       	eor	r16, r16
     5f4:	e8 81       	ld	r30, Y
     5f6:	f9 81       	ldd	r31, Y+1	; 0x01
     5f8:	06 80       	ldd	r0, Z+6	; 0x06
     5fa:	f7 81       	ldd	r31, Z+7	; 0x07
     5fc:	e0 2d       	mov	r30, r0
     5fe:	60 e0       	ldi	r22, 0x00	; 0
     600:	ce 01       	movw	r24, r28
     602:	09 95       	icall
     604:	08 2b       	or	r16, r24
     606:	e8 81       	ld	r30, Y
     608:	f9 81       	ldd	r31, Y+1	; 0x01
     60a:	02 80       	ldd	r0, Z+2	; 0x02
     60c:	f3 81       	ldd	r31, Z+3	; 0x03
     60e:	e0 2d       	mov	r30, r0
     610:	ce 01       	movw	r24, r28
     612:	09 95       	icall
     614:	c8 01       	movw	r24, r16
     616:	df 91       	pop	r29
     618:	cf 91       	pop	r28
     61a:	1f 91       	pop	r17
     61c:	0f 91       	pop	r16
     61e:	08 95       	ret

00000620 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
     620:	cf 92       	push	r12
     622:	df 92       	push	r13
     624:	ef 92       	push	r14
     626:	ff 92       	push	r15
     628:	0f 93       	push	r16
     62a:	1f 93       	push	r17
     62c:	cf 93       	push	r28
     62e:	df 93       	push	r29
     630:	ec 01       	movw	r28, r24
     632:	f6 2e       	mov	r15, r22
     634:	e4 2e       	mov	r14, r20
     636:	69 01       	movw	r12, r18
     638:	e8 81       	ld	r30, Y
     63a:	f9 81       	ldd	r31, Y+1	; 0x01
     63c:	01 90       	ld	r0, Z+
     63e:	f0 81       	ld	r31, Z
     640:	e0 2d       	mov	r30, r0
     642:	09 95       	icall
     644:	e8 81       	ld	r30, Y
     646:	f9 81       	ldd	r31, Y+1	; 0x01
     648:	04 80       	ldd	r0, Z+4	; 0x04
     64a:	f5 81       	ldd	r31, Z+5	; 0x05
     64c:	e0 2d       	mov	r30, r0
     64e:	6f 2d       	mov	r22, r15
     650:	ce 01       	movw	r24, r28
     652:	09 95       	icall
     654:	e8 81       	ld	r30, Y
     656:	f9 81       	ldd	r31, Y+1	; 0x01
     658:	04 80       	ldd	r0, Z+4	; 0x04
     65a:	f5 81       	ldd	r31, Z+5	; 0x05
     65c:	e0 2d       	mov	r30, r0
     65e:	6e 2d       	mov	r22, r14
     660:	ce 01       	movw	r24, r28
     662:	09 95       	icall
     664:	e8 81       	ld	r30, Y
     666:	f9 81       	ldd	r31, Y+1	; 0x01
     668:	01 90       	ld	r0, Z+
     66a:	f0 81       	ld	r31, Z
     66c:	e0 2d       	mov	r30, r0
     66e:	ce 01       	movw	r24, r28
     670:	09 95       	icall
     672:	6f 2d       	mov	r22, r15
     674:	61 60       	ori	r22, 0x01	; 1
     676:	e8 81       	ld	r30, Y
     678:	f9 81       	ldd	r31, Y+1	; 0x01
     67a:	04 80       	ldd	r0, Z+4	; 0x04
     67c:	f5 81       	ldd	r31, Z+5	; 0x05
     67e:	e0 2d       	mov	r30, r0
     680:	ce 01       	movw	r24, r28
     682:	09 95       	icall
     684:	76 01       	movw	r14, r12
     686:	0c 0d       	add	r16, r12
     688:	1d 1d       	adc	r17, r13
     68a:	e8 81       	ld	r30, Y
     68c:	f9 81       	ldd	r31, Y+1	; 0x01
     68e:	e0 16       	cp	r14, r16
     690:	f1 06       	cpc	r15, r17
     692:	51 f0       	breq	.+20     	; 0x6a8 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
     694:	06 80       	ldd	r0, Z+6	; 0x06
     696:	f7 81       	ldd	r31, Z+7	; 0x07
     698:	e0 2d       	mov	r30, r0
     69a:	61 e0       	ldi	r22, 0x01	; 1
     69c:	ce 01       	movw	r24, r28
     69e:	09 95       	icall
     6a0:	f7 01       	movw	r30, r14
     6a2:	81 93       	st	Z+, r24
     6a4:	7f 01       	movw	r14, r30
     6a6:	f1 cf       	rjmp	.-30     	; 0x68a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
     6a8:	02 80       	ldd	r0, Z+2	; 0x02
     6aa:	f3 81       	ldd	r31, Z+3	; 0x03
     6ac:	e0 2d       	mov	r30, r0
     6ae:	ce 01       	movw	r24, r28
     6b0:	df 91       	pop	r29
     6b2:	cf 91       	pop	r28
     6b4:	1f 91       	pop	r17
     6b6:	0f 91       	pop	r16
     6b8:	ff 90       	pop	r15
     6ba:	ef 90       	pop	r14
     6bc:	df 90       	pop	r13
     6be:	cf 90       	pop	r12
     6c0:	09 94       	ijmp

000006c2 <_ZN16CMeasurementTaskD1Ev>:
     6c2:	22 e5       	ldi	r18, 0x52	; 82
     6c4:	31 e0       	ldi	r19, 0x01	; 1
     6c6:	fc 01       	movw	r30, r24
     6c8:	31 83       	std	Z+1, r19	; 0x01
     6ca:	20 83       	st	Z, r18
     6cc:	06 96       	adiw	r24, 0x06	; 6
     6ce:	0c 94 6a 04 	jmp	0x8d4	; 0x8d4 <_ZN8CVL53L0XD1Ev>

000006d2 <_ZN16CMeasurementTaskD0Ev>:
     6d2:	cf 93       	push	r28
     6d4:	df 93       	push	r29
     6d6:	ec 01       	movw	r28, r24
     6d8:	0e 94 61 03 	call	0x6c2	; 0x6c2 <_ZN16CMeasurementTaskD1Ev>
     6dc:	ce 01       	movw	r24, r28
     6de:	df 91       	pop	r29
     6e0:	cf 91       	pop	r28
     6e2:	0c 94 61 00 	jmp	0xc2	; 0xc2 <_ZdlPv>

000006e6 <_ZN16CMeasurementTaskclEv>:
     6e6:	cf 93       	push	r28
     6e8:	df 93       	push	r29
     6ea:	06 96       	adiw	r24, 0x06	; 6
     6ec:	0e 94 6b 04 	call	0x8d6	; 0x8d6 <_ZN8CVL53L0X4readEv>
     6f0:	ec 01       	movw	r28, r24
     6f2:	66 e0       	ldi	r22, 0x06	; 6
     6f4:	71 e0       	ldi	r23, 0x01	; 1
     6f6:	8d e9       	ldi	r24, 0x9D	; 157
     6f8:	91 e0       	ldi	r25, 0x01	; 1
     6fa:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     6fe:	ae 01       	movw	r20, r28
     700:	dd 0f       	add	r29, r29
     702:	66 0b       	sbc	r22, r22
     704:	77 0b       	sbc	r23, r23
     706:	8d e9       	ldi	r24, 0x9D	; 157
     708:	91 e0       	ldi	r25, 0x01	; 1
     70a:	0e 94 34 01 	call	0x268	; 0x268 <_ZN9CTerminal4putiEl>
     70e:	64 e3       	ldi	r22, 0x34	; 52
     710:	71 e0       	ldi	r23, 0x01	; 1
     712:	8d e9       	ldi	r24, 0x9D	; 157
     714:	91 e0       	ldi	r25, 0x01	; 1
     716:	df 91       	pop	r29
     718:	cf 91       	pop	r28
     71a:	0c 94 22 01 	jmp	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>

0000071e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>:
     71e:	88 23       	and	r24, r24
     720:	11 f0       	breq	.+4      	; 0x726 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2+0x8>
     722:	3d 98       	cbi	0x07, 5	; 7
     724:	08 95       	ret
     726:	3d 9a       	sbi	0x07, 5	; 7
     728:	08 95       	ret

0000072a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>:
	...
     732:	00 00       	nop
     734:	08 95       	ret

00000736 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4stopEv>:
     736:	80 e0       	ldi	r24, 0x00	; 0
     738:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     73c:	38 9a       	sbi	0x07, 0	; 7
     73e:	81 e0       	ldi	r24, 0x01	; 1
     740:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     744:	38 9a       	sbi	0x07, 0	; 7
     746:	81 e0       	ldi	r24, 0x01	; 1
     748:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     74c:	38 98       	cbi	0x07, 0	; 7
     74e:	0c 94 95 03 	jmp	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>

00000752 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5startEv>:
     752:	81 e0       	ldi	r24, 0x01	; 1
     754:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     758:	38 98       	cbi	0x07, 0	; 7
     75a:	81 e0       	ldi	r24, 0x01	; 1
     75c:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     760:	38 9a       	sbi	0x07, 0	; 7
     762:	80 e0       	ldi	r24, 0x00	; 0
     764:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     768:	38 98       	cbi	0x07, 0	; 7
     76a:	0c 94 95 03 	jmp	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>

0000076e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh>:
     76e:	cf 93       	push	r28
     770:	df 93       	push	r29
     772:	d6 2f       	mov	r29, r22
     774:	c8 e0       	ldi	r28, 0x08	; 8
     776:	80 e0       	ldi	r24, 0x00	; 0
     778:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     77c:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     780:	d7 ff       	sbrs	r29, 7
     782:	24 c0       	rjmp	.+72     	; 0x7cc <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x5e>
     784:	38 98       	cbi	0x07, 0	; 7
     786:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     78a:	81 e0       	ldi	r24, 0x01	; 1
     78c:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     790:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     794:	dd 0f       	add	r29, r29
     796:	c1 50       	subi	r28, 0x01	; 1
     798:	71 f7       	brne	.-36     	; 0x776 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x8>
     79a:	80 e0       	ldi	r24, 0x00	; 0
     79c:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7a0:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7a4:	38 98       	cbi	0x07, 0	; 7
     7a6:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7aa:	81 e0       	ldi	r24, 0x01	; 1
     7ac:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7b0:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7b4:	c6 b1       	in	r28, 0x06	; 6
     7b6:	80 e0       	ldi	r24, 0x00	; 0
     7b8:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7bc:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7c0:	8c 2f       	mov	r24, r28
     7c2:	80 95       	com	r24
     7c4:	81 70       	andi	r24, 0x01	; 1
     7c6:	df 91       	pop	r29
     7c8:	cf 91       	pop	r28
     7ca:	08 95       	ret
     7cc:	38 9a       	sbi	0x07, 0	; 7
     7ce:	db cf       	rjmp	.-74     	; 0x786 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x18>

000007d0 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh>:
     7d0:	1f 93       	push	r17
     7d2:	cf 93       	push	r28
     7d4:	df 93       	push	r29
     7d6:	16 2f       	mov	r17, r22
     7d8:	38 98       	cbi	0x07, 0	; 7
     7da:	80 e0       	ldi	r24, 0x00	; 0
     7dc:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7e0:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7e4:	d8 e0       	ldi	r29, 0x08	; 8
     7e6:	c0 e0       	ldi	r28, 0x00	; 0
     7e8:	cc 0f       	add	r28, r28
     7ea:	81 e0       	ldi	r24, 0x01	; 1
     7ec:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7f0:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7f4:	30 99       	sbic	0x06, 0	; 6
     7f6:	c1 60       	ori	r28, 0x01	; 1
     7f8:	80 e0       	ldi	r24, 0x00	; 0
     7fa:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7fe:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     802:	d1 50       	subi	r29, 0x01	; 1
     804:	89 f7       	brne	.-30     	; 0x7e8 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x18>
     806:	11 23       	and	r17, r17
     808:	a9 f0       	breq	.+42     	; 0x834 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x64>
     80a:	38 9a       	sbi	0x07, 0	; 7
     80c:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     810:	81 e0       	ldi	r24, 0x01	; 1
     812:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     816:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     81a:	80 e0       	ldi	r24, 0x00	; 0
     81c:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     820:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     824:	38 98       	cbi	0x07, 0	; 7
     826:	0e 94 95 03 	call	0x72a	; 0x72a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     82a:	8c 2f       	mov	r24, r28
     82c:	df 91       	pop	r29
     82e:	cf 91       	pop	r28
     830:	1f 91       	pop	r17
     832:	08 95       	ret
     834:	38 98       	cbi	0x07, 0	; 7
     836:	ea cf       	rjmp	.-44     	; 0x80c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x3c>

00000838 <main>:
     838:	cf 93       	push	r28
     83a:	df 93       	push	r29
     83c:	cd b7       	in	r28, 0x3d	; 61
     83e:	de b7       	in	r29, 0x3e	; 62
     840:	69 97       	sbiw	r28, 0x19	; 25
     842:	0f b6       	in	r0, 0x3f	; 63
     844:	f8 94       	cli
     846:	de bf       	out	0x3e, r29	; 62
     848:	0f be       	out	0x3f, r0	; 63
     84a:	cd bf       	out	0x3d, r28	; 61
     84c:	82 e5       	ldi	r24, 0x52	; 82
     84e:	91 e0       	ldi	r25, 0x01	; 1
     850:	9a 83       	std	Y+2, r25	; 0x02
     852:	89 83       	std	Y+1, r24	; 0x01
     854:	8a e3       	ldi	r24, 0x3A	; 58
     856:	91 e0       	ldi	r25, 0x01	; 1
     858:	9c 83       	std	Y+4, r25	; 0x04
     85a:	8b 83       	std	Y+3, r24	; 0x03
     85c:	38 98       	cbi	0x07, 0	; 7
     85e:	81 e0       	ldi	r24, 0x01	; 1
     860:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     864:	40 98       	cbi	0x08, 0	; 8
     866:	45 98       	cbi	0x08, 5	; 8
     868:	ce 01       	movw	r24, r28
     86a:	07 96       	adiw	r24, 0x07	; 7
     86c:	0e 94 69 04 	call	0x8d2	; 0x8d2 <_ZN8CVL53L0XC1Ev>
     870:	be 01       	movw	r22, r28
     872:	6d 5f       	subi	r22, 0xFD	; 253
     874:	7f 4f       	sbci	r23, 0xFF	; 255
     876:	ce 01       	movw	r24, r28
     878:	07 96       	adiw	r24, 0x07	; 7
     87a:	0e 94 d7 05 	call	0xbae	; 0xbae <_ZN8CVL53L0X4initEP14CI2C_Interface>
     87e:	8c 01       	movw	r16, r24
     880:	67 e1       	ldi	r22, 0x17	; 23
     882:	71 e0       	ldi	r23, 0x01	; 1
     884:	8d e9       	ldi	r24, 0x9D	; 157
     886:	91 e0       	ldi	r25, 0x01	; 1
     888:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     88c:	a8 01       	movw	r20, r16
     88e:	11 0f       	add	r17, r17
     890:	66 0b       	sbc	r22, r22
     892:	77 0b       	sbc	r23, r23
     894:	8d e9       	ldi	r24, 0x9D	; 157
     896:	91 e0       	ldi	r25, 0x01	; 1
     898:	0e 94 34 01 	call	0x268	; 0x268 <_ZN9CTerminal4putiEl>
     89c:	64 e3       	ldi	r22, 0x34	; 52
     89e:	71 e0       	ldi	r23, 0x01	; 1
     8a0:	8d e9       	ldi	r24, 0x9D	; 157
     8a2:	91 e0       	ldi	r25, 0x01	; 1
     8a4:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     8a8:	20 e0       	ldi	r18, 0x00	; 0
     8aa:	44 e6       	ldi	r20, 0x64	; 100
     8ac:	50 e0       	ldi	r21, 0x00	; 0
     8ae:	be 01       	movw	r22, r28
     8b0:	6f 5f       	subi	r22, 0xFF	; 255
     8b2:	7f 4f       	sbci	r23, 0xFF	; 255
     8b4:	88 e5       	ldi	r24, 0x58	; 88
     8b6:	91 e0       	ldi	r25, 0x01	; 1
     8b8:	0e 94 80 00 	call	0x100	; 0x100 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>
     8bc:	64 e2       	ldi	r22, 0x24	; 36
     8be:	71 e0       	ldi	r23, 0x01	; 1
     8c0:	8d e9       	ldi	r24, 0x9D	; 157
     8c2:	91 e0       	ldi	r25, 0x01	; 1
     8c4:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     8c8:	88 e5       	ldi	r24, 0x58	; 88
     8ca:	91 e0       	ldi	r25, 0x01	; 1
     8cc:	0e 94 a3 00 	call	0x146	; 0x146 <_ZN8CRTTimer4mainEv>
     8d0:	fb cf       	rjmp	.-10     	; 0x8c8 <main+0x90>

000008d2 <_ZN8CVL53L0XC1Ev>:
     8d2:	08 95       	ret

000008d4 <_ZN8CVL53L0XD1Ev>:
     8d4:	08 95       	ret

000008d6 <_ZN8CVL53L0X4readEv>:
     8d6:	0f 93       	push	r16
     8d8:	1f 93       	push	r17
     8da:	cf 93       	push	r28
     8dc:	df 93       	push	r29
     8de:	ec 01       	movw	r28, r24
     8e0:	89 89       	ldd	r24, Y+17	; 0x11
     8e2:	9a 89       	ldd	r25, Y+18	; 0x12
     8e4:	dc 01       	movw	r26, r24
     8e6:	ed 91       	ld	r30, X+
     8e8:	fc 91       	ld	r31, X
     8ea:	00 84       	ldd	r0, Z+8	; 0x08
     8ec:	f1 85       	ldd	r31, Z+9	; 0x09
     8ee:	e0 2d       	mov	r30, r0
     8f0:	21 e0       	ldi	r18, 0x01	; 1
     8f2:	4b e0       	ldi	r20, 0x0B	; 11
     8f4:	62 e5       	ldi	r22, 0x52	; 82
     8f6:	09 95       	icall
     8f8:	89 89       	ldd	r24, Y+17	; 0x11
     8fa:	9a 89       	ldd	r25, Y+18	; 0x12
     8fc:	9e 01       	movw	r18, r28
     8fe:	2d 5f       	subi	r18, 0xFD	; 253
     900:	3f 4f       	sbci	r19, 0xFF	; 255
     902:	dc 01       	movw	r26, r24
     904:	ed 91       	ld	r30, X+
     906:	fc 91       	ld	r31, X
     908:	02 88       	ldd	r0, Z+18	; 0x12
     90a:	f3 89       	ldd	r31, Z+19	; 0x13
     90c:	e0 2d       	mov	r30, r0
     90e:	0e e0       	ldi	r16, 0x0E	; 14
     910:	10 e0       	ldi	r17, 0x00	; 0
     912:	44 e1       	ldi	r20, 0x14	; 20
     914:	62 e5       	ldi	r22, 0x52	; 82
     916:	09 95       	icall
     918:	8d 85       	ldd	r24, Y+13	; 0x0d
     91a:	9e 85       	ldd	r25, Y+14	; 0x0e
     91c:	98 27       	eor	r25, r24
     91e:	89 27       	eor	r24, r25
     920:	98 27       	eor	r25, r24
     922:	1a 82       	std	Y+2, r1	; 0x02
     924:	9c 01       	movw	r18, r24
     926:	24 51       	subi	r18, 0x14	; 20
     928:	31 09       	sbc	r19, r1
     92a:	21 3e       	cpi	r18, 0xE1	; 225
     92c:	31 40       	sbci	r19, 0x01	; 1
     92e:	20 f4       	brcc	.+8      	; 0x938 <__stack+0x39>
     930:	99 83       	std	Y+1, r25	; 0x01
     932:	88 83       	st	Y, r24
     934:	81 e0       	ldi	r24, 0x01	; 1
     936:	8a 83       	std	Y+2, r24	; 0x02
     938:	88 81       	ld	r24, Y
     93a:	99 81       	ldd	r25, Y+1	; 0x01
     93c:	df 91       	pop	r29
     93e:	cf 91       	pop	r28
     940:	1f 91       	pop	r17
     942:	0f 91       	pop	r16
     944:	08 95       	ret

00000946 <_ZN8CVL53L0X11getSPADinfoEPhPb>:
     946:	af 92       	push	r10
     948:	bf 92       	push	r11
     94a:	cf 92       	push	r12
     94c:	df 92       	push	r13
     94e:	ef 92       	push	r14
     950:	ff 92       	push	r15
     952:	0f 93       	push	r16
     954:	1f 93       	push	r17
     956:	cf 93       	push	r28
     958:	df 93       	push	r29
     95a:	ec 01       	movw	r28, r24
     95c:	5b 01       	movw	r10, r22
     95e:	8a 01       	movw	r16, r20
     960:	db 01       	movw	r26, r22
     962:	1c 92       	st	X, r1
     964:	89 89       	ldd	r24, Y+17	; 0x11
     966:	9a 89       	ldd	r25, Y+18	; 0x12
     968:	dc 01       	movw	r26, r24
     96a:	ed 91       	ld	r30, X+
     96c:	fc 91       	ld	r31, X
     96e:	00 84       	ldd	r0, Z+8	; 0x08
     970:	f1 85       	ldd	r31, Z+9	; 0x09
     972:	e0 2d       	mov	r30, r0
     974:	21 e0       	ldi	r18, 0x01	; 1
     976:	40 e8       	ldi	r20, 0x80	; 128
     978:	62 e5       	ldi	r22, 0x52	; 82
     97a:	09 95       	icall
     97c:	89 89       	ldd	r24, Y+17	; 0x11
     97e:	9a 89       	ldd	r25, Y+18	; 0x12
     980:	dc 01       	movw	r26, r24
     982:	ed 91       	ld	r30, X+
     984:	fc 91       	ld	r31, X
     986:	00 84       	ldd	r0, Z+8	; 0x08
     988:	f1 85       	ldd	r31, Z+9	; 0x09
     98a:	e0 2d       	mov	r30, r0
     98c:	21 e0       	ldi	r18, 0x01	; 1
     98e:	4f ef       	ldi	r20, 0xFF	; 255
     990:	62 e5       	ldi	r22, 0x52	; 82
     992:	09 95       	icall
     994:	89 89       	ldd	r24, Y+17	; 0x11
     996:	9a 89       	ldd	r25, Y+18	; 0x12
     998:	dc 01       	movw	r26, r24
     99a:	ed 91       	ld	r30, X+
     99c:	fc 91       	ld	r31, X
     99e:	00 84       	ldd	r0, Z+8	; 0x08
     9a0:	f1 85       	ldd	r31, Z+9	; 0x09
     9a2:	e0 2d       	mov	r30, r0
     9a4:	20 e0       	ldi	r18, 0x00	; 0
     9a6:	40 e0       	ldi	r20, 0x00	; 0
     9a8:	62 e5       	ldi	r22, 0x52	; 82
     9aa:	09 95       	icall
     9ac:	89 89       	ldd	r24, Y+17	; 0x11
     9ae:	9a 89       	ldd	r25, Y+18	; 0x12
     9b0:	dc 01       	movw	r26, r24
     9b2:	ed 91       	ld	r30, X+
     9b4:	fc 91       	ld	r31, X
     9b6:	00 84       	ldd	r0, Z+8	; 0x08
     9b8:	f1 85       	ldd	r31, Z+9	; 0x09
     9ba:	e0 2d       	mov	r30, r0
     9bc:	26 e0       	ldi	r18, 0x06	; 6
     9be:	4f ef       	ldi	r20, 0xFF	; 255
     9c0:	62 e5       	ldi	r22, 0x52	; 82
     9c2:	09 95       	icall
     9c4:	e9 88       	ldd	r14, Y+17	; 0x11
     9c6:	fa 88       	ldd	r15, Y+18	; 0x12
     9c8:	d7 01       	movw	r26, r14
     9ca:	ed 91       	ld	r30, X+
     9cc:	fc 91       	ld	r31, X
     9ce:	c0 84       	ldd	r12, Z+8	; 0x08
     9d0:	d1 84       	ldd	r13, Z+9	; 0x09
     9d2:	06 84       	ldd	r0, Z+14	; 0x0e
     9d4:	f7 85       	ldd	r31, Z+15	; 0x0f
     9d6:	e0 2d       	mov	r30, r0
     9d8:	43 e8       	ldi	r20, 0x83	; 131
     9da:	62 e5       	ldi	r22, 0x52	; 82
     9dc:	c7 01       	movw	r24, r14
     9de:	09 95       	icall
     9e0:	28 2f       	mov	r18, r24
     9e2:	24 60       	ori	r18, 0x04	; 4
     9e4:	43 e8       	ldi	r20, 0x83	; 131
     9e6:	62 e5       	ldi	r22, 0x52	; 82
     9e8:	c7 01       	movw	r24, r14
     9ea:	f6 01       	movw	r30, r12
     9ec:	09 95       	icall
     9ee:	89 89       	ldd	r24, Y+17	; 0x11
     9f0:	9a 89       	ldd	r25, Y+18	; 0x12
     9f2:	dc 01       	movw	r26, r24
     9f4:	ed 91       	ld	r30, X+
     9f6:	fc 91       	ld	r31, X
     9f8:	00 84       	ldd	r0, Z+8	; 0x08
     9fa:	f1 85       	ldd	r31, Z+9	; 0x09
     9fc:	e0 2d       	mov	r30, r0
     9fe:	27 e0       	ldi	r18, 0x07	; 7
     a00:	4f ef       	ldi	r20, 0xFF	; 255
     a02:	62 e5       	ldi	r22, 0x52	; 82
     a04:	09 95       	icall
     a06:	89 89       	ldd	r24, Y+17	; 0x11
     a08:	9a 89       	ldd	r25, Y+18	; 0x12
     a0a:	dc 01       	movw	r26, r24
     a0c:	ed 91       	ld	r30, X+
     a0e:	fc 91       	ld	r31, X
     a10:	00 84       	ldd	r0, Z+8	; 0x08
     a12:	f1 85       	ldd	r31, Z+9	; 0x09
     a14:	e0 2d       	mov	r30, r0
     a16:	21 e0       	ldi	r18, 0x01	; 1
     a18:	41 e8       	ldi	r20, 0x81	; 129
     a1a:	62 e5       	ldi	r22, 0x52	; 82
     a1c:	09 95       	icall
     a1e:	89 89       	ldd	r24, Y+17	; 0x11
     a20:	9a 89       	ldd	r25, Y+18	; 0x12
     a22:	dc 01       	movw	r26, r24
     a24:	ed 91       	ld	r30, X+
     a26:	fc 91       	ld	r31, X
     a28:	00 84       	ldd	r0, Z+8	; 0x08
     a2a:	f1 85       	ldd	r31, Z+9	; 0x09
     a2c:	e0 2d       	mov	r30, r0
     a2e:	21 e0       	ldi	r18, 0x01	; 1
     a30:	40 e8       	ldi	r20, 0x80	; 128
     a32:	62 e5       	ldi	r22, 0x52	; 82
     a34:	09 95       	icall
     a36:	89 89       	ldd	r24, Y+17	; 0x11
     a38:	9a 89       	ldd	r25, Y+18	; 0x12
     a3a:	dc 01       	movw	r26, r24
     a3c:	ed 91       	ld	r30, X+
     a3e:	fc 91       	ld	r31, X
     a40:	00 84       	ldd	r0, Z+8	; 0x08
     a42:	f1 85       	ldd	r31, Z+9	; 0x09
     a44:	e0 2d       	mov	r30, r0
     a46:	2b e6       	ldi	r18, 0x6B	; 107
     a48:	44 e9       	ldi	r20, 0x94	; 148
     a4a:	62 e5       	ldi	r22, 0x52	; 82
     a4c:	09 95       	icall
     a4e:	89 89       	ldd	r24, Y+17	; 0x11
     a50:	9a 89       	ldd	r25, Y+18	; 0x12
     a52:	dc 01       	movw	r26, r24
     a54:	ed 91       	ld	r30, X+
     a56:	fc 91       	ld	r31, X
     a58:	00 84       	ldd	r0, Z+8	; 0x08
     a5a:	f1 85       	ldd	r31, Z+9	; 0x09
     a5c:	e0 2d       	mov	r30, r0
     a5e:	20 e0       	ldi	r18, 0x00	; 0
     a60:	43 e8       	ldi	r20, 0x83	; 131
     a62:	62 e5       	ldi	r22, 0x52	; 82
     a64:	09 95       	icall
     a66:	81 e4       	ldi	r24, 0x41	; 65
     a68:	c8 2e       	mov	r12, r24
     a6a:	82 e4       	ldi	r24, 0x42	; 66
     a6c:	d8 2e       	mov	r13, r24
     a6e:	8f e0       	ldi	r24, 0x0F	; 15
     a70:	e8 2e       	mov	r14, r24
     a72:	f1 2c       	mov	r15, r1
     a74:	89 89       	ldd	r24, Y+17	; 0x11
     a76:	9a 89       	ldd	r25, Y+18	; 0x12
     a78:	dc 01       	movw	r26, r24
     a7a:	ed 91       	ld	r30, X+
     a7c:	fc 91       	ld	r31, X
     a7e:	06 84       	ldd	r0, Z+14	; 0x0e
     a80:	f7 85       	ldd	r31, Z+15	; 0x0f
     a82:	e0 2d       	mov	r30, r0
     a84:	43 e8       	ldi	r20, 0x83	; 131
     a86:	62 e5       	ldi	r22, 0x52	; 82
     a88:	09 95       	icall
     a8a:	81 11       	cpse	r24, r1
     a8c:	08 c0       	rjmp	.+16     	; 0xa9e <_ZN8CVL53L0X11getSPADinfoEPhPb+0x158>
     a8e:	b1 e0       	ldi	r27, 0x01	; 1
     a90:	cb 1a       	sub	r12, r27
     a92:	d1 08       	sbc	r13, r1
     a94:	e1 08       	sbc	r14, r1
     a96:	f1 08       	sbc	r15, r1
     a98:	69 f7       	brne	.-38     	; 0xa74 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x12e>
     a9a:	80 e0       	ldi	r24, 0x00	; 0
     a9c:	7d c0       	rjmp	.+250    	; 0xb98 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x252>
     a9e:	89 89       	ldd	r24, Y+17	; 0x11
     aa0:	9a 89       	ldd	r25, Y+18	; 0x12
     aa2:	dc 01       	movw	r26, r24
     aa4:	ed 91       	ld	r30, X+
     aa6:	fc 91       	ld	r31, X
     aa8:	00 84       	ldd	r0, Z+8	; 0x08
     aaa:	f1 85       	ldd	r31, Z+9	; 0x09
     aac:	e0 2d       	mov	r30, r0
     aae:	21 e0       	ldi	r18, 0x01	; 1
     ab0:	43 e8       	ldi	r20, 0x83	; 131
     ab2:	62 e5       	ldi	r22, 0x52	; 82
     ab4:	09 95       	icall
     ab6:	89 89       	ldd	r24, Y+17	; 0x11
     ab8:	9a 89       	ldd	r25, Y+18	; 0x12
     aba:	dc 01       	movw	r26, r24
     abc:	ed 91       	ld	r30, X+
     abe:	fc 91       	ld	r31, X
     ac0:	06 84       	ldd	r0, Z+14	; 0x0e
     ac2:	f7 85       	ldd	r31, Z+15	; 0x0f
     ac4:	e0 2d       	mov	r30, r0
     ac6:	42 e9       	ldi	r20, 0x92	; 146
     ac8:	62 e5       	ldi	r22, 0x52	; 82
     aca:	09 95       	icall
     acc:	98 2f       	mov	r25, r24
     ace:	9f 77       	andi	r25, 0x7F	; 127
     ad0:	f5 01       	movw	r30, r10
     ad2:	90 83       	st	Z, r25
     ad4:	88 1f       	adc	r24, r24
     ad6:	88 27       	eor	r24, r24
     ad8:	88 1f       	adc	r24, r24
     ada:	d8 01       	movw	r26, r16
     adc:	8c 93       	st	X, r24
     ade:	89 89       	ldd	r24, Y+17	; 0x11
     ae0:	9a 89       	ldd	r25, Y+18	; 0x12
     ae2:	dc 01       	movw	r26, r24
     ae4:	ed 91       	ld	r30, X+
     ae6:	fc 91       	ld	r31, X
     ae8:	00 84       	ldd	r0, Z+8	; 0x08
     aea:	f1 85       	ldd	r31, Z+9	; 0x09
     aec:	e0 2d       	mov	r30, r0
     aee:	20 e0       	ldi	r18, 0x00	; 0
     af0:	41 e8       	ldi	r20, 0x81	; 129
     af2:	62 e5       	ldi	r22, 0x52	; 82
     af4:	09 95       	icall
     af6:	89 89       	ldd	r24, Y+17	; 0x11
     af8:	9a 89       	ldd	r25, Y+18	; 0x12
     afa:	dc 01       	movw	r26, r24
     afc:	ed 91       	ld	r30, X+
     afe:	fc 91       	ld	r31, X
     b00:	00 84       	ldd	r0, Z+8	; 0x08
     b02:	f1 85       	ldd	r31, Z+9	; 0x09
     b04:	e0 2d       	mov	r30, r0
     b06:	26 e0       	ldi	r18, 0x06	; 6
     b08:	4f ef       	ldi	r20, 0xFF	; 255
     b0a:	62 e5       	ldi	r22, 0x52	; 82
     b0c:	09 95       	icall
     b0e:	09 89       	ldd	r16, Y+17	; 0x11
     b10:	1a 89       	ldd	r17, Y+18	; 0x12
     b12:	d8 01       	movw	r26, r16
     b14:	ed 91       	ld	r30, X+
     b16:	fc 91       	ld	r31, X
     b18:	e0 84       	ldd	r14, Z+8	; 0x08
     b1a:	f1 84       	ldd	r15, Z+9	; 0x09
     b1c:	06 84       	ldd	r0, Z+14	; 0x0e
     b1e:	f7 85       	ldd	r31, Z+15	; 0x0f
     b20:	e0 2d       	mov	r30, r0
     b22:	43 e8       	ldi	r20, 0x83	; 131
     b24:	62 e5       	ldi	r22, 0x52	; 82
     b26:	c8 01       	movw	r24, r16
     b28:	09 95       	icall
     b2a:	28 2f       	mov	r18, r24
     b2c:	43 e8       	ldi	r20, 0x83	; 131
     b2e:	62 e5       	ldi	r22, 0x52	; 82
     b30:	c8 01       	movw	r24, r16
     b32:	f7 01       	movw	r30, r14
     b34:	09 95       	icall
     b36:	89 89       	ldd	r24, Y+17	; 0x11
     b38:	9a 89       	ldd	r25, Y+18	; 0x12
     b3a:	dc 01       	movw	r26, r24
     b3c:	ed 91       	ld	r30, X+
     b3e:	fc 91       	ld	r31, X
     b40:	00 84       	ldd	r0, Z+8	; 0x08
     b42:	f1 85       	ldd	r31, Z+9	; 0x09
     b44:	e0 2d       	mov	r30, r0
     b46:	21 e0       	ldi	r18, 0x01	; 1
     b48:	4f ef       	ldi	r20, 0xFF	; 255
     b4a:	62 e5       	ldi	r22, 0x52	; 82
     b4c:	09 95       	icall
     b4e:	89 89       	ldd	r24, Y+17	; 0x11
     b50:	9a 89       	ldd	r25, Y+18	; 0x12
     b52:	dc 01       	movw	r26, r24
     b54:	ed 91       	ld	r30, X+
     b56:	fc 91       	ld	r31, X
     b58:	00 84       	ldd	r0, Z+8	; 0x08
     b5a:	f1 85       	ldd	r31, Z+9	; 0x09
     b5c:	e0 2d       	mov	r30, r0
     b5e:	21 e0       	ldi	r18, 0x01	; 1
     b60:	40 e0       	ldi	r20, 0x00	; 0
     b62:	62 e5       	ldi	r22, 0x52	; 82
     b64:	09 95       	icall
     b66:	89 89       	ldd	r24, Y+17	; 0x11
     b68:	9a 89       	ldd	r25, Y+18	; 0x12
     b6a:	dc 01       	movw	r26, r24
     b6c:	ed 91       	ld	r30, X+
     b6e:	fc 91       	ld	r31, X
     b70:	00 84       	ldd	r0, Z+8	; 0x08
     b72:	f1 85       	ldd	r31, Z+9	; 0x09
     b74:	e0 2d       	mov	r30, r0
     b76:	20 e0       	ldi	r18, 0x00	; 0
     b78:	4f ef       	ldi	r20, 0xFF	; 255
     b7a:	62 e5       	ldi	r22, 0x52	; 82
     b7c:	09 95       	icall
     b7e:	89 89       	ldd	r24, Y+17	; 0x11
     b80:	9a 89       	ldd	r25, Y+18	; 0x12
     b82:	dc 01       	movw	r26, r24
     b84:	ed 91       	ld	r30, X+
     b86:	fc 91       	ld	r31, X
     b88:	00 84       	ldd	r0, Z+8	; 0x08
     b8a:	f1 85       	ldd	r31, Z+9	; 0x09
     b8c:	e0 2d       	mov	r30, r0
     b8e:	20 e0       	ldi	r18, 0x00	; 0
     b90:	40 e8       	ldi	r20, 0x80	; 128
     b92:	62 e5       	ldi	r22, 0x52	; 82
     b94:	09 95       	icall
     b96:	81 e0       	ldi	r24, 0x01	; 1
     b98:	df 91       	pop	r29
     b9a:	cf 91       	pop	r28
     b9c:	1f 91       	pop	r17
     b9e:	0f 91       	pop	r16
     ba0:	ff 90       	pop	r15
     ba2:	ef 90       	pop	r14
     ba4:	df 90       	pop	r13
     ba6:	cf 90       	pop	r12
     ba8:	bf 90       	pop	r11
     baa:	af 90       	pop	r10
     bac:	08 95       	ret

00000bae <_ZN8CVL53L0X4initEP14CI2C_Interface>:
     bae:	cf 92       	push	r12
     bb0:	df 92       	push	r13
     bb2:	ef 92       	push	r14
     bb4:	ff 92       	push	r15
     bb6:	0f 93       	push	r16
     bb8:	1f 93       	push	r17
     bba:	cf 93       	push	r28
     bbc:	df 93       	push	r29
     bbe:	cd b7       	in	r28, 0x3d	; 61
     bc0:	de b7       	in	r29, 0x3e	; 62
     bc2:	28 97       	sbiw	r28, 0x08	; 8
     bc4:	0f b6       	in	r0, 0x3f	; 63
     bc6:	f8 94       	cli
     bc8:	de bf       	out	0x3e, r29	; 62
     bca:	0f be       	out	0x3f, r0	; 63
     bcc:	cd bf       	out	0x3d, r28	; 61
     bce:	7c 01       	movw	r14, r24
     bd0:	8b 01       	movw	r16, r22
     bd2:	dc 01       	movw	r26, r24
     bd4:	52 96       	adiw	r26, 0x12	; 18
     bd6:	7c 93       	st	X, r23
     bd8:	6e 93       	st	-X, r22
     bda:	51 97       	sbiw	r26, 0x11	; 17
     bdc:	80 e0       	ldi	r24, 0x00	; 0
     bde:	90 e2       	ldi	r25, 0x20	; 32
     be0:	11 96       	adiw	r26, 0x01	; 1
     be2:	9c 93       	st	X, r25
     be4:	8e 93       	st	-X, r24
     be6:	12 96       	adiw	r26, 0x02	; 2
     be8:	1c 92       	st	X, r1
     bea:	db 01       	movw	r26, r22
     bec:	ed 91       	ld	r30, X+
     bee:	fc 91       	ld	r31, X
     bf0:	c0 84       	ldd	r12, Z+8	; 0x08
     bf2:	d1 84       	ldd	r13, Z+9	; 0x09
     bf4:	06 84       	ldd	r0, Z+14	; 0x0e
     bf6:	f7 85       	ldd	r31, Z+15	; 0x0f
     bf8:	e0 2d       	mov	r30, r0
     bfa:	49 e8       	ldi	r20, 0x89	; 137
     bfc:	62 e5       	ldi	r22, 0x52	; 82
     bfe:	c8 01       	movw	r24, r16
     c00:	09 95       	icall
     c02:	28 2f       	mov	r18, r24
     c04:	21 60       	ori	r18, 0x01	; 1
     c06:	49 e8       	ldi	r20, 0x89	; 137
     c08:	62 e5       	ldi	r22, 0x52	; 82
     c0a:	c8 01       	movw	r24, r16
     c0c:	f6 01       	movw	r30, r12
     c0e:	09 95       	icall
     c10:	d7 01       	movw	r26, r14
     c12:	51 96       	adiw	r26, 0x11	; 17
     c14:	8d 91       	ld	r24, X+
     c16:	9c 91       	ld	r25, X
     c18:	dc 01       	movw	r26, r24
     c1a:	ed 91       	ld	r30, X+
     c1c:	fc 91       	ld	r31, X
     c1e:	06 84       	ldd	r0, Z+14	; 0x0e
     c20:	f7 85       	ldd	r31, Z+15	; 0x0f
     c22:	e0 2d       	mov	r30, r0
     c24:	40 ec       	ldi	r20, 0xC0	; 192
     c26:	62 e5       	ldi	r22, 0x52	; 82
     c28:	09 95       	icall
     c2a:	8e 3e       	cpi	r24, 0xEE	; 238
     c2c:	09 f0       	breq	.+2      	; 0xc30 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x82>
     c2e:	7a c1       	rjmp	.+756    	; 0xf24 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x376>
     c30:	f7 01       	movw	r30, r14
     c32:	81 89       	ldd	r24, Z+17	; 0x11
     c34:	92 89       	ldd	r25, Z+18	; 0x12
     c36:	dc 01       	movw	r26, r24
     c38:	ed 91       	ld	r30, X+
     c3a:	fc 91       	ld	r31, X
     c3c:	00 84       	ldd	r0, Z+8	; 0x08
     c3e:	f1 85       	ldd	r31, Z+9	; 0x09
     c40:	e0 2d       	mov	r30, r0
     c42:	21 e0       	ldi	r18, 0x01	; 1
     c44:	4f eb       	ldi	r20, 0xBF	; 191
     c46:	62 e5       	ldi	r22, 0x52	; 82
     c48:	09 95       	icall
     c4a:	81 ea       	ldi	r24, 0xA1	; 161
     c4c:	96 e8       	ldi	r25, 0x86	; 134
     c4e:	a1 e0       	ldi	r26, 0x01	; 1
     c50:	b0 e0       	ldi	r27, 0x00	; 0
     c52:	01 97       	sbiw	r24, 0x01	; 1
     c54:	a1 09       	sbc	r26, r1
     c56:	b1 09       	sbc	r27, r1
     c58:	11 f0       	breq	.+4      	; 0xc5e <_ZN8CVL53L0X4initEP14CI2C_Interface+0xb0>
     c5a:	00 00       	nop
     c5c:	fa cf       	rjmp	.-12     	; 0xc52 <_ZN8CVL53L0X4initEP14CI2C_Interface+0xa4>
     c5e:	f7 01       	movw	r30, r14
     c60:	81 89       	ldd	r24, Z+17	; 0x11
     c62:	92 89       	ldd	r25, Z+18	; 0x12
     c64:	dc 01       	movw	r26, r24
     c66:	ed 91       	ld	r30, X+
     c68:	fc 91       	ld	r31, X
     c6a:	00 84       	ldd	r0, Z+8	; 0x08
     c6c:	f1 85       	ldd	r31, Z+9	; 0x09
     c6e:	e0 2d       	mov	r30, r0
     c70:	20 e0       	ldi	r18, 0x00	; 0
     c72:	48 e8       	ldi	r20, 0x88	; 136
     c74:	62 e5       	ldi	r22, 0x52	; 82
     c76:	09 95       	icall
     c78:	f7 01       	movw	r30, r14
     c7a:	81 89       	ldd	r24, Z+17	; 0x11
     c7c:	92 89       	ldd	r25, Z+18	; 0x12
     c7e:	dc 01       	movw	r26, r24
     c80:	ed 91       	ld	r30, X+
     c82:	fc 91       	ld	r31, X
     c84:	00 84       	ldd	r0, Z+8	; 0x08
     c86:	f1 85       	ldd	r31, Z+9	; 0x09
     c88:	e0 2d       	mov	r30, r0
     c8a:	21 e0       	ldi	r18, 0x01	; 1
     c8c:	40 e8       	ldi	r20, 0x80	; 128
     c8e:	62 e5       	ldi	r22, 0x52	; 82
     c90:	09 95       	icall
     c92:	f7 01       	movw	r30, r14
     c94:	81 89       	ldd	r24, Z+17	; 0x11
     c96:	92 89       	ldd	r25, Z+18	; 0x12
     c98:	dc 01       	movw	r26, r24
     c9a:	ed 91       	ld	r30, X+
     c9c:	fc 91       	ld	r31, X
     c9e:	00 84       	ldd	r0, Z+8	; 0x08
     ca0:	f1 85       	ldd	r31, Z+9	; 0x09
     ca2:	e0 2d       	mov	r30, r0
     ca4:	21 e0       	ldi	r18, 0x01	; 1
     ca6:	4f ef       	ldi	r20, 0xFF	; 255
     ca8:	62 e5       	ldi	r22, 0x52	; 82
     caa:	09 95       	icall
     cac:	f7 01       	movw	r30, r14
     cae:	81 89       	ldd	r24, Z+17	; 0x11
     cb0:	92 89       	ldd	r25, Z+18	; 0x12
     cb2:	dc 01       	movw	r26, r24
     cb4:	ed 91       	ld	r30, X+
     cb6:	fc 91       	ld	r31, X
     cb8:	00 84       	ldd	r0, Z+8	; 0x08
     cba:	f1 85       	ldd	r31, Z+9	; 0x09
     cbc:	e0 2d       	mov	r30, r0
     cbe:	20 e0       	ldi	r18, 0x00	; 0
     cc0:	40 e0       	ldi	r20, 0x00	; 0
     cc2:	62 e5       	ldi	r22, 0x52	; 82
     cc4:	09 95       	icall
     cc6:	f7 01       	movw	r30, r14
     cc8:	81 89       	ldd	r24, Z+17	; 0x11
     cca:	92 89       	ldd	r25, Z+18	; 0x12
     ccc:	dc 01       	movw	r26, r24
     cce:	ed 91       	ld	r30, X+
     cd0:	fc 91       	ld	r31, X
     cd2:	06 84       	ldd	r0, Z+14	; 0x0e
     cd4:	f7 85       	ldd	r31, Z+15	; 0x0f
     cd6:	e0 2d       	mov	r30, r0
     cd8:	41 e9       	ldi	r20, 0x91	; 145
     cda:	62 e5       	ldi	r22, 0x52	; 82
     cdc:	09 95       	icall
     cde:	f7 01       	movw	r30, r14
     ce0:	81 89       	ldd	r24, Z+17	; 0x11
     ce2:	92 89       	ldd	r25, Z+18	; 0x12
     ce4:	dc 01       	movw	r26, r24
     ce6:	ed 91       	ld	r30, X+
     ce8:	fc 91       	ld	r31, X
     cea:	00 84       	ldd	r0, Z+8	; 0x08
     cec:	f1 85       	ldd	r31, Z+9	; 0x09
     cee:	e0 2d       	mov	r30, r0
     cf0:	21 e0       	ldi	r18, 0x01	; 1
     cf2:	40 e0       	ldi	r20, 0x00	; 0
     cf4:	62 e5       	ldi	r22, 0x52	; 82
     cf6:	09 95       	icall
     cf8:	f7 01       	movw	r30, r14
     cfa:	81 89       	ldd	r24, Z+17	; 0x11
     cfc:	92 89       	ldd	r25, Z+18	; 0x12
     cfe:	dc 01       	movw	r26, r24
     d00:	ed 91       	ld	r30, X+
     d02:	fc 91       	ld	r31, X
     d04:	00 84       	ldd	r0, Z+8	; 0x08
     d06:	f1 85       	ldd	r31, Z+9	; 0x09
     d08:	e0 2d       	mov	r30, r0
     d0a:	20 e0       	ldi	r18, 0x00	; 0
     d0c:	4f ef       	ldi	r20, 0xFF	; 255
     d0e:	62 e5       	ldi	r22, 0x52	; 82
     d10:	09 95       	icall
     d12:	f7 01       	movw	r30, r14
     d14:	81 89       	ldd	r24, Z+17	; 0x11
     d16:	92 89       	ldd	r25, Z+18	; 0x12
     d18:	dc 01       	movw	r26, r24
     d1a:	ed 91       	ld	r30, X+
     d1c:	fc 91       	ld	r31, X
     d1e:	00 84       	ldd	r0, Z+8	; 0x08
     d20:	f1 85       	ldd	r31, Z+9	; 0x09
     d22:	e0 2d       	mov	r30, r0
     d24:	20 e0       	ldi	r18, 0x00	; 0
     d26:	40 e8       	ldi	r20, 0x80	; 128
     d28:	62 e5       	ldi	r22, 0x52	; 82
     d2a:	09 95       	icall
     d2c:	18 86       	std	Y+8, r1	; 0x08
     d2e:	ae 01       	movw	r20, r28
     d30:	49 5f       	subi	r20, 0xF9	; 249
     d32:	5f 4f       	sbci	r21, 0xFF	; 255
     d34:	be 01       	movw	r22, r28
     d36:	68 5f       	subi	r22, 0xF8	; 248
     d38:	7f 4f       	sbci	r23, 0xFF	; 255
     d3a:	c7 01       	movw	r24, r14
     d3c:	0e 94 a3 04 	call	0x946	; 0x946 <_ZN8CVL53L0X11getSPADinfoEPhPb>
     d40:	f7 01       	movw	r30, r14
     d42:	81 89       	ldd	r24, Z+17	; 0x11
     d44:	92 89       	ldd	r25, Z+18	; 0x12
     d46:	dc 01       	movw	r26, r24
     d48:	ed 91       	ld	r30, X+
     d4a:	fc 91       	ld	r31, X
     d4c:	02 88       	ldd	r0, Z+18	; 0x12
     d4e:	f3 89       	ldd	r31, Z+19	; 0x13
     d50:	e0 2d       	mov	r30, r0
     d52:	06 e0       	ldi	r16, 0x06	; 6
     d54:	10 e0       	ldi	r17, 0x00	; 0
     d56:	9e 01       	movw	r18, r28
     d58:	2f 5f       	subi	r18, 0xFF	; 255
     d5a:	3f 4f       	sbci	r19, 0xFF	; 255
     d5c:	40 eb       	ldi	r20, 0xB0	; 176
     d5e:	62 e5       	ldi	r22, 0x52	; 82
     d60:	09 95       	icall
     d62:	f7 01       	movw	r30, r14
     d64:	81 89       	ldd	r24, Z+17	; 0x11
     d66:	92 89       	ldd	r25, Z+18	; 0x12
     d68:	dc 01       	movw	r26, r24
     d6a:	ed 91       	ld	r30, X+
     d6c:	fc 91       	ld	r31, X
     d6e:	00 84       	ldd	r0, Z+8	; 0x08
     d70:	f1 85       	ldd	r31, Z+9	; 0x09
     d72:	e0 2d       	mov	r30, r0
     d74:	21 e0       	ldi	r18, 0x01	; 1
     d76:	4f ef       	ldi	r20, 0xFF	; 255
     d78:	62 e5       	ldi	r22, 0x52	; 82
     d7a:	09 95       	icall
     d7c:	f7 01       	movw	r30, r14
     d7e:	81 89       	ldd	r24, Z+17	; 0x11
     d80:	92 89       	ldd	r25, Z+18	; 0x12
     d82:	dc 01       	movw	r26, r24
     d84:	ed 91       	ld	r30, X+
     d86:	fc 91       	ld	r31, X
     d88:	00 84       	ldd	r0, Z+8	; 0x08
     d8a:	f1 85       	ldd	r31, Z+9	; 0x09
     d8c:	e0 2d       	mov	r30, r0
     d8e:	20 e0       	ldi	r18, 0x00	; 0
     d90:	4f e4       	ldi	r20, 0x4F	; 79
     d92:	62 e5       	ldi	r22, 0x52	; 82
     d94:	09 95       	icall
     d96:	f7 01       	movw	r30, r14
     d98:	81 89       	ldd	r24, Z+17	; 0x11
     d9a:	92 89       	ldd	r25, Z+18	; 0x12
     d9c:	dc 01       	movw	r26, r24
     d9e:	ed 91       	ld	r30, X+
     da0:	fc 91       	ld	r31, X
     da2:	00 84       	ldd	r0, Z+8	; 0x08
     da4:	f1 85       	ldd	r31, Z+9	; 0x09
     da6:	e0 2d       	mov	r30, r0
     da8:	2c e2       	ldi	r18, 0x2C	; 44
     daa:	4e e4       	ldi	r20, 0x4E	; 78
     dac:	62 e5       	ldi	r22, 0x52	; 82
     dae:	09 95       	icall
     db0:	f7 01       	movw	r30, r14
     db2:	81 89       	ldd	r24, Z+17	; 0x11
     db4:	92 89       	ldd	r25, Z+18	; 0x12
     db6:	dc 01       	movw	r26, r24
     db8:	ed 91       	ld	r30, X+
     dba:	fc 91       	ld	r31, X
     dbc:	00 84       	ldd	r0, Z+8	; 0x08
     dbe:	f1 85       	ldd	r31, Z+9	; 0x09
     dc0:	e0 2d       	mov	r30, r0
     dc2:	20 e0       	ldi	r18, 0x00	; 0
     dc4:	4f ef       	ldi	r20, 0xFF	; 255
     dc6:	62 e5       	ldi	r22, 0x52	; 82
     dc8:	09 95       	icall
     dca:	f7 01       	movw	r30, r14
     dcc:	81 89       	ldd	r24, Z+17	; 0x11
     dce:	92 89       	ldd	r25, Z+18	; 0x12
     dd0:	dc 01       	movw	r26, r24
     dd2:	ed 91       	ld	r30, X+
     dd4:	fc 91       	ld	r31, X
     dd6:	00 84       	ldd	r0, Z+8	; 0x08
     dd8:	f1 85       	ldd	r31, Z+9	; 0x09
     dda:	e0 2d       	mov	r30, r0
     ddc:	24 eb       	ldi	r18, 0xB4	; 180
     dde:	46 eb       	ldi	r20, 0xB6	; 182
     de0:	62 e5       	ldi	r22, 0x52	; 82
     de2:	09 95       	icall
     de4:	8f 81       	ldd	r24, Y+7	; 0x07
     de6:	ac e0       	ldi	r26, 0x0C	; 12
     de8:	81 11       	cpse	r24, r1
     dea:	01 c0       	rjmp	.+2      	; 0xdee <_ZN8CVL53L0X4initEP14CI2C_Interface+0x240>
     dec:	a0 e0       	ldi	r26, 0x00	; 0
     dee:	b8 85       	ldd	r27, Y+8	; 0x08
     df0:	80 e0       	ldi	r24, 0x00	; 0
     df2:	90 e0       	ldi	r25, 0x00	; 0
     df4:	01 e0       	ldi	r16, 0x01	; 1
     df6:	10 e0       	ldi	r17, 0x00	; 0
     df8:	48 2f       	mov	r20, r24
     dfa:	46 95       	lsr	r20
     dfc:	46 95       	lsr	r20
     dfe:	46 95       	lsr	r20
     e00:	50 e0       	ldi	r21, 0x00	; 0
     e02:	21 e0       	ldi	r18, 0x01	; 1
     e04:	30 e0       	ldi	r19, 0x00	; 0
     e06:	2c 0f       	add	r18, r28
     e08:	3d 1f       	adc	r19, r29
     e0a:	24 0f       	add	r18, r20
     e0c:	35 1f       	adc	r19, r21
     e0e:	f9 01       	movw	r30, r18
     e10:	20 81       	ld	r18, Z
     e12:	68 2f       	mov	r22, r24
     e14:	67 70       	andi	r22, 0x07	; 7
     e16:	8a 17       	cp	r24, r26
     e18:	10 f0       	brcs	.+4      	; 0xe1e <_ZN8CVL53L0X4initEP14CI2C_Interface+0x270>
     e1a:	b9 13       	cpse	r27, r25
     e1c:	79 c0       	rjmp	.+242    	; 0xf10 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x362>
     e1e:	e1 e0       	ldi	r30, 0x01	; 1
     e20:	f0 e0       	ldi	r31, 0x00	; 0
     e22:	ec 0f       	add	r30, r28
     e24:	fd 1f       	adc	r31, r29
     e26:	4e 0f       	add	r20, r30
     e28:	5f 1f       	adc	r21, r31
     e2a:	f8 01       	movw	r30, r16
     e2c:	02 c0       	rjmp	.+4      	; 0xe32 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x284>
     e2e:	ee 0f       	add	r30, r30
     e30:	ff 1f       	adc	r31, r31
     e32:	6a 95       	dec	r22
     e34:	e2 f7       	brpl	.-8      	; 0xe2e <_ZN8CVL53L0X4initEP14CI2C_Interface+0x280>
     e36:	bf 01       	movw	r22, r30
     e38:	60 95       	com	r22
     e3a:	26 23       	and	r18, r22
     e3c:	fa 01       	movw	r30, r20
     e3e:	20 83       	st	Z, r18
     e40:	8f 5f       	subi	r24, 0xFF	; 255
     e42:	80 33       	cpi	r24, 0x30	; 48
     e44:	c9 f6       	brne	.-78     	; 0xdf8 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x24a>
     e46:	d7 01       	movw	r26, r14
     e48:	51 96       	adiw	r26, 0x11	; 17
     e4a:	8d 91       	ld	r24, X+
     e4c:	9c 91       	ld	r25, X
     e4e:	dc 01       	movw	r26, r24
     e50:	ed 91       	ld	r30, X+
     e52:	fc 91       	ld	r31, X
     e54:	04 84       	ldd	r0, Z+12	; 0x0c
     e56:	f5 85       	ldd	r31, Z+13	; 0x0d
     e58:	e0 2d       	mov	r30, r0
     e5a:	06 e0       	ldi	r16, 0x06	; 6
     e5c:	10 e0       	ldi	r17, 0x00	; 0
     e5e:	9e 01       	movw	r18, r28
     e60:	2f 5f       	subi	r18, 0xFF	; 255
     e62:	3f 4f       	sbci	r19, 0xFF	; 255
     e64:	40 eb       	ldi	r20, 0xB0	; 176
     e66:	62 e5       	ldi	r22, 0x52	; 82
     e68:	09 95       	icall
     e6a:	f7 01       	movw	r30, r14
     e6c:	81 89       	ldd	r24, Z+17	; 0x11
     e6e:	92 89       	ldd	r25, Z+18	; 0x12
     e70:	dc 01       	movw	r26, r24
     e72:	ed 91       	ld	r30, X+
     e74:	fc 91       	ld	r31, X
     e76:	06 84       	ldd	r0, Z+14	; 0x0e
     e78:	f7 85       	ldd	r31, Z+15	; 0x0f
     e7a:	e0 2d       	mov	r30, r0
     e7c:	44 e8       	ldi	r20, 0x84	; 132
     e7e:	62 e5       	ldi	r22, 0x52	; 82
     e80:	09 95       	icall
     e82:	18 2f       	mov	r17, r24
     e84:	f7 01       	movw	r30, r14
     e86:	81 89       	ldd	r24, Z+17	; 0x11
     e88:	92 89       	ldd	r25, Z+18	; 0x12
     e8a:	dc 01       	movw	r26, r24
     e8c:	ed 91       	ld	r30, X+
     e8e:	fc 91       	ld	r31, X
     e90:	00 84       	ldd	r0, Z+8	; 0x08
     e92:	f1 85       	ldd	r31, Z+9	; 0x09
     e94:	e0 2d       	mov	r30, r0
     e96:	24 e0       	ldi	r18, 0x04	; 4
     e98:	4a e0       	ldi	r20, 0x0A	; 10
     e9a:	62 e5       	ldi	r22, 0x52	; 82
     e9c:	09 95       	icall
     e9e:	f7 01       	movw	r30, r14
     ea0:	81 89       	ldd	r24, Z+17	; 0x11
     ea2:	92 89       	ldd	r25, Z+18	; 0x12
     ea4:	21 2f       	mov	r18, r17
     ea6:	2f 7e       	andi	r18, 0xEF	; 239
     ea8:	dc 01       	movw	r26, r24
     eaa:	ed 91       	ld	r30, X+
     eac:	fc 91       	ld	r31, X
     eae:	00 84       	ldd	r0, Z+8	; 0x08
     eb0:	f1 85       	ldd	r31, Z+9	; 0x09
     eb2:	e0 2d       	mov	r30, r0
     eb4:	44 e8       	ldi	r20, 0x84	; 132
     eb6:	62 e5       	ldi	r22, 0x52	; 82
     eb8:	09 95       	icall
     eba:	f7 01       	movw	r30, r14
     ebc:	81 89       	ldd	r24, Z+17	; 0x11
     ebe:	92 89       	ldd	r25, Z+18	; 0x12
     ec0:	dc 01       	movw	r26, r24
     ec2:	ed 91       	ld	r30, X+
     ec4:	fc 91       	ld	r31, X
     ec6:	00 84       	ldd	r0, Z+8	; 0x08
     ec8:	f1 85       	ldd	r31, Z+9	; 0x09
     eca:	e0 2d       	mov	r30, r0
     ecc:	21 e0       	ldi	r18, 0x01	; 1
     ece:	4b e0       	ldi	r20, 0x0B	; 11
     ed0:	62 e5       	ldi	r22, 0x52	; 82
     ed2:	09 95       	icall
     ed4:	f7 01       	movw	r30, r14
     ed6:	81 89       	ldd	r24, Z+17	; 0x11
     ed8:	92 89       	ldd	r25, Z+18	; 0x12
     eda:	dc 01       	movw	r26, r24
     edc:	ed 91       	ld	r30, X+
     ede:	fc 91       	ld	r31, X
     ee0:	00 84       	ldd	r0, Z+8	; 0x08
     ee2:	f1 85       	ldd	r31, Z+9	; 0x09
     ee4:	e0 2d       	mov	r30, r0
     ee6:	22 e0       	ldi	r18, 0x02	; 2
     ee8:	40 e0       	ldi	r20, 0x00	; 0
     eea:	62 e5       	ldi	r22, 0x52	; 82
     eec:	09 95       	icall
     eee:	90 e0       	ldi	r25, 0x00	; 0
     ef0:	80 e0       	ldi	r24, 0x00	; 0
     ef2:	28 96       	adiw	r28, 0x08	; 8
     ef4:	0f b6       	in	r0, 0x3f	; 63
     ef6:	f8 94       	cli
     ef8:	de bf       	out	0x3e, r29	; 62
     efa:	0f be       	out	0x3f, r0	; 63
     efc:	cd bf       	out	0x3d, r28	; 61
     efe:	df 91       	pop	r29
     f00:	cf 91       	pop	r28
     f02:	1f 91       	pop	r17
     f04:	0f 91       	pop	r16
     f06:	ff 90       	pop	r15
     f08:	ef 90       	pop	r14
     f0a:	df 90       	pop	r13
     f0c:	cf 90       	pop	r12
     f0e:	08 95       	ret
     f10:	30 e0       	ldi	r19, 0x00	; 0
     f12:	02 c0       	rjmp	.+4      	; 0xf18 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x36a>
     f14:	35 95       	asr	r19
     f16:	27 95       	ror	r18
     f18:	6a 95       	dec	r22
     f1a:	e2 f7       	brpl	.-8      	; 0xf14 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x366>
     f1c:	20 ff       	sbrs	r18, 0
     f1e:	90 cf       	rjmp	.-224    	; 0xe40 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x292>
     f20:	9f 5f       	subi	r25, 0xFF	; 255
     f22:	8e cf       	rjmp	.-228    	; 0xe40 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x292>
     f24:	8e ef       	ldi	r24, 0xFE	; 254
     f26:	9f ef       	ldi	r25, 0xFF	; 255
     f28:	e4 cf       	rjmp	.-56     	; 0xef2 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x344>

00000f2a <__udivmodsi4>:
     f2a:	a1 e2       	ldi	r26, 0x21	; 33
     f2c:	1a 2e       	mov	r1, r26
     f2e:	aa 1b       	sub	r26, r26
     f30:	bb 1b       	sub	r27, r27
     f32:	fd 01       	movw	r30, r26
     f34:	0d c0       	rjmp	.+26     	; 0xf50 <__udivmodsi4_ep>

00000f36 <__udivmodsi4_loop>:
     f36:	aa 1f       	adc	r26, r26
     f38:	bb 1f       	adc	r27, r27
     f3a:	ee 1f       	adc	r30, r30
     f3c:	ff 1f       	adc	r31, r31
     f3e:	a2 17       	cp	r26, r18
     f40:	b3 07       	cpc	r27, r19
     f42:	e4 07       	cpc	r30, r20
     f44:	f5 07       	cpc	r31, r21
     f46:	20 f0       	brcs	.+8      	; 0xf50 <__udivmodsi4_ep>
     f48:	a2 1b       	sub	r26, r18
     f4a:	b3 0b       	sbc	r27, r19
     f4c:	e4 0b       	sbc	r30, r20
     f4e:	f5 0b       	sbc	r31, r21

00000f50 <__udivmodsi4_ep>:
     f50:	66 1f       	adc	r22, r22
     f52:	77 1f       	adc	r23, r23
     f54:	88 1f       	adc	r24, r24
     f56:	99 1f       	adc	r25, r25
     f58:	1a 94       	dec	r1
     f5a:	69 f7       	brne	.-38     	; 0xf36 <__udivmodsi4_loop>
     f5c:	60 95       	com	r22
     f5e:	70 95       	com	r23
     f60:	80 95       	com	r24
     f62:	90 95       	com	r25
     f64:	9b 01       	movw	r18, r22
     f66:	ac 01       	movw	r20, r24
     f68:	bd 01       	movw	r22, r26
     f6a:	cf 01       	movw	r24, r30
     f6c:	08 95       	ret

00000f6e <__divmodsi4>:
     f6e:	05 2e       	mov	r0, r21
     f70:	97 fb       	bst	r25, 7
     f72:	1e f4       	brtc	.+6      	; 0xf7a <__divmodsi4+0xc>
     f74:	00 94       	com	r0
     f76:	0e 94 ce 07 	call	0xf9c	; 0xf9c <__negsi2>
     f7a:	57 fd       	sbrc	r21, 7
     f7c:	07 d0       	rcall	.+14     	; 0xf8c <__divmodsi4_neg2>
     f7e:	0e 94 95 07 	call	0xf2a	; 0xf2a <__udivmodsi4>
     f82:	07 fc       	sbrc	r0, 7
     f84:	03 d0       	rcall	.+6      	; 0xf8c <__divmodsi4_neg2>
     f86:	4e f4       	brtc	.+18     	; 0xf9a <__divmodsi4_exit>
     f88:	0c 94 ce 07 	jmp	0xf9c	; 0xf9c <__negsi2>

00000f8c <__divmodsi4_neg2>:
     f8c:	50 95       	com	r21
     f8e:	40 95       	com	r20
     f90:	30 95       	com	r19
     f92:	21 95       	neg	r18
     f94:	3f 4f       	sbci	r19, 0xFF	; 255
     f96:	4f 4f       	sbci	r20, 0xFF	; 255
     f98:	5f 4f       	sbci	r21, 0xFF	; 255

00000f9a <__divmodsi4_exit>:
     f9a:	08 95       	ret

00000f9c <__negsi2>:
     f9c:	90 95       	com	r25
     f9e:	80 95       	com	r24
     fa0:	70 95       	com	r23
     fa2:	61 95       	neg	r22
     fa4:	7f 4f       	sbci	r23, 0xFF	; 255
     fa6:	8f 4f       	sbci	r24, 0xFF	; 255
     fa8:	9f 4f       	sbci	r25, 0xFF	; 255
     faa:	08 95       	ret

00000fac <__tablejump2__>:
     fac:	ee 0f       	add	r30, r30
     fae:	ff 1f       	adc	r31, r31
     fb0:	05 90       	lpm	r0, Z+
     fb2:	f4 91       	lpm	r31, Z
     fb4:	e0 2d       	mov	r30, r0
     fb6:	09 94       	ijmp

00000fb8 <malloc>:
     fb8:	0f 93       	push	r16
     fba:	1f 93       	push	r17
     fbc:	cf 93       	push	r28
     fbe:	df 93       	push	r29
     fc0:	82 30       	cpi	r24, 0x02	; 2
     fc2:	91 05       	cpc	r25, r1
     fc4:	10 f4       	brcc	.+4      	; 0xfca <malloc+0x12>
     fc6:	82 e0       	ldi	r24, 0x02	; 2
     fc8:	90 e0       	ldi	r25, 0x00	; 0
     fca:	e0 91 a0 01 	lds	r30, 0x01A0	; 0x8001a0 <__flp>
     fce:	f0 91 a1 01 	lds	r31, 0x01A1	; 0x8001a1 <__flp+0x1>
     fd2:	30 e0       	ldi	r19, 0x00	; 0
     fd4:	20 e0       	ldi	r18, 0x00	; 0
     fd6:	b0 e0       	ldi	r27, 0x00	; 0
     fd8:	a0 e0       	ldi	r26, 0x00	; 0
     fda:	30 97       	sbiw	r30, 0x00	; 0
     fdc:	99 f4       	brne	.+38     	; 0x1004 <malloc+0x4c>
     fde:	21 15       	cp	r18, r1
     fe0:	31 05       	cpc	r19, r1
     fe2:	09 f4       	brne	.+2      	; 0xfe6 <malloc+0x2e>
     fe4:	4a c0       	rjmp	.+148    	; 0x107a <malloc+0xc2>
     fe6:	28 1b       	sub	r18, r24
     fe8:	39 0b       	sbc	r19, r25
     fea:	24 30       	cpi	r18, 0x04	; 4
     fec:	31 05       	cpc	r19, r1
     fee:	d8 f5       	brcc	.+118    	; 0x1066 <malloc+0xae>
     ff0:	8a 81       	ldd	r24, Y+2	; 0x02
     ff2:	9b 81       	ldd	r25, Y+3	; 0x03
     ff4:	61 15       	cp	r22, r1
     ff6:	71 05       	cpc	r23, r1
     ff8:	89 f1       	breq	.+98     	; 0x105c <malloc+0xa4>
     ffa:	fb 01       	movw	r30, r22
     ffc:	93 83       	std	Z+3, r25	; 0x03
     ffe:	82 83       	std	Z+2, r24	; 0x02
    1000:	fe 01       	movw	r30, r28
    1002:	11 c0       	rjmp	.+34     	; 0x1026 <malloc+0x6e>
    1004:	40 81       	ld	r20, Z
    1006:	51 81       	ldd	r21, Z+1	; 0x01
    1008:	02 81       	ldd	r16, Z+2	; 0x02
    100a:	13 81       	ldd	r17, Z+3	; 0x03
    100c:	48 17       	cp	r20, r24
    100e:	59 07       	cpc	r21, r25
    1010:	e0 f0       	brcs	.+56     	; 0x104a <malloc+0x92>
    1012:	48 17       	cp	r20, r24
    1014:	59 07       	cpc	r21, r25
    1016:	99 f4       	brne	.+38     	; 0x103e <malloc+0x86>
    1018:	10 97       	sbiw	r26, 0x00	; 0
    101a:	61 f0       	breq	.+24     	; 0x1034 <malloc+0x7c>
    101c:	12 96       	adiw	r26, 0x02	; 2
    101e:	0c 93       	st	X, r16
    1020:	12 97       	sbiw	r26, 0x02	; 2
    1022:	13 96       	adiw	r26, 0x03	; 3
    1024:	1c 93       	st	X, r17
    1026:	32 96       	adiw	r30, 0x02	; 2
    1028:	cf 01       	movw	r24, r30
    102a:	df 91       	pop	r29
    102c:	cf 91       	pop	r28
    102e:	1f 91       	pop	r17
    1030:	0f 91       	pop	r16
    1032:	08 95       	ret
    1034:	00 93 a0 01 	sts	0x01A0, r16	; 0x8001a0 <__flp>
    1038:	10 93 a1 01 	sts	0x01A1, r17	; 0x8001a1 <__flp+0x1>
    103c:	f4 cf       	rjmp	.-24     	; 0x1026 <malloc+0x6e>
    103e:	21 15       	cp	r18, r1
    1040:	31 05       	cpc	r19, r1
    1042:	51 f0       	breq	.+20     	; 0x1058 <malloc+0xa0>
    1044:	42 17       	cp	r20, r18
    1046:	53 07       	cpc	r21, r19
    1048:	38 f0       	brcs	.+14     	; 0x1058 <malloc+0xa0>
    104a:	a9 01       	movw	r20, r18
    104c:	db 01       	movw	r26, r22
    104e:	9a 01       	movw	r18, r20
    1050:	bd 01       	movw	r22, r26
    1052:	df 01       	movw	r26, r30
    1054:	f8 01       	movw	r30, r16
    1056:	c1 cf       	rjmp	.-126    	; 0xfda <malloc+0x22>
    1058:	ef 01       	movw	r28, r30
    105a:	f9 cf       	rjmp	.-14     	; 0x104e <malloc+0x96>
    105c:	90 93 a1 01 	sts	0x01A1, r25	; 0x8001a1 <__flp+0x1>
    1060:	80 93 a0 01 	sts	0x01A0, r24	; 0x8001a0 <__flp>
    1064:	cd cf       	rjmp	.-102    	; 0x1000 <malloc+0x48>
    1066:	fe 01       	movw	r30, r28
    1068:	e2 0f       	add	r30, r18
    106a:	f3 1f       	adc	r31, r19
    106c:	81 93       	st	Z+, r24
    106e:	91 93       	st	Z+, r25
    1070:	22 50       	subi	r18, 0x02	; 2
    1072:	31 09       	sbc	r19, r1
    1074:	39 83       	std	Y+1, r19	; 0x01
    1076:	28 83       	st	Y, r18
    1078:	d7 cf       	rjmp	.-82     	; 0x1028 <malloc+0x70>
    107a:	20 91 9e 01 	lds	r18, 0x019E	; 0x80019e <__brkval>
    107e:	30 91 9f 01 	lds	r19, 0x019F	; 0x80019f <__brkval+0x1>
    1082:	23 2b       	or	r18, r19
    1084:	41 f4       	brne	.+16     	; 0x1096 <malloc+0xde>
    1086:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
    108a:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
    108e:	30 93 9f 01 	sts	0x019F, r19	; 0x80019f <__brkval+0x1>
    1092:	20 93 9e 01 	sts	0x019E, r18	; 0x80019e <__brkval>
    1096:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__malloc_heap_end>
    109a:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__malloc_heap_end+0x1>
    109e:	21 15       	cp	r18, r1
    10a0:	31 05       	cpc	r19, r1
    10a2:	41 f4       	brne	.+16     	; 0x10b4 <malloc+0xfc>
    10a4:	2d b7       	in	r18, 0x3d	; 61
    10a6:	3e b7       	in	r19, 0x3e	; 62
    10a8:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
    10ac:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
    10b0:	24 1b       	sub	r18, r20
    10b2:	35 0b       	sbc	r19, r21
    10b4:	e0 91 9e 01 	lds	r30, 0x019E	; 0x80019e <__brkval>
    10b8:	f0 91 9f 01 	lds	r31, 0x019F	; 0x80019f <__brkval+0x1>
    10bc:	e2 17       	cp	r30, r18
    10be:	f3 07       	cpc	r31, r19
    10c0:	a0 f4       	brcc	.+40     	; 0x10ea <malloc+0x132>
    10c2:	2e 1b       	sub	r18, r30
    10c4:	3f 0b       	sbc	r19, r31
    10c6:	28 17       	cp	r18, r24
    10c8:	39 07       	cpc	r19, r25
    10ca:	78 f0       	brcs	.+30     	; 0x10ea <malloc+0x132>
    10cc:	ac 01       	movw	r20, r24
    10ce:	4e 5f       	subi	r20, 0xFE	; 254
    10d0:	5f 4f       	sbci	r21, 0xFF	; 255
    10d2:	24 17       	cp	r18, r20
    10d4:	35 07       	cpc	r19, r21
    10d6:	48 f0       	brcs	.+18     	; 0x10ea <malloc+0x132>
    10d8:	4e 0f       	add	r20, r30
    10da:	5f 1f       	adc	r21, r31
    10dc:	50 93 9f 01 	sts	0x019F, r21	; 0x80019f <__brkval+0x1>
    10e0:	40 93 9e 01 	sts	0x019E, r20	; 0x80019e <__brkval>
    10e4:	81 93       	st	Z+, r24
    10e6:	91 93       	st	Z+, r25
    10e8:	9f cf       	rjmp	.-194    	; 0x1028 <malloc+0x70>
    10ea:	f0 e0       	ldi	r31, 0x00	; 0
    10ec:	e0 e0       	ldi	r30, 0x00	; 0
    10ee:	9c cf       	rjmp	.-200    	; 0x1028 <malloc+0x70>

000010f0 <free>:
    10f0:	cf 93       	push	r28
    10f2:	df 93       	push	r29
    10f4:	00 97       	sbiw	r24, 0x00	; 0
    10f6:	e9 f0       	breq	.+58     	; 0x1132 <free+0x42>
    10f8:	fc 01       	movw	r30, r24
    10fa:	32 97       	sbiw	r30, 0x02	; 2
    10fc:	13 82       	std	Z+3, r1	; 0x03
    10fe:	12 82       	std	Z+2, r1	; 0x02
    1100:	a0 91 a0 01 	lds	r26, 0x01A0	; 0x8001a0 <__flp>
    1104:	b0 91 a1 01 	lds	r27, 0x01A1	; 0x8001a1 <__flp+0x1>
    1108:	ed 01       	movw	r28, r26
    110a:	30 e0       	ldi	r19, 0x00	; 0
    110c:	20 e0       	ldi	r18, 0x00	; 0
    110e:	10 97       	sbiw	r26, 0x00	; 0
    1110:	a1 f4       	brne	.+40     	; 0x113a <free+0x4a>
    1112:	20 81       	ld	r18, Z
    1114:	31 81       	ldd	r19, Z+1	; 0x01
    1116:	82 0f       	add	r24, r18
    1118:	93 1f       	adc	r25, r19
    111a:	20 91 9e 01 	lds	r18, 0x019E	; 0x80019e <__brkval>
    111e:	30 91 9f 01 	lds	r19, 0x019F	; 0x80019f <__brkval+0x1>
    1122:	28 17       	cp	r18, r24
    1124:	39 07       	cpc	r19, r25
    1126:	09 f0       	breq	.+2      	; 0x112a <free+0x3a>
    1128:	61 c0       	rjmp	.+194    	; 0x11ec <free+0xfc>
    112a:	f0 93 9f 01 	sts	0x019F, r31	; 0x80019f <__brkval+0x1>
    112e:	e0 93 9e 01 	sts	0x019E, r30	; 0x80019e <__brkval>
    1132:	df 91       	pop	r29
    1134:	cf 91       	pop	r28
    1136:	08 95       	ret
    1138:	ea 01       	movw	r28, r20
    113a:	ce 17       	cp	r28, r30
    113c:	df 07       	cpc	r29, r31
    113e:	e8 f5       	brcc	.+122    	; 0x11ba <free+0xca>
    1140:	4a 81       	ldd	r20, Y+2	; 0x02
    1142:	5b 81       	ldd	r21, Y+3	; 0x03
    1144:	9e 01       	movw	r18, r28
    1146:	41 15       	cp	r20, r1
    1148:	51 05       	cpc	r21, r1
    114a:	b1 f7       	brne	.-20     	; 0x1138 <free+0x48>
    114c:	e9 01       	movw	r28, r18
    114e:	fb 83       	std	Y+3, r31	; 0x03
    1150:	ea 83       	std	Y+2, r30	; 0x02
    1152:	49 91       	ld	r20, Y+
    1154:	59 91       	ld	r21, Y+
    1156:	c4 0f       	add	r28, r20
    1158:	d5 1f       	adc	r29, r21
    115a:	ec 17       	cp	r30, r28
    115c:	fd 07       	cpc	r31, r29
    115e:	61 f4       	brne	.+24     	; 0x1178 <free+0x88>
    1160:	80 81       	ld	r24, Z
    1162:	91 81       	ldd	r25, Z+1	; 0x01
    1164:	02 96       	adiw	r24, 0x02	; 2
    1166:	84 0f       	add	r24, r20
    1168:	95 1f       	adc	r25, r21
    116a:	e9 01       	movw	r28, r18
    116c:	99 83       	std	Y+1, r25	; 0x01
    116e:	88 83       	st	Y, r24
    1170:	82 81       	ldd	r24, Z+2	; 0x02
    1172:	93 81       	ldd	r25, Z+3	; 0x03
    1174:	9b 83       	std	Y+3, r25	; 0x03
    1176:	8a 83       	std	Y+2, r24	; 0x02
    1178:	f0 e0       	ldi	r31, 0x00	; 0
    117a:	e0 e0       	ldi	r30, 0x00	; 0
    117c:	12 96       	adiw	r26, 0x02	; 2
    117e:	8d 91       	ld	r24, X+
    1180:	9c 91       	ld	r25, X
    1182:	13 97       	sbiw	r26, 0x03	; 3
    1184:	00 97       	sbiw	r24, 0x00	; 0
    1186:	b9 f5       	brne	.+110    	; 0x11f6 <free+0x106>
    1188:	2d 91       	ld	r18, X+
    118a:	3c 91       	ld	r19, X
    118c:	11 97       	sbiw	r26, 0x01	; 1
    118e:	cd 01       	movw	r24, r26
    1190:	02 96       	adiw	r24, 0x02	; 2
    1192:	82 0f       	add	r24, r18
    1194:	93 1f       	adc	r25, r19
    1196:	20 91 9e 01 	lds	r18, 0x019E	; 0x80019e <__brkval>
    119a:	30 91 9f 01 	lds	r19, 0x019F	; 0x80019f <__brkval+0x1>
    119e:	28 17       	cp	r18, r24
    11a0:	39 07       	cpc	r19, r25
    11a2:	39 f6       	brne	.-114    	; 0x1132 <free+0x42>
    11a4:	30 97       	sbiw	r30, 0x00	; 0
    11a6:	51 f5       	brne	.+84     	; 0x11fc <free+0x10c>
    11a8:	10 92 a1 01 	sts	0x01A1, r1	; 0x8001a1 <__flp+0x1>
    11ac:	10 92 a0 01 	sts	0x01A0, r1	; 0x8001a0 <__flp>
    11b0:	b0 93 9f 01 	sts	0x019F, r27	; 0x80019f <__brkval+0x1>
    11b4:	a0 93 9e 01 	sts	0x019E, r26	; 0x80019e <__brkval>
    11b8:	bc cf       	rjmp	.-136    	; 0x1132 <free+0x42>
    11ba:	d3 83       	std	Z+3, r29	; 0x03
    11bc:	c2 83       	std	Z+2, r28	; 0x02
    11be:	40 81       	ld	r20, Z
    11c0:	51 81       	ldd	r21, Z+1	; 0x01
    11c2:	84 0f       	add	r24, r20
    11c4:	95 1f       	adc	r25, r21
    11c6:	c8 17       	cp	r28, r24
    11c8:	d9 07       	cpc	r29, r25
    11ca:	61 f4       	brne	.+24     	; 0x11e4 <free+0xf4>
    11cc:	4e 5f       	subi	r20, 0xFE	; 254
    11ce:	5f 4f       	sbci	r21, 0xFF	; 255
    11d0:	88 81       	ld	r24, Y
    11d2:	99 81       	ldd	r25, Y+1	; 0x01
    11d4:	48 0f       	add	r20, r24
    11d6:	59 1f       	adc	r21, r25
    11d8:	51 83       	std	Z+1, r21	; 0x01
    11da:	40 83       	st	Z, r20
    11dc:	8a 81       	ldd	r24, Y+2	; 0x02
    11de:	9b 81       	ldd	r25, Y+3	; 0x03
    11e0:	93 83       	std	Z+3, r25	; 0x03
    11e2:	82 83       	std	Z+2, r24	; 0x02
    11e4:	21 15       	cp	r18, r1
    11e6:	31 05       	cpc	r19, r1
    11e8:	09 f0       	breq	.+2      	; 0x11ec <free+0xfc>
    11ea:	b0 cf       	rjmp	.-160    	; 0x114c <free+0x5c>
    11ec:	f0 93 a1 01 	sts	0x01A1, r31	; 0x8001a1 <__flp+0x1>
    11f0:	e0 93 a0 01 	sts	0x01A0, r30	; 0x8001a0 <__flp>
    11f4:	9e cf       	rjmp	.-196    	; 0x1132 <free+0x42>
    11f6:	fd 01       	movw	r30, r26
    11f8:	dc 01       	movw	r26, r24
    11fa:	c0 cf       	rjmp	.-128    	; 0x117c <free+0x8c>
    11fc:	13 82       	std	Z+3, r1	; 0x03
    11fe:	12 82       	std	Z+2, r1	; 0x02
    1200:	d7 cf       	rjmp	.-82     	; 0x11b0 <free+0xc0>

00001202 <__do_global_dtors>:
    1202:	10 e0       	ldi	r17, 0x00	; 0
    1204:	c6 e3       	ldi	r28, 0x36	; 54
    1206:	d0 e0       	ldi	r29, 0x00	; 0
    1208:	04 c0       	rjmp	.+8      	; 0x1212 <__do_global_dtors+0x10>
    120a:	fe 01       	movw	r30, r28
    120c:	0e 94 d6 07 	call	0xfac	; 0xfac <__tablejump2__>
    1210:	21 96       	adiw	r28, 0x01	; 1
    1212:	c7 33       	cpi	r28, 0x37	; 55
    1214:	d1 07       	cpc	r29, r17
    1216:	c9 f7       	brne	.-14     	; 0x120a <__do_global_dtors+0x8>
    1218:	f8 94       	cli

0000121a <__stop_program>:
    121a:	ff cf       	rjmp	.-2      	; 0x121a <__stop_program>
