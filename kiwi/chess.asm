
chess:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <.init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 33 20 00 	mov    0x2033a5(%rip),%rax        # 603ff8 <socket@plt+0x203108>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 05                	je     400c5d <recv@plt-0x23>
  400c58:	e8 93 01 00 00       	callq  400df0 <__gmon_start__@plt>
  400c5d:	48 83 c4 08          	add    $0x8,%rsp
  400c61:	c3                   	retq   

Disassembly of section .plt:

0000000000400c70 <recv@plt-0x10>:
  400c70:	ff 35 92 33 20 00    	pushq  0x203392(%rip)        # 604008 <socket@plt+0x203118>
  400c76:	ff 25 94 33 20 00    	jmpq   *0x203394(%rip)        # 604010 <socket@plt+0x203120>
  400c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c80 <recv@plt>:
  400c80:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604018 <socket@plt+0x203128>
  400c86:	68 00 00 00 00       	pushq  $0x0
  400c8b:	e9 e0 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400c90 <putchar@plt>:
  400c90:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 604020 <socket@plt+0x203130>
  400c96:	68 01 00 00 00       	pushq  $0x1
  400c9b:	e9 d0 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400ca0 <__errno_location@plt>:
  400ca0:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 604028 <socket@plt+0x203138>
  400ca6:	68 02 00 00 00       	pushq  $0x2
  400cab:	e9 c0 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400cb0 <_exit@plt>:
  400cb0:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 604030 <socket@plt+0x203140>
  400cb6:	68 03 00 00 00       	pushq  $0x3
  400cbb:	e9 b0 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 604038 <socket@plt+0x203148>
  400cc6:	68 04 00 00 00       	pushq  $0x4
  400ccb:	e9 a0 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400cd0 <setsockopt@plt>:
  400cd0:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 604040 <socket@plt+0x203150>
  400cd6:	68 05 00 00 00       	pushq  $0x5
  400cdb:	e9 90 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400ce0 <write@plt>:
  400ce0:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 604048 <socket@plt+0x203158>
  400ce6:	68 06 00 00 00       	pushq  $0x6
  400ceb:	e9 80 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400cf0 <fclose@plt>:
  400cf0:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 604050 <socket@plt+0x203160>
  400cf6:	68 07 00 00 00       	pushq  $0x7
  400cfb:	e9 70 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d00 <strlen@plt>:
  400d00:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 604058 <socket@plt+0x203168>
  400d06:	68 08 00 00 00       	pushq  $0x8
  400d0b:	e9 60 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d10 <chdir@plt>:
  400d10:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604060 <socket@plt+0x203170>
  400d16:	68 09 00 00 00       	pushq  $0x9
  400d1b:	e9 50 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d20 <mmap@plt>:
  400d20:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604068 <socket@plt+0x203178>
  400d26:	68 0a 00 00 00       	pushq  $0xa
  400d2b:	e9 40 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d30 <htons@plt>:
  400d30:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604070 <socket@plt+0x203180>
  400d36:	68 0b 00 00 00       	pushq  $0xb
  400d3b:	e9 30 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d40 <dup2@plt>:
  400d40:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 604078 <socket@plt+0x203188>
  400d46:	68 0c 00 00 00       	pushq  $0xc
  400d4b:	e9 20 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d50 <send@plt>:
  400d50:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604080 <socket@plt+0x203190>
  400d56:	68 0d 00 00 00       	pushq  $0xd
  400d5b:	e9 10 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d60 <printf@plt>:
  400d60:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604088 <socket@plt+0x203198>
  400d66:	68 0e 00 00 00       	pushq  $0xe
  400d6b:	e9 00 ff ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d70 <htonl@plt>:
  400d70:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 604090 <socket@plt+0x2031a0>
  400d76:	68 0f 00 00 00       	pushq  $0xf
  400d7b:	e9 f0 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d80 <alarm@plt>:
  400d80:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 604098 <socket@plt+0x2031a8>
  400d86:	68 10 00 00 00       	pushq  $0x10
  400d8b:	e9 e0 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400d90 <close@plt>:
  400d90:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 6040a0 <socket@plt+0x2031b0>
  400d96:	68 11 00 00 00       	pushq  $0x11
  400d9b:	e9 d0 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400da0 <setgroups@plt>:
  400da0:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 6040a8 <socket@plt+0x2031b8>
  400da6:	68 12 00 00 00       	pushq  $0x12
  400dab:	e9 c0 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400db0 <read@plt>:
  400db0:	ff 25 fa 32 20 00    	jmpq   *0x2032fa(%rip)        # 6040b0 <socket@plt+0x2031c0>
  400db6:	68 13 00 00 00       	pushq  $0x13
  400dbb:	e9 b0 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400dc0 <__libc_start_main@plt>:
  400dc0:	ff 25 f2 32 20 00    	jmpq   *0x2032f2(%rip)        # 6040b8 <socket@plt+0x2031c8>
  400dc6:	68 14 00 00 00       	pushq  $0x14
  400dcb:	e9 a0 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400dd0 <signal@plt>:
  400dd0:	ff 25 ea 32 20 00    	jmpq   *0x2032ea(%rip)        # 6040c0 <socket@plt+0x2031d0>
  400dd6:	68 15 00 00 00       	pushq  $0x15
  400ddb:	e9 90 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400de0 <getpwnam@plt>:
  400de0:	ff 25 e2 32 20 00    	jmpq   *0x2032e2(%rip)        # 6040c8 <socket@plt+0x2031d8>
  400de6:	68 16 00 00 00       	pushq  $0x16
  400deb:	e9 80 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400df0 <__gmon_start__@plt>:
  400df0:	ff 25 da 32 20 00    	jmpq   *0x2032da(%rip)        # 6040d0 <socket@plt+0x2031e0>
  400df6:	68 17 00 00 00       	pushq  $0x17
  400dfb:	e9 70 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e00 <select@plt>:
  400e00:	ff 25 d2 32 20 00    	jmpq   *0x2032d2(%rip)        # 6040d8 <socket@plt+0x2031e8>
  400e06:	68 18 00 00 00       	pushq  $0x18
  400e0b:	e9 60 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e10 <_IO_getc@plt>:
  400e10:	ff 25 ca 32 20 00    	jmpq   *0x2032ca(%rip)        # 6040e0 <socket@plt+0x2031f0>
  400e16:	68 19 00 00 00       	pushq  $0x19
  400e1b:	e9 50 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e20 <listen@plt>:
  400e20:	ff 25 c2 32 20 00    	jmpq   *0x2032c2(%rip)        # 6040e8 <socket@plt+0x2031f8>
  400e26:	68 1a 00 00 00       	pushq  $0x1a
  400e2b:	e9 40 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e30 <munmap@plt>:
  400e30:	ff 25 ba 32 20 00    	jmpq   *0x2032ba(%rip)        # 6040f0 <socket@plt+0x203200>
  400e36:	68 1b 00 00 00       	pushq  $0x1b
  400e3b:	e9 30 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e40 <bind@plt>:
  400e40:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 6040f8 <socket@plt+0x203208>
  400e46:	68 1c 00 00 00       	pushq  $0x1c
  400e4b:	e9 20 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e50 <setgid@plt>:
  400e50:	ff 25 aa 32 20 00    	jmpq   *0x2032aa(%rip)        # 604100 <socket@plt+0x203210>
  400e56:	68 1d 00 00 00       	pushq  $0x1d
  400e5b:	e9 10 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e60 <fopen@plt>:
  400e60:	ff 25 a2 32 20 00    	jmpq   *0x2032a2(%rip)        # 604108 <socket@plt+0x203218>
  400e66:	68 1e 00 00 00       	pushq  $0x1e
  400e6b:	e9 00 fe ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e70 <perror@plt>:
  400e70:	ff 25 9a 32 20 00    	jmpq   *0x20329a(%rip)        # 604110 <socket@plt+0x203220>
  400e76:	68 1f 00 00 00       	pushq  $0x1f
  400e7b:	e9 f0 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e80 <bzero@plt>:
  400e80:	ff 25 92 32 20 00    	jmpq   *0x203292(%rip)        # 604118 <socket@plt+0x203228>
  400e86:	68 20 00 00 00       	pushq  $0x20
  400e8b:	e9 e0 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400e90 <accept@plt>:
  400e90:	ff 25 8a 32 20 00    	jmpq   *0x20328a(%rip)        # 604120 <socket@plt+0x203230>
  400e96:	68 21 00 00 00       	pushq  $0x21
  400e9b:	e9 d0 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400ea0 <atoi@plt>:
  400ea0:	ff 25 82 32 20 00    	jmpq   *0x203282(%rip)        # 604128 <socket@plt+0x203238>
  400ea6:	68 22 00 00 00       	pushq  $0x22
  400eab:	e9 c0 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400eb0 <exit@plt>:
  400eb0:	ff 25 7a 32 20 00    	jmpq   *0x20327a(%rip)        # 604130 <socket@plt+0x203240>
  400eb6:	68 23 00 00 00       	pushq  $0x23
  400ebb:	e9 b0 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400ec0 <fwrite@plt>:
  400ec0:	ff 25 72 32 20 00    	jmpq   *0x203272(%rip)        # 604138 <socket@plt+0x203248>
  400ec6:	68 24 00 00 00       	pushq  $0x24
  400ecb:	e9 a0 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400ed0 <setuid@plt>:
  400ed0:	ff 25 6a 32 20 00    	jmpq   *0x20326a(%rip)        # 604140 <socket@plt+0x203250>
  400ed6:	68 25 00 00 00       	pushq  $0x25
  400edb:	e9 90 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400ee0 <fork@plt>:
  400ee0:	ff 25 62 32 20 00    	jmpq   *0x203262(%rip)        # 604148 <socket@plt+0x203258>
  400ee6:	68 26 00 00 00       	pushq  $0x26
  400eeb:	e9 80 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

0000000000400ef0 <socket@plt>:
  400ef0:	ff 25 5a 32 20 00    	jmpq   *0x20325a(%rip)        # 604150 <socket@plt+0x203260>
  400ef6:	68 27 00 00 00       	pushq  $0x27
  400efb:	e9 70 fd ff ff       	jmpq   400c70 <recv@plt-0x10>

Disassembly of section .text:

