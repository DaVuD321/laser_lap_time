
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
      80:	ec e6       	ldi	r30, 0x6C	; 108
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
      ac:	0e 94 fe 07 	call	0xffc	; 0xffc <__tablejump2__>
      b0:	c4 33       	cpi	r28, 0x34	; 52
      b2:	d1 07       	cpc	r29, r17
      b4:	c9 f7       	brne	.-14     	; 0xa8 <__do_global_ctors+0x8>
      b6:	0e 94 11 04 	call	0x822	; 0x822 <main>
      ba:	0c 94 29 09 	jmp	0x1252	; 0x1252 <__do_global_dtors>

000000be <__bad_interrupt>:
      be:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c2 <_ZdlPv>:
      c2:	0c 94 a0 08 	jmp	0x1140	; 0x1140 <free>

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
     2cc:	0e 94 cb 07 	call	0xf96	; 0xf96 <__divmodsi4>
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
     372:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     376:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     37a:	85 fd       	sbrc	r24, 5
     37c:	02 c0       	rjmp	.+4      	; 0x382 <_ZN6CUSART8put_charEc+0x10>
     37e:	00 00       	nop
     380:	fa cf       	rjmp	.-12     	; 0x376 <_ZN6CUSART8put_charEc+0x4>
     382:	08 95       	ret

00000384 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE9write_regEhhh>:
     384:	ff 92       	push	r15
     386:	0f 93       	push	r16
     388:	1f 93       	push	r17
     38a:	cf 93       	push	r28
     38c:	df 93       	push	r29
     38e:	ec 01       	movw	r28, r24
     390:	f6 2e       	mov	r15, r22
     392:	04 2f       	mov	r16, r20
     394:	12 2f       	mov	r17, r18
     396:	e8 81       	ld	r30, Y
     398:	f9 81       	ldd	r31, Y+1	; 0x01
     39a:	01 90       	ld	r0, Z+
     39c:	f0 81       	ld	r31, Z
     39e:	e0 2d       	mov	r30, r0
     3a0:	09 95       	icall
     3a2:	e8 81       	ld	r30, Y
     3a4:	f9 81       	ldd	r31, Y+1	; 0x01
     3a6:	04 80       	ldd	r0, Z+4	; 0x04
     3a8:	f5 81       	ldd	r31, Z+5	; 0x05
     3aa:	e0 2d       	mov	r30, r0
     3ac:	6f 2d       	mov	r22, r15
     3ae:	ce 01       	movw	r24, r28
     3b0:	09 95       	icall
     3b2:	e8 81       	ld	r30, Y
     3b4:	f9 81       	ldd	r31, Y+1	; 0x01
     3b6:	04 80       	ldd	r0, Z+4	; 0x04
     3b8:	f5 81       	ldd	r31, Z+5	; 0x05
     3ba:	e0 2d       	mov	r30, r0
     3bc:	60 2f       	mov	r22, r16
     3be:	ce 01       	movw	r24, r28
     3c0:	09 95       	icall
     3c2:	e8 81       	ld	r30, Y
     3c4:	f9 81       	ldd	r31, Y+1	; 0x01
     3c6:	04 80       	ldd	r0, Z+4	; 0x04
     3c8:	f5 81       	ldd	r31, Z+5	; 0x05
     3ca:	e0 2d       	mov	r30, r0
     3cc:	61 2f       	mov	r22, r17
     3ce:	ce 01       	movw	r24, r28
     3d0:	09 95       	icall
     3d2:	e8 81       	ld	r30, Y
     3d4:	f9 81       	ldd	r31, Y+1	; 0x01
     3d6:	02 80       	ldd	r0, Z+2	; 0x02
     3d8:	f3 81       	ldd	r31, Z+3	; 0x03
     3da:	e0 2d       	mov	r30, r0
     3dc:	ce 01       	movw	r24, r28
     3de:	df 91       	pop	r29
     3e0:	cf 91       	pop	r28
     3e2:	1f 91       	pop	r17
     3e4:	0f 91       	pop	r16
     3e6:	ff 90       	pop	r15
     3e8:	09 94       	ijmp

000003ea <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     3ea:	ef 92       	push	r14
     3ec:	ff 92       	push	r15
     3ee:	0f 93       	push	r16
     3f0:	1f 93       	push	r17
     3f2:	cf 93       	push	r28
     3f4:	df 93       	push	r29
     3f6:	ec 01       	movw	r28, r24
     3f8:	e6 2e       	mov	r14, r22
     3fa:	f4 2e       	mov	r15, r20
     3fc:	12 2f       	mov	r17, r18
     3fe:	03 2f       	mov	r16, r19
     400:	e8 81       	ld	r30, Y
     402:	f9 81       	ldd	r31, Y+1	; 0x01
     404:	01 90       	ld	r0, Z+
     406:	f0 81       	ld	r31, Z
     408:	e0 2d       	mov	r30, r0
     40a:	09 95       	icall
     40c:	e8 81       	ld	r30, Y
     40e:	f9 81       	ldd	r31, Y+1	; 0x01
     410:	04 80       	ldd	r0, Z+4	; 0x04
     412:	f5 81       	ldd	r31, Z+5	; 0x05
     414:	e0 2d       	mov	r30, r0
     416:	6e 2d       	mov	r22, r14
     418:	ce 01       	movw	r24, r28
     41a:	09 95       	icall
     41c:	e8 81       	ld	r30, Y
     41e:	f9 81       	ldd	r31, Y+1	; 0x01
     420:	04 80       	ldd	r0, Z+4	; 0x04
     422:	f5 81       	ldd	r31, Z+5	; 0x05
     424:	e0 2d       	mov	r30, r0
     426:	6f 2d       	mov	r22, r15
     428:	ce 01       	movw	r24, r28
     42a:	09 95       	icall
     42c:	e8 81       	ld	r30, Y
     42e:	f9 81       	ldd	r31, Y+1	; 0x01
     430:	04 80       	ldd	r0, Z+4	; 0x04
     432:	f5 81       	ldd	r31, Z+5	; 0x05
     434:	e0 2d       	mov	r30, r0
     436:	60 2f       	mov	r22, r16
     438:	ce 01       	movw	r24, r28
     43a:	09 95       	icall
     43c:	e8 81       	ld	r30, Y
     43e:	f9 81       	ldd	r31, Y+1	; 0x01
     440:	04 80       	ldd	r0, Z+4	; 0x04
     442:	f5 81       	ldd	r31, Z+5	; 0x05
     444:	e0 2d       	mov	r30, r0
     446:	61 2f       	mov	r22, r17
     448:	ce 01       	movw	r24, r28
     44a:	09 95       	icall
     44c:	e8 81       	ld	r30, Y
     44e:	f9 81       	ldd	r31, Y+1	; 0x01
     450:	02 80       	ldd	r0, Z+2	; 0x02
     452:	f3 81       	ldd	r31, Z+3	; 0x03
     454:	e0 2d       	mov	r30, r0
     456:	ce 01       	movw	r24, r28
     458:	df 91       	pop	r29
     45a:	cf 91       	pop	r28
     45c:	1f 91       	pop	r17
     45e:	0f 91       	pop	r16
     460:	ff 90       	pop	r15
     462:	ef 90       	pop	r14
     464:	09 94       	ijmp

00000466 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     466:	cf 92       	push	r12
     468:	df 92       	push	r13
     46a:	ef 92       	push	r14
     46c:	ff 92       	push	r15
     46e:	0f 93       	push	r16
     470:	1f 93       	push	r17
     472:	cf 93       	push	r28
     474:	df 93       	push	r29
     476:	ec 01       	movw	r28, r24
     478:	e6 2e       	mov	r14, r22
     47a:	f4 2e       	mov	r15, r20
     47c:	69 01       	movw	r12, r18
     47e:	e8 81       	ld	r30, Y
     480:	f9 81       	ldd	r31, Y+1	; 0x01
     482:	01 90       	ld	r0, Z+
     484:	f0 81       	ld	r31, Z
     486:	e0 2d       	mov	r30, r0
     488:	09 95       	icall
     48a:	e8 81       	ld	r30, Y
     48c:	f9 81       	ldd	r31, Y+1	; 0x01
     48e:	04 80       	ldd	r0, Z+4	; 0x04
     490:	f5 81       	ldd	r31, Z+5	; 0x05
     492:	e0 2d       	mov	r30, r0
     494:	6e 2d       	mov	r22, r14
     496:	ce 01       	movw	r24, r28
     498:	09 95       	icall
     49a:	e8 81       	ld	r30, Y
     49c:	f9 81       	ldd	r31, Y+1	; 0x01
     49e:	04 80       	ldd	r0, Z+4	; 0x04
     4a0:	f5 81       	ldd	r31, Z+5	; 0x05
     4a2:	e0 2d       	mov	r30, r0
     4a4:	6f 2d       	mov	r22, r15
     4a6:	ce 01       	movw	r24, r28
     4a8:	09 95       	icall
     4aa:	76 01       	movw	r14, r12
     4ac:	0c 0d       	add	r16, r12
     4ae:	1d 1d       	adc	r17, r13
     4b0:	e8 81       	ld	r30, Y
     4b2:	f9 81       	ldd	r31, Y+1	; 0x01
     4b4:	e0 16       	cp	r14, r16
     4b6:	f1 06       	cpc	r15, r17
     4b8:	49 f0       	breq	.+18     	; 0x4cc <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     4ba:	d7 01       	movw	r26, r14
     4bc:	6d 91       	ld	r22, X+
     4be:	7d 01       	movw	r14, r26
     4c0:	04 80       	ldd	r0, Z+4	; 0x04
     4c2:	f5 81       	ldd	r31, Z+5	; 0x05
     4c4:	e0 2d       	mov	r30, r0
     4c6:	ce 01       	movw	r24, r28
     4c8:	09 95       	icall
     4ca:	f2 cf       	rjmp	.-28     	; 0x4b0 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     4cc:	02 80       	ldd	r0, Z+2	; 0x02
     4ce:	f3 81       	ldd	r31, Z+3	; 0x03
     4d0:	e0 2d       	mov	r30, r0
     4d2:	ce 01       	movw	r24, r28
     4d4:	df 91       	pop	r29
     4d6:	cf 91       	pop	r28
     4d8:	1f 91       	pop	r17
     4da:	0f 91       	pop	r16
     4dc:	ff 90       	pop	r15
     4de:	ef 90       	pop	r14
     4e0:	df 90       	pop	r13
     4e2:	cf 90       	pop	r12
     4e4:	09 94       	ijmp

