
ret2win:     file format elf64-x86-64


Disassembly of section .init:

00000000004005a0 <_init>:
  4005a0:	48 83 ec 08          	sub    $0x8,%rsp
  4005a4:	48 8b 05 4d 0a 20 00 	mov    0x200a4d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4005ab:	48 85 c0             	test   %rax,%rax
  4005ae:	74 05                	je     4005b5 <_init+0x15>
  4005b0:	e8 8b 00 00 00       	callq  400640 <setvbuf@plt+0x10>
  4005b5:	48 83 c4 08          	add    $0x8,%rsp
  4005b9:	c3                   	retq   

Disassembly of section .plt:

00000000004005c0 <puts@plt-0x10>:
  4005c0:	ff 35 42 0a 20 00    	pushq  0x200a42(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005c6:	ff 25 44 0a 20 00    	jmpq   *0x200a44(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <puts@plt>:
  4005d0:	ff 25 42 0a 20 00    	jmpq   *0x200a42(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4005d6:	68 00 00 00 00       	pushq  $0x0
  4005db:	e9 e0 ff ff ff       	jmpq   4005c0 <_init+0x20>

00000000004005e0 <system@plt>:
  4005e0:	ff 25 3a 0a 20 00    	jmpq   *0x200a3a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4005e6:	68 01 00 00 00       	pushq  $0x1
  4005eb:	e9 d0 ff ff ff       	jmpq   4005c0 <_init+0x20>

00000000004005f0 <printf@plt>:
  4005f0:	ff 25 32 0a 20 00    	jmpq   *0x200a32(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4005f6:	68 02 00 00 00       	pushq  $0x2
  4005fb:	e9 c0 ff ff ff       	jmpq   4005c0 <_init+0x20>

0000000000400600 <memset@plt>:
  400600:	ff 25 2a 0a 20 00    	jmpq   *0x200a2a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400606:	68 03 00 00 00       	pushq  $0x3
  40060b:	e9 b0 ff ff ff       	jmpq   4005c0 <_init+0x20>

0000000000400610 <__libc_start_main@plt>:
  400610:	ff 25 22 0a 20 00    	jmpq   *0x200a22(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400616:	68 04 00 00 00       	pushq  $0x4
  40061b:	e9 a0 ff ff ff       	jmpq   4005c0 <_init+0x20>

0000000000400620 <fgets@plt>:
  400620:	ff 25 1a 0a 20 00    	jmpq   *0x200a1a(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400626:	68 05 00 00 00       	pushq  $0x5
  40062b:	e9 90 ff ff ff       	jmpq   4005c0 <_init+0x20>

0000000000400630 <setvbuf@plt>:
  400630:	ff 25 12 0a 20 00    	jmpq   *0x200a12(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400636:	68 06 00 00 00       	pushq  $0x6
  40063b:	e9 80 ff ff ff       	jmpq   4005c0 <_init+0x20>

Disassembly of section .plt.got:

0000000000400640 <.plt.got>:
  400640:	ff 25 b2 09 20 00    	jmpq   *0x2009b2(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400646:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400650 <_start>:
  400650:	31 ed                	xor    %ebp,%ebp
  400652:	49 89 d1             	mov    %rdx,%r9
  400655:	5e                   	pop    %rsi
  400656:	48 89 e2             	mov    %rsp,%rdx
  400659:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40065d:	50                   	push   %rax
  40065e:	54                   	push   %rsp
  40065f:	49 c7 c0 b0 08 40 00 	mov    $0x4008b0,%r8
  400666:	48 c7 c1 40 08 40 00 	mov    $0x400840,%rcx
  40066d:	48 c7 c7 46 07 40 00 	mov    $0x400746,%rdi
  400674:	e8 97 ff ff ff       	callq  400610 <__libc_start_main@plt>
  400679:	f4                   	hlt    
  40067a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400680 <deregister_tm_clones>:
  400680:	b8 67 10 60 00       	mov    $0x601067,%eax
  400685:	55                   	push   %rbp
  400686:	48 2d 60 10 60 00    	sub    $0x601060,%rax
  40068c:	48 83 f8 0e          	cmp    $0xe,%rax
  400690:	48 89 e5             	mov    %rsp,%rbp
  400693:	76 1b                	jbe    4006b0 <deregister_tm_clones+0x30>
  400695:	b8 00 00 00 00       	mov    $0x0,%eax
  40069a:	48 85 c0             	test   %rax,%rax
  40069d:	74 11                	je     4006b0 <deregister_tm_clones+0x30>
  40069f:	5d                   	pop    %rbp
  4006a0:	bf 60 10 60 00       	mov    $0x601060,%edi
  4006a5:	ff e0                	jmpq   *%rax
  4006a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ae:	00 00 
  4006b0:	5d                   	pop    %rbp
  4006b1:	c3                   	retq   
  4006b2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006bd:	00 00 00 

00000000004006c0 <register_tm_clones>:
  4006c0:	be 60 10 60 00       	mov    $0x601060,%esi
  4006c5:	55                   	push   %rbp
  4006c6:	48 81 ee 60 10 60 00 	sub    $0x601060,%rsi
  4006cd:	48 c1 fe 03          	sar    $0x3,%rsi
  4006d1:	48 89 e5             	mov    %rsp,%rbp
  4006d4:	48 89 f0             	mov    %rsi,%rax
  4006d7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4006db:	48 01 c6             	add    %rax,%rsi
  4006de:	48 d1 fe             	sar    %rsi
  4006e1:	74 15                	je     4006f8 <register_tm_clones+0x38>
  4006e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4006e8:	48 85 c0             	test   %rax,%rax
  4006eb:	74 0b                	je     4006f8 <register_tm_clones+0x38>
  4006ed:	5d                   	pop    %rbp
  4006ee:	bf 60 10 60 00       	mov    $0x601060,%edi
  4006f3:	ff e0                	jmpq   *%rax
  4006f5:	0f 1f 00             	nopl   (%rax)
  4006f8:	5d                   	pop    %rbp
  4006f9:	c3                   	retq   
  4006fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400700 <__do_global_dtors_aux>:
  400700:	80 3d 81 09 20 00 00 	cmpb   $0x0,0x200981(%rip)        # 601088 <completed.7585>
  400707:	75 11                	jne    40071a <__do_global_dtors_aux+0x1a>
  400709:	55                   	push   %rbp
  40070a:	48 89 e5             	mov    %rsp,%rbp
  40070d:	e8 6e ff ff ff       	callq  400680 <deregister_tm_clones>
  400712:	5d                   	pop    %rbp
  400713:	c6 05 6e 09 20 00 01 	movb   $0x1,0x20096e(%rip)        # 601088 <completed.7585>
  40071a:	f3 c3                	repz retq 
  40071c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400720 <frame_dummy>:
  400720:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400725:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400729:	75 05                	jne    400730 <frame_dummy+0x10>
  40072b:	eb 93                	jmp    4006c0 <register_tm_clones>
  40072d:	0f 1f 00             	nopl   (%rax)
  400730:	b8 00 00 00 00       	mov    $0x0,%eax
  400735:	48 85 c0             	test   %rax,%rax
  400738:	74 f1                	je     40072b <frame_dummy+0xb>
  40073a:	55                   	push   %rbp
  40073b:	48 89 e5             	mov    %rsp,%rbp
  40073e:	ff d0                	callq  *%rax
  400740:	5d                   	pop    %rbp
  400741:	e9 7a ff ff ff       	jmpq   4006c0 <register_tm_clones>

0000000000400746 <main>:
  400746:	55                   	push   %rbp
  400747:	48 89 e5             	mov    %rsp,%rbp
  40074a:	48 8b 05 0f 09 20 00 	mov    0x20090f(%rip),%rax        # 601060 <__TMC_END__>
  400751:	b9 00 00 00 00       	mov    $0x0,%ecx
  400756:	ba 02 00 00 00       	mov    $0x2,%edx
  40075b:	be 00 00 00 00       	mov    $0x0,%esi
  400760:	48 89 c7             	mov    %rax,%rdi
  400763:	e8 c8 fe ff ff       	callq  400630 <setvbuf@plt>
  400768:	48 8b 05 11 09 20 00 	mov    0x200911(%rip),%rax        # 601080 <stderr@@GLIBC_2.2.5>
  40076f:	b9 00 00 00 00       	mov    $0x0,%ecx
  400774:	ba 02 00 00 00       	mov    $0x2,%edx
  400779:	be 00 00 00 00       	mov    $0x0,%esi
  40077e:	48 89 c7             	mov    %rax,%rdi
  400781:	e8 aa fe ff ff       	callq  400630 <setvbuf@plt>
  400786:	bf c8 08 40 00       	mov    $0x4008c8,%edi
  40078b:	e8 40 fe ff ff       	callq  4005d0 <puts@plt>
  400790:	bf e0 08 40 00       	mov    $0x4008e0,%edi
  400795:	e8 36 fe ff ff       	callq  4005d0 <puts@plt>
  40079a:	b8 00 00 00 00       	mov    $0x0,%eax
  40079f:	e8 11 00 00 00       	callq  4007b5 <pwnme>
  4007a4:	bf e8 08 40 00       	mov    $0x4008e8,%edi
  4007a9:	e8 22 fe ff ff       	callq  4005d0 <puts@plt>
  4007ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b3:	5d                   	pop    %rbp
  4007b4:	c3                   	retq   

00000000004007b5 <pwnme>:
  4007b5:	55                   	push   %rbp
  4007b6:	48 89 e5             	mov    %rsp,%rbp
  4007b9:	48 83 ec 20          	sub    $0x20,%rsp
  4007bd:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4007c1:	ba 20 00 00 00       	mov    $0x20,%edx
  4007c6:	be 00 00 00 00       	mov    $0x0,%esi
  4007cb:	48 89 c7             	mov    %rax,%rdi
  4007ce:	e8 2d fe ff ff       	callq  400600 <memset@plt>
  4007d3:	bf f8 08 40 00       	mov    $0x4008f8,%edi
  4007d8:	e8 f3 fd ff ff       	callq  4005d0 <puts@plt>
  4007dd:	bf 78 09 40 00       	mov    $0x400978,%edi
  4007e2:	e8 e9 fd ff ff       	callq  4005d0 <puts@plt>
  4007e7:	bf dd 09 40 00       	mov    $0x4009dd,%edi
  4007ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4007f1:	e8 fa fd ff ff       	callq  4005f0 <printf@plt>
  4007f6:	48 8b 15 73 08 20 00 	mov    0x200873(%rip),%rdx        # 601070 <stdin@@GLIBC_2.2.5>
  4007fd:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400801:	be 32 00 00 00       	mov    $0x32,%esi
  400806:	48 89 c7             	mov    %rax,%rdi
  400809:	e8 12 fe ff ff       	callq  400620 <fgets@plt>
  40080e:	90                   	nop
  40080f:	c9                   	leaveq 
  400810:	c3                   	retq   

0000000000400811 <ret2win>:
  400811:	55                   	push   %rbp
  400812:	48 89 e5             	mov    %rsp,%rbp
  400815:	bf e0 09 40 00       	mov    $0x4009e0,%edi
  40081a:	b8 00 00 00 00       	mov    $0x0,%eax
  40081f:	e8 cc fd ff ff       	callq  4005f0 <printf@plt>
  400824:	bf fd 09 40 00       	mov    $0x4009fd,%edi
  400829:	e8 b2 fd ff ff       	callq  4005e0 <system@plt>
  40082e:	90                   	nop
  40082f:	5d                   	pop    %rbp
  400830:	c3                   	retq   
  400831:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400838:	00 00 00 
  40083b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400840 <__libc_csu_init>:
  400840:	41 57                	push   %r15
  400842:	41 56                	push   %r14
  400844:	41 89 ff             	mov    %edi,%r15d
  400847:	41 55                	push   %r13
  400849:	41 54                	push   %r12
  40084b:	4c 8d 25 be 05 20 00 	lea    0x2005be(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400852:	55                   	push   %rbp
  400853:	48 8d 2d be 05 20 00 	lea    0x2005be(%rip),%rbp        # 600e18 <__init_array_end>
  40085a:	53                   	push   %rbx
  40085b:	49 89 f6             	mov    %rsi,%r14
  40085e:	49 89 d5             	mov    %rdx,%r13
  400861:	4c 29 e5             	sub    %r12,%rbp
  400864:	48 83 ec 08          	sub    $0x8,%rsp
  400868:	48 c1 fd 03          	sar    $0x3,%rbp
  40086c:	e8 2f fd ff ff       	callq  4005a0 <_init>
  400871:	48 85 ed             	test   %rbp,%rbp
  400874:	74 20                	je     400896 <__libc_csu_init+0x56>
  400876:	31 db                	xor    %ebx,%ebx
  400878:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40087f:	00 
  400880:	4c 89 ea             	mov    %r13,%rdx
  400883:	4c 89 f6             	mov    %r14,%rsi
  400886:	44 89 ff             	mov    %r15d,%edi
  400889:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40088d:	48 83 c3 01          	add    $0x1,%rbx
  400891:	48 39 eb             	cmp    %rbp,%rbx
  400894:	75 ea                	jne    400880 <__libc_csu_init+0x40>
  400896:	48 83 c4 08          	add    $0x8,%rsp
  40089a:	5b                   	pop    %rbx
  40089b:	5d                   	pop    %rbp
  40089c:	41 5c                	pop    %r12
  40089e:	41 5d                	pop    %r13
  4008a0:	41 5e                	pop    %r14
  4008a2:	41 5f                	pop    %r15
  4008a4:	c3                   	retq   
  4008a5:	90                   	nop
  4008a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008ad:	00 00 00 

00000000004008b0 <__libc_csu_fini>:
  4008b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004008b4 <_fini>:
  4008b4:	48 83 ec 08          	sub    $0x8,%rsp
  4008b8:	48 83 c4 08          	add    $0x8,%rsp
  4008bc:	c3                   	retq   
