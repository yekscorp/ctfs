
callme32:     file format elf32-i386


Disassembly of section .init:

08048558 <_init>:
 8048558:	53                   	push   %ebx
 8048559:	83 ec 08             	sub    $0x8,%esp
 804855c:	e8 0f 01 00 00       	call   8048670 <__x86.get_pc_thunk.bx>
 8048561:	81 c3 9f 1a 00 00    	add    $0x1a9f,%ebx
 8048567:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804856d:	85 c0                	test   %eax,%eax
 804856f:	74 05                	je     8048576 <_init+0x1e>
 8048571:	e8 ba 00 00 00       	call   8048630 <callme_two@plt+0x10>
 8048576:	83 c4 08             	add    $0x8,%esp
 8048579:	5b                   	pop    %ebx
 804857a:	c3                   	ret    

Disassembly of section .plt:

08048580 <printf@plt-0x10>:
 8048580:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048586:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804858c:	00 00                	add    %al,(%eax)
	...

08048590 <printf@plt>:
 8048590:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048596:	68 00 00 00 00       	push   $0x0
 804859b:	e9 e0 ff ff ff       	jmp    8048580 <_init+0x28>

080485a0 <fgets@plt>:
 80485a0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80485a6:	68 08 00 00 00       	push   $0x8
 80485ab:	e9 d0 ff ff ff       	jmp    8048580 <_init+0x28>

080485b0 <callme_three@plt>:
 80485b0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80485b6:	68 10 00 00 00       	push   $0x10
 80485bb:	e9 c0 ff ff ff       	jmp    8048580 <_init+0x28>

080485c0 <callme_one@plt>:
 80485c0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80485c6:	68 18 00 00 00       	push   $0x18
 80485cb:	e9 b0 ff ff ff       	jmp    8048580 <_init+0x28>

080485d0 <puts@plt>:
 80485d0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80485d6:	68 20 00 00 00       	push   $0x20
 80485db:	e9 a0 ff ff ff       	jmp    8048580 <_init+0x28>

080485e0 <exit@plt>:
 80485e0:	ff 25 20 a0 04 08    	jmp    *0x804a020
 80485e6:	68 28 00 00 00       	push   $0x28
 80485eb:	e9 90 ff ff ff       	jmp    8048580 <_init+0x28>

080485f0 <__libc_start_main@plt>:
 80485f0:	ff 25 24 a0 04 08    	jmp    *0x804a024
 80485f6:	68 30 00 00 00       	push   $0x30
 80485fb:	e9 80 ff ff ff       	jmp    8048580 <_init+0x28>

08048600 <setvbuf@plt>:
 8048600:	ff 25 28 a0 04 08    	jmp    *0x804a028
 8048606:	68 38 00 00 00       	push   $0x38
 804860b:	e9 70 ff ff ff       	jmp    8048580 <_init+0x28>

08048610 <memset@plt>:
 8048610:	ff 25 2c a0 04 08    	jmp    *0x804a02c
 8048616:	68 40 00 00 00       	push   $0x40
 804861b:	e9 60 ff ff ff       	jmp    8048580 <_init+0x28>

08048620 <callme_two@plt>:
 8048620:	ff 25 30 a0 04 08    	jmp    *0x804a030
 8048626:	68 48 00 00 00       	push   $0x48
 804862b:	e9 50 ff ff ff       	jmp    8048580 <_init+0x28>

Disassembly of section .plt.got:

08048630 <.plt.got>:
 8048630:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048636:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048640 <_start>:
 8048640:	31 ed                	xor    %ebp,%ebp
 8048642:	5e                   	pop    %esi
 8048643:	89 e1                	mov    %esp,%ecx
 8048645:	83 e4 f0             	and    $0xfffffff0,%esp
 8048648:	50                   	push   %eax
 8048649:	54                   	push   %esp
 804864a:	52                   	push   %edx
 804864b:	68 b0 88 04 08       	push   $0x80488b0
 8048650:	68 50 88 04 08       	push   $0x8048850
 8048655:	51                   	push   %ecx
 8048656:	56                   	push   %esi
 8048657:	68 3b 87 04 08       	push   $0x804873b
 804865c:	e8 8f ff ff ff       	call   80485f0 <__libc_start_main@plt>
 8048661:	f4                   	hlt    
 8048662:	66 90                	xchg   %ax,%ax
 8048664:	66 90                	xchg   %ax,%ax
 8048666:	66 90                	xchg   %ax,%ax
 8048668:	66 90                	xchg   %ax,%ax
 804866a:	66 90                	xchg   %ax,%ax
 804866c:	66 90                	xchg   %ax,%ax
 804866e:	66 90                	xchg   %ax,%ax