000004e6 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE8read_regEhh>:
     4e6:	0f 93       	push	r16
     4e8:	1f 93       	push	r17
     4ea:	cf 93       	push	r28
     4ec:	df 93       	push	r29
     4ee:	ec 01       	movw	r28, r24
     4f0:	16 2f       	mov	r17, r22
     4f2:	04 2f       	mov	r16, r20
     4f4:	e8 81       	ld	r30, Y
     4f6:	f9 81       	ldd	r31, Y+1	; 0x01
     4f8:	01 90       	ld	r0, Z+
     4fa:	f0 81       	ld	r31, Z
     4fc:	e0 2d       	mov	r30, r0
     4fe:	09 95       	icall
     500:	e8 81       	ld	r30, Y
     502:	f9 81       	ldd	r31, Y+1	; 0x01
     504:	04 80       	ldd	r0, Z+4	; 0x04
     506:	f5 81       	ldd	r31, Z+5	; 0x05
     508:	e0 2d       	mov	r30, r0
     50a:	61 2f       	mov	r22, r17
     50c:	ce 01       	movw	r24, r28
     50e:	09 95       	icall
     510:	e8 81       	ld	r30, Y
     512:	f9 81       	ldd	r31, Y+1	; 0x01
     514:	04 80       	ldd	r0, Z+4	; 0x04
     516:	f5 81       	ldd	r31, Z+5	; 0x05
     518:	e0 2d       	mov	r30, r0
     51a:	60 2f       	mov	r22, r16
     51c:	ce 01       	movw	r24, r28
     51e:	09 95       	icall
     520:	e8 81       	ld	r30, Y
     522:	f9 81       	ldd	r31, Y+1	; 0x01
     524:	01 90       	ld	r0, Z+
     526:	f0 81       	ld	r31, Z
     528:	e0 2d       	mov	r30, r0
     52a:	ce 01       	movw	r24, r28
     52c:	09 95       	icall
     52e:	61 2f       	mov	r22, r17
     530:	61 60       	ori	r22, 0x01	; 1
     532:	e8 81       	ld	r30, Y
     534:	f9 81       	ldd	r31, Y+1	; 0x01
     536:	04 80       	ldd	r0, Z+4	; 0x04
     538:	f5 81       	ldd	r31, Z+5	; 0x05
     53a:	e0 2d       	mov	r30, r0
     53c:	ce 01       	movw	r24, r28
     53e:	09 95       	icall
     540:	e8 81       	ld	r30, Y
     542:	f9 81       	ldd	r31, Y+1	; 0x01
     544:	06 80       	ldd	r0, Z+6	; 0x06
     546:	f7 81       	ldd	r31, Z+7	; 0x07
     548:	e0 2d       	mov	r30, r0
     54a:	60 e0       	ldi	r22, 0x00	; 0
     54c:	ce 01       	movw	r24, r28
     54e:	09 95       	icall
     550:	18 2f       	mov	r17, r24
     552:	e8 81       	ld	r30, Y
     554:	f9 81       	ldd	r31, Y+1	; 0x01
     556:	02 80       	ldd	r0, Z+2	; 0x02
     558:	f3 81       	ldd	r31, Z+3	; 0x03
     55a:	e0 2d       	mov	r30, r0
     55c:	ce 01       	movw	r24, r28
     55e:	09 95       	icall
     560:	81 2f       	mov	r24, r17
     562:	df 91       	pop	r29
     564:	cf 91       	pop	r28
     566:	1f 91       	pop	r17
     568:	0f 91       	pop	r16
     56a:	08 95       	ret

0000056c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     56c:	0f 93       	push	r16
     56e:	1f 93       	push	r17
     570:	cf 93       	push	r28
     572:	df 93       	push	r29
     574:	ec 01       	movw	r28, r24
     576:	16 2f       	mov	r17, r22
     578:	04 2f       	mov	r16, r20
     57a:	e8 81       	ld	r30, Y
     57c:	f9 81       	ldd	r31, Y+1	; 0x01
     57e:	01 90       	ld	r0, Z+
     580:	f0 81       	ld	r31, Z
     582:	e0 2d       	mov	r30, r0
     584:	09 95       	icall
     586:	e8 81       	ld	r30, Y
     588:	f9 81       	ldd	r31, Y+1	; 0x01
     58a:	04 80       	ldd	r0, Z+4	; 0x04
     58c:	f5 81       	ldd	r31, Z+5	; 0x05
     58e:	e0 2d       	mov	r30, r0
     590:	61 2f       	mov	r22, r17
     592:	ce 01       	movw	r24, r28
     594:	09 95       	icall
     596:	e8 81       	ld	r30, Y
     598:	f9 81       	ldd	r31, Y+1	; 0x01
     59a:	04 80       	ldd	r0, Z+4	; 0x04
     59c:	f5 81       	ldd	r31, Z+5	; 0x05
     59e:	e0 2d       	mov	r30, r0
     5a0:	60 2f       	mov	r22, r16
     5a2:	ce 01       	movw	r24, r28
     5a4:	09 95       	icall
     5a6:	e8 81       	ld	r30, Y
     5a8:	f9 81       	ldd	r31, Y+1	; 0x01
     5aa:	01 90       	ld	r0, Z+
     5ac:	f0 81       	ld	r31, Z
     5ae:	e0 2d       	mov	r30, r0
     5b0:	ce 01       	movw	r24, r28
     5b2:	09 95       	icall
     5b4:	61 2f       	mov	r22, r17
     5b6:	61 60       	ori	r22, 0x01	; 1
     5b8:	e8 81       	ld	r30, Y
     5ba:	f9 81       	ldd	r31, Y+1	; 0x01
     5bc:	04 80       	ldd	r0, Z+4	; 0x04
     5be:	f5 81       	ldd	r31, Z+5	; 0x05
     5c0:	e0 2d       	mov	r30, r0
     5c2:	ce 01       	movw	r24, r28
     5c4:	09 95       	icall
     5c6:	e8 81       	ld	r30, Y
     5c8:	f9 81       	ldd	r31, Y+1	; 0x01
     5ca:	06 80       	ldd	r0, Z+6	; 0x06
     5cc:	f7 81       	ldd	r31, Z+7	; 0x07
     5ce:	e0 2d       	mov	r30, r0
     5d0:	61 e0       	ldi	r22, 0x01	; 1
     5d2:	ce 01       	movw	r24, r28
     5d4:	09 95       	icall
     5d6:	08 2f       	mov	r16, r24
     5d8:	10 e0       	ldi	r17, 0x00	; 0
     5da:	10 2f       	mov	r17, r16
     5dc:	00 27       	eor	r16, r16
     5de:	e8 81       	ld	r30, Y
     5e0:	f9 81       	ldd	r31, Y+1	; 0x01
     5e2:	06 80       	ldd	r0, Z+6	; 0x06
     5e4:	f7 81       	ldd	r31, Z+7	; 0x07
     5e6:	e0 2d       	mov	r30, r0
     5e8:	60 e0       	ldi	r22, 0x00	; 0
     5ea:	ce 01       	movw	r24, r28
     5ec:	09 95       	icall
     5ee:	08 2b       	or	r16, r24
     5f0:	e8 81       	ld	r30, Y
     5f2:	f9 81       	ldd	r31, Y+1	; 0x01
     5f4:	02 80       	ldd	r0, Z+2	; 0x02
     5f6:	f3 81       	ldd	r31, Z+3	; 0x03
     5f8:	e0 2d       	mov	r30, r0
     5fa:	ce 01       	movw	r24, r28
     5fc:	09 95       	icall
     5fe:	c8 01       	movw	r24, r16
     600:	df 91       	pop	r29
     602:	cf 91       	pop	r28
     604:	1f 91       	pop	r17
     606:	0f 91       	pop	r16
     608:	08 95       	ret

0000060a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
     60a:	cf 92       	push	r12
     60c:	df 92       	push	r13
     60e:	ef 92       	push	r14
     610:	ff 92       	push	r15
     612:	0f 93       	push	r16
     614:	1f 93       	push	r17
     616:	cf 93       	push	r28
     618:	df 93       	push	r29
     61a:	ec 01       	movw	r28, r24
     61c:	f6 2e       	mov	r15, r22
     61e:	e4 2e       	mov	r14, r20
     620:	69 01       	movw	r12, r18
     622:	e8 81       	ld	r30, Y
     624:	f9 81       	ldd	r31, Y+1	; 0x01
     626:	01 90       	ld	r0, Z+
     628:	f0 81       	ld	r31, Z
     62a:	e0 2d       	mov	r30, r0
     62c:	09 95       	icall
     62e:	e8 81       	ld	r30, Y
     630:	f9 81       	ldd	r31, Y+1	; 0x01
     632:	04 80       	ldd	r0, Z+4	; 0x04
     634:	f5 81       	ldd	r31, Z+5	; 0x05
     636:	e0 2d       	mov	r30, r0
     638:	6f 2d       	mov	r22, r15
     63a:	ce 01       	movw	r24, r28
     63c:	09 95       	icall
     63e:	e8 81       	ld	r30, Y
     640:	f9 81       	ldd	r31, Y+1	; 0x01
     642:	04 80       	ldd	r0, Z+4	; 0x04
     644:	f5 81       	ldd	r31, Z+5	; 0x05
     646:	e0 2d       	mov	r30, r0
     648:	6e 2d       	mov	r22, r14
     64a:	ce 01       	movw	r24, r28
     64c:	09 95       	icall
     64e:	e8 81       	ld	r30, Y
     650:	f9 81       	ldd	r31, Y+1	; 0x01
     652:	01 90       	ld	r0, Z+
     654:	f0 81       	ld	r31, Z
     656:	e0 2d       	mov	r30, r0
     658:	ce 01       	movw	r24, r28
     65a:	09 95       	icall
     65c:	6f 2d       	mov	r22, r15
     65e:	61 60       	ori	r22, 0x01	; 1
     660:	e8 81       	ld	r30, Y
     662:	f9 81       	ldd	r31, Y+1	; 0x01
     664:	04 80       	ldd	r0, Z+4	; 0x04
     666:	f5 81       	ldd	r31, Z+5	; 0x05
     668:	e0 2d       	mov	r30, r0
     66a:	ce 01       	movw	r24, r28
     66c:	09 95       	icall
     66e:	76 01       	movw	r14, r12
     670:	0c 0d       	add	r16, r12
     672:	1d 1d       	adc	r17, r13
     674:	e8 81       	ld	r30, Y
     676:	f9 81       	ldd	r31, Y+1	; 0x01
     678:	e0 16       	cp	r14, r16
     67a:	f1 06       	cpc	r15, r17
     67c:	51 f0       	breq	.+20     	; 0x692 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
     67e:	06 80       	ldd	r0, Z+6	; 0x06
     680:	f7 81       	ldd	r31, Z+7	; 0x07
     682:	e0 2d       	mov	r30, r0
     684:	61 e0       	ldi	r22, 0x01	; 1
     686:	ce 01       	movw	r24, r28
     688:	09 95       	icall
     68a:	f7 01       	movw	r30, r14
     68c:	81 93       	st	Z+, r24
     68e:	7f 01       	movw	r14, r30
     690:	f1 cf       	rjmp	.-30     	; 0x674 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
     692:	02 80       	ldd	r0, Z+2	; 0x02
     694:	f3 81       	ldd	r31, Z+3	; 0x03
     696:	e0 2d       	mov	r30, r0
     698:	ce 01       	movw	r24, r28
     69a:	df 91       	pop	r29
     69c:	cf 91       	pop	r28
     69e:	1f 91       	pop	r17
     6a0:	0f 91       	pop	r16
     6a2:	ff 90       	pop	r15
     6a4:	ef 90       	pop	r14
     6a6:	df 90       	pop	r13
     6a8:	cf 90       	pop	r12
     6aa:	09 94       	ijmp