0000000000400f00 <.text>:
  400f00:	31 ed                	xor    %ebp,%ebp
  400f02:	49 89 d1             	mov    %rdx,%r9
  400f05:	5e                   	pop    %rsi
  400f06:	48 89 e2             	mov    %rsp,%rdx
  400f09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f0d:	50                   	push   %rax
  400f0e:	54                   	push   %rsp
  400f0f:	49 c7 c0 90 2a 40 00 	mov    $0x402a90,%r8
  400f16:	48 c7 c1 20 2a 40 00 	mov    $0x402a20,%rcx
  400f1d:	48 c7 c7 00 28 40 00 	mov    $0x402800,%rdi
  400f24:	e8 97 fe ff ff       	callq  400dc0 <__libc_start_main@plt>
  400f29:	f4                   	hlt    
  400f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400f30:	b8 77 41 60 00       	mov    $0x604177,%eax
  400f35:	55                   	push   %rbp
  400f36:	48 2d 70 41 60 00    	sub    $0x604170,%rax
  400f3c:	48 83 f8 0e          	cmp    $0xe,%rax
  400f40:	48 89 e5             	mov    %rsp,%rbp
  400f43:	77 02                	ja     400f47 <socket@plt+0x57>
  400f45:	5d                   	pop    %rbp
  400f46:	c3                   	retq   
  400f47:	b8 00 00 00 00       	mov    $0x0,%eax
  400f4c:	48 85 c0             	test   %rax,%rax
  400f4f:	74 f4                	je     400f45 <socket@plt+0x55>
  400f51:	5d                   	pop    %rbp
  400f52:	bf 70 41 60 00       	mov    $0x604170,%edi
  400f57:	ff e0                	jmpq   *%rax
  400f59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400f60:	b8 70 41 60 00       	mov    $0x604170,%eax
  400f65:	55                   	push   %rbp
  400f66:	48 2d 70 41 60 00    	sub    $0x604170,%rax
  400f6c:	48 c1 f8 03          	sar    $0x3,%rax
  400f70:	48 89 e5             	mov    %rsp,%rbp
  400f73:	48 89 c2             	mov    %rax,%rdx
  400f76:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400f7a:	48 01 d0             	add    %rdx,%rax
  400f7d:	48 d1 f8             	sar    %rax
  400f80:	75 02                	jne    400f84 <socket@plt+0x94>
  400f82:	5d                   	pop    %rbp
  400f83:	c3                   	retq   
  400f84:	ba 00 00 00 00       	mov    $0x0,%edx
  400f89:	48 85 d2             	test   %rdx,%rdx
  400f8c:	74 f4                	je     400f82 <socket@plt+0x92>
  400f8e:	5d                   	pop    %rbp
  400f8f:	48 89 c6             	mov    %rax,%rsi
  400f92:	bf 70 41 60 00       	mov    $0x604170,%edi
  400f97:	ff e2                	jmpq   *%rdx
  400f99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400fa0:	80 3d d1 31 20 00 00 	cmpb   $0x0,0x2031d1(%rip)        # 604178 <stderr@@GLIBC_2.2.5+0x8>
  400fa7:	75 11                	jne    400fba <socket@plt+0xca>
  400fa9:	55                   	push   %rbp
  400faa:	48 89 e5             	mov    %rsp,%rbp
  400fad:	e8 7e ff ff ff       	callq  400f30 <socket@plt+0x40>
  400fb2:	5d                   	pop    %rbp
  400fb3:	c6 05 be 31 20 00 01 	movb   $0x1,0x2031be(%rip)        # 604178 <stderr@@GLIBC_2.2.5+0x8>
  400fba:	f3 c3                	repz retq 
  400fbc:	0f 1f 40 00          	nopl   0x0(%rax)
  400fc0:	48 83 3d 58 2e 20 00 	cmpq   $0x0,0x202e58(%rip)        # 603e20 <socket@plt+0x202f30>
  400fc7:	00 
  400fc8:	74 1e                	je     400fe8 <socket@plt+0xf8>
  400fca:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcf:	48 85 c0             	test   %rax,%rax
  400fd2:	74 14                	je     400fe8 <socket@plt+0xf8>
  400fd4:	55                   	push   %rbp
  400fd5:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400fda:	48 89 e5             	mov    %rsp,%rbp
  400fdd:	ff d0                	callq  *%rax
  400fdf:	5d                   	pop    %rbp
  400fe0:	e9 7b ff ff ff       	jmpq   400f60 <socket@plt+0x70>
  400fe5:	0f 1f 00             	nopl   (%rax)
  400fe8:	e9 73 ff ff ff       	jmpq   400f60 <socket@plt+0x70>
  400fed:	55                   	push   %rbp
  400fee:	48 89 e5             	mov    %rsp,%rbp
  400ff1:	89 f8                	mov    %edi,%eax
  400ff3:	88 45 fc             	mov    %al,-0x4(%rbp)
  400ff6:	80 7d fc 51          	cmpb   $0x51,-0x4(%rbp)
  400ffa:	74 1e                	je     40101a <socket@plt+0x12a>
  400ffc:	80 7d fc 50          	cmpb   $0x50,-0x4(%rbp)
  401000:	74 18                	je     40101a <socket@plt+0x12a>
  401002:	80 7d fc 42          	cmpb   $0x42,-0x4(%rbp)
  401006:	74 12                	je     40101a <socket@plt+0x12a>
  401008:	80 7d fc 52          	cmpb   $0x52,-0x4(%rbp)
  40100c:	74 0c                	je     40101a <socket@plt+0x12a>
  40100e:	80 7d fc 4b          	cmpb   $0x4b,-0x4(%rbp)
  401012:	74 06                	je     40101a <socket@plt+0x12a>
  401014:	80 7d fc 48          	cmpb   $0x48,-0x4(%rbp)
  401018:	75 07                	jne    401021 <socket@plt+0x131>
  40101a:	b8 01 00 00 00       	mov    $0x1,%eax
  40101f:	eb 30                	jmp    401051 <socket@plt+0x161>
  401021:	80 7d fc 71          	cmpb   $0x71,-0x4(%rbp)
  401025:	74 1e                	je     401045 <socket@plt+0x155>
  401027:	80 7d fc 70          	cmpb   $0x70,-0x4(%rbp)
  40102b:	74 18                	je     401045 <socket@plt+0x155>
  40102d:	80 7d fc 62          	cmpb   $0x62,-0x4(%rbp)
  401031:	74 12                	je     401045 <socket@plt+0x155>
  401033:	80 7d fc 72          	cmpb   $0x72,-0x4(%rbp)
  401037:	74 0c                	je     401045 <socket@plt+0x155>
  401039:	80 7d fc 6b          	cmpb   $0x6b,-0x4(%rbp)
  40103d:	74 06                	je     401045 <socket@plt+0x155>
  40103f:	80 7d fc 68          	cmpb   $0x68,-0x4(%rbp)
  401043:	75 07                	jne    40104c <socket@plt+0x15c>
  401045:	b8 00 00 00 00       	mov    $0x0,%eax
  40104a:	eb 05                	jmp    401051 <socket@plt+0x161>
  40104c:	b8 2e 00 00 00       	mov    $0x2e,%eax
  401051:	5d                   	pop    %rbp
  401052:	c3                   	retq   
  401053:	55                   	push   %rbp
  401054:	48 89 e5             	mov    %rsp,%rbp
  401057:	48 83 ec 20          	sub    $0x20,%rsp
  40105b:	c7 45 fc 07 00 00 00 	movl   $0x7,-0x4(%rbp)
  401062:	e9 c7 00 00 00       	jmpq   40112e <socket@plt+0x23e>
  401067:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
  40106b:	75 40                	jne    4010ad <socket@plt+0x1bd>
  40106d:	bf a8 2a 40 00       	mov    $0x402aa8,%edi
  401072:	b8 00 00 00 00       	mov    $0x0,%eax
  401077:	e8 e4 fc ff ff       	callq  400d60 <printf@plt>
  40107c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  401083:	eb 18                	jmp    40109d <socket@plt+0x1ad>
  401085:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401088:	89 c6                	mov    %eax,%esi
  40108a:	bf ab 2a 40 00       	mov    $0x402aab,%edi
  40108f:	b8 00 00 00 00       	mov    $0x0,%eax
  401094:	e8 c7 fc ff ff       	callq  400d60 <printf@plt>
  401099:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  40109d:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
  4010a1:	7e e2                	jle    401085 <socket@plt+0x195>
  4010a3:	bf 0a 00 00 00       	mov    $0xa,%edi
  4010a8:	e8 e3 fb ff ff       	callq  400c90 <putchar@plt>
  4010ad:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4010b0:	83 c0 30             	add    $0x30,%eax
  4010b3:	88 45 e0             	mov    %al,-0x20(%rbp)
  4010b6:	c6 45 e1 20          	movb   $0x20,-0x1f(%rbp)
  4010ba:	c6 45 e2 00          	movb   $0x0,-0x1e(%rbp)
  4010be:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4010c2:	b9 00 00 00 00       	mov    $0x0,%ecx
  4010c7:	ba 02 00 00 00       	mov    $0x2,%edx
  4010cc:	48 89 c6             	mov    %rax,%rsi
  4010cf:	bf 00 00 00 00       	mov    $0x0,%edi
  4010d4:	e8 6d 13 00 00       	callq  402446 <socket@plt+0x1556>
  4010d9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4010e0:	eb 38                	jmp    40111a <socket@plt+0x22a>
  4010e2:	48 8b 05 97 30 20 00 	mov    0x203097(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4010e9:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4010ec:	48 63 d2             	movslq %edx,%rdx
  4010ef:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  4010f2:	48 63 c9             	movslq %ecx,%rcx
  4010f5:	48 c1 e1 03          	shl    $0x3,%rcx
  4010f9:	48 01 ca             	add    %rcx,%rdx
  4010fc:	48 01 d0             	add    %rdx,%rax
  4010ff:	b9 00 00 00 00       	mov    $0x0,%ecx
  401104:	ba 01 00 00 00       	mov    $0x1,%edx
  401109:	48 89 c6             	mov    %rax,%rsi
  40110c:	bf 00 00 00 00       	mov    $0x0,%edi
  401111:	e8 30 13 00 00       	callq  402446 <socket@plt+0x1556>
  401116:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  40111a:	83 7d f4 07          	cmpl   $0x7,-0xc(%rbp)
  40111e:	7e c2                	jle    4010e2 <socket@plt+0x1f2>
  401120:	bf 0a 00 00 00       	mov    $0xa,%edi
  401125:	e8 66 fb ff ff       	callq  400c90 <putchar@plt>
  40112a:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
  40112e:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  401132:	0f 89 2f ff ff ff    	jns    401067 <socket@plt+0x177>
  401138:	c9                   	leaveq 
  401139:	c3                   	retq   
  40113a:	55                   	push   %rbp
  40113b:	48 89 e5             	mov    %rsp,%rbp
  40113e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401145:	eb 36                	jmp    40117d <socket@plt+0x28d>
  401147:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40114e:	eb 23                	jmp    401173 <socket@plt+0x283>
  401150:	48 8b 15 29 30 20 00 	mov    0x203029(%rip),%rdx        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401157:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40115a:	48 63 c8             	movslq %eax,%rcx
  40115d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401160:	48 98                	cltq   
  401162:	48 c1 e0 03          	shl    $0x3,%rax
  401166:	48 01 c8             	add    %rcx,%rax
  401169:	48 01 d0             	add    %rdx,%rax
  40116c:	c6 00 2e             	movb   $0x2e,(%rax)
  40116f:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  401173:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
  401177:	7e d7                	jle    401150 <socket@plt+0x260>
  401179:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40117d:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
  401181:	7e c4                	jle    401147 <socket@plt+0x257>
  401183:	48 8b 05 f6 2f 20 00 	mov    0x202ff6(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  40118a:	c6 00 52             	movb   $0x52,(%rax)
  40118d:	48 8b 05 ec 2f 20 00 	mov    0x202fec(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401194:	c6 40 08 48          	movb   $0x48,0x8(%rax)
  401198:	48 8b 05 e1 2f 20 00 	mov    0x202fe1(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  40119f:	c6 40 10 42          	movb   $0x42,0x10(%rax)
  4011a3:	48 8b 05 d6 2f 20 00 	mov    0x202fd6(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4011aa:	c6 40 18 51          	movb   $0x51,0x18(%rax)
  4011ae:	48 8b 05 cb 2f 20 00 	mov    0x202fcb(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4011b5:	c6 40 20 4b          	movb   $0x4b,0x20(%rax)
  4011b9:	48 8b 05 c0 2f 20 00 	mov    0x202fc0(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4011c0:	c6 40 28 42          	movb   $0x42,0x28(%rax)
  4011c4:	48 8b 05 b5 2f 20 00 	mov    0x202fb5(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4011cb:	c6 40 30 48          	movb   $0x48,0x30(%rax)
  4011cf:	48 8b 05 aa 2f 20 00 	mov    0x202faa(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4011d6:	c6 40 38 52          	movb   $0x52,0x38(%rax)
  4011da:	48 8b 05 9f 2f 20 00 	mov    0x202f9f(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4011e1:	c6 40 01 50          	movb   $0x50,0x1(%rax)
  4011e5:	48 8b 05 94 2f 20 00 	mov    0x202f94(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4011ec:	c6 40 09 50          	movb   $0x50,0x9(%rax)
  4011f0:	48 8b 05 89 2f 20 00 	mov    0x202f89(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4011f7:	c6 40 11 50          	movb   $0x50,0x11(%rax)
  4011fb:	48 8b 05 7e 2f 20 00 	mov    0x202f7e(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401202:	c6 40 19 50          	movb   $0x50,0x19(%rax)
  401206:	48 8b 05 73 2f 20 00 	mov    0x202f73(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  40120d:	c6 40 21 50          	movb   $0x50,0x21(%rax)
  401211:	48 8b 05 68 2f 20 00 	mov    0x202f68(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401218:	c6 40 29 50          	movb   $0x50,0x29(%rax)
  40121c:	48 8b 05 5d 2f 20 00 	mov    0x202f5d(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401223:	c6 40 31 50          	movb   $0x50,0x31(%rax)
  401227:	48 8b 05 52 2f 20 00 	mov    0x202f52(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  40122e:	c6 40 39 50          	movb   $0x50,0x39(%rax)
  401232:	48 8b 05 47 2f 20 00 	mov    0x202f47(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401239:	c6 40 06 70          	movb   $0x70,0x6(%rax)
  40123d:	48 8b 05 3c 2f 20 00 	mov    0x202f3c(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401244:	c6 40 0e 70          	movb   $0x70,0xe(%rax)
  401248:	48 8b 05 31 2f 20 00 	mov    0x202f31(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  40124f:	c6 40 16 70          	movb   $0x70,0x16(%rax)
  401253:	48 8b 05 26 2f 20 00 	mov    0x202f26(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  40125a:	c6 40 1e 70          	movb   $0x70,0x1e(%rax)
  40125e:	48 8b 05 1b 2f 20 00 	mov    0x202f1b(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401265:	c6 40 26 70          	movb   $0x70,0x26(%rax)
  401269:	48 8b 05 10 2f 20 00 	mov    0x202f10(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401270:	c6 40 2e 70          	movb   $0x70,0x2e(%rax)
  401274:	48 8b 05 05 2f 20 00 	mov    0x202f05(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  40127b:	c6 40 36 70          	movb   $0x70,0x36(%rax)
  40127f:	48 8b 05 fa 2e 20 00 	mov    0x202efa(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401286:	c6 40 3e 70          	movb   $0x70,0x3e(%rax)
  40128a:	48 8b 05 ef 2e 20 00 	mov    0x202eef(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401291:	c6 40 07 72          	movb   $0x72,0x7(%rax)
  401295:	48 8b 05 e4 2e 20 00 	mov    0x202ee4(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  40129c:	c6 40 0f 68          	movb   $0x68,0xf(%rax)
  4012a0:	48 8b 05 d9 2e 20 00 	mov    0x202ed9(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4012a7:	c6 40 17 62          	movb   $0x62,0x17(%rax)
  4012ab:	48 8b 05 ce 2e 20 00 	mov    0x202ece(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4012b2:	c6 40 1f 71          	movb   $0x71,0x1f(%rax)
  4012b6:	48 8b 05 c3 2e 20 00 	mov    0x202ec3(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4012bd:	c6 40 27 6b          	movb   $0x6b,0x27(%rax)
  4012c1:	48 8b 05 b8 2e 20 00 	mov    0x202eb8(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4012c8:	c6 40 2f 62          	movb   $0x62,0x2f(%rax)
  4012cc:	48 8b 05 ad 2e 20 00 	mov    0x202ead(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4012d3:	c6 40 37 68          	movb   $0x68,0x37(%rax)
  4012d7:	48 8b 05 a2 2e 20 00 	mov    0x202ea2(%rip),%rax        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4012de:	c6 40 3f 72          	movb   $0x72,0x3f(%rax)
  4012e2:	5d                   	pop    %rbp
  4012e3:	c3                   	retq   
  4012e4:	55                   	push   %rbp
  4012e5:	48 89 e5             	mov    %rsp,%rbp
  4012e8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  4012ec:	48 8b 15 8d 2e 20 00 	mov    0x202e8d(%rip),%rdx        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4012f3:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4012f6:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  4012f9:	48 63 c9             	movslq %ecx,%rcx
  4012fc:	48 98                	cltq   
  4012fe:	48 c1 e0 03          	shl    $0x3,%rax
  401302:	48 01 c8             	add    %rcx,%rax
  401305:	48 01 d0             	add    %rdx,%rax
  401308:	0f b6 00             	movzbl (%rax),%eax
  40130b:	5d                   	pop    %rbp
  40130c:	c3                   	retq   
  40130d:	55                   	push   %rbp
  40130e:	48 89 e5             	mov    %rsp,%rbp
  401311:	53                   	push   %rbx
  401312:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
  401319:	48 89 f8             	mov    %rdi,%rax
  40131c:	48 89 f1             	mov    %rsi,%rcx
  40131f:	48 89 ca             	mov    %rcx,%rdx
  401322:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  401329:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  401330:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  401337:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40133b:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  401342:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  401346:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  40134d:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  401354:	48 89 c7             	mov    %rax,%rdi
  401357:	e8 88 ff ff ff       	callq  4012e4 <socket@plt+0x3f4>
  40135c:	88 45 cf             	mov    %al,-0x31(%rbp)
  40135f:	80 7d cf 48          	cmpb   $0x48,-0x31(%rbp)
  401363:	74 06                	je     40136b <socket@plt+0x47b>
  401365:	80 7d cf 68          	cmpb   $0x68,-0x31(%rbp)
  401369:	75 3b                	jne    4013a6 <socket@plt+0x4b6>
  40136b:	0f be 45 cf          	movsbl -0x31(%rbp),%eax
  40136f:	89 c7                	mov    %eax,%edi
  401371:	e8 77 fc ff ff       	callq  400fed <socket@plt+0xfd>
  401376:	89 c3                	mov    %eax,%ebx
  401378:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  40137c:	48 89 c7             	mov    %rax,%rdi
  40137f:	e8 60 ff ff ff       	callq  4012e4 <socket@plt+0x3f4>
  401384:	0f be c0             	movsbl %al,%eax
  401387:	89 c7                	mov    %eax,%edi
  401389:	e8 5f fc ff ff       	callq  400fed <socket@plt+0xfd>
  40138e:	39 c3                	cmp    %eax,%ebx
  401390:	74 0a                	je     40139c <socket@plt+0x4ac>
  401392:	b8 01 00 00 00       	mov    $0x1,%eax
  401397:	e9 dc 03 00 00       	jmpq   401778 <socket@plt+0x888>
  40139c:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a1:	e9 d2 03 00 00       	jmpq   401778 <socket@plt+0x888>
  4013a6:	0f be 45 cf          	movsbl -0x31(%rbp),%eax
  4013aa:	89 c7                	mov    %eax,%edi
  4013ac:	e8 3c fc ff ff       	callq  400fed <socket@plt+0xfd>
  4013b1:	83 f8 01             	cmp    $0x1,%eax
  4013b4:	75 28                	jne    4013de <socket@plt+0x4ee>
  4013b6:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4013bd:	48 89 c7             	mov    %rax,%rdi
  4013c0:	e8 1f ff ff ff       	callq  4012e4 <socket@plt+0x3f4>
  4013c5:	0f be c0             	movsbl %al,%eax
  4013c8:	89 c7                	mov    %eax,%edi
  4013ca:	e8 1e fc ff ff       	callq  400fed <socket@plt+0xfd>
  4013cf:	83 f8 01             	cmp    $0x1,%eax
  4013d2:	75 0a                	jne    4013de <socket@plt+0x4ee>
  4013d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4013d9:	e9 9a 03 00 00       	jmpq   401778 <socket@plt+0x888>
  4013de:	0f be 45 cf          	movsbl -0x31(%rbp),%eax
  4013e2:	89 c7                	mov    %eax,%edi
  4013e4:	e8 04 fc ff ff       	callq  400fed <socket@plt+0xfd>
  4013e9:	85 c0                	test   %eax,%eax
  4013eb:	75 27                	jne    401414 <socket@plt+0x524>
  4013ed:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4013f4:	48 89 c7             	mov    %rax,%rdi
  4013f7:	e8 e8 fe ff ff       	callq  4012e4 <socket@plt+0x3f4>
  4013fc:	0f be c0             	movsbl %al,%eax
  4013ff:	89 c7                	mov    %eax,%edi
  401401:	e8 e7 fb ff ff       	callq  400fed <socket@plt+0xfd>
  401406:	85 c0                	test   %eax,%eax
  401408:	75 0a                	jne    401414 <socket@plt+0x524>
  40140a:	b8 00 00 00 00       	mov    $0x0,%eax
  40140f:	e9 64 03 00 00       	jmpq   401778 <socket@plt+0x888>
  401414:	8b 95 40 ff ff ff    	mov    -0xc0(%rbp),%edx
  40141a:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  401420:	39 c2                	cmp    %eax,%edx
  401422:	0f 85 a2 00 00 00    	jne    4014ca <socket@plt+0x5da>
  401428:	8b 95 44 ff ff ff    	mov    -0xbc(%rbp),%edx
  40142e:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
  401434:	39 c2                	cmp    %eax,%edx
  401436:	7d 49                	jge    401481 <socket@plt+0x591>
  401438:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
  40143e:	83 c0 01             	add    $0x1,%eax
  401441:	89 45 e8             	mov    %eax,-0x18(%rbp)
  401444:	eb 2b                	jmp    401471 <socket@plt+0x581>
  401446:	8b 95 40 ff ff ff    	mov    -0xc0(%rbp),%edx
  40144c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40144f:	48 98                	cltq   
  401451:	89 94 c5 60 ff ff ff 	mov    %edx,-0xa0(%rbp,%rax,8)
  401458:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40145b:	8d 50 01             	lea    0x1(%rax),%edx
  40145e:	89 55 ec             	mov    %edx,-0x14(%rbp)
  401461:	48 98                	cltq   
  401463:	8b 55 e8             	mov    -0x18(%rbp),%edx
  401466:	89 94 c5 64 ff ff ff 	mov    %edx,-0x9c(%rbp,%rax,8)
  40146d:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  401471:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
  401477:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  40147a:	7d ca                	jge    401446 <socket@plt+0x556>
  40147c:	e9 64 02 00 00       	jmpq   4016e5 <socket@plt+0x7f5>
  401481:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
  401487:	83 e8 01             	sub    $0x1,%eax
  40148a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40148d:	eb 2b                	jmp    4014ba <socket@plt+0x5ca>
  40148f:	8b 95 40 ff ff ff    	mov    -0xc0(%rbp),%edx
  401495:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401498:	48 98                	cltq   
  40149a:	89 94 c5 60 ff ff ff 	mov    %edx,-0xa0(%rbp,%rax,8)
  4014a1:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4014a4:	8d 50 01             	lea    0x1(%rax),%edx
  4014a7:	89 55 ec             	mov    %edx,-0x14(%rbp)
  4014aa:	48 98                	cltq   
  4014ac:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4014af:	89 94 c5 64 ff ff ff 	mov    %edx,-0x9c(%rbp,%rax,8)
  4014b6:	83 6d e4 01          	subl   $0x1,-0x1c(%rbp)
  4014ba:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
  4014c0:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  4014c3:	7e ca                	jle    40148f <socket@plt+0x59f>
  4014c5:	e9 1b 02 00 00       	jmpq   4016e5 <socket@plt+0x7f5>
  4014ca:	8b 95 44 ff ff ff    	mov    -0xbc(%rbp),%edx
  4014d0:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
  4014d6:	39 c2                	cmp    %eax,%edx
  4014d8:	0f 85 a2 00 00 00    	jne    401580 <socket@plt+0x690>
  4014de:	8b 95 40 ff ff ff    	mov    -0xc0(%rbp),%edx
  4014e4:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  4014ea:	39 c2                	cmp    %eax,%edx
  4014ec:	7d 49                	jge    401537 <socket@plt+0x647>
  4014ee:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
  4014f4:	83 c0 01             	add    $0x1,%eax
  4014f7:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4014fa:	eb 2b                	jmp    401527 <socket@plt+0x637>
  4014fc:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4014ff:	48 98                	cltq   
  401501:	8b 55 e0             	mov    -0x20(%rbp),%edx
  401504:	89 94 c5 60 ff ff ff 	mov    %edx,-0xa0(%rbp,%rax,8)
  40150b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40150e:	8d 50 01             	lea    0x1(%rax),%edx
  401511:	89 55 ec             	mov    %edx,-0x14(%rbp)
  401514:	8b 95 44 ff ff ff    	mov    -0xbc(%rbp),%edx
  40151a:	48 98                	cltq   
  40151c:	89 94 c5 64 ff ff ff 	mov    %edx,-0x9c(%rbp,%rax,8)
  401523:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
  401527:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  40152d:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  401530:	7d ca                	jge    4014fc <socket@plt+0x60c>
  401532:	e9 ae 01 00 00       	jmpq   4016e5 <socket@plt+0x7f5>
  401537:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
  40153d:	83 e8 01             	sub    $0x1,%eax
  401540:	89 45 dc             	mov    %eax,-0x24(%rbp)
  401543:	eb 2b                	jmp    401570 <socket@plt+0x680>
  401545:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401548:	48 98                	cltq   
  40154a:	8b 55 dc             	mov    -0x24(%rbp),%edx
  40154d:	89 94 c5 60 ff ff ff 	mov    %edx,-0xa0(%rbp,%rax,8)
  401554:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401557:	8d 50 01             	lea    0x1(%rax),%edx
  40155a:	89 55 ec             	mov    %edx,-0x14(%rbp)
  40155d:	8b 95 44 ff ff ff    	mov    -0xbc(%rbp),%edx
  401563:	48 98                	cltq   
  401565:	89 94 c5 64 ff ff ff 	mov    %edx,-0x9c(%rbp,%rax,8)
  40156c:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
  401570:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  401576:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  401579:	7e ca                	jle    401545 <socket@plt+0x655>
  40157b:	e9 65 01 00 00       	jmpq   4016e5 <socket@plt+0x7f5>
  401580:	8b 95 48 ff ff ff    	mov    -0xb8(%rbp),%edx
  401586:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
  40158c:	29 c2                	sub    %eax,%edx
  40158e:	89 d0                	mov    %edx,%eax
  401590:	c1 f8 1f             	sar    $0x1f,%eax
  401593:	31 c2                	xor    %eax,%edx
  401595:	89 55 c8             	mov    %edx,-0x38(%rbp)
  401598:	29 45 c8             	sub    %eax,-0x38(%rbp)
  40159b:	8b 95 4c ff ff ff    	mov    -0xb4(%rbp),%edx
  4015a1:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
  4015a7:	29 c2                	sub    %eax,%edx
  4015a9:	89 d0                	mov    %edx,%eax
  4015ab:	99                   	cltd   
  4015ac:	31 d0                	xor    %edx,%eax
  4015ae:	29 d0                	sub    %edx,%eax
  4015b0:	3b 45 c8             	cmp    -0x38(%rbp),%eax
  4015b3:	0f 85 2c 01 00 00    	jne    4016e5 <socket@plt+0x7f5>
  4015b9:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
  4015c0:	e9 14 01 00 00       	jmpq   4016d9 <socket@plt+0x7e9>
  4015c5:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  4015c8:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  4015cb:	39 c2                	cmp    %eax,%edx
  4015cd:	7e 3d                	jle    40160c <socket@plt+0x71c>
  4015cf:	8b 55 a0             	mov    -0x60(%rbp),%edx
  4015d2:	8b 45 b0             	mov    -0x50(%rbp),%eax
  4015d5:	39 c2                	cmp    %eax,%edx
  4015d7:	7e 33                	jle    40160c <socket@plt+0x71c>
  4015d9:	8b 55 b0             	mov    -0x50(%rbp),%edx
  4015dc:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4015df:	01 c2                	add    %eax,%edx
  4015e1:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4015e4:	48 98                	cltq   
  4015e6:	89 94 c5 60 ff ff ff 	mov    %edx,-0xa0(%rbp,%rax,8)
  4015ed:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4015f0:	8d 50 01             	lea    0x1(%rax),%edx
  4015f3:	89 55 ec             	mov    %edx,-0x14(%rbp)
  4015f6:	8b 4d b4             	mov    -0x4c(%rbp),%ecx
  4015f9:	8b 55 d8             	mov    -0x28(%rbp),%edx
  4015fc:	01 ca                	add    %ecx,%edx
  4015fe:	48 98                	cltq   
  401600:	89 94 c5 64 ff ff ff 	mov    %edx,-0x9c(%rbp,%rax,8)
  401607:	e9 c9 00 00 00       	jmpq   4016d5 <socket@plt+0x7e5>
  40160c:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  40160f:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  401612:	39 c2                	cmp    %eax,%edx
  401614:	7e 3d                	jle    401653 <socket@plt+0x763>
  401616:	8b 55 a0             	mov    -0x60(%rbp),%edx
  401619:	8b 45 b0             	mov    -0x50(%rbp),%eax
  40161c:	39 c2                	cmp    %eax,%edx
  40161e:	7d 33                	jge    401653 <socket@plt+0x763>
  401620:	8b 45 b0             	mov    -0x50(%rbp),%eax
  401623:	2b 45 d8             	sub    -0x28(%rbp),%eax
  401626:	89 c2                	mov    %eax,%edx
  401628:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40162b:	48 98                	cltq   
  40162d:	89 94 c5 60 ff ff ff 	mov    %edx,-0xa0(%rbp,%rax,8)
  401634:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401637:	8d 50 01             	lea    0x1(%rax),%edx
  40163a:	89 55 ec             	mov    %edx,-0x14(%rbp)
  40163d:	8b 4d b4             	mov    -0x4c(%rbp),%ecx
  401640:	8b 55 d8             	mov    -0x28(%rbp),%edx
  401643:	01 ca                	add    %ecx,%edx
  401645:	48 98                	cltq   
  401647:	89 94 c5 64 ff ff ff 	mov    %edx,-0x9c(%rbp,%rax,8)
  40164e:	e9 82 00 00 00       	jmpq   4016d5 <socket@plt+0x7e5>
  401653:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  401656:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  401659:	39 c2                	cmp    %eax,%edx
  40165b:	7d 38                	jge    401695 <socket@plt+0x7a5>
  40165d:	8b 55 a0             	mov    -0x60(%rbp),%edx
  401660:	8b 45 b0             	mov    -0x50(%rbp),%eax
  401663:	39 c2                	cmp    %eax,%edx
  401665:	7e 2e                	jle    401695 <socket@plt+0x7a5>
  401667:	8b 55 b0             	mov    -0x50(%rbp),%edx
  40166a:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40166d:	01 c2                	add    %eax,%edx
  40166f:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401672:	48 98                	cltq   
  401674:	89 94 c5 60 ff ff ff 	mov    %edx,-0xa0(%rbp,%rax,8)
  40167b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40167e:	8d 50 01             	lea    0x1(%rax),%edx
  401681:	89 55 ec             	mov    %edx,-0x14(%rbp)
  401684:	8b 55 b4             	mov    -0x4c(%rbp),%edx
  401687:	2b 55 d8             	sub    -0x28(%rbp),%edx
  40168a:	48 98                	cltq   
  40168c:	89 94 c5 64 ff ff ff 	mov    %edx,-0x9c(%rbp,%rax,8)
  401693:	eb 40                	jmp    4016d5 <socket@plt+0x7e5>
  401695:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  401698:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  40169b:	39 c2                	cmp    %eax,%edx
  40169d:	7d 36                	jge    4016d5 <socket@plt+0x7e5>
  40169f:	8b 55 a0             	mov    -0x60(%rbp),%edx
  4016a2:	8b 45 b0             	mov    -0x50(%rbp),%eax
  4016a5:	39 c2                	cmp    %eax,%edx
  4016a7:	7d 2c                	jge    4016d5 <socket@plt+0x7e5>
  4016a9:	8b 45 b0             	mov    -0x50(%rbp),%eax
  4016ac:	2b 45 d8             	sub    -0x28(%rbp),%eax
  4016af:	89 c2                	mov    %eax,%edx
  4016b1:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4016b4:	48 98                	cltq   
  4016b6:	89 94 c5 60 ff ff ff 	mov    %edx,-0xa0(%rbp,%rax,8)
  4016bd:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4016c0:	8d 50 01             	lea    0x1(%rax),%edx
  4016c3:	89 55 ec             	mov    %edx,-0x14(%rbp)
  4016c6:	8b 55 b4             	mov    -0x4c(%rbp),%edx
  4016c9:	2b 55 d8             	sub    -0x28(%rbp),%edx
  4016cc:	48 98                	cltq   
  4016ce:	89 94 c5 64 ff ff ff 	mov    %edx,-0x9c(%rbp,%rax,8)
  4016d5:	83 45 d8 01          	addl   $0x1,-0x28(%rbp)
  4016d9:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4016dc:	3b 45 c8             	cmp    -0x38(%rbp),%eax
  4016df:	0f 8e e0 fe ff ff    	jle    4015c5 <socket@plt+0x6d5>
  4016e5:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
  4016ec:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
  4016f3:	eb 76                	jmp    40176b <socket@plt+0x87b>
  4016f5:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
  4016f9:	7e 07                	jle    401702 <socket@plt+0x812>
  4016fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401700:	eb 76                	jmp    401778 <socket@plt+0x888>
  401702:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401705:	48 98                	cltq   
  401707:	8b 84 c5 60 ff ff ff 	mov    -0xa0(%rbp,%rax,8),%eax
  40170e:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  401714:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401717:	48 98                	cltq   
  401719:	8b 84 c5 64 ff ff ff 	mov    -0x9c(%rbp,%rax,8),%eax
  401720:	89 85 54 ff ff ff    	mov    %eax,-0xac(%rbp)
  401726:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  40172d:	48 89 c7             	mov    %rax,%rdi
  401730:	e8 af fb ff ff       	callq  4012e4 <socket@plt+0x3f4>
  401735:	88 45 c7             	mov    %al,-0x39(%rbp)
  401738:	80 7d c7 2e          	cmpb   $0x2e,-0x39(%rbp)
  40173c:	74 29                	je     401767 <socket@plt+0x877>
  40173e:	0f be 45 cf          	movsbl -0x31(%rbp),%eax
  401742:	89 c7                	mov    %eax,%edi
  401744:	e8 a4 f8 ff ff       	callq  400fed <socket@plt+0xfd>
  401749:	89 c3                	mov    %eax,%ebx
  40174b:	0f be 45 c7          	movsbl -0x39(%rbp),%eax
  40174f:	89 c7                	mov    %eax,%edi
  401751:	e8 97 f8 ff ff       	callq  400fed <socket@plt+0xfd>
  401756:	39 c3                	cmp    %eax,%ebx
  401758:	74 06                	je     401760 <socket@plt+0x870>
  40175a:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
  40175e:	eb 07                	jmp    401767 <socket@plt+0x877>
  401760:	b8 00 00 00 00       	mov    $0x0,%eax
  401765:	eb 11                	jmp    401778 <socket@plt+0x888>
  401767:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
  40176b:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40176e:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  401771:	7c 82                	jl     4016f5 <socket@plt+0x805>
  401773:	b8 01 00 00 00       	mov    $0x1,%eax
  401778:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
  40177f:	5b                   	pop    %rbx
  401780:	5d                   	pop    %rbp
  401781:	c3                   	retq   
  401782:	55                   	push   %rbp
  401783:	48 89 e5             	mov    %rsp,%rbp
  401786:	48 83 ec 40          	sub    $0x40,%rsp
  40178a:	48 89 f8             	mov    %rdi,%rax
  40178d:	48 89 f1             	mov    %rsi,%rcx
  401790:	48 89 ca             	mov    %rcx,%rdx
  401793:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401797:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  40179b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40179f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4017a3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4017a7:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4017ab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4017af:	48 89 c7             	mov    %rax,%rdi
  4017b2:	e8 2d fb ff ff       	callq  4012e4 <socket@plt+0x3f4>
  4017b7:	0f be c0             	movsbl %al,%eax
  4017ba:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4017bd:	0f b6 05 a4 29 20 00 	movzbl 0x2029a4(%rip),%eax        # 604168 <socket@plt+0x203278>
  4017c4:	3c 01                	cmp    $0x1,%al
  4017c6:	75 1b                	jne    4017e3 <socket@plt+0x8f3>
  4017c8:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4017cb:	0f be c0             	movsbl %al,%eax
  4017ce:	89 c7                	mov    %eax,%edi
  4017d0:	e8 18 f8 ff ff       	callq  400fed <socket@plt+0xfd>
  4017d5:	85 c0                	test   %eax,%eax
  4017d7:	75 26                	jne    4017ff <socket@plt+0x90f>
  4017d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4017de:	e9 ed 04 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  4017e3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4017e6:	0f be c0             	movsbl %al,%eax
  4017e9:	89 c7                	mov    %eax,%edi
  4017eb:	e8 fd f7 ff ff       	callq  400fed <socket@plt+0xfd>
  4017f0:	83 f8 01             	cmp    $0x1,%eax
  4017f3:	75 0a                	jne    4017ff <socket@plt+0x90f>
  4017f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4017fa:	e9 d1 04 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  4017ff:	83 7d fc 48          	cmpl   $0x48,-0x4(%rbp)
  401803:	0f 85 da 00 00 00    	jne    4018e3 <socket@plt+0x9f3>
  401809:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40180c:	8b 55 e0             	mov    -0x20(%rbp),%edx
  40180f:	83 c2 02             	add    $0x2,%edx
  401812:	39 d0                	cmp    %edx,%eax
  401814:	74 0d                	je     401823 <socket@plt+0x933>
  401816:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401819:	8b 55 e0             	mov    -0x20(%rbp),%edx
  40181c:	83 ea 02             	sub    $0x2,%edx
  40181f:	39 d0                	cmp    %edx,%eax
  401821:	75 4e                	jne    401871 <socket@plt+0x981>
  401823:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401826:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401829:	83 c2 01             	add    $0x1,%edx
  40182c:	39 d0                	cmp    %edx,%eax
  40182e:	74 0d                	je     40183d <socket@plt+0x94d>
  401830:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401833:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401836:	83 ea 01             	sub    $0x1,%edx
  401839:	39 d0                	cmp    %edx,%eax
  40183b:	75 34                	jne    401871 <socket@plt+0x981>
  40183d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401841:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401845:	48 89 d7             	mov    %rdx,%rdi
  401848:	48 89 c6             	mov    %rax,%rsi
  40184b:	e8 bd fa ff ff       	callq  40130d <socket@plt+0x41d>
  401850:	85 c0                	test   %eax,%eax
  401852:	74 1d                	je     401871 <socket@plt+0x981>
  401854:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401858:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40185c:	48 89 d7             	mov    %rdx,%rdi
  40185f:	48 89 c6             	mov    %rax,%rsi
  401862:	e8 6b 04 00 00       	callq  401cd2 <socket@plt+0xde2>
  401867:	b8 01 00 00 00       	mov    $0x1,%eax
  40186c:	e9 5f 04 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401871:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401874:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401877:	83 c2 02             	add    $0x2,%edx
  40187a:	39 d0                	cmp    %edx,%eax
  40187c:	74 0d                	je     40188b <socket@plt+0x99b>
  40187e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401881:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401884:	83 ea 02             	sub    $0x2,%edx
  401887:	39 d0                	cmp    %edx,%eax
  401889:	75 4e                	jne    4018d9 <socket@plt+0x9e9>
  40188b:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40188e:	8b 55 e0             	mov    -0x20(%rbp),%edx
  401891:	83 c2 01             	add    $0x1,%edx
  401894:	39 d0                	cmp    %edx,%eax
  401896:	74 0d                	je     4018a5 <socket@plt+0x9b5>
  401898:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40189b:	8b 55 e0             	mov    -0x20(%rbp),%edx
  40189e:	83 ea 01             	sub    $0x1,%edx
  4018a1:	39 d0                	cmp    %edx,%eax
  4018a3:	75 34                	jne    4018d9 <socket@plt+0x9e9>
  4018a5:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4018a9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4018ad:	48 89 d7             	mov    %rdx,%rdi
  4018b0:	48 89 c6             	mov    %rax,%rsi
  4018b3:	e8 55 fa ff ff       	callq  40130d <socket@plt+0x41d>
  4018b8:	85 c0                	test   %eax,%eax
  4018ba:	74 1d                	je     4018d9 <socket@plt+0x9e9>
  4018bc:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4018c0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4018c4:	48 89 d7             	mov    %rdx,%rdi
  4018c7:	48 89 c6             	mov    %rax,%rsi
  4018ca:	e8 03 04 00 00       	callq  401cd2 <socket@plt+0xde2>
  4018cf:	b8 01 00 00 00       	mov    $0x1,%eax
  4018d4:	e9 f7 03 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  4018d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4018de:	e9 ed 03 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  4018e3:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4018e6:	83 f8 07             	cmp    $0x7,%eax
  4018e9:	7f 16                	jg     401901 <socket@plt+0xa11>
  4018eb:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4018ee:	85 c0                	test   %eax,%eax
  4018f0:	78 0f                	js     401901 <socket@plt+0xa11>
  4018f2:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4018f5:	83 f8 07             	cmp    $0x7,%eax
  4018f8:	7f 07                	jg     401901 <socket@plt+0xa11>
  4018fa:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4018fd:	85 c0                	test   %eax,%eax
  4018ff:	79 0a                	jns    40190b <socket@plt+0xa1b>
  401901:	b8 00 00 00 00       	mov    $0x0,%eax
  401906:	e9 c5 03 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  40190b:	83 7d fc 2e          	cmpl   $0x2e,-0x4(%rbp)
  40190f:	75 0a                	jne    40191b <socket@plt+0xa2b>
  401911:	b8 00 00 00 00       	mov    $0x0,%eax
  401916:	e9 b5 03 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  40191b:	83 7d fc 50          	cmpl   $0x50,-0x4(%rbp)
  40191f:	75 57                	jne    401978 <socket@plt+0xa88>
  401921:	8b 55 d0             	mov    -0x30(%rbp),%edx
  401924:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401927:	39 c2                	cmp    %eax,%edx
  401929:	75 43                	jne    40196e <socket@plt+0xa7e>
  40192b:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40192e:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401931:	83 c2 01             	add    $0x1,%edx
  401934:	39 d0                	cmp    %edx,%eax
  401936:	75 36                	jne    40196e <socket@plt+0xa7e>
  401938:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  40193c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401940:	48 89 d7             	mov    %rdx,%rdi
  401943:	48 89 c6             	mov    %rax,%rsi
  401946:	e8 c2 f9 ff ff       	callq  40130d <socket@plt+0x41d>
  40194b:	85 c0                	test   %eax,%eax
  40194d:	74 1d                	je     40196c <socket@plt+0xa7c>
  40194f:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401953:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401957:	48 89 d7             	mov    %rdx,%rdi
  40195a:	48 89 c6             	mov    %rax,%rsi
  40195d:	e8 70 03 00 00       	callq  401cd2 <socket@plt+0xde2>
  401962:	b8 01 00 00 00       	mov    $0x1,%eax
  401967:	e9 64 03 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  40196c:	eb 0a                	jmp    401978 <socket@plt+0xa88>
  40196e:	b8 00 00 00 00       	mov    $0x0,%eax
  401973:	e9 58 03 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401978:	83 7d fc 70          	cmpl   $0x70,-0x4(%rbp)
  40197c:	75 57                	jne    4019d5 <socket@plt+0xae5>
  40197e:	8b 55 d0             	mov    -0x30(%rbp),%edx
  401981:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401984:	39 c2                	cmp    %eax,%edx
  401986:	75 43                	jne    4019cb <socket@plt+0xadb>
  401988:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40198b:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  40198e:	83 ea 01             	sub    $0x1,%edx
  401991:	39 d0                	cmp    %edx,%eax
  401993:	75 36                	jne    4019cb <socket@plt+0xadb>
  401995:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401999:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40199d:	48 89 d7             	mov    %rdx,%rdi
  4019a0:	48 89 c6             	mov    %rax,%rsi
  4019a3:	e8 65 f9 ff ff       	callq  40130d <socket@plt+0x41d>
  4019a8:	85 c0                	test   %eax,%eax
  4019aa:	74 1d                	je     4019c9 <socket@plt+0xad9>
  4019ac:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4019b0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4019b4:	48 89 d7             	mov    %rdx,%rdi
  4019b7:	48 89 c6             	mov    %rax,%rsi
  4019ba:	e8 13 03 00 00       	callq  401cd2 <socket@plt+0xde2>
  4019bf:	b8 01 00 00 00       	mov    $0x1,%eax
  4019c4:	e9 07 03 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  4019c9:	eb 0a                	jmp    4019d5 <socket@plt+0xae5>
  4019cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4019d0:	e9 fb 02 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  4019d5:	83 7d fc 68          	cmpl   $0x68,-0x4(%rbp)
  4019d9:	0f 85 da 00 00 00    	jne    401ab9 <socket@plt+0xbc9>
  4019df:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4019e2:	8b 55 e0             	mov    -0x20(%rbp),%edx
  4019e5:	83 c2 02             	add    $0x2,%edx
  4019e8:	39 d0                	cmp    %edx,%eax
  4019ea:	74 0d                	je     4019f9 <socket@plt+0xb09>
  4019ec:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4019ef:	8b 55 e0             	mov    -0x20(%rbp),%edx
  4019f2:	83 ea 02             	sub    $0x2,%edx
  4019f5:	39 d0                	cmp    %edx,%eax
  4019f7:	75 4e                	jne    401a47 <socket@plt+0xb57>
  4019f9:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4019fc:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4019ff:	83 c2 01             	add    $0x1,%edx
  401a02:	39 d0                	cmp    %edx,%eax
  401a04:	74 0d                	je     401a13 <socket@plt+0xb23>
  401a06:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401a09:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401a0c:	83 ea 01             	sub    $0x1,%edx
  401a0f:	39 d0                	cmp    %edx,%eax
  401a11:	75 34                	jne    401a47 <socket@plt+0xb57>
  401a13:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401a17:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401a1b:	48 89 d7             	mov    %rdx,%rdi
  401a1e:	48 89 c6             	mov    %rax,%rsi
  401a21:	e8 e7 f8 ff ff       	callq  40130d <socket@plt+0x41d>
  401a26:	85 c0                	test   %eax,%eax
  401a28:	74 1d                	je     401a47 <socket@plt+0xb57>
  401a2a:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401a2e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401a32:	48 89 d7             	mov    %rdx,%rdi
  401a35:	48 89 c6             	mov    %rax,%rsi
  401a38:	e8 95 02 00 00       	callq  401cd2 <socket@plt+0xde2>
  401a3d:	b8 01 00 00 00       	mov    $0x1,%eax
  401a42:	e9 89 02 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401a47:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401a4a:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401a4d:	83 c2 02             	add    $0x2,%edx
  401a50:	39 d0                	cmp    %edx,%eax
  401a52:	74 0d                	je     401a61 <socket@plt+0xb71>
  401a54:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401a57:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401a5a:	83 ea 02             	sub    $0x2,%edx
  401a5d:	39 d0                	cmp    %edx,%eax
  401a5f:	75 4e                	jne    401aaf <socket@plt+0xbbf>
  401a61:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401a64:	8b 55 e0             	mov    -0x20(%rbp),%edx
  401a67:	83 c2 01             	add    $0x1,%edx
  401a6a:	39 d0                	cmp    %edx,%eax
  401a6c:	74 0d                	je     401a7b <socket@plt+0xb8b>
  401a6e:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401a71:	8b 55 e0             	mov    -0x20(%rbp),%edx
  401a74:	83 ea 01             	sub    $0x1,%edx
  401a77:	39 d0                	cmp    %edx,%eax
  401a79:	75 34                	jne    401aaf <socket@plt+0xbbf>
  401a7b:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401a7f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401a83:	48 89 d7             	mov    %rdx,%rdi
  401a86:	48 89 c6             	mov    %rax,%rsi
  401a89:	e8 7f f8 ff ff       	callq  40130d <socket@plt+0x41d>
  401a8e:	85 c0                	test   %eax,%eax
  401a90:	74 1d                	je     401aaf <socket@plt+0xbbf>
  401a92:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401a96:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401a9a:	48 89 d7             	mov    %rdx,%rdi
  401a9d:	48 89 c6             	mov    %rax,%rsi
  401aa0:	e8 2d 02 00 00       	callq  401cd2 <socket@plt+0xde2>
  401aa5:	b8 01 00 00 00       	mov    $0x1,%eax
  401aaa:	e9 21 02 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401aaf:	b8 00 00 00 00       	mov    $0x0,%eax
  401ab4:	e9 17 02 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401ab9:	83 7d fc 42          	cmpl   $0x42,-0x4(%rbp)
  401abd:	74 06                	je     401ac5 <socket@plt+0xbd5>
  401abf:	83 7d fc 62          	cmpl   $0x62,-0x4(%rbp)
  401ac3:	75 67                	jne    401b2c <socket@plt+0xc3c>
  401ac5:	8b 55 d0             	mov    -0x30(%rbp),%edx
  401ac8:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401acb:	29 c2                	sub    %eax,%edx
  401acd:	89 d0                	mov    %edx,%eax
  401acf:	c1 f8 1f             	sar    $0x1f,%eax
  401ad2:	31 c2                	xor    %eax,%edx
  401ad4:	89 55 ec             	mov    %edx,-0x14(%rbp)
  401ad7:	29 45 ec             	sub    %eax,-0x14(%rbp)
  401ada:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  401add:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401ae0:	29 c2                	sub    %eax,%edx
  401ae2:	89 d0                	mov    %edx,%eax
  401ae4:	99                   	cltd   
  401ae5:	31 d0                	xor    %edx,%eax
  401ae7:	29 d0                	sub    %edx,%eax
  401ae9:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  401aec:	75 34                	jne    401b22 <socket@plt+0xc32>
  401aee:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401af2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401af6:	48 89 d7             	mov    %rdx,%rdi
  401af9:	48 89 c6             	mov    %rax,%rsi
  401afc:	e8 0c f8 ff ff       	callq  40130d <socket@plt+0x41d>
  401b01:	85 c0                	test   %eax,%eax
  401b03:	74 1d                	je     401b22 <socket@plt+0xc32>
  401b05:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401b09:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401b0d:	48 89 d7             	mov    %rdx,%rdi
  401b10:	48 89 c6             	mov    %rax,%rsi
  401b13:	e8 ba 01 00 00       	callq  401cd2 <socket@plt+0xde2>
  401b18:	b8 01 00 00 00       	mov    $0x1,%eax
  401b1d:	e9 ae 01 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401b22:	b8 00 00 00 00       	mov    $0x0,%eax
  401b27:	e9 a4 01 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401b2c:	83 7d fc 51          	cmpl   $0x51,-0x4(%rbp)
  401b30:	74 0a                	je     401b3c <socket@plt+0xc4c>
  401b32:	83 7d fc 71          	cmpl   $0x71,-0x4(%rbp)
  401b36:	0f 85 af 00 00 00    	jne    401beb <socket@plt+0xcfb>
  401b3c:	8b 55 d0             	mov    -0x30(%rbp),%edx
  401b3f:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401b42:	29 c2                	sub    %eax,%edx
  401b44:	89 d0                	mov    %edx,%eax
  401b46:	c1 f8 1f             	sar    $0x1f,%eax
  401b49:	31 c2                	xor    %eax,%edx
  401b4b:	89 55 f0             	mov    %edx,-0x10(%rbp)
  401b4e:	29 45 f0             	sub    %eax,-0x10(%rbp)
  401b51:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  401b54:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401b57:	29 c2                	sub    %eax,%edx
  401b59:	89 d0                	mov    %edx,%eax
  401b5b:	99                   	cltd   
  401b5c:	31 d0                	xor    %edx,%eax
  401b5e:	29 d0                	sub    %edx,%eax
  401b60:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  401b63:	75 34                	jne    401b99 <socket@plt+0xca9>
  401b65:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401b69:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401b6d:	48 89 d7             	mov    %rdx,%rdi
  401b70:	48 89 c6             	mov    %rax,%rsi
  401b73:	e8 95 f7 ff ff       	callq  40130d <socket@plt+0x41d>
  401b78:	85 c0                	test   %eax,%eax
  401b7a:	74 1d                	je     401b99 <socket@plt+0xca9>
  401b7c:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401b80:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401b84:	48 89 d7             	mov    %rdx,%rdi
  401b87:	48 89 c6             	mov    %rax,%rsi
  401b8a:	e8 43 01 00 00       	callq  401cd2 <socket@plt+0xde2>
  401b8f:	b8 01 00 00 00       	mov    $0x1,%eax
  401b94:	e9 37 01 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401b99:	8b 55 d0             	mov    -0x30(%rbp),%edx
  401b9c:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401b9f:	39 c2                	cmp    %eax,%edx
  401ba1:	74 0a                	je     401bad <socket@plt+0xcbd>
  401ba3:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  401ba6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401ba9:	39 c2                	cmp    %eax,%edx
  401bab:	75 34                	jne    401be1 <socket@plt+0xcf1>
  401bad:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401bb1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401bb5:	48 89 d7             	mov    %rdx,%rdi
  401bb8:	48 89 c6             	mov    %rax,%rsi
  401bbb:	e8 4d f7 ff ff       	callq  40130d <socket@plt+0x41d>
  401bc0:	85 c0                	test   %eax,%eax
  401bc2:	74 1d                	je     401be1 <socket@plt+0xcf1>
  401bc4:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401bc8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401bcc:	48 89 d7             	mov    %rdx,%rdi
  401bcf:	48 89 c6             	mov    %rax,%rsi
  401bd2:	e8 fb 00 00 00       	callq  401cd2 <socket@plt+0xde2>
  401bd7:	b8 01 00 00 00       	mov    $0x1,%eax
  401bdc:	e9 ef 00 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401be1:	b8 00 00 00 00       	mov    $0x0,%eax
  401be6:	e9 e5 00 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401beb:	83 7d fc 4b          	cmpl   $0x4b,-0x4(%rbp)
  401bef:	74 06                	je     401bf7 <socket@plt+0xd07>
  401bf1:	83 7d fc 6b          	cmpl   $0x6b,-0x4(%rbp)
  401bf5:	75 7c                	jne    401c73 <socket@plt+0xd83>
  401bf7:	8b 55 d0             	mov    -0x30(%rbp),%edx
  401bfa:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401bfd:	29 c2                	sub    %eax,%edx
  401bff:	89 d0                	mov    %edx,%eax
  401c01:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401c04:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  401c07:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401c0a:	29 c2                	sub    %eax,%edx
  401c0c:	89 d0                	mov    %edx,%eax
  401c0e:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401c11:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401c14:	99                   	cltd   
  401c15:	89 d0                	mov    %edx,%eax
  401c17:	33 45 f8             	xor    -0x8(%rbp),%eax
  401c1a:	29 d0                	sub    %edx,%eax
  401c1c:	83 f8 01             	cmp    $0x1,%eax
  401c1f:	7f 10                	jg     401c31 <socket@plt+0xd41>
  401c21:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401c24:	99                   	cltd   
  401c25:	89 d0                	mov    %edx,%eax
  401c27:	33 45 f4             	xor    -0xc(%rbp),%eax
  401c2a:	29 d0                	sub    %edx,%eax
  401c2c:	83 f8 01             	cmp    $0x1,%eax
  401c2f:	7e 0a                	jle    401c3b <socket@plt+0xd4b>
  401c31:	b8 00 00 00 00       	mov    $0x0,%eax
  401c36:	e9 95 00 00 00       	jmpq   401cd0 <socket@plt+0xde0>
  401c3b:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401c3f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401c43:	48 89 d7             	mov    %rdx,%rdi
  401c46:	48 89 c6             	mov    %rax,%rsi
  401c49:	e8 bf f6 ff ff       	callq  40130d <socket@plt+0x41d>
  401c4e:	85 c0                	test   %eax,%eax
  401c50:	74 1a                	je     401c6c <socket@plt+0xd7c>
  401c52:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401c56:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401c5a:	48 89 d7             	mov    %rdx,%rdi
  401c5d:	48 89 c6             	mov    %rax,%rsi
  401c60:	e8 6d 00 00 00       	callq  401cd2 <socket@plt+0xde2>
  401c65:	b8 01 00 00 00       	mov    $0x1,%eax
  401c6a:	eb 64                	jmp    401cd0 <socket@plt+0xde0>
  401c6c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c71:	eb 5d                	jmp    401cd0 <socket@plt+0xde0>
  401c73:	83 7d fc 72          	cmpl   $0x72,-0x4(%rbp)
  401c77:	74 06                	je     401c7f <socket@plt+0xd8f>
  401c79:	83 7d fc 52          	cmpl   $0x52,-0x4(%rbp)
  401c7d:	75 4c                	jne    401ccb <socket@plt+0xddb>
  401c7f:	8b 55 d0             	mov    -0x30(%rbp),%edx
  401c82:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401c85:	39 c2                	cmp    %eax,%edx
  401c87:	74 0a                	je     401c93 <socket@plt+0xda3>
  401c89:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  401c8c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401c8f:	39 c2                	cmp    %eax,%edx
  401c91:	75 31                	jne    401cc4 <socket@plt+0xdd4>
  401c93:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401c97:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401c9b:	48 89 d7             	mov    %rdx,%rdi
  401c9e:	48 89 c6             	mov    %rax,%rsi
  401ca1:	e8 67 f6 ff ff       	callq  40130d <socket@plt+0x41d>
  401ca6:	85 c0                	test   %eax,%eax
  401ca8:	74 1a                	je     401cc4 <socket@plt+0xdd4>
  401caa:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401cae:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401cb2:	48 89 d7             	mov    %rdx,%rdi
  401cb5:	48 89 c6             	mov    %rax,%rsi
  401cb8:	e8 15 00 00 00       	callq  401cd2 <socket@plt+0xde2>
  401cbd:	b8 01 00 00 00       	mov    $0x1,%eax
  401cc2:	eb 0c                	jmp    401cd0 <socket@plt+0xde0>
  401cc4:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc9:	eb 05                	jmp    401cd0 <socket@plt+0xde0>
  401ccb:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd0:	c9                   	leaveq 
  401cd1:	c3                   	retq   
  401cd2:	55                   	push   %rbp
  401cd3:	48 89 e5             	mov    %rsp,%rbp
  401cd6:	48 89 f8             	mov    %rdi,%rax
  401cd9:	48 89 f1             	mov    %rsi,%rcx
  401cdc:	48 89 ca             	mov    %rcx,%rdx
  401cdf:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401ce3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401ce7:	48 8b 15 92 24 20 00 	mov    0x202492(%rip),%rdx        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401cee:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401cf1:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  401cf4:	48 63 c9             	movslq %ecx,%rcx
  401cf7:	48 98                	cltq   
  401cf9:	48 c1 e0 03          	shl    $0x3,%rax
  401cfd:	48 01 c8             	add    %rcx,%rax
  401d00:	48 01 d0             	add    %rdx,%rax
  401d03:	0f b6 00             	movzbl (%rax),%eax
  401d06:	88 45 ff             	mov    %al,-0x1(%rbp)
  401d09:	48 8b 0d 70 24 20 00 	mov    0x202470(%rip),%rcx        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401d10:	8b 7d e8             	mov    -0x18(%rbp),%edi
  401d13:	8b 75 ec             	mov    -0x14(%rbp),%esi
  401d16:	48 8b 15 63 24 20 00 	mov    0x202463(%rip),%rdx        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401d1d:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401d20:	44 8b 45 e4          	mov    -0x1c(%rbp),%r8d
  401d24:	4d 63 c0             	movslq %r8d,%r8
  401d27:	48 98                	cltq   
  401d29:	48 c1 e0 03          	shl    $0x3,%rax
  401d2d:	4c 01 c0             	add    %r8,%rax
  401d30:	48 01 d0             	add    %rdx,%rax
  401d33:	0f b6 10             	movzbl (%rax),%edx
  401d36:	48 63 f6             	movslq %esi,%rsi
  401d39:	48 63 c7             	movslq %edi,%rax
  401d3c:	48 c1 e0 03          	shl    $0x3,%rax
  401d40:	48 01 f0             	add    %rsi,%rax
  401d43:	48 01 c8             	add    %rcx,%rax
  401d46:	88 10                	mov    %dl,(%rax)
  401d48:	48 8b 15 31 24 20 00 	mov    0x202431(%rip),%rdx        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  401d4f:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401d52:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  401d55:	48 63 c9             	movslq %ecx,%rcx
  401d58:	48 98                	cltq   
  401d5a:	48 c1 e0 03          	shl    $0x3,%rax
  401d5e:	48 01 c8             	add    %rcx,%rax
  401d61:	48 01 c2             	add    %rax,%rdx
  401d64:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  401d68:	88 02                	mov    %al,(%rdx)
  401d6a:	5d                   	pop    %rbp
  401d6b:	c3                   	retq   
  401d6c:	55                   	push   %rbp
  401d6d:	48 89 e5             	mov    %rsp,%rbp
  401d70:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d74:	89 75 f4             	mov    %esi,-0xc(%rbp)
  401d77:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401d7a:	48 63 d0             	movslq %eax,%rdx
  401d7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d81:	48 01 d0             	add    %rdx,%rax
  401d84:	c6 00 00             	movb   $0x0,(%rax)
  401d87:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d8b:	0f b6 00             	movzbl (%rax),%eax
  401d8e:	3c 2f                	cmp    $0x2f,%al
  401d90:	0f 8e 9d 00 00 00    	jle    401e33 <socket@plt+0xf43>
  401d96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d9a:	0f b6 00             	movzbl (%rax),%eax
  401d9d:	3c 39                	cmp    $0x39,%al
  401d9f:	0f 8f 8e 00 00 00    	jg     401e33 <socket@plt+0xf43>
  401da5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401da9:	48 83 c0 01          	add    $0x1,%rax
  401dad:	0f b6 00             	movzbl (%rax),%eax
  401db0:	3c 2c                	cmp    $0x2c,%al
  401db2:	75 7f                	jne    401e33 <socket@plt+0xf43>
  401db4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401db8:	48 83 c0 02          	add    $0x2,%rax
  401dbc:	0f b6 00             	movzbl (%rax),%eax
  401dbf:	3c 2f                	cmp    $0x2f,%al
  401dc1:	7e 70                	jle    401e33 <socket@plt+0xf43>
  401dc3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401dc7:	48 83 c0 02          	add    $0x2,%rax
  401dcb:	0f b6 00             	movzbl (%rax),%eax
  401dce:	3c 39                	cmp    $0x39,%al
  401dd0:	7f 61                	jg     401e33 <socket@plt+0xf43>
  401dd2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401dd6:	48 83 c0 03          	add    $0x3,%rax
  401dda:	0f b6 00             	movzbl (%rax),%eax
  401ddd:	3c 20                	cmp    $0x20,%al
  401ddf:	75 52                	jne    401e33 <socket@plt+0xf43>
  401de1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401de5:	48 83 c0 04          	add    $0x4,%rax
  401de9:	0f b6 00             	movzbl (%rax),%eax
  401dec:	3c 2f                	cmp    $0x2f,%al
  401dee:	7e 43                	jle    401e33 <socket@plt+0xf43>
  401df0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401df4:	48 83 c0 04          	add    $0x4,%rax
  401df8:	0f b6 00             	movzbl (%rax),%eax
  401dfb:	3c 39                	cmp    $0x39,%al
  401dfd:	7f 34                	jg     401e33 <socket@plt+0xf43>
  401dff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e03:	48 83 c0 05          	add    $0x5,%rax
  401e07:	0f b6 00             	movzbl (%rax),%eax
  401e0a:	3c 2c                	cmp    $0x2c,%al
  401e0c:	75 25                	jne    401e33 <socket@plt+0xf43>
  401e0e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e12:	48 83 c0 06          	add    $0x6,%rax
  401e16:	0f b6 00             	movzbl (%rax),%eax
  401e19:	3c 2f                	cmp    $0x2f,%al
  401e1b:	7e 16                	jle    401e33 <socket@plt+0xf43>
  401e1d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e21:	48 83 c0 06          	add    $0x6,%rax
  401e25:	0f b6 00             	movzbl (%rax),%eax
  401e28:	3c 39                	cmp    $0x39,%al
  401e2a:	7f 07                	jg     401e33 <socket@plt+0xf43>
  401e2c:	b8 01 00 00 00       	mov    $0x1,%eax
  401e31:	eb 05                	jmp    401e38 <socket@plt+0xf48>
  401e33:	b8 00 00 00 00       	mov    $0x0,%eax
  401e38:	5d                   	pop    %rbp
  401e39:	c3                   	retq   
  401e3a:	55                   	push   %rbp
  401e3b:	48 89 e5             	mov    %rsp,%rbp
  401e3e:	48 83 ec 50          	sub    $0x50,%rsp
  401e42:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  401e46:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  401e4d:	00 
  401e4e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  401e55:	c7 45 c0 4d 00 00 00 	movl   $0x4d,-0x40(%rbp)
  401e5c:	c7 45 c4 4d 00 00 00 	movl   $0x4d,-0x3c(%rbp)
  401e63:	c7 45 c8 4d 00 00 00 	movl   $0x4d,-0x38(%rbp)
  401e6a:	c7 45 cc 4d 00 00 00 	movl   $0x4d,-0x34(%rbp)
  401e71:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401e75:	be 0f 00 00 00       	mov    $0xf,%esi
  401e7a:	48 89 c7             	mov    %rax,%rdi
  401e7d:	e8 fe ef ff ff       	callq  400e80 <bzero@plt>
  401e82:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  401e86:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401e8a:	48 89 d1             	mov    %rdx,%rcx
  401e8d:	ba 0e 00 00 00       	mov    $0xe,%edx
  401e92:	48 89 c6             	mov    %rax,%rsi
  401e95:	bf 00 00 00 00       	mov    $0x0,%edi
  401e9a:	e8 00 06 00 00       	callq  40249f <socket@plt+0x15af>
  401e9f:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401ea2:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  401ea6:	74 0a                	je     401eb2 <socket@plt+0xfc2>
  401ea8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ead:	e9 bb 01 00 00       	jmpq   40206d <socket@plt+0x117d>
  401eb2:	eb 0c                	jmp    401ec0 <socket@plt+0xfd0>
  401eb4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401eb8:	48 83 e8 01          	sub    $0x1,%rax
  401ebc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401ec0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401ec4:	48 83 e8 01          	sub    $0x1,%rax
  401ec8:	0f b6 44 05 d0       	movzbl -0x30(%rbp,%rax,1),%eax
  401ecd:	3c 0a                	cmp    $0xa,%al
  401ecf:	74 e3                	je     401eb4 <socket@plt+0xfc4>
  401ed1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401ed5:	48 83 e8 01          	sub    $0x1,%rax
  401ed9:	0f b6 44 05 d0       	movzbl -0x30(%rbp,%rax,1),%eax
  401ede:	3c 0d                	cmp    $0xd,%al
  401ee0:	74 d2                	je     401eb4 <socket@plt+0xfc4>
  401ee2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401ee6:	48 83 f8 01          	cmp    $0x1,%rax
  401eea:	75 12                	jne    401efe <socket@plt+0x100e>
  401eec:	0f b6 45 d0          	movzbl -0x30(%rbp),%eax
  401ef0:	3c 39                	cmp    $0x39,%al
  401ef2:	75 54                	jne    401f48 <socket@plt+0x1058>
  401ef4:	b8 02 00 00 00       	mov    $0x2,%eax
  401ef9:	e9 6f 01 00 00       	jmpq   40206d <socket@plt+0x117d>
  401efe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f02:	48 83 f8 03          	cmp    $0x3,%rax
  401f06:	75 22                	jne    401f2a <socket@plt+0x103a>
  401f08:	0f b6 45 d0          	movzbl -0x30(%rbp),%eax
  401f0c:	3c 37                	cmp    $0x37,%al
  401f0e:	75 38                	jne    401f48 <socket@plt+0x1058>
  401f10:	0f b6 45 d1          	movzbl -0x2f(%rbp),%eax
  401f14:	3c 37                	cmp    $0x37,%al
  401f16:	75 30                	jne    401f48 <socket@plt+0x1058>
  401f18:	0f b6 45 d2          	movzbl -0x2e(%rbp),%eax
  401f1c:	3c 37                	cmp    $0x37,%al
  401f1e:	75 28                	jne    401f48 <socket@plt+0x1058>
  401f20:	b8 03 00 00 00       	mov    $0x3,%eax
  401f25:	e9 43 01 00 00       	jmpq   40206d <socket@plt+0x117d>
  401f2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f2e:	48 83 f8 07          	cmp    $0x7,%rax
  401f32:	74 14                	je     401f48 <socket@plt+0x1058>
  401f34:	bf ae 2a 40 00       	mov    $0x402aae,%edi
  401f39:	e8 82 ed ff ff       	callq  400cc0 <puts@plt>
  401f3e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f43:	e9 25 01 00 00       	jmpq   40206d <socket@plt+0x117d>
  401f48:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f4c:	89 c2                	mov    %eax,%edx
  401f4e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401f52:	89 d6                	mov    %edx,%esi
  401f54:	48 89 c7             	mov    %rax,%rdi
  401f57:	e8 10 fe ff ff       	callq  401d6c <socket@plt+0xe7c>
  401f5c:	85 c0                	test   %eax,%eax
  401f5e:	75 14                	jne    401f74 <socket@plt+0x1084>
  401f60:	bf ae 2a 40 00       	mov    $0x402aae,%edi
  401f65:	e8 56 ed ff ff       	callq  400cc0 <puts@plt>
  401f6a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6f:	e9 f9 00 00 00       	jmpq   40206d <socket@plt+0x117d>
  401f74:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401f7b:	e9 9e 00 00 00       	jmpq   40201e <socket@plt+0x112e>
  401f80:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401f83:	48 98                	cltq   
  401f85:	0f b6 44 05 d0       	movzbl -0x30(%rbp,%rax,1),%eax
  401f8a:	3c 39                	cmp    $0x39,%al
  401f8c:	0f 8f 88 00 00 00    	jg     40201a <socket@plt+0x112a>
  401f92:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401f95:	48 98                	cltq   
  401f97:	0f b6 44 05 d0       	movzbl -0x30(%rbp,%rax,1),%eax
  401f9c:	3c 2f                	cmp    $0x2f,%al
  401f9e:	7e 7a                	jle    40201a <socket@plt+0x112a>
  401fa0:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  401fa4:	75 19                	jne    401fbf <socket@plt+0x10cf>
  401fa6:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  401faa:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401fad:	48 98                	cltq   
  401faf:	48 01 d0             	add    %rdx,%rax
  401fb2:	48 89 c7             	mov    %rax,%rdi
  401fb5:	e8 e6 ee ff ff       	callq  400ea0 <atoi@plt>
  401fba:	89 45 c0             	mov    %eax,-0x40(%rbp)
  401fbd:	eb 5b                	jmp    40201a <socket@plt+0x112a>
  401fbf:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  401fc3:	75 19                	jne    401fde <socket@plt+0x10ee>
  401fc5:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  401fc9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401fcc:	48 98                	cltq   
  401fce:	48 01 d0             	add    %rdx,%rax
  401fd1:	48 89 c7             	mov    %rax,%rdi
  401fd4:	e8 c7 ee ff ff       	callq  400ea0 <atoi@plt>
  401fd9:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  401fdc:	eb 3c                	jmp    40201a <socket@plt+0x112a>
  401fde:	83 7d fc 04          	cmpl   $0x4,-0x4(%rbp)
  401fe2:	75 19                	jne    401ffd <socket@plt+0x110d>
  401fe4:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  401fe8:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401feb:	48 98                	cltq   
  401fed:	48 01 d0             	add    %rdx,%rax
  401ff0:	48 89 c7             	mov    %rax,%rdi
  401ff3:	e8 a8 ee ff ff       	callq  400ea0 <atoi@plt>
  401ff8:	89 45 c8             	mov    %eax,-0x38(%rbp)
  401ffb:	eb 1d                	jmp    40201a <socket@plt+0x112a>
  401ffd:	83 7d fc 06          	cmpl   $0x6,-0x4(%rbp)
  402001:	75 17                	jne    40201a <socket@plt+0x112a>
  402003:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  402007:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40200a:	48 98                	cltq   
  40200c:	48 01 d0             	add    %rdx,%rax
  40200f:	48 89 c7             	mov    %rax,%rdi
  402012:	e8 89 ee ff ff       	callq  400ea0 <atoi@plt>
  402017:	89 45 cc             	mov    %eax,-0x34(%rbp)
  40201a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40201e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402021:	83 f8 0e             	cmp    $0xe,%eax
  402024:	0f 86 56 ff ff ff    	jbe    401f80 <socket@plt+0x1090>
  40202a:	8b 45 c0             	mov    -0x40(%rbp),%eax
  40202d:	83 f8 4d             	cmp    $0x4d,%eax
  402030:	74 36                	je     402068 <socket@plt+0x1178>
  402032:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402035:	83 f8 4d             	cmp    $0x4d,%eax
  402038:	74 2e                	je     402068 <socket@plt+0x1178>
  40203a:	8b 45 c8             	mov    -0x38(%rbp),%eax
  40203d:	83 f8 4d             	cmp    $0x4d,%eax
  402040:	74 26                	je     402068 <socket@plt+0x1178>
  402042:	8b 45 cc             	mov    -0x34(%rbp),%eax
  402045:	83 f8 4d             	cmp    $0x4d,%eax
  402048:	74 1e                	je     402068 <socket@plt+0x1178>
  40204a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40204e:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  402052:	48 89 10             	mov    %rdx,(%rax)
  402055:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402059:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40205d:	48 89 50 08          	mov    %rdx,0x8(%rax)
  402061:	b8 01 00 00 00       	mov    $0x1,%eax
  402066:	eb 05                	jmp    40206d <socket@plt+0x117d>
  402068:	b8 00 00 00 00       	mov    $0x0,%eax
  40206d:	c9                   	leaveq 
  40206e:	c3                   	retq   
  40206f:	55                   	push   %rbp
  402070:	48 89 e5             	mov    %rsp,%rbp
  402073:	48 83 ec 10          	sub    $0x10,%rsp
  402077:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40207e:	e9 8e 00 00 00       	jmpq   402111 <socket@plt+0x1221>
  402083:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40208a:	eb 62                	jmp    4020ee <socket@plt+0x11fe>
  40208c:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  402090:	75 2d                	jne    4020bf <socket@plt+0x11cf>
  402092:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  402096:	74 1b                	je     4020b3 <socket@plt+0x11c3>
  402098:	b8 08 00 00 00       	mov    $0x8,%eax
  40209d:	2b 45 f8             	sub    -0x8(%rbp),%eax
  4020a0:	89 c6                	mov    %eax,%esi
  4020a2:	bf ab 2a 40 00       	mov    $0x402aab,%edi
  4020a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ac:	e8 af ec ff ff       	callq  400d60 <printf@plt>
  4020b1:	eb 37                	jmp    4020ea <socket@plt+0x11fa>
  4020b3:	bf 5c 00 00 00       	mov    $0x5c,%edi
  4020b8:	e8 d3 eb ff ff       	callq  400c90 <putchar@plt>
  4020bd:	eb 2b                	jmp    4020ea <socket@plt+0x11fa>
  4020bf:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  4020c3:	74 25                	je     4020ea <socket@plt+0x11fa>
  4020c5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4020c8:	8b 55 f8             	mov    -0x8(%rbp),%edx
  4020cb:	01 d0                	add    %edx,%eax
  4020cd:	83 e0 01             	and    $0x1,%eax
  4020d0:	85 c0                	test   %eax,%eax
  4020d2:	75 0c                	jne    4020e0 <socket@plt+0x11f0>
  4020d4:	bf 2e 00 00 00       	mov    $0x2e,%edi
  4020d9:	e8 b2 eb ff ff       	callq  400c90 <putchar@plt>
  4020de:	eb 0a                	jmp    4020ea <socket@plt+0x11fa>
  4020e0:	bf 2a 00 00 00       	mov    $0x2a,%edi
  4020e5:	e8 a6 eb ff ff       	callq  400c90 <putchar@plt>
  4020ea:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  4020ee:	83 7d f8 08          	cmpl   $0x8,-0x8(%rbp)
  4020f2:	7e 98                	jle    40208c <socket@plt+0x119c>
  4020f4:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4020f8:	b8 08 00 00 00       	mov    $0x8,%eax
  4020fd:	2b 45 fc             	sub    -0x4(%rbp),%eax
  402100:	89 c6                	mov    %eax,%esi
  402102:	bf bc 2a 40 00       	mov    $0x402abc,%edi
  402107:	b8 00 00 00 00       	mov    $0x0,%eax
  40210c:	e8 4f ec ff ff       	callq  400d60 <printf@plt>
  402111:	83 7d fc 08          	cmpl   $0x8,-0x4(%rbp)
  402115:	0f 8e 68 ff ff ff    	jle    402083 <socket@plt+0x1193>
  40211b:	c9                   	leaveq 
  40211c:	c3                   	retq   
  40211d:	55                   	push   %rbp
  40211e:	48 89 e5             	mov    %rsp,%rbp
  402121:	48 83 ec 20          	sub    $0x20,%rsp
  402125:	89 7d ec             	mov    %edi,-0x14(%rbp)
  402128:	83 7d ec 0b          	cmpl   $0xb,-0x14(%rbp)
  40212c:	75 62                	jne    402190 <socket@plt+0x12a0>
  40212e:	bf c0 2a 40 00       	mov    $0x402ac0,%edi
  402133:	b8 00 00 00 00       	mov    $0x0,%eax
  402138:	e8 23 ec ff ff       	callq  400d60 <printf@plt>
  40213d:	be ca 2a 40 00       	mov    $0x402aca,%esi
  402142:	bf cc 2a 40 00       	mov    $0x402acc,%edi
  402147:	e8 14 ed ff ff       	callq  400e60 <fopen@plt>
  40214c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402150:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  402155:	74 2f                	je     402186 <socket@plt+0x1296>
  402157:	eb 0a                	jmp    402163 <socket@plt+0x1273>
  402159:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40215c:	89 c7                	mov    %eax,%edi
  40215e:	e8 2d eb ff ff       	callq  400c90 <putchar@plt>
  402163:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402167:	48 89 c7             	mov    %rax,%rdi
  40216a:	e8 a1 ec ff ff       	callq  400e10 <_IO_getc@plt>
  40216f:	89 45 f4             	mov    %eax,-0xc(%rbp)
  402172:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
  402176:	75 e1                	jne    402159 <socket@plt+0x1269>
  402178:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40217c:	48 89 c7             	mov    %rax,%rdi
  40217f:	e8 6c eb ff ff       	callq  400cf0 <fclose@plt>
  402184:	eb 0a                	jmp    402190 <socket@plt+0x12a0>
  402186:	bf da 2a 40 00       	mov    $0x402ada,%edi
  40218b:	e8 30 eb ff ff       	callq  400cc0 <puts@plt>
  402190:	bf 00 00 00 00       	mov    $0x0,%edi
  402195:	e8 16 ed ff ff       	callq  400eb0 <exit@plt>
  40219a:	55                   	push   %rbp
  40219b:	48 89 e5             	mov    %rsp,%rbp
  40219e:	48 83 ec 60          	sub    $0x60,%rsp
  4021a2:	be 1d 21 40 00       	mov    $0x40211d,%esi
  4021a7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4021ac:	e8 1f ec ff ff       	callq  400dd0 <signal@plt>
  4021b1:	bf f0 2a 40 00       	mov    $0x402af0,%edi
  4021b6:	e8 05 eb ff ff       	callq  400cc0 <puts@plt>
  4021bb:	bf 40 2b 40 00       	mov    $0x402b40,%edi
  4021c0:	e8 fb ea ff ff       	callq  400cc0 <puts@plt>
  4021c5:	bf 98 2b 40 00       	mov    $0x402b98,%edi
  4021ca:	e8 f1 ea ff ff       	callq  400cc0 <puts@plt>
  4021cf:	48 c7 45 f0 53 10 40 	movq   $0x401053,-0x10(%rbp)
  4021d6:	00 
  4021d7:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4021db:	48 89 05 9e 1f 20 00 	mov    %rax,0x201f9e(%rip)        # 604180 <stderr@@GLIBC_2.2.5+0x10>
  4021e2:	e8 53 ef ff ff       	callq  40113a <socket@plt+0x24a>
  4021e7:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4021eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f0:	ff d2                	callq  *%rdx
  4021f2:	0f b6 05 6f 1f 20 00 	movzbl 0x201f6f(%rip),%eax        # 604168 <socket@plt+0x203278>
  4021f9:	3c 01                	cmp    $0x1,%al
  4021fb:	75 11                	jne    40220e <socket@plt+0x131e>
  4021fd:	bf f0 2b 40 00       	mov    $0x402bf0,%edi
  402202:	b8 00 00 00 00       	mov    $0x0,%eax
  402207:	e8 54 eb ff ff       	callq  400d60 <printf@plt>
  40220c:	eb 0f                	jmp    40221d <socket@plt+0x132d>
  40220e:	bf f8 2b 40 00       	mov    $0x402bf8,%edi
  402213:	b8 00 00 00 00       	mov    $0x0,%eax
  402218:	e8 43 eb ff ff       	callq  400d60 <printf@plt>
  40221d:	bf 0a 00 00 00       	mov    $0xa,%edi
  402222:	e8 69 ea ff ff       	callq  400c90 <putchar@plt>
  402227:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40222b:	48 89 c7             	mov    %rax,%rdi
  40222e:	e8 07 fc ff ff       	callq  401e3a <socket@plt+0xf4a>
  402233:	89 45 fc             	mov    %eax,-0x4(%rbp)
  402236:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  40223a:	75 0f                	jne    40224b <socket@plt+0x135b>
  40223c:	bf 00 2c 40 00       	mov    $0x402c00,%edi
  402241:	e8 7a ea ff ff       	callq  400cc0 <puts@plt>
  402246:	e9 a8 00 00 00       	jmpq   4022f3 <socket@plt+0x1403>
  40224b:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  40224f:	75 10                	jne    402261 <socket@plt+0x1371>
  402251:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  402255:	b8 00 00 00 00       	mov    $0x0,%eax
  40225a:	ff d2                	callq  *%rdx
  40225c:	e9 92 00 00 00       	jmpq   4022f3 <socket@plt+0x1403>
  402261:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
  402265:	75 2c                	jne    402293 <socket@plt+0x13a3>
  402267:	bf 13 2c 40 00       	mov    $0x402c13,%edi
  40226c:	e8 4f ea ff ff       	callq  400cc0 <puts@plt>
  402271:	bf 00 00 00 00       	mov    $0x0,%edi
  402276:	e8 b6 01 00 00       	callq  402431 <socket@plt+0x1541>
  40227b:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40227f:	48 89 c6             	mov    %rax,%rsi
  402282:	bf 16 2c 40 00       	mov    $0x402c16,%edi
  402287:	b8 00 00 00 00       	mov    $0x0,%eax
  40228c:	e8 cf ea ff ff       	callq  400d60 <printf@plt>
  402291:	eb 10                	jmp    4022a3 <socket@plt+0x13b3>
  402293:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  402297:	75 0a                	jne    4022a3 <socket@plt+0x13b3>
  402299:	bf 00 00 00 00       	mov    $0x0,%edi
  40229e:	e8 8e 01 00 00       	callq  402431 <socket@plt+0x1541>
  4022a3:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
  4022a7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4022ab:	48 89 d7             	mov    %rdx,%rdi
  4022ae:	48 89 c6             	mov    %rax,%rsi
  4022b1:	e8 cc f4 ff ff       	callq  401782 <socket@plt+0x892>
  4022b6:	85 c0                	test   %eax,%eax
  4022b8:	74 2a                	je     4022e4 <socket@plt+0x13f4>
  4022ba:	bf 1a 2c 40 00       	mov    $0x402c1a,%edi
  4022bf:	e8 fc e9 ff ff       	callq  400cc0 <puts@plt>
  4022c4:	0f b6 05 9d 1e 20 00 	movzbl 0x201e9d(%rip),%eax        # 604168 <socket@plt+0x203278>
  4022cb:	3c 01                	cmp    $0x1,%al
  4022cd:	75 09                	jne    4022d8 <socket@plt+0x13e8>
  4022cf:	c6 05 92 1e 20 00 00 	movb   $0x0,0x201e92(%rip)        # 604168 <socket@plt+0x203278>
  4022d6:	eb 1b                	jmp    4022f3 <socket@plt+0x1403>
  4022d8:	c6 05 89 1e 20 00 01 	movb   $0x1,0x201e89(%rip)        # 604168 <socket@plt+0x203278>
  4022df:	e9 0e ff ff ff       	jmpq   4021f2 <socket@plt+0x1302>
  4022e4:	bf 1e 2c 40 00       	mov    $0x402c1e,%edi
  4022e9:	e8 d2 e9 ff ff       	callq  400cc0 <puts@plt>
  4022ee:	e9 ff fe ff ff       	jmpq   4021f2 <socket@plt+0x1302>
  4022f3:	e9 fa fe ff ff       	jmpq   4021f2 <socket@plt+0x1302>
  4022f8:	55                   	push   %rbp
  4022f9:	48 89 e5             	mov    %rsp,%rbp
  4022fc:	48 83 ec 40          	sub    $0x40,%rsp
  402300:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  402304:	89 f0                	mov    %esi,%eax
  402306:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  40230a:	88 45 d4             	mov    %al,-0x2c(%rbp)
  40230d:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  402314:	00 
  402315:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  40231c:	00 
  40231d:	c6 45 ef 00          	movb   $0x0,-0x11(%rbp)
  402321:	eb 5a                	jmp    40237d <socket@plt+0x148d>
  402323:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402327:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40232b:	48 01 d0             	add    %rdx,%rax
  40232e:	c6 00 00             	movb   $0x0,(%rax)
  402331:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  402335:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  402339:	48 89 d1             	mov    %rdx,%rcx
  40233c:	ba 01 00 00 00       	mov    $0x1,%edx
  402341:	48 89 c6             	mov    %rax,%rsi
  402344:	bf 00 00 00 00       	mov    $0x0,%edi
  402349:	e8 51 01 00 00       	callq  40249f <socket@plt+0x15af>
  40234e:	85 c0                	test   %eax,%eax
  402350:	74 0a                	je     40235c <socket@plt+0x146c>
  402352:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  402359:	00 
  40235a:	eb 2b                	jmp    402387 <socket@plt+0x1497>
  40235c:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
  402360:	3a 45 d4             	cmp    -0x2c(%rbp),%al
  402363:	75 02                	jne    402367 <socket@plt+0x1477>
  402365:	eb 20                	jmp    402387 <socket@plt+0x1497>
  402367:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40236b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40236f:	48 01 c2             	add    %rax,%rdx
  402372:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
  402376:	88 02                	mov    %al,(%rdx)
  402378:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  40237d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402381:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  402385:	72 9c                	jb     402323 <socket@plt+0x1433>
  402387:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40238b:	c9                   	leaveq 
  40238c:	c3                   	retq   
  40238d:	55                   	push   %rbp
  40238e:	48 89 e5             	mov    %rsp,%rbp
  402391:	48 83 ec 30          	sub    $0x30,%rsp
  402395:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402399:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  40239c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4023a0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  4023a4:	74 07                	je     4023ad <socket@plt+0x14bd>
  4023a6:	b8 04 00 00 00       	mov    $0x4,%eax
  4023ab:	eb 05                	jmp    4023b2 <socket@plt+0x14c2>
  4023ad:	b8 03 00 00 00       	mov    $0x3,%eax
  4023b2:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  4023b6:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4023bc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4023c2:	b9 22 00 00 00       	mov    $0x22,%ecx
  4023c7:	89 c2                	mov    %eax,%edx
  4023c9:	bf 00 00 00 00       	mov    $0x0,%edi
  4023ce:	e8 4d e9 ff ff       	callq  400d20 <mmap@plt>
  4023d3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4023d7:	48 83 7d f8 ff       	cmpq   $0xffffffffffffffff,-0x8(%rbp)
  4023dc:	75 09                	jne    4023e7 <socket@plt+0x14f7>
  4023de:	e8 bd e8 ff ff       	callq  400ca0 <__errno_location@plt>
  4023e3:	8b 00                	mov    (%rax),%eax
  4023e5:	eb 10                	jmp    4023f7 <socket@plt+0x1507>
  4023e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4023eb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4023ef:	48 89 10             	mov    %rdx,(%rax)
  4023f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4023f7:	c9                   	leaveq 
  4023f8:	c3                   	retq   
  4023f9:	55                   	push   %rbp
  4023fa:	48 89 e5             	mov    %rsp,%rbp
  4023fd:	48 83 ec 10          	sub    $0x10,%rsp
  402401:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402405:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402409:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40240d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402411:	48 89 d6             	mov    %rdx,%rsi
  402414:	48 89 c7             	mov    %rax,%rdi
  402417:	e8 14 ea ff ff       	callq  400e30 <munmap@plt>
  40241c:	83 f8 ff             	cmp    $0xffffffff,%eax
  40241f:	75 09                	jne    40242a <socket@plt+0x153a>
  402421:	e8 7a e8 ff ff       	callq  400ca0 <__errno_location@plt>
  402426:	8b 00                	mov    (%rax),%eax
  402428:	eb 05                	jmp    40242f <socket@plt+0x153f>
  40242a:	b8 00 00 00 00       	mov    $0x0,%eax
  40242f:	c9                   	leaveq 
  402430:	c3                   	retq   
  402431:	55                   	push   %rbp
  402432:	48 89 e5             	mov    %rsp,%rbp
  402435:	48 83 ec 10          	sub    $0x10,%rsp
  402439:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40243c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40243f:	89 c7                	mov    %eax,%edi
  402441:	e8 6a ea ff ff       	callq  400eb0 <exit@plt>
  402446:	55                   	push   %rbp
  402447:	48 89 e5             	mov    %rsp,%rbp
  40244a:	48 83 ec 30          	sub    $0x30,%rsp
  40244e:	89 7d ec             	mov    %edi,-0x14(%rbp)
  402451:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402455:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402459:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  40245d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402461:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  402465:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402468:	48 89 ce             	mov    %rcx,%rsi
  40246b:	89 c7                	mov    %eax,%edi
  40246d:	e8 6e e8 ff ff       	callq  400ce0 <write@plt>
  402472:	89 45 fc             	mov    %eax,-0x4(%rbp)
  402475:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  402479:	75 09                	jne    402484 <socket@plt+0x1594>
  40247b:	e8 20 e8 ff ff       	callq  400ca0 <__errno_location@plt>
  402480:	8b 00                	mov    (%rax),%eax
  402482:	eb 19                	jmp    40249d <socket@plt+0x15ad>
  402484:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  402489:	74 0d                	je     402498 <socket@plt+0x15a8>
  40248b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40248e:	48 63 d0             	movslq %eax,%rdx
  402491:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402495:	48 89 10             	mov    %rdx,(%rax)
  402498:	b8 00 00 00 00       	mov    $0x0,%eax
  40249d:	c9                   	leaveq 
  40249e:	c3                   	retq   
  40249f:	55                   	push   %rbp
  4024a0:	48 89 e5             	mov    %rsp,%rbp
  4024a3:	48 83 ec 30          	sub    $0x30,%rsp
  4024a7:	89 7d ec             	mov    %edi,-0x14(%rbp)
  4024aa:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4024ae:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4024b2:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4024b6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4024ba:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4024be:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4024c1:	48 89 ce             	mov    %rcx,%rsi
  4024c4:	89 c7                	mov    %eax,%edi
  4024c6:	e8 e5 e8 ff ff       	callq  400db0 <read@plt>
  4024cb:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4024ce:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  4024d2:	75 09                	jne    4024dd <socket@plt+0x15ed>
  4024d4:	e8 c7 e7 ff ff       	callq  400ca0 <__errno_location@plt>
  4024d9:	8b 00                	mov    (%rax),%eax
  4024db:	eb 19                	jmp    4024f6 <socket@plt+0x1606>
  4024dd:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  4024e2:	74 0d                	je     4024f1 <socket@plt+0x1601>
  4024e4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4024e7:	48 63 d0             	movslq %eax,%rdx
  4024ea:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4024ee:	48 89 10             	mov    %rdx,(%rax)
  4024f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f6:	c9                   	leaveq 
  4024f7:	c3                   	retq   
  4024f8:	55                   	push   %rbp
  4024f9:	48 89 e5             	mov    %rsp,%rbp
  4024fc:	48 83 ec 40          	sub    $0x40,%rsp
  402500:	89 7d ec             	mov    %edi,-0x14(%rbp)
  402503:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402507:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40250b:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  40250f:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  402513:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  402517:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40251b:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40251f:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402522:	49 89 c8             	mov    %rcx,%r8
  402525:	b9 00 00 00 00       	mov    $0x0,%ecx
  40252a:	89 c7                	mov    %eax,%edi
  40252c:	e8 cf e8 ff ff       	callq  400e00 <select@plt>
  402531:	89 45 fc             	mov    %eax,-0x4(%rbp)
  402534:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  402538:	78 17                	js     402551 <socket@plt+0x1661>
  40253a:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  40253f:	74 09                	je     40254a <socket@plt+0x165a>
  402541:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402545:	8b 55 fc             	mov    -0x4(%rbp),%edx
  402548:	89 10                	mov    %edx,(%rax)
  40254a:	b8 00 00 00 00       	mov    $0x0,%eax
  40254f:	eb 07                	jmp    402558 <socket@plt+0x1668>
  402551:	e8 4a e7 ff ff       	callq  400ca0 <__errno_location@plt>
  402556:	8b 00                	mov    (%rax),%eax
  402558:	c9                   	leaveq 
  402559:	c3                   	retq   
  40255a:	55                   	push   %rbp
  40255b:	48 89 e5             	mov    %rsp,%rbp
  40255e:	48 83 ec 20          	sub    $0x20,%rsp
  402562:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402566:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40256a:	48 89 c7             	mov    %rax,%rdi
  40256d:	e8 6e e8 ff ff       	callq  400de0 <getpwnam@plt>
  402572:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402576:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40257b:	75 14                	jne    402591 <socket@plt+0x16a1>
  40257d:	bf 2a 2c 40 00       	mov    $0x402c2a,%edi
  402582:	e8 e9 e8 ff ff       	callq  400e70 <perror@plt>
  402587:	b8 01 00 00 00       	mov    $0x1,%eax
  40258c:	e9 99 00 00 00       	jmpq   40262a <socket@plt+0x173a>
  402591:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402595:	48 8b 40 20          	mov    0x20(%rax),%rax
  402599:	48 89 c7             	mov    %rax,%rdi
  40259c:	e8 6f e7 ff ff       	callq  400d10 <chdir@plt>
  4025a1:	85 c0                	test   %eax,%eax
  4025a3:	74 11                	je     4025b6 <socket@plt+0x16c6>
  4025a5:	bf 39 2c 40 00       	mov    $0x402c39,%edi
  4025aa:	e8 c1 e8 ff ff       	callq  400e70 <perror@plt>
  4025af:	b8 01 00 00 00       	mov    $0x1,%eax
  4025b4:	eb 74                	jmp    40262a <socket@plt+0x173a>
  4025b6:	be 00 00 00 00       	mov    $0x0,%esi
  4025bb:	bf 00 00 00 00       	mov    $0x0,%edi
  4025c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c5:	e8 d6 e7 ff ff       	callq  400da0 <setgroups@plt>
  4025ca:	85 c0                	test   %eax,%eax
  4025cc:	74 11                	je     4025df <socket@plt+0x16ef>
  4025ce:	bf 3f 2c 40 00       	mov    $0x402c3f,%edi
  4025d3:	e8 98 e8 ff ff       	callq  400e70 <perror@plt>
  4025d8:	b8 01 00 00 00       	mov    $0x1,%eax
  4025dd:	eb 4b                	jmp    40262a <socket@plt+0x173a>
  4025df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025e3:	8b 40 14             	mov    0x14(%rax),%eax
  4025e6:	89 c7                	mov    %eax,%edi
  4025e8:	e8 63 e8 ff ff       	callq  400e50 <setgid@plt>
  4025ed:	85 c0                	test   %eax,%eax
  4025ef:	74 11                	je     402602 <socket@plt+0x1712>
  4025f1:	bf 49 2c 40 00       	mov    $0x402c49,%edi
  4025f6:	e8 75 e8 ff ff       	callq  400e70 <perror@plt>
  4025fb:	b8 01 00 00 00       	mov    $0x1,%eax
  402600:	eb 28                	jmp    40262a <socket@plt+0x173a>
  402602:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402606:	8b 40 10             	mov    0x10(%rax),%eax
  402609:	89 c7                	mov    %eax,%edi
  40260b:	e8 c0 e8 ff ff       	callq  400ed0 <setuid@plt>
  402610:	85 c0                	test   %eax,%eax
  402612:	74 11                	je     402625 <socket@plt+0x1735>
  402614:	bf 50 2c 40 00       	mov    $0x402c50,%edi
  402619:	e8 52 e8 ff ff       	callq  400e70 <perror@plt>
  40261e:	b8 01 00 00 00       	mov    $0x1,%eax
  402623:	eb 05                	jmp    40262a <socket@plt+0x173a>
  402625:	b8 00 00 00 00       	mov    $0x0,%eax
  40262a:	c9                   	leaveq 
  40262b:	c3                   	retq   
  40262c:	55                   	push   %rbp
  40262d:	48 89 e5             	mov    %rsp,%rbp
  402630:	48 83 ec 30          	sub    $0x30,%rsp
  402634:	89 7d ec             	mov    %edi,-0x14(%rbp)
  402637:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40263b:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40263f:	89 c8                	mov    %ecx,%eax
  402641:	88 45 e8             	mov    %al,-0x18(%rbp)
  402644:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40264b:	00 
  40264c:	e9 8d 00 00 00       	jmpq   4026de <socket@plt+0x17ee>
  402651:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402655:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402659:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
  40265d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402660:	b9 00 00 00 00       	mov    $0x0,%ecx
  402665:	ba 01 00 00 00       	mov    $0x1,%edx
  40266a:	89 c7                	mov    %eax,%edi
  40266c:	e8 0f e6 ff ff       	callq  400c80 <recv@plt>
  402671:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402675:	48 83 7d f0 ff       	cmpq   $0xffffffffffffffff,-0x10(%rbp)
  40267a:	75 2e                	jne    4026aa <socket@plt+0x17ba>
  40267c:	e8 1f e6 ff ff       	callq  400ca0 <__errno_location@plt>
  402681:	8b 00                	mov    (%rax),%eax
  402683:	83 f8 0b             	cmp    $0xb,%eax
  402686:	74 0c                	je     402694 <socket@plt+0x17a4>
  402688:	e8 13 e6 ff ff       	callq  400ca0 <__errno_location@plt>
  40268d:	8b 00                	mov    (%rax),%eax
  40268f:	83 f8 04             	cmp    $0x4,%eax
  402692:	75 02                	jne    402696 <socket@plt+0x17a6>
  402694:	eb 48                	jmp    4026de <socket@plt+0x17ee>
  402696:	bf 57 2c 40 00       	mov    $0x402c57,%edi
  40269b:	e8 d0 e7 ff ff       	callq  400e70 <perror@plt>
  4026a0:	bf 01 00 00 00       	mov    $0x1,%edi
  4026a5:	e8 06 e8 ff ff       	callq  400eb0 <exit@plt>
  4026aa:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  4026af:	75 02                	jne    4026b3 <socket@plt+0x17c3>
  4026b1:	eb 39                	jmp    4026ec <socket@plt+0x17fc>
  4026b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026b7:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4026bb:	48 01 d0             	add    %rdx,%rax
  4026be:	0f b6 00             	movzbl (%rax),%eax
  4026c1:	3a 45 e8             	cmp    -0x18(%rbp),%al
  4026c4:	75 10                	jne    4026d6 <socket@plt+0x17e6>
  4026c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026ca:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4026ce:	48 01 d0             	add    %rdx,%rax
  4026d1:	c6 00 00             	movb   $0x0,(%rax)
  4026d4:	eb 16                	jmp    4026ec <socket@plt+0x17fc>
  4026d6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4026da:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  4026de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026e2:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  4026e6:	0f 82 65 ff ff ff    	jb     402651 <socket@plt+0x1761>
  4026ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026f0:	c9                   	leaveq 
  4026f1:	c3                   	retq   
  4026f2:	55                   	push   %rbp
  4026f3:	48 89 e5             	mov    %rsp,%rbp
  4026f6:	48 83 ec 30          	sub    $0x30,%rsp
  4026fa:	89 7d ec             	mov    %edi,-0x14(%rbp)
  4026fd:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402701:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402705:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40270c:	00 
  40270d:	eb 67                	jmp    402776 <socket@plt+0x1886>
  40270f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402713:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402717:	48 29 c2             	sub    %rax,%rdx
  40271a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40271e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  402722:	48 8d 34 01          	lea    (%rcx,%rax,1),%rsi
  402726:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402729:	b9 00 00 00 00       	mov    $0x0,%ecx
  40272e:	89 c7                	mov    %eax,%edi
  402730:	e8 1b e6 ff ff       	callq  400d50 <send@plt>
  402735:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402739:	48 83 7d f0 ff       	cmpq   $0xffffffffffffffff,-0x10(%rbp)
  40273e:	75 2e                	jne    40276e <socket@plt+0x187e>
  402740:	e8 5b e5 ff ff       	callq  400ca0 <__errno_location@plt>
  402745:	8b 00                	mov    (%rax),%eax
  402747:	83 f8 0b             	cmp    $0xb,%eax
  40274a:	74 0c                	je     402758 <socket@plt+0x1868>
  40274c:	e8 4f e5 ff ff       	callq  400ca0 <__errno_location@plt>
  402751:	8b 00                	mov    (%rax),%eax
  402753:	83 f8 04             	cmp    $0x4,%eax
  402756:	75 02                	jne    40275a <socket@plt+0x186a>
  402758:	eb 1c                	jmp    402776 <socket@plt+0x1886>
  40275a:	bf 5c 2c 40 00       	mov    $0x402c5c,%edi
  40275f:	e8 0c e7 ff ff       	callq  400e70 <perror@plt>
  402764:	bf 01 00 00 00       	mov    $0x1,%edi
  402769:	e8 42 e7 ff ff       	callq  400eb0 <exit@plt>
  40276e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402772:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  402776:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40277a:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  40277e:	72 8f                	jb     40270f <socket@plt+0x181f>
  402780:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402784:	c9                   	leaveq 
  402785:	c3                   	retq   
  402786:	55                   	push   %rbp
  402787:	48 89 e5             	mov    %rsp,%rbp
  40278a:	48 83 ec 10          	sub    $0x10,%rsp
  40278e:	89 7d fc             	mov    %edi,-0x4(%rbp)
  402791:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402795:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402799:	48 89 c7             	mov    %rax,%rdi
  40279c:	e8 5f e5 ff ff       	callq  400d00 <strlen@plt>
  4027a1:	48 89 c2             	mov    %rax,%rdx
  4027a4:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4027a8:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4027ab:	48 89 ce             	mov    %rcx,%rsi
  4027ae:	89 c7                	mov    %eax,%edi
  4027b0:	e8 3d ff ff ff       	callq  4026f2 <socket@plt+0x1802>
  4027b5:	c9                   	leaveq 
  4027b6:	c3                   	retq   
  4027b7:	55                   	push   %rbp
  4027b8:	48 89 e5             	mov    %rsp,%rbp
  4027bb:	48 83 ec 10          	sub    $0x10,%rsp
  4027bf:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4027c2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4027c5:	89 c6                	mov    %eax,%esi
  4027c7:	bf 61 2c 40 00       	mov    $0x402c61,%edi
  4027cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d1:	e8 8a e5 ff ff       	callq  400d60 <printf@plt>
  4027d6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4027d9:	be 01 00 00 00       	mov    $0x1,%esi
  4027de:	89 c7                	mov    %eax,%edi
  4027e0:	e8 5b e5 ff ff       	callq  400d40 <dup2@plt>
  4027e5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4027e8:	be 00 00 00 00       	mov    $0x0,%esi
  4027ed:	89 c7                	mov    %eax,%edi
  4027ef:	e8 4c e5 ff ff       	callq  400d40 <dup2@plt>
  4027f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4027f9:	e8 9c f9 ff ff       	callq  40219a <socket@plt+0x12aa>
  4027fe:	c9                   	leaveq 
  4027ff:	c3                   	retq   
  402800:	55                   	push   %rbp
  402801:	48 89 e5             	mov    %rsp,%rbp
  402804:	48 83 ec 40          	sub    $0x40,%rsp
  402808:	89 7d cc             	mov    %edi,-0x34(%rbp)
  40280b:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  40280f:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  402816:	00 
  402817:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  40281e:	00 
  40281f:	66 c7 45 fa 39 05    	movw   $0x539,-0x6(%rbp)
  402825:	83 7d cc 01          	cmpl   $0x1,-0x34(%rbp)
  402829:	7e 17                	jle    402842 <socket@plt+0x1952>
  40282b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40282f:	48 83 c0 08          	add    $0x8,%rax
  402833:	48 8b 00             	mov    (%rax),%rax
  402836:	48 89 c7             	mov    %rax,%rdi
  402839:	e8 62 e6 ff ff       	callq  400ea0 <atoi@plt>
  40283e:	66 89 45 fa          	mov    %ax,-0x6(%rbp)
  402842:	be 01 00 00 00       	mov    $0x1,%esi
  402847:	bf 11 00 00 00       	mov    $0x11,%edi
  40284c:	e8 7f e5 ff ff       	callq  400dd0 <signal@plt>
  402851:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  402855:	75 28                	jne    40287f <socket@plt+0x198f>
  402857:	48 8b 05 12 19 20 00 	mov    0x201912(%rip),%rax        # 604170 <stderr@@GLIBC_2.2.5>
  40285e:	48 89 c1             	mov    %rax,%rcx
  402861:	ba 1e 00 00 00       	mov    $0x1e,%edx
  402866:	be 01 00 00 00       	mov    $0x1,%esi
  40286b:	bf 78 2c 40 00       	mov    $0x402c78,%edi
  402870:	e8 4b e6 ff ff       	callq  400ec0 <fwrite@plt>
  402875:	b8 01 00 00 00       	mov    $0x1,%eax
  40287a:	e9 9a 01 00 00       	jmpq   402a19 <socket@plt+0x1b29>
  40287f:	ba 06 00 00 00       	mov    $0x6,%edx
  402884:	be 01 00 00 00       	mov    $0x1,%esi
  402889:	bf 02 00 00 00       	mov    $0x2,%edi
  40288e:	e8 5d e6 ff ff       	callq  400ef0 <socket@plt>
  402893:	89 45 f4             	mov    %eax,-0xc(%rbp)
  402896:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
  40289a:	75 14                	jne    4028b0 <socket@plt+0x19c0>
  40289c:	bf 97 2c 40 00       	mov    $0x402c97,%edi
  4028a1:	e8 ca e5 ff ff       	callq  400e70 <perror@plt>
  4028a6:	b8 01 00 00 00       	mov    $0x1,%eax
  4028ab:	e9 69 01 00 00       	jmpq   402a19 <socket@plt+0x1b29>
  4028b0:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
  4028b7:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  4028bb:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4028be:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  4028c4:	48 89 d1             	mov    %rdx,%rcx
  4028c7:	ba 02 00 00 00       	mov    $0x2,%edx
  4028cc:	be 01 00 00 00       	mov    $0x1,%esi
  4028d1:	89 c7                	mov    %eax,%edi
  4028d3:	e8 f8 e3 ff ff       	callq  400cd0 <setsockopt@plt>
  4028d8:	85 c0                	test   %eax,%eax
  4028da:	74 14                	je     4028f0 <socket@plt+0x1a00>
  4028dc:	bf 9e 2c 40 00       	mov    $0x402c9e,%edi
  4028e1:	e8 8a e5 ff ff       	callq  400e70 <perror@plt>
  4028e6:	b8 01 00 00 00       	mov    $0x1,%eax
  4028eb:	e9 29 01 00 00       	jmpq   402a19 <socket@plt+0x1b29>
  4028f0:	66 c7 45 d0 02 00    	movw   $0x2,-0x30(%rbp)
  4028f6:	bf 00 00 00 00       	mov    $0x0,%edi
  4028fb:	e8 70 e4 ff ff       	callq  400d70 <htonl@plt>
  402900:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  402903:	0f b7 45 fa          	movzwl -0x6(%rbp),%eax
  402907:	89 c7                	mov    %eax,%edi
  402909:	e8 22 e4 ff ff       	callq  400d30 <htons@plt>
  40290e:	66 89 45 d2          	mov    %ax,-0x2e(%rbp)
  402912:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
  402916:	8b 45 f4             	mov    -0xc(%rbp),%eax
  402919:	ba 10 00 00 00       	mov    $0x10,%edx
  40291e:	48 89 ce             	mov    %rcx,%rsi
  402921:	89 c7                	mov    %eax,%edi
  402923:	e8 18 e5 ff ff       	callq  400e40 <bind@plt>
  402928:	85 c0                	test   %eax,%eax
  40292a:	74 14                	je     402940 <socket@plt+0x1a50>
  40292c:	bf a9 2c 40 00       	mov    $0x402ca9,%edi
  402931:	e8 3a e5 ff ff       	callq  400e70 <perror@plt>
  402936:	b8 01 00 00 00       	mov    $0x1,%eax
  40293b:	e9 d9 00 00 00       	jmpq   402a19 <socket@plt+0x1b29>
  402940:	8b 45 f4             	mov    -0xc(%rbp),%eax
  402943:	be 14 00 00 00       	mov    $0x14,%esi
  402948:	89 c7                	mov    %eax,%edi
  40294a:	e8 d1 e4 ff ff       	callq  400e20 <listen@plt>
  40294f:	85 c0                	test   %eax,%eax
  402951:	74 14                	je     402967 <socket@plt+0x1a77>
  402953:	bf ae 2c 40 00       	mov    $0x402cae,%edi
  402958:	e8 13 e5 ff ff       	callq  400e70 <perror@plt>
  40295d:	b8 01 00 00 00       	mov    $0x1,%eax
  402962:	e9 b2 00 00 00       	jmpq   402a19 <socket@plt+0x1b29>
  402967:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40296a:	ba 00 00 00 00       	mov    $0x0,%edx
  40296f:	be 00 00 00 00       	mov    $0x0,%esi
  402974:	89 c7                	mov    %eax,%edi
  402976:	e8 15 e5 ff ff       	callq  400e90 <accept@plt>
  40297b:	89 45 f0             	mov    %eax,-0x10(%rbp)
  40297e:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%rbp)
  402982:	75 0f                	jne    402993 <socket@plt+0x1aa3>
  402984:	bf b5 2c 40 00       	mov    $0x402cb5,%edi
  402989:	e8 e2 e4 ff ff       	callq  400e70 <perror@plt>
  40298e:	e9 81 00 00 00       	jmpq   402a14 <socket@plt+0x1b24>
  402993:	e8 48 e5 ff ff       	callq  400ee0 <fork@plt>
  402998:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40299b:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
  40299f:	75 16                	jne    4029b7 <socket@plt+0x1ac7>
  4029a1:	bf bc 2c 40 00       	mov    $0x402cbc,%edi
  4029a6:	e8 c5 e4 ff ff       	callq  400e70 <perror@plt>
  4029ab:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4029ae:	89 c7                	mov    %eax,%edi
  4029b0:	e8 db e3 ff ff       	callq  400d90 <close@plt>
  4029b5:	eb 5d                	jmp    402a14 <socket@plt+0x1b24>
  4029b7:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  4029bb:	75 48                	jne    402a05 <socket@plt+0x1b15>
  4029bd:	bf 3c 00 00 00       	mov    $0x3c,%edi
  4029c2:	e8 b9 e3 ff ff       	callq  400d80 <alarm@plt>
  4029c7:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4029ca:	89 c7                	mov    %eax,%edi
  4029cc:	e8 bf e3 ff ff       	callq  400d90 <close@plt>
  4029d1:	bf c1 2c 40 00       	mov    $0x402cc1,%edi
  4029d6:	e8 7f fb ff ff       	callq  40255a <socket@plt+0x166a>
  4029db:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4029de:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  4029e2:	75 0d                	jne    4029f1 <socket@plt+0x1b01>
  4029e4:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4029e7:	89 c7                	mov    %eax,%edi
  4029e9:	e8 c9 fd ff ff       	callq  4027b7 <socket@plt+0x18c7>
  4029ee:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4029f1:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4029f4:	89 c7                	mov    %eax,%edi
  4029f6:	e8 95 e3 ff ff       	callq  400d90 <close@plt>
  4029fb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4029fe:	89 c7                	mov    %eax,%edi
  402a00:	e8 ab e2 ff ff       	callq  400cb0 <_exit@plt>
  402a05:	8b 45 f0             	mov    -0x10(%rbp),%eax
  402a08:	89 c7                	mov    %eax,%edi
  402a0a:	e8 81 e3 ff ff       	callq  400d90 <close@plt>
  402a0f:	e9 53 ff ff ff       	jmpq   402967 <socket@plt+0x1a77>
  402a14:	e9 4e ff ff ff       	jmpq   402967 <socket@plt+0x1a77>
  402a19:	c9                   	leaveq 
  402a1a:	c3                   	retq   
  402a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a20:	41 57                	push   %r15
  402a22:	41 89 ff             	mov    %edi,%r15d
  402a25:	41 56                	push   %r14
  402a27:	49 89 f6             	mov    %rsi,%r14
  402a2a:	41 55                	push   %r13
  402a2c:	49 89 d5             	mov    %rdx,%r13
  402a2f:	41 54                	push   %r12
  402a31:	4c 8d 25 d8 13 20 00 	lea    0x2013d8(%rip),%r12        # 603e10 <socket@plt+0x202f20>
  402a38:	55                   	push   %rbp
  402a39:	48 8d 2d d8 13 20 00 	lea    0x2013d8(%rip),%rbp        # 603e18 <socket@plt+0x202f28>
  402a40:	53                   	push   %rbx
  402a41:	4c 29 e5             	sub    %r12,%rbp
  402a44:	31 db                	xor    %ebx,%ebx
  402a46:	48 c1 fd 03          	sar    $0x3,%rbp
  402a4a:	48 83 ec 08          	sub    $0x8,%rsp
  402a4e:	e8 f5 e1 ff ff       	callq  400c48 <recv@plt-0x38>
  402a53:	48 85 ed             	test   %rbp,%rbp
  402a56:	74 1e                	je     402a76 <socket@plt+0x1b86>
  402a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a5f:	00 
  402a60:	4c 89 ea             	mov    %r13,%rdx
  402a63:	4c 89 f6             	mov    %r14,%rsi
  402a66:	44 89 ff             	mov    %r15d,%edi
  402a69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402a6d:	48 83 c3 01          	add    $0x1,%rbx
  402a71:	48 39 eb             	cmp    %rbp,%rbx
  402a74:	75 ea                	jne    402a60 <socket@plt+0x1b70>
  402a76:	48 83 c4 08          	add    $0x8,%rsp
  402a7a:	5b                   	pop    %rbx
  402a7b:	5d                   	pop    %rbp
  402a7c:	41 5c                	pop    %r12
  402a7e:	41 5d                	pop    %r13
  402a80:	41 5e                	pop    %r14
  402a82:	41 5f                	pop    %r15
  402a84:	c3                   	retq   
  402a85:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402a8c:	00 00 00 00 
  402a90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402a94 <.fini>:
  402a94:	48 83 ec 08          	sub    $0x8,%rsp
  402a98:	48 83 c4 08          	add    $0x8,%rsp
  402a9c:	c3                   	retq   