08048670 <__x86.get_pc_thunk.bx>:
 8048670:	8b 1c 24             	mov    (%esp),%ebx
 8048673:	c3                   	ret    
 8048674:	66 90                	xchg   %ax,%ax
 8048676:	66 90                	xchg   %ax,%ax
 8048678:	66 90                	xchg   %ax,%ax
 804867a:	66 90                	xchg   %ax,%ax
 804867c:	66 90                	xchg   %ax,%ax
 804867e:	66 90                	xchg   %ax,%ax

08048680 <deregister_tm_clones>:
 8048680:	b8 3f a0 04 08       	mov    $0x804a03f,%eax
 8048685:	2d 3c a0 04 08       	sub    $0x804a03c,%eax
 804868a:	83 f8 06             	cmp    $0x6,%eax
 804868d:	76 1a                	jbe    80486a9 <deregister_tm_clones+0x29>
 804868f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048694:	85 c0                	test   %eax,%eax
 8048696:	74 11                	je     80486a9 <deregister_tm_clones+0x29>
 8048698:	55                   	push   %ebp
 8048699:	89 e5                	mov    %esp,%ebp
 804869b:	83 ec 14             	sub    $0x14,%esp
 804869e:	68 3c a0 04 08       	push   $0x804a03c
 80486a3:	ff d0                	call   *%eax
 80486a5:	83 c4 10             	add    $0x10,%esp
 80486a8:	c9                   	leave  
 80486a9:	f3 c3                	repz ret 
 80486ab:	90                   	nop
 80486ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080486b0 <register_tm_clones>:
 80486b0:	b8 3c a0 04 08       	mov    $0x804a03c,%eax
 80486b5:	2d 3c a0 04 08       	sub    $0x804a03c,%eax
 80486ba:	c1 f8 02             	sar    $0x2,%eax
 80486bd:	89 c2                	mov    %eax,%edx
 80486bf:	c1 ea 1f             	shr    $0x1f,%edx
 80486c2:	01 d0                	add    %edx,%eax
 80486c4:	d1 f8                	sar    %eax
 80486c6:	74 1b                	je     80486e3 <register_tm_clones+0x33>
 80486c8:	ba 00 00 00 00       	mov    $0x0,%edx
 80486cd:	85 d2                	test   %edx,%edx
 80486cf:	74 12                	je     80486e3 <register_tm_clones+0x33>
 80486d1:	55                   	push   %ebp
 80486d2:	89 e5                	mov    %esp,%ebp
 80486d4:	83 ec 10             	sub    $0x10,%esp
 80486d7:	50                   	push   %eax
 80486d8:	68 3c a0 04 08       	push   $0x804a03c
 80486dd:	ff d2                	call   *%edx
 80486df:	83 c4 10             	add    $0x10,%esp
 80486e2:	c9                   	leave  
 80486e3:	f3 c3                	repz ret 
 80486e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80486e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080486f0 <__do_global_dtors_aux>:
 80486f0:	80 3d 68 a0 04 08 00 	cmpb   $0x0,0x804a068
 80486f7:	75 13                	jne    804870c <__do_global_dtors_aux+0x1c>
 80486f9:	55                   	push   %ebp
 80486fa:	89 e5                	mov    %esp,%ebp
 80486fc:	83 ec 08             	sub    $0x8,%esp
 80486ff:	e8 7c ff ff ff       	call   8048680 <deregister_tm_clones>
 8048704:	c6 05 68 a0 04 08 01 	movb   $0x1,0x804a068
 804870b:	c9                   	leave  
 804870c:	f3 c3                	repz ret 
 804870e:	66 90                	xchg   %ax,%ax