000006ac <_ZN16CMeasurementTaskD1Ev>:
     6ac:	22 e5       	ldi	r18, 0x52	; 82
     6ae:	31 e0       	ldi	r19, 0x01	; 1
     6b0:	fc 01       	movw	r30, r24
     6b2:	31 83       	std	Z+1, r19	; 0x01
     6b4:	20 83       	st	Z, r18
     6b6:	06 96       	adiw	r24, 0x06	; 6
     6b8:	0c 94 5f 04 	jmp	0x8be	; 0x8be <_ZN8CVL53L0XD1Ev>

000006bc <_ZN16CMeasurementTaskD0Ev>:
     6bc:	cf 93       	push	r28
     6be:	df 93       	push	r29
     6c0:	ec 01       	movw	r28, r24
     6c2:	0e 94 56 03 	call	0x6ac	; 0x6ac <_ZN16CMeasurementTaskD1Ev>
     6c6:	ce 01       	movw	r24, r28
     6c8:	df 91       	pop	r29
     6ca:	cf 91       	pop	r28
     6cc:	0c 94 61 00 	jmp	0xc2	; 0xc2 <_ZdlPv>

000006d0 <_ZN16CMeasurementTaskclEv>:
     6d0:	cf 93       	push	r28
     6d2:	df 93       	push	r29
     6d4:	06 96       	adiw	r24, 0x06	; 6
     6d6:	0e 94 60 04 	call	0x8c0	; 0x8c0 <_ZN8CVL53L0X4readEv>
     6da:	ec 01       	movw	r28, r24
     6dc:	66 e0       	ldi	r22, 0x06	; 6
     6de:	71 e0       	ldi	r23, 0x01	; 1
     6e0:	8d e9       	ldi	r24, 0x9D	; 157
     6e2:	91 e0       	ldi	r25, 0x01	; 1
     6e4:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     6e8:	ae 01       	movw	r20, r28
     6ea:	dd 0f       	add	r29, r29
     6ec:	66 0b       	sbc	r22, r22
     6ee:	77 0b       	sbc	r23, r23
     6f0:	8d e9       	ldi	r24, 0x9D	; 157
     6f2:	91 e0       	ldi	r25, 0x01	; 1
     6f4:	0e 94 34 01 	call	0x268	; 0x268 <_ZN9CTerminal4putiEl>
     6f8:	64 e3       	ldi	r22, 0x34	; 52
     6fa:	71 e0       	ldi	r23, 0x01	; 1
     6fc:	8d e9       	ldi	r24, 0x9D	; 157
     6fe:	91 e0       	ldi	r25, 0x01	; 1
     700:	df 91       	pop	r29
     702:	cf 91       	pop	r28
     704:	0c 94 22 01 	jmp	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>

00000708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>:
     708:	88 23       	and	r24, r24
     70a:	11 f0       	breq	.+4      	; 0x710 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2+0x8>
     70c:	3d 98       	cbi	0x07, 5	; 7
     70e:	08 95       	ret
     710:	3d 9a       	sbi	0x07, 5	; 7
     712:	08 95       	ret

00000714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>:
	...
     71c:	00 00       	nop
     71e:	08 95       	ret

00000720 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4stopEv>:
     720:	80 e0       	ldi	r24, 0x00	; 0
     722:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     726:	38 9a       	sbi	0x07, 0	; 7
     728:	81 e0       	ldi	r24, 0x01	; 1
     72a:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     72e:	38 9a       	sbi	0x07, 0	; 7
     730:	81 e0       	ldi	r24, 0x01	; 1
     732:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     736:	38 98       	cbi	0x07, 0	; 7
     738:	0c 94 8a 03 	jmp	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>

0000073c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5startEv>:
     73c:	81 e0       	ldi	r24, 0x01	; 1
     73e:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     742:	38 98       	cbi	0x07, 0	; 7
     744:	81 e0       	ldi	r24, 0x01	; 1
     746:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     74a:	38 9a       	sbi	0x07, 0	; 7
     74c:	80 e0       	ldi	r24, 0x00	; 0
     74e:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     752:	38 98       	cbi	0x07, 0	; 7
     754:	0c 94 8a 03 	jmp	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>

00000758 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh>:
     758:	cf 93       	push	r28
     75a:	df 93       	push	r29
     75c:	d6 2f       	mov	r29, r22
     75e:	c8 e0       	ldi	r28, 0x08	; 8
     760:	80 e0       	ldi	r24, 0x00	; 0
     762:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     766:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     76a:	d7 ff       	sbrs	r29, 7
     76c:	24 c0       	rjmp	.+72     	; 0x7b6 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x5e>
     76e:	38 98       	cbi	0x07, 0	; 7
     770:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     774:	81 e0       	ldi	r24, 0x01	; 1
     776:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     77a:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     77e:	dd 0f       	add	r29, r29
     780:	c1 50       	subi	r28, 0x01	; 1
     782:	71 f7       	brne	.-36     	; 0x760 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x8>
     784:	80 e0       	ldi	r24, 0x00	; 0
     786:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     78a:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     78e:	38 98       	cbi	0x07, 0	; 7
     790:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     794:	81 e0       	ldi	r24, 0x01	; 1
     796:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     79a:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     79e:	c6 b1       	in	r28, 0x06	; 6
     7a0:	80 e0       	ldi	r24, 0x00	; 0
     7a2:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7a6:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7aa:	8c 2f       	mov	r24, r28
     7ac:	80 95       	com	r24
     7ae:	81 70       	andi	r24, 0x01	; 1
     7b0:	df 91       	pop	r29
     7b2:	cf 91       	pop	r28
     7b4:	08 95       	ret
     7b6:	38 9a       	sbi	0x07, 0	; 7
     7b8:	db cf       	rjmp	.-74     	; 0x770 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x18>

000007ba <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh>:
     7ba:	1f 93       	push	r17
     7bc:	cf 93       	push	r28
     7be:	df 93       	push	r29
     7c0:	16 2f       	mov	r17, r22
     7c2:	38 98       	cbi	0x07, 0	; 7
     7c4:	80 e0       	ldi	r24, 0x00	; 0
     7c6:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7ca:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7ce:	d8 e0       	ldi	r29, 0x08	; 8
     7d0:	c0 e0       	ldi	r28, 0x00	; 0
     7d2:	cc 0f       	add	r28, r28
     7d4:	81 e0       	ldi	r24, 0x01	; 1
     7d6:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7da:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7de:	30 99       	sbic	0x06, 0	; 6
     7e0:	c1 60       	ori	r28, 0x01	; 1
     7e2:	80 e0       	ldi	r24, 0x00	; 0
     7e4:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     7e8:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7ec:	d1 50       	subi	r29, 0x01	; 1
     7ee:	89 f7       	brne	.-30     	; 0x7d2 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x18>
     7f0:	11 23       	and	r17, r17
     7f2:	a9 f0       	breq	.+42     	; 0x81e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x64>
     7f4:	38 9a       	sbi	0x07, 0	; 7
     7f6:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     7fa:	81 e0       	ldi	r24, 0x01	; 1
     7fc:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     800:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     804:	80 e0       	ldi	r24, 0x00	; 0
     806:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     80a:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     80e:	38 98       	cbi	0x07, 0	; 7
     810:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.6>
     814:	8c 2f       	mov	r24, r28
     816:	df 91       	pop	r29
     818:	cf 91       	pop	r28
     81a:	1f 91       	pop	r17
     81c:	08 95       	ret
     81e:	38 98       	cbi	0x07, 0	; 7
     820:	ea cf       	rjmp	.-44     	; 0x7f6 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x3c>

00000822 <main>:
     822:	cf 93       	push	r28
     824:	df 93       	push	r29
     826:	cd b7       	in	r28, 0x3d	; 61
     828:	de b7       	in	r29, 0x3e	; 62
     82a:	68 97       	sbiw	r28, 0x18	; 24
     82c:	0f b6       	in	r0, 0x3f	; 63
     82e:	f8 94       	cli
     830:	de bf       	out	0x3e, r29	; 62
     832:	0f be       	out	0x3f, r0	; 63
     834:	cd bf       	out	0x3d, r28	; 61
     836:	82 e5       	ldi	r24, 0x52	; 82
     838:	91 e0       	ldi	r25, 0x01	; 1
     83a:	9a 83       	std	Y+2, r25	; 0x02
     83c:	89 83       	std	Y+1, r24	; 0x01
     83e:	8a e3       	ldi	r24, 0x3A	; 58
     840:	91 e0       	ldi	r25, 0x01	; 1
     842:	9c 83       	std	Y+4, r25	; 0x04
     844:	8b 83       	std	Y+3, r24	; 0x03
     846:	38 98       	cbi	0x07, 0	; 7
     848:	81 e0       	ldi	r24, 0x01	; 1
     84a:	0e 94 84 03 	call	0x708	; 0x708 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     84e:	40 98       	cbi	0x08, 0	; 8
     850:	45 98       	cbi	0x08, 5	; 8
     852:	ce 01       	movw	r24, r28
     854:	07 96       	adiw	r24, 0x07	; 7
     856:	0e 94 5e 04 	call	0x8bc	; 0x8bc <_ZN8CVL53L0XC1Ev>
     85a:	be 01       	movw	r22, r28
     85c:	6d 5f       	subi	r22, 0xFD	; 253
     85e:	7f 4f       	sbci	r23, 0xFF	; 255
     860:	ce 01       	movw	r24, r28
     862:	07 96       	adiw	r24, 0x07	; 7
     864:	0e 94 da 05 	call	0xbb4	; 0xbb4 <_ZN8CVL53L0X4initEP14CI2C_Interface>
     868:	8c 01       	movw	r16, r24
     86a:	67 e1       	ldi	r22, 0x17	; 23
     86c:	71 e0       	ldi	r23, 0x01	; 1
     86e:	8d e9       	ldi	r24, 0x9D	; 157
     870:	91 e0       	ldi	r25, 0x01	; 1
     872:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     876:	a8 01       	movw	r20, r16
     878:	11 0f       	add	r17, r17
     87a:	66 0b       	sbc	r22, r22
     87c:	77 0b       	sbc	r23, r23
     87e:	8d e9       	ldi	r24, 0x9D	; 157
     880:	91 e0       	ldi	r25, 0x01	; 1
     882:	0e 94 34 01 	call	0x268	; 0x268 <_ZN9CTerminal4putiEl>
     886:	64 e3       	ldi	r22, 0x34	; 52
     888:	71 e0       	ldi	r23, 0x01	; 1
     88a:	8d e9       	ldi	r24, 0x9D	; 157
     88c:	91 e0       	ldi	r25, 0x01	; 1
     88e:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     892:	20 e0       	ldi	r18, 0x00	; 0
     894:	44 e6       	ldi	r20, 0x64	; 100
     896:	50 e0       	ldi	r21, 0x00	; 0
     898:	be 01       	movw	r22, r28
     89a:	6f 5f       	subi	r22, 0xFF	; 255
     89c:	7f 4f       	sbci	r23, 0xFF	; 255
     89e:	88 e5       	ldi	r24, 0x58	; 88
     8a0:	91 e0       	ldi	r25, 0x01	; 1
     8a2:	0e 94 80 00 	call	0x100	; 0x100 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>
     8a6:	64 e2       	ldi	r22, 0x24	; 36
     8a8:	71 e0       	ldi	r23, 0x01	; 1
     8aa:	8d e9       	ldi	r24, 0x9D	; 157
     8ac:	91 e0       	ldi	r25, 0x01	; 1
     8ae:	0e 94 22 01 	call	0x244	; 0x244 <_ZN9CTerminal4putsEPKc>
     8b2:	88 e5       	ldi	r24, 0x58	; 88
     8b4:	91 e0       	ldi	r25, 0x01	; 1
     8b6:	0e 94 a3 00 	call	0x146	; 0x146 <_ZN8CRTTimer4mainEv>
     8ba:	fb cf       	rjmp	.-10     	; 0x8b2 <main+0x90>

