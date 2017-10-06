
scv:     file format elf64-x86-64


Disassembly of section .init:

0000000000400898 <.init>:
  400898:	48 83 ec 08          	sub    $0x8,%rsp
  40089c:	48 8b 05 55 17 20 00 	mov    0x201755(%rip),%rax        # 601ff8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201678>
  4008a3:	48 85 c0             	test   %rax,%rax
  4008a6:	74 05                	je     4008ad <puts@plt-0x23>
  4008a8:	e8 e3 00 00 00       	callq  400990 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x10>
  4008ad:	48 83 c4 08          	add    $0x8,%rsp
  4008b1:	c3                   	retq   

Disassembly of section .plt:

00000000004008c0 <puts@plt-0x10>:
  4008c0:	ff 35 42 17 20 00    	pushq  0x201742(%rip)        # 602008 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201688>
  4008c6:	ff 25 44 17 20 00    	jmpq   *0x201744(%rip)        # 602010 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201690>
  4008cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008d0 <puts@plt>:
  4008d0:	ff 25 42 17 20 00    	jmpq   *0x201742(%rip)        # 602018 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201698>
  4008d6:	68 00 00 00 00       	pushq  $0x0
  4008db:	e9 e0 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

00000000004008e0 <setvbuf@plt>:
  4008e0:	ff 25 3a 17 20 00    	jmpq   *0x20173a(%rip)        # 602020 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016a0>
  4008e6:	68 01 00 00 00       	pushq  $0x1
  4008eb:	e9 d0 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

00000000004008f0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4008f0:	ff 25 32 17 20 00    	jmpq   *0x201732(%rip)        # 602028 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016a8>
  4008f6:	68 02 00 00 00       	pushq  $0x2
  4008fb:	e9 c0 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400900 <read@plt>:
  400900:	ff 25 2a 17 20 00    	jmpq   *0x20172a(%rip)        # 602030 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016b0>
  400906:	68 03 00 00 00       	pushq  $0x3
  40090b:	e9 b0 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400910 <__libc_start_main@plt>:
  400910:	ff 25 22 17 20 00    	jmpq   *0x201722(%rip)        # 602038 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016b8>
  400916:	68 04 00 00 00       	pushq  $0x4
  40091b:	e9 a0 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400920 <__cxa_atexit@plt>:
  400920:	ff 25 1a 17 20 00    	jmpq   *0x20171a(%rip)        # 602040 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016c0>
  400926:	68 05 00 00 00       	pushq  $0x5
  40092b:	e9 90 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400930 <_ZNSt8ios_base4InitD1Ev@plt>:
  400930:	ff 25 12 17 20 00    	jmpq   *0x201712(%rip)        # 602048 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016c8>
  400936:	68 06 00 00 00       	pushq  $0x6
  40093b:	e9 80 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  400940:	ff 25 0a 17 20 00    	jmpq   *0x20170a(%rip)        # 602050 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016d0>
  400946:	68 07 00 00 00       	pushq  $0x7
  40094b:	e9 70 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400950 <__stack_chk_fail@plt>:
  400950:	ff 25 02 17 20 00    	jmpq   *0x201702(%rip)        # 602058 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016d8>
  400956:	68 08 00 00 00       	pushq  $0x8
  40095b:	e9 60 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400960 <_ZNSirsERi@plt>:
  400960:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 602060 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016e0>
  400966:	68 09 00 00 00       	pushq  $0x9
  40096b:	e9 50 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400970 <_ZNSolsEPFRSoS_E@plt>:
  400970:	ff 25 f2 16 20 00    	jmpq   *0x2016f2(%rip)        # 602068 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016e8>
  400976:	68 0a 00 00 00       	pushq  $0xa
  40097b:	e9 40 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

0000000000400980 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  400980:	ff 25 ea 16 20 00    	jmpq   *0x2016ea(%rip)        # 602070 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x2016f0>
  400986:	68 0b 00 00 00       	pushq  $0xb
  40098b:	e9 30 ff ff ff       	jmpq   4008c0 <puts@plt-0x10>

Disassembly of section .plt.got:

0000000000400990 <.plt.got>:
  400990:	ff 25 62 16 20 00    	jmpq   *0x201662(%rip)        # 601ff8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201678>
  400996:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004009a0 <.text>:
  4009a0:	31 ed                	xor    %ebp,%ebp
  4009a2:	49 89 d1             	mov    %rdx,%r9
  4009a5:	5e                   	pop    %rsi
  4009a6:	48 89 e2             	mov    %rsp,%rdx
  4009a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4009ad:	50                   	push   %rax
  4009ae:	54                   	push   %rsp
  4009af:	49 c7 c0 b0 0e 40 00 	mov    $0x400eb0,%r8
  4009b6:	48 c7 c1 40 0e 40 00 	mov    $0x400e40,%rcx
  4009bd:	48 c7 c7 96 0a 40 00 	mov    $0x400a96,%rdi
  4009c4:	e8 47 ff ff ff       	callq  400910 <__libc_start_main@plt>
  4009c9:	f4                   	hlt    
  4009ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4009d0:	b8 8f 20 60 00       	mov    $0x60208f,%eax
  4009d5:	55                   	push   %rbp
  4009d6:	48 2d 88 20 60 00    	sub    $0x602088,%rax
  4009dc:	48 83 f8 0e          	cmp    $0xe,%rax
  4009e0:	48 89 e5             	mov    %rsp,%rbp
  4009e3:	76 1b                	jbe    400a00 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x80>
  4009e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4009ea:	48 85 c0             	test   %rax,%rax
  4009ed:	74 11                	je     400a00 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x80>
  4009ef:	5d                   	pop    %rbp
  4009f0:	bf 88 20 60 00       	mov    $0x602088,%edi
  4009f5:	ff e0                	jmpq   *%rax
  4009f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009fe:	00 00 
  400a00:	5d                   	pop    %rbp
  400a01:	c3                   	retq   
  400a02:	0f 1f 40 00          	nopl   0x0(%rax)
  400a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a0d:	00 00 00 
  400a10:	be 88 20 60 00       	mov    $0x602088,%esi
  400a15:	55                   	push   %rbp
  400a16:	48 81 ee 88 20 60 00 	sub    $0x602088,%rsi
  400a1d:	48 c1 fe 03          	sar    $0x3,%rsi
  400a21:	48 89 e5             	mov    %rsp,%rbp
  400a24:	48 89 f0             	mov    %rsi,%rax
  400a27:	48 c1 e8 3f          	shr    $0x3f,%rax
  400a2b:	48 01 c6             	add    %rax,%rsi
  400a2e:	48 d1 fe             	sar    %rsi
  400a31:	74 15                	je     400a48 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0xc8>
  400a33:	b8 00 00 00 00       	mov    $0x0,%eax
  400a38:	48 85 c0             	test   %rax,%rax
  400a3b:	74 0b                	je     400a48 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0xc8>
  400a3d:	5d                   	pop    %rbp
  400a3e:	bf 88 20 60 00       	mov    $0x602088,%edi
  400a43:	ff e0                	jmpq   *%rax
  400a45:	0f 1f 00             	nopl   (%rax)
  400a48:	5d                   	pop    %rbp
  400a49:	c3                   	retq   
  400a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400a50:	80 3d a1 18 20 00 00 	cmpb   $0x0,0x2018a1(%rip)        # 6022f8 <stdout@@GLIBC_2.2.5+0x8>
  400a57:	75 11                	jne    400a6a <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0xea>
  400a59:	55                   	push   %rbp
  400a5a:	48 89 e5             	mov    %rsp,%rbp
  400a5d:	e8 6e ff ff ff       	callq  4009d0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x50>
  400a62:	5d                   	pop    %rbp
  400a63:	c6 05 8e 18 20 00 01 	movb   $0x1,0x20188e(%rip)        # 6022f8 <stdout@@GLIBC_2.2.5+0x8>
  400a6a:	f3 c3                	repz retq 
  400a6c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a70:	bf 10 1e 60 00       	mov    $0x601e10,%edi
  400a75:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400a79:	75 05                	jne    400a80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x100>
  400a7b:	eb 93                	jmp    400a10 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x90>
  400a7d:	0f 1f 00             	nopl   (%rax)
  400a80:	b8 00 00 00 00       	mov    $0x0,%eax
  400a85:	48 85 c0             	test   %rax,%rax
  400a88:	74 f1                	je     400a7b <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0xfb>
  400a8a:	55                   	push   %rbp
  400a8b:	48 89 e5             	mov    %rsp,%rbp
  400a8e:	ff d0                	callq  *%rax
  400a90:	5d                   	pop    %rbp
  400a91:	e9 7a ff ff ff       	jmpq   400a10 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x90>
  400a96:	55                   	push   %rbp
  400a97:	48 89 e5             	mov    %rsp,%rbp
  400a9a:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
  400aa1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400aa8:	00 00 
  400aaa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400aae:	31 c0                	xor    %eax,%eax
  400ab0:	48 8b 05 39 18 20 00 	mov    0x201839(%rip),%rax        # 6022f0 <stdout@@GLIBC_2.2.5>
  400ab7:	b9 00 00 00 00       	mov    $0x0,%ecx
  400abc:	ba 02 00 00 00       	mov    $0x2,%edx
  400ac1:	be 00 00 00 00       	mov    $0x0,%esi
  400ac6:	48 89 c7             	mov    %rax,%rdi
  400ac9:	e8 12 fe ff ff       	callq  4008e0 <setvbuf@plt>
  400ace:	48 8b 05 eb 16 20 00 	mov    0x2016eb(%rip),%rax        # 6021c0 <stdin@@GLIBC_2.2.5>
  400ad5:	b9 00 00 00 00       	mov    $0x0,%ecx
  400ada:	ba 02 00 00 00       	mov    $0x2,%edx
  400adf:	be 00 00 00 00       	mov    $0x0,%esi
  400ae4:	48 89 c7             	mov    %rax,%rdi
  400ae7:	e8 f4 fd ff ff       	callq  4008e0 <setvbuf@plt>
  400aec:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%rbp)
  400af3:	00 00 00 
  400af6:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%rbp)
  400afd:	00 00 00 
  400b00:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%rbp)
  400b07:	00 00 00 
  400b0a:	83 bd 48 ff ff ff 00 	cmpl   $0x0,-0xb8(%rbp)
  400b11:	0f 84 ae 02 00 00    	je     400dc5 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x445>
  400b17:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400b1c:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400b21:	e8 1a fe ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400b26:	be 80 09 40 00       	mov    $0x400980,%esi
  400b2b:	48 89 c7             	mov    %rax,%rdi
  400b2e:	e8 3d fe ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400b33:	be e2 0e 40 00       	mov    $0x400ee2,%esi
  400b38:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400b3d:	e8 fe fd ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400b42:	be 80 09 40 00       	mov    $0x400980,%esi
  400b47:	48 89 c7             	mov    %rax,%rdi
  400b4a:	e8 21 fe ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400b4f:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400b54:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400b59:	e8 e2 fd ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400b5e:	be 80 09 40 00       	mov    $0x400980,%esi
  400b63:	48 89 c7             	mov    %rax,%rdi
  400b66:	e8 05 fe ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400b6b:	be fc 0e 40 00       	mov    $0x400efc,%esi
  400b70:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400b75:	e8 c6 fd ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400b7a:	be 80 09 40 00       	mov    $0x400980,%esi
  400b7f:	48 89 c7             	mov    %rax,%rdi
  400b82:	e8 e9 fd ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400b87:	be 0b 0f 40 00       	mov    $0x400f0b,%esi
  400b8c:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400b91:	e8 aa fd ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400b96:	be 80 09 40 00       	mov    $0x400980,%esi
  400b9b:	48 89 c7             	mov    %rax,%rdi
  400b9e:	e8 cd fd ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400ba3:	be 21 0f 40 00       	mov    $0x400f21,%esi
  400ba8:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400bad:	e8 8e fd ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400bb2:	be 80 09 40 00       	mov    $0x400980,%esi
  400bb7:	48 89 c7             	mov    %rax,%rdi
  400bba:	e8 b1 fd ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400bbf:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400bc4:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400bc9:	e8 72 fd ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400bce:	be 80 09 40 00       	mov    $0x400980,%esi
  400bd3:	48 89 c7             	mov    %rax,%rdi
  400bd6:	e8 95 fd ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400bdb:	be 35 0f 40 00       	mov    $0x400f35,%esi
  400be0:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400be5:	e8 56 fd ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400bea:	48 8d 85 44 ff ff ff 	lea    -0xbc(%rbp),%rax
  400bf1:	48 89 c6             	mov    %rax,%rsi
  400bf4:	bf a0 20 60 00       	mov    $0x6020a0,%edi
  400bf9:	e8 62 fd ff ff       	callq  400960 <_ZNSirsERi@plt>
  400bfe:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
  400c04:	83 f8 02             	cmp    $0x2,%eax
  400c07:	0f 84 d1 00 00 00    	je     400cde <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x35e>
  400c0d:	83 f8 03             	cmp    $0x3,%eax
  400c10:	0f 84 65 01 00 00    	je     400d7b <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x3fb>
  400c16:	83 f8 01             	cmp    $0x1,%eax
  400c19:	0f 85 84 01 00 00    	jne    400da3 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x423>
  400c1f:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400c24:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400c29:	e8 12 fd ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400c2e:	be 80 09 40 00       	mov    $0x400980,%esi
  400c33:	48 89 c7             	mov    %rax,%rdi
  400c36:	e8 35 fd ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400c3b:	be 38 0f 40 00       	mov    $0x400f38,%esi
  400c40:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400c45:	e8 f6 fc ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400c4a:	be 80 09 40 00       	mov    $0x400980,%esi
  400c4f:	48 89 c7             	mov    %rax,%rdi
  400c52:	e8 19 fd ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400c57:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400c5c:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400c61:	e8 da fc ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400c66:	be 80 09 40 00       	mov    $0x400980,%esi
  400c6b:	48 89 c7             	mov    %rax,%rdi
  400c6e:	e8 fd fc ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400c73:	be 55 0f 40 00       	mov    $0x400f55,%esi
  400c78:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400c7d:	e8 be fc ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400c82:	be 80 09 40 00       	mov    $0x400980,%esi
  400c87:	48 89 c7             	mov    %rax,%rdi
  400c8a:	e8 e1 fc ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400c8f:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400c94:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400c99:	e8 a2 fc ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400c9e:	be 80 09 40 00       	mov    $0x400980,%esi
  400ca3:	48 89 c7             	mov    %rax,%rdi
  400ca6:	e8 c5 fc ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400cab:	be 35 0f 40 00       	mov    $0x400f35,%esi
  400cb0:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400cb5:	e8 86 fc ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400cba:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  400cc1:	ba f8 00 00 00       	mov    $0xf8,%edx
  400cc6:	48 89 c6             	mov    %rax,%rsi
  400cc9:	bf 00 00 00 00       	mov    $0x0,%edi
  400cce:	e8 2d fc ff ff       	callq  400900 <read@plt>
  400cd3:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
  400cd9:	e9 e2 00 00 00       	jmpq   400dc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x440>
  400cde:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400ce3:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400ce8:	e8 53 fc ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400ced:	be 80 09 40 00       	mov    $0x400980,%esi
  400cf2:	48 89 c7             	mov    %rax,%rdi
  400cf5:	e8 76 fc ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400cfa:	be 72 0f 40 00       	mov    $0x400f72,%esi
  400cff:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400d04:	e8 37 fc ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400d09:	be 80 09 40 00       	mov    $0x400980,%esi
  400d0e:	48 89 c7             	mov    %rax,%rdi
  400d11:	e8 5a fc ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400d16:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400d1b:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400d20:	e8 1b fc ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400d25:	be 80 09 40 00       	mov    $0x400980,%esi
  400d2a:	48 89 c7             	mov    %rax,%rdi
  400d2d:	e8 3e fc ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400d32:	be 90 0f 40 00       	mov    $0x400f90,%esi
  400d37:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400d3c:	e8 ff fb ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400d41:	be 80 09 40 00       	mov    $0x400980,%esi
  400d46:	48 89 c7             	mov    %rax,%rdi
  400d49:	e8 22 fc ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400d4e:	be c8 0e 40 00       	mov    $0x400ec8,%esi
  400d53:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400d58:	e8 e3 fb ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400d5d:	be 80 09 40 00       	mov    $0x400980,%esi
  400d62:	48 89 c7             	mov    %rax,%rdi
  400d65:	e8 06 fc ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400d6a:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  400d71:	48 89 c7             	mov    %rax,%rdi
  400d74:	e8 57 fb ff ff       	callq  4008d0 <puts@plt>
  400d79:	eb 45                	jmp    400dc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x440>
  400d7b:	c7 85 48 ff ff ff 00 	movl   $0x0,-0xb8(%rbp)
  400d82:	00 00 00 
  400d85:	be b0 0f 40 00       	mov    $0x400fb0,%esi
  400d8a:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400d8f:	e8 ac fb ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400d94:	be 80 09 40 00       	mov    $0x400980,%esi
  400d99:	48 89 c7             	mov    %rax,%rdi
  400d9c:	e8 cf fb ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400da1:	eb 1d                	jmp    400dc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x440>
  400da3:	be d2 0f 40 00       	mov    $0x400fd2,%esi
  400da8:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  400dad:	e8 8e fb ff ff       	callq  400940 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400db2:	be 80 09 40 00       	mov    $0x400980,%esi
  400db7:	48 89 c7             	mov    %rax,%rdi
  400dba:	e8 b1 fb ff ff       	callq  400970 <_ZNSolsEPFRSoS_E@plt>
  400dbf:	90                   	nop
  400dc0:	e9 45 fd ff ff       	jmpq   400b0a <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x18a>
  400dc5:	b8 00 00 00 00       	mov    $0x0,%eax
  400dca:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400dce:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  400dd5:	00 00 
  400dd7:	74 05                	je     400dde <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x45e>
  400dd9:	e8 72 fb ff ff       	callq  400950 <__stack_chk_fail@plt>
  400dde:	c9                   	leaveq 
  400ddf:	c3                   	retq   
  400de0:	55                   	push   %rbp
  400de1:	48 89 e5             	mov    %rsp,%rbp
  400de4:	48 83 ec 10          	sub    $0x10,%rsp
  400de8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400deb:	89 75 f8             	mov    %esi,-0x8(%rbp)
  400dee:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  400df2:	75 27                	jne    400e1b <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x49b>
  400df4:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  400dfb:	75 1e                	jne    400e1b <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x49b>
  400dfd:	bf f9 22 60 00       	mov    $0x6022f9,%edi
  400e02:	e8 e9 fa ff ff       	callq  4008f0 <_ZNSt8ios_base4InitC1Ev@plt>
  400e07:	ba 80 20 60 00       	mov    $0x602080,%edx
  400e0c:	be f9 22 60 00       	mov    $0x6022f9,%esi
  400e11:	bf 30 09 40 00       	mov    $0x400930,%edi
  400e16:	e8 05 fb ff ff       	callq  400920 <__cxa_atexit@plt>
  400e1b:	90                   	nop
  400e1c:	c9                   	leaveq 
  400e1d:	c3                   	retq   
  400e1e:	55                   	push   %rbp
  400e1f:	48 89 e5             	mov    %rsp,%rbp
  400e22:	be ff ff 00 00       	mov    $0xffff,%esi
  400e27:	bf 01 00 00 00       	mov    $0x1,%edi
  400e2c:	e8 af ff ff ff       	callq  400de0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x460>
  400e31:	5d                   	pop    %rbp
  400e32:	c3                   	retq   
  400e33:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400e3a:	00 00 00 
  400e3d:	0f 1f 00             	nopl   (%rax)
  400e40:	41 57                	push   %r15
  400e42:	41 56                	push   %r14
  400e44:	41 89 ff             	mov    %edi,%r15d
  400e47:	41 55                	push   %r13
  400e49:	41 54                	push   %r12
  400e4b:	4c 8d 25 a6 0f 20 00 	lea    0x200fa6(%rip),%r12        # 601df8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201478>
  400e52:	55                   	push   %rbp
  400e53:	48 8d 2d ae 0f 20 00 	lea    0x200fae(%rip),%rbp        # 601e08 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x201488>
  400e5a:	53                   	push   %rbx
  400e5b:	49 89 f6             	mov    %rsi,%r14
  400e5e:	49 89 d5             	mov    %rdx,%r13
  400e61:	4c 29 e5             	sub    %r12,%rbp
  400e64:	48 83 ec 08          	sub    $0x8,%rsp
  400e68:	48 c1 fd 03          	sar    $0x3,%rbp
  400e6c:	e8 27 fa ff ff       	callq  400898 <puts@plt-0x38>
  400e71:	48 85 ed             	test   %rbp,%rbp
  400e74:	74 20                	je     400e96 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x516>
  400e76:	31 db                	xor    %ebx,%ebx
  400e78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400e7f:	00 
  400e80:	4c 89 ea             	mov    %r13,%rdx
  400e83:	4c 89 f6             	mov    %r14,%rsi
  400e86:	44 89 ff             	mov    %r15d,%edi
  400e89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400e8d:	48 83 c3 01          	add    $0x1,%rbx
  400e91:	48 39 eb             	cmp    %rbp,%rbx
  400e94:	75 ea                	jne    400e80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x500>
  400e96:	48 83 c4 08          	add    $0x8,%rsp
  400e9a:	5b                   	pop    %rbx
  400e9b:	5d                   	pop    %rbp
  400e9c:	41 5c                	pop    %r12
  400e9e:	41 5d                	pop    %r13
  400ea0:	41 5e                	pop    %r14
  400ea2:	41 5f                	pop    %r15
  400ea4:	c3                   	retq   
  400ea5:	90                   	nop
  400ea6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ead:	00 00 00 
  400eb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400eb4 <.fini>:
  400eb4:	48 83 ec 08          	sub    $0x8,%rsp
  400eb8:	48 83 c4 08          	add    $0x8,%rsp
  400ebc:	c3                   	retq   