08048710 <frame_dummy>:
 8048710:	b8 00 9f 04 08       	mov    $0x8049f00,%eax
 8048715:	8b 10                	mov    (%eax),%edx
 8048717:	85 d2                	test   %edx,%edx
 8048719:	75 05                	jne    8048720 <frame_dummy+0x10>
 804871b:	eb 93                	jmp    80486b0 <register_tm_clones>
 804871d:	8d 76 00             	lea    0x0(%esi),%esi
 8048720:	ba 00 00 00 00       	mov    $0x0,%edx
 8048725:	85 d2                	test   %edx,%edx
 8048727:	74 f2                	je     804871b <frame_dummy+0xb>
 8048729:	55                   	push   %ebp
 804872a:	89 e5                	mov    %esp,%ebp
 804872c:	83 ec 14             	sub    $0x14,%esp
 804872f:	50                   	push   %eax
 8048730:	ff d2                	call   *%edx
 8048732:	83 c4 10             	add    $0x10,%esp
 8048735:	c9                   	leave  
 8048736:	e9 75 ff ff ff       	jmp    80486b0 <register_tm_clones>

0804873b <main>:
 804873b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804873f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048742:	ff 71 fc             	pushl  -0x4(%ecx)
 8048745:	55                   	push   %ebp
 8048746:	89 e5                	mov    %esp,%ebp
 8048748:	51                   	push   %ecx
 8048749:	83 ec 04             	sub    $0x4,%esp
 804874c:	a1 64 a0 04 08       	mov    0x804a064,%eax
 8048751:	6a 00                	push   $0x0
 8048753:	6a 02                	push   $0x2
 8048755:	6a 00                	push   $0x0
 8048757:	50                   	push   %eax
 8048758:	e8 a3 fe ff ff       	call   8048600 <setvbuf@plt>
 804875d:	83 c4 10             	add    $0x10,%esp
 8048760:	a1 40 a0 04 08       	mov    0x804a040,%eax
 8048765:	6a 00                	push   $0x0
 8048767:	6a 02                	push   $0x2
 8048769:	6a 00                	push   $0x0
 804876b:	50                   	push   %eax
 804876c:	e8 8f fe ff ff       	call   8048600 <setvbuf@plt>
 8048771:	83 c4 10             	add    $0x10,%esp
 8048774:	83 ec 0c             	sub    $0xc,%esp
 8048777:	68 d0 88 04 08       	push   $0x80488d0
 804877c:	e8 4f fe ff ff       	call   80485d0 <puts@plt>
 8048781:	83 c4 10             	add    $0x10,%esp
 8048784:	83 ec 0c             	sub    $0xc,%esp
 8048787:	68 e7 88 04 08       	push   $0x80488e7
 804878c:	e8 3f fe ff ff       	call   80485d0 <puts@plt>
 8048791:	83 c4 10             	add    $0x10,%esp
 8048794:	e8 1d 00 00 00       	call   80487b6 <pwnme>
 8048799:	83 ec 0c             	sub    $0xc,%esp
 804879c:	68 ef 88 04 08       	push   $0x80488ef
 80487a1:	e8 2a fe ff ff       	call   80485d0 <puts@plt>
 80487a6:	83 c4 10             	add    $0x10,%esp
 80487a9:	b8 00 00 00 00       	mov    $0x0,%eax
 80487ae:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80487b1:	c9                   	leave  
 80487b2:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80487b5:	c3                   	ret    

080487b6 <pwnme>:
 80487b6:	55                   	push   %ebp
 80487b7:	89 e5                	mov    %esp,%ebp
 80487b9:	83 ec 28             	sub    $0x28,%esp
 80487bc:	83 ec 04             	sub    $0x4,%esp
 80487bf:	6a 20                	push   $0x20
 80487c1:	6a 00                	push   $0x0
 80487c3:	8d 45 d8             	lea    -0x28(%ebp),%eax
 80487c6:	50                   	push   %eax
 80487c7:	e8 44 fe ff ff       	call   8048610 <memset@plt>
 80487cc:	83 c4 10             	add    $0x10,%esp
 80487cf:	83 ec 0c             	sub    $0xc,%esp
 80487d2:	68 f8 88 04 08       	push   $0x80488f8
 80487d7:	e8 f4 fd ff ff       	call   80485d0 <puts@plt>
 80487dc:	83 c4 10             	add    $0x10,%esp
 80487df:	83 ec 0c             	sub    $0xc,%esp
 80487e2:	68 1a 89 04 08       	push   $0x804891a
 80487e7:	e8 a4 fd ff ff       	call   8048590 <printf@plt>
 80487ec:	83 c4 10             	add    $0x10,%esp
 80487ef:	a1 60 a0 04 08       	mov    0x804a060,%eax
 80487f4:	83 ec 04             	sub    $0x4,%esp
 80487f7:	50                   	push   %eax
 80487f8:	68 00 01 00 00       	push   $0x100
 80487fd:	8d 45 d8             	lea    -0x28(%ebp),%eax
 8048800:	50                   	push   %eax
 8048801:	e8 9a fd ff ff       	call   80485a0 <fgets@plt>
 8048806:	83 c4 10             	add    $0x10,%esp
 8048809:	90                   	nop
 804880a:	c9                   	leave  
 804880b:	c3                   	ret    