000008bc <_ZN8CVL53L0XC1Ev>:
     8bc:	08 95       	ret

000008be <_ZN8CVL53L0XD1Ev>:
     8be:	08 95       	ret

000008c0 <_ZN8CVL53L0X4readEv>:
     8c0:	0f 93       	push	r16
     8c2:	1f 93       	push	r17
     8c4:	cf 93       	push	r28
     8c6:	df 93       	push	r29
     8c8:	ec 01       	movw	r28, r24
     8ca:	88 89       	ldd	r24, Y+16	; 0x10
     8cc:	99 89       	ldd	r25, Y+17	; 0x11
     8ce:	dc 01       	movw	r26, r24
     8d0:	ed 91       	ld	r30, X+
     8d2:	fc 91       	ld	r31, X
     8d4:	00 84       	ldd	r0, Z+8	; 0x08
     8d6:	f1 85       	ldd	r31, Z+9	; 0x09
     8d8:	e0 2d       	mov	r30, r0
     8da:	21 e0       	ldi	r18, 0x01	; 1
     8dc:	4b e0       	ldi	r20, 0x0B	; 11
     8de:	62 e5       	ldi	r22, 0x52	; 82
     8e0:	09 95       	icall
     8e2:	88 89       	ldd	r24, Y+16	; 0x10
     8e4:	99 89       	ldd	r25, Y+17	; 0x11
     8e6:	9e 01       	movw	r18, r28
     8e8:	2e 5f       	subi	r18, 0xFE	; 254
     8ea:	3f 4f       	sbci	r19, 0xFF	; 255
     8ec:	dc 01       	movw	r26, r24
     8ee:	ed 91       	ld	r30, X+
     8f0:	fc 91       	ld	r31, X
     8f2:	02 88       	ldd	r0, Z+18	; 0x12
     8f4:	f3 89       	ldd	r31, Z+19	; 0x13
     8f6:	e0 2d       	mov	r30, r0
     8f8:	0e e0       	ldi	r16, 0x0E	; 14
     8fa:	10 e0       	ldi	r17, 0x00	; 0
     8fc:	44 e1       	ldi	r20, 0x14	; 20
     8fe:	62 e5       	ldi	r22, 0x52	; 82
     900:	09 95       	icall
     902:	2c 85       	ldd	r18, Y+12	; 0x0c
     904:	3d 85       	ldd	r19, Y+13	; 0x0d
     906:	32 27       	eor	r19, r18
     908:	23 27       	eor	r18, r19
     90a:	32 27       	eor	r19, r18
     90c:	c9 01       	movw	r24, r18
     90e:	06 97       	sbiw	r24, 0x06	; 6
     910:	8a 3f       	cpi	r24, 0xFA	; 250
     912:	93 40       	sbci	r25, 0x03	; 3
     914:	b0 f4       	brcc	.+44     	; 0x942 <__stack+0x43>
     916:	88 81       	ld	r24, Y
     918:	99 81       	ldd	r25, Y+1	; 0x01
     91a:	43 e0       	ldi	r20, 0x03	; 3
     91c:	88 0f       	add	r24, r24
     91e:	99 1f       	adc	r25, r25
     920:	4a 95       	dec	r20
     922:	e1 f7       	brne	.-8      	; 0x91c <__stack+0x1d>
     924:	82 0f       	add	r24, r18
     926:	93 1f       	adc	r25, r19
     928:	69 e0       	ldi	r22, 0x09	; 9
     92a:	70 e0       	ldi	r23, 0x00	; 0
     92c:	0e 94 95 07 	call	0xf2a	; 0xf2a <__divmodhi4>
     930:	79 83       	std	Y+1, r23	; 0x01
     932:	68 83       	st	Y, r22
     934:	88 81       	ld	r24, Y
     936:	99 81       	ldd	r25, Y+1	; 0x01
     938:	df 91       	pop	r29
     93a:	cf 91       	pop	r28
     93c:	1f 91       	pop	r17
     93e:	0f 91       	pop	r16
     940:	08 95       	ret
     942:	80 e0       	ldi	r24, 0x00	; 0
     944:	94 e0       	ldi	r25, 0x04	; 4
     946:	99 83       	std	Y+1, r25	; 0x01
     948:	88 83       	st	Y, r24
     94a:	f4 cf       	rjmp	.-24     	; 0x934 <__stack+0x35>

