
pilot:     file format elf64-x86-64


Disassembly of section .init:

00000000004007c8 <.init>:
  4007c8:	48 83 ec 08          	sub    $0x8,%rsp
  4007cc:	48 8b 05 25 18 20 00 	mov    0x201825(%rip),%rax        # 601ff8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201768>
  4007d3:	48 85 c0             	test   %rax,%rax
  4007d6:	74 05                	je     4007dd <setvbuf@plt-0x23>
  4007d8:	e8 c3 00 00 00       	callq  4008a0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x10>
  4007dd:	48 83 c4 08          	add    $0x8,%rsp
  4007e1:	c3                   	retq   

Disassembly of section .plt:

00000000004007f0 <setvbuf@plt-0x10>:
  4007f0:	ff 35 12 18 20 00    	pushq  0x201812(%rip)        # 602008 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201778>
  4007f6:	ff 25 14 18 20 00    	jmpq   *0x201814(%rip)        # 602010 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201780>
  4007fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400800 <setvbuf@plt>:
  400800:	ff 25 12 18 20 00    	jmpq   *0x201812(%rip)        # 602018 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201788>
  400806:	68 00 00 00 00       	pushq  $0x0
  40080b:	e9 e0 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400810 <_ZNSt8ios_base4InitC1Ev@plt>:
  400810:	ff 25 0a 18 20 00    	jmpq   *0x20180a(%rip)        # 602020 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201790>
  400816:	68 01 00 00 00       	pushq  $0x1
  40081b:	e9 d0 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400820 <read@plt>:
  400820:	ff 25 02 18 20 00    	jmpq   *0x201802(%rip)        # 602028 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201798>
  400826:	68 02 00 00 00       	pushq  $0x2
  40082b:	e9 c0 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400830 <__libc_start_main@plt>:
  400830:	ff 25 fa 17 20 00    	jmpq   *0x2017fa(%rip)        # 602030 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2017a0>
  400836:	68 03 00 00 00       	pushq  $0x3
  40083b:	e9 b0 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400840 <__cxa_atexit@plt>:
  400840:	ff 25 f2 17 20 00    	jmpq   *0x2017f2(%rip)        # 602038 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2017a8>
  400846:	68 04 00 00 00       	pushq  $0x4
  40084b:	e9 a0 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400850 <_ZNSt8ios_base4InitD1Ev@plt>:
  400850:	ff 25 ea 17 20 00    	jmpq   *0x2017ea(%rip)        # 602040 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2017b0>
  400856:	68 05 00 00 00       	pushq  $0x5
  40085b:	e9 90 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  400860:	ff 25 e2 17 20 00    	jmpq   *0x2017e2(%rip)        # 602048 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2017b8>
  400866:	68 06 00 00 00       	pushq  $0x6
  40086b:	e9 80 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400870 <_ZNSolsEPKv@plt>:
  400870:	ff 25 da 17 20 00    	jmpq   *0x2017da(%rip)        # 602050 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2017c0>
  400876:	68 07 00 00 00       	pushq  $0x7
  40087b:	e9 70 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400880 <_ZNSolsEPFRSoS_E@plt>:
  400880:	ff 25 d2 17 20 00    	jmpq   *0x2017d2(%rip)        # 602058 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2017c8>
  400886:	68 08 00 00 00       	pushq  $0x8
  40088b:	e9 60 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

0000000000400890 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  400890:	ff 25 ca 17 20 00    	jmpq   *0x2017ca(%rip)        # 602060 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2017d0>
  400896:	68 09 00 00 00       	pushq  $0x9
  40089b:	e9 50 ff ff ff       	jmpq   4007f0 <setvbuf@plt-0x10>

Disassembly of section .plt.got:

00000000004008a0 <.plt.got>:
  4008a0:	ff 25 52 17 20 00    	jmpq   *0x201752(%rip)        # 601ff8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201768>
  4008a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004008b0 <.text>:
  4008b0:	31 ed                	xor    %ebp,%ebp
  4008b2:	49 89 d1             	mov    %rdx,%r9
  4008b5:	5e                   	pop    %rsi
  4008b6:	48 89 e2             	mov    %rsp,%rdx
  4008b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4008bd:	50                   	push   %rax
  4008be:	54                   	push   %rsp
  4008bf:	49 c7 c0 00 0c 40 00 	mov    $0x400c00,%r8
  4008c6:	48 c7 c1 90 0b 40 00 	mov    $0x400b90,%rcx
  4008cd:	48 c7 c7 a6 09 40 00 	mov    $0x4009a6,%rdi
  4008d4:	e8 57 ff ff ff       	callq  400830 <__libc_start_main@plt>
  4008d9:	f4                   	hlt    
  4008da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4008e0:	b8 7f 20 60 00       	mov    $0x60207f,%eax
  4008e5:	55                   	push   %rbp
  4008e6:	48 2d 78 20 60 00    	sub    $0x602078,%rax
  4008ec:	48 83 f8 0e          	cmp    $0xe,%rax
  4008f0:	48 89 e5             	mov    %rsp,%rbp
  4008f3:	76 1b                	jbe    400910 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x80>
  4008f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4008fa:	48 85 c0             	test   %rax,%rax
  4008fd:	74 11                	je     400910 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x80>
  4008ff:	5d                   	pop    %rbp
  400900:	bf 78 20 60 00       	mov    $0x602078,%edi
  400905:	ff e0                	jmpq   *%rax
  400907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40090e:	00 00 
  400910:	5d                   	pop    %rbp
  400911:	c3                   	retq   
  400912:	0f 1f 40 00          	nopl   0x0(%rax)
  400916:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40091d:	00 00 00 
  400920:	be 78 20 60 00       	mov    $0x602078,%esi
  400925:	55                   	push   %rbp
  400926:	48 81 ee 78 20 60 00 	sub    $0x602078,%rsi
  40092d:	48 c1 fe 03          	sar    $0x3,%rsi
  400931:	48 89 e5             	mov    %rsp,%rbp
  400934:	48 89 f0             	mov    %rsi,%rax
  400937:	48 c1 e8 3f          	shr    $0x3f,%rax
  40093b:	48 01 c6             	add    %rax,%rsi
  40093e:	48 d1 fe             	sar    %rsi
  400941:	74 15                	je     400958 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0xc8>
  400943:	b8 00 00 00 00       	mov    $0x0,%eax
  400948:	48 85 c0             	test   %rax,%rax
  40094b:	74 0b                	je     400958 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0xc8>
  40094d:	5d                   	pop    %rbp
  40094e:	bf 78 20 60 00       	mov    $0x602078,%edi
  400953:	ff e0                	jmpq   *%rax
  400955:	0f 1f 00             	nopl   (%rax)
  400958:	5d                   	pop    %rbp
  400959:	c3                   	retq   
  40095a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400960:	80 3d 51 18 20 00 00 	cmpb   $0x0,0x201851(%rip)        # 6021b8 <stdout@@GLIBC_2.2.5+0x8>
  400967:	75 11                	jne    40097a <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0xea>
  400969:	55                   	push   %rbp
  40096a:	48 89 e5             	mov    %rsp,%rbp
  40096d:	e8 6e ff ff ff       	callq  4008e0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x50>
  400972:	5d                   	pop    %rbp
  400973:	c6 05 3e 18 20 00 01 	movb   $0x1,0x20183e(%rip)        # 6021b8 <stdout@@GLIBC_2.2.5+0x8>
  40097a:	f3 c3                	repz retq 
  40097c:	0f 1f 40 00          	nopl   0x0(%rax)
  400980:	bf 10 1e 60 00       	mov    $0x601e10,%edi
  400985:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400989:	75 05                	jne    400990 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x100>
  40098b:	eb 93                	jmp    400920 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x90>
  40098d:	0f 1f 00             	nopl   (%rax)
  400990:	b8 00 00 00 00       	mov    $0x0,%eax
  400995:	48 85 c0             	test   %rax,%rax
  400998:	74 f1                	je     40098b <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0xfb>
  40099a:	55                   	push   %rbp
  40099b:	48 89 e5             	mov    %rsp,%rbp
  40099e:	ff d0                	callq  *%rax
  4009a0:	5d                   	pop    %rbp
  4009a1:	e9 7a ff ff ff       	jmpq   400920 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x90>
  4009a6:	55                   	push   %rbp
  4009a7:	48 89 e5             	mov    %rsp,%rbp
  4009aa:	48 83 ec 20          	sub    $0x20,%rsp
  4009ae:	48 8b 05 fb 17 20 00 	mov    0x2017fb(%rip),%rax        # 6021b0 <stdout@@GLIBC_2.2.5>
  4009b5:	b9 00 00 00 00       	mov    $0x0,%ecx
  4009ba:	ba 02 00 00 00       	mov    $0x2,%edx
  4009bf:	be 00 00 00 00       	mov    $0x0,%esi
  4009c4:	48 89 c7             	mov    %rax,%rdi
  4009c7:	e8 34 fe ff ff       	callq  400800 <setvbuf@plt>
  4009cc:	48 8b 05 ad 16 20 00 	mov    0x2016ad(%rip),%rax        # 602080 <stdin@@GLIBC_2.2.5>
  4009d3:	b9 00 00 00 00       	mov    $0x0,%ecx
  4009d8:	ba 02 00 00 00       	mov    $0x2,%edx
  4009dd:	be 00 00 00 00       	mov    $0x0,%esi
  4009e2:	48 89 c7             	mov    %rax,%rdi
  4009e5:	e8 16 fe ff ff       	callq  400800 <setvbuf@plt>
  4009ea:	be 19 0c 40 00       	mov    $0x400c19,%esi
  4009ef:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  4009f4:	e8 67 fe ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4009f9:	be 90 08 40 00       	mov    $0x400890,%esi
  4009fe:	48 89 c7             	mov    %rax,%rdi
  400a01:	e8 7a fe ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400a06:	be 36 0c 40 00       	mov    $0x400c36,%esi
  400a0b:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a10:	e8 4b fe ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400a15:	be 90 08 40 00       	mov    $0x400890,%esi
  400a1a:	48 89 c7             	mov    %rax,%rdi
  400a1d:	e8 5e fe ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400a22:	be 58 0c 40 00       	mov    $0x400c58,%esi
  400a27:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a2c:	e8 2f fe ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400a31:	be 90 08 40 00       	mov    $0x400890,%esi
  400a36:	48 89 c7             	mov    %rax,%rdi
  400a39:	e8 42 fe ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400a3e:	be 90 0c 40 00       	mov    $0x400c90,%esi
  400a43:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a48:	e8 13 fe ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400a4d:	be 90 08 40 00       	mov    $0x400890,%esi
  400a52:	48 89 c7             	mov    %rax,%rdi
  400a55:	e8 26 fe ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400a5a:	be e0 0c 40 00       	mov    $0x400ce0,%esi
  400a5f:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a64:	e8 f7 fd ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400a69:	be 90 08 40 00       	mov    $0x400890,%esi
  400a6e:	48 89 c7             	mov    %rax,%rdi
  400a71:	e8 0a fe ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400a76:	be 5f 0d 40 00       	mov    $0x400d5f,%esi
  400a7b:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a80:	e8 db fd ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400a85:	be 90 08 40 00       	mov    $0x400890,%esi
  400a8a:	48 89 c7             	mov    %rax,%rdi
  400a8d:	e8 ee fd ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400a92:	be 77 0d 40 00       	mov    $0x400d77,%esi
  400a97:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400a9c:	e8 bf fd ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400aa1:	48 89 c2             	mov    %rax,%rdx
  400aa4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400aa8:	48 89 c6             	mov    %rax,%rsi
  400aab:	48 89 d7             	mov    %rdx,%rdi
  400aae:	e8 bd fd ff ff       	callq  400870 <_ZNSolsEPKv@plt>
  400ab3:	be 90 08 40 00       	mov    $0x400890,%esi
  400ab8:	48 89 c7             	mov    %rax,%rdi
  400abb:	e8 c0 fd ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400ac0:	be 84 0d 40 00       	mov    $0x400d84,%esi
  400ac5:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400aca:	e8 91 fd ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400acf:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400ad3:	ba 40 00 00 00       	mov    $0x40,%edx
  400ad8:	48 89 c6             	mov    %rax,%rsi
  400adb:	bf 00 00 00 00       	mov    $0x0,%edi
  400ae0:	e8 3b fd ff ff       	callq  400820 <read@plt>
  400ae5:	48 83 f8 04          	cmp    $0x4,%rax
  400ae9:	0f 9e c0             	setle  %al
  400aec:	84 c0                	test   %al,%al
  400aee:	74 3f                	je     400b2f <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x29f>
  400af0:	be 90 0d 40 00       	mov    $0x400d90,%esi
  400af5:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400afa:	e8 61 fd ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400aff:	be 90 08 40 00       	mov    $0x400890,%esi
  400b04:	48 89 c7             	mov    %rax,%rdi
  400b07:	e8 74 fd ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400b0c:	be ad 0d 40 00       	mov    $0x400dad,%esi
  400b11:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400b16:	e8 45 fd ff ff       	callq  400860 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400b1b:	be 90 08 40 00       	mov    $0x400890,%esi
  400b20:	48 89 c7             	mov    %rax,%rdi
  400b23:	e8 58 fd ff ff       	callq  400880 <_ZNSolsEPFRSoS_E@plt>
  400b28:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400b2d:	eb 05                	jmp    400b34 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2a4>
  400b2f:	b8 00 00 00 00       	mov    $0x0,%eax
  400b34:	c9                   	leaveq 
  400b35:	c3                   	retq   
  400b36:	55                   	push   %rbp
  400b37:	48 89 e5             	mov    %rsp,%rbp
  400b3a:	48 83 ec 10          	sub    $0x10,%rsp
  400b3e:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400b41:	89 75 f8             	mov    %esi,-0x8(%rbp)
  400b44:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  400b48:	75 27                	jne    400b71 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2e1>
  400b4a:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  400b51:	75 1e                	jne    400b71 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2e1>
  400b53:	bf b9 21 60 00       	mov    $0x6021b9,%edi
  400b58:	e8 b3 fc ff ff       	callq  400810 <_ZNSt8ios_base4InitC1Ev@plt>
  400b5d:	ba 70 20 60 00       	mov    $0x602070,%edx
  400b62:	be b9 21 60 00       	mov    $0x6021b9,%esi
  400b67:	bf 50 08 40 00       	mov    $0x400850,%edi
  400b6c:	e8 cf fc ff ff       	callq  400840 <__cxa_atexit@plt>
  400b71:	90                   	nop
  400b72:	c9                   	leaveq 
  400b73:	c3                   	retq   
  400b74:	55                   	push   %rbp
  400b75:	48 89 e5             	mov    %rsp,%rbp
  400b78:	be ff ff 00 00       	mov    $0xffff,%esi
  400b7d:	bf 01 00 00 00       	mov    $0x1,%edi
  400b82:	e8 af ff ff ff       	callq  400b36 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2a6>
  400b87:	5d                   	pop    %rbp
  400b88:	c3                   	retq   
  400b89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400b90:	41 57                	push   %r15
  400b92:	41 56                	push   %r14
  400b94:	41 89 ff             	mov    %edi,%r15d
  400b97:	41 55                	push   %r13
  400b99:	41 54                	push   %r12
  400b9b:	4c 8d 25 56 12 20 00 	lea    0x201256(%rip),%r12        # 601df8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201568>
  400ba2:	55                   	push   %rbp
  400ba3:	48 8d 2d 5e 12 20 00 	lea    0x20125e(%rip),%rbp        # 601e08 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201578>
  400baa:	53                   	push   %rbx
  400bab:	49 89 f6             	mov    %rsi,%r14
  400bae:	49 89 d5             	mov    %rdx,%r13
  400bb1:	4c 29 e5             	sub    %r12,%rbp
  400bb4:	48 83 ec 08          	sub    $0x8,%rsp
  400bb8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bbc:	e8 07 fc ff ff       	callq  4007c8 <setvbuf@plt-0x38>
  400bc1:	48 85 ed             	test   %rbp,%rbp
  400bc4:	74 20                	je     400be6 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x356>
  400bc6:	31 db                	xor    %ebx,%ebx
  400bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bcf:	00 
  400bd0:	4c 89 ea             	mov    %r13,%rdx
  400bd3:	4c 89 f6             	mov    %r14,%rsi
  400bd6:	44 89 ff             	mov    %r15d,%edi
  400bd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bdd:	48 83 c3 01          	add    $0x1,%rbx
  400be1:	48 39 eb             	cmp    %rbp,%rbx
  400be4:	75 ea                	jne    400bd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x340>
  400be6:	48 83 c4 08          	add    $0x8,%rsp
  400bea:	5b                   	pop    %rbx
  400beb:	5d                   	pop    %rbp
  400bec:	41 5c                	pop    %r12
  400bee:	41 5d                	pop    %r13
  400bf0:	41 5e                	pop    %r14
  400bf2:	41 5f                	pop    %r15
  400bf4:	c3                   	retq   
  400bf5:	90                   	nop
  400bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bfd:	00 00 00 
  400c00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c04 <.fini>:
  400c04:	48 83 ec 08          	sub    $0x8,%rsp
  400c08:	48 83 c4 08          	add    $0x8,%rsp
  400c0c:	c3                   	retq   