0804880c <usefulFunction>:
 804880c:	55                   	push   %ebp
 804880d:	89 e5                	mov    %esp,%ebp
 804880f:	83 ec 08             	sub    $0x8,%esp
 8048812:	83 ec 04             	sub    $0x4,%esp
 8048815:	6a 06                	push   $0x6
 8048817:	6a 05                	push   $0x5
 8048819:	6a 04                	push   $0x4
 804881b:	e8 90 fd ff ff       	call   80485b0 <callme_three@plt>
 8048820:	83 c4 10             	add    $0x10,%esp
 8048823:	83 ec 04             	sub    $0x4,%esp
 8048826:	6a 06                	push   $0x6
 8048828:	6a 05                	push   $0x5
 804882a:	6a 04                	push   $0x4
 804882c:	e8 ef fd ff ff       	call   8048620 <callme_two@plt>
 8048831:	83 c4 10             	add    $0x10,%esp
 8048834:	83 ec 04             	sub    $0x4,%esp
 8048837:	6a 06                	push   $0x6
 8048839:	6a 05                	push   $0x5
 804883b:	6a 04                	push   $0x4
 804883d:	e8 7e fd ff ff       	call   80485c0 <callme_one@plt>
 8048842:	83 c4 10             	add    $0x10,%esp
 8048845:	83 ec 0c             	sub    $0xc,%esp
 8048848:	6a 01                	push   $0x1
 804884a:	e8 91 fd ff ff       	call   80485e0 <exit@plt>
 804884f:	90                   	nop

08048850 <__libc_csu_init>:
 8048850:	55                   	push   %ebp
 8048851:	57                   	push   %edi
 8048852:	56                   	push   %esi
 8048853:	53                   	push   %ebx
 8048854:	e8 17 fe ff ff       	call   8048670 <__x86.get_pc_thunk.bx>
 8048859:	81 c3 a7 17 00 00    	add    $0x17a7,%ebx
 804885f:	83 ec 0c             	sub    $0xc,%esp
 8048862:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048866:	8d b3 fc fe ff ff    	lea    -0x104(%ebx),%esi
 804886c:	e8 e7 fc ff ff       	call   8048558 <_init>
 8048871:	8d 83 f8 fe ff ff    	lea    -0x108(%ebx),%eax
 8048877:	29 c6                	sub    %eax,%esi
 8048879:	c1 fe 02             	sar    $0x2,%esi
 804887c:	85 f6                	test   %esi,%esi
 804887e:	74 25                	je     80488a5 <__libc_csu_init+0x55>
 8048880:	31 ff                	xor    %edi,%edi
 8048882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048888:	83 ec 04             	sub    $0x4,%esp
 804888b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804888f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048893:	55                   	push   %ebp
 8048894:	ff 94 bb f8 fe ff ff 	call   *-0x108(%ebx,%edi,4)
 804889b:	83 c7 01             	add    $0x1,%edi
 804889e:	83 c4 10             	add    $0x10,%esp
 80488a1:	39 f7                	cmp    %esi,%edi
 80488a3:	75 e3                	jne    8048888 <__libc_csu_init+0x38>
 80488a5:	83 c4 0c             	add    $0xc,%esp
 80488a8:	5b                   	pop    %ebx
 80488a9:	5e                   	pop    %esi
 80488aa:	5f                   	pop    %edi
 80488ab:	5d                   	pop    %ebp
 80488ac:	c3                   	ret    
 80488ad:	8d 76 00             	lea    0x0(%esi),%esi

080488b0 <__libc_csu_fini>:
 80488b0:	f3 c3                	repz ret 

Disassembly of section .fini:

080488b4 <_fini>:
 80488b4:	53                   	push   %ebx
 80488b5:	83 ec 08             	sub    $0x8,%esp
 80488b8:	e8 b3 fd ff ff       	call   8048670 <__x86.get_pc_thunk.bx>
 80488bd:	81 c3 43 17 00 00    	add    $0x1743,%ebx
 80488c3:	83 c4 08             	add    $0x8,%esp
 80488c6:	5b                   	pop    %ebx
 80488c7:	c3                   	ret    