0000094c <_ZN8CVL53L0X11getSPADinfoEPhPb>:
     94c:	af 92       	push	r10
     94e:	bf 92       	push	r11
     950:	cf 92       	push	r12
     952:	df 92       	push	r13
     954:	ef 92       	push	r14
     956:	ff 92       	push	r15
     958:	0f 93       	push	r16
     95a:	1f 93       	push	r17
     95c:	cf 93       	push	r28
     95e:	df 93       	push	r29
     960:	ec 01       	movw	r28, r24
     962:	5b 01       	movw	r10, r22
     964:	8a 01       	movw	r16, r20
     966:	db 01       	movw	r26, r22
     968:	1c 92       	st	X, r1
     96a:	88 89       	ldd	r24, Y+16	; 0x10
     96c:	99 89       	ldd	r25, Y+17	; 0x11
     96e:	dc 01       	movw	r26, r24
     970:	ed 91       	ld	r30, X+
     972:	fc 91       	ld	r31, X
     974:	00 84       	ldd	r0, Z+8	; 0x08
     976:	f1 85       	ldd	r31, Z+9	; 0x09
     978:	e0 2d       	mov	r30, r0
     97a:	21 e0       	ldi	r18, 0x01	; 1
     97c:	40 e8       	ldi	r20, 0x80	; 128
     97e:	62 e5       	ldi	r22, 0x52	; 82
     980:	09 95       	icall
     982:	88 89       	ldd	r24, Y+16	; 0x10
     984:	99 89       	ldd	r25, Y+17	; 0x11
     986:	dc 01       	movw	r26, r24
     988:	ed 91       	ld	r30, X+
     98a:	fc 91       	ld	r31, X
     98c:	00 84       	ldd	r0, Z+8	; 0x08
     98e:	f1 85       	ldd	r31, Z+9	; 0x09
     990:	e0 2d       	mov	r30, r0
     992:	21 e0       	ldi	r18, 0x01	; 1
     994:	4f ef       	ldi	r20, 0xFF	; 255
     996:	62 e5       	ldi	r22, 0x52	; 82
     998:	09 95       	icall
     99a:	88 89       	ldd	r24, Y+16	; 0x10
     99c:	99 89       	ldd	r25, Y+17	; 0x11
     99e:	dc 01       	movw	r26, r24
     9a0:	ed 91       	ld	r30, X+
     9a2:	fc 91       	ld	r31, X
     9a4:	00 84       	ldd	r0, Z+8	; 0x08
     9a6:	f1 85       	ldd	r31, Z+9	; 0x09
     9a8:	e0 2d       	mov	r30, r0
     9aa:	20 e0       	ldi	r18, 0x00	; 0
     9ac:	40 e0       	ldi	r20, 0x00	; 0
     9ae:	62 e5       	ldi	r22, 0x52	; 82
     9b0:	09 95       	icall
     9b2:	88 89       	ldd	r24, Y+16	; 0x10
     9b4:	99 89       	ldd	r25, Y+17	; 0x11
     9b6:	dc 01       	movw	r26, r24
     9b8:	ed 91       	ld	r30, X+
     9ba:	fc 91       	ld	r31, X
     9bc:	00 84       	ldd	r0, Z+8	; 0x08
     9be:	f1 85       	ldd	r31, Z+9	; 0x09
     9c0:	e0 2d       	mov	r30, r0
     9c2:	26 e0       	ldi	r18, 0x06	; 6
     9c4:	4f ef       	ldi	r20, 0xFF	; 255
     9c6:	62 e5       	ldi	r22, 0x52	; 82
     9c8:	09 95       	icall
     9ca:	e8 88       	ldd	r14, Y+16	; 0x10
     9cc:	f9 88       	ldd	r15, Y+17	; 0x11
     9ce:	d7 01       	movw	r26, r14
     9d0:	ed 91       	ld	r30, X+
     9d2:	fc 91       	ld	r31, X
     9d4:	c0 84       	ldd	r12, Z+8	; 0x08
     9d6:	d1 84       	ldd	r13, Z+9	; 0x09
     9d8:	06 84       	ldd	r0, Z+14	; 0x0e
     9da:	f7 85       	ldd	r31, Z+15	; 0x0f
     9dc:	e0 2d       	mov	r30, r0
     9de:	43 e8       	ldi	r20, 0x83	; 131
     9e0:	62 e5       	ldi	r22, 0x52	; 82
     9e2:	c7 01       	movw	r24, r14
     9e4:	09 95       	icall
     9e6:	28 2f       	mov	r18, r24
     9e8:	24 60       	ori	r18, 0x04	; 4
     9ea:	43 e8       	ldi	r20, 0x83	; 131
     9ec:	62 e5       	ldi	r22, 0x52	; 82
     9ee:	c7 01       	movw	r24, r14
     9f0:	f6 01       	movw	r30, r12
     9f2:	09 95       	icall
     9f4:	88 89       	ldd	r24, Y+16	; 0x10
     9f6:	99 89       	ldd	r25, Y+17	; 0x11
     9f8:	dc 01       	movw	r26, r24
     9fa:	ed 91       	ld	r30, X+
     9fc:	fc 91       	ld	r31, X
     9fe:	00 84       	ldd	r0, Z+8	; 0x08
     a00:	f1 85       	ldd	r31, Z+9	; 0x09
     a02:	e0 2d       	mov	r30, r0
     a04:	27 e0       	ldi	r18, 0x07	; 7
     a06:	4f ef       	ldi	r20, 0xFF	; 255
     a08:	62 e5       	ldi	r22, 0x52	; 82
     a0a:	09 95       	icall
     a0c:	88 89       	ldd	r24, Y+16	; 0x10
     a0e:	99 89       	ldd	r25, Y+17	; 0x11
     a10:	dc 01       	movw	r26, r24
     a12:	ed 91       	ld	r30, X+
     a14:	fc 91       	ld	r31, X
     a16:	00 84       	ldd	r0, Z+8	; 0x08
     a18:	f1 85       	ldd	r31, Z+9	; 0x09
     a1a:	e0 2d       	mov	r30, r0
     a1c:	21 e0       	ldi	r18, 0x01	; 1
     a1e:	41 e8       	ldi	r20, 0x81	; 129
     a20:	62 e5       	ldi	r22, 0x52	; 82
     a22:	09 95       	icall
     a24:	88 89       	ldd	r24, Y+16	; 0x10
     a26:	99 89       	ldd	r25, Y+17	; 0x11
     a28:	dc 01       	movw	r26, r24
     a2a:	ed 91       	ld	r30, X+
     a2c:	fc 91       	ld	r31, X
     a2e:	00 84       	ldd	r0, Z+8	; 0x08
     a30:	f1 85       	ldd	r31, Z+9	; 0x09
     a32:	e0 2d       	mov	r30, r0
     a34:	21 e0       	ldi	r18, 0x01	; 1
     a36:	40 e8       	ldi	r20, 0x80	; 128
     a38:	62 e5       	ldi	r22, 0x52	; 82
     a3a:	09 95       	icall
     a3c:	88 89       	ldd	r24, Y+16	; 0x10
     a3e:	99 89       	ldd	r25, Y+17	; 0x11
     a40:	dc 01       	movw	r26, r24
     a42:	ed 91       	ld	r30, X+
     a44:	fc 91       	ld	r31, X
     a46:	00 84       	ldd	r0, Z+8	; 0x08
     a48:	f1 85       	ldd	r31, Z+9	; 0x09
     a4a:	e0 2d       	mov	r30, r0
     a4c:	2b e6       	ldi	r18, 0x6B	; 107
     a4e:	44 e9       	ldi	r20, 0x94	; 148
     a50:	62 e5       	ldi	r22, 0x52	; 82
     a52:	09 95       	icall
     a54:	88 89       	ldd	r24, Y+16	; 0x10
     a56:	99 89       	ldd	r25, Y+17	; 0x11
     a58:	dc 01       	movw	r26, r24
     a5a:	ed 91       	ld	r30, X+
     a5c:	fc 91       	ld	r31, X
     a5e:	00 84       	ldd	r0, Z+8	; 0x08
     a60:	f1 85       	ldd	r31, Z+9	; 0x09
     a62:	e0 2d       	mov	r30, r0
     a64:	20 e0       	ldi	r18, 0x00	; 0
     a66:	43 e8       	ldi	r20, 0x83	; 131
     a68:	62 e5       	ldi	r22, 0x52	; 82
     a6a:	09 95       	icall
     a6c:	81 e4       	ldi	r24, 0x41	; 65
     a6e:	c8 2e       	mov	r12, r24
     a70:	82 e4       	ldi	r24, 0x42	; 66
     a72:	d8 2e       	mov	r13, r24
     a74:	8f e0       	ldi	r24, 0x0F	; 15
     a76:	e8 2e       	mov	r14, r24
     a78:	f1 2c       	mov	r15, r1
     a7a:	88 89       	ldd	r24, Y+16	; 0x10
     a7c:	99 89       	ldd	r25, Y+17	; 0x11
     a7e:	dc 01       	movw	r26, r24
     a80:	ed 91       	ld	r30, X+
     a82:	fc 91       	ld	r31, X
     a84:	06 84       	ldd	r0, Z+14	; 0x0e
     a86:	f7 85       	ldd	r31, Z+15	; 0x0f
     a88:	e0 2d       	mov	r30, r0
     a8a:	43 e8       	ldi	r20, 0x83	; 131
     a8c:	62 e5       	ldi	r22, 0x52	; 82
     a8e:	09 95       	icall
     a90:	81 11       	cpse	r24, r1
     a92:	08 c0       	rjmp	.+16     	; 0xaa4 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x158>
     a94:	b1 e0       	ldi	r27, 0x01	; 1
     a96:	cb 1a       	sub	r12, r27
     a98:	d1 08       	sbc	r13, r1
     a9a:	e1 08       	sbc	r14, r1
     a9c:	f1 08       	sbc	r15, r1
     a9e:	69 f7       	brne	.-38     	; 0xa7a <_ZN8CVL53L0X11getSPADinfoEPhPb+0x12e>
     aa0:	80 e0       	ldi	r24, 0x00	; 0
     aa2:	7d c0       	rjmp	.+250    	; 0xb9e <_ZN8CVL53L0X11getSPADinfoEPhPb+0x252>
     aa4:	88 89       	ldd	r24, Y+16	; 0x10
     aa6:	99 89       	ldd	r25, Y+17	; 0x11
     aa8:	dc 01       	movw	r26, r24
     aaa:	ed 91       	ld	r30, X+
     aac:	fc 91       	ld	r31, X
     aae:	00 84       	ldd	r0, Z+8	; 0x08
     ab0:	f1 85       	ldd	r31, Z+9	; 0x09
     ab2:	e0 2d       	mov	r30, r0
     ab4:	21 e0       	ldi	r18, 0x01	; 1
     ab6:	43 e8       	ldi	r20, 0x83	; 131
     ab8:	62 e5       	ldi	r22, 0x52	; 82
     aba:	09 95       	icall
     abc:	88 89       	ldd	r24, Y+16	; 0x10
     abe:	99 89       	ldd	r25, Y+17	; 0x11
     ac0:	dc 01       	movw	r26, r24
     ac2:	ed 91       	ld	r30, X+
     ac4:	fc 91       	ld	r31, X
     ac6:	06 84       	ldd	r0, Z+14	; 0x0e
     ac8:	f7 85       	ldd	r31, Z+15	; 0x0f
     aca:	e0 2d       	mov	r30, r0
     acc:	42 e9       	ldi	r20, 0x92	; 146
     ace:	62 e5       	ldi	r22, 0x52	; 82
     ad0:	09 95       	icall
     ad2:	98 2f       	mov	r25, r24
     ad4:	9f 77       	andi	r25, 0x7F	; 127
     ad6:	f5 01       	movw	r30, r10
     ad8:	90 83       	st	Z, r25
     ada:	88 1f       	adc	r24, r24
     adc:	88 27       	eor	r24, r24
     ade:	88 1f       	adc	r24, r24
     ae0:	d8 01       	movw	r26, r16
     ae2:	8c 93       	st	X, r24
     ae4:	88 89       	ldd	r24, Y+16	; 0x10
     ae6:	99 89       	ldd	r25, Y+17	; 0x11
     ae8:	dc 01       	movw	r26, r24
     aea:	ed 91       	ld	r30, X+
     aec:	fc 91       	ld	r31, X
     aee:	00 84       	ldd	r0, Z+8	; 0x08
     af0:	f1 85       	ldd	r31, Z+9	; 0x09
     af2:	e0 2d       	mov	r30, r0
     af4:	20 e0       	ldi	r18, 0x00	; 0
     af6:	41 e8       	ldi	r20, 0x81	; 129
     af8:	62 e5       	ldi	r22, 0x52	; 82
     afa:	09 95       	icall
     afc:	88 89       	ldd	r24, Y+16	; 0x10
     afe:	99 89       	ldd	r25, Y+17	; 0x11
     b00:	dc 01       	movw	r26, r24
     b02:	ed 91       	ld	r30, X+
     b04:	fc 91       	ld	r31, X
     b06:	00 84       	ldd	r0, Z+8	; 0x08
     b08:	f1 85       	ldd	r31, Z+9	; 0x09
     b0a:	e0 2d       	mov	r30, r0
     b0c:	26 e0       	ldi	r18, 0x06	; 6
     b0e:	4f ef       	ldi	r20, 0xFF	; 255
     b10:	62 e5       	ldi	r22, 0x52	; 82
     b12:	09 95       	icall
     b14:	08 89       	ldd	r16, Y+16	; 0x10
     b16:	19 89       	ldd	r17, Y+17	; 0x11
     b18:	d8 01       	movw	r26, r16
     b1a:	ed 91       	ld	r30, X+
     b1c:	fc 91       	ld	r31, X
     b1e:	e0 84       	ldd	r14, Z+8	; 0x08
     b20:	f1 84       	ldd	r15, Z+9	; 0x09
     b22:	06 84       	ldd	r0, Z+14	; 0x0e
     b24:	f7 85       	ldd	r31, Z+15	; 0x0f
     b26:	e0 2d       	mov	r30, r0
     b28:	43 e8       	ldi	r20, 0x83	; 131
     b2a:	62 e5       	ldi	r22, 0x52	; 82
     b2c:	c8 01       	movw	r24, r16
     b2e:	09 95       	icall
     b30:	28 2f       	mov	r18, r24
     b32:	43 e8       	ldi	r20, 0x83	; 131
     b34:	62 e5       	ldi	r22, 0x52	; 82
     b36:	c8 01       	movw	r24, r16
     b38:	f7 01       	movw	r30, r14
     b3a:	09 95       	icall
     b3c:	88 89       	ldd	r24, Y+16	; 0x10
     b3e:	99 89       	ldd	r25, Y+17	; 0x11
     b40:	dc 01       	movw	r26, r24
     b42:	ed 91       	ld	r30, X+
     b44:	fc 91       	ld	r31, X
     b46:	00 84       	ldd	r0, Z+8	; 0x08
     b48:	f1 85       	ldd	r31, Z+9	; 0x09
     b4a:	e0 2d       	mov	r30, r0
     b4c:	21 e0       	ldi	r18, 0x01	; 1
     b4e:	4f ef       	ldi	r20, 0xFF	; 255
     b50:	62 e5       	ldi	r22, 0x52	; 82
     b52:	09 95       	icall
     b54:	88 89       	ldd	r24, Y+16	; 0x10
     b56:	99 89       	ldd	r25, Y+17	; 0x11
     b58:	dc 01       	movw	r26, r24
     b5a:	ed 91       	ld	r30, X+
     b5c:	fc 91       	ld	r31, X
     b5e:	00 84       	ldd	r0, Z+8	; 0x08
     b60:	f1 85       	ldd	r31, Z+9	; 0x09
     b62:	e0 2d       	mov	r30, r0
     b64:	21 e0       	ldi	r18, 0x01	; 1
     b66:	40 e0       	ldi	r20, 0x00	; 0
     b68:	62 e5       	ldi	r22, 0x52	; 82
     b6a:	09 95       	icall
     b6c:	88 89       	ldd	r24, Y+16	; 0x10
     b6e:	99 89       	ldd	r25, Y+17	; 0x11
     b70:	dc 01       	movw	r26, r24
     b72:	ed 91       	ld	r30, X+
     b74:	fc 91       	ld	r31, X
     b76:	00 84       	ldd	r0, Z+8	; 0x08
     b78:	f1 85       	ldd	r31, Z+9	; 0x09
     b7a:	e0 2d       	mov	r30, r0
     b7c:	20 e0       	ldi	r18, 0x00	; 0
     b7e:	4f ef       	ldi	r20, 0xFF	; 255
     b80:	62 e5       	ldi	r22, 0x52	; 82
     b82:	09 95       	icall
     b84:	88 89       	ldd	r24, Y+16	; 0x10
     b86:	99 89       	ldd	r25, Y+17	; 0x11
     b88:	dc 01       	movw	r26, r24
     b8a:	ed 91       	ld	r30, X+
     b8c:	fc 91       	ld	r31, X
     b8e:	00 84       	ldd	r0, Z+8	; 0x08
     b90:	f1 85       	ldd	r31, Z+9	; 0x09
     b92:	e0 2d       	mov	r30, r0
     b94:	20 e0       	ldi	r18, 0x00	; 0
     b96:	40 e8       	ldi	r20, 0x80	; 128
     b98:	62 e5       	ldi	r22, 0x52	; 82
     b9a:	09 95       	icall
     b9c:	81 e0       	ldi	r24, 0x01	; 1
     b9e:	df 91       	pop	r29
     ba0:	cf 91       	pop	r28
     ba2:	1f 91       	pop	r17
     ba4:	0f 91       	pop	r16
     ba6:	ff 90       	pop	r15
     ba8:	ef 90       	pop	r14
     baa:	df 90       	pop	r13
     bac:	cf 90       	pop	r12
     bae:	bf 90       	pop	r11
     bb0:	af 90       	pop	r10
     bb2:	08 95       	ret

00000bb4 <_ZN8CVL53L0X4initEP14CI2C_Interface>:
     bb4:	cf 92       	push	r12
     bb6:	df 92       	push	r13
     bb8:	ef 92       	push	r14
     bba:	ff 92       	push	r15
     bbc:	0f 93       	push	r16
     bbe:	1f 93       	push	r17
     bc0:	cf 93       	push	r28
     bc2:	df 93       	push	r29
     bc4:	cd b7       	in	r28, 0x3d	; 61
     bc6:	de b7       	in	r29, 0x3e	; 62
     bc8:	28 97       	sbiw	r28, 0x08	; 8
     bca:	0f b6       	in	r0, 0x3f	; 63
     bcc:	f8 94       	cli
     bce:	de bf       	out	0x3e, r29	; 62
     bd0:	0f be       	out	0x3f, r0	; 63
     bd2:	cd bf       	out	0x3d, r28	; 61
     bd4:	7c 01       	movw	r14, r24
     bd6:	8b 01       	movw	r16, r22
     bd8:	dc 01       	movw	r26, r24
     bda:	51 96       	adiw	r26, 0x11	; 17
     bdc:	7c 93       	st	X, r23
     bde:	6e 93       	st	-X, r22
     be0:	50 97       	sbiw	r26, 0x10	; 16
     be2:	80 e0       	ldi	r24, 0x00	; 0
     be4:	90 e2       	ldi	r25, 0x20	; 32
     be6:	8d 93       	st	X+, r24
     be8:	9c 93       	st	X, r25
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
     c12:	50 96       	adiw	r26, 0x10	; 16
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
     c2c:	09 f0       	breq	.+2      	; 0xc30 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x7c>
     c2e:	7a c1       	rjmp	.+756    	; 0xf24 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x370>
     c30:	f7 01       	movw	r30, r14
     c32:	80 89       	ldd	r24, Z+16	; 0x10
     c34:	91 89       	ldd	r25, Z+17	; 0x11
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
     c58:	11 f0       	breq	.+4      	; 0xc5e <_ZN8CVL53L0X4initEP14CI2C_Interface+0xaa>
     c5a:	00 00       	nop
     c5c:	fa cf       	rjmp	.-12     	; 0xc52 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x9e>
     c5e:	f7 01       	movw	r30, r14
     c60:	80 89       	ldd	r24, Z+16	; 0x10
     c62:	91 89       	ldd	r25, Z+17	; 0x11
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
     c7a:	80 89       	ldd	r24, Z+16	; 0x10
     c7c:	91 89       	ldd	r25, Z+17	; 0x11
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
     c94:	80 89       	ldd	r24, Z+16	; 0x10
     c96:	91 89       	ldd	r25, Z+17	; 0x11
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
     cae:	80 89       	ldd	r24, Z+16	; 0x10
     cb0:	91 89       	ldd	r25, Z+17	; 0x11
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
     cc8:	80 89       	ldd	r24, Z+16	; 0x10
     cca:	91 89       	ldd	r25, Z+17	; 0x11
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
     ce0:	80 89       	ldd	r24, Z+16	; 0x10
     ce2:	91 89       	ldd	r25, Z+17	; 0x11
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
     cfa:	80 89       	ldd	r24, Z+16	; 0x10
     cfc:	91 89       	ldd	r25, Z+17	; 0x11
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
     d14:	80 89       	ldd	r24, Z+16	; 0x10
     d16:	91 89       	ldd	r25, Z+17	; 0x11
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
     d3c:	0e 94 a6 04 	call	0x94c	; 0x94c <_ZN8CVL53L0X11getSPADinfoEPhPb>
     d40:	f7 01       	movw	r30, r14
     d42:	80 89       	ldd	r24, Z+16	; 0x10
     d44:	91 89       	ldd	r25, Z+17	; 0x11
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
     d64:	80 89       	ldd	r24, Z+16	; 0x10
     d66:	91 89       	ldd	r25, Z+17	; 0x11
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
     d7e:	80 89       	ldd	r24, Z+16	; 0x10
     d80:	91 89       	ldd	r25, Z+17	; 0x11
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
     d98:	80 89       	ldd	r24, Z+16	; 0x10
     d9a:	91 89       	ldd	r25, Z+17	; 0x11
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
     db2:	80 89       	ldd	r24, Z+16	; 0x10
     db4:	91 89       	ldd	r25, Z+17	; 0x11
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
     dcc:	80 89       	ldd	r24, Z+16	; 0x10
     dce:	91 89       	ldd	r25, Z+17	; 0x11
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
     dea:	01 c0       	rjmp	.+2      	; 0xdee <_ZN8CVL53L0X4initEP14CI2C_Interface+0x23a>
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
     e18:	10 f0       	brcs	.+4      	; 0xe1e <_ZN8CVL53L0X4initEP14CI2C_Interface+0x26a>
     e1a:	b9 13       	cpse	r27, r25
     e1c:	79 c0       	rjmp	.+242    	; 0xf10 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x35c>
     e1e:	e1 e0       	ldi	r30, 0x01	; 1
     e20:	f0 e0       	ldi	r31, 0x00	; 0
     e22:	ec 0f       	add	r30, r28
     e24:	fd 1f       	adc	r31, r29
     e26:	4e 0f       	add	r20, r30
     e28:	5f 1f       	adc	r21, r31
     e2a:	f8 01       	movw	r30, r16
     e2c:	02 c0       	rjmp	.+4      	; 0xe32 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x27e>
     e2e:	ee 0f       	add	r30, r30
     e30:	ff 1f       	adc	r31, r31
     e32:	6a 95       	dec	r22
     e34:	e2 f7       	brpl	.-8      	; 0xe2e <_ZN8CVL53L0X4initEP14CI2C_Interface+0x27a>
     e36:	bf 01       	movw	r22, r30
     e38:	60 95       	com	r22
     e3a:	26 23       	and	r18, r22
     e3c:	fa 01       	movw	r30, r20
     e3e:	20 83       	st	Z, r18
     e40:	8f 5f       	subi	r24, 0xFF	; 255
     e42:	80 33       	cpi	r24, 0x30	; 48
     e44:	c9 f6       	brne	.-78     	; 0xdf8 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x244>
     e46:	d7 01       	movw	r26, r14
     e48:	50 96       	adiw	r26, 0x10	; 16
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
     e6c:	80 89       	ldd	r24, Z+16	; 0x10
     e6e:	91 89       	ldd	r25, Z+17	; 0x11
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
     e86:	80 89       	ldd	r24, Z+16	; 0x10
     e88:	91 89       	ldd	r25, Z+17	; 0x11
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
     ea0:	80 89       	ldd	r24, Z+16	; 0x10
     ea2:	91 89       	ldd	r25, Z+17	; 0x11
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
     ebc:	80 89       	ldd	r24, Z+16	; 0x10
     ebe:	91 89       	ldd	r25, Z+17	; 0x11
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
     ed6:	80 89       	ldd	r24, Z+16	; 0x10
     ed8:	91 89       	ldd	r25, Z+17	; 0x11
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
     f12:	02 c0       	rjmp	.+4      	; 0xf18 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x364>
     f14:	35 95       	asr	r19
     f16:	27 95       	ror	r18
     f18:	6a 95       	dec	r22
     f1a:	e2 f7       	brpl	.-8      	; 0xf14 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x360>
     f1c:	20 ff       	sbrs	r18, 0
     f1e:	90 cf       	rjmp	.-224    	; 0xe40 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28c>
     f20:	9f 5f       	subi	r25, 0xFF	; 255
     f22:	8e cf       	rjmp	.-228    	; 0xe40 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28c>
     f24:	8e ef       	ldi	r24, 0xFE	; 254
     f26:	9f ef       	ldi	r25, 0xFF	; 255
     f28:	e4 cf       	rjmp	.-56     	; 0xef2 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x33e>

00000f2a <__divmodhi4>:
     f2a:	97 fb       	bst	r25, 7
     f2c:	07 2e       	mov	r0, r23
     f2e:	16 f4       	brtc	.+4      	; 0xf34 <__divmodhi4+0xa>
     f30:	00 94       	com	r0
     f32:	07 d0       	rcall	.+14     	; 0xf42 <__divmodhi4_neg1>
     f34:	77 fd       	sbrc	r23, 7
     f36:	09 d0       	rcall	.+18     	; 0xf4a <__divmodhi4_neg2>
     f38:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <__udivmodhi4>
     f3c:	07 fc       	sbrc	r0, 7
     f3e:	05 d0       	rcall	.+10     	; 0xf4a <__divmodhi4_neg2>
     f40:	3e f4       	brtc	.+14     	; 0xf50 <__divmodhi4_exit>

00000f42 <__divmodhi4_neg1>:
     f42:	90 95       	com	r25
     f44:	81 95       	neg	r24
     f46:	9f 4f       	sbci	r25, 0xFF	; 255
     f48:	08 95       	ret

00000f4a <__divmodhi4_neg2>:
     f4a:	70 95       	com	r23
     f4c:	61 95       	neg	r22
     f4e:	7f 4f       	sbci	r23, 0xFF	; 255

00000f50 <__divmodhi4_exit>:
     f50:	08 95       	ret

00000f52 <__udivmodsi4>:
     f52:	a1 e2       	ldi	r26, 0x21	; 33
     f54:	1a 2e       	mov	r1, r26
     f56:	aa 1b       	sub	r26, r26
     f58:	bb 1b       	sub	r27, r27
     f5a:	fd 01       	movw	r30, r26
     f5c:	0d c0       	rjmp	.+26     	; 0xf78 <__udivmodsi4_ep>

00000f5e <__udivmodsi4_loop>:
     f5e:	aa 1f       	adc	r26, r26
     f60:	bb 1f       	adc	r27, r27
     f62:	ee 1f       	adc	r30, r30
     f64:	ff 1f       	adc	r31, r31
     f66:	a2 17       	cp	r26, r18
     f68:	b3 07       	cpc	r27, r19
     f6a:	e4 07       	cpc	r30, r20
     f6c:	f5 07       	cpc	r31, r21
     f6e:	20 f0       	brcs	.+8      	; 0xf78 <__udivmodsi4_ep>
     f70:	a2 1b       	sub	r26, r18
     f72:	b3 0b       	sbc	r27, r19
     f74:	e4 0b       	sbc	r30, r20
     f76:	f5 0b       	sbc	r31, r21

00000f78 <__udivmodsi4_ep>:
     f78:	66 1f       	adc	r22, r22
     f7a:	77 1f       	adc	r23, r23
     f7c:	88 1f       	adc	r24, r24
     f7e:	99 1f       	adc	r25, r25
     f80:	1a 94       	dec	r1
     f82:	69 f7       	brne	.-38     	; 0xf5e <__udivmodsi4_loop>
     f84:	60 95       	com	r22
     f86:	70 95       	com	r23
     f88:	80 95       	com	r24
     f8a:	90 95       	com	r25
     f8c:	9b 01       	movw	r18, r22
     f8e:	ac 01       	movw	r20, r24
     f90:	bd 01       	movw	r22, r26
     f92:	cf 01       	movw	r24, r30
     f94:	08 95       	ret

00000f96 <__divmodsi4>:
     f96:	05 2e       	mov	r0, r21
     f98:	97 fb       	bst	r25, 7
     f9a:	1e f4       	brtc	.+6      	; 0xfa2 <__divmodsi4+0xc>
     f9c:	00 94       	com	r0
     f9e:	0e 94 e2 07 	call	0xfc4	; 0xfc4 <__negsi2>
     fa2:	57 fd       	sbrc	r21, 7
     fa4:	07 d0       	rcall	.+14     	; 0xfb4 <__divmodsi4_neg2>
     fa6:	0e 94 a9 07 	call	0xf52	; 0xf52 <__udivmodsi4>
     faa:	07 fc       	sbrc	r0, 7
     fac:	03 d0       	rcall	.+6      	; 0xfb4 <__divmodsi4_neg2>
     fae:	4e f4       	brtc	.+18     	; 0xfc2 <__divmodsi4_exit>
     fb0:	0c 94 e2 07 	jmp	0xfc4	; 0xfc4 <__negsi2>

00000fb4 <__divmodsi4_neg2>:
     fb4:	50 95       	com	r21
     fb6:	40 95       	com	r20
     fb8:	30 95       	com	r19
     fba:	21 95       	neg	r18
     fbc:	3f 4f       	sbci	r19, 0xFF	; 255
     fbe:	4f 4f       	sbci	r20, 0xFF	; 255
     fc0:	5f 4f       	sbci	r21, 0xFF	; 255

00000fc2 <__divmodsi4_exit>:
     fc2:	08 95       	ret

00000fc4 <__negsi2>:
     fc4:	90 95       	com	r25
     fc6:	80 95       	com	r24
     fc8:	70 95       	com	r23
     fca:	61 95       	neg	r22
     fcc:	7f 4f       	sbci	r23, 0xFF	; 255
     fce:	8f 4f       	sbci	r24, 0xFF	; 255
     fd0:	9f 4f       	sbci	r25, 0xFF	; 255
     fd2:	08 95       	ret

00000fd4 <__udivmodhi4>:
     fd4:	aa 1b       	sub	r26, r26
     fd6:	bb 1b       	sub	r27, r27
     fd8:	51 e1       	ldi	r21, 0x11	; 17
     fda:	07 c0       	rjmp	.+14     	; 0xfea <__udivmodhi4_ep>

00000fdc <__udivmodhi4_loop>:
     fdc:	aa 1f       	adc	r26, r26
     fde:	bb 1f       	adc	r27, r27
     fe0:	a6 17       	cp	r26, r22
     fe2:	b7 07       	cpc	r27, r23
     fe4:	10 f0       	brcs	.+4      	; 0xfea <__udivmodhi4_ep>
     fe6:	a6 1b       	sub	r26, r22
     fe8:	b7 0b       	sbc	r27, r23

00000fea <__udivmodhi4_ep>:
     fea:	88 1f       	adc	r24, r24
     fec:	99 1f       	adc	r25, r25
     fee:	5a 95       	dec	r21
     ff0:	a9 f7       	brne	.-22     	; 0xfdc <__udivmodhi4_loop>
     ff2:	80 95       	com	r24
     ff4:	90 95       	com	r25
     ff6:	bc 01       	movw	r22, r24
     ff8:	cd 01       	movw	r24, r26
     ffa:	08 95       	ret

00000ffc <__tablejump2__>:
     ffc:	ee 0f       	add	r30, r30
     ffe:	ff 1f       	adc	r31, r31
    1000:	05 90       	lpm	r0, Z+
    1002:	f4 91       	lpm	r31, Z
    1004:	e0 2d       	mov	r30, r0
    1006:	09 94       	ijmp

00001008 <malloc>:
    1008:	0f 93       	push	r16
    100a:	1f 93       	push	r17
    100c:	cf 93       	push	r28
    100e:	df 93       	push	r29
    1010:	82 30       	cpi	r24, 0x02	; 2
    1012:	91 05       	cpc	r25, r1
    1014:	10 f4       	brcc	.+4      	; 0x101a <malloc+0x12>
    1016:	82 e0       	ldi	r24, 0x02	; 2
    1018:	90 e0       	ldi	r25, 0x00	; 0
    101a:	e0 91 a0 01 	lds	r30, 0x01A0	; 0x8001a0 <__flp>
    101e:	f0 91 a1 01 	lds	r31, 0x01A1	; 0x8001a1 <__flp+0x1>
    1022:	30 e0       	ldi	r19, 0x00	; 0
    1024:	20 e0       	ldi	r18, 0x00	; 0
    1026:	b0 e0       	ldi	r27, 0x00	; 0
    1028:	a0 e0       	ldi	r26, 0x00	; 0
    102a:	30 97       	sbiw	r30, 0x00	; 0
    102c:	99 f4       	brne	.+38     	; 0x1054 <malloc+0x4c>
    102e:	21 15       	cp	r18, r1
    1030:	31 05       	cpc	r19, r1
    1032:	09 f4       	brne	.+2      	; 0x1036 <malloc+0x2e>
    1034:	4a c0       	rjmp	.+148    	; 0x10ca <malloc+0xc2>
    1036:	28 1b       	sub	r18, r24
    1038:	39 0b       	sbc	r19, r25
    103a:	24 30       	cpi	r18, 0x04	; 4
    103c:	31 05       	cpc	r19, r1
    103e:	d8 f5       	brcc	.+118    	; 0x10b6 <malloc+0xae>
    1040:	8a 81       	ldd	r24, Y+2	; 0x02
    1042:	9b 81       	ldd	r25, Y+3	; 0x03
    1044:	61 15       	cp	r22, r1
    1046:	71 05       	cpc	r23, r1
    1048:	89 f1       	breq	.+98     	; 0x10ac <malloc+0xa4>
    104a:	fb 01       	movw	r30, r22
    104c:	93 83       	std	Z+3, r25	; 0x03
    104e:	82 83       	std	Z+2, r24	; 0x02
    1050:	fe 01       	movw	r30, r28
    1052:	11 c0       	rjmp	.+34     	; 0x1076 <malloc+0x6e>
    1054:	40 81       	ld	r20, Z
    1056:	51 81       	ldd	r21, Z+1	; 0x01
    1058:	02 81       	ldd	r16, Z+2	; 0x02
    105a:	13 81       	ldd	r17, Z+3	; 0x03
    105c:	48 17       	cp	r20, r24
    105e:	59 07       	cpc	r21, r25
    1060:	e0 f0       	brcs	.+56     	; 0x109a <malloc+0x92>
    1062:	48 17       	cp	r20, r24
    1064:	59 07       	cpc	r21, r25
    1066:	99 f4       	brne	.+38     	; 0x108e <malloc+0x86>
    1068:	10 97       	sbiw	r26, 0x00	; 0
    106a:	61 f0       	breq	.+24     	; 0x1084 <malloc+0x7c>
    106c:	12 96       	adiw	r26, 0x02	; 2
    106e:	0c 93       	st	X, r16
    1070:	12 97       	sbiw	r26, 0x02	; 2
    1072:	13 96       	adiw	r26, 0x03	; 3
    1074:	1c 93       	st	X, r17
    1076:	32 96       	adiw	r30, 0x02	; 2
    1078:	cf 01       	movw	r24, r30
    107a:	df 91       	pop	r29
    107c:	cf 91       	pop	r28
    107e:	1f 91       	pop	r17
    1080:	0f 91       	pop	r16
    1082:	08 95       	ret
    1084:	00 93 a0 01 	sts	0x01A0, r16	; 0x8001a0 <__flp>
    1088:	10 93 a1 01 	sts	0x01A1, r17	; 0x8001a1 <__flp+0x1>
    108c:	f4 cf       	rjmp	.-24     	; 0x1076 <malloc+0x6e>
    108e:	21 15       	cp	r18, r1
    1090:	31 05       	cpc	r19, r1
    1092:	51 f0       	breq	.+20     	; 0x10a8 <malloc+0xa0>
    1094:	42 17       	cp	r20, r18
    1096:	53 07       	cpc	r21, r19
    1098:	38 f0       	brcs	.+14     	; 0x10a8 <malloc+0xa0>
    109a:	a9 01       	movw	r20, r18
    109c:	db 01       	movw	r26, r22
    109e:	9a 01       	movw	r18, r20
    10a0:	bd 01       	movw	r22, r26
    10a2:	df 01       	movw	r26, r30
    10a4:	f8 01       	movw	r30, r16
    10a6:	c1 cf       	rjmp	.-126    	; 0x102a <malloc+0x22>
    10a8:	ef 01       	movw	r28, r30
    10aa:	f9 cf       	rjmp	.-14     	; 0x109e <malloc+0x96>
    10ac:	90 93 a1 01 	sts	0x01A1, r25	; 0x8001a1 <__flp+0x1>
    10b0:	80 93 a0 01 	sts	0x01A0, r24	; 0x8001a0 <__flp>
    10b4:	cd cf       	rjmp	.-102    	; 0x1050 <malloc+0x48>
    10b6:	fe 01       	movw	r30, r28
    10b8:	e2 0f       	add	r30, r18
    10ba:	f3 1f       	adc	r31, r19
    10bc:	81 93       	st	Z+, r24
    10be:	91 93       	st	Z+, r25
    10c0:	22 50       	subi	r18, 0x02	; 2
    10c2:	31 09       	sbc	r19, r1
    10c4:	39 83       	std	Y+1, r19	; 0x01
    10c6:	28 83       	st	Y, r18
    10c8:	d7 cf       	rjmp	.-82     	; 0x1078 <malloc+0x70>
    10ca:	20 91 9e 01 	lds	r18, 0x019E	; 0x80019e <__brkval>
    10ce:	30 91 9f 01 	lds	r19, 0x019F	; 0x80019f <__brkval+0x1>
    10d2:	23 2b       	or	r18, r19
    10d4:	41 f4       	brne	.+16     	; 0x10e6 <malloc+0xde>
    10d6:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
    10da:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
    10de:	30 93 9f 01 	sts	0x019F, r19	; 0x80019f <__brkval+0x1>
    10e2:	20 93 9e 01 	sts	0x019E, r18	; 0x80019e <__brkval>
    10e6:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__malloc_heap_end>
    10ea:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__malloc_heap_end+0x1>
    10ee:	21 15       	cp	r18, r1
    10f0:	31 05       	cpc	r19, r1
    10f2:	41 f4       	brne	.+16     	; 0x1104 <malloc+0xfc>
    10f4:	2d b7       	in	r18, 0x3d	; 61
    10f6:	3e b7       	in	r19, 0x3e	; 62
    10f8:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
    10fc:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
    1100:	24 1b       	sub	r18, r20
    1102:	35 0b       	sbc	r19, r21
    1104:	e0 91 9e 01 	lds	r30, 0x019E	; 0x80019e <__brkval>
    1108:	f0 91 9f 01 	lds	r31, 0x019F	; 0x80019f <__brkval+0x1>
    110c:	e2 17       	cp	r30, r18
    110e:	f3 07       	cpc	r31, r19
    1110:	a0 f4       	brcc	.+40     	; 0x113a <malloc+0x132>
    1112:	2e 1b       	sub	r18, r30
    1114:	3f 0b       	sbc	r19, r31
    1116:	28 17       	cp	r18, r24
    1118:	39 07       	cpc	r19, r25
    111a:	78 f0       	brcs	.+30     	; 0x113a <malloc+0x132>
    111c:	ac 01       	movw	r20, r24
    111e:	4e 5f       	subi	r20, 0xFE	; 254
    1120:	5f 4f       	sbci	r21, 0xFF	; 255
    1122:	24 17       	cp	r18, r20
    1124:	35 07       	cpc	r19, r21
    1126:	48 f0       	brcs	.+18     	; 0x113a <malloc+0x132>
    1128:	4e 0f       	add	r20, r30
    112a:	5f 1f       	adc	r21, r31
    112c:	50 93 9f 01 	sts	0x019F, r21	; 0x80019f <__brkval+0x1>
    1130:	40 93 9e 01 	sts	0x019E, r20	; 0x80019e <__brkval>
    1134:	81 93       	st	Z+, r24
    1136:	91 93       	st	Z+, r25
    1138:	9f cf       	rjmp	.-194    	; 0x1078 <malloc+0x70>
    113a:	f0 e0       	ldi	r31, 0x00	; 0
    113c:	e0 e0       	ldi	r30, 0x00	; 0
    113e:	9c cf       	rjmp	.-200    	; 0x1078 <malloc+0x70>

00001140 <free>:
    1140:	cf 93       	push	r28
    1142:	df 93       	push	r29
    1144:	00 97       	sbiw	r24, 0x00	; 0
    1146:	e9 f0       	breq	.+58     	; 0x1182 <free+0x42>
    1148:	fc 01       	movw	r30, r24
    114a:	32 97       	sbiw	r30, 0x02	; 2
    114c:	13 82       	std	Z+3, r1	; 0x03
    114e:	12 82       	std	Z+2, r1	; 0x02
    1150:	a0 91 a0 01 	lds	r26, 0x01A0	; 0x8001a0 <__flp>
    1154:	b0 91 a1 01 	lds	r27, 0x01A1	; 0x8001a1 <__flp+0x1>
    1158:	ed 01       	movw	r28, r26
    115a:	30 e0       	ldi	r19, 0x00	; 0
    115c:	20 e0       	ldi	r18, 0x00	; 0
    115e:	10 97       	sbiw	r26, 0x00	; 0
    1160:	a1 f4       	brne	.+40     	; 0x118a <free+0x4a>
    1162:	20 81       	ld	r18, Z
    1164:	31 81       	ldd	r19, Z+1	; 0x01
    1166:	82 0f       	add	r24, r18
    1168:	93 1f       	adc	r25, r19
    116a:	20 91 9e 01 	lds	r18, 0x019E	; 0x80019e <__brkval>
    116e:	30 91 9f 01 	lds	r19, 0x019F	; 0x80019f <__brkval+0x1>
    1172:	28 17       	cp	r18, r24
    1174:	39 07       	cpc	r19, r25
    1176:	09 f0       	breq	.+2      	; 0x117a <free+0x3a>
    1178:	61 c0       	rjmp	.+194    	; 0x123c <free+0xfc>
    117a:	f0 93 9f 01 	sts	0x019F, r31	; 0x80019f <__brkval+0x1>
    117e:	e0 93 9e 01 	sts	0x019E, r30	; 0x80019e <__brkval>
    1182:	df 91       	pop	r29
    1184:	cf 91       	pop	r28
    1186:	08 95       	ret
    1188:	ea 01       	movw	r28, r20
    118a:	ce 17       	cp	r28, r30
    118c:	df 07       	cpc	r29, r31
    118e:	e8 f5       	brcc	.+122    	; 0x120a <free+0xca>
    1190:	4a 81       	ldd	r20, Y+2	; 0x02
    1192:	5b 81       	ldd	r21, Y+3	; 0x03
    1194:	9e 01       	movw	r18, r28
    1196:	41 15       	cp	r20, r1
    1198:	51 05       	cpc	r21, r1
    119a:	b1 f7       	brne	.-20     	; 0x1188 <free+0x48>
    119c:	e9 01       	movw	r28, r18
    119e:	fb 83       	std	Y+3, r31	; 0x03
    11a0:	ea 83       	std	Y+2, r30	; 0x02
    11a2:	49 91       	ld	r20, Y+
    11a4:	59 91       	ld	r21, Y+
    11a6:	c4 0f       	add	r28, r20
    11a8:	d5 1f       	adc	r29, r21
    11aa:	ec 17       	cp	r30, r28
    11ac:	fd 07       	cpc	r31, r29
    11ae:	61 f4       	brne	.+24     	; 0x11c8 <free+0x88>
    11b0:	80 81       	ld	r24, Z
    11b2:	91 81       	ldd	r25, Z+1	; 0x01
    11b4:	02 96       	adiw	r24, 0x02	; 2
    11b6:	84 0f       	add	r24, r20
    11b8:	95 1f       	adc	r25, r21
    11ba:	e9 01       	movw	r28, r18
    11bc:	99 83       	std	Y+1, r25	; 0x01
    11be:	88 83       	st	Y, r24
    11c0:	82 81       	ldd	r24, Z+2	; 0x02
    11c2:	93 81       	ldd	r25, Z+3	; 0x03
    11c4:	9b 83       	std	Y+3, r25	; 0x03
    11c6:	8a 83       	std	Y+2, r24	; 0x02
    11c8:	f0 e0       	ldi	r31, 0x00	; 0
    11ca:	e0 e0       	ldi	r30, 0x00	; 0
    11cc:	12 96       	adiw	r26, 0x02	; 2
    11ce:	8d 91       	ld	r24, X+
    11d0:	9c 91       	ld	r25, X
    11d2:	13 97       	sbiw	r26, 0x03	; 3
    11d4:	00 97       	sbiw	r24, 0x00	; 0
    11d6:	b9 f5       	brne	.+110    	; 0x1246 <free+0x106>
    11d8:	2d 91       	ld	r18, X+
    11da:	3c 91       	ld	r19, X
    11dc:	11 97       	sbiw	r26, 0x01	; 1
    11de:	cd 01       	movw	r24, r26
    11e0:	02 96       	adiw	r24, 0x02	; 2
    11e2:	82 0f       	add	r24, r18
    11e4:	93 1f       	adc	r25, r19
    11e6:	20 91 9e 01 	lds	r18, 0x019E	; 0x80019e <__brkval>
    11ea:	30 91 9f 01 	lds	r19, 0x019F	; 0x80019f <__brkval+0x1>
    11ee:	28 17       	cp	r18, r24
    11f0:	39 07       	cpc	r19, r25
    11f2:	39 f6       	brne	.-114    	; 0x1182 <free+0x42>
    11f4:	30 97       	sbiw	r30, 0x00	; 0
    11f6:	51 f5       	brne	.+84     	; 0x124c <free+0x10c>
    11f8:	10 92 a1 01 	sts	0x01A1, r1	; 0x8001a1 <__flp+0x1>
    11fc:	10 92 a0 01 	sts	0x01A0, r1	; 0x8001a0 <__flp>
    1200:	b0 93 9f 01 	sts	0x019F, r27	; 0x80019f <__brkval+0x1>
    1204:	a0 93 9e 01 	sts	0x019E, r26	; 0x80019e <__brkval>
    1208:	bc cf       	rjmp	.-136    	; 0x1182 <free+0x42>
    120a:	d3 83       	std	Z+3, r29	; 0x03
    120c:	c2 83       	std	Z+2, r28	; 0x02
    120e:	40 81       	ld	r20, Z
    1210:	51 81       	ldd	r21, Z+1	; 0x01
    1212:	84 0f       	add	r24, r20
    1214:	95 1f       	adc	r25, r21
    1216:	c8 17       	cp	r28, r24
    1218:	d9 07       	cpc	r29, r25
    121a:	61 f4       	brne	.+24     	; 0x1234 <free+0xf4>
    121c:	4e 5f       	subi	r20, 0xFE	; 254
    121e:	5f 4f       	sbci	r21, 0xFF	; 255
    1220:	88 81       	ld	r24, Y
    1222:	99 81       	ldd	r25, Y+1	; 0x01
    1224:	48 0f       	add	r20, r24
    1226:	59 1f       	adc	r21, r25
    1228:	51 83       	std	Z+1, r21	; 0x01
    122a:	40 83       	st	Z, r20
    122c:	8a 81       	ldd	r24, Y+2	; 0x02
    122e:	9b 81       	ldd	r25, Y+3	; 0x03
    1230:	93 83       	std	Z+3, r25	; 0x03
    1232:	82 83       	std	Z+2, r24	; 0x02
    1234:	21 15       	cp	r18, r1
    1236:	31 05       	cpc	r19, r1
    1238:	09 f0       	breq	.+2      	; 0x123c <free+0xfc>
    123a:	b0 cf       	rjmp	.-160    	; 0x119c <free+0x5c>
    123c:	f0 93 a1 01 	sts	0x01A1, r31	; 0x8001a1 <__flp+0x1>
    1240:	e0 93 a0 01 	sts	0x01A0, r30	; 0x8001a0 <__flp>
    1244:	9e cf       	rjmp	.-196    	; 0x1182 <free+0x42>
    1246:	fd 01       	movw	r30, r26
    1248:	dc 01       	movw	r26, r24
    124a:	c0 cf       	rjmp	.-128    	; 0x11cc <free+0x8c>
    124c:	13 82       	std	Z+3, r1	; 0x03
    124e:	12 82       	std	Z+2, r1	; 0x02
    1250:	d7 cf       	rjmp	.-82     	; 0x1200 <free+0xc0>

00001252 <__do_global_dtors>:
    1252:	10 e0       	ldi	r17, 0x00	; 0
    1254:	c6 e3       	ldi	r28, 0x36	; 54
    1256:	d0 e0       	ldi	r29, 0x00	; 0
    1258:	04 c0       	rjmp	.+8      	; 0x1262 <__do_global_dtors+0x10>
    125a:	fe 01       	movw	r30, r28
    125c:	0e 94 fe 07 	call	0xffc	; 0xffc <__tablejump2__>
    1260:	21 96       	adiw	r28, 0x01	; 1
    1262:	c7 33       	cpi	r28, 0x37	; 55
    1264:	d1 07       	cpc	r29, r17
    1266:	c9 f7       	brne	.-14     	; 0x125a <__do_global_dtors+0x8>
    1268:	f8 94       	cli

0000126a <__stop_program>:
    126a:	ff cf       	rjmp	.-2      	; 0x126a <__stop_program>
